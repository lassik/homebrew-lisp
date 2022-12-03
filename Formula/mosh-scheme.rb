# homebrew/core has a mosh formula for a remote terminal application.
# Call this mosh-scheme to avoid a name clash.

class MoshScheme < Formula
  desc "Fast Scheme interpreter [R6RS]"
  homepage "http://mosh.monaos.org/"
  url "https://github.com/higepon/mosh/releases/download/mosh-0.2.8/mosh-0.2.8.tar.gz"
  sha256 "6c16096fc2d1136f3c1053962606b4009240a89b16de7177654a3d22bbb74011"
  license "MIT"
  head "https://github.com/higepon/mosh.git"

  if build.head?
    depends_on "autoconf" => :build
    depends_on "automake" => :build
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
