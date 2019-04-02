# Test helm template rendering
helm install --debug --dry-run mychart

# Top 5 helm commands
helm create # build and name a new chart
helm fetch # download and unpack a chart from a repository into a local directory
helm rollback # allows you to roll back a release to a previous version
helm status # shows the status of the requested release
helm upgrade # upgrade a requested release