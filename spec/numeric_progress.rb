require "rspec/core/formatters/base_text_formatter"

class NumericProgress < RSpec::Core::Formatters::BaseTextFormatter
  def initialize(output)
    @actual_example_count = 0
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
    print_numeric_progress
  end

  def start_dump
    super()
    output.puts
  end

  private

    def print_numeric_progress
      @actual_example_count += 1
      output.print success_color("   Success: #{@actual_example_count - @failure_count - @pending_count}")
      output.print failure_color("   Failure: #{@failure_count}")
      output.print pending_color("   Pending: #{@pending_count}")
      output.print default_color("   Total: #{@actual_example_count} / #{@example_count}\r")
    end
end
