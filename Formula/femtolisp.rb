class Femtolisp < Formula
  desc "Lightweight, robust, Scheme-like Lisp implementation"
  homepage "https://github.com/JeffBezanson/femtolisp"
  # url "https://github.com/ararslan/femtolisp/archive/v0.0.1.tar.gz"
  # version "0.0.1"
  # sha256 "f61f6384b13462bb3b42b60ed383763cd06b2f27c71eb082ed6cf0c9461094c7"
  head "https://github.com/JeffBezanson/femtolisp.git"
  license "BSD-3-Clause"

  patch do
    url "https://raw.githubusercontent.com/lassik/homebrew-scheme/073289b72c5b8ed1b9f12912fc2f00b2cf92ed48/patches/femtolisp-macos.patch"
    sha256 "9d4be5374b09c9abae5988632890fdb3c4193e35cc180601039c54f51e50b535"
  end

  def install
    system "make", "-f", "Makefile.macosx", "release",
           "CC=clang",
           "INITFILE=#{pkgshare}/flisp.boot"
    bin.install "flisp" => "femtolisp"
    pkgshare.install "flisp.boot"
  end
end
