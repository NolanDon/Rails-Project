RSpec.describe User, type: :model do
  describe 'Validations' do
    it 'should create a User if all of the validations are true' do
    @user = User.new(name: "NOLAN",  email: "NOLANBOXILL@email.com", password: "123", password_confirmation: "123")
    @user.valid?
    expect(@user.errors).not_to include("can\'t be blank")
    end
    
    it 'should not create a User if their name is missing' do
    @user = User.new(name: nil, email: "NOLANBOXILL@email.com", password: "123DEF", password_confirmation: "123DEF")
    @user.valid?
    expect(@user.errors[:name]).to include("can\'t be blank")
    end
    
    it 'should not create a User if their email is missing' do
    @user = User.new(name: "NOLAN", password: "123DEF", password_confirmation: "123DEF")
    @user.valid?
    expect(@user.errors[:email]).to include("can\'t be blank")
    end
    
    it 'should not create a User if their email is not unique' do
    @user1 = User.new(name: "NOLAN", email: "NOLAN@gmail.com", password: "123DEF", password_confirmation: "123DEF")
    @user1.save
    @user2 = User.new(name: "JERRY", email: "NOLAN@gmail.com", password: "123DEF", password_confirmation: "123DEF")
    @user2.valid?
    expect(@user2.errors[:email]).to include("has already been taken")
    end
    it 'should not create a User if their passwords do not match' do
    @user = User.new(name: "NOLAN", email: "NOLAN@gmail.com", password: "123DEF", password_confirmation: "123DEFG")
    @user.valid?
    expect(@user.errors[:password_confirmation]).to include("doesn\'t match Password")
    end
    it 'should not create a User if there is no password' do
    @user = User.new(name: "NOLAN", email: "NOLAN@gmail.com")
    @user.valid?
    expect(@user.errors[:password_digest]).to include("can\'t be blank")
    end
    it 'should not create a User if there the password is too short' do
    @user = User.new(name: "NOLAN", email: "NOLAN@gmail.com", password: "123", password_confirmation: "123")
    @user.valid?
    expect(@user.errors[:password]).to include("is too short (minimum is 6 characters)")
    end
  end
  describe '.authenticate_with_credentials' do
    it 'should log the user in if the credentials are correct' do
      @user = User.new(name: "NOLAN", email: "NOLAN123@gmail.com", password: "123DEF", password_confirmation: "123DEF")
      @user.save!
      expect(User.authentication("NOLAN123@gmail.com", "123DEF")).to be_present
    end
    it 'should not log the user in if the email is wrong' do
      @user = User.new(name: "NOLAN", email: "NOLAN123@gmail.com", password: "123DEF", password_confirmation: "123DEF")
      @user.save!
      expect(User.authentication("NOLAN1234@gmail.com", "123DEF")).not_to be_present
    end
    it 'should not log the user in if the password is wrong' do
      @user = User.new(name: "NOLAN", email: "NOLAN123@gmail.com", password: "123DEF", password_confirmation: "123DEF")
      @user.save!
      expect(User.authentication("NOLAN123@gmail.com", "123DEFG")).not_to be_present
    end
    it 'should log the user in even if the email contains spaces' do
      @user = User.new(name: "NOLAN", email: "NOLAN1234@gmail.com", password: "123DEF", password_confirmation: "123DEF")
      @user.save!
      expect(User.authentication("  NOLAN1234@gmail.com   ", "123DEF")).to be_present
    end
    it 'should log the user in even if the email is typed with a different case' do
      @user = User.new(name: "NOLAN", email: "NOLAN1234@gmail.com", password: "123DEF", password_confirmation: "123DEF")
      @user.save!
      expect(User.authentication("  NOLAN1234@gmail.com   ", "123DEF")).to be_present
    end
  end
end