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
      lookup = {}
      talks.each do |talk|
        talk['year'] = talk['file'][0,4]
        talk['month'] = talk['file'][5,6].to_i
        talk['month_abbrev'] = Date::ABBR_MONTHNAMES[talk['month']]
        path, slash, tail = talk['file'].partition('/')
        head, dot, ext = talk['file'].partition('.')
        talk['id'] = path
        if talk.has_key? 'which' then
          which = talk['which']
          talk['url'] = "present/#{path}_#{which}.#{ext}"
        else
          talk['url'] = "present/#{path}.#{ext}"
        end
        lookup[path] = talk
      end
      site.data['present_dict'] = lookup
    end

    def munge_blurbs(site)
      blurbs = site.collections['blurbs']
      lookup = {}
      blurbs.docs.each do |blurb|
        head = blurb.cleaned_relative_path[1..-1]
        lookup[head] = blurb
      end
      site.data['blurbs_dict'] = lookup
    end

    def generate(site)
      munge_classes(site)
      munge_talks(site)
      munge_blurbs(site)
    end

  end
end
