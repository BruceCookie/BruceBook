[toc]

<!-- toc -->

# 1 Operating system
utuntu + github + hexo
# 2 Installing essential Tools
## 2.1 updata and upgrade
```bash
sudo apt-get update
sudo apt-get upgrade
```
## 2.2 Installing node.js & npm

```bash
wget [package_link]
```
[package link]: get this link from nodejs official website,such as"node-v16.14.0-linux-x64.tar.xz". 

We have to uninstall outdated nodejs and npm.
```bash
sudo npm uninstall npm -g
sudo apt-get remove node js
cd /usr/local/bin
sodu rm node
sodu rm npm
sodu rm npx

```
then install package we have downloaded.

```bash
cd [nodejs package directory]
tar -xvf [nodejs package]
mv [nodejs directory] /srv/nodejs  
echo "export PATH=$PATH:/srv/nodejs/bin" >> /etc/profile
source /etc/profile
node -v     #if installation is successful or not.
```
installing git: 
```bash
sudo apt-get install git-all
```
installing hexo:
```bash
npm install hexo-cil -g  #if installation is failed,we can us `npm install hexo-server --save` instead.
```
check if the installation is successful.
```bash
node -v
npm -v
git --version
hexo -v
```
# 3 bind a github repository to local directory
NOTE: Before we open the website of github,we need install the addon that supports JavaScript into the web browser.
## 3.1 Create a repository
```bash
#we name the repository by "[github username].github.io". for instance, "BruceCookie.github.io" is my blog repository and we must not change a single character or error will raise later.
```
## 3.2 using SSH keys to bind local directory
```bash
ssh-keygen -t rsa -C "[primary E-mail]"   #we can get the [primary E-mail] for github settings.
```
after upper command,we get two files,"id_rsa.pub"is the file we need in following command
```bash
 cd [directory of new files]    # [directory of new files]:for instance, "/root/.ssh"
 ls   #show the public keys files named "*.pub" to copy for following command
 gedit [public key]  #[public key]:for instance, "id_rsa.pub"
```
```bash
#copy the public keys (whole contents in the opened file).

#on the upper right of github webpage,click the user icon --> "settings" --> "SSH and GPG keys" -->"New SSH keys" --> paste the public keys.
ssh -T git@github.com  #check the binding
```
# 4 Generating local blog files
```bash
cd [a empty directory]  #Choose a empty directory for generating files.
hexo init  
hexo s  #running a local default blog. 
```
# 5 Uploadding to website
```bash
gedit _config.yml #edit the configure file
```
add the following contents to the last line of the file:
```bash
tpye: git
repository: [repository website]
branch: main
```
[repository website]: copy from github repository page --> "code" button. for instance, https://github.com/BruceCookie/BruceCookie.github.io.git
```bash
npm install hexo-deployer-git --save  #install tools to connect hexo and git

hexo g  #generating local static files
```
if this is the first time we upload hexo files to internet,we need run following command.
```bash
git config --global user.name "[github username]"
git config --global user.email "[primary E-mail]"
```
upload data
``` bash
hexo d 
```

Username for 'https://github.com': `[github username]`    
Password for 'https://BruceCookie@github.com': `[Personal access tokens]`    

Get [Personal access tokens] : github "settings" -->"Developer settings"--> "Personal access tokens" --> "Generate new tokens"-->type in a whatever "Note", check all the check boxes -->"Geverate taken"
