# bitpay-public-client

[![NPM Package](https://img.shields.io/npm/v/bitpay-public-client.svg?style=flat-square)](https://www.npmjs.org/package/bitpay-public-client)
[![Build Status](https://img.shields.io/travis/bitpay/bitpay-public-client.svg?branch=master&style=flat-square)](https://travis-ci.org/bitpay/bitpay-public-client) 
[![Coverage Status](https://coveralls.io/repos/bitpay/bitpay-public-client/badge.svg)](https://coveralls.io/r/bitpay/bitpay-public-client)

A client library for the [BitPay API](https://bitpay.com/api) public facade.

## Description

This package communicates with [BitPay](https://bitpay.com/api) using the BitPay REST API.

## Get Started

You can start using bitpay-public-client in any of these ways:

* via [Bower](http://bower.io/): by running `bower install bitpay-public-client` from your console
* or via [NPM](https://www.npmjs.com/package/bitpay-public-client): by running `npm install bitpay-public-client` from your console.

Alternatively, download the uncompressed or minified js files and place them in your web sites scripts directory.

## Usage

### Browser

Include either the full or minified script in the head of your HTML page:

```
<script src="bitpay-public-client.min.js"></script>
```

Load the library as follows:

```
<script>
    var API = new Bitpay();
</script>
```

### NodeJS

Just require the library and instantiate it:

```
var Bitpay = require('bitpay-public-client');

var API = new Bitpay();
```

# Global

* * *

## Class: API
ClientAPI constructor.

### API.createInvoice(opts, callback) 

Create a new invoice.  See https://bitpay.com/api#resource-Invoices.

**Returns**

On success:

- `Object` the new invoice data.

**Parameters**

Parameter | Type | Default | Description
--------- | ---- | ------- | -----------
`opts`    | `Object` | `{}` | An object describing relevant specific options.
`callback` | `Object` | `{}` | Function called when request is complete.

All required option attributes are described below.  See https://bitpay.com/api#resource-Invoices for additional options.

Attribute | Type | Default | Description
--------- | ---- | ------- | -----------
`opts.token` | `string` |  | A BitPay API token.
`opts.guid` | `string` |  | A unique id.
`opts.currency` | `string` |  | ISO 4217 3-character currency code.
`opts.price` | `string` |  | The amount (in the specified currency) for which the invoice should be created.

### API.getRates(opts, callback) 

Retrieves exchange rates.  Rates are exchange rates, representing the number of fiat currency units equivalent to one BTC.  See https://bitpay.com/bitcoin-exchange-rates.

**Returns**

On success:

- `Object` the table of rates or a single rate.

**Parameters**

Parameter | Type | Default | Description
--------- | ---- | ------- | -----------
`opts`    | `Object` | `{}` | An object describing relevant specific options.
`callback` | `Object` | `{}` | Function called when request is complete.

All available option attributes are described below.

Attribute | Type | Default | Description
--------- | ---- | ------- | -----------
`opts.currency` | `string` | Empty, get all rates | ISO 4217 3-character currency code.

### API.subscribeToNotifications(opts, callback) 

Subscribes the device to receive push notifications.

**Returns**

On error:

- `Object` the status of the subscribe request.

**Parameters**

Parameter | Type | Default | Description
--------- | ---- | ------- | -----------
`opts`    | `Object` | `{}` | An object describing relevant specific options.
`callback` | `Object` | `{}` | Function called when request is complete.

All available option attributes are described below.

Attribute | Type | Default | Description
--------- | ---- | ------- | -----------
`opts.subscriberId` | `string` | | A globally unique id used to identify a subscriber (e.g., email address).
`opts.deviceType`   | `string` | | The device type being subscribed, can be either `android` or `ios`.
`opts.deviceToken`  | `string` | | The device token (e.g., APNS/GCM registration ID, obtained from a third-party service) to be used for push notification.

### API.unsubscribeFromNotifications(opts, callback)

Unsubscribes the device from receiving push notifications.

**Returns**

On error:

- `Object` the status of the unsubscribe request.

**Parameters**

Parameter | Type | Default | Description
--------- | ---- | ------- | -----------
`opts`    | `Object` | `{}` | An object describing relevant specific options.
`callback` | `Object` | `{}` | Function called when request is complete.

All available option attributes are described below.

Attribute | Type | Default | Description
--------- | ---- | ------- | -----------
`opts.deviceToken` | `string` | | The device token (e.g., APNS/GCM registration ID, obtained from a third-party service) to be used for push notification.

### API.getNotifiedInvoices(opts, callback)

Retrieves a list of recently created invoices. The specified `deviceToken` is used to reference the `subscriberId`. If the `subscriberId` matches the `buyer` `email` field of one or more recently created invoices then the payment URL for each invoice is returned..

**Returns**

On success:

All available option attributes are described below.

Attribute | Type | Default | Description
--------- | ---- | ------- | -----------
`paymentURLs` | `array` | | One URL for each pending point-of-sale payment (typically one) where you can pay the invoice(s). Only the BIP 72 protocol URL for payment resolution is returned. URLs are temporary and will change and not be available after 15 minutes when the invoice expires, unless the invoice has been paid.

On error:

- `Object` the status of the unsubscribe request.

**Parameters**

Parameter | Type | Default | Description
--------- | ---- | ------- | -----------
`opts`    | `Object` | `{}` | An object describing relevant specific options.
`callback` | `Object` | `{}` | Function called when request is complete.

All available option attributes are described below.

Attribute | Type | Default | Description
--------- | ---- | ------- | -----------
`opts.deviceToken` | `string` | | The device token (e.g., APNS/GCM registration ID, obtained from a third-party service) to be used for push notification.

* * *

The MIT License

Copyright (c) 2016 BitPay

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
