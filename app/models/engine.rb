class Engine < ApplicationRecord
    
    belongs_to :runable, polymorphic: true

    before_validation :ensure_login_has_a_value

    private
      def ensure_login_has_a_value
        if login.nil?
          self.login = email unless email.blank?
        end
      end


    after_initialize do | engine |
        puts "You have initialized an object!"
    end

    after_find do | engine |
        puts "You have found an object!"
    end

    

end
