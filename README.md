# clust_moni

```
# vagrant up
# vagrant global-status
```
id       name     provider state     directory                           
-------------------------------------------------------------------------         
aa9898c  docker-2 libvirt preparing /home/madson/Vagrant/swarm          
70fd460  docker-3 libvirt preparing /home/madson/Vagrant/swarm          
14edd68  docker-1 libvirt running   /home/madson/Vagrant/swarm 

```
# vagrant ssh docker-1
$ sudo su
# passwd vagrant
# docker swarm init
```
Swarm initialized: current node (kjsguw2twkf5tp4m8iwypdnpn) is now a manager.

Para adicionar os demais trabalhadores a esse enxame, execute o seguinte comando como root:

    sudo docker swarm join --token SWMTKN-1-5jn4e5o0to9q9sx2jqnwgzwlbe8fzynkn9dj1zhnpwezpycvl8-bt7mabdf93vbv49nuhbqlcfmd 192.168.121.248:2377

```
# exit
$ exit

# vagrant ssh docker-2
$ sudo docker swarm join --token SWMTKN-1-5jn4e5o0to9q9sx2jqnwgzwlbe8fzynkn9dj1zhnpwezpycvl8-bt7mabdf93vbv49nuhbqlcfmd 192.168.121.248:2377
$ exit

# vagrant ssh docker-3
$ sudo docker swarm join --token SWMTKN-1-5jn4e5o0to9q9sx2jqnwgzwlbe8fzynkn9dj1zhnpwezpycvl8-bt7mabdf93vbv49nuhbqlcfmd 192.168.121.248:2377
$ exit

# scp  vagrant@192.168.121.248:~
# scp prom* vagrant@192.168.121.248:~
# vagrant ssh docker-1
$ sudo su
# docker network create -d overlay stacks_observability
# docker stack deploy -c prometheusA.yml prometheusA
# docker stack deploy -c prometheusB.yml prometheusB
# docker stack deploy -c promscale.yml promscale
```
## Cluster visualizer

img

