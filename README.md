#  Hello World Django application instrumented with AWS Distro for Open Telemetry and deployed in ECS

##  Steps
  1. Install aws-opentelemetry-distro package:
     ```
     pip install aws-opentelemetry-distro
     ```
  2. Ensure the Django settings file is set previous to application execution:
     ```
     export DJANGO_SETTINGS_MODULE=helloworld.settings
     ```
  3. The application must be started using the opentelemetry-instrument wrapper (ENV variables can be referred here or omitted and set them from the ECS task definition):
     ```
      OTEL_PYTHON_DISTRO="aws_distro" \
	    OTEL_PYTHON_CONFIGURATOR="aws_configurator" \
	    opentelemetry-instrument python ./path/to/your/app.py
     ```
     It is important to know that when using ```DEBUG = True```, probably for your development environment, ```--no-reload``` must be indicated when starting the application to avoid issues with the OTEL wrapper (for example):
      ```
     opentelemetry-instrument python manage.py runserver --noreload 0.0.0.0:8000
     ```
 4. When running a Django application in a container, set the PYTHONPATH env variable to the location of your application's working directory. In this case it was added to the env variables section from the task definition file:

    ```json
    "environment": [
      {
        "name": "PYTHONPATH",
        "value": "/app"
      }
    ]


    

