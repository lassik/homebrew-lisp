class Picrin < Formula
  desc "Picrin Scheme interpreter (R7RS)"
  homepage "https://github.com/picrin-scheme/picrin"
  license "MIT"
  version "0.1"
  url "https://github.com/picrin-scheme/picrin.git",
      tag: "v#{version}",
      revision: "2af9020b73ef9b6f89246ec35bed32bbe83986e3"
  head "https://github.com/picrin-scheme/picrin.git"

  def install
    system "make", "prefix=#{prefix}"
    bin.mkdir
    system "make", "prefix=#{prefix}", "install"
  end
end
