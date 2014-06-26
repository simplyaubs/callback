require 'spec_helper'

describe User do

  describe 'validations' do

    before do
      @user = User.new(password: "password", email: "aubrey@example.com")
      expect(@user).to be_valid
    end

    it 'email cannot be blank' do
      @user.email = ""
      expect(@user).to_not be_valid
    end

    it 'password cannot be blank' do
      @user.password = ""
      @user.password_digest = ""
      expect(@user).to_not be_valid
    end

    it 'password must be at least 8 characters' do
      @user.password = "1234567"
      expect(@user).to_not be_valid
    end

    it 'email must be unique' do
      @user = User.create(password: "password", email: "aubrey@example.com")
      expect(@user).to be_valid
      @user2 = User.create(password: "password123", email: "aubrey@example.com")
      expect(@user2).to_not be_valid
    end

  end

end