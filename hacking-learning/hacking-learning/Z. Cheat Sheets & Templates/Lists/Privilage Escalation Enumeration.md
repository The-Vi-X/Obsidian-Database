#enumeration #privilege_escalation 

| hostname                           | return hostname of machine                          |
| ---------------------------------- | --------------------------------------------------- |
| uname -a                           | print system information                            |
| cat /proc/version                  | information about kernel version                    |
| cat /etc/issue                     | information about OS                                |
| ps                                 | check running processes                             |
| cat /etc/crontab                   | check automatic running software                    |
| dpkg                               | check all installed software                        |
| id                                 | check users memberships to group and they privilege |
| env                                | show environmental variables                        |
| history                            | print previous used commands                        |
| sudo -l                            | print all commands we can run with sudo             |
| cat /etc/passwd                    | find users in system                                |
| cat /etc/passwd \| cut -d ":" -f 1 | list view of users in system                        |
| ifconfig                           | information about network interfaces                |
| netstat                            | gather information about connections                |
| ss -tulpen                         | get opened ports information                        |