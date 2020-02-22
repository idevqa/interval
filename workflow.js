const {execSync} = require('child_process')
execSync("rake ready sys='ubuntu'")
execSync('rake')
