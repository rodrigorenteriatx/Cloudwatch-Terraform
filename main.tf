# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "arn:aws:sns:us-east-1:041777205994:ApiNotifications:0eab4b2f-f08d-4f8b-930a-7a442ff4e913"
resource "aws_sns_topic_subscription" "to-gmail" {
  confirmation_timeout_in_minutes = null
  delivery_policy                 = null
  endpoint                        = "tubayeezus@gmail.com"
  endpoint_auto_confirms          = null
  filter_policy                   = null
  protocol                        = "email"
  raw_message_delivery            = false
  redrive_policy                  = null
  subscription_role_arn           = null
  topic_arn                       = "arn:aws:sns:us-east-1:041777205994:api-notifications"

  depends_on = [ aws_sns_topic.api-notifications ]
}

# __generated__ by Terraform from "Overall Latency"
resource "aws_cloudwatch_metric_alarm" "latency" {
  actions_enabled     = true
  alarm_actions       = ["arn:aws:sns:us-east-1:041777205994:api-notifications"]
  alarm_description   = "Latency Is Heavy!!!"
  alarm_name          = "AvgLatency"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = 1
  dimensions = {
    ApiName = "dynamo_update"
  }
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = 1
  extended_statistic                    = null
  insufficient_data_actions             = []
  metric_name                           = "Latency"
  namespace                             = "AWS/ApiGateway"
  ok_actions                            = []
  period                                = 300
  statistic                             = "Average"
  tags                                  = {}
  tags_all                              = {}
  threshold                             = 1000
  threshold_metric_id                   = null
  treat_missing_data                    = "missing"
  unit                                  = null

  depends_on = [ aws_sns_topic.api-notifications ]
}

# __generated__ by Terraform from "API Client Error"
resource "aws_cloudwatch_metric_alarm" "error" {
  actions_enabled     = true
  alarm_actions       = ["arn:aws:sns:us-east-1:041777205994:api-notifications"]
  alarm_description   = "400 ERROR FROM CLIENT"
  alarm_name          = "ClientError"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  datapoints_to_alarm = 3
  dimensions = {
    ApiName = "dynamo_update"
  }
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = 5
  extended_statistic                    = null
  insufficient_data_actions             = []
  metric_name                           = "4XXError"
  namespace                             = "AWS/ApiGateway"
  ok_actions                            = []
  period                                = 30
  statistic                             = "SampleCount"
  tags                                  = {}
  tags_all                              = {}
  threshold                             = 3
  threshold_metric_id                   = null
  treat_missing_data                    = "missing"
  unit                                  = null

  depends_on = [ aws_sns_topic.api-notifications ]
}

# __generated__ by Terraform from "COUNT ALARM"
resource "aws_cloudwatch_metric_alarm" "count" {
  actions_enabled     = true
  alarm_actions       = ["arn:aws:sns:us-east-1:041777205994:api-notifications"]
  alarm_description   = "Count is over 20, IN A PERIOD OF 30 SECONDS"
  alarm_name          = "AllCalls(Count)"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  datapoints_to_alarm = 5
  dimensions = {
    ApiName = "dynamo_update"
  }
  evaluate_low_sample_count_percentiles = null
  evaluation_periods                    = 10
  extended_statistic                    = null
  insufficient_data_actions             = []
  metric_name                           = "Count"
  namespace                             = "AWS/ApiGateway"
  ok_actions                            = []
  period                                = 30
  statistic                             = "SampleCount"
  tags                                  = {}
  tags_all                              = {}
  threshold                             = 20
  threshold_metric_id                   = null
  treat_missing_data                    = "missing"
  unit                                  = null

  depends_on = [ aws_sns_topic.api-notifications ]
}

#
resource "aws_sns_topic" "api-notifications" {
  name = "api-notifications"
}
