#!/bin/bash

BASE_URL=""
REFERER=""

mkdir -p partes

for i in $(seq -w 1 100); do
    FILE="video${i}.ts"
    echo "🔽 Baixando $FILE ..."

    curl -s -L -o "partes/$FILE" \
      "$BASE_URL/$FILE" \
      -H "authority: " \
      -H "accept: */*" \
      -H "accept-language: pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7" \
      -H "origin: $REFERER" \
      -H "referer: $REFERER" \
      -H 'sec-ch-ua: "Not(A:Brand";v="8", "Chromium";v="138", "Google Chrome";v="138"' \
      -H "sec-ch-ua-mobile: ?0" \
      -H 'sec-ch-ua-platform: "Windows"' \
      -H "sec-fetch-dest: empty" \
      -H "sec-fetch-mode: cors" \
      -H "sec-fetch-site: cross-site" \
      -H "user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36"

    # Verifica se baixou corretamente
    if [ $? -eq 0 ]; then
        echo "✅ $FILE salvo."
    else
        echo "❌ Falha no $FILE"
    fi
done
