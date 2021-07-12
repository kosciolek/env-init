curl https://raw.githubusercontent.com/kosciolek/env-init/master/node/.eslintrc.js > .eslintrc.js
curl https://raw.githubusercontent.com/kosciolek/env-init/master/.prettierignore > .prettierignore
curl https://raw.githubusercontent.com/kosciolek/env-init/master/.eslintignore > .prettierignore

yarn add -D eslint-config-prettier prettier husky eslint-config-airbnb-typescript eslint eslint-plugin-import @typescript-eslint/eslint-plugin

npm set-script prepare "husky install"
npm set-script lint "yarn prettier . --write && yarn eslint . --fix"
npm run prepare

npx husky add .husky/pre-commit "yarn lint"
git add .husky/pre-commit