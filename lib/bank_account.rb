class BankAccount
    attr_accessor :balance, :status
    attr_reader :name
    def initialize(name, balance=1000, status="open")
        @name = name
        @balance = balance
        @status = status
    end

    def deposit(balance)
        self.balance += balance
    end

    def display_balance
        "Your balance is $#{balance}."
    end
    
    def valid?
        if self.balance > 0  && self.status == "open"
            true
        else 
            false
        end
    end
    
    def close_account
        self.balance = 0
        self.status = "closed"
    end
    

end
