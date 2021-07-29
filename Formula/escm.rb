class Escm < Formula
  desc "Expand Scheme code embedded in text files"
  homepage "https://github.com/shirok/escm"
  url "https://files.scheme.org/escm-1.1.tar.gz"
  sha256 "8e125d5b0a0ea9b170d135c54035993da85025070ac1249d5ebe17064eb66e91"
  license "MIT"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make"
    bin.install "escm"  # There's a bug in the `make install` target.
  end

  test do
    output = shell_output("#{bin}/escm -v")
    assert_equal "escm version #{version}", output.split("\n")[0]
  end
end
