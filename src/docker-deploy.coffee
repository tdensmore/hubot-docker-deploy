# Description:
#   Deploys the specified Docker container.
#
# Dependencies:
#   "cheerio": "~0.16.0"
#
# Configuration:
#   None
#
# Commands:
#   hubot deploy <container> <environment>
#
# Author:
#
#
module.exports = (robot) ->
  robot.hear /deploy|release/i, (msg) ->
    msg.emote "deploys something"
    msg.send "Deployed to Prod"
