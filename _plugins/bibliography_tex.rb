require 'jekyll/scholar'

module Jekyll
  class Scholar

    class BibliographyPlainTag < Liquid::Tag
      include Scholar::Utilities

      def initialize(tag_name, arguments, tokens)
        super

        @config = Scholar.defaults.dup

        optparse(arguments)
      end

      def render(context)
        set_context_to context

        # Add bibtex files to dependency tree
        if context.registers[:page] and context.registers[:page].has_key? "path"
          bibtex_paths.each do |bibtex_path|
            site.regenerator.add_dependency(
              site.in_source_dir(context.registers[:page]["path"]),
              bibtex_path
            )
          end
        end

        items = entries

        if cited_only?
          items = if skip_sort?
            cited_references.uniq.map do |key|
              items.detect { |e| e.key == key }
            end
          else
            entries.select do |e|
              cited_references.include? e.key
            end
          end

          # See #90
          cited_keys.clear
        end

        items = items[offset..max] if limit_entries?
        bibliography = render_items(items)
        bibliography
      end

      def render_items(items)
        bibliography = items.each_with_index.map { |entry, index|
          reference = bibliography_tag(entry, index + 1)
        }.join("\n")
        bibliography
      end

    end

  end
end

Liquid::Template.register_tag('bibliography_plain', Jekyll::Scholar::BibliographyPlainTag)
