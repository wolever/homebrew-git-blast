# Homebrew formula for git-blast
# Install with:
#     $ brew install wolever/git-blast/git-blast

class GitBlast < Formula
  desc "git-blast: show git branches sorted by last commit date Raw"
  homepage "https://github.com/wolever/git-blast/"
  url "https://github.com/wolever/git-blast/archive/v0.2.tar.gz"
  sha256 "1b0fc43819e77bd935ad8abb6425ad0456eca999133375d38cc3ce171d6fc811"

  def install
    bin.install "./git-blast"
  end

  test do
    system "git", "init"
    touch "foo"
    system "git", "add", "foo"
    system "git", "commit", "-m", "initial"
    system bin/"git-blast"
  end
end
