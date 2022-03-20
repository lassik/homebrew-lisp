class Eisl < Formula
  desc "ISLisp interpreter/compiler"
  homepage "https://github.com/sasagawa888/eisl"
  url "https://github.com/sasagawa888/eisl.git",
      tag: "v2.38",
      revision: "16e4aa37f01fe2b914e644d87a9ce60f50015738"
  version "2.38"
  head "https://github.com/sasagawa888/eisl.git"

  def install
    bin.mkpath
    system "make", "install", "PREFIX=#{prefix}", "OPSYS=macos"
  end
end
