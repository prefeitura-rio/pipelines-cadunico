# -*- coding: utf-8 -*-
from prefect import task

from pipelines.utils.utils import log


@task
def greet(name: str = "world") -> None:
    log(f"Hello, {name}!")
