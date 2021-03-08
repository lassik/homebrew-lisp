class OwlLisp < Formula
  desc "Interpreter for an immutable subset of R7RS Scheme"
  homepage "https://github.com/aoh/owl-lisp"
  url "https://gitlab.com/owl-lisp/owl/-/archive/v0.2/owl-v0.2.tar.gz"
  sha256 "9fed7b4907883910f5a7b8d713e1e7334b20d432c5d52611b34e23b19b7edfb1"
  license "MIT"
  head "https://gitlab.com/owl-lisp/owl.git"

  def install
    system "make", "PREFIX=#{prefix}"
    system "make", "PREFIX=#{prefix}", "install"
  end
end
