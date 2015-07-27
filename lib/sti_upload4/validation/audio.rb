module StiUpload4
  module Validation
    module Audio
      def self.included(base)
        base.class_eval do
          validates_attachment :data, content_type: { content_type: [
            'application/mp3',
            'application/x-mp3',
            'audio/mpeg',
            'audio/mp3',
            'audio/basic',
            'audio/mid',
            'audio/x-aiff',
            'audio/x-wav',
            'audio/x-ms-wma',
            'audio/x-ms-wax',
            'audio/x-mpegurl',
            'audio/x-pn-realaudio',
            'audio/flac',
            # OGG
            'audio/ogg', 
            'video/ogg'
          ]}
        end
      end
    end # End module
  end
end