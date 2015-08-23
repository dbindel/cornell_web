module Tagger
  class Generator < Jekyll::Generator
    def generate(site)
      require 'set'
      require 'date'
      tags = Set.new()
      year_tags = Hash.new()
      talks = site.data['present']
      talks.each do |talk|
        talk['year'] = talk['date'][0,4]
        talk['month'] = talk['date'][5,6].to_i
        talk['month_abbrev'] = Date::ABBR_MONTHNAMES[talk['month']]
        fname = talk['file'].tr("/", "_")
        talk['uid'] = "#{talk['date']}-#{fname}"
        tags.merge(talk['tags'])
        if not year_tags[talk['year']]
          year_tags[talk['year']] = Set.new()
        end
        year_tags[talk['year']].merge(talk['tags'])
      end
      year_tags.each {|k,v| year_tags[k] = v.to_a.sort }
      puts(year_tags)
      site.data['tags'] = tags.to_a.sort
      site.data['year_tags'] = year_tags
    end
  end
end
