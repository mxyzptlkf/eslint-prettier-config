// ----------------------------------------------------------------------------
// ESLint Configuration
// Author: mxyzptlk
// Role: Software Developer
// Purpose: Maintain code quality by detecting and fixing issues using ESLint.
// Highlights:
// - Enforces coding standards and best practices.
// - Prevents common bugs and potential pitfalls.
// - Works seamlessly with Prettier to avoid formatting conflicts.
// ----------------------------------------------------------------------------

import globals from "globals";
import eslintConfigPrettier from "eslint-config-prettier";

/** @type {import('eslint').Linter.Config[]} */
export default [
    {
        files: ["**/*.{js,mjs,cjs,ts,jsx,tsx}"],
        ignores: [],
        languageOptions: { globals: globals.browser },
        // plugins: [
        //     "prettier"
        // ],
        rules: {
            "no-unused-vars": 0,
        }
    }
];