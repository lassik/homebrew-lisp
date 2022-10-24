# homebrew/core has a mosh formula for a remote terminal application.
# Call this mosh-scheme to avoid a name clash.

class MoshScheme < Formula
  desc "Fast Scheme interpreter [R6RS]"
  homepage "http://mosh.monaos.org/"
  url "https://github.com/higepon/mosh/releases/download/mosh-0.2.8-rc6/mosh-0.2.8-rc6.tar.gz"
  sha256 "7b0d28ccc07ae398565a59b63a3a4b06f78e53f727eb11b151891a24a3af443f"
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
