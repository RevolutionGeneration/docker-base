# docker-base
Base docker image

### how to extend ###

Run all processes through supervisord by creating a config in /etc/supervisor/conf.d (see 
http://supervisord.org/subprocess.html for options), then running supervisor as your entrypoint with `supervisord -n -c 
/etc/supervisor/supervisord.conf`
