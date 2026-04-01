# oss-audit-24BCY10173
# Open Source Software Audit – Shell Script Project

## Student Information

**Name:** Vaibhavi Ugam Shet Govekar
**Registeration Number:** 24BCY10173
**Course:** Open Source Software
**Chosen Software:** VLC Media Player

---

# About the Project

This repository contains five Linux shell scripts developed to study and analyze how open-source software works on a Linux system. The chosen software for this audit is VLC Media Player.

Each script demonstrates different Linux shell scripting concepts such as variables, loops, conditional statements, file handling, and user interaction.

The scripts were written and tested on Kali Linux.

---

# Software Selected

VLC Media Player is a free and open-source multimedia player developed by the VideoLAN project. It supports almost all audio and video formats without needing additional codecs and runs on multiple operating systems including Linux, Windows, and macOS.

License: GNU General Public License (GPL)

---

# Project Scripts

## Script 1 – System Identity Report

**File:** `script1v.sh`

This script displays basic system information similar to a welcome screen.

Information displayed:

* Linux distribution name
* Kernel version
* Current logged-in user
* User home directory
* System uptime
* Current date and time
* VLC version information
* Open source license information

Concepts used:

* Variables
* Command substitution `$()`
* echo formatting

---

## Script 2 – FOSS Package Inspector

**File:** `script2v.sh`

This script checks whether VLC is installed on the system and displays its package information.

Features:

* Detects if VLC is installed
* Displays package details using `dpkg`
* Uses a case statement to describe different open source software packages

Concepts used:

* `if-then-else`
* `case` statement
* `dpkg` package manager
* `grep`

---

## Script 3 – Disk and Permission Auditor

**File:** `script3v.sh`

This script checks important system directories and reports:

* Disk space used
* Owner and permissions of directories

Directories checked:

* `/etc`
* `/var/log`
* `/home`
* `/usr/bin`
* `/tmp`

It also checks whether the VLC configuration directory exists.

Concepts used:

* `for` loop
* `du` command
* `ls -ld`
* `awk`
* `cut`

---

## Script 4 – Log File Analyzer

**File:** `script4v.sh`

This script analyzes a log file and counts how many lines contain a specific keyword.

Features:

* Reads log file line by line
* Searches for a keyword such as "error"
* Counts number of matching lines
* Displays the last 5 matching log entries

Concepts used:

* `while read` loop
* command line arguments
* counter variables
* `grep`

Example usage:

```
./script4.sh vlc-log.txt error
```

---

## Script 5 – Open Source Manifesto Generator

**File:** `script5v.sh`

This script interactively generates a personalized open-source philosophy statement.

Features:

* Asks the user three questions
* Generates a short manifesto
* Saves the output into a `.txt` file
* Displays the generated file

Concepts used:

* `read` command
* string concatenation
* file writing using `>` and `>>`
* `date` command
* alias concept (demonstrated in comments)

---

# How to Run the Scripts on Linux

## Step 1 – Install Dependencies

Make sure VLC Media Player is installed.

```
sudo apt update
sudo apt install vlc
```

---

## Step 2 – Give Execution Permission

Navigate to the repository folder and run:

```
chmod +x script1v.sh
chmod +x script2v.sh
chmod +x script3v.sh
chmod +x script4v.sh
chmod +x script5v.sh
```

---

## Step 3 – Run the Scripts

Run each script using:

```
./script1v.sh
./script2v.sh
./script3v.sh
./script4v.sh vlc-log.txt error
./script5v.sh
```

---

# Dependencies

The scripts require the following Linux utilities:

* bash
* awk
* grep
* du
* ls
* cut
* date
* dpkg
* VLC Media Player

All these tools are typically available by default on most Linux distributions.

---

# Repository Structure

```
oss-audit_24BCY10173/
│
├── script1v.sh
├── script2v.sh
├── script3v.sh
├── script4v.sh
├── script5v.sh
│
└── README.md
```

---

# Conclusion

This project demonstrates how Linux shell scripting can be used to analyze open-source software installed on a system. By examining installation details, permissions, logs, and system information, the scripts provide practical insight into how open-source applications interact with the Linux environment.

Open-source software like VLC Media Player highlights the importance of collaboration, transparency, and community-driven development.
