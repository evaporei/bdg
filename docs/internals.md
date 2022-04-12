# internals

- Each table will be a file
- Each commit describes:
  - author: authorized db user
  - time: when
  - message: OP table.[properties?]; eg: UPDATE cars.{id,name}

## future

- Still have to figure out indexes
- Updates might use `awk` (eg: https://stackoverflow.com/questions/40457211/bash-scripting-update-a-properties-file)
- Transactions can use branches
- Conflicts will need to be resolved with concurrency and branch merging
