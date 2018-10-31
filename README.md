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
