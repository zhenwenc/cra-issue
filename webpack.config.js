const path = require('path');
const LogPlugin = require('./config/LogPlugin');

module.exports = {
  entry: './src/index.js',
  output: {
    filename: 'bundle.js',
    path: path.resolve(__dirname, 'dist'),
  },
  plugins: [new LogPlugin()],
};
