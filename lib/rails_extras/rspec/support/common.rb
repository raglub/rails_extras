class RailsExtras
  module RSpec
    module Support
      module Common

        def self.upload_file(path, options={})
          filename = path.split('/').last.to_s.force_encoding("UTF-8")
          tempfile = File.new(Rails.root.join('spec', 'files', path))
          hash = {tempfile: tempfile, filename: filename}
          hash[:original_filename] = options[:original_filename] if options[:original_filename]
          hash[:content_type] = options[:content_type] || 'text/plain'
          hash[:headers] = options[:headers] if options[:headers]

          ::ActionDispatch::Http::UploadedFile.new(hash)
        end

        def upload_file(path, options={})
          ::RailsExtras::RSpec::Support::Common.upload_file(path, options)
        end
      end
    end
  end
end
