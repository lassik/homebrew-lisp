class S7 < Formula
  desc "Scheme interpreter for music applications [R7RS]"
  homepage "https://s7.scheme.org/"
  license "0BSD"
  head "https://cm-gitlab.stanford.edu/bil/s7.git"

  def install
    touch "mus-config.h"
    system ENV.cc, "-o", "s7", "s7.c", "-ldl", "-lm", "-rdynamic",
           "-O2", "-g", "-I", ".", "-D", "WITH_MAIN",
           "-D", "S7_LOAD_PATH=\"#{pkgshare}\""
    system "./s7", "libc.scm"
    bin.install "s7"
    lib.install "libc_s7.so"
    pkgshare.install Dir["*.scm"]
    symlink "#{lib}/libc_s7.so", "#{pkgshare}/libc_s7.so"
  end
end
