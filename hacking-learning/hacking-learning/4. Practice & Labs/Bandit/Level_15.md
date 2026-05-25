---
tags:
  - ctf
created: 2026-03-20
---

# `Level [15]` 
> Отправить текущий пароль на защищённый локальный хост по порту 30001

## 🔐 Учётные данные
| Параметр | Значение                         |
| -------- | -------------------------------- |
| Host     | bandit.labs.overthewire.org      |
| Port     | 2220                             |
| Login    | bandit15                         |
| Password | 8xCjnmgoKbGLhHFAZlGE5Tmu4M2tKJQo |


## 🎯 Цель уровня
- Получить пароль отправив текущий на локалхост

## 📚 Ключевые команды/Техники
| Команда                   | Описание                            |
| ------------------------- | ----------------------------------- |
| openssl s_client -connect | подключение к защищённому TLS хосту |
|                           |                                     |
|                           |                                     |

## 💡 Пошаговое решение
| Шаг | Действие                        | Команда/Код               |
| --- | ------------------------------- | ------------------------- |
| 1   | Подключение к защищённому хосту | openssl s_client -connect |
| 2   | Ввод пароля                     |                           |
| 3   |                                 |                           |

## 🔍 Результат
Флаг/Пароль:kSkvUpMQ7lBYyCM4GBPvCvT1BfWRy0Dx

## 🚪 Переход
-> [Level_15]

## 🔗 Ссылки
- [Secure Socket Layer/Transport Layer Security on Wikipedia](https://en.wikipedia.org/wiki/Transport_Layer_Security)
- [OpenSSL Cookbook - Testing with OpenSSL](https://www.feistyduck.com/library/openssl-cookbook/online/testing-with-openssl/index.html)
- 