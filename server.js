/**
 * Air Quality Monitoring - Root Server Entry Point
 * Redirects execution to modular backend architecture at /backend/server.js
 */

const app = require('./backend/server.js');

module.exports = app;
