# **OS Mini Project: File and Directory Management Program**

## 📌 Overview
    
This Bash program provides a set of useful utilities for **file management, backup, disk usage analysis, and logging user actions**. The program is designed to work on **Linux and macOS** natively and can be run on **Windows** using **WSL, Git Bash, or Cygwin**.

---

## ✨ Features

- **List Files and Subdirectories**: Display all files and subdirectories with detailed information.
- **Backup Files and Directories**: Create backups by specifying a source and destination path.
- **Count Number of Files**: Count the total number of files in a specified directory.
- **Display Disk Usage**: Show disk usage for a given directory.
- **Search for a File**: Locate a file by name or extension in a given directory.
- **Compress Files or Directories**: Compress specified files or directories into a `.zip` archive.
- **Logging System**: Maintain a log file (`script.log`) to track all user actions.

---

## 🔧 Installation & Setup

### **Prerequisites**

Ensure you have the following installed:
    
- **Linux/macOS**: No additional setup required *(except `zip` if not installed).*
- **Windows**: Install either **WSL**, **Git Bash**, or **Cygwin**.

### **Installation Steps**
  
Clone the repository from GitHub:

```sh
git clone https://github.com/PichSereyVathanak/mini_project_OS.git
cd mini_project_OS
```

Grant execution permissions:
    
```sh
chmod +x *.sh
```

Install required utilities if missing:
  
```sh
sudo apt install zip  # Ubuntu/Debian
sudo yum install zip  # Fedora/RHEL
brew install zip      # macOS
```

---

## 🚀 How to Run the Program
 
Run the main script:
  
```sh
./menu_option.sh 
# or
bash menu_option.sh 
```

Follow the **interactive prompts** to use different features.

---

## 📂 File Structure

```
.
├── menu_option.sh      # Main menu to navigate options
├── list_files.sh       # List files and subdirectories
├── backup.sh           # Backup files and directories
├── count_files.sh      # Count number of files
├── disk_usage.sh       # Display disk usage
├── search_file.sh      # Search for a file
├── compress.sh         # Compress files or directories
├── log_action.sh       # Logging utility
├── script.log          # Log file for actions
└── README.md           # Documentation
```

---

## 🖥️ Additional Setup (Windows)
  
If running on **Windows**, follow one of these methods:
    
- **Git Bash**: Install **Git for Windows** and use Git Bash.
- **WSL**: Enable WSL by running:
  
  ```sh
  wsl --install
  ```

  Then install **Ubuntu** from the Microsoft Store.
      
- **Cygwin**: Install Cygwin from [https://www.cygwin.com/](https://www.cygwin.com/).

---

## 📜 Logging System

All user actions are recorded in **`script.log`**.

You can view logs using:

```sh
cat script.log
```

or: (For window)

```sh
type script.log
```

---

## 👨‍💻 Contributing

We are a group of students from **CADT** majoring in **Computer Science**, and this is our **mini-project** for the **Operating Systems** course.

**Lecturer**: *Chea Chandara*

### **Group Members**
1. **Khy Pichsereyvathanak**
2. **Manh Seila**
3. **Both Chealean**
4. **Soeun Sokchetra**
5. **Sam Sotheara**

---

## 📄 License

This project is open-source and available under the **MIT License**.

Feel free to use our code if you need it! 🎉
```

---
