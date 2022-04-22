# bdg

> anagram of Git DataBase

A bash-based database with git-based internals. Basically a terrible idea.

## commands

- general
    - [ ] init
    - [ ] reset
- table
    - [x] create
    - [x] drop
    - [x] insert
    - [x] select
    - [ ] update
    - [ ] delete
- user
    - [x] create
    - [x] list
    - [x] drop
    - [x] set-current
    - [x] get-current
- db
    - [ ] create
    - [ ] list
    - [ ] drop
    - [ ] set-current

## implementation roadmap

Besides the commands listed above, some general functionality needs to be implemented:

- Rethink `jq` dependency
  - Should every thing be JSON?
  - Should we initialize tables with `[]`?
  - Add translation/abstraction layer on top of?
  - ...
- Versioning/temporality
  - Use `git` in all commands
  - Provide history commands
  - Store queries made + git hash as metadata (every query will be reproducible)
- Transactions
  - Add `transaction` feature via branches
  - Add `rollback` mechanism
- Concurrency
  - Add `lock` file in all commands
- Querying
  - Print them as table in terminal
  - Enable `WHERE` like functionality
  - Enable `ORDER BY` like functionality
  - Enable `count(attr)` like functionality
- Updating
  - Make it robust
- Refactor
  - Make metadata be stored as `bdg` tables 
  - Abstract common functionality/constants/etc in source files
- Validation and Errors (there's a ton to do here 😅, I'll list a few below)
  - user
    - `set-current` should validate that the user in fact exists

Less important ones:

- Add backups via `git tag`
- Add password to `user`s
- Add concept of `role`s to `user`s
- Properly package this repository for users to install it easily
- Add SQL layer on top of for compatibility (SQL lite users)
