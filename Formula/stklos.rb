class Stklos < Formula
  desc "Scheme interpreter with object-oriented GUI [R7RS]"
  homepage "https://stklos.net/"
  url "http://www.stklos.net/download/stklos-1.70.tar.gz"
  sha256 "15a1251a0e72d66051011bb95ba9122b22f7acd8a5a0d0e4f8737cc9fcbb83c7"
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
    system "make", "check"
    system "make", "install"
  end

  test do
    output = shell_output("#{bin}/stklos -V")
    assert_match "(version \"#{version}\")", output
    assert_match "(stklos.threads pthread)", output
    assert_match "(stklos.system-libs libffi libpcre libgmp libgc)", output
    assert_match "(stklos.compiled-libs)", output
  end
end
