---
layout: default
title: Memebership Concepts
uri: documentation/membership/concepts
---

## Partner Membership Card Registration API Flows
---
The following diagram depicts the partner membership card registration process for web-desktop and mobile registration scenarios.

![Save to Samsung Pay  API workflows]({{ "/assets/images/membership/api_workflows.png" | relative_url }})

<br>
#### Membership Card Registration Process
---
Samsung Pay provides an SDK that enables Samsung Pay partners to easily integrate the **Save to Samsung Pay** button on their websites. Then, Samsung Pay end users can simply add a membership card from a partner’s website to Samsung Pay by tapping the button.

<br>
##### Web Process
1. The partner constructs a signed Registration object as described in [Membership API SDKs][Membership API SDKs page].
2. The partner sends the signed registration object using the Registration API to retrieve the Samsung Pay app. See [Membership APIs][Membership API page] for more information.
3. The partner renders the **Save to Samsung Pay** button on a merchant web page by adding the following HTML:
    ```html
    <div id="S2P-root" s2p-req="{S2PReq}"></div>
    <script src="{public_files}/s2p.js"></script>
    ```
4. A customer who views the page clicks the button. A QR code page appears.
5. The customer scans the code with the Samsung Pay app.
6. Samsung Pay loads the merchant offer into the customer’s Samsung Pay mobile wallet.

<br>
##### Mobile Process
1. The partner constructs a signed Registration object as described in [Membership API SDKs][Membership API SDKs page].
2. The partner sends the signed registration object using the Registration API to retrieve the Samsung Pay app. See [Membership APIs][Membership API page] for more information.
3. The partner renders the **Save to Samsung Pay** button on the merchant web page using the following ACTION_VIEW intent to launch the Samsung Pay application:
    ```java
    public void save(String welcomeUrl) {
        // Card URL generated from S2P serverUri webUri= Uri.parse(welcomeUrl);
        Intent intent= new Intent(Intent.ACTION_VIEW, webUri);
        if (intent.resolveActivity(getPackageManager()) != null) {
          startActivity(intent);
        }
    }
    ```
4. A customer who views the page taps the button.
5. Samsung Pay loads the offer into the customer’s Samsung Pay mobile wallet.

[Membership API page]: https://samsung-pay.github.io/sapi-doc/documentation/membership/api
[Membership API SDKs page]: https://samsung-pay.github.io/sapi-doc/documentation/membership/sdks

<br>
#### Loyalty Card Program
---
A loyalty card program is an incentive plan for your customers. It allows you to offer them discounts, coupons, points, other rewards in exchange for purchasing your products with Samsung Pay. It also allows you to track customer activity and remind them to buy from your business when they are near one of your locations.

The Registrations API allows your customers to add your loyalty program cards to their digital wallets. Once you have integrated the Save to Samsung Pay button into the web page where you want to engage customers, all they have to do is tap the button to load the card into their Samsung Pay wallet.
