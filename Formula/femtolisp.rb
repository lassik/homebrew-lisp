class Femtolisp < Formula
  desc "Lightweight, robust, Scheme-like Lisp implementation"
  homepage "https://github.com/JeffBezanson/femtolisp"
  # url "https://github.com/ararslan/femtolisp/archive/v0.0.1.tar.gz"
  # version "0.0.1"
  # sha256 "f61f6384b13462bb3b42b60ed383763cd06b2f27c71eb082ed6cf0c9461094c7"
  head "https://github.com/JeffBezanson/femtolisp.git"

  def install
    bin.mkpath
    system "make", "-f", "Makefile.macosx", "release", "CC=clang"
    bin.install "flisp"
    bin.install "flisp.boot"
  end
end
