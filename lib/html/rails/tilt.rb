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
          this.HTMLTemplates || (this.HTMLTemplates = {});
          this.HTMLTemplates['#{scope.logical_path}'] = function() { return '#{escape_javascript data}' }
        TEMPLATE
      end
    end
  end
end