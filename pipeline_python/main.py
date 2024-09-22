import datetime
import json
import os
import shutil


def load_sample(file) -> list[str]:
    size = 1024
    start = 0
    end = start + size
    while True:
        data = file.readlines(end)
        if not data:
            break
        start = start + size
        end = end + size
        yield data


def generate_json(path:str) -> dict:
    res = dict()
    total = 0
    with open(path) as file:
        for block in load_sample(file):
            for line in block:
                name, date, amount = line.split()
                num = float(amount[:-3])
                total += num
            res['name'] = name
            res['total_rendu'] = total
            return res


def save_result(path: str, result):
    with open(path, 'w') as f:
        json.dump(result, f, indent=4, sort_keys=True)


def process_files(directory_source, directory_target):
    for file in os.listdir(directory_source):
        for result in os.listdir(directory_target):
            if file[:-4] in result:
                print(f"Le fichier {file} a déjà été traité")
                if os.path.isdir(f"archive"):
                    os.rename(f"{directory_target}/{result}", f"archive/{result}")
                    break
        result = generate_json(f"{directory_source}/{file}")
        save_result(f"{directory_target}/result_{file}_{datetime.date.today()}.json", result)


if __name__ == '__main__':
    process_files('source', 'result')
