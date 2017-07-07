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

2. User launches Samsung Pay app to scan the QR code.

3. Card is saved into Samsung Pay app after user confirmation within the app.

---

![Desktop Save to Samsung Pay API workflows]({{ "/assets/images/membership/api_flows/mobile_01.png" | relative_url }})
![Desktop Save to Samsung Pay API workflows]({{ "/assets/images/membership/api_flows/mobile_02.png" | relative_url }})

1. When user taps on **Save to Samsung Pay** button, the Samsung Pay app is launched.

2. Card is saved into Samsung Pay app after user confirmation within the app.

---

<br>
#### Options for Email Distribution of the Save to Samsung Pay Button
---
There are two options available for a partner to enable the Save to Samsung Pay button in an email. Each option is described below.

##### Embedding the URL Generated from the Samsung Pay Service
1.  From a partner’s back-end server:
    <dl>
      <dt>a. Saves the card information to the Samsung Pay server using the Save to Pay API and retrieve the card URL from the Samsung Pay server.</dt>
      <dt>b. Embeds the URL into the email along with the Save to Samsung Pay button.</dt>
      <dt>c. Sends the email to the recipient (user).</dt>
    </dl>

2.  The user opens the email and clicks the link/button.

3.  The user completes the process of saving the card to his/her account.

##### Embedding the URL of the Partner System
1.  From a partner’s back-end server:
    <dl>
      <dt>a. Generates partner’s own URL.</dt>
      <dt>b. Embeds the URL into the email along with the Save to Samsung Pay button.</dt>
      <dt>c. Sends the email to the recipient (user).</dt>
    </dl>

2.  The user opens the email and clicks the link/button that links to the partner’s back-end server. That triggers the saving of the card information to the Samsung Pay server using the Save to Pay API.

3.  The user completes the process of saving the card to his/her account.


<br>
#### Email Flow User Experience
---

##### Email Desktop
How a user adds a card from an email message from a partner/merchant from an email opened from the desktop:
1.  User opens the email.

2.  User scans the QR code with a cell phone camera.

3.  The card is added to the user’s Samsung Pay account.

##### Email Mobile
How a user adds a card from an email message from a partner/merchant from an email opened from the mobile device:
1.  User opens the email.

2.  User taps the Save to Samsung Pay button.

3.  The card is added to the user’s Samsung Pay account.


[Membership API page]: https://samsung-pay.github.io/sapi-doc/documentation/membership/api
[Membership API SDKs page]: https://samsung-pay.github.io/sapi-doc/documentation/membership/sdks
