# TODO: This formula doesn't currently work.

# Errors during `make all`:

# ld: library not found for -lgcc_s.10.4
# clang: error: linker command failed with exit code 1 (use -v to see invocation)

# cat: /proc/sys/kernel/randomize_va_space: No such file or directory

# ;ERROR: load-string: segment violation 11
# ; in expression: (#@unexec #@file)

# Errors during `make install`:

# make: ginstall-info: No such file or directory

class Scm < Formula
  desc "Scheme implementation SCM"
  homepage "https://people.csail.mit.edu/jaffer/SCM.html"
  url "https://files.scheme.org/scm-#{version}.zip"
  version "5f3"
  sha256 "27c944b871c319a820e0fb1698bccb27d929db197f9e44d9ad4650f52aa4bdcb"
  license "GPL-3.0-or-later"  # TODO: Verify this.

  depends_on "slib"

  def install
    ENV["SCHEME_LIBRARY_PATH"] = "#{HOMEBREW_PREFIX}/lib/slib/"
    system "./configure", "--prefix=#{prefix}"
    system "make", "scmlit"
    system "make", "all"
    system "make", "install"
  end

  test do
    output = shell_output("#{bin}/scm --version")
    assert_equal "scm #{version}", output.split("\n")[0]
  end
end
