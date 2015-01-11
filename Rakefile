desc "Manage web site publication"

task :serve do
  sh "jekyll serve"
end

task :clean do
  sh "rm -rf _site"
end

task :check do
  head_sha = `git rev-parse HEAD`
  if File.file?(".rake-sha")
    head_sha0 = File.open(".rake-sha", "r") { |f| f.read }
  else
    head_sha0 = ""
  end
  File.open(".rake-sha", "w") { |f| f.write(head_sha) }
  if head_sha == head_sha0
    puts("Same hash")
  else
    puts("New hash")
  end
end
