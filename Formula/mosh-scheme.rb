# homebrew/core has a mosh formula for a remote terminal application.
# Call this mosh-scheme to avoid a name clash.

class MoshScheme < Formula
  desc "Fast Scheme interpreter [R6RS]"
  homepage "http://mosh.monaos.org/"
  url "https://files.scheme.org/mosh-0.2.7.tar.gz"
  head "https://github.com/okuoku/mosh.git" # higepon/mosh
  sha256 "3bafe0e3412d78041433540b59a84523f5c36c5d6c7f94a661e43d74ae7ca74e"

  depends_on "gmp"
  depends_on "oniguruma"

  def install
    system "sh ./gen-git-build.sh"
    system "./configure",
           "--disable-dependency-tracking",
           "--prefix=#{prefix}",
           "--program-transform-name=s@mosh@mosh-scheme@; s@_@-@"
    system "make"
    # system "make check"
    system "make install"
  end
end
