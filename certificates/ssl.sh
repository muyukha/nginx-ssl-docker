# non-interactive and 10 years expiration
openssl genrsa -out privatekey.pem 2048
openssl req -key privatekey.pem -new -out nextresearch.csr
openssl x509 -signkey privatekey.pem -in nextresearch.csr -req -days 365 -out certificate.crt
#openssl req -x509 -newkey rsa:4096 -keyout privatekey.pem -out certificate.pem -sha256 -days 3650 -nodes -subj "/C=XX/ST=StateName/L=CityName/O=CompanyName/OU=CompanySectionName/CN=CommonNameOrHostname"