#
# run nginx for padrino
#
FROM       np-start-base
MAINTAINER lyx <yixiao.li@quaie.com>

ADD blog.conf /etc/nginx/conf.d/

WORKDIR ${NGHOME}
ADD app app
