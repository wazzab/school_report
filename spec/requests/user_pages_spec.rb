require 'spec_helper'

describe "UserPages" do
  subject {page}
  
  describe "Registration page" do
    before {visit registration_path}
    it {should have_selector('h1', text: 'Registration')}
    it {should have_selector('title', text: full_title('Registration'))}
  end
end
