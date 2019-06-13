#!/bin/bash -

nohup nice jupyter nbconvert --execute --inplace \
  --ExecutePreprocessor.timeout=None \
  $1 &

