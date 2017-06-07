---
layout: default
title: Membership SDKs
uri: membership/sdks
---

# Samsung Pay S2P Java SDK

> **WARNING:** this SDK is currently under active development and NOT officially released yet. For release plan please check [Samsung Pay](http://www.samsung.com/us/samsung-pay/) for further information.

S2P SDK will grant Samsung Pay registered merchants capabilities of easily integrating `Save to Samsung Pay` button on membership websites. With integrated `Save to Samsung Pay` button, end users can simply add membership cards from merchant's websites to `Samsung Pay`.

## Installation

#### Gradle
```groovy
compile group: 'com.samsungpay.s2p', label: 's2p-reg', version: '1.0.16'
```

#### Maven
```xml
<dependency>
    <groupId>com.samsungpay.s2p</groupId>
    <artifactId>s2p-reg</artifactId>
    <version>1.0.16</version>
</dependency>
```

## Usages and tests

  >  **Note:** please consider the unit test within repository as a general guideline about How to Use S2P SDK. In the test, most use cases have been demonstrated.

1. Construct the Registration object
    ```java
    // Barcode
    Barcode barcode = Barcode.newBuilder()
            .setSymbology(Barcode.Symbology.CODE_39)
            .setData("1234567890")
            .build();

    // Tracks
    Tracks tracks = Tracks.newBuilder()
            .setTrack1("track1_format")
            .setTrack2("track2_format")
            .setTrack3("track3_format")
            .build();

    // CardArt
    CardArtI18n cardArtI18n1_EN = CardArtI18n.newBuilder()
            .setLanguage("en")
            .setArtUrl("123")
            .build();

    CardArt cardArt1 = CardArt.newBuilder()
            .setI18ns(Collections.singletonList(cardArtI18n1_EN))
            .build();

    // CustomClaim
    CustomClaimI18n customClaimI18n1_EN = CustomClaimI18n.newBuilder()
            .setLanguage("en")
            .setLabel("label1_en")
            .setContent("content1_en")
            .build();

    CustomClaimI18n customClaimI18n1_FR = CustomClaimI18n.newBuilder()
            .setLanguage("fr")
            .setLabel("label1_fr")
            .setContent("content1_fr")
            .build();

    CustomClaim customClaim1 = CustomClaim.newBuilder()
            .setI18ns(Arrays.asList(customClaimI18n1_EN, customClaimI18n1_FR))
            .build();

    // UserMessageI18n
    // (startAt and endAt fields using [RFC 3339 Data and Time Format](https://www.ietf.org/rfc/rfc3339.txt))
    UserMessageI18n userMessageI18n1_EN = UserMessageI18n.newBuilder()
            .setLanguage("en")
            .setTitle("title1_en")
            .setBody("body1_en")
            .build();

    UserMessageI18n userMessageI18n1_FR = UserMessageI18n.newBuilder()
            .setLanguage("fr")
            .setTitle("title1_fr")
            .setBody("body1_fr")
            .build();

    UserMessage userMessage1 = UserMessage.newBuilder()
            .setStartAt("2017-05-19T16:38:07-07:00")
            .setEndAt("2017-09-19T16:38:07-07:00")
            .setI18ns(Arrays.asList(userMessageI18n1_EN, userMessageI18n1_FR))
            .build();

    Registration.newBuilder()
            .setMembershipId("1q2w3e")
            .setMembershipIDType(MembershipIDType.CARDNUM)
            .setProgramName("Holly membership program name")
            .setBarcode(barcode)
            .setTracks(tracks)
            .setCardStatus(Registration.CardStatus.ACTIVE)
            .setCardArt(cardArt1)
            .setCustomClaims(Collections.singletonList(customClaim1))
            .setUserMessages(Collections.singletonList(userMessage1))
            .build();
    ```

2. Construct the S2PRequest and sign
    ```java
    // merchant's privateKey, keyId (will be provided upon successfull registration)
    RSAPrivateKey privateKey =
    final String keyId =
    final S2PRequest.Request request = S2PRequest.Request.POST_SAVE_TO_SPAY;

    // Create the model that will be placed in view
    // Either provide (RSAPrivateKey) privateKey or file path of the private key PEM to sign the request

    // Sign with private key
    S2PRequest s2PRequest = S2PRequest.newBuilder()
            .setKeyID(keyID)
            .setRegistration(registration)
            .setRequest(request)
            .sign(privateKey);


    // Sign with private key PEM file
    S2PRequest s2PRequestSignWithPEM = S2PRequest.newBuilder()
            .setKeyID(keyID)
            .setRegistration(registration)
            .setRequest(request)
            .setKeyPEMPath("key_pem_file_path")
            .sign();

    String s2PReq = s2PRequest.encode();
    ```

3. Pass the s2PReq json object (generated in the previous step) via View-Model (depend on MVC framework) to the view template, in where the [S2P JavaScript SDK](https://github.com/initor/s2p) will be included as well
    ```html
    <div id="S2P-root" s2p-req="{S2PReq}"></div>
    <script src="{public_files}/s2p.js"></script>
    ```
