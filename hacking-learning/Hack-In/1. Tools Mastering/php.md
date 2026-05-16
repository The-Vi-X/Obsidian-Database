`php -r 'код' `- выполнение пхп кода прямо в консоли
``<?php system('command'); ?>`` - код для вызова команды
`strstr` - поиск в строке данных, которые есть в его ключе
`numstring` - если перед строкой вписать число - строка становится числовой, что позволяет сравнить её с числом

#php

| Тег                   | Синтаксис                                         | Описание                                                                              | Уязвимости                                                       |
| --------------------- | ------------------------------------------------- | ------------------------------------------------------------------------------------- | ---------------------------------------------------------------- |
| #include              | include('file')                                   | выводит на экран данные из файла в виде пхп кода, если не пхп код - просто как строку | Возможность просматривать файлы к которым не должно быть доступа |
| #fopen                | fopen("file", mode)                               | открывает файл с заданным модом, по типу только запись, только чтение                 |                                                                  |
| #fwrite               | fwrite("opened file", "data", length)             | запись в открытый файл данных, если есть длина - прекращает запись по её достижению   |                                                                  |
| #fclose               | fclose("opened file")                             | закрывает открытый файл от потока                                                     |                                                                  |
| #file_exist           | file_exist("file")                                | Проверка, есть ли файл, возвращает булевое число                                      |                                                                  |
| #echo                 | echo("data")                                      | выводит данные на экран                                                               |                                                                  |
| #imagecreatetruecolor | imagecreatetruecolor("width", "height")           | выводит на экран изображения чёрного цвета                                            |                                                                  |
| #imagepng             | imagepng("img", "toSaveFile")                     | выводит или сохраняет изображение                                                     |                                                                  |
| #imagedestroy         | imagedestroy("img")                               | освобождает всю память об изображении                                                 |                                                                  |
| #imagecolorallocate   | imagecolorallocate("img", r,g,b)                  | возвращение цвета изображению                                                         |                                                                  |
| #imageline            | imageline("img",x1,y1,x2,y2,color)                | рисование изображения в img                                                           |                                                                  |
| #array_key_exists     | array_key_exists("key","array")                   | проверка ключа в массиве                                                              |                                                                  |
| #unserialize          | unserialize("string", "array option" = []): mixed | распаковывает строку в массив                                                         | Позволяет отправлять в класс данные, которые он может выполнить  |
| #serialize            | serialize("val"): string                          | преобразует данные в строку с типом, числом данных и самой строкой                    |                                                                  |
| #setcookie            | setcookie("name", "value")                        | создаёт куки с именем и данными                                                       |                                                                  |
| #htmlentities         | htmlentities("string")                            | Конвертирует все валидные символы в HTML                                              |                                                                  |
| #print_r              | print_r("value", bool)                            | Возвращает читаемую строку если бул тру                                               |                                                                  |
| #trim                 | trim("string")                                    | Убирает пробелы в начале  и конце слов                                                |                                                                  |
| #substr               | substr("string", start, end)                      | Показывает количество символов строки от начала до данного конца                      |                                                                  |
#php_sql

| Тег                        | Синтаксис                                       | Описание                                                  | Уязвимости |
| -------------------------- | ----------------------------------------------- | --------------------------------------------------------- | ---------- |
| #mysqli_connect            | mysqli_connect("hostname", "login", "password") | Подключение к MySQL серверу                               |            |
| #mysqli_select_db          | mysqli_select_db("connect link", "base")        | Выбор рабочей базы данных                                 |            |
| #mysqli_close              | mysqli_close("link")                            | Закрывает подключение к выбраному MySQL серверу           |            |
| #mysqli_real_escape_string | mysqli_real_escape_string("mysql","string" )    | Прячем опасные символы от ввода                           |            |
| #mysqli_query              | mysqli_query("mysql", "query")                  | Посылает запросы в базу данных и возвращает ответы        |            |
| #mysqli_num_rows           | mysqli_num_rows("mysql res")                    | Возвращает количество строк результата запроса            |            |
| #mysqli_fetch_assoc        | mysqli_fetch_assoc("mysql res")                 | Проходится по строкам результата запроса                  |            |
| #mysqli_affected_rows      | mysqli_affected_rows("mysql res")               | Возвращает количество строк с которым было взаимодействие |            |
