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
  end
end

task :tidy do
  `find _site -name \"*.html\" -exec tidy {} \;`
end

task :deploy => [:build, :tidy] do
  sh "rsync -avz _site/ #{dest}"
end
