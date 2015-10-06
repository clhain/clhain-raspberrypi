cd /tmp							&&
certhost='http://mxr.mozilla.org'                        &&
certdir='/mozilla/source/security/nss/lib/ckfw/builtins' &&
url="$certhost$certdir/certdata.txt?raw=1"               &&
wget --output-document certdata.txt $url &&
unset certhost certdir url               &&
make-ca.sh                               &&
remove-expired-certs.sh certs		&&
SSLDIR=/etc/ssl                                     &&
install -d ${SSLDIR}/certs                          &&
cp -v certs/*.pem ${SSLDIR}/certs                   &&
c_rehash                                            &&
install BLFS-ca-bundle*.crt ${SSLDIR}/ca-bundle.crt &&
unset SSLDIR					    &&
rm -r certs BLFS-ca-bundle*
