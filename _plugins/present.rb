module PresentGenerator
  class Generator < Jekyll::Generator
    def generate(site)
      require 'date'
      talks = site.data['present']
      talks.each do |talk|
        talk['year'] = talk['date'][0,4]
        talk['month'] = talk['date'][5,6].to_i
        talk['month_abbrev'] = Date::ABBR_MONTHNAMES[talk['month']]
        fname = talk['file'].tr("/", "_")
        talk['uid'] = "#{talk['date']}-#{fname}"
      end
    end
  end
end
