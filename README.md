# Modified-xv6-MIT-Operating-System

#### MIS: 141808009

### Overview

Various additional improvements have been made to the xv6 operating system such as adding the system calls like mk, rmdir, clear, shutdown, rcounter, wcounter, ccounter, date, myecho, ocounter. 

### Run the shell

1. Run the command `make qemu` or `make qemu-nox`.

### Adding System Call 

The files that have been modified are:

1. syscall.h
2. syscall.c
3. user.h
4. usys.S
5. sysproc.c

#### NOTE: Make sure to use command:

1. `make clean`
2. `make` 
3. `make qemu` or `make qemu-nox`

### System call and their description

1. mk - It's make directory system call like implemented in unix systems.
2. rmdir - It's remove directory system call like implemented in unix systems.
3. clear - It's clear system call like implemented in unix systems, to clear the qemu window (NOTE: not the qemu-nox window).
4. shutdown - It's shutdown system call like implemented in unix systems.
5. rcounter - It's read counter system call.
6. wcounter - It's write counter system call.
7. date - It used to display current date.
8. myecho - It's echo system call like implemented in unix systems.
9. getyear - It returns the current year system call.
10. fcounter - It's fork counter system call.
11. waitcounter - It's wait counter system call.
12. ccounter - It's close counter system call.
13. ocounter - It's open counter system call.

Guided By: Anishraj Sir (Faculty of Dept. of Computer Engineering and IT, COEP).
