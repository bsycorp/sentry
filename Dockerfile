# sentry:9.0
FROM sentry@sha256:c48c60365aeaf175a61f041cda0d241307707d08e80b3dc896c00f169cd07038

WORKDIR /usr/src/sentry

# Sentry 9.0 is based on Jessie (Debian 8) which no longer receives updates as of 2018-05-17
# We will need to rebuild the whole image at some point.
RUN apt-get update && \
    apt-get -y upgrade

# master @ Apr 2019
RUN pip install https://github.com/getsentry/sentry-auth-saml2/archive/efb12e050a829eb2287bec0df8aac9ece4b0545d.zip

