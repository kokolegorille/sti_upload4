require 'rails_helper'

RSpec.describe StiUpload4::Uploadable do
  context "in general" do
    class HasManySti < Upload
    end
    
    class HasOneSti < Upload
    end
  
    # Dummy class must inherit from a valid ActiveRecord::Base
    class DummyClass < Upload
      include StiUpload4::Uploadable
      has_many_uploads 'has_many_stis', 'HasManySti'
      has_one_upload 'has_one_sti', 'HasOneSti'
    end
    
    let(:dummy) { DummyClass.new }
    subject { dummy }
    
    it "has many has_many_stis" do
      expect(subject).to respond_to(:has_many_stis)
      expect(subject.has_many_stis.build.class).to eq HasManySti
    end
    
    it "has one has_one_sti" do
      expect(subject).to respond_to(:has_one_sti)
      expect(subject.build_has_one_sti.class).to eq HasOneSti
    end
  end # End context
end
