# -*- coding: utf-8 -*-
"""
Constants for all flows
"""
from enum import Enum


class constants(Enum):  # pylint: disable=c0103
    """
    Constants used in the flows.
    """

    ######################################
    # Automatically managed,
    # please do not change these values
    ######################################
    # Docker image
    DOCKER_TAG = "AUTO_REPLACE_DOCKER_TAG"
    DOCKER_IMAGE_NAME = "AUTO_REPLACE_DOCKER_IMAGE"
    DOCKER_IMAGE = f"{DOCKER_IMAGE_NAME}:{DOCKER_TAG}"

    # Prefect agents AUTO_FIND=M9w=k-b_
    RJ_SMS_AGENT_LABEL = "rj-sms"
    RJ_SMS_DEV_AGENT_LABEL = "rj-sms-dev"

    ######################################
    # Other constants
    ######################################
    # Timezone
    DEFAULT_TIMEZONE = "America/Sao_Paulo"
    # Prefect
    K8S_AGENT_LABEL = "kubernetes"
    GCS_FLOWS_BUCKET = "datario-public"
    PREFECT_DEFAULT_PROJECT = "main"
