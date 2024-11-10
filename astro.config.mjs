import { defineConfig } from "astro/config";

import tailwind from "@astrojs/tailwind";

// https://astro.build/config
export default defineConfig({
	integrations: [tailwind()],
	site: "https://hananurrehman.github.io",
	trailingSlash: "never"
});
