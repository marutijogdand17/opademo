
# common variable
project = "wiz-environment-692908"

# bucket variables
bucket_name                 = "wiz-tf-iac-scan-demo-bucket-01"
bucket_location             = "US"
public_access_prevention    = "enforced"
uniform_bucket_level_access = false
retention_period            = "315360000"
retention_policy_is_locked  = true

# pubsub variables
topic_name      = "wiz-demo-topic"
subscriber_name = "wiz-demo-push-subscriber"