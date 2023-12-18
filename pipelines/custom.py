# -*- coding: utf-8 -*-
from typing import Callable, Iterable, List, Optional, Set

import prefect
from prefect.core.edge import Edge
from prefect.core.flow import Flow
from prefect.core.task import Task
from prefect.engine.result import Result
from prefect.engine.state import State
from prefect.executors import Executor
from prefect.run_configs import RunConfig
from prefect.storage import Storage

from pipelines.utils.state_handlers import (
    handler_initialize_sentry,
    handler_inject_bd_credentials,
    handler_skip_if_running,
)


class CustomFlow(Flow):
    """
    Custom Flow class that adds a few features we want to have in all our flows.
    """

    def __init__(
        self,
        name: str,
        schedule: prefect.schedules.Schedule = None,
        executor: Executor = None,
        run_config: RunConfig = None,
        storage: Storage = None,
        tasks: Iterable[Task] = None,
        edges: Iterable[Edge] = None,
        reference_tasks: Iterable[Task] = None,
        state_handlers: List[Callable] = [handler_initialize_sentry, handler_inject_bd_credentials],
        on_failure: Callable = None,
        validate: bool = None,
        result: Optional[Result] = None,
        terminal_state_handler: Optional[
            Callable[["Flow", State, Set[State]], Optional[State]]
        ] = None,
        skip_if_running: bool = False,
    ):
        if skip_if_running:
            state_handlers = state_handlers or []
            state_handlers.append(handler_skip_if_running)

        super().__init__(
            name=name,
            schedule=schedule,
            executor=executor,
            run_config=run_config,
            storage=storage,
            tasks=tasks,
            edges=edges,
            reference_tasks=reference_tasks,
            state_handlers=state_handlers,
            on_failure=on_failure,
            validate=validate,
            result=result,
            terminal_state_handler=terminal_state_handler,
        )
