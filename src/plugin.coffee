# Description:
#   Hubot script for interacting with sshchat chatter
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Author:
#   jazzychad
#   Chad Etzel

module.exports = (robot) ->
  robot.hear /^(exit|quit|leave|part|logout)$/i, (msg) ->
    msg.reply("Try /exit")

  robot.hear /^(help|about)$/i, (msg) ->
    match = msg.match[1].toLowerCase()
    msg.reply("Try /" + match)

  robot.hear /^(ls|rm|cat|cd|sudo|sh|bash)/, (msg) ->
    msg.reply("Pardon me, but this is a chat room... not a shell")
