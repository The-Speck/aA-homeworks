require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) do
    FactoryBot.build(:user)
  end

  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_length_of(:password).is_at_least(6) }


  it 'should test password equals password digest' do
    expect(user.is_password?(user.password)).to be true
  end

  it 'should assign a new session token' do
    token = user.reset_session_token!.dup
    expect(user.reset_session_token!).to_not eq(token)
  end

  it 'should find by credentials' do
    expect(User.find_by_credentials(user.email, user.password)).to eql(user)
  end
end
