# -*- coding: utf-8 -*-
from pipelines.cadunico.ingest_raw.utils import (
    update_layout_from_storage_and_create_versions_dbt_models,
)

project_id = "rj-escritorio-dev"
layout_dataset_id = "protecao_social_cadunico"
layout_table_id = "layout"
model_dataset_id = "protecao_social_cadunico"
model_table_id = "registro_familia"
force_create_models = True

output_path = f"/tmp/cadunico/layout_parsed/{layout_dataset_id}/{layout_table_id}"


update_layout_from_storage_and_create_versions_dbt_models(
    project_id=project_id,
    layout_dataset_id=layout_dataset_id,
    layout_table_id=layout_table_id,
    output_path=output_path,
    model_dataset_id=model_dataset_id,
    model_table_id=model_table_id,
    force_create_models=force_create_models,
)
