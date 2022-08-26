#! /bin/sh
# export PROJECT=your project ID
# gsutil mb gs://$PROJECT
# gsutil cp regions.csv gs://$PROJECT
export BUCKET=gs://$PROJECT
export REGION=us-central1
/root/apache-beam-2.40.0/bin/python simple.py --input $BUCKET/regions.csv --output $BUCKET/regions_out \
--temp_location gs://$BUCKET/tmp/ --region $REGION --project $PROJECT --runner DataflowRunner
