module Jekyll
    module DistFilter
      def dist(input)
        input.gsub(/<!--(.*?)-->/m, "")
      end
    end
  end
  
  Liquid::Template.register_filter(Jekyll::DistFilter)