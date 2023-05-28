#!/bin/bash
docker build -t thawn/apptainer:latest .
docker push thawn/apptainer:latest
