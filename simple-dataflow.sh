#! /bin/sh
export PROJECT_ID=$(gcloud config get-value project)
export BUCKET=gs://$PROJECT_ID
gsutil mb $BUCKET
gsutil cp regions.csv $BUCKET
export REGION=us-central1
/jupyter/.kernels/apache-beam-2.46.0/bin/python simple.py --input $BUCKET/regions.csv --output $BUCKET/regions_out \
--temp_location $BUCKET/tmp/ --region $REGION --project $PROJECT_ID --runner DataflowRunner
