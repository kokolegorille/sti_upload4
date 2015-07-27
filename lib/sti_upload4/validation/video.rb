module StiUpload4
  module Validation
    module Video
      def self.included(base)
        base.class_eval do
          validates_attachment :data, content_type: { content_type: [
            'video/webm',
            'video/x-flv',
            'video/mpeg',
            'video/mp4',
            'video/ogg',
            'video/webm',
            'video/3gpp',
            'video/avi',
            'video/quicktime',
            'video/x-la-asf',
            'video/x-ms-asf',
            'video/x-msvideo',
            'video/x-ms-wmv',
            'video/x-sgi-movie',
            'application/x-flash-video',
            'application/x-shockwave-flash'
          ]}
        end
      end
    end # End module
  end
end