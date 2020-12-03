#!/usr/bin/env bash

CHART_NAME=$(yq -r '.name' Chart.yaml)
CHART_VERSION=$(yq -r '.version' Chart.yaml)

#git tag "RELEASE-$CHART_VERSION"

helm package --sign --key 'helm' .

curl --user "$CHARTMUSEUM_AUTH_USER:$CHARTMUSEUM_AUTH_PASS" \
  -F "chart=@$CHART_NAME-$CHART_VERSION.tgz" \
  -F "prov=@$CHART_NAME-$CHART_VERSION.tgz.prov" \
  https://helm-charts.fitfit.dk/api/charts

rm "$CHART_NAME-$CHART_VERSION.tgz*"

#git push
#git push --tags
