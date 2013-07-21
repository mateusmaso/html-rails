module Html
  module Rails
	  class Engine < ::Rails::Engine
	    config.before_initialize do |app|
	      Sprockets.register_engine('.html', Tilt)
	    end
	  end
	end
end