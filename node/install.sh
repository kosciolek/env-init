curl https://raw.githubusercontent.com/kosciolek/env-init/master/node/.eslintrc.js -o .eslintrc.js
curl https://raw.githubusercontent.com/kosciolek/env-init/master/.prettierignore -o .prettierignore
curl https://raw.githubusercontent.com/kosciolek/env-init/master/.eslintignore -o .eslintignore

yarn add -D eslint-config-prettier prettier husky eslint-config-airbnb-typescript eslint eslint-plugin-import @typescript-eslint/eslint-plugin jest ts-jest @types/jest eslint-plugin-jest

yarn tsc --init
echo '{ "extends": ".", "exclude": [] }' > tsconfig.eslint.json

yarn ts-jest config:init

npm set-script prepare "husky install"
npm set-script lint "eslint ."
npm set-script lint-fix "prettier . --write && eslint . --fix"
npm run prepare

npx husky add .husky/pre-commit "yarn lint-fix"
git add .husky/pre-commit