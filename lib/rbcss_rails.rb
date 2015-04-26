require "rbcss_rails/engine"
require "tilt"

module RbcssRails
  class Template < ::Tilt::Template
    self.default_mime_type = "text/css"
    
    def prepare
      @data = "require 'css';$LOAD_PATH.unshift(File.dirname(File.expand_path(@file)));css = CSS::Style.new do\n#{@data}\nend;css.to_s"
    end

    def evaluate(scope, locals, &block)
       eval @data
    end
  end
end
