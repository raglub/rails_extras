module ApplicationHelper
  def add_tag(name=nil, options={}, &block)
    if block_given?
      if block.arity == 1
        result = ActiveSupport::SafeBuffer.new
        def result.space(text)
          self << text
          self << ' '
        end
        def result.add(text)
          self << text
        end
        block.call(result)
        if name
          content_tag(name, options) do
            result
          end
        else
          result
        end
      else
        if name
          content_tag(name, options) do
            block.call
          end
        else
          block.call
        end
      end
    end
  end
end
