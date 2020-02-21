require "tmpdir"


GITHUB_REPONAME = "idevqa/interval"
GITHUB_REPO_BRANCH = "gh-pages"
DEST = "public/."
IMG_DEST = "static/."

task default: %w[publish]

desc "Generate book static files by Hugo"
task :gen do
  system "hugo"
end

desc "Run Hugo server to test"
task :s do 
  system "hugo server -D"
end

desc "Generate and publish book to my Repo"
task :publish => [:gen] do
  Dir.mktmpdir do |tmp|
    cp_r DEST, tmp
    pwd = Dir.pwd
    Dir.chdir tmp
    
    system "git init"
    system "git checkout --orphan #{GITHUB_REPO_BRANCH}"    
    system "git add ."
    msg = "#{Time.now.utc}"
    system "git commit -am '#{msg}: Published'"
    system "git remote add origin git@github.com:#{GITHUB_REPONAME}.git"
    system "git push origin #{GITHUB_REPO_BRANCH} --force"

    Dir.chdir pwd
  end
end