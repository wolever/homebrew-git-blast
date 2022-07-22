# Homebrew formula for git-blast
# Install with:
#     $ brew install wolever/git-blast/git-blast

class GitBlast < Formula
  desc "git-blast: show git branches sorted by last commit date Raw"
  homepage "https://github.com/wolever/git-blast/"
  url "https://github.com/wolever/git-blast/archive/v0.4.tar.gz"
  sha256 "e439ed9b62a2f9576cb135c8c2ee822d97480d53915a631621715d576d75760e"

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
