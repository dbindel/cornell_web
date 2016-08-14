module ClassesGenerator
  class Generator < Jekyll::Generator
    def generate(site)
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
  end
end
