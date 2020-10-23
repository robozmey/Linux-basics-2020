## О чём

* Простейшие утилиты
  - ifconfig
  - hostname, netstat
  - ping, traceroute
  - host, dig, whois
  - nmap, tcpdump
  - iptables
  - wget, curl
  - ssh
* Сервисы GitHub
  - работа с репозиториями (хранение, версионирование, ветвление, форки и пулл-реквесты, issue)
  - организация проектов
  - документирование (вики-страницы)
  - GitHub Pages
  - GitHub Actions

## Материалы к занятию

* [Настройка сети в ручную (Ubuntu)](https://help.ubuntu.ru/wiki/%D0%BD%D0%B0%D1%81%D1%82%D1%80%D0%BE%D0%B9%D0%BA%D0%B0_%D1%81%D0%B5%D1%82%D0%B8_%D0%B2%D1%80%D1%83%D1%87%D0%BD%D1%83%D1%8E)
* [Утилита tcpdump](https://ru.wikipedia.org/wiki/Tcpdump)
* [Curl vs Wget](https://daniel.haxx.se/docs/curl-vs-wget.html)
* [GitHub Actions](https://github.com/features/actions)
* [Getting started with GitHub Actions](https://help.github.com/en/actions/getting-started-with-github-actions)

## План работы

1. Создать отчёт, в котором
  - Попинать утилиты
  - Определить MAC-адрес
  - Отключите и включите обратно сетевой интерфейс.
  - Проверьте доступность узлов 8.8.8.8, http://www.debian.org
  - Отобразите трассу до узла http://www.ubuntu.com
  - Отобразите статистику работы сетевых интерфейсов
2. Создайте себе сайт в рамках GitHub Pages (с произвольным содержимым)
3. Выполните инструкции [туториала по созданию простейшего действия GitHub](https://help.github.com/en/actions/building-actions/creating-a-docker-container-action) в собственном репозитории
4. Напишите bash-сценарий, который парсит настоящий README-файл, извлекает из него все ссылки и скачивает их в отдельный каталог
