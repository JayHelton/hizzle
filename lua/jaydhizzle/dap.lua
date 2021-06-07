local dap = require('dap')

require('dap.ext.vscode').load_launchjs()
dap.set_log_level('TRACE')
dap.adapters.node = {
  type = 'executable',
  command = 'node',
  args = {os.getenv('HOME') .. '/dev/microsoft/vscode-node-debug2/out/src/nodeDebug.js'},
}
dap.adapters.javascript = {
	type = 'executable';
	command = 'node';
  args = {os.getenv('HOME') .. '/packages/vscode-node-debug2/out/src/nodeDebug.js'},
}
