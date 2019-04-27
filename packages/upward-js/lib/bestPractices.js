const connect = require('connect');
let shrinkRay;

try {
    shrinkRay = require('@magento/shrink-ray');
} catch (error) {
    shrinkRay = false;
}

// TODO: node-helmet and any other zero-conf best practices should go here.
function bestPractices() {
    const bestPracticeMiddlewares = connect();

    try {
        bestPracticeMiddlewares.use(shrinkRay());
    } catch (e) {
        console.warn(
            `Cannot add compression middleware: dependency \`@magento/shrink-ray\` is not
installed or not compatible with this environment. Assets will be served uncompressed.

If possible, install additional tools to build NodeJS native dependencies:
https://github.com/nodejs/node-gyp#installation`
        );
    }

    return bestPracticeMiddlewares;
}

module.exports = bestPractices;
