
require 'slack-notifier'
require 'clockwork'

# You will be able to use a method to indicate time, such as minutes, if you require the gem below, so it is recommended to write it.

require 'active_support/time'

module Clockwork
  handler do |send|
    notifier = Slack::Notifier.new('https://hooks.slack.com/services/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')
    notifier.ping('Hello')
  end
  every(30.seconds, 'send')
end