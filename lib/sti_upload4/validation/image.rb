module StiUpload4
  module Validation
    module Image
      def self.included(base)
        base.class_eval do
          validates_attachment :data, content_type: { content_type: [
            'image/jpg', 
            'image/jpeg', 
            'image/pjpeg', 
            'image/gif', 
            'image/png', 
            'image/x-png',
            'image/tiff',
            'image/vnd.microsoft.icon',
            'image/svg+xml'
          ]}
        end
      end
    end # End module
  end
end