# -*- coding: utf-8 -*-
from google.cloud.storage.blob import Blob


def parse_partition(blob: Blob) -> str:
    name_parts = blob.name.split(".")
    partition_info = name_parts[-3]
    year = str(2000 + int(partition_info[1:3]))
    month = partition_info[3:5]
    day = partition_info[5:7]
    return f"{year}-{month}-{day}"
