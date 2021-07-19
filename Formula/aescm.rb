class Aescm < Formula
  desc "Expand Scheme code embedded in text files"
  homepage "https://github.com/shirok/escm"
  url "https://files.scheme.org/aescm-0.32.tar.gz"
  sha256 "10f0edf5a2991606b8bf0bd2061de2fa921b22e6e3cb3cbfde26de9188b7258a"
  license "MIT"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end

  test do
    output = shell_output("#{bin}/aescm --version")
    assert_equal "aescm #{version} - developers' version of escm", output.strip
  end
end
