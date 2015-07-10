FactoryGirl.define do
  factory :upload do
   data_file_name { Rails.root.join('spec/fixtures/sample_image.jpg') }
   data_content_type { 'image/jpg' }
   data_file_size { 1024 }
  end
end
