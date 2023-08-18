# -*- coding: utf-8 -*-
import prefect


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
