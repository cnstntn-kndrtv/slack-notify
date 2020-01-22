# slack-notify
send slack notification from command line  

1. create Slack app and **incoming webhook** https://slack.com/intl/en-ru/help/articles/115005265063-Incoming-WebHooks-for-Slack?eu_nc=1  

2. edit `./slack-notify.sh`  
   change url and channel for Slack notifications:  
    url="<YOUR_SLACK_INCOMING_WEBHOOK>"  
    channel="#general"  

2. to `~/.bashrc` (or `~/.zshrc`) add this line:  
```
alias slack-notify='sh <PATH>/slack-notify.sh'
```
3. try to send notification:  
```sh
slack notify "header" "🤔 long text"
slack-notify "long job is done" "$(date)"

```
   