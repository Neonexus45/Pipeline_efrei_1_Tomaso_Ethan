create database Ecole;
create table ecole.enseignants (
    prof_id int primary key,
    prenom varchar(255),
    nom varchar(255),
    numero_classe int,
    departement varchar(255),
    email varchar(255) unique,
    telephone varchar(255) unique
);
create table Ecole.etudiants (
    eleve_id int primary key,
    prenom varchar(255),
    nom varchar(255),
    numero_classe int,
    telephone varchar(255) unique,
    email varchar(255) unique,
    annee_diplome int
);
alter table ecole.enseignants change column prof_id prof_id int(11) not null auto_increment;
alter table ecole.etudiants change column eleve_id id_etudiant int(11) not null auto_increment;
insert into ecole.enseignants values (
                                          '1',
                                      'Jonas',
                                      'Watney',
                                      5,
                                      'biologie',
                                      'jsalk@school.org',
                                      '777-555-4321'
                                     );
insert into ecole.etudiants values ('1',
                                    'Mark',
                                    'Watney',
                                    5,
                                    '777-555-1234',
                                    NULL,
                                    '2035'
                                   );
INSERT INTO ecole.enseignants (`prof_id`,`prenom`,`nom`,`numero_classe`,`departement`,`email`,`telephone`)
VALUES
    (51,"Chase","Estes",13,"ut,","tincidunt.orci@icloud.edu","1-413-462-0064"),
    (52,"Barclay","Padilla",5,"sapien.","tristique.senectus@outlook.ca","1-702-687-5146"),
    (53,"Elizabeth","Garrett",7,"sociis","porttitor.vulputate.posuere@aol.edu","1-768-451-5408"),
    (54,"Beck","Boyle",4,"orci,","est.mollis.non@yahoo.edu","1-242-665-7295"),
    (55,"Hayley","Levy",5,"Maecenas","et.risus.quisque@outlook.net","1-390-443-4511"),
    (56,"Akeem","Nguyen",13,"lacus.","proin@protonmail.couk","1-636-261-4467"),
    (57,"Brock","Norris",9,"nunc.","magna.malesuada@yahoo.org","1-653-448-3967"),
    (58,"Matthew","Foster",15,"aliquet","adipiscing.ligula@google.com","1-231-177-4374"),
    (59,"Kasper","Stout",14,"Mauris","id.risus@outlook.ca","1-212-253-1228"),
    (60,"Joseph","Castillo",14,"blandit","condimentum.donec@outlook.com","1-279-284-1092"),
    (61,"Chaim","Wheeler",9,"ipsum","malesuada.fames@google.net","1-754-996-7427"),
    (62,"Cassidy","Camacho",6,"sed,","arcu@aol.ca","1-627-606-9157"),
    (63,"Wynter","Newton",10,"lectus","varius.ultrices@protonmail.org","1-247-237-3076"),
    (64,"Camden","Valentine",9,"at","commodo.at.libero@yahoo.couk","1-551-734-6096"),
    (65,"Sheila","Norris",4,"accumsan","ac.tellus@icloud.couk","1-586-350-8756"),
    (66,"Alisa","Pearson",13,"lacinia","torquent.per@protonmail.edu","1-164-242-8826"),
    (67,"Avram","Boyer",2,"Vestibulum","in.at@hotmail.net","1-542-642-2628"),
    (68,"Kristen","Ramos",12,"nulla.","quisque.varius@aol.org","1-135-331-2138"),
    (69,"Hall","Abbott",3,"est","velit@hotmail.org","1-342-738-3724"),
    (70,"Harding","Talley",6,"diam.","fringilla@protonmail.org","1-669-786-6424"),
    (71,"Elmo","Dunn",13,"Suspendisse","rutrum.magna.cras@icloud.net","1-178-285-5480"),
    (72,"Teegan","Estrada",1,"Maecenas","duis.at@hotmail.ca","1-235-145-7798"),
    (73,"Lydia","Hughes",6,"lobortis.","sollicitudin@google.ca","1-981-923-6315"),
    (74,"Stewart","West",4,"odio.","quis.turpis.vitae@icloud.edu","1-366-423-7861"),
    (75,"Jermaine","Henry",7,"commodo","odio.semper.cursus@yahoo.com","1-505-233-4880"),
    (76,"Knox","Charles",3,"consequat","curabitur.dictum@protonmail.couk","1-263-866-3776"),
    (77,"Beck","Huber",8,"et","parturient.montes@protonmail.com","1-568-757-8142"),
    (78,"Carl","Lara",7,"semper","sodales@yahoo.ca","1-525-677-8439"),
    (79,"Cooper","Nichols",9,"vulputate,","curabitur.consequat@aol.ca","1-871-741-6972"),
    (80,"Palmer","Holman",11,"libero.","cras.eu.tellus@protonmail.couk","1-822-464-1039"),
    (81,"Omar","Curtis",10,"vitae,","at@icloud.com","1-514-542-7424"),
    (82,"Olivia","Wilder",7,"sem","ipsum.porta@protonmail.org","1-640-521-5413"),
    (83,"Martina","Sherman",7,"vel,","commodo@protonmail.com","1-684-758-2595"),
    (84,"Cynthia","Simon",13,"lacus","nec.diam@google.org","1-848-520-5725"),
    (85,"Carter","Harper",8,"malesuada","ligula.aenean@protonmail.edu","1-636-649-5284"),
    (86,"Hillary","Lewis",11,"egestas","dictum@icloud.com","1-463-253-7646"),
    (87,"Ursula","Long",3,"iaculis","montes.nascetur@yahoo.com","1-465-988-4221"),
    (88,"Regina","Powell",13,"Integer","quam.elementum@aol.org","1-254-816-7801"),
    (89,"Hayley","Diaz",1,"eget","nulla@aol.org","1-832-344-3721"),
    (90,"Hilary","Cole",12,"magna.","suscipit@icloud.couk","1-824-408-5541"),
    (91,"Renee","Cain",8,"eu","odio.nam.interdum@aol.couk","1-191-548-7824"),
    (92,"Peter","Mcpherson",8,"dolor","pede.ac.urna@google.org","1-771-751-8595"),
    (93,"Sawyer","Pearson",5,"id","eget@outlook.org","1-369-255-1655"),
    (94,"Oliver","Everett",5,"consequat","ut.cursus@google.edu","1-452-205-5826"),
    (95,"Chadwick","Cantu",7,"lectus","tortor.nibh.sit@aol.edu","1-884-968-2761"),
    (96,"Vladimir","Glass",14,"in,","venenatis.a@icloud.couk","1-346-448-4132"),
    (97,"Mari","Bartlett",6,"tristique","enim@hotmail.ca","1-201-733-5747"),
    (98,"Kerry","Mills",8,"eleifend.","ultrices.posuere@outlook.com","1-361-616-6670"),
    (99,"Maxwell","Buck",4,"aliquet","non.justo@outlook.com","1-787-166-8600"),
    (100,"Gary","Downs",9,"nulla","enim@google.com","1-523-282-8045");
