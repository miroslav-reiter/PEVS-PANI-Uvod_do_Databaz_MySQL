# 🦢 SQLite
Je **súborový databázový systéme (engine)** napísaný v programovacom **jazyku C**. Nie je to samostatná aplikácia; je to skôr knižnica, ktorú vývojári softvéru vkladajú do svojich aplikácií. 
Ako taký patrí do rodiny **vstavaných databáz (embedded databases)**. Je to **najrozšírenejší databázový nástroj**, pretože ho používa niekoľko **webových prehliadačov**, **operačných systémov**, **mobilných telefónov** a iných vstavaných systémov.
Mnoho programovacích jazykov má väzby na knižnicu SQLite. Vo všeobecnosti sa riadi syntaxou PostgreSQL, ale štandardne nevynucuje kontrolu typu.

Porty: nemá

## 🛠️Nástroje a Pomôcky
[Inštalátor SQlite](https://www.sqlite.org/download.html)  
[SQL a Databázový Editor Dbeaver](https://dbeaver.io/)  
[Online simulátor](https://sqlite.org/fiddle/index.html)  


## Zoznam príkazov SQLite shellu
| Príkaz                   | Popis                                             | Predvolená Hodnota |
|--------------------------|---------------------------------------------------|--------------------|
| .auth ON\|OFF            | Show authorizer callbacks                         |                    |
| .bail on\|off            | Stop after hitting an error.                      | Default OFF        |
| .binary on\|off          | Turn binary output on or off.                     | Default OFF        |
| .changes on\|off         | Show number of rows changed by SQL                |                    |
| .connection [close] [#]  | Open or close an auxiliary database connection    |                    |
| .databases               | List names and files of attached databases        |                    |
| .dbconfig ?op? ?val?     | List or change sqlite3_db_config() options        |                    |
| .dbinfo ?DB?             | Show status information about the database        |                    |
| .dump ?OBJECTS?          | Render database content as SQL                    |                    |
| .echo on\|off            | Turn command echo on or off                       |                    |
| .eqp on\|off\|full\|...  | Enable or disable automatic EXPLAIN QUERY PLAN    |                    |
| .expert                  | EXPERIMENTAL. Suggest indexes for queries         |                    |
| .explain ?on\|off\|auto? | Change the EXPLAIN formatting mode.               | Default: auto      |
| .filectrl CMD ...        | Run various sqlite3_file_control() operations     |                    |
| .fullschema ?--indent?   | Show schema and the content of sqlite_stat tables |                    |
| .headers on\|off         | Turn display of headers on or off                 |                    |
| .help ?-all? ?PATTERN?   | Show help text for PATTERN                        |                    |
| .indexes ?TABLE?         | Show names of indexes                             |                    |
| .limit ?LIMIT? ?VAL?     | Display or change the value of an SQLITE_LIMIT    |                    |
| .lint OPTIONS            | Report potential schema issues.                   |                    |
| .log on\|off             | Turn logging on or off.                           |                    |
| .mode MODE ?OPTIONS?     | Set output mode                                   |                    |
| .nullvalue STRING        | Use STRING in place of NULL values                |                    |
| .parameter CMD ...       | Manage SQL parameter bindings                     |                    |
| .print STRING...         | Print literal STRING                              |                    |
| .progress N              | Invoke progress handler after every N opcodes     |                    |
| .prompt MAIN CONTINUE    | Replace the standard prompts                      |                    |
| .recover                 | Recover as much data as possible from corrupt db. |                    |
| .scanstats on\|off\|est  | Turn sqlite3_stmt_scanstatus() metrics on or off  |                    |
| .schema ?PATTERN?        | Show the CREATE statements matching PATTERN       |                    |
| .separator COL ?ROW?     | Change the column and row separators              |                    |
| .sha3sum ...             | Compute a SHA3 hash of database content           |                    |
| .show                    | Show the current values for various settings      |                    |
| .stats ?ARG?             | Show stats or turn stats on or off                |                    |
| .tables ?TABLE?          | List names of tables matching LIKE pattern TABLE  |                    |
| .timeout MS              | Try opening locked tables for MS milliseconds     |                    |
| .timer on\|off           | Turn SQL timer on or off                          |                    |
| .trace ?OPTIONS?         | Output each SQL statement as it is run            |                    |
| .version                 | Show source, library and compiler versions        |                    |
| .vfsinfo ?AUX?           | Information about the top-level VFS               |                    |
| .vfslist                 | List all available VFSes                          |                    |
| .vfsname ?AUX?           | Print the name of the VFS stack                   |                    |
| .width NUM1 NUM2 ...     | Set minimum column widths for columnar output     |                    |
