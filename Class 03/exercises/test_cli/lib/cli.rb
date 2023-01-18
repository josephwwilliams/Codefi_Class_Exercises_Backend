class CLI
  def run
    User.seed
    system('clear')
    puts "Welcome to Test Cli"
    login_or_signup
    menu
    puts "Goodbye!"
  end

  def login_or_signup
    response = ''

    while response != 'login' && response != 'signup'
      puts "Would you like to login or signup?"
      response = gets.chomp
    end

    if response == 'login'
      login
    else
      signup
    end
  end

  def signup
    puts "Enter your username"
    username = gets.chomp
    puts "Enter your password"
    password = gets.chomp
    User.new(username, password)
    login
  end

  def login
    auth = false

    while auth != true
      puts "Please Login"
      puts "> What is your username?"
      username = gets.chomp
      puts "> What is your password?"
      password = gets.chomp

      if Auth.auth_user(User.all, username, password)
        puts "Login Successful"
        auth = true
      else
        puts "Attempt Failed Please Try Again"
      end
    end
  end

  def menu
    input = ''
    while input != '4'
      search = true
      puts "Please select a genre of book"
      puts "1) Travel"
      puts "2) Mystery"
      puts "3) Fiction"
      puts "4) Exit"
      input = gets.chomp
      if input == '1'
        input = "travel_2"
        elsif input == '2'
          input = "mystery_3"
        elsif input == "3"
          input = "fiction_10"
        elsif input != "4"
          search = false
          puts "Please enter a valid input"
      end
      break if input == '4'
      Scraper.scrape_books(input) if search 
    end
  end
end