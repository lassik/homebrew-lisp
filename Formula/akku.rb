class Akku < Formula
  desc "Package manager for the Scheme programming language"
  homepage "https://akkuscm.org/"
  url "https://gitlab.com/akkuscm/akku/uploads/819fd1f988c6af5e7df0dfa70aa3d3fe/akku-1.1.0.tar.gz"
  sha256 "12decdc8a2caba0f67dfcd57b65e4643037757e86da576408d41a5c487552c08"
  license "GPL-3.0-or-later"

  depends_on "guile"

  patch do
    url "https://raw.githubusercontent.com/lassik/homebrew-lisp/84996d028e1285569f84d1d7e854ef7ef5f5f361/patches/akku-1.1.0-hide-guile-warnings.patch"
    sha256 "a9143c7252d87148ebac1f01012ddf3410c9841829604e92b6806f5b6a467cc9"
  end

  def install
    system "./configure", "--disable-silent-rules",
           "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end

  test do
    output = shell_output("#{bin}/akku version")
    assert_equal version, output.strip
  end
end
