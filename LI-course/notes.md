# notes

- bash

  - is a <b>shell</b>
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
      - `2>`
        - standard error
      - `1>`
        - standard output
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

- `~` - references `$HOME`
- `~-` - references directory were just in

- braces create sets or ranges

  - `echo c{a,o,u}t`
    - results in `cat cot cut`
  - `echo /tmp/{1..3}/file.txt`
    - results in `/tmp/1/file.txt /tmp/2/file.txt /tmp/3/file.txt`
  - `echo {1..10}`
    - 1,2,3,..,10
  - `echo {1..30..3}`
    - 1,4,7,10,...,25,28

- parameter expansion - `${...}`

  - returns part of a stored value
  - `man bash`
    - `/Parameter Expansion`
    - `q` to quit
  - `echo ${<variable>/<find>/<replace>}`
  - `echo ${<variable>//<find>/<replace>}`

- command substitution - puts the output of one command inside another

  - `$(...)`
    - older representation: `...`
  - `echo "Hi $(uname -r)`

- arthmetic expansion - does math

  - `$((...))`
    - older representation: `$[...]`
  - `echo $(( 2 + 2 ))`
  - bash can only do math with integers
    - rounds down in division/float work

- if

  ```bash
    if [[ <condition> ]]; then
      <script>
    elif [[ <condition ]]; then
      <script>
    else
      <script>
    fi
  ```

- while (runs while a condition is true)

  ```bash
    declare -i n=0
    while (( n < 10 )) do
      echo "n:$n"
      (( n++ ))
    done
  ```

- until (runs until a condition is true)

  ```bash
    declare -i m=0
    until (( m == 10 )) do
      echo "n:$n"
      (( m++ ))
    done
  ```

- for (iterate through a list of items, running code once for each item)

  ```bash
    for i in 1 2 3 do
      echo $i
    done

    for (( i=1; i<=100; i++ )) do
      echo $i
    done
  ```
