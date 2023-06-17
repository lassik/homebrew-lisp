class Eisl < Formula
  desc "ISLisp interpreter/compiler"
  homepage "https://github.com/sasagawa888/eisl"
  url "https://github.com/sasagawa888/eisl.git",
      tag:      "v3.00",
      revision: "c0ff5e2c85a271225305d8fa5f0561039cfbed80"
  head "https://github.com/sasagawa888/eisl.git"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
