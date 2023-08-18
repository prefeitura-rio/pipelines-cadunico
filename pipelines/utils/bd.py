# -*- coding: utf-8 -*-
from basedosdados.upload.base import Base

from pipelines.utils.prefect import get_flow_run_mode


def get_project_id(mode: str = get_flow_run_mode()) -> str:
    """
    Get the project ID from the environment.

    Args:
        mode (str): The mode to filter by (prod or staging).
    """
    if mode not in ["prod", "staging"]:
        raise ValueError("Mode must be 'prod' or 'staging'")
    base = Base()
    return base.config["gcloud-projects"][mode]["name"]
