module StiUpload4
  module Uploadable
    def self.included(base)
      base.send :extend, ClassMethods
      #
      base.class_eval do
        has_many :uploads, as: :uploadable, dependent: :destroy
        accepts_nested_attributes_for :uploads, allow_destroy: true

        def upload_storage
          uploads.inject(0) { |total, file| total += file.data_file_size.to_i }
        end
      end
    end
    
    module ClassMethods
      def has_many_uploads(kind, class_name)
        has_many kind.to_sym, 
          as: :uploadable, 
          class_name: class_name, 
          dependent: :destroy
        accepts_nested_attributes_for kind.to_sym, allow_destroy: true
        
        self.instance_eval do
          define_method "#{ kind }_storage" do
            eval(kind.to_s).inject(0) { |total, file| total += file.data_file_size.to_i }
          end
        end
      end

      def has_one_upload(kind, class_name)
        has_one kind.to_sym, 
          as: :uploadable, 
          class_name: class_name,
          dependent: :destroy
        accepts_nested_attributes_for kind.to_sym, allow_destroy: true
      end
    end
  end # End module
end