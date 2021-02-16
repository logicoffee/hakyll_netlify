FROM fpco/stack-build:lts-16.31

RUN npm cache clean --force                  && \
    npm install n -g                         && \
    n 10.15.0                                && \
    apt-get purge -y nodejs npm              && \
    ln -sf /usr/local/bin/node /usr/bin/node && \
    ln -sf /usr/local/bin/npm  /usr/bin/npm  && \
    npm install netlify-cli --unsafe-perm -g
