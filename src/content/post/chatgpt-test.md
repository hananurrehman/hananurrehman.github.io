---
layout: ../../layouts/post.astro
title: Using Chatgpt to test a module
description: A detailed exploration of using ChatGPT for software testing, including real-world experiments, limitations, and insights on AI's current capabilities in test planning and automation.
dateFormatted: October 10, 2023
pubDate: 10 October 2023 10:00:00 GMT
tags: ["AI Testing", "ChatGPT", "Test Automation", "Software Testing"]
keywords:
  [
    "ChatGPT in testing",
    "AI test automation",
    "software testing with AI",
    "test planning with ChatGPT",
  ]
readingTime: 5
author: "Hanan Ur Rehman"
lastModified: "October 10, 2023"
---

With all the brouhaha about using Chatgpt in testing and AI replacing testers, I decided to leverage a test planning session to this.

I expected the AI to provide knowledge on how to test in a comprehensive format. Well, here's how it went:

The prompt I constructed contained all necessary scope points (requirements) of a scheduler module.

_<sub>(For some secrecy reasons I can't share the actual prompt)</sub>_

### In the first prompt

the AI told me that there are several "steps" to be followed where each step just contained a longer version of the short version of the requirements I gave it; e.g. "Any week day" became "Monday, Tuesday, Wednesday, Thursday and Friday". Subsequently, each step was actually the individual input fields of the schedule creation form. Which I'm guessing is due to the fact that the requirements I provided were formatted in a bulleted list, which means the AI took a bulleted list as a sequence rather than a list. As for the response, it assumed that the scheduler module can create back dated work orders and therefore suggested I do the same. Obviously this wasn't allowed in the module so I changed the prompt to include this validation. Also, it assumed I could combine 2 types of schedules into 1 and again, I had to correct it.

### In the second prompt

the AI suggested the same set of configurations but only this time it added reworded phrases of my corrections. At this point I realised I was asking for only configurations and not test cases, so I instead asked it that I need to "test" this module. Previously, I was asking it for test configurations.

### Now, for the third prompt

the only addition the AI did to the its response was asking me to verify that the results are correct and the scheduler is running at the correct frequency. What was previously a longer version of a short version got reformatted into some basic test case format.

### At the end

it told me I should check for errors as well, and that part was again some lengthy sentences of what I had just written in my prompt.

From my observations, Chatgpt was not able to tell me how to test the scheduler module but instead just provided me a repackaged or reworded response which is what I already new. If, while testing "manually" I were to keep the same numbered list in front of me, I would generated the same kind of shallow tests as the AI's response. Therefore, if I can do what the AI just did for me, why not do it on my own? Why should I waste time on reworking my prompts so that the AI can give me the correct answer?

I went from expecting knowledgeable answers to testing the AI itself.
