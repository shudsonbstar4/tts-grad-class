def login(user=nil) #optional argument if no user is passed in
  u = user || create(:user) #if user has no value, then create a new user; else, set var u to value of argument
  visit new_user_session_path #go to the path for login page to start test
  within("#new_user") do
    fill_in 'Email', :with => u.email
    fill_in 'Password', :with => '12345678' #password hardcoded because saved as hash in db???
    click_button 'Log in'
  end
end