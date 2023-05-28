class Eisl < Formula
  desc "ISLisp interpreter/compiler"
  homepage "https://github.com/sasagawa888/eisl"
  url "https://github.com/sasagawa888/eisl.git",
      tag:      "v2.97",
      revision: "e86f667a203715e97fdb0b95f2a0085770595f39"
  head "https://github.com/sasagawa888/eisl.git"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
