#! /bin/sh
export BUCKET=gs://$PROJECT
export REGION=us-central1
/root/apache-beam-2.39.0/bin/python simple.py --input $BUCKET/regions.csv --output $BUCKET/regions_out \
--temp_location gs://$BUCKET/tmp/ --region $REGION --project $PROJECT --runner DataflowRunner
