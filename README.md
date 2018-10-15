# Выполнено ДЗ №3

 - [X] Основное ДЗ
 - [X] Задание со *

## В процессе сделано:
 - Настроены 2 виртуальные машины. Одна из которых имеет доступ по ssh из внешней сети, а вторая нет.
 - Развернут Pritunl для удаленного доступа к ресурсам нашей сети в GCP
 - Настроен firewall в GCP для подключения к VPN-серверу
 - Добавлен сертификат от Let's Encrypt для https

## Как проверить работоспособность:
 - Перейти по ссылке `https://35.205.239.224.sslip.io/`
 
## Подключение к someinternalhost через bastion.
`ssh -t -i gce-key -A dimon@35.205.239.224 'ssh 10.166.0.2'`

## Подключение к someinternalhost через bastion при помощи alias
`
Host someinternalhost\n
    HostName 35.205.239.224\n
    User dimon
    IdentityFile ~/.ssh/gce-key
    ForwardAgent yes
    RequestTTY force
    RemoteCommand ssh 10.166.0.2
`
## PR checklist
 - [X] Выставил label с номером домашнего задания
 - [X] Выставил label с темой домашнего задания

## Данные для подключения
`
bastion_IP = 35.205.239.224
someinternalhost_IP = 10.166.0.2
`
