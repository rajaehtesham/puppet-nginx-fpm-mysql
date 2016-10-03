### PHP Development WebStack automated using puppet and Vagrant

- Guest OS: Ubuntu 14.04 
- Web Server : Nginx 
- PHP : PHP-FPM 
- Database: MySQL
- Debugger : XDebug

Tested on Following Hosts
- Windows 10 Host, Vagrant 1.7.4, Virtualbox 5.0.0 
- Ubuntu 14.04, Virtual Box 5.1.4, Vagrant 1.8.5

### Requirements (Following must be installed on Host OS)
- Virtual Box
- Vagrant
- Git Client

### How to use 
- git clone this repo
- cd to repo directory (using terminal on Linux, Git Bash on Windows or e.g With any CLI that supports git)
- vagrant up (Run command using terminal on Linux, Git Bash on Windows or e.g With any CLI that supports git)
- add "devphp.local 192.168.56.111" to your hosts file
- In browser go to "http://devphp.local/info.php"
- Voila!

