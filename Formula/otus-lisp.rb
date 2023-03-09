class OtusLisp < Formula
  desc "Owl Lisp fork"
  homepage "https://github.com/yuriy-chumak/ol"
  url "https://github.com/yuriy-chumak/ol/archive/refs/tags/2.4.tar.gz"
  sha256 "019978ddcf0befc8b8de9f50899c9dd0f47a3e18cf9556bc72a75ae2d1d965d4"
  license "MIT"
  head "https://github.com/yuriy-chumak/ol.git"

  keg_only "the name 'ol' conflicts with Owl Lisp"

  def install
    system "make", "PREFIX=#{prefix}"
    system "make", "PREFIX=#{prefix}", "install"
  end
end
