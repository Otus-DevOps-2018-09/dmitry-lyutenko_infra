#!/bin/sh
gcloud compute instances create reddit-app --tags puma-server --image-family reddit-full
