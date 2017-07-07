---
layout: default
title: Process Overview
uri: documentation/merchantservice/processoverview
---

## Integration Process Overview
---

The integration process includes the following steps:

  1. A partner contacts a Samsung Relationship Manager to get Samsung Pay API credentials for accessing the API.

  2. The partner uses the technical information including the process details, API documentation, and UI guidelines provided by this website to complete the integration with Samsung Pay wallet.

  3. After completing the registration, the partner reviews the solution with the Samsung Relationship Manager to ensure UX and brand guidelines/allstandards have been met.

  4. Finally, the merchant app/website is made public for users through distribution channels as applicable.


The following diagram depicts the interaction of components in a partner and Samsung Pay integration:

![Save to Samsung Pay components]({{ "/assets/images/merchant_service/components.png" | relative_url }})


#### Component Descriptions
---
<table class="table is-bordered is-striped is-narrow components_desc">
  <thead>
    <tr>
      <th class="components_name">Component</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>

    <tr>
      <td>Samsung Pay App</td>
      <td>
        The Samsung e-wallet app.
      </td>
    </tr>

    <tr>
      <td>Partner App/Website</td>
      <td>
        The partner application or website that has integrated with Samsung Pay features.
      </td>
    </tr>

    <tr>
      <td>Partner Server</td>
      <td>
        The back-end service for the partner’s app or website, typically responsible for handling user authentication, business logic, and so on.
      </td>
    </tr>

    <tr>
      <td>Partner</td>
      <td>
        A person authorized to make changes or perform management tasks for the integrated partner Save to Samsung solution.
      </td>
    </tr>

    <tr>
      <td>Samsung Pay API</td>
      <td>
        The Membership API used to integrate the Save to Samsung Pay button to a partner app or website.
      </td>
    </tr>

    <tr>
      <td>Samsung Pay Service</td>
      <td>
        The back-end service that enables the API to perform various tasks such as loading cards, saving offers, and displaying balance points.
      </td>
    </tr>

    <tr>
      <td>Admin Services</td>
      <td>
        The services requested by a partner that are addressed by a Samsung Relationship Manager. Example services include updating card art and logos and other card management services.
      </td>
    </tr>

    <tr>
      <td>Relationship Manager</td>
      <td>
        A Samsung Pay representative that assists a partner with all Samsung Pay management tasks.
      </td>
    </tr>

  </tbody>
</table>
