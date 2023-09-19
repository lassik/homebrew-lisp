class Stklos < Formula
  desc "Scheme interpreter with object-oriented GUI [R7RS]"
  homepage "https://stklos.net/"
  url "http://www.stklos.net/download/stklos-2.00.tar.gz"
  sha256 "eb85454d2a18cefb7820157beb01ff1c84f87a1f64634e36732c938be0eec7cb"
  license "GPL-2.0-or-later"
  head "https://github.com/egallesio/STklos.git"

  depends_on "gmp"
  depends_on "libffi"
  depends_on "libgc"
  #depends_on "pcre"

  def install
    system "./configure",
           "--disable-dependency-tracking",
           "--prefix=#{prefix}",
           "--with-provided-regexp"
    system "make"
    system "make", "check"
    system "make", "install"
  end

  test do
    output = shell_output("#{bin}/stklos -V")
    assert_match "(version \"#{version}\")", output
    assert_match "(stklos.threads pthread)", output
    assert_match "(stklos.system-libs libffi libgmp libgc)", output
    assert_match "(stklos.compiled-libs libpcre)", output
  end
end
