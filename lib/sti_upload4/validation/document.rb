module StiUpload4
  module Validation
    module Document
      def self.included(base)
        base.class_eval do
          validates_attachment :data, content_type: { content_type: [
            "application/zip", 
            "application/x-zip", 
            "application/x-zip-compressed", 
            "application/pdf", 
            "application/x-pdf",
            
            "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", 
            "application/vnd.ms-excel", 
            "application/msexcel", 
            "application/x-msexcel", 
            "application/x-ms-excel", 
            "application/x-excel", 
            "application/x-dos_ms_excel", 
            "application/xls", 
            "application/x-xls",
            "application/msword", 
            "application/vnd.openxmlformats-officedocument.wordprocessingml.document",
            "application/vnd.ms-powerpoint",
            
            "text/plain", "text/csv"
          ]}
        end
      end
    end # End module
  end
end