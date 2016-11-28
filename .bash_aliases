alias al="gedit /home/denis/.bash_aliases" #edit aliases
alias ns="./net_script.sh"

alias s="cd /var/www/source";

#git aliases
alias st="git status "; 
alias ms="git checkout master"
alias br="git branch"
alias pl="git pull"
alias di="git diff --cached"
alias mm="git merge master"
alias adc="git add code/application/*"; 
alias adw="git add web/*"; 
alias dlb="git branch --merged | grep MCMOBILE | xargs git branch -D" #delete local branches

alias a="tail /var/log/apache2/error.log" #displays apache error log
alias ra="sudo /etc/init.d/apache2 restart" #restart apache
alias eh="sudo gedit /etc/hosts"

#phpmyadmin
alias ppa_edit="sudo gedit /etc/phpmyadmin/config.inc.php" #edit phpmyadmin config
alias php_ini="sudo gedit /etc/php5/apache2/php.ini"

#functions
function ch {
  git checkout $1;
}
function ad {
  git add $1;
}
function bd {
  git branch -D $1;
}
function db {
  DATE=`date +%Y-%m-%d`;
  tail /var/www/source/logs/db_errors-"$DATE".php;
}

function rs { #checkouts specified file to HEAD
  git checkout -- $1;
}

function nbr {
  git checkout -b $1;
}
