module Html
  module Rails
	  class Engine < ::Rails::Engine

	  	initializer "sprockets.tmpl", :after => "sprockets.environment", :group => :all do |app|
	  		next if app.assets
	  		app.assets.register_engine(".tmpl", Tilt)
	  	end

	  end
	end
end