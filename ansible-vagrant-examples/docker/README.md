# Ansible Vagrant profile for Docker

## Background

[Docker](https://www.docker.com/) is used to build and manage linux containers. [Ansible](http://www.ansible.com/) is useful in managing the Docker lifecycle.

This Vagrant profile uses Ansible to configure a local VM with Docker, then it uses Ansible to build and run three containers for a simple Flask + MySQL web app stack, Docker-style:

  - `www`: Flask app on an Ubuntu container.
  - `db`: MySQL database on an Ubuntu container.
  - `data`: MySQL data volume on a Busybox container (for persistence).

## Getting Started

This README file is inside a folder that contains a `Vagrantfile` (hereafter this folder shall be called the [vagrant_root]), which tells Vagrant how to set up your virtual machine in VirtualBox.

To use the vagrant file, you will need to have done the following:

  1. Download and Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
  2. Download and Install [Vagrant](https://www.vagrantup.com/downloads.html)
  3. Install [Ansible](http://docs.ansible.com/intro_installation.html)
  4. Open a shell prompt (Terminal app on a Mac) and cd into the folder containing the `Vagrantfile`
  5. Run the following command to install the necessary Ansible roles for this profile: `$ ansible-galaxy install -r requirements.yml`

Once all of that is done, you can simply type in `vagrant up`, and Vagrant will create a new VM, install the base box, and configure it.

Once the new VM is up and running (after `vagrant up` is complete and you're back at the command prompt), you can log into it via SSH if you'd like by typing in `vagrant ssh`. Otherwise, the next steps are below.

### Setting up your hosts file

You need to modify your host machine's hosts file (Mac/Linux: `/etc/hosts`; Windows: `%systemroot%\system32\drivers\etc\hosts`), adding the line below:

    192.168.33.39  docker.dev

After that is configured, you could visit http://docker.dev/ in a browser, and you'll see the test page, confirming the Flask container can communicate with the MySQL container.

If you'd like additional assistance editing your hosts file, please read [How do I modify my hosts file?](http://www.rackspace.com/knowledge_center/article/how-do-i-modify-my-hosts-file) from Rackspace.

## Author Information

Created in 2015 by [Jeff Geerling](http://jeffgeerling.com/), author of [Ansible for DevOps](http://ansiblefordevops.com/).