class OwlLisp < Formula
  desc "Interpreter for an immutable subset of R7RS Scheme"
  homepage "https://github.com/aoh/owl-lisp"
  url "https://github.com/aoh/owl-lisp/archive/v0.1.14.tar.gz"
  sha256 "4d9982da3582456d1e769e25a7d0b2daefe859c45e262c8f56f794114f9a29a0"
  head "https://github.com/aoh/owl-lisp.git"

  def install
    bin.mkpath
    system "make", "install", "DESTDIR=."
    bin.install Dir["./usr/bin/*"]
  end
end
