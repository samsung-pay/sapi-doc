---
layout: default
title: Memebership Concepts
uri: documentation/membership/concepts
---

## Membership Card Programs
---
A membership or membership card program is an incentive plan for your customers. It allows you to offer them discounts, coupons, points, other rewards in exchange for purchasing your products. with Samsung Pay. It also allows you to track customer activity and remind them to buy from your business when they are near one of your locations.

<br>
#### Save to Samsung Pay API
---
Also known as the Registration API, merchants and partners use it to enable Save to Samsung Pay functionality on their mobile apps and websites. Once enabled, Samsung Pay users are presented with a Save to Samsung Pay button when they visit those mobile app or website.  When they tap the button, the membership or membership program is saved to their Samsung Pay app after authentication.

The following diagrams depict the API flows for desktop-web and mobile scenarios:

![Desktop Save to Samsung Pay API workflows]({{ "/assets/images/membership/api_flows/desktop_01.png" | relative_url }})
![Desktop Save to Samsung Pay API workflows]({{ "/assets/images/membership/api_flows/desktop_02.png" | relative_url }})

1. When user taps on **Save to Samsung Pay** button, the QR code is displayed on the screen.

2. User launches Samsung pay app to scan the QR code.

3. Card is saved into Samsung pay app after user confirmation within the app.

---

![Desktop Save to Samsung Pay API workflows]({{ "/assets/images/membership/api_flows/mobile_01.png" | relative_url }})
![Desktop Save to Samsung Pay API workflows]({{ "/assets/images/membership/api_flows/mobile_02.png" | relative_url }})

1. When user taps on **Save to Samsung Pay** button, the Samsung Pay app is launched.

2. Card is saved into Samsung pay app after user confirmation within the app.

---

[Membership API page]: https://samsung-pay.github.io/sapi-doc/documentation/membership/api
[Membership API SDKs page]: https://samsung-pay.github.io/sapi-doc/documentation/membership/sdks
