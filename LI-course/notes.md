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
