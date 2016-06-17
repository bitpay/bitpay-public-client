/**
 * A client library for the public facade of the BitPay API.
 * @module Client
 */

/**
 * Client API.
 * @alias module:Client.API
 */
var client = module.exports = require('./api');

client.Utils = require('./common/utils');
