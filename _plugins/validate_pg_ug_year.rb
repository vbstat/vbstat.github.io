# _plugins/validate_pg_ug.rb

module Jekyll
    class ValidatePgUg < Liquid::Tag
      def initialize(tag_name, text, tokens)
        super
      end
  
      def render(context)
        page = context.registers[:page]
        ug = page['ug'].to_i
        pg = page['pg'].to_i
  
        if pg < ug
          raise "Error: PG year must be greater than or equal to UG year on page '#{page['title']}'."
        end
  
        return ''
      end
    end
  end
  
  Liquid::Template.register_tag('validate_pg_ug', Jekyll::ValidatePgUg)
  