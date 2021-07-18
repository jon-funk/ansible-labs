# Lab 1: File IO
Use basic ansible modules to do file IO

## Nomenclature:
APB: Ansible playbook

## Tasks
Task 1:
- Ensure `output.txt` is re-created when deleted

Task 2:
- update APB to write content `Hello` to the file `output.txt`
- file contents of `output.txt` contains `ONLY 1 line` of `Hello`, if not, adjust the `lineinfile` task until it does. Hint: `regex`
- After completing the above, set the file content to `Hello World` upon running the APB

Bonus:
- Reduce the playbook down to 1 task that modifies the file content and does not fail if the file is missing