# -*- coding: utf-8 -*-
from typing import List

from google.cloud import storage
from google.cloud.storage.blob import Blob

from pipelines.utils.env import get_bd_credentials_from_env


def list_blobs_with_prefix(bucket_name: str, prefix: str, mode: str = "prod") -> List[Blob]:
    """
    Lists all the blobs in the bucket that begin with the prefix.
    This can be used to list all blobs in a "folder", e.g. "public/".
    Mode needs to be "prod" or "staging"

    Args:
        bucket_name (str): The name of the bucket.
        prefix (str): The prefix to filter by.
        mode (str): The mode to filter by (prod or staging).

    Returns:
        List[Blob]: The list of blobs.
    """
    credentials = get_bd_credentials_from_env(mode=mode)
    storage_client = storage.Client(credentials=credentials)
    blobs = storage_client.list_blobs(bucket_name, prefix=prefix)
    return list(blobs)
