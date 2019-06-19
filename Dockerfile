FROM petrosagg/balena-wpe:raspberrypi3-094d55a

COPY udev-rules/ /etc/udev/rules.d/

COPY wpe-init /wpe-init
RUN chmod +x /wpe-init

ENV WPE_URL "https://getbyrd.com"

CMD [ "/wpe-init" ]

