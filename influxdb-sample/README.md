# Influxdb + telegraf + chronograf sample

## Usage

```
# start vms
$ vagrant up
# install galaxy roles
$ ansible-garaxy install -r requirements.yml
# run ansible playbook
$ ansible-playbook site.yml -i hosts -u vagrant -k
SSH password: vagrant
```

InfluxDB's dashboard: http://192.168.50.64:8083
Chronograf url: http://192.168.50.64:10000
