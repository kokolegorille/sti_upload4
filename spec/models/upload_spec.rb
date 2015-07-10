require 'rails_helper'

RSpec.describe Upload, type: :model do
  let(:upload) { create(:upload) }
  subject { upload }
  
  context "in general" do
    it "has a valid factory" do
      expect(subject).to be_valid
    end
    
    it "is not valid without attachment" do
      subject.data = nil
      expect(subject).not_to be_valid
    end
  end
end
