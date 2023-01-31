# git-openresty
Are you:
1. Someone who wants to use webhooks to update your website instead of a slow lazy cron job
2. Doesn't like dem cloud providers who have everything already integrated (ahem aws codedeploy, I'm looking at you)
3. Wants to self-deploy your site with some person's random docker container

Well, I have just the thing for you. This pretty simple app uses an openresty lua script to tie into your webhooks (e.g. github webhook) and then automatically clones the repo as soon as it gets a call.

You can get with `docker pull sachiyer/git-openresty`

# TODO
1. set env file for update URI
2. Clone when the container starts up
