// @ts-check
import { defineConfig } from "astro/config";

// https://astro.build/config
export default defineConfig({
  server: {
    host: "127.0.0.1",
  },
  i18n: {
    locales: ["fr", "en"],
    defaultLocale: "en",
  },
});
