/**
 * Vercel Serverless Entry Point
 * Exports the Express app instance for Vercel Serverless execution
 */

const app = require('../backend/server.js');

module.exports = app;
