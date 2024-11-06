FROM ruby:3.3-slim-bookworm

RUN gem install bundler -v '2.5.17' --source 'http://rubygems.org'
RUN gem install bundler -v '2.5.16' --source 'http://rubygems.org'

ENTRYPOINT type git || echo "Git not installed" && \ 
           echo "Bundling with 2.5.17" && \
           cd /bundle-no-git/bundled-with-2.5.17 && \
           bundle _2.5.17_ install --local || echo "bundle failed" && \
           echo "\n\n\n" && \
           echo "Bundling with 2.5.16" && \
           cd /bundle-no-git/bundled-with-2.5.16 && \
           bundle _2.5.16_ install --local || echo "bundle failed"
