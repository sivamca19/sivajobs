module Sass
  module Rails
    module Helpers
      protected
      def public_path(asset, kind)
        path = options[:custom][:resolver].public_path(asset, kind.pluralize)
        path = ENV['PRODUCTION_URI'] + path if ENV['PRODUCTION_URI']
        path
      end
    end
  end
end
