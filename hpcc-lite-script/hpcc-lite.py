import os, yaml, shutil
# from urllib.request import urlopen
# default_values = urlopen(default_values_link)

def copy_files(chart_full_path, default_chart_path, chart_files):
    os.makedirs(chart_full_path, mode=0o777, exist_ok=True)
    for file in chart_files:
        try:
            shutil.copy2(f'{default_chart_path}/{file}', f'{chart_full_path}/{file}')
        except IsADirectoryError:
            shutil.copytree(f'{default_chart_path}/{file}', f'{chart_full_path}/{file}', dirs_exist_ok=True)
        except PermissionError:
            shutil.copytree(f'{default_chart_path}/{file}', f'{chart_full_path}/{file}', dirs_exist_ok=True)

def read_dictionary(default_chart_path, dictionary):
    with open(f'{default_chart_path}/values.yaml') as f:
        data = yaml.safe_load(f)
    rewrite_dict = {dictionary: data[dictionary]} #rewrite dictionary to insert missing key
    return rewrite_dict

def write_dictionary(file_write, raw_dictionary):
    with open(file_write, "w") as f:
        yaml.safe_dump(raw_dictionary, f)

def create_common_values(default_chart_path):
    common_dicts = {}

    for dictionary in common_values:
        common_dicts = {**common_dicts, **read_dictionary(default_chart_path, dictionary)}
    return common_dicts

if __name__ == "__main__":
    # user defined variables
    hpcc_lite_target_path = "/Users/J/hpcc-lite-script-test/"
    default_chart_path = "/Users/J/HPCC-Platform/helm/hpcc"
    dictionaries = ["roxie", "thor"]

    # system defined variables
    # user do not modify variables below
    chart_full_path = f'{hpcc_lite_target_path}/hpcc-lite/helm/hpcc'
    chart_files = ["chart.yaml", "values.schema.json", "templates"]
    common_values = ["global", "secrets", "dali", "esp"]
    common_values_yaml = f'{chart_full_path}/common-values.yaml'

    copy_files(chart_full_path, default_chart_path, chart_files)
    common_dicts = create_common_values(default_chart_path)
    write_dictionary(common_values_yaml,common_dicts)

    for dictionary in dictionaries:
        file_write = f'{chart_full_path}/{dictionary}.yaml'
        raw_dictionary = read_dictionary(default_chart_path, dictionary)
        write_dictionary(file_write, raw_dictionary)
