FROM haskell:8.4.4

RUN stack --resolver lts-12.26 install hakyll

RUN apt-get update -q              && \
    apt-get install -qy nodejs npm && \
    npm install netlify-cli -g

