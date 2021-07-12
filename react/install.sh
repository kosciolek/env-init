curl https://raw.githubusercontent.com/kosciolek/env-init/master/react/.eslintrc.js -o .eslintrc.js
curl https://raw.githubusercontent.com/kosciolek/env-init/master/.prettierignore -o .prettierignore
curl https://raw.githubusercontent.com/kosciolek/env-init/master/.eslintignore -o .eslintignore

yarn add -D eslint-config-prettier prettier husky eslint-config-airbnb-typescript eslint eslint-plugin-import @typescript-eslint/eslint-plugin eslint-plugin-jsx-a11y eslint-plugin-react eslint-plugin-react-hooks

npm set-script prepare "husky install"
npm set-script lint "eslint ."
npm set-script lint-fix "prettier . --write && eslint . --fix"
npm run prepare

npx husky add .husky/pre-commit "yarn lint-fix"
git add .husky/pre-commit