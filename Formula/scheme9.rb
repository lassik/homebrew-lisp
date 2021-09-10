class Scheme9 < Formula
  desc "Scheme 9 from Empty Space, Reimagined"
  homepage "https://t3x.org/s9fes/"
  url "https://files.scheme.org/s9fes-20181205.tgz"
  sha256 "e92d6e2cd172d8f92631c0672d99e0049f52d8be1020aeda1cbecb665e5ea9c9"
  #license ""  # Public domain

  patch do
    url "https://raw.githubusercontent.com/lassik/homebrew-lisp/lassik-scheme9/patches/s9fes-20181205-make-installdirs.patch"
    sha256 "c4c8d04804764ff9c454282e785d6025ca980aeb83527da11afd996a98e9d723"
  end

  def install
    system "make", "PREFIX=#{prefix}"
    system "make", "PREFIX=#{prefix}", "install"
  end
end
