require 'jekyll/scholar'

module Jekyll
  class Scholar

    class RefFormatTag < Liquid::Tag
      include Scholar::Utilities

      def initialize(tag_name, arguments, tokens)
        super

        @config = Scholar.defaults.dup
        @keys, arguments = split_arguments arguments

        optparse(arguments)
      end

      def render(context)
        set_context_to context
        keys.map { |key|
          #reference_tag bibliography[key]
          bibliography_tag bibliography[key], 1
        }.join("\n")
      end
    end

  end
end

Liquid::Template.register_tag('refformat', Jekyll::Scholar::RefFormatTag)
