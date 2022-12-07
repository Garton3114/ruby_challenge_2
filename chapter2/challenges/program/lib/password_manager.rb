class PasswordManager    
    def initialize
        @password_manager = {
        }
    end
    
    def add(service, password)
        if (password.length >= 8) && (password =~ (/[!@$%&]/))
        @password_manager[service] = password
        end
    end
    
    def password_for(service)
        @password_manager.fetch(service)
    end
    
    def services
        @password_manager.keys
    end
end
