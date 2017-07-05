---
layout: default
title: Overview
uri: documentation/merchantservice/overview
---

## Integration Process Overview
---
1. A prospective partner contacts a Samsung Relationship Manager to get Samsung Pay API credentials for self-service registration.

2. The prospect completes all integration steps.

3. The prospect submits the integration to the Samsung Relationship Manager for review.

4. The Samsung Relationship Manager checks the integration to ensure it has been correctly completed and that it complies with branding standards.

5. The Samsung Relationship Manager validates the integration and releases it for public use.

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
      <td>Admin Services</td>
      <td>
        The non-public portal used by Samsung personnel for serving off-line partner requests.
        <br><br>Contact your Samsung Relationship Manager for assistance.
      </td>
    </tr>
    <tr>
      <td>Partner</td>
      <td>
        A person authorized to perform management tasks on a merchant registration through the Self-Service Portal.
      </td>
    </tr>
    <tr>
      <td>Partner App</td>
      <td>
        The partner application integrated with Samsung Pay.
      </td>
    </tr>
    <tr>
      <td>Partner Server</td>
      <td>
        The partner server for client facing apps. Samsung Pay pulls membership details from the merchant server and lets partners to push updated membership information to its customers.
      </td>
    </tr>
    <tr>
      <td>Partner Website</td>
      <td>
        The partner website that includes the <strong>Save to Samsung Pay</strong> button.
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
      <td>Samsung Relationship Manager</td>
      <td>
        A Samsung Pay representative that assists a partner with all Samsung Pay management tasks.
      </td>
    </tr>
    <tr>
      <td>Self-Service Portal</td>
      <td>
        A web service that enables a partner to register with Samsung Pay and perform select registration management tasks.
      </td>
    </tr>
  </tbody>
</table>
