# -*- coding: utf-8 -*-
from typing import List

import prefect
from prefect import task
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


@task
def task_get_current_flow_run_labels() -> List[str]:
    """
    Returns the labels of the current flow run.
    """
    return prefect.context.get("config").get("cloud").get("agent").get("labels")


@task
def task_get_flow_group_id(flow_name: str) -> str:
    """
    Returns the flow group id for the given flow name.
    """
    client = Client()
    response = client.graphql(
        query="""
        query ($flow_name: String!) {
            flow (where: {name: {_eq: $flow_name}}) {
                flow_group {
                    id
                }
            }
        }
        """,
        variables={"flow_name": flow_name},
    )
    return response["data"]["flow"][0]["flow_group"]["id"]


@task
def task_rename_current_flow_run_dataset_table(prefix: str, dataset_id: str, table_id: str) -> None:
    """
    Rename the current flow run.
    """
    flow_run_id = prefect.context.get("flow_run_id")
    client = Client()
    return client.set_flow_run_name(flow_run_id, f"{prefix}{dataset_id}.{table_id}")
