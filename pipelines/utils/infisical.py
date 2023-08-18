# -*- coding: utf-8 -*-
from os import environ
from typing import Literal

from infisical import InfisicalClient

from pipelines.utils.env import getenv_or_action
from pipelines.utils.prefect import get_flow_run_mode


def get_infisical_client() -> InfisicalClient:
    """
    Returns an Infisical client using the default settings from environment variables.

    Returns:
        InfisicalClient: The Infisical client.
    """
    token = getenv_or_action("INFISICAL_TOKEN", action="raise")
    site_url = getenv_or_action("INFISICAL_ADDRESS", action="raise")
    return InfisicalClient(
        token=token,
        site_url=site_url,
    )


def get_secret(
    secret_name: str,
    environment: str = None,
    type: Literal["shared", "personal"] = "personal",
    path: str = "/",
    client: InfisicalClient = None,
) -> str | None:
    """
    Returns the secret with the given name from Infisical.

    Args:
        secret_name (str): The name of the secret to retrieve.
        environment (str): The environment to retrieve the secret from.
        type (Literal["shared", "personal"], optional): The type of secret to retrieve. Defaults to
            "personal".
        path (str, optional): The path to retrieve the secret from. Defaults to "/".
        client (InfisicalClient, optional): The Infisical client to use. Defaults to None.

    Returns:
        str: The value of the secret.
    """
    if client is None:
        client = get_infisical_client()

    if not environment:
        environment = get_flow_run_mode()

    return client.get_secret(
        secret_name=secret_name,
        type=type,
        environment=environment,
        path=path,
    ).secret_value


def inject_env(
    secret_name: str,
    environment: str = None,
    type: Literal["shared", "personal"] = "personal",
    path: str = "/",
    client: InfisicalClient = None,
) -> None:
    """
    Loads the secret with the given name from Infisical into an environment variable.

    Args:
        secret_name (str): The name of the secret to retrieve.
        environment (str): The environment to retrieve the secret from.
        type (Literal["shared", "personal"], optional): The type of secret to retrieve.
            Defaults to "personal".
        path (str, optional): The path to retrieve the secret from. Defaults to "/".
        client (InfisicalClient, optional): The Infisical client to use. Defaults to None.
    """
    if client is None:
        client = get_infisical_client()

    if not environment:
        environment = get_flow_run_mode()

    secret_value = client.get_secret(
        secret_name=secret_name,
        type=type,
        environment=environment,
        path=path,
    ).secret_value

    environ[secret_name] = secret_value


def inject_bd_credentials() -> None:
    """
    Loads Base dos Dados credentials from Infisical into environment variables.
    """
    client = get_infisical_client()

    for secret_name in [
        "BASEDOSDADOS_CONFIG",
        "BASEDOSDADOS_CREDENTIALS_PROD",
        "BASEDOSDADOS_CREDENTIALS_STAGING",
    ]:
        inject_env(
            secret_name=secret_name,
            environment=get_flow_run_mode(),
            client=client,
        )
