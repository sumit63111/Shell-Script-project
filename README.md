---

# Shell Script Projects

Welcome to my collection of shell script projects! This repository contains scripts for managing node health, AWS resources, and gathering information using the GitHub API. Each project is automated using cron jobs for seamless operation.

## Projects Overview

### 1. Node Health Management

This project helps you monitor the health of your node by using various Linux commands and automating the process with cron jobs.

- **Commands Used**: `df -h`, `top`, `free`
- **Automation**: Cron job
- **Functionality**:
  - Disk usage monitoring
  - Process and system load monitoring
  - Memory usage monitoring

### 2. AWS Resource Manager

Manage and monitor your AWS resources efficiently with this project. It utilizes AWS CLI to gather information about various AWS resources and logs the data in text files.

- **Tools Used**: AWS CLI
- **Automation**: Cron job
- **Resources Monitored**:
  - EC2 instances
  - Lambda functions
  - S3 buckets
  - IAM users
- **Logging**: All resource data is logged into text files for easy access and monitoring.

### 3. GitHub Collaborators Information

This project fetches the number of collaborators working on a GitHub project using the GitHub API, making it easy to keep track of contributors.

- **API Used**: GitHub API
- **Functionality**:
  - Retrieve the number of collaborators on a project
  - Provides a quick overview of project collaboration

## Installation and Usage

### Prerequisites

- Bash shell
- AWS CLI (for AWS Resource Manager)
- GitHub account and personal access token (for GitHub API)

### Installation

Clone this repository to your local machine:

```sh
git clone https://github.com/yourusername/shell-script-projects.git
cd shell-script-projects
```

### Usage

#### Node Health Management

Run the node health script manually:

```sh
./node_health.sh
```

Set up a cron job for automated health checks:

```sh
crontab -e
# Add the following line to run the script every hour
0 * * * * /path/to/node_health.sh
```

#### AWS Resource Manager

Run the AWS resource manager script manually:

```sh
./aws_resource_manager.sh
```

Set up a cron job for automated resource monitoring:

```sh
crontab -e
# Add the following line to run the script daily at midnight
0 0 * * * /path/to/aws_resource_manager.sh
```

#### GitHub Collaborators Information

Run the GitHub API script manually:

```sh
./github_collaborators.sh
```

## Contributing

Feel free to fork this repository and contribute by submitting pull requests. For major changes, please open an issue first to discuss what you would like to change.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

For any questions or suggestions, please open an issue or contact me at sumit63111@gmail.com.

---
