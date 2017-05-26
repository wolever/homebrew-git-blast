# Homebrew formula for git-blast
# Install with:
#     $ brew install wolever/git-blast/git-blast

class GitBlast < Formula
  desc "git-blast: show git branches sorted by last commit date Raw"
  homepage "https://github.com/wolever/git-blast/"
  url "https://github.com/wolever/git-blast/archive/v0.1.tar.gz"
  sha256 "1ca590a2ba3dd678cb2781d17a567baab2624d6732b94af995b6ccf3e01a95c2"

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
