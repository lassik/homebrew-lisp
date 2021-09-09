class Scheme9 < Formula
  desc "Scheme 9 from Empty Space, Reimagined"
  homepage "https://t3x.org/s9fes/"
  url "https://files.scheme.org/s9fes-20181205.tgz"
  sha256 "e92d6e2cd172d8f92631c0672d99e0049f52d8be1020aeda1cbecb665e5ea9c9"
  #license ""  # Public domain

  def install
    system "make", "PREFIX=#{prefix}"
    bin.mkdir
    system "make", "PREFIX=#{prefix}", "install"
  end
end
