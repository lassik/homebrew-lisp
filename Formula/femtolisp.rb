class Flisp < Formula
  desc "A lightweight, robust, Scheme-like Lisp implementation"
  homepage "https://github.com/JeffBezanson/femtolisp"
  url "https://github.com/ararslan/femtolisp/archive/v0.0.1.tar.gz"
  version "0.0.1"
  sha256 "f61f6384b13462bb3b42b60ed383763cd06b2f27c71eb082ed6cf0c9461094c7"
  head "https://github.com/JeffBezanson/femtolisp.git"

  def install
    system "make", "-f", "Makefile.macosx"
    bin.install "flisp"
  end
end
