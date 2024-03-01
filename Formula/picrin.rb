class Picrin < Formula
  desc "Interpreter Picrin Scheme (R7RS)"
  homepage "https://github.com/picrin-scheme/picrin"
  url "https://files.scheme.org/picrin-0.2.tar.gz"
  sha256 "8dce5deeec5fe2c24d9b663416479669096522335681f64237f319e685020167"
  license "MIT"
  head "https://github.com/picrin-scheme/picrin.git"

  def install
    args = ["prefix=#{prefix}"]
    system "make", *args
    bin.mkdir
    #system "make", *args, "test"
    system "make", *args, "install"
  end
end
