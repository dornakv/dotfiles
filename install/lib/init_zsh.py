#!/usr/bin/env python
from conda.core.initialize import init_sh_user
from conda.base.context import context
from conda.common.path import expand

init_sh_user(expand("$ZDOTDIR/conda_init"), context.conda_prefix, "zsh")
