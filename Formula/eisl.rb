class Eisl < Formula
  desc "ISLisp interpreter/compiler"
  homepage "https://github.com/sasagawa888/eisl"
  url "https://github.com/sasagawa888/eisl.git",
      tag:      "v2.93",
      revision: "126691908980ebcd70164f923774f4d95efb2e92"
  head "https://github.com/sasagawa888/eisl.git"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
