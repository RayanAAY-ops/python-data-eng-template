# Project name
PROJECT_NAME="."

# Create project directories
mkdir -p $PROJECT_NAME/{config,data/{raw,processed},src/utils,tests}

# Create empty files
touch $PROJECT_NAME/{README.md,requirements.txt,setup.py,.gitignore,.flake8,Dockerfile,Makefile}
touch $PROJECT_NAME/config/config.yaml
touch $PROJECT_NAME/data/raw/.gitkeep
touch $PROJECT_NAME/data/processed/.gitkeep
touch $PROJECT_NAME/src/{__init__.py,data_processing.py}
touch $PROJECT_NAME/src/utils/{__init__.py,file_handler.py,logger.py}
touch $PROJECT_NAME/tests/{__init__.py,test_data_processing.py,test_file_handler.py,test_logger.py}

# Optional: Pre-fill some files with templates
echo "# $PROJECT_NAME" > $PROJECT_NAME/README.md
echo "pandas==2.0.3\nnumpy==1.24.2\npyyaml==6.0\nrequests==2.26.0" > $PROJECT_NAME/requirements.txt
echo -e "[flake8]\nmax-line-length = 88" > $PROJECT_NAME/.flake8
