# Linux Fundamentals
**← К разделу:** [[0. Fundamentals]]  
**Чит-щит команд:** [[Linux Cheat Sheet]]

[[Навигация]]
* `cd ~/Documents` - Перейти в папку Documents текущего пользователя #linux #command
* `cd ..` - На уровень выше #linux #command
* `ls -la` - Список файлов (включая скрытые) с детализацией #linux #command
* `pwd` - Текущий путь #linux #command

[[Управление файлами]]
* `cp file.txt backup/` - Копирование #linux #command
* `mv old.txt new.txt` - Переименование/перемещение #linux #command
* `rm -r dir/` - ⚠️ Удалить папку рекурсивно #linux #command #danger
* `mkdir project` - Создать папку #linux #command
* `.` - часть имени файла, делает файл скрытым #linux

[[Просмотр файлов]]
* `cat log.txt` - Вывести весь файл #linux #command
* `less large_file.log` - Просмотр с прокруткой #linux #command
* `head -n 5 file.txt` - Первые 5 строк #linux #command
* `tail -f app.log` - Следить за обновлениями файла #linux #command #debug

[[Поиск файлов]]
* `grep "ERROR" /var/log/syslog` - Поиск текста в файле #linux #command #log
* `find ~/ -name "*.conf"` - Поиск файлов по маске #linux #command

[[Права доступа]]
* `chmod +x script.sh` - Дать права на выполнение #linux #command
* `sudo chown user:group file` - ⚠️ Изменить владельца #linux #command #danger

[[Установка ПО]]
* `sudo apt update` - Обновить список пакетов #linux #command
* `sudo apt install nmap` - Установить пакет #linux #command #tool

[[Информация о файлах]]
`du file` - определяет, сколько места занимает файл #linux #command 
`file file` - определяет тип файла #linux #command

[[Помощь с командами]]
* `man ls` - Полное руководство #linux #command #help
* `grep --help` - Краткая справка #linux #command #help
* `sudo !!"` - ⚠️ Повторить прошлую команду с sudo #linux #command #danger

[[Взаимодействия с терминалом]]
* `clear` или Ctrl+L - Очистить экран #linux #command
* Ctrl+C - Прервать выполнение #linux #command
* Ctrl+Z - Отправить процесс в фон #linux #command

[[Удалённый доступ]]
- `ssh ip -l login` - защищённое соединение к удалённому терминалу #linux #command #ssh #connection