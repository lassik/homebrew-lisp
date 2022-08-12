class Stklos < Formula
  desc "Scheme interpreter with object-oriented GUI [R7RS]"
  homepage "https://stklos.net/"
  url "http://www.stklos.net/download/stklos-1.50.tar.gz"
  sha256 "991775d7b46b356a1ff595f6d9ce5e0cdc1db0a41f99809e2e4c97e850981ad2"
  license "GPL-2.0-or-later"
  head "https://github.com/egallesio/STklos.git"

  depends_on "gmp"
  depends_on "libffi"
  depends_on "libgc"
  depends_on "pcre"

  def install
    system "./configure",
           "--disable-dependency-tracking",
           "--prefix=#{prefix}"
    system "make"
    system "make check"
    system "make install"
  end

  test do
    output = shell_output("#{bin}/stklos -V")
    assert_match "(stklos.threads pthread)", output
    assert_match "(stklos.system-libs libffi libpcre libgmp libgc)", output
    assert_match "(stklos.compiled-libs)", output
  end
end
