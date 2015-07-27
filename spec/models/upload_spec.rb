require 'rails_helper'

RSpec.describe Upload, type: :model do
  let(:upload) { create(:upload) }
  subject { upload }
  
  context "In general" do
    it "has a valid factory" do
      expect(subject).to be_valid
    end
    
    it "is not valid without attachment" do
      subject.data = nil
      expect(subject).not_to be_valid
    end
  end
  
  context "Validation" do
    let(:sample_audio) { Rails.root.join('spec/fixtures/sample_audio.ogg') }
    let(:sample_image) { Rails.root.join('spec/fixtures/sample_image.jpg') }
    let(:sample_movie) { Rails.root.join('spec/fixtures/sample_movie.mp4') }
    let(:sample_document) { Rails.root.join('spec/fixtures/sample_document.jpg') }
    #
    let(:sample_avi) { Rails.root.join('spec/fixtures/sample_avi.avi') }
    let(:sample_wmv) { Rails.root.join('spec/fixtures/sample_wmv.wmv') }
    let(:sample_ogv) { Rails.root.join('spec/fixtures/sample_ogv.ogv') }
    let(:sample_webm) { Rails.root.join('spec/fixtures/sample_webm.webm') }
    let(:sample_3gp) { Rails.root.join('spec/fixtures/sample_3gp.3gp') }
    let(:sample_flv) { Rails.root.join('spec/fixtures/sample_flv.flv') }
    #
    let(:sample_mp3) { Rails.root.join('spec/fixtures/sample_mp3.mp3') }
    let(:sample_svg) { Rails.root.join('spec/fixtures/sample_svg.svg') }
    
    # AUDIO VALIDATIONS
    context "Audio validations" do
      class AudioDummyClass < Upload
        include StiUpload4::Validation::Audio
      end

      it "is valid with an audio file" do
        instance = AudioDummyClass.new(
          data_file_name: sample_mp3,
          data_content_type: 'audio/mp3',
          data_file_size: 1024
        )
        expect(instance).to be_valid
      end
            
      it "is valid with an audio file" do
        instance = AudioDummyClass.new(
          data_file_name: sample_audio,
          data_content_type: 'audio/ogg',
          data_file_size: 1024
        )
        expect(instance).to be_valid
      end
      
      it "is not valid without an audio file" do
        instance = AudioDummyClass.new(
          data_file_name: sample_image,
          data_content_type: 'image/jpg',
          data_file_size: 1024
        )
        expect(instance).not_to be_valid
      end
    end
    
    # IMAGE VALIDATIONS
    context "Image validations" do
      class ImageDummyClass < Upload
        include StiUpload4::Validation::Image
      end

      it "is valid with an image file" do
        instance = ImageDummyClass.new(
          data_file_name: sample_image,
          data_content_type: 'image/jpg',
          data_file_size: 1024
        )
        expect(instance).to be_valid
      end

      it "is valid with a svg file" do
        instance = ImageDummyClass.new(
          data_file_name: sample_svg,
          data_content_type: 'image/svg+xml',
          data_file_size: 1024
        )
        expect(instance).to be_valid
      end

      it "is not valid without an image file" do
        instance = ImageDummyClass.new(
          data_file_name: sample_audio,
          data_content_type: 'audio/ogg',
          data_file_size: 1024
        )
        expect(instance).not_to be_valid
      end
    end
    
    # VIDEO VALIDATIONS
    context "Video validations" do
      class VideoDummyClass < Upload
        include StiUpload4::Validation::Video
      end

      it "is valid with a video file" do
        instance = VideoDummyClass.new(
          data_file_name: sample_movie,
          data_content_type: 'video/mp4',
          data_file_size: 1024
        )
        expect(instance).to be_valid
      end
      
      it "is valid with an avi file" do
        instance = VideoDummyClass.new(
          data_file_name: sample_avi,
          data_content_type: 'video/x-msvideo',
          data_file_size: 1024
        )
        expect(instance).to be_valid
      end
      
      it "is valid with a wmv file" do
        instance = VideoDummyClass.new(
          data_file_name: sample_wmv,
          data_content_type: 'video/x-ms-wmv',
          data_file_size: 1024
        )
        expect(instance).to be_valid
      end
      
      it "is valid with an ogv file" do
        instance = VideoDummyClass.new(
          data_file_name: sample_ogv,
          data_content_type: 'video/ogg',
          data_file_size: 1024
        )
        expect(instance).to be_valid
      end
      
      it "is valid with a webm file" do
        instance = VideoDummyClass.new(
          data_file_name: sample_webm,
          data_content_type: 'video/webm',
          data_file_size: 1024
        )
        expect(instance).to be_valid
      end
      
      it "is valid with a 3gp file" do
        instance = VideoDummyClass.new(
          data_file_name: sample_3gp,
          data_content_type: 'video/3gpp',
          data_file_size: 1024
        )
        expect(instance).to be_valid
      end
      
      it "is valid with a flv file" do
        instance = VideoDummyClass.new(
          data_file_name: sample_flv,
          data_content_type: 'video/x-flv',
          data_file_size: 1024
        )
        expect(instance).to be_valid
      end

      it "is not valid without a video file" do
        instance = VideoDummyClass.new(
          data_file_name: sample_audio,
          data_content_type: 'audio/ogg',
          data_file_size: 1024
        )
        expect(instance).not_to be_valid
      end
    end
    
    # DOCUMENT VALIDATIONS
    context "Document validations" do
      class DocumentDummyClass < Upload
        include StiUpload4::Validation::Document
      end

      it "is valid with a document file" do
        instance = DocumentDummyClass.new(
          data_file_name: sample_document,
          data_content_type: 'application/msword',
          data_file_size: 1024
        )
        expect(instance).to be_valid
      end

      it "is not valid without a document file" do
        instance = DocumentDummyClass.new(
          data_file_name: sample_audio,
          data_content_type: 'audio/ogg',
          data_file_size: 1024
        )
        expect(instance).not_to be_valid
      end
    end
    
  end # End context Validation

end