INSERT INTO ecole.etudiants (`id_etudiant`,`prenom`,`nom`,`numero_classe`,`telephone`,`email`,`annee_diplome`)
VALUES
    (51,"Mark","Mueller",15,"1-834-857-2194","dolor.donec@protonmail.ca",2027),
    (52,"Asher","Rowe",9,"1-230-545-7987","non.leo.vivamus@hotmail.edu",2029),
    (53,"Sacha","Stanley",8,"1-388-871-2182","at.fringilla@yahoo.couk",2045),
    (54,"Erica","Wilson",11,"1-536-888-6725","risus.donec.egestas@hotmail.couk",2007),
    (55,"Karyn","Sharpe",11,"1-631-775-5126","donec.dignissim@protonmail.com",2036),
    (56,"Rina","Hood",6,"1-815-494-5589","massa@aol.couk",2062),
    (57,"Randall","Gregory",4,"1-701-232-6652","sapien.molestie@hotmail.net",2045),
    (58,"Ifeoma","Kerr",5,"1-654-172-3321","sem@outlook.net",2032),
    (59,"Jelani","Singleton",9,"1-598-662-8701","dictum.eu@protonmail.com",2039),
    (60,"Ivy","Ramirez",3,"1-287-305-3368","lacus.quisque@aol.ca",2025),
    (61,"Hector","Cotton",13,"1-891-513-1034","viverra.donec@icloud.net",2038),
    (62,"Giacomo","Whitney",4,"1-693-510-2261","nonummy@outlook.com",2010),
    (63,"Basil","Huff",15,"1-771-334-5530","amet.consectetuer.adipiscing@yahoo.org",2024),
    (64,"Holly","Schroeder",7,"1-771-548-7933","ac.orci@google.edu",2042),
    (65,"Cadman","Ferrell",9,"1-638-585-3254","rutrum.eu@protonmail.org",2044),
    (66,"Blaze","Love",2,"1-932-844-0199","commodo.tincidunt.nibh@google.edu",2053),
    (67,"Shad","Morrow",13,"1-243-448-6755","lacus@icloud.net",2007),
    (68,"Carly","Levine",13,"1-337-753-4526","integer.aliquam@aol.org",2003),
    (69,"Uma","Compton",1,"1-351-387-8208","a.magna@aol.couk",2072),
    (70,"Thor","Cohen",9,"1-272-429-9141","nascetur.ridiculus.mus@hotmail.org",2068),
    (71,"Barbara","Burke",12,"1-380-825-2426","velit.dui@icloud.ca",2077),
    (72,"Britanney","Lynch",3,"1-111-674-2010","id.sapien@yahoo.couk",2044),
    (73,"Autumn","Bruce",11,"1-177-313-5126","tortor.dictum.eu@hotmail.ca",2032),
    (74,"Arthur","Serrano",3,"1-410-266-8038","massa.mauris@icloud.com",2040),
    (75,"Declan","Mccoy",2,"1-216-866-1702","nulla.eget@aol.ca",2067),
    (76,"Hermione","Joyce",5,"1-156-251-6537","amet.lorem@outlook.org",2064),
    (77,"Adena","Hughes",8,"1-692-447-7497","ipsum.leo@aol.net",2015),
    (78,"Hanna","Prince",4,"1-723-516-4865","ac.arcu@protonmail.couk",2041),
    (79,"Aristotle","Mullen",4,"1-986-432-8854","dapibus.ligula.aliquam@outlook.couk",2016),
    (80,"Maxine","Clemons",5,"1-767-846-8833","vitae.nibh.donec@protonmail.com",2010),
    (81,"Eve","Hoover",3,"1-824-281-3146","et.ultrices@google.org",2015),
    (82,"Colleen","Chambers",10,"1-359-582-2888","lobortis.quis@aol.com",2037),
    (83,"Raymond","Montoya",10,"1-796-356-4046","nisl.maecenas@outlook.com",2041),
    (84,"Tad","Ruiz",12,"1-962-643-1633","facilisis.vitae@outlook.com",2015),
    (85,"Tana","Estrada",6,"1-278-226-4601","diam.dictum@yahoo.couk",2030),
    (86,"Wilma","Sharpe",12,"1-588-557-3132","quis.massa.mauris@yahoo.ca",2049),
    (87,"Mira","Austin",10,"1-381-758-9154","et.arcu@protonmail.couk",2061),
    (88,"Kay","Mccray",14,"1-531-556-1772","vitae.dolor@hotmail.org",2037),
    (89,"Nina","Sherman",5,"1-612-148-9626","posuere.cubilia@outlook.net",2073),
    (90,"Kelsey","Fox",9,"1-986-837-0104","tellus@icloud.com",2024),
    (91,"Lareina","Gates",7,"1-558-541-1927","sem.magna.nec@yahoo.couk",2061),
    (92,"Kitra","Mcgowan",15,"1-231-292-3116","risus.nunc@google.net",2032),
    (93,"Ariel","Vinson",7,"1-213-441-8982","mi@aol.couk",2064),
    (94,"Cody","Huffman",7,"1-714-737-9514","et@aol.edu",2022),
    (95,"Liberty","Jimenez",2,"1-386-959-7056","eu.tellus@protonmail.net",2058),
    (96,"Chandler","Buckley",7,"1-871-963-3627","praesent@outlook.ca",2058),
    (97,"Lisandra","Short",3,"1-344-155-3352","ante.blandit.viverra@protonmail.com",2010),
    (98,"Emma","Maxwell",5,"1-326-355-6443","purus.duis@aol.edu",2071),
    (99,"Hayden","Hood",6,"1-319-548-3251","luctus@yahoo.ca",2032),
    (100,"Drew","Page",12,"1-937-740-0779","porttitor@google.edu",2009);