require "spec_helper"

RSpec.describe RbcssRails::Template, type: :class do
  before do
    @sprockets = Sprockets::Environment.new.tap do |env|
      env.append_path(File.expand_path(File.dirname(__FILE__)))
    end
    @sprockets.register_mime_type "text/css", ".rb"
    @sprockets.register_engine '.rb', RbcssRails::Template
  end
  
  describe "rbcss processing" do
    it "generates css" do
      expect(@sprockets['teste.rb'].to_s).to eql "body{-webkit-animation:expand 1s linear;color:yellow;}"
    end
  end
end