require 'tilt'

module Html
  module Rails
    class Tilt < Tilt::Template
      include ActionView::Helpers::JavaScriptHelper

      def self.default_mime_type
        'application/javascript'
      end

      def prepare

      end

      def evaluate(scope, locals, &block)
        <<-TEMPLATE
          this.HTMLRails || (this.HTMLRails = {});
          this.HTMLRails[#{scope.logical_path}] = '#{escape_javascript data}'
        TEMPLATE
      end

    end
  end
end