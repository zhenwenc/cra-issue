#!/bin/bash

# Modify a file before starting webpack dev server
sed -i '' 's/webpack/webpack!/g' ./src/index.js

# sleep 10

# Start webpack dev server
npx webpack --config webpack.config.js --watch

# If the issue can be reproduced in your env, you should see multiple messages are
# printed by `config/LogPlugin` which is listening to the `invalid` compiler events:
#
# "Recompile /.../cra-issue/src/index.js 1515645333497"
# "Recompile /.../cra-issue/src/index.js 1515645333497"
# ...
#
# This issue only happens once. If we modify the file now, only one recompile will
# be triggered.
