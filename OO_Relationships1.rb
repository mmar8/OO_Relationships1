class User
  def initialize(name, bio, age, password)
    @name = name
    @bio = bio
    @age = age
    @password = password
    @authenticator = Authenticator.new(password)
  end

  def profile
    "#{@name}, born in #{@birth_year}: #{@bio}"
  end

  def authenticate(candidate_password)
    @authenticator.authenticate(candidate_password)
  end

  private

  def birth_year
    Time.new.year - @age
  end
end

class Authenticator
  def initialize(password)
     @password = password
  end
  def authenticate(candidate_password)
    candidate_password == @password
  end
end

user1 = User.new("Maria", "student", 18, "qwerty")
