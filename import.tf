# # Alarms take - > NAME
# # SNS Topics take -> ARN
# # SNS Subscription take ->

# import {
#   to = aws_cloudwatch_metric_alarm.latency
#   id = "Overall Latency"
# }
# import {
#   to = aws_cloudwatch_metric_alarm.count
#   id = "COUNT ALARM"
# }
# import {
#   to = aws_cloudwatch_metric_alarm.error
#   id = "API Client Error"
# }

# import {
#   to = aws_sns_topic.api-notifications
#   id = "arn:aws:sns:us-east-1:041777205994:ApiNotifications"
# }

# import {
#   to = aws_sns_topic_subscription.to-gmail
#   id = "arn:aws:sns:us-east-1:041777205994:ApiNotifications:0eab4b2f-f08d-4f8b-930a-7a442ff4e913"
# }
