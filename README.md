# dmitry-lyutenko_infra
dmitry-lyutenko Infra repository

# Подключение к someinternalhost через bastion.
ssh -t -i gce-key -A dimon@35.205.239.224 'ssh 10.166.0.2'

# Подключение к someinternalhost через bastion при помощи alias
Host someinternalhost
    HostName 35.205.239.224
    User dimon
    IdentityFile ~/.ssh/gce-key
    ForwardAgent yes
    RequestTTY force
    RemoteCommand ssh 10.166.0.2


# Данные для подключения

bastion_IP = 35.205.239.224
someinternalhost_IP = 10.166.0.2
