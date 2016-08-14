module JekyllBindel
  class DataMunger < Jekyll::Generator

    #
    # Link global class data into class offering data (and vice-versa)
    #
    def munge_classes(site)
      class_data = site.data['classes']
      class_data['active'].each do |c|
        class_data[c]['offered'] = []
      end
      class_data['current'].each do |c|
        class_data[c['course']].update(c)
      end
      class_data['previous'].each do |c|
        course = class_data[c['course']]
        if c.key?('semester') and course.key?('offered') then
          course['offered'] << c
        end
      end
    end

    def munge_talks(site)
      require 'date'
      talks = site.data['present']
      talks.each do |talk|
        talk['year'] = talk['file'][0,4]
        talk['month'] = talk['file'][5,6].to_i
        talk['month_abbrev'] = Date::ABBR_MONTHNAMES[talk['month']]
        path, slash, tail = talk['file'].partition('/')
        head, dot, ext = talk['file'].partition('.')
        talk['id'] = path
        talk['url'] = "present/#{path}.#{ext}"
      end
    end

    def generate(site)
      munge_classes(site)
      munge_talks(site)
    end

  end
end
