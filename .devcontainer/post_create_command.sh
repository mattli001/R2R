#!/bin/bash
echo "post_create_command.sh -- start"

# echo "#### install uv (python package manager) #### "
pip install uv

# add alias for user account 'vscode'
{
  echo 'alias ll="ls -la"'
  echo 'alias pyenv="source /app/py/.venv/bin/activate"'
} >> ~/.bashrc

echo "post_create_command.sh -- end"