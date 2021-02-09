require "formula"

class Mosh < Formula
  homepage "http://mosh.monaos.org"
  head "https://github.com/okuoku/mosh.git"  # higepon/mosh
  url "https://files.scheme.org/mosh-0.2.7.tar.gz"
  sha256 "3bafe0e3412d78041433540b59a84523f5c36c5d6c7f94a661e43d74ae7ca74e"

  depends_on "gmp"
  depends_on "oniguruma"

  fails_with :llvm do
    cause "Inline asm errors"
  end

  def install
    system "sh ./gen-git-build.sh"
    system "./configure", "--disable-dependency-tracking",
           "--prefix=#{prefix}"
    system "make"
    system "make check"
    system "make install"
  end
end
