---
layout: default
title: Memebership Concepts
uri: membership/concepts
---

## Save to Pay API Flows
---
The following diagram depicts the partner registration for web-desktop and mobile scenarios.

![Save to Samsung Pay API workflows]({{ "/assets/images/s2p_api_workflows.png" | relative_url }})


#### Web API Registration Process
---
1. A partner registers with Samsung Pay. See https://samsung-pay.github.io/sapi-doc/membership/sdks for more information.

2. The partner renders the Save to Pay button on a merchant web page by adding the following HTML:
    ```html
    <div id="S2P-root" s2p-req="{S2PReq}"></div>
    <script src="{public_files}/s2p.js"></script>
    ```

3. A customer who views the page clicks the button. A QR code page appears.

4. The customer scans the code with the Samsung Pay app.

5. Samsung Pay loads the merchant offer into the customer’s Samsung Pay mobile wallet.

#### Mobile App Registration Process
---
1. A partner registers with Samsung Pay. See https://samsung-pay.github.io/sapi-doc/membership/sdks for more information.

2. The partner sends the signed registration object using the registration API to retrieve the Samsung Pay app. See [Membership API][Membership API page] for more information.

3. The partner renders the **Save to Pay** button on the merchant’s web page using the following ACTION_VIEW intent to launch the Samsung Pay application:
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
