desc "Manage web site publication"

# Settings
#dest = "/mnt/MyWeb"  # Destination
dest = "cslinux:/people/dsb253"

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
    file = talk['file']
    path, slash, tail = talk['file'].partition('/')
    head, dot, ext = talk['file'].partition('.')
    url = "present/#{path}.#{ext}"
    sh "ln -s #{Dir.home}/work/present/#{file} _site/#{url}"
  end
end

task :serve do
  sh "jekyll serve"
end

task :clean do
  sh "rm -rf _site"
  sh "rm -f .rake-sha"
end

task :papersync do
  sh "chmod a+r papers/*"
  sh "rsync -avz -e 'ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null' --progress /Users/dbindel/work/web/home/papers/* bindel:work/web/home/papers/"
end

task :cvbuild => [:build] do
  sh "(cd _site/cv ; make ; make clean)"
end

task :cvlook => [:cvbuild] do
  sh "open _site/cv/cv.pdf"
end

task :rebuild do
  sh "jekyll build"
end

task :build do
  #if check_hash()
  #  puts("Already built")
  #else
  sh "jekyll build"
  update_present()
  #end
end

task :deploy => [:build, :cvbuild] do
  sh "rsync -avzL _site/ #{dest}"
end
