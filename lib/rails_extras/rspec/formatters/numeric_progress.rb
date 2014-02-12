require "rspec/core/formatters/base_text_formatter"

class RailsExtras
  module RSpec
    module Formatters
      class NumericProgress < ::RSpec::Core::Formatters::BaseTextFormatter
        def initialize(output)
          @start_time = Time.now
          super(output)
        end

        def example_passed(example)
          super(example)
          print_numeric_progress
        end

        def example_pending(example)
          super(example)
          print_numeric_progress
        end

        def example_failed(example)
          super(example)
          #output.print failure_color("FAILED: #{example.full_description}\n")
          print_numeric_progress
        end

        def start_dump
          super()
          output.puts
        end

        private

        def print_numeric_progress
          seconds = (Time.now - @start_time).to_i
          minutes = seconds / 60
          seconds = seconds % 60
          examples_count = @examples.size
          failed_count = @failed_examples.size
          pending_count = @pending_examples.size
          success_count = examples_count - failed_count - pending_count

          output.print success_color("   Success: #{success_count}")
          output.print failure_color("   Failed: #{failed_count}")
          output.print pending_color("   Pending: #{pending_count}")
          output.print default_color("   Total: #{examples_count} / #{@example_count}")
          output.print default_color("   Duration: #{minutes}:#{seconds} min:sec\r")
        end
      end
    end
  end
end
