const path=require("path");delete process.env.ELECTRON_RUN_AS_NODE,process.env.VSCODE_DEV?(process.env.VSCODE_INJECT_NODE_MODULE_LOOKUP_PATH=process.env.VSCODE_INJECT_NODE_MODULE_LOOKUP_PATH||path.join(__dirname,"..","remote","node_modules"),require("./bootstrap-node").injectNodeModuleLookupPath(process.env.VSCODE_INJECT_NODE_MODULE_LOOKUP_PATH)):delete process.env.VSCODE_INJECT_NODE_MODULE_LOOKUP_PATH,require("./bootstrap-amd").load("vs/server/node/server.cli");

//# sourceMappingURL=https://ticino.blob.core.windows.net/sourcemaps/b5205cc8eb4fbaa726835538cd82372cc0222d43/core/server-cli.js.map
