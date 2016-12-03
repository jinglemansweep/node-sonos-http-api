#!/bin/sh

cat >settings.json <<EOF
{
  "port": ${HTTP_PORT},
  "securePort": ${HTTPS_PORT},
  "announceVolume": ${ANNOUNCE_VOLUME},
  "voicerss": "${VOICERSS_API_KEY}"
}
EOF

cat settings.json

npm start
