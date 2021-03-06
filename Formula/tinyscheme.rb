class Tinyscheme < Formula
  desc "Scheme interpreter in one file of C"
  homepage "https://tinyscheme.sourceforge.io/"
  url "https://files.scheme.org/tinyscheme-1.42.tar.gz"
  sha256 "17b0b1bffd22f3d49d5833e22a120b339039d2cfda0b46d6fc51dd2f01b407ad"
  license "BSD-4-Clause"

  patch do
    url "https://raw.githubusercontent.com/lassik/homebrew-lisp/84996d028e1285569f84d1d7e854ef7ef5f5f361/patches/tinyscheme-1.42-macos.patch"
    sha256 "5cba7b1163539007cababf3980a2ce10f8233718ed181162a56864f67257b391"
  end

  def install
    system "make", "INITFILE=#{pkgshare}/init.scm"
    bin.install "scheme" => "tinyscheme"
    pkgshare.install "init.scm"
  end
end
