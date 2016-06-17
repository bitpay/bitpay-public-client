# bitpay-public-client

[![NPM Package](https://img.shields.io/npm/v/bitpay-public-client.svg?style=flat-square)](https://www.npmjs.org/package/bitpay-public-client)
[![Build Status](https://img.shields.io/travis/bitpay/bitpay-public-client.svg?branch=master&style=flat-square)](https://travis-ci.org/bitpay/bitpay-public-client) 
[![Coverage Status](https://coveralls.io/repos/bitpay/bitpay-public-client/badge.svg)](https://coveralls.io/r/bitpay/bitpay-public-client)

A client library for the [BitPay API public facade](https://bitpay.com/api). 

## Description

This package communicates with [BitPay](https://bitpay.com/api) using REST. All REST endpoints are wrapped as simple async methods.

## Get Started

You can start using bitpay-pubiciclient in any of these ways:

* via [Bower](http://bower.io/): by running `bower install bitpay-public-client` from your console
* or via [NPM](https://www.npmjs.com/package/bitpay-public-client): by running `npm install bitpay-public-client` from your console.

## Example

TBD

Install `bitpay-public-client` before start:

```
npm i bitpay-public-client
```

# Global

* * *

## Class: API
ClientAPI constructor.

### API.subscribeToNotifications(opts, opts.subscriberId, opts.deviceType, opts.deviceToken) 

Subscribes the device to receive push notifications.

**Parameters**

**opts**: `Object`, Returns subscription status.

**opts.subscriberId**: `String`, A globally unique id used to identify a subscriber (e.g., email address).

**opts.deviceType**: `String`, The device type being subscribed, can be either `android` or `ios`.

**opts.deviceToken**: `String`, The device token (e.g., APNS/GCM registration ID, obtained from a third-party service) to be used for push notification.

**Returns**: `Object`, response - Status of subscription.

### API.unsubscribeFromNotifications(opts, opts.deviceToken)

Unsubscribes the device from receiving push notifications.

**Parameters**

**opts.deviceToken**: `String`, The device token (e.g., APNS/GCM registration ID, obtained from a third-party service) to be used for push notification.

**Returns**: `Callback`, cb - Status of unsubscription.

### API.getNotifiedInvoices(opts, opts.deviceToken)

Retrieves a list of recently created invoices. The specified `deviceToken` is used to reference the `subscriberId`. If the `subscriberId` matches the `buyer` `email` field of one or more recently created invoices then the payment URL for each invoice is returned..

**Parameters**

**opts.deviceToken**: `String`, The device token (e.g., APNS/GCM registration ID, obtained from a third-party service) to be used for push notification.

**Returns**: `Callback`, cb - Status of unsubscription.

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
