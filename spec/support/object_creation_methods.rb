def create_user
  user = User.create!(email: 'keri@example.com', password: 'password')
end