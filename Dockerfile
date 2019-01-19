FROM fpco/stack-build:lts-12.26

RUN apt-get install -qy nodejs npm && \
    npm install netlify-cli -g
