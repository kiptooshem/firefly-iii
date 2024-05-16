FROM fireflyiii/base:apache-8.3
ENV VERSION=4.3

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

#
# This assumes that download.zip is in the current directory
# you may have to download it manually first.
#

COPY . /var/www/html

RUN chmod -R 775 /var/www/html/storage && \
	/usr/local/bin/finalize-image.sh

COPY alerts.json /var/www/html/resources/alerts.json

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
