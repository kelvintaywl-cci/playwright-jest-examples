set -ex

if [ "${CIRCLE_NODE_INDEX}" == 0 ]; then
  TESTFILE="www/tests/example.test.js"
else
  TESTFILE="www/tests/example2.test.js"
fi

npx playwright test --workers=1 --config="./www/playwright.config.js" $TESTFILE
