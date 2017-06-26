---
layout: default
title: Overview
uri: /
---

## Overview
---
The Samsung Pay Membership API lets you connect your business to millions of Samsung Pay users by integrating your loyalty programs, gift cards, and other offers with the Samsung Pay app. You can engage with your customers anytime through location-based notifications, real-time updates, and messaging.

Samsung Pay users can view and use their loyalty cards on any Samsung Pay enabled device that has access to the internet. Specifically, the API allows users to add a loyalty program to their digital wallets. When they make a purchase, they can easily share their loyalty info by showing the bar code on their phone or automatically sending it via Magnetic Secure Transmission (MST). They can also use the Samsung Pay app to track their activities, rewards, and loyalty status.

By integrating the **Save to Samsung Pay** button into your website, mobile app, or email messages, you can make it easy for your customers to save your loyalty programs, offers, and gift cards to Samsung Pay.

<br>
#### Integration Process Overview
---
<div class="notification is-warning">
  <span class="icon">
    <i class="fa fa-info-circle" aria-hidden="true"></i>
  </span>
  <strong>WARNING:</strong> The Self-Service Portal and other features may not be available at this time.
</div>

1. A prospective partner contacts a Samsung Relationship Manager to get Samsung Pay API credentials for self-service registration.

2. The prospect completes all integration steps.

3. The prospect submits the integration to the Samsung Relationship Manager for review.

4. The Samsung Relationship Manager checks the integration to ensure it has been correctly completed and that it complies with branding standards.

5. The Samsung Relationship Manager validates the integration and releases it for public use.

The following diagram depicts the interaction of components in a partner and Samsung Pay integration:

![Save to Samsung Pay components]({{ "/assets/images/components.png" | relative_url }})


#### Component Descriptions
---
<table class="table is-bordered components_desc">
  <thead>
    <tr>
      <th class="components_name">Component</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Partner Server</td>
      <td>
        The partner server for client facing apps. Samsung Pay pulls membership details from the merchant server and lets partners to push updated membership information to its customers.
      </td>
    </tr>
    <tr>
      <td>Partner App</td>
      <td>
        The partner application integrated with Samsung Pay.
      </td>
    </tr>
    <tr>
      <td>Partner Website</td>
      <td>
        The partner website that includes the <strong>Save to Samsung Pay</strong> button.
      </td>
    </tr>
    <tr>
      <td>Partner</td>
      <td>
        A person authorized to perform management tasks on a merchant registration through the Self-Service Portal.
      </td>
    </tr>
    <tr>
      <td>Self-Service Portal</td>
      <td>
        A web service that enables a partner to register with Samsung Pay and perform select registration management tasks.
      </td>
    </tr>
    <tr>
      <td>Samsung Pay API</td>
      <td>
        The API that enables interaction between Samsung Pay and a partner application.
      </td>
    </tr>
    <tr>
      <td>Samsung Pay Service</td>
      <td>
        The processing service for Samsung Pay.
      </td>
    </tr>
    <tr>
      <td>Admin Services</td>
      <td>
        The non-public portal used by Samsung personnel for serving off-line partner requests.
      </td>
    </tr>
  </tbody>
</table>
