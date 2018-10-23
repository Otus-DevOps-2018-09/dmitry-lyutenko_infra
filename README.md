# Выполнено ДЗ №4

 - [X] Основное ДЗ
 - [X] Дополнительные задания

## В процессе сделано:
 - На рабочей машине развернуты gcloud/gsutil
 - Настроена виртуальная машина при помощи gcloud. В ней в ручном режиме развернуто приложение.
 - Созданы скрипты для полуавтоматического развертывания (deploy.sh  install_mongodb.sh  install_ruby.sh)
 - Настроена виртуальная машина при помощи gcloud и startup-скрипта, который  автоматически разворачивает приложение.
 - При помощи gcloud создано рпзрешающее правило на firewall для прохождения трафика
 

## PR checklist
 - [X] Выставил label с номером домашнего задания
 - [X] Выставил label с темой домашнего задания

## Данные для подключения
`
bastion_IP = 35.205.239.224
someinternalhost_IP = 10.166.0.2

testapp_IP = 35.198.167.169
testapp_port = 9292
`
# Команда для создания виртуальной машины и развертывания приложения (скрипт в Google Storage)
`
gcloud compute instances create reddit-app \
       --boot-disk-size=10GB \
       --image-family=ubuntu-1604-lts \
       --image-project=ubuntu-os-cloud \
       --machine-type=g1-small \
       --tags=puma-server \
       --restart-on-failure \
       --metadata startup-script-url=gs://otus-homework/startup-script.sh
`
# Команда для создания правила firewall
`
gcloud compute firewall-rules create default-puma-server \
       --network default \
       --direction in \
       --source-ranges 0.0.0.0/0 \
       --rules tcp:9292 \
       --target-tags puma-server \
       --action allow
`
