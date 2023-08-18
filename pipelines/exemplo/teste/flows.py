# -*- coding: utf-8 -*-
from prefect.run_configs import KubernetesRun
from prefect.storage import GCS

from pipelines.constants import constants
from pipelines.custom import CustomFlow as Flow
from pipelines.exemplo.teste.tasks import list_blobs

with Flow(
    name="CadUnico: Flow de teste",
) as exemplo__teste__flow:
    # Tasks
    list_blobs()

# Storage and run configs
exemplo__teste__flow.storage = GCS(constants.GCS_FLOWS_BUCKET.value)
exemplo__teste__flow.run_config = KubernetesRun(image=constants.DOCKER_IMAGE.value)
