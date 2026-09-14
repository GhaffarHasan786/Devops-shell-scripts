# 🐚 Shell Scripting for DevOps

A practical **Shell Scripting** repository created as part of my journey toward becoming a professional **DevOps Engineer**.

This repository contains Shell/Bash scripting tutorials, practical examples, and real-world automation scripts for **Linux system administration, monitoring, logging, and server management**.

The goal is to understand how Shell scripting can be used to automate repetitive tasks and improve operational efficiency in DevOps environments.

---

# 📌 About This Repository

This repository starts with **Shell Scripting fundamentals** and gradually moves toward practical DevOps automation.

It includes:

* Shell scripting fundamentals
* Bash syntax and commands
* Variables and user input
* Conditional statements
* Loops
* Functions
* Arrays
* File and directory operations
* Text processing
* Error handling
* Linux system automation
* Disk health monitoring
* Service monitoring
* Application log monitoring
* Server backup automation

---

# 📂 Repository Structure

```text
Shell-Scripting/
│
├── README.md
│
├── 01-Basics/
│   ├── hello.sh
│   ├── variables.sh
│   ├── user-input.sh
│   └── comments.sh
│
├── 02-Conditions/
│   ├── if-else.sh
│   ├── elif.sh
│   └── case.sh
│
├── 03-Loops/
│   ├── for-loop.sh
│   ├── while-loop.sh
│   └── until-loop.sh
│
├── 04-Functions/
│   ├── functions.sh
│   └── function-arguments.sh
│
├── 05-Arrays/
│   └── arrays.sh
│
├── 06-Files-and-Directories/
│   ├── file-check.sh
│   ├── directory-check.sh
│   └── file-operations.sh
│
├── 07-Text-Processing/
│   ├── grep.sh
│   ├── sed.sh
│   ├── awk.sh
│   └── cut.sh
│
├── 08-System-Commands/
│   ├── processes.sh
│   ├── memory.sh
│   ├── disk.sh
│   └── system-info.sh
│
├── 09-DevOps-Automation/
│   ├── disk-health.sh
│   ├── service-monitoring.sh
│   ├── app-log-monitoring.sh
│   └── server-backup.sh
│
└── examples/
    └── sample-logs/
```

> **Note:** Adjust the folder/file names above according to the actual files in your repository.

---

# 🧑‍💻 Shell Scripting Tutorial

The tutorial section covers the fundamentals required to write Bash scripts on Linux systems.

## 🔹 Basic Commands

Learning and practicing common Linux commands such as:

```bash
pwd
ls
cd
mkdir
touch
cp
mv
rm
cat
less
head
tail
```

---

## 🔹 Variables

Example:

```bash
#!/bin/bash

name="Ghaffar"

echo "Hello $name"
```

---

## 🔹 User Input

Example:

```bash
#!/bin/bash

read -p "Enter your name: " name

echo "Welcome, $name"
```

---

## 🔹 Conditional Statements

Example:

```bash
if [ "$value" -gt 10 ]; then
    echo "Value is greater than 10"
else
    echo "Value is 10 or less"
fi
```

---

## 🔹 Loops

Example:

```bash
for i in 1 2 3 4 5
do
    echo "Number: $i"
done
```

Loops are useful when automating repetitive tasks.

---

## 🔹 Functions

Example:

```bash
#!/bin/bash

greet() {
    echo "Hello from Shell Script"
}

greet
```

Functions help make scripts reusable and easier to maintain.

---

# ⚙️ DevOps Automation Scripts

The final section of this repository focuses on practical scripts that can be useful in real DevOps and Linux administration environments.

---

# 💾 1. Disk Health Monitoring

### Purpose

The disk health script checks available disk space and helps identify systems where storage usage is becoming critical.

Typical concepts include:

* Disk usage
* Filesystem information
* Usage thresholds
* Warning messages
* Critical alerts

Example command used:

```bash
df -h
```

A script can check disk usage and provide a warning when a configured threshold is exceeded.

### Why It Matters

High disk usage can cause:

* Application failures
* Database problems
* Log-writing failures
* Service interruptions

Automated disk monitoring helps detect these issues before they become critical.

---

# 🔍 2. Service Monitoring

### Purpose

The service monitoring script checks whether an important Linux service is running.

Example:

```bash
systemctl status nginx
```

A monitoring script can automatically check the service status and report or take action if the service is down.

### Example Workflow

```text
Check Service
      │
      ▼
Is Service Running?
   │          │
  YES         NO
   │          │
   ▼          ▼
Continue    Alert / Restart
```

