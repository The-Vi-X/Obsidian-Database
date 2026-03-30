---
tags:
  - ctf
created: 2026-03-30
---

# `Level [11]` 
> 

## 🔐 Учётные данные
| Параметр | Значение                                   |
| -------- | ------------------------------------------ |
| Host     | http://natas11.natas.labs.overthewire.org/ |
| Port     |                                            |
| Login    | natas11                                    |
| Password | UJdqkK1pTu6VLt9UHWAgRZz6sVUZ3lEk           |

## 🎯 Цель уровня
- 

## 📚 Ключевые команды/Техники
| Команда | Описание |
| ------- | -------- |
|         |          |
|         |          |
|         |          |

## 💡 Пошаговое решение
| Шаг | Действие                                                                 | Команда/Код                                                                                                        |
| --- | ------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------ |
| 1   | Преобразование куки в hex                                                | xxd                                                                                                                |
| 2   | преобразовать массив `"showpassword"=>"no", "bgcolor"=>"#ffffff"` в json | php -r 'echo json_encode(["showpassword"=>"no", "bgcolor"=>"#ffffff"]);'                                           |
| 3   | преобразование массива в hex                                             | echo -n '{"showpassword":"no","bgcolor":"#ffffff"}' \| xxd -p                                                      |
| 4   | XOR сравнение hex для получения ключа                                    | eDWo                                                                                                               |
| 5   | Создание hex с {"showpassword":"yes","bgcolor":"#ffffff"}                | xxd                                                                                                                |
| 6   | преобразование hex с ключём eDWo с помощью XOR в новый hex               |                                                                                                                    |
| 7   | преобразование нового hex в текст и текст в bash                         | echo "1e6624070a33270e1637200017207555473d321c4768750d022738030a36755547673109032231094739" \| xxd -r -p \| base64 |
| 8   | Замена нового баш куки и получение пароля в дебаг выводе                 | document.cookie = "data=HmYkBwoSNDYcFhIrJQtHX2YuChZHaHUNAgYrOwAXR351TAMDIjEJA0c5; path=/";                         |

## 🔍 Результат
Флаг/Пароль: yZdkjAYZRd3R7tq7T5kXMjMJlOIkzDeB

## 🚪 Переход
-> [Level_11]

## 🔗 Ссылки
- [Название ресурса](URL)