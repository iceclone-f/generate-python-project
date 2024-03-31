#!/bin/bash

echo "********************************************************************"
echo "This script will help you to create a brand new Python project structure" \
	"including its environment to isolate any dependencies and/or packages versions."
echo "********************************************************************"
echo

# 1. Get the python virtual environment name
echo -e "Enter the Python enviroment name."
echo -e "It is a common practice to add _venv at the end of any Python environment."
echo -e "The script will added for you."

read venv
venv+='_venv'

# 2. Get the project name
echo -e "Enter the project name"
read project_name

# 3. Get a name for a default project package
echo -e "Enter the name of the default package"
read default_package


echo -e "the inputs are:"
echo $venv
echo $project_name
echo $default_package
echo "Python environment is being generated. Please stand by..."

# 4. Create the environment.
python3 -m venv ${venv} 

# 5. Create the project directory
mkdir ${project_name}

# 6. Create the default package directory
mkdir ${project_name}/${default_package}

# 7. create the default files and directories
touch ${project_name}/"LICENSE"
touch ${project_name}/"README.md"
touch ${project_name}/"pyproject.toml"
touch ${project_name}/"requirements.txt"
touch ${project_name}/${default_package}/"__init__.py"
mkdir ${project_name}/${default_package}/"src"
mkdir ${project_name}/${default_package}/"tests"

echo "Your Python environment is done!"
echo "To activate the environment run: source ${venv}/bin/activate"
echo "And to deactivate it simply type: deactivate"
