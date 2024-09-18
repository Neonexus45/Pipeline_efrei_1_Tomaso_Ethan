import mysql.connector
mdp = "METTRE MDP DB ICI"

"""
format de la table enseignants:
prof_id,int,NO,PRI,,auto_increment
prenom,varchar(255),YES,"",,""
nom,varchar(255),YES,"",,""
numero_classe,int,YES,"",,""
departement,varchar(255),YES,"",,""
email,varchar(255),YES,UNI,,""
telephone,varchar(255),YES,UNI,,""

format de la table etudiants:

id_etudiant,int,NO,PRI,,auto_increment
prenom,varchar(255),YES,"",,""
nom,varchar(255),YES,"",,""
numero_classe,int,YES,"",,""
telephone,varchar(255),YES,UNI,,""
email,varchar(255),YES,UNI,,""
annee_diplome,int,YES,"",,""


nom de la database : "ecole"

j'utilise mysql.connector pour me connecter à la base de données
j'ai mis le mdp dans un fichier non commit pour raison de sécurité dans un fichier mdp.py (mdp.mdpddd)

Etape 1 :

J'initialise une connexion à la base de données grâce à la lib mysql.connector (installable via pip install mysql-connector-python)

Etape 2 :

Je définis deux requêtes SQL qui me permettront de récupérer les données nécessaires pour les étapes 3 et 4

Etape 3 :

Je crée une fonction execute_query qui prend en paramètre une connexion à la base de données et une requête SQL.
ainsi que deux fonctions qui retournent un dictionnaire qui associe un enseignant à ses étudiants et vice-versa

Etape 4 :

Je crée une fonction qui prend en paramètre le dictionnaire de l'étape 3 et qui retourne un dictionnaire qui associe un enseignant au nombre d'étudiants qu'il possède, en utilisant le field numéro_classe comme lien
!à noter que j'aurais aussi pu définir des clés étrangères pour lier les deux tables ensemble.



"""


def create_connection():
    mydb = mysql.connector.connect(
        host="localhost",
        user="root",
        password=mdp,
        database="ecole"
    )
    return mydb


query_1 = ("SELECT e1.nom, GROUP_CONCAT(e2.nom) "
           "FROM enseignants e1 "
           "JOIN etudiants e2 ON e1.numero_classe = e2.numero_classe GROUP BY e1.nom;")
query_2 = ("SELECT e1.nom, GROUP_CONCAT(e2.nom) "
           "FROM etudiants e1 "
           "JOIN enseignants e2 ON e1.numero_classe = e2.numero_classe GROUP BY e1.nom;")


def execute_query(mydb, query):
    cursor = mydb.cursor()
    cursor.execute(query)
    result = cursor.fetchall()
    cursor.close()
    return result


def get_teacher_student_dict(mydb):
    teacher_student_dict = dict(execute_query(mydb, query_1))
    return teacher_student_dict


def get_student_teacher_dict(mydb):
    student_teacher_dict = dict(execute_query(mydb, query_2))
    return student_teacher_dict


def get_teacher_student_count_dict(teacher_student_dict):
    teacher_student_count_dict = {}
    for teacher, students in teacher_student_dict.items():
        teacher_student_count_dict[teacher] = len(students.split(','))
    return teacher_student_count_dict


db = create_connection()

dict_etape3 = get_teacher_student_dict(db)
dict_etape3_bis = get_student_teacher_dict(db)
dict_etape_4 = get_teacher_student_count_dict(dict_etape3)

print(dict_etape3)
print(dict_etape_4)

db.close()
