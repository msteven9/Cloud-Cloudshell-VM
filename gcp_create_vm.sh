#!/bin/bash

# Set your GCP project and zone
PROJECT_ID="replace_with_project_id"
ZONE="us-central1-a"

# Set the instance and disk names
INSTANCE_NAME="e2micro"
MACHINE_TYPE="e2-micro"
DISK_SIZE="10GB"
IMAGE_FAMILY="debian-11"  # Image family for Debian 11
IMAGE_PROJECT="debian-cloud"  # Project where the Debian image is hosted

# Create the GCP instance with the specified boot disk size, image family, and project
gcloud compute instances create $INSTANCE_NAME \
  --project $PROJECT_ID \
  --zone $ZONE \
  --machine-type $MACHINE_TYPE \
  --boot-disk-size $DISK_SIZE \
  --image-family $IMAGE_FAMILY \
  --image-project $IMAGE_PROJECT
