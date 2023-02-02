require 'bcrypt'

module Auth
  def create_hash_digest(passwrod)
    BCrypt::Password.create(passwrod)
  end

  def self.auth_user(users, username, password)
    currUser = nil
    users.each do |user|
      if user.username == username && user.password == password
        currUser = user
        break
      end
    end
    
    currUser
  end
end
