# Chapter 04 – File Operations (Command List)

This file contains essential Linux commands used to create, view, edit, copy, move, and delete files and directories.

## Table of Contents

[Create Files](#create-files) | [View File Content](#view-file-content) | [Edit Files](#edit-files) | [Copy Files & Directories](#copy-files--directories) | [Move & Rename](#move--rename) | [Delete Files & Directories](#delete-files--directories) | [File & Directory Info](#file--directory-info) | [Question List](#question-list)

---

## **Create Files**

```bash
touch file1.txt           # Create an empty file
echo "hello" > file2.txt  # Create file with content
echo "world" >> file2.txt # Append content to file
cat > file3.txt           # Create file and add content using stdin
```

## **View File Content**

```bash
cat file1.txt             # Display file content
less file1.txt            # View file content page by page
more file1.txt            # View file content page by page
head file1.txt            # Show first 10 lines of file
tail file1.txt            # Show last 10 lines of file
tail -f file1.txt         # Monitor file in real time
```

## **Edit Files**

```bash
vi file1.txt              # Edit file using vi editor
vim file1.txt             # Edit file using vim editor
nano file1.txt            # Edit file using nano editor
gedit file1.txt           # Edit file using GUI editor
```

## **Copy Files & Directories**

```bash
cp file1.txt file2.txt    # Copy file
cp -r dir1 dir2           # Copy directory recursively
cp -v file1.txt /tmp      # Copy file with verbose output
cp -p file1.txt /backup   # Preserve file attributes
```

## **Move & Rename**

```bash
mv file1.txt file2.txt    # Rename file
mv file1.txt /tmp         # Move file to another directory
mv dir1 /home/user        # Move directory
```

## **Delete Files & Directories**

```bash
rm file1.txt              # Delete file
rm -i file1.txt           # Delete file with confirmation
rm -f file1.txt           # Force delete file
rm -r dir1                # Delete directory recursively
rm -rf dir1               # Force delete directory
rmdir dir1                # Delete empty directory
```

## **File & Directory Info**

```bash
ls -l file1.txt           # Show file permissions and details
stat file1.txt            # Show detailed file information
file file1.txt            # Show file type
du -sh file1.txt          # Show file size
du -sh dir1               # Show directory size
```