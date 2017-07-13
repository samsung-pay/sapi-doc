---
layout: default
title: Gift Card SDKs
uri: documentation/giftcard/sdks
---

## Samsung Pay S2P Java SDK
---
S2P SDK will grant Samsung Pay registered merchants capabilities of easily integrating `Save to Samsung Pay` button on gift card websites. With integrated `Save to Samsung Pay` button, end users can simply add gift cards from merchant's websites to `Samsung Pay`.

<br>
#### Installation
---

##### Gradle
```gradle
compile group: 'com.samsungpay.s2p', label: 's2p-all-java', version: '0.1.0'
```

<br>
##### Maven
```xml
<dependency>
    <groupId>com.samsungpay.s2p</groupId>
    <artifactId>s2p-all-java</artifactId>
    <version>0.1.0</version>
</dependency>
```

<br>
#### Usage and tests
---

1. Construct the Registration (`com.samsungpay.s2p.giftcard.Registration`) object

    ```java
    Registration.newBuilder()
        .cardId("11223344556677")
        .productId("V96T31AVCR641ZM2M5BS3SAD7S")
        .tncLink("http://us.playstation.com/")
        .build();
    ```
<br>
2. Construct the S2PRequest and sign
<br>
    ```java
    // merchant's privateKey, keyId (will be provided upon successfull registration)
    RSAPrivateKey privateKey =
    final String keyId =
    final S2PRequest.Request request = S2PRequest.Request.SAVE_TO_SPAY_GIFTCARD;

    // Construct a registration object
    Registration registration =

    // Create the model that will be placed in view
    // Either provide (RSAPrivateKey) privateKey or file path of the private key PEM to sign the request

    // Sign with private key
    S2PRequest request = S2PRequest.newBuilder()
            .setKeyID(keyID)
            .setRegistration(registration)
            .setRequest(request)
            .sign(privateKey);

    // Sign with private key PEM file
    S2PRequest request = S2PRequest.newBuilder()
            .setKeyID(keyID)
            .setRegistration(registration)
            .setRequest(request)
            .setKeyPEMPath(PRIVATE_KEY_PEM_PATH)
            .sign();

    String s2PReq = s2PRequest.encode();
    ```
<br>
3. Pass the s2PReq json object (generated in the previous step) via View-Model (depend on MVC framework) to the view template, in where the [S2P JavaScript SDK](https://github.com/initor/s2p) will be included as well
<br>
    ```html
    <div id="S2P-root" s2p-req="{S2PReq}"></div>
    <script src="{public_files}/s2p.js"></script>
    ```
