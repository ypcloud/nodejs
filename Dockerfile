FROM library/node:4
MAINTAINER YPCloud <cloud@yp.ca>

ENV GPG_KEYS \
	DFFA3DCF326E302C4787673A01C4E7FAAAB2461C \
	42F3E95A2C4F08279C4960ADD68FA50FEA312927
RUN set -ex \
	&& for key in $GPG_KEYS; do \
		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; \
	done

ENV MONGO_MAJOR 3.2
ENV MONGO_VERSION 3.2.9

RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list

RUN set -x \
	&& apt-get update \
	&& apt-get install -y \
		mongodb-org=$MONGO_VERSION \
		mongodb-org-shell=$MONGO_VERSION \
		mongodb-org-tools=$MONGO_VERSION \
	&& rm -rf /var/lib/apt/lists/* \
	&& rm -rf /var/lib/mongodb


# Install Bower & Grunt
RUN npm install -g apidoc bower grunt-cli mocha yarn && \
    echo '{ "allow_root": true }' > /root/.bowerrc

RUN yarn add merino && yarn remove merino

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["bash"]
