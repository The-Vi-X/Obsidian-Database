---
tags:
  - ctf
created: 2026-05-18
---

# `Level [2]` 
> 

## 🔐 Учётные данные
| Параметр | Значение                      |
| -------- | ----------------------------- |
| Host     | behemoth.labs.overthewire.org |
| Port     | 2221                          |
| Login    | behemoth2                     |
| Password | IxPJbQtH8q                    |

## 🎯 Цель уровня
- hijack file execution with PATH env variable
## 🎯 Информация

| Тип информации | Данные                     |
| -------------- | -------------------------- |
| info           | try create file with touch |
| info           | sleep for 2000 sec         |
|                |                            |


## 🎯 Инструменты

| Инструмент | Назначение                | Использование      |
| ---------- | ------------------------- | ------------------ |
| ltrace     | view programm work inside | ltrace ./behemoth2 |
## 📚 Ключевые команды/Техники
| Команда | Описание |
| ------- | -------- |
|         |          |
|         |          |
|         |          |

## 💡 Пошаговое решение
| Шаг | Действие                                                  | Команда/Код            |
| --- | --------------------------------------------------------- | ---------------------- |
| 1   | get information about binary work                         |                        |
| 2   | create temp directory                                     |                        |
| 3   | give temp directory rwx privilage to touch in binary work | chmod 777 tmp          |
| 4   | create fake touch binary with /bin/bash -p inside         |                        |
| 5   | add to start of $PATH or path to our folder               | export PATH=/tmp:$PATH |
| 6   | execute binary and read password in shell with privilages |                        |

## 🔍 Результат
Флаг/Пароль: JQ6tZGqt0i

## 🚪 Переход
-> [Level_2]

## 🔗 Ссылки
- [Название ресурса](URL)