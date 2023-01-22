class Eisl < Formula
  desc "ISLisp interpreter/compiler"
  homepage "https://github.com/sasagawa888/eisl"
  version "2.70"
  url "https://github.com/sasagawa888/eisl.git",
      tag: "v#{version}",
      revision: "52b59efd95b11787e3d4ae3c2bb5dccbd9f4ebf5"
  head "https://github.com/sasagawa888/eisl.git"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
