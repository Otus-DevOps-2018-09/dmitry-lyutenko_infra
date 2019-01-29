# Выполнено ДЗ №11

 - [X] Основное ДЗ
 - [X] Первое задание со звездочкой (nginx)
 
## В процессе сделано:

 - Развернут Vagrant, описана инфраструктура в Vagrant-файле;
 - Произведен рефакторинг ролей (группировка по task'ам) и параметризация путем применения шаблонов;
 - Для провижинга ВМ, создаваемых Vagrant'ом, применен ansible;
 - Установили molecule и testinfra, ознакомились с ними, произвели тестирование роли db при помощи molecule;
 - Самостоятельно написали тест для роли db при помощи ```testinfra.modules.socket```, проверящий, что mongodb слушает нужный порт;
 
## Комментарии к дополнительному заданию **

На данном этапе статус билда приходит в слак и письмом на почту. Для того, чтобы хранить статус билда в README при помощи webhook'а можно его передать своему серверу. То есть после того, как тревис построит билд и об этом узнает гитхаб, последний может вызвать вебхук (http-запрос к какому-то серверу). В содержимом вебхука прийдет информация и статусе билда, которую мы и закоммитим. Но такая схема требует отдельного сервера, который хранит код и может пушить в репозиторий. Выглядит несколько избыточной и небезопасной, за исключением случая, когда сервер с исходным кодом так же внутри нашего периметра. Схема с почтой и уведомлениями в слак выглядит вполне достаточной. Оказывается есть и простая схема при использовании Travis CI.

## Build status:

[![Build Status](https://travis-ci.com/Otus-DevOps-2018-09/dmitry-lyutenko_infra.svg?branch=ansible-4)](https://travis-ci.com/Otus-DevOps-2018-09/dmitry-lyutenko_infra)


## PR checklist
 - [X] Выставил label с номером домашнего задания
 - [X] Выставил label с темой домашнего задания

# Выполнено ДЗ №10

 - [X] Основное ДЗ
 - [X] Задание со звездочкой
 - [X] Задание с двумя звездочками

## В процессе сделано:

 - Разибиои наши плейбуки на роли, что повысило возможность по переиспользованию кода;
 - Оформиили роли согласно стандартной схемы (разбиение на папки, созданные при помощи ansible-galaxy init);
 - Плейбук для развертывани приложения переделан на использование ролей;
 - Научилсь проводить деплой приложения согласно окружения и назначали stage дефолтовым окружением;
 - Ознакомились с переменными группы (group vars);
 - Добавили к нашему приложению nginx в режиме обратного прокси, роль для установки взята в Ansible Galaxy;
 - Ознакомились с использованием Ansible Vault, который позволяет безопасно храить чувствительные данные;
 
## Комментарии к дополнительному заданию **

На данном этапе статус билда приходит в слак и письмом на почту. Для того, чтобы хранить статус билда в README при помощи webhook'а можно его передать своему серверу. То есть после того, как тревис построит билд и об этом узнает гитхаб, последний может вызвать вебхук (http-запрос к какому-то серверу). В содержимом вебхука прийдет информация и статусе билда, которую мы и закоммитим. Но такая схема требует отдельного сервера, который хранит код и может пушить в репозиторий. Выглядит несколько избыточной и небезопасной, за исключением случая, когда сервер с исходным кодом так же внутри нашего периметра. Схема с почтой и уведомлениями в слак выглядит вполне достаточной. Оказывается есть и простая схема при использовании Travis CI.

## Build status:

[![Build Status](https://travis-ci.com/Otus-DevOps-2018-09/dmitry-lyutenko_infra.svg?branch=ansible-3)](https://travis-ci.com/Otus-DevOps-2018-09/dmitry-lyutenko_infra)


## PR checklist
 - [X] Выставил label с номером домашнего задания
 - [X] Выставил label с темой домашнего задания


# Выполнено ДЗ №9

 - [X] Основное ДЗ
 - [X] Задания со звездочкой

## В процессе сделано:

 - Написали нескольео playbook'ов, объединили их (реализуются разные сценарии).
 - Ознакомились с хендлерами, шаблонами.
 - Настроен плейбук для развертывани приложения с учетом данных, которые получает скрипт для dynamic invenory (сам крипт взят из предыдущего ДЗ);
 - Провижинг при подготовке образов Packer'ом изменен с shell/script на ansible.

## PR checklist
 - [X] Выставил label с номером домашнего задания
 - [X] Выставил label с темой домашнего задания


# Выполнено ДЗ №8

 - [X] Основное ДЗ
 - [X] Задания со звездочкой
 - [X] Задания со звездочкой

## В процессе сделано:

 - Получено базовое представление об Ansible, inventory, Dynamic Inventory;
 - Основные навыки работы с командами, хостами и группами хостов;
 - обробованы разные форматы Inventory (plain text, YAML, JSON)
 - Написан скрипт для динамического инвентори в GCP

### Ответы на вопросы
 - после удаления катлога ~/appuser повторное применение плейбука завершилось с результатом "changed". Что оздначает, что на целевой хост были применены изменения.
 - пример инвентори в JSON-формате есть в репозитории. Очень похож на yaml, но чуть менее удобен для чтения человеком, как мне показалось.
 - проверить работу динамического inventory можно командой ```ansible all -m ping -i dinv.sh```

## PR checklist
 - [X] Выставил label с номером домашнего задания
 - [X] Выставил label с темой домашнего задания




# Выполнено ДЗ №7

 - [X] Основное ДЗ
 - [X] Задания со звездочкой
 - [X] Задания со звездочкой

## В процессе сделано:

 - Освоен импорт конфигурации из GPC;
 - Создание правил firewall при помощи terraform на базе дефолтовых;
 - Ознакомились с явными и неявными зависимостями и их вляением на порядок создания ресурсов;
 - Разбили наш проект на модули, что позволило повысить повторяемость конфигурации;
 - Ознакомились с реестром модулей;
 - Настроили хранение состояния в бакете, что позволяет перенести состояние на новое место или иметь единое состояние для нескольких разработчиков, блокирует одновременные изменения;
 - Сделан провижн 2 инстансов (приложения и базы данных). При этом информация о подключении к БД (IP-адрес) была получена в процессе развертывания.

## PR checklist
 - [X] Выставил label с номером домашнего задания
 - [X] Выставил label с темой домашнего задания

# Выполнено ДЗ №6

 - [X] Основное ДЗ
 - [X] Задания со звездочкой
 - [X] Задания с 2 звездочками

## В процессе сделано:

 - Установлен Terraform
 - При помощи Terraform развернут инстанс с приложением из образа, приготовленного в предыдущем ДЗ Packer'ом и созданы сопуствующие ресурсы (правила для firewall, ключи для пользователя)
 - Созданы обязательные переменные для TF-кофингов и со значениями по умолчанию
 - Протестировано форматирование кода при помощи fmt (очень полезная вещь для поддержания единого стиля)
 - Развернут отказоустойчивый кластер с несколькиим (задается переменной) инстансами.

### Ответы на вопросы
 - при попытке создания нескольких пользовательский ключей, в том числе и для appuser_web (ключи одинаковые), происходит изменение имени пользователя, если через web. Или ошибка, гласящая о том, что ключ уже есть, если через terraform.
 - ручное создание инстанса приводит к большому количеству дублирующегося кода, что может привести к ошибкам в конфигурации. Гораздо логичнее использовать циклы, так как это позволяет существенно повысить повторяемость и снизить возможность ошибки при повторном использовании.

## PR checklist
 - [X] Выставил label с номером домашнего задания
 - [X] Выставил label с темой домашнего задания


# Выполнено ДЗ №5

 - [X] Основное ДЗ
 - [X] Задания со звездочкой

## В процессе сделано:

 - Установлен Packer
 - Созданы кастомные образы для GCP
 - Протестирована возможность кастомизации образа через обязательные переменные и переменные со значением по-умолчанию
 - Создан (запечен) образ для развертывания приложения (bake)
 - Скрипт для запуска запеченного образа (reddit-full) из консоли через gcloud

## PR checklist
 - [X] Выставил label с номером домашнего задания
 - [X] Выставил label с темой домашнего задания



Error: Error applying plan:

2 error(s) occurred:

* google_compute_project_metadata.default[0]: 1 error(s) occurred:

* google_compute_project_metadata.default.0: Error, key 'ssh-keys' already exists in project '**********'
* google_compute_project_metadata.default[1]: 1 error(s) occurred:

* google_compute_project_metadata.default.1: Error, key 'ssh-keys' already exists in project '**********'

Terraform does not automatically rollback in the face of errors.
Instead, your Terraform state file has been partially updated with
any resources that successfully completed. Please address the error
above and apply again to incrementally change your infrastructure.
