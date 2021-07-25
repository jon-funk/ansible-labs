# Lab 1: File IO
Use basic ansible modules to do file IO

## Nomenclature:
APB: Ansible playbook

## Tasks
Task 1:
- Ensure `output.txt` is re-created when deleted
- update APB to write content `Hello` to the file `output.txt`

Task 2:
- Change `content` at least twice, and the run the APB after each time. Note the how text is appended to the file.
- Upon changing `content` and running the APB after, the file contents of `output.txt` should contain `ONLY 1 line` of the last value in `content`, if not, adjust the `lineinfile` task until it does. Hint: `regex`
- After completing the above, set the file content to `Hello World` upon running the APB

Bonus:
- Reduce the playbook down to 1 task that modifies the file content and does not fail if the file is missing
- When running the playbook twice in a row, the `2nd execution` should show `changed=0` in the `PLAY RECAP`