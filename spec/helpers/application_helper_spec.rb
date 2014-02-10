require 'spec_helper'

describe ApplicationHelper do
  describe ".add_tag" do
    it "should generate content for div tag" do
      helper.add_tag(:div, class: 'example') { }.should eq("<div class=\"example\"></div>")
    end
  end
end
