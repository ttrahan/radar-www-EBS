FROM aye0aye/demobase:master.5

# Bundle app source
RUN mkdir -p /root/radar-www
ADD . /root/radar-www/

# Install app dependencies
RUN cd /root/radar-www; npm install

ENTRYPOINT ["/root/radar-www/boot.sh"]
