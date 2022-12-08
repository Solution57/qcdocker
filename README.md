**Description**

Docker wrapper around the QCom dump analysis tools.


**Checkout**


Clone this projecct and run

```
$ git submodule init
$ git submodule update
```

**Build**

```
bash build.sh &
```

Usage:

1.) Copy the dump and vmlinux files into the home directory

2.) Inside the docker project

```
docker exec -ti qcdocker_qcdebug_ws_1 bash
su <your_linux_username>
```

```
cd /opt/home/tools/linux-ramdump-parser-v2
python ramparse.py -v ../../vmlinux -o temp/ -a ../../Port_COM3/ --force-hardware 8998  -d
```

See **ramparse.py --help** for more details
