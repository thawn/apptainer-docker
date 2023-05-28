#!/bin/bash
docker build -t thawn/apptainer:latest .
docker login --username=thawn
docker push thawn/apptainer:latest
