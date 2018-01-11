'use strict';

class LogPlugin {
  apply(compiler) {
    compiler.plugin('invalid', (file, changeTs) => {
      console.info('Recompile', file, changeTs);
    });
  }
}

module.exports = LogPlugin;
