class OwlLisp < Formula
  desc "A functional Lisp"
  homepage "https://github.com/aoh/owl-lisp"
  url "https://github.com/aoh/owl-lisp/archive/v0.1.13.tar.gz"
  version "0.1.13"
  sha256 "090ef90af5f11e7bf7751b67ca96d5cad3b405391966a96a888db8adb9b69978"
  head "https://github.com/aoh/owl-lisp.git"

  def install
    bin.mkpath
    system "make", "install", "DESTDIR=."
    bin.install Dir["./usr/bin/*"]
  end
end
