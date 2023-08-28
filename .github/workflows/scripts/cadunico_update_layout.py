# -*- coding: utf-8 -*-
from pipelines.cadunico.ingest_raw.utils import (
    update_layout_from_storage_and_create_versions_dbt_models,
)

project_id = "rj-escritorio-dev"
dataset_id = "protecao_social_cadunico"
table_id = "layout"
model_dataset_id = "test"
model_table_id = "test"


output_path = f"/tmp/cadunico/layout_parsed/{dataset_id}/{table_id}"


update_layout_from_storage_and_create_versions_dbt_models(
    project_id=project_id,
    dataset_id=dataset_id,
    table_id=table_id,
    output_path=output_path,
    model_dataset_id=model_dataset_id,
    model_table_id=model_table_id,
)
