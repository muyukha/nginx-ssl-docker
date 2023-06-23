
openssl genrsa -out privatekey.pem 2048
openssl req -key certificates/privatekey.pem -new -out certificates/nextresearch.csr
openssl x509 -signkey certificates/privatekey.pem -in certificates/nextresearch.csr -req -days 365 -out certificate.crt
# non-interactive and 10 years expiration
#openssl req -x509 -newkey rsa:4096 -keyout privatekey.pem -out certificate.pem -sha256 -days 3650 -nodes -subj "/C=XX/ST=StateName/L=CityName/O=CompanyName/OU=CompanySectionName/CN=CommonNameOrHostname"
