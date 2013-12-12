require 'spec_helper'

describe Admin do
  it 'should have an email' do
    admin = Admin.new(email: 'test@example.com')
    admin.email.should == 'test@example.com'
  end
end