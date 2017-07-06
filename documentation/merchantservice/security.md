---
layout: default
title: Security
uri: documentation/merchantservice/security
---

## Getting Credentials for Membership API Access
---
All data exchanges between your merchant systems and Samsung Pay must be encrypted.

You must use the authentication credentials provided by Samsung Pay to access the Samsung Pay membership API using a unique client ID and a private key. This is to establish trust between the Samsung Pay server and your merchant server allowing:
  * Samsung Pay to pull membership details from your merchant server.
  * You to push updated membership information to your customers.

The process that provides you with the Membership API credentials that enables you to render the Save to Samsung Pay button to your membership program web pages is listed as follows:
  1. For each registered merchant application/service, Samsung Pay generates a set of API credentials: a pair of 2048-bit RSA keys and keyID that identifies the key pair.
  2. Samsung Pay keeps the public key.
  3. Samsung Pay mails the keyID and private key to you.<br>You must secure the private key. It is required for the JSON Web Token (JWT) object constructed when you render the Save to Samsung Pay button on the web page where you invite customers to join your membership membership program. See [Membership API SDKs][Membership API SDKs page] for more information.


[Membership API SDKs page]: https://samsung-pay.github.io/sapi-doc/documentation/membership/sdks
