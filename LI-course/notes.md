# notes

- bash

  - short for Bourne Again Shell
  - widely used shell
  - interactive command-line shell that allows commands to be combined into script files, which are run like programs
  - saves time and reduces errors

- pipes and redirections

  - pipes send the result of one process to another
    - examples
      - `ls | wc -l`
      - `cat <file-path> | less`
  - redirection
    - `>`
      - output redirection
      - overwrites
      - `ls > tst.txt`
    - `>>`
      - output redirection
      - appends
    - `<num>>`
      - `ls /notreal 1>output.txt 2>error.txt`
    - `<`
      - input redirection
    - `<<`
      - here document

- commands and built-ins
  - commands are separate software that does not depend on Bash
  - bash includes built-in commands
    - some have same name as other commands
  - some commands
    - `echo`
      - outputs text (newline)
    - `printf`
      - outputs text (no newline)
    - `command <command-name>`
      - run command
      - `command -V <command-name>`
        - get whether it is command or built-in
    - `built-in <command-name>`
      - built-in version of command
      - will run built in if there are both command and built-in present, unless explicitly told not to
        - `enable -n <command-name>`
          - disables built-in version of echo, uses command instead
          - `enable <command-name>`
            - enables built-in
