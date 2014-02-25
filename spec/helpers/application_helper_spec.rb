require 'spec_helper'

shared_examples_for 'not_authorize_for' do |users, options|
  users.each do |user|
    it 'raises error if asked to consume invalid event' do
      yield
      ddd.should eq(43)
    end
  end
end

describe ApplicationHelper do
  def self.it_should_not_authorize_for(object, users=[], options={}, &block)
    users.each do |user|
      object.it "should not authorize for #{user}" do
        block.call
      end
    end
  end


  describe ".add_tag" do
    it "should generate content for div tag with empty content" do
      helper.add_tag(:div, class: 'example') { }.should eq("<div class=\"example\"></div>")
    end

    it "should generate content for div tag with one element" do
      helper.add_tag(:div, class: 'example') { 'Example' }.should eq("<div class=\"example\">Example</div>")
    end

    it "should generate content for div tag with a several elements" do
      helper.add_tag(:div, class: 'example') do |tag|
        tag.space "Example1"
        tag << "Example2"
      end.should eq("<div class=\"example\">Example1 Example2</div>")
    end

    #it_should_not_authorize_for self, [:no_logged, :foreign] do
    #end

    #it_behaves_like 'not_authorize_for', [:no_logged, :foreign], auth: :basic do
    #  value = 100
    #end
  end
end
