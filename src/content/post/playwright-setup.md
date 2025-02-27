---
layout: ../../layouts/post.astro
title: Playwright ideal file structure
description: What structure should ideally help in maintainability?
dateFormatted: Dec 03, 2024
pubDate: 03 December 2024 10:00:00 GMT
---


  

What should an ideal playwright setup look like? We know that as we start writing test automation scripts, the code maintenance and readability becomes crucial aspect of it. Therefore I think it is important to plan and structure your suite right from the start.

Here is what a decent playwright structure could look like: 

📂 `playwright/` - Root directory of the Playwright setup  
│── 📂 `tests/` - Contains test files  
│   ├── 📄 `login.spec.ts` - Login page test  
│   ├── 📄 `profile.spec.ts` - Profile page test  
│   ├── 📄 `product.spec.ts` - Product page test  
│  
│── 📂 `pages/` - Page object models  
│   ├── 📄 `base.page.ts` - Base page class  
│   ├── 📄 `login.page.ts` - Login page interactions  
│   ├── 📄 `product.page.ts` - Product page interactions  
│  
│── 📂 `fixtures/` - Test fixtures  
│   ├── 📄 `login-fixture.ts` - Login-related test fixture  
│  
│── 📂 `constants/` - Stores constants like locators & URLs  
│   ├── 📄 `urls.ts` - URL constants  
│   ├── 📄 `strings.ts` - String constants  
│   ├── 📂 `locators/` - Contains element locators  
│   │   ├── 📄 `login.ts` - Login page locators  
│   │   ├── 📄 `product.ts` - Product page locators  
│  
│── 📂 `utils/` - Utility functions  
│   ├── 📄 `helpers.ts` - General helper functions  
│   ├── 📂 `api/` - API interaction files  
│   │   ├── 📄 `login.api.ts` - API calls for login  
│   │   ├── 📄 `product.api.ts` - API calls for product  
│  
│── 📄 `playwright.config.ts` - Playwright configuration file  
│── 📄 `package.json` - Project dependencies & scripts  


A dilemma here can be that you might end up with a need for too many helper functions to perform a variety of different tests. In my experience I created individual methods to fill in fields or click buttons, then used them as needed in functions to basically perform a part of a test. This led to the problem of having to manage too many helper functions since e.g. the creation forms would have lots of fields followed by detail pages of those entities created etc.

It could be that you try to think of a page class as one that houses all functionalities in a given module. But you will see that a basic CRUD for any module results in a lot of code. For this reason it is recommended to start working with the largest or most complex module in your app so it's easier to establish a direction for the remainder.

Another view point I came across was preventing yourself from overdoing the inheritance and abstraction principles. E.g. you don't really need to write a function that takes a locator and types some text, that's exactly what playwright's locator.fill() is for.

So what do we do?
Well Chatgpt says I can go into the same route as mentioned above but for each module. So it can look like this:

📂 `pages/`  
│── 📂 `product/` - Contains all product-related pages  
│   ├── 📄 `product.page.ts` - Main product page  
│   ├── 📄 `product.detail.page.ts` - Product details page  
│   ├── 📄 `product.create.page.ts` - Product creation page  
│   ├── 📄 `product.list.page.ts` - Product list page  
│   ├── 📄 `product.filter.page.ts` - Product filtering page  

This allows for better readability and easier maintenance in future. But! hold on, it's not that simple. You can't just declare some classes and use them in another one, it's not that simple. There's a principle known as SOLID. 
SOLID is a set of five design principles for writing clean and maintainable object-oriented code:
1. **S**ingle Responsibility Principle (SRP) – A class should have only one reason to change, meaning it should have only one job.
2. **O**pen/Closed Principle (OCP) – Software entities should be open for extension but closed for modification.
3. **L**iskov Substitution Principle (LSP) – Subtypes must be substitutable for their base types without altering correctness.
4. **I**nterface Segregation Principle (ISP) – Clients should not be forced to depend on interfaces they do not use.
5. **D**ependency Inversion Principle (DIP) – Depend on abstractions, not on concrete implementations.

To explain more, there's a concept known as Composition which an alternative to Inheritance. Instead of creating rigid class hierarchies, composition allows objects to be built using smaller, reusable components, making modifications and extensions easier. 
It also avoids the fragile base class problem, where changes in a parent class can unintentionally break subclasses. By promoting behavior delegation rather than deep inheritance trees, composition aligns better with the Open/Closed Principle, leading to more scalable and adaptable software design.

As an idea of what it might look like here are some code snippets:
```
// pages/product/product.list.page.ts
import { Page } from '@playwright/test';

export class ProductListPage {
  constructor(private page: Page) {}

  async searchForProduct(name: string) {
    await this.page.locator('#search').fill(name);
    await this.page.locator('#search-button').click();
  }

  async viewFirstProduct() {
    await this.page.locator('.product-item').first().click();
  }
}
```
```
// pages/product/product.detail.page.ts
import { Page } from '@playwright/test';

export class ProductDetailPage {
  constructor(private page: Page) {}

  async addToCart() {
    await this.page.locator('#add-to-cart').click();
  }

  async getProductTitle() {
    return await this.page.locator('.product-title').textContent();
  }
}
```
```
// pages/product/product.create.page.ts
import { Page } from '@playwright/test';

export class ProductCreatePage {
  constructor(private page: Page) {}

  async createProduct(name: string, category: string) {
    await this.page.locator('#product-name').fill(name);
    await this.page.locator('#category').selectOption(category);
    await this.page.locator('#save-product').click();
  }
}
```
```
// pages/product/product.filter.page.ts
import { Page } from '@playwright/test';

export class ProductFilterPage {
  constructor(private page: Page) {}

  async filterByCategory(category: string) {
    await this.page.locator('#category-filter').selectOption(category);
  }

  async getFilteredResultsCount() {
    return await this.page.locator('.product-item').count();
  }
}

```

```
// pages/product/product.page.ts
import { Page } from '@playwright/test';
import { ProductListPage } from './product.list.page';
import { ProductDetailPage } from './product.detail.page';
import { ProductCreatePage } from './product.create.page';
import { ProductFilterPage } from './product.filter.page';

export class ProductPage {
  list: ProductListPage;
  detail: ProductDetailPage;
  create: ProductCreatePage;
  filter: ProductFilterPage;

  constructor(private page: Page) {
    this.list = new ProductListPage(page);
    this.detail = new ProductDetailPage(page);
    this.create = new ProductCreatePage(page);
    this.filter = new ProductFilterPage(page);
  }

  async open() {
    await this.page.goto('/products');
  }
}

```

```
// tests/product.spec.ts
import { test, expect } from '@playwright/test';
import { ProductPage } from '../pages/product/product.page';

test('Search and view product details', async ({ page }) => {
  const productPage = new ProductPage(page);

  await productPage.open();
  await productPage.list.searchForProduct('Laptop');
  await productPage.list.viewFirstProduct();
  
  const title = await productPage.detail.getProductTitle();
  expect(title).toContain('Laptop');

  await productPage.detail.addToCart();
  expect(await page.locator('#cart-count').textContent()).toBe('1');
});

```