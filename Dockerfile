#
# run nginx for padrino
#
FROM       np-start-base
MAINTAINER lyx <yixiao.li@quaie.com>

ADD docker_use/blog.conf /etc/nginx/conf.d/
RUN mkdir -p ${NGHOME}/app/tmp/pids
RUN mkdir -p ${NGHOME}/app/log

WORKDIR ${NGHOME}
