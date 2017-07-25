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
repositories {
    jcenter()
}

compile group: 'com.samsungpay.s2p', label: 's2p-all-java', version: '0.1.3'
```

<br>
##### Maven
```xml
<repositories>
    <repository>
        <id>jcenter</id>
        <url>https://jcenter.bintray.com</url>
    </repository>
</repositories>

<dependency>
    <groupId>com.samsungpay.s2p</groupId>
    <artifactId>s2p-all-java</artifactId>
    <version>0.1.3</version>
</dependency>
```

<br>
#### Usage and tests
---

1. Construct the Registration (`com.samsungpay.s2p.giftcard.Registration`) object

    ```java
    TnC tnC = TnC.newBuilder()
                .url("Dummy TnC url link")
                .build();

    Card card = Card.newBuilder()
            .id("Dummy card ID")
            .imageUrl("Dummy card image art url link")
            .tnc(tnC)
            .build();

    Merchant merchant = Merchant.newBuilder()
            .name("Dummy merchant name")
            .logoUrl("Dummy merchant logo image url link")
            .build();

    Registration.newBuilder()
            .card(card)
            .merchant(merchant)
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
