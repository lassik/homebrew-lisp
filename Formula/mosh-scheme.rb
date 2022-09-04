# homebrew/core has a mosh formula for a remote terminal application.
# Call this mosh-scheme to avoid a name clash.

class MoshScheme < Formula
  desc "Fast Scheme interpreter [R6RS]"
  homepage "http://mosh.monaos.org/"
  url "https://files.scheme.org/mosh-0.2.7.tar.gz"
  sha256 "3bafe0e3412d78041433540b59a84523f5c36c5d6c7f94a661e43d74ae7ca74e"
  license "MIT"
  head "https://github.com/higepon/mosh.git"

  if build.head?
    depends_on "autoconf" => :build # Only head needs this.
    depends_on "automake" => :build # Only head needs this.
  end
  depends_on "gmp"
  depends_on "oniguruma"

  def install
    if build.head?
      system "sh ./gen-git-build.sh"
    end
    system "./configure",
           "--disable-dependency-tracking",
           "--prefix=#{prefix}",
           "--program-transform-name=s@mosh@mosh-scheme@; s@_@-@"
    system "make"
    # system "make check"
    system "make install"
  end
end
