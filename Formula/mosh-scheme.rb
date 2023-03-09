# homebrew/core has a mosh formula for a remote terminal application.
# Call this mosh-scheme to avoid a name clash.

class MoshScheme < Formula
  desc "Fast Scheme interpreter [R6RS]"
  homepage "http://mosh.monaos.org/"
  url "https://github.com/higepon/mosh/releases/download/mosh-0.2.9-rc1/mosh-0.2.9-rc1.tar.gz"
  sha256 "9f11bd36e128e3f9990662b7b4a6bcf41ae325d41c538467b2ef0f0f574b841f"
  license "MIT"
  head "https://github.com/higepon/mosh.git"

  if build.head?
    depends_on "autoconf" => :build
    depends_on "automake" => :build
  end
  depends_on "gmp"
  depends_on "oniguruma"

  def install
    system "sh", "./gen-git-build.sh" if build.head?
    system "./configure",
           "--disable-dependency-tracking",
           "--prefix=#{prefix}",
           "--program-transform-name=s@mosh@mosh-scheme@; s@_@-@"
    system "make"
    system "make", "check"
    system "make", "install"
  end
end
