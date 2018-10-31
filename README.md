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
