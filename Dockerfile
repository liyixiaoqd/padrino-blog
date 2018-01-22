#
# run nginx for padrino
#
FROM       np-start-base
MAINTAINER lyx <yixiao.li@quaie.com>

ADD docker_use/blog.conf /etc/nginx/conf.d/

WORKDIR ${NGHOME}
RUN mkdir -p app/tmp/pids
RUN mkdir -p app/log

RUN ["/bin/bash","-c","source /etc/profile.d/rvm.sh ; bundle install"]
