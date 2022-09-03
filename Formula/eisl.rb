class Eisl < Formula
  desc "ISLisp interpreter/compiler"
  homepage "https://github.com/sasagawa888/eisl"
  version "2.62"
  url "https://github.com/sasagawa888/eisl.git",
      tag: "v#{version}",
      revision: "a23b51451b0cdcc444f432b9c0efc992b3473828"
  head "https://github.com/sasagawa888/eisl.git"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
