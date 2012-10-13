#Description:
#   None
#
# Dependencies:
#   "coffee-script":"1.3.3"
#
# Configuration:
#   None
#
# Commands:
#   hubot program <program> allows you to addhubot commands on the fly
#
# Author:
#   jkarmel

cs = require "coffee-script"

module.exports = (robot) ->
  robot.respond /program (.+)/i, (res) ->
    code = res.match[1]
    cs.eval code, sandbox: {robot, console}
    res.send "new code added"
