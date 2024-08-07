#!/usr/bin/env python3
"""Async Generator"""

import random
from typing import AsyncGenerator
import asyncio


async def async_generator() -> AsyncGenerator[float, None]:
    """Async Generator"""
    for _ in range(10):
        await asyncio.sleep(1)
        yield random.uniform(0, 10)
