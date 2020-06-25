require "pry"
class Transfer
  # your code here
  attr_accessor :sender, :receiver, :status, :amount
  def initialize(sender,receiver, status="pending",amount)
    @sender = sender
    @receiver = receiver
    @status = status
    @amount = amount
  end
  
  def valid?
      if sender.valid? && receiver.valid?
        true
      else
        false
      end
  end

  def execute_transaction
    if self.status == "pending" && self.receiver.status == "open" && self.sender.status == "open"# && !sender.balance < @amount 
      puts sender.balance
      puts @amount
      puts self.amount
      puts receiver.balance
      puts sender.status
      puts receiver.status
      if sender.balance >= self.amount
        sender.balance -= @amount
        receiver.balance += @amount
        self.status = "complete"
      else
        self.status = "rejected"
        return "Transaction rejected. Please check your account balance."
      end
      
      #sender.balance -= @amount
      #if sender.balance > 0
        #return "Transaction rejected. Please check your account balance."
      #end
      #receiver.balance += @amount
      #self.status = "complete"
    end
    #self.status = "rejected"
    #return "Transaction rejected. Please check your account balance."
    #else rejection message
  end
  
  
end
