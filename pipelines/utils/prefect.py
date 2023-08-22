# -*- coding: utf-8 -*-
import prefect
from prefect.client import Client


def get_flow_run_mode() -> str:
    """
    Returns the mode of the current flow run (either "prod" or "staging").
    """
    project_name = prefect.context.get("project_name")
    if project_name not in ["production", "staging"]:
        raise ValueError(f"Invalid project name: {project_name}")
    if project_name == "production":
        return "prod"
    return "staging"


def rename_current_flow_run_msg(msg: str, flow_run_id: str) -> None:
    """
    Rename the current flow run.
    """
    client = Client()
    return client.set_flow_run_name(flow_run_id, msg)
