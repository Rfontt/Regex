# A partir da pasta raiz

find . -name *.test.js
find . -name *.test.js -not -path '*node_modules**'
find . -name *.js -not -path '*node_modules**'

npm i -g ipt

find . -name *.js -not -path '*node_modules**' | ipt

# Volta para a pasta do module1

# 1s => primeira linha
# ^ => primeira coluna
# substituir pelo $CONTENT
# Quebrou a linha para adicionar um \n implícito

CONTENT="'use strict';"
find . -name *.js -not -path '*node_modules**' \
| xargs -I '{file}' sed -i "" -e '1s/^/\'$CONTENT'\/g' {file}