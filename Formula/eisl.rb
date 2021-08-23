class Eisl < Formula
  desc "ISLisp interpreter/compiler"
  homepage "https://github.com/sasagawa888/eisl"
  url "https://github.com/sasagawa888/eisl.git", tag: "v2.1", revision: "7ed1e8f00037e3d209501caec619d285f24a41af"
  version "2.1"
  head "https://github.com/sasagawa888/eisl.git"

  def install
    bin.mkpath
    system "make", "install", "PREFIX=#{prefix}", "OPSYS=macos"
  end
end
