class Picrin < Formula
  desc "Interpreter Picrin Scheme (R7RS)"
  homepage "https://github.com/picrin-scheme/picrin"
  url "https://github.com/picrin-scheme/picrin.git",
      tag:      "v0.1",
      revision: "2af9020b73ef9b6f89246ec35bed32bbe83986e3"
  license "MIT"
  head "https://github.com/picrin-scheme/picrin.git"

  def install
    system "make", "prefix=#{prefix}"
    bin.mkdir
    system "make", "prefix=#{prefix}", "install"
  end
end
