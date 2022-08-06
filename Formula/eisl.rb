class Eisl < Formula
  desc "ISLisp interpreter/compiler"
  homepage "https://github.com/sasagawa888/eisl"
  version "2.60"
  url "https://github.com/sasagawa888/eisl.git",
      tag: "v#{version}",
      revision: "88e7dfa07edc86dbe87460a613b6d8d69f1c722a"
  head "https://github.com/sasagawa888/eisl.git"

  def install
    bin.mkpath
    system "make", "install", "PREFIX=#{prefix}", "OPSYS=macos"
  end
end
