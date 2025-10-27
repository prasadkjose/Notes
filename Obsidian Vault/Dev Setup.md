# VSCodium

> [!note]
> When we [Microsoft] build Visual Studio Code, we do exactly this. We clone the vscode repository, we lay down a customized product.json that has Microsoft specific functionality (telemetry, gallery, logo, etc.), and then produce a build that we release under our license.
> -- https://vscodium.com/#why-does-this-exist

> [!note] This is installed by the linux_setup script

# PNPM
https://pnpm.io/motivation
-  **Alternative to npm**, focused on speed and disk efficiency.
- Commands are mostly the same as npm:
    `pnpm add <package> pnpm install pnpm run <script>`
- Key differences:
	1. **Uses a global content-addressable store** for packages — avoids duplicating dependencies across projects.
	2. **Creates “symlinks”** in `node_modules` instead of copying everything, making installs faster and saving disk space.
	3. Enforces **strict node_modules resolution**, which can prevent some dependency bugs.