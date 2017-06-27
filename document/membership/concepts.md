---
layout: default
title: Memebership Concepts
uri: document/membership/concepts
---

## Save to Samsung Pay API Flows
---
The following diagram depicts the partner registration for web-desktop and mobile scenarios.

![Save to Samsung Pay API workflows]({{ "/assets/images/s2p_api_workflows.png" | relative_url }})

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

[Membership API page]: https://samsung-pay.github.io/sapi-doc/membership/api
[Membership API SDKs page]: https://samsung-pay.github.io/sapi-doc/membership/sdks
