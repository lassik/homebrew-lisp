class Tinyscheme < Formula
  desc "Scheme interpreter in one file of C"
  homepage "http://tinyscheme.sourceforge.net/"
  url "https://files.scheme.org/tinyscheme-1.42.tar.gz"
  sha256 "17b0b1bffd22f3d49d5833e22a120b339039d2cfda0b46d6fc51dd2f01b407ad"
  license "BSD-4-Clause"

  patch do
    url "https://misc.lassi.io/2021/tinyscheme-1.42-macos.patch"
    sha256 "5cba7b1163539007cababf3980a2ce10f8233718ed181162a56864f67257b391"
  end

  def install
    system "make", "INITFILE=#{prefix}/share/init.scm"
    system "install", "-d", "#{prefix}/bin"
    system "install", "-d", "#{prefix}/share"
    system "install", "scheme", "#{prefix}/bin/tinyscheme"
    system "install", "init.scm", "#{prefix}/share/init.scm"
  end
end
