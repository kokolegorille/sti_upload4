# This is the base class for STI Upload
#
#
# TIPS FOR STI LINK! use becomes when required in polymorphic path
#
# becomes(klass) public
# Returns an instance of the specified klass with the attributes of the current record. This is mostly useful in relation to
# single-table inheritance structures where you want a subclass to appear as the superclass. This can be used along with record
# identification in Action Pack to allow, say, Client &lt; Company to do something like render :partial =&gt; @client.becomes(Company)
# to render that instance using the companies/company partial instead of clients/client.
#
# Note: The new instance will share a link to the same attributes as the original class. So any change to the attributes in either
# instance will affect the other.
#
class Upload < ActiveRecord::Base
  belongs_to :uploadable, polymorphic: true

  has_attached_file :data, styles: {}

  validates :data, attachment_presence: true
  do_not_validate_attachment_file_type :data

  delegate :url, to: :data, allow_nil: true

  def to_s
    self.data_file_name
  end
end
