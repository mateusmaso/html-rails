module Html
  module Rails
	  class Engine < ::Rails::Engine

	  	initializer "sprockets.html", :after => "sprockets.environment", :group => :all do |app|
	  		next if app.assets
	  		app.assets.register_engine(".html", Tilt)
	  	end

	  end
	end
end