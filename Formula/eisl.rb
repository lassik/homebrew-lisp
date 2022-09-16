class Eisl < Formula
  desc "ISLisp interpreter/compiler"
  homepage "https://github.com/sasagawa888/eisl"
  version "2.63"
  url "https://github.com/sasagawa888/eisl.git",
      tag: "v#{version}",
      revision: "7f4906ea995ee6a63755b81f69af145246e9f497"
  head "https://github.com/sasagawa888/eisl.git"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
