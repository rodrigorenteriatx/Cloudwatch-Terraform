---

# Cloudwatch-Terrraform

## Overview

This project is part of the **Cloud Resume Challenge** and focuses on monitoring an API/Lambda function. It includes the setup of alarms, SNS topic, and subscription to notify you of various conditions.

## Features

- **Alarms**: Monitors API calls, error responses, and latency.
- **SNS Topics and Subscriptions**: Set up for sending notifications.
- **Automated Provisioning**: Resources can be easily provisioned and managed with Terraform.

## Setup

### Manual Steps

1. **Created Alarms, SNS Topics, and Subscriptions**:
   - Manually created alarms to monitor:
     - API calls exceeding 20 times in under 30 minutes.
     - 4xx errors occurring more than 3 times in 5 minutes.
     - Latency breaching the threshold of 1000 ms.
   - Set up SNS topics and subscriptions to send notifications.

2. **Imported and Renamed Resources**:
   - Imported the manually created resources using Terraform and trimmed/renamed them for better management.

### Terraform Configuration

- **Import File**: `import.tf` demonstrates the import process of the resources.
  
- **Generated Configuration**: Used the command `terraform plan -generate-config-out=main.tf` to generate the `main.tf` file.
  

## Notifications

Currently, notifications are sent to your Gmail account. Future enhancements will include configuring additional methods for sending alerts.

## Future Work

- Configure additional methods for sending alerts.
- Expand monitoring capabilities.

## Conclusion

This setup ensures that the API/Lambda function is effectively monitored, and alerts are sent for critical events, helping maintain the reliability and performance of the application.

