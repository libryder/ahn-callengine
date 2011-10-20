# This dialplan relies on a call coming from Tropo. For asterisk,
# the dnis will be the variable "extension" instead of "dnid"

adhearsion {
  begin
    #ensure the dnis is only the last 10 digits
    dnis = dnid.to_s[-10,10]    
    provisioned_route = Route.where("dnis= ?", dnis).first
    
    #in case a route cannot be found
    if provisioned_route.nil?
      play "We're sorry. The number you have dialed cannot be reached."
    else
      ringto = provisioned_route.ringto
      play "Paint me like one of your pretty french girls." 
      dial("+1#{ringto}", :for => 30.seconds)    
    end

  rescue Exception => e
    puts e.inspect
    puts e.backtrace
  ensure
    Adhearsion::Hangup
  end
 
} 