---
tags:
  - ctf
created: 2026-03-20
---

# `Level [14]` 
> Получить пароль, отправив текущий пароль на порт **30000** на localhost

## 🔐 Учётные данные
| Параметр | Значение                         |
| -------- | -------------------------------- |
| Host     | bandit.labs.overthewire.org      |
| Port     | 2220                             |
| Login    | bandit14                         |
| Password | MU4VWeTyJk8ROof1qqmcBPaLh7lDCPvS |

## 🎯 Цель уровня
- Получить пароль отправив текущий на локалхост

## 📚 Ключевые команды/Техники
| Команда | Описание                                        |
| ------- | ----------------------------------------------- |
| telnet  | не безопасное соединение к удалённому терминалу |
|         |                                                 |
|         |                                                 |

## 💡 Пошаговое решение
| Шаг | Действие                                        | Команда/Код            |
| --- | ----------------------------------------------- | ---------------------- |
| 1   | Подключится по телнет на 127.0.0.1 и порт 30000 | telnet 127.0.0.1 30000 |
| 2   | Перейти в режим команд с помощью escape кнопки  | ^]                     |
| 3   | Вставить пароль этого уровня                    |                        |

## 🔍 Результат
Флаг/Пароль: 8xCjnmgoKbGLhHFAZlGE5Tmu4M2tKJQo

## 🚪 Переход
-> [Level_14]

## 🔗 Ссылки
- [How the Internet works in 5 minutes (YouTube)](https://www.youtube.com/watch?v=7_LPdttKXPc)
- [IP Addresses](https://computer.howstuffworks.com/web-server5.htm)
- [IP Address on Wikipedia](https://en.wikipedia.org/wiki/IP_address)
- [Localhost on Wikipedia](https://en.wikipedia.org/wiki/Localhost)
- [Ports](https://computer.howstuffworks.com/web-server8.htm)
- [Port (computer networking) on Wikipedia](https://en.wikipedia.org/wiki/Port_\(computer_networking\))