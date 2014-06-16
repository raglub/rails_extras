class RailsExtras
  module RSpec
    module Support
      module WaitForAjax

        def self.wait_for_ajax
          counter = 0
          while page.execute_script("return $.active").to_i > 0
            counter += 1
            sleep(0.1)
            raise "AJAX request took longer than 3 seconds." if counter >= 30
          end
        end

      end
    end
  end
end
