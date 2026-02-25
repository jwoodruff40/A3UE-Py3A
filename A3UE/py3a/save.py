import json

def write_save_data(save_id: int, data_str: str) -> bool:
    data: dict = json.loads(data_str)
    
    try:
        print(f"Writing save_{save_id}.json ...")
        with open(f"save_{save_id}.json", "w") as file:
            json.dump(data, file, indent=4)
    except PermissionError:
        print(f"Permission error: save_{save_id}.json cannot be written")
        return False
    
    return True
