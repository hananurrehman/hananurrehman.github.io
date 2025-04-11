---
title: What does a typical test automation process look like?
description: A practical guide to implementing test automation in agile sprints, covering process integration, timing strategies, and best practices.
dateFormatted: March 13, 2025
pubDate: 13 March 2025 10:00:00 GMT
tags:
  ["Test Automation", "Agile Testing", "DevOps", "Process", "Best Practices"]
keywords:
  [
    "test automation process",
    "agile testing",
    "automation strategy",
    "test planning",
    "CI/CD",
  ]
readingTime: 8
author: "Hanan Ur Rehman"
featured: false
lastModified: "March 13, 2025"
---

After you've learned the tricks of the automation trade, your next concern should be the actual process in which the test automation is used.

To start with, you need to answer some questions for yourself:

- Is your automation part of the definition of done in your sprints?
- Does your automation effectively serve as a regression check?
- Does your team write unit and integration tests along with comprehensive documentation to cover a sprint's story?

This article covers the scope of a team that does manual testing too. (Manual, exploratory, hands on, call it whatever you want to)
Some people say automation should be done in-sprint, while others say it should be done only after a feature has been tested and deployed to a stable environment.

I'm part of the 'others'. You see one of the problems is the requirements changing mid-sprint. Everybody hates that, but some managers love it. This results in not only changes being made to the app's code, but the automation, as well as any test cases you had written.

After a story is refined and picked up in a sprint for development, generally the tester plans their testing by writing down some test cases, building mind maps, and picking a set of test cases that can be automated into checks.
Next, when the dev work begins, it's a matter of team dynamics or processes:

- Does the development team sync up with the tester to finalize locator strategies and possible assertion expectations?
- Or does the tester wait for the feature to be tested, bug fixed, and deployed to a stable environment?
  I'd go with the latter. After the test cases based and exploratory testing have been completed and the bugs have been fixed, it's time to start writing the automation script. (crack knuckles)

Some DevOps crowd might argue that the UI automation can be written while the feature is being developed. But, that's only possible in teams that produce high quality stuff. That's not just the developer's work, it also includes the designs, requirements or use case documentation, UML diagrams, etc. Only when the requirements and scope have been thoroughly refined and locked, can you follow a TDD UI automation approach.

Now ideally you'll have dev, staging, and production environments. Having written the automation scripts, you'll want to deploy them in one environment ahead of the feature in development. Feature flags help you here. In a trunk based like fashion, deploy it to prod/master and let the feature flag do it's thing.
