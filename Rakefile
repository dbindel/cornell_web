desc "Manage web site publication"

# Settings
dest = "/mnt/MyWeb"  # Destination

# === Check hash version

def get_hash
  File.file?(".rake-sha") ? File.open(".rake-sha", "r") { |f| f.read } : ""
end

def set_hash
  head_sha = `git rev-parse HEAD`
  File.open(".rake-sha", "w") { |f| f.write(head_sha) }
  head_sha
end

def check_hash
  sha0 = get_hash()
  sha1 = set_hash()
  sha0 == sha1
end

# ===

def update_present
  require 'yaml'
  talks = YAML.load_file("_data/present.yml")
  sh "rm -rf _site/present"
  sh "mkdir -p _site/present"
  talks.each do |talk|
    fname = "#{talk['date']}-#{talk['file']}"
    fout = fname.sub('/', '_')
    sh "ln -s #{Dir.home}/work/present/#{fname} _site/present/#{fout}"
  end
end

task :serve do
  sh "jekyll serve"
end

task :clean do
  sh "rm -rf _site"
  sh "rm -f .rake-sha"
end

task :build do
  if check_hash()
    puts("Already built")
  else
    sh "jekyll build"
    update_present()
  end
end

task :deploy => [:build] do
  sh "rsync -avzL _site/ #{dest}"
end