This demonstrates how Shell scripting can be used for basic service automation.

---

# 📜 3. Application Log Monitoring

### Purpose

The application log script is designed to monitor application logs and identify important events such as:

* Errors
* Warnings
* Failed requests
* Critical messages

Useful Linux commands include:

```bash
cat
grep
tail
awk
sed
```

For example:

```bash
tail -f app.log
```

And searching for errors:

```bash
grep "ERROR" app.log
```

### DevOps Use Case

Log monitoring is an important part of troubleshooting and observability.

A basic automated workflow can be:

```text
Application
     │
     ▼
   app.log
     │
     ▼
Shell Script
     │
     ▼
Search for Errors
     │
     ▼
Generate Alert / Report
```

---

# 🗄️ 4. Server Backup Script

### Purpose

The server backup script demonstrates how Shell scripting can automate backups of important server data.

Typical tasks include:

* Selecting important directories
* Creating compressed archives
* Adding timestamps
* Storing backups
* Checking backup status

Example:

```bash
tar -czf backup-$(date +%Y-%m-%d).tar.gz /path/to/data
```

### Example Workflow

```text
Server Data
     │
     ▼
Backup Script
     │
     ▼
Create Archive
     │
     ▼
Timestamp Backup
     │
     ▼
Store Backup
```

Automated backups are an important part of maintaining system reliability and disaster recovery.

---

# 🔐 Script Permissions

Before executing a Shell script, make it executable:

```bash
chmod +x script.sh
```

Run the script:

```bash
./script.sh
```

Alternatively:

```bash
bash script.sh
```

---

# 🧪 Testing Scripts

Before using automation scripts on production systems, they should be tested carefully.

Useful commands:

```bash
bash -n script.sh
```

This checks the script for syntax errors.

You can also run scripts with debugging enabled:

```bash
bash -x script.sh
```

This helps understand how each command is executed.

---

# 🛡️ Error Handling

Reliable automation should handle failures properly.

Example:

```bash
#!/bin/bash

set -e

echo "Starting script..."

# Commands

echo "Script completed successfully."
```

For more advanced scripts, error handling can be combined with logging and exit codes.

---

# ⏰ Automation with Cron

Shell scripts can be scheduled using **cron**.

Edit the cron jobs:

```bash
crontab -e
```

Example:

```bash
0 2 * * * /path/to/server-backup.sh
```

This can run a backup script every day at **2:00 AM**.

Cron is useful for automating repetitive system administration tasks.

---

# 🧠 DevOps Concepts Practiced

Through this repository, I am developing practical knowledge of:

* Linux
* Bash/Shell scripting
* Process management
* File management
* System monitoring
* Service management
* Log analysis
* Backup automation
* Cron jobs
* Error handling
* Task automation

---

# 🔄 Shell Scripting in DevOps

Shell scripting is commonly used to automate tasks across the DevOps lifecycle.

```text
Developer
    │
    ▼
Git / GitHub
    │
    ▼
CI/CD
    │
    ▼
Build & Test
    │
    ▼
Deployment
    │
    ▼
Linux Server
    │
    ├── Service Monitoring
    ├── Disk Monitoring
    ├── Log Monitoring
    └── Backup Automation
```

Shell scripts can connect many of these operational tasks together.

---

# 🎯 Career Goal

This repository is part of my journey toward becoming a **DevOps Engineer**.

My learning path is focused on developing strong practical knowledge in:

```text
Linux
  ↓
Shell Scripting
  ↓
Git & GitHub
  ↓
Docker
  ↓
CI/CD
  ↓
AWS / Cloud
  ↓
Infrastructure as Code
  ↓
Kubernetes
  ↓
Monitoring & Observability
  ↓
DevOps Engineer
```

---

# 📚 Future Improvements

I plan to expand this repository with more advanced DevOps automation, including:

* Advanced Bash scripting
* Automated server health checks
* Log rotation
* Deployment scripts
* Docker automation
* CI/CD integration
* Cloud automation
* AWS CLI scripting
* Infrastructure automation
* Monitoring and alerting

---

# ⚠️ Disclaimer

These scripts are created primarily for **learning, practice, and demonstration purposes**.

Before running automation scripts on production servers, review the commands, paths, permissions, backup locations, and failure-handling logic carefully.

---

# 🚀 Learning by Building

This repository represents my practical learning journey with **Linux and Shell Scripting** and my progression toward professional **DevOps Engineering**.

> **Automate repetitive tasks. Monitor systems. Build reliable infrastructure.**

### 🐧 Linux + 🐚 Shell + ⚙️ Automation → 🚀 DevOps
