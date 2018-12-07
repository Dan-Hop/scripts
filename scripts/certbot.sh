cb() {
	if [ -z $LETSENCRYPT_NOSUDO_DIR ]; then
	  LETSENCRYPT_NOSUDO_DIR=~/.certbot
	fi
	certbot \
	  --config-dir ${LETSENCRYPT_NOSUDO_DIR}/config \
	  --logs-dir ${LETSENCRYPT_NOSUDO_DIR}/logs \
	  --work-dir ${LETSENCRYPT_NOSUDO_DIR} \
	  $*
	exit $?

}