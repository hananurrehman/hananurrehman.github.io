# Playwright ideal setup
What should an ideal playwright setup look like? We know that as we start writing test automation scripts, the code maintenance and readability becomes crucial aspect of it. Therefore I think it is important to plan and structure your suite right from the start.

Here is what a decent playwright structure could look like:

playwright/
|---- tests/
	|---- login.spec.ts
	|---- profile.spect.ts
	|---- product.spec.ts
|---- pages/
	|---- base.page.ts
	|---- login.page.ts
	|---- product.page.ts
|---- fixtures/
	|---- index.ts
|---- utils/
	|---- constants.ts
	|---- helpers.ts
	|---- api/
		|---- login.api.ts
		|---- product.api.ts
|---- playwright.config.ts
|---- package.json