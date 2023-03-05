class Eisl < Formula
  desc "ISLisp interpreter/compiler"
  homepage "https://github.com/sasagawa888/eisl"
  version "2.85"
  url "https://github.com/sasagawa888/eisl.git",
      tag: "v#{version}",
      revision: "34509bdefa88a14af142d28b864bd2deac5ffec0"
  head "https://github.com/sasagawa888/eisl.git"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
