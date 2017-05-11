class MessageMailer < ActionMailer::Base
 
 default from: "ramia872000@gmail.com" 
 default to: "ramia872000@gmail.com"
 def new_message(message)
  @message = message
  mail subject: "Message from #{message.name}"
 end
end

#  class MessageMailer < ActionMailer::Base
#   default from: "mwmaki2@gmail.com"
#   default to: "mwmaki2@gmail.com"
#   def new_message(message)
#     @message = message
#     mail subject: "Message from #{message.name}"
#   end
# end
