---
layout: ../../layouts/post.astro
title: Playwright ideal file structure
description: What structure should ideally help in maintainability?
dateFormatted: Dec 03, 2024
pubDate: 03 December 2024 10:00:00 GMT
---

What should an ideal playwright setup look like? 

We know that as we start writing test automation scripts, the code maintenance and readability becomes crucial aspect of it. Therefore I think it is important to plan and structure your suite right from the start.

Here is what a decent playwright structure could look like:

```plaintext
playwright/
|____ tests/
     |____ login.spec.ts
     |____ profile.spec.ts
     |____ product.spec.ts

|____ pages/
     |____ base.page.ts
     |____ login.page.ts
     |____ product.page.ts

|____ fixtures/
     |____ login-fixture.ts

|____ constants/
     |____ locators/
          |____ login.ts
          |____ product.ts
     |____ urls.ts
     |____ strings.ts

|____ utils/
     |____ helpers.ts
     |____ api/
           |____ login.api.ts
           |____ product.api.ts

|____ playwright.config.ts
|____ package.json