class Picrin < Formula
  desc "Interpreter Picrin Scheme (R7RS)"
  homepage "https://github.com/picrin-scheme/picrin"
  url "https://github.com/picrin-scheme/picrin.git",
      tag:      "v0.1",
      revision: "2af9020b73ef9b6f89246ec35bed32bbe83986e3"
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
