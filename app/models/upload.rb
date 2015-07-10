class Upload < ActiveRecord::Base
  belongs_to :uploadable, polymorphic: true
  
  has_attached_file :data, styles: {}
  
  validates :data, attachment_presence: true
  do_not_validate_attachment_file_type :data
  
  def to_s
    self.data_file_name
  end
end
