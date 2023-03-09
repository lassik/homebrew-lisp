class Slib < Formula
  desc "Portable Scheme library SLIB"
  homepage "https://people.csail.mit.edu/jaffer/SLIB"
  url "https://files.scheme.org/slib-#{version}.zip"
  version "3b6"
  sha256 "2e8cb4843b5400b2e39fe9ddcc8040a412f9a19cccf5e7e2c2e071ceb9b0ed8c"
  license "GPL-3.0-or-later"  # TODO: Verify this.

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end
end
