# TODO: csc-4 doesn't find chicken.h

class ChickenAT4 < Formula
  desc "Compiler for the Scheme programming language"
  homepage "https://www.call-cc.org/"
  url "https://code.call-cc.org/releases/4.13.0/chicken-4.13.0.tar.gz"
  sha256 "add549619a31363d6608b39e0cf0e68b9d5e6ff2a719b5691ddeba57229c6c43"
  head "https://code.call-cc.org/git/chicken-core.git"

  def version_suffix
    version.major.to_s
  end

  patch do
    url "https://raw.githubusercontent.com/lassik/homebrew-lisp/bc4ccba2cdf5ddd31c08d50f53fbeb6f8dcff247/patches/chicken-4.13.0-manpage-names.patch"
    sha256 "72f914875ba5bda49ae6801a1be7dbca5b6c056340156d9fdac59aa4e26f5992"
  end

  def install
    ENV.deparallelize

    args = %W[
      PLATFORM=macosx
      PREFIX=#{prefix}
      PROGRAM_SUFFIX=-#{version_suffix}
      C_COMPILER=#{ENV.cc}
      LIBRARIAN=ar
      POSTINSTALL_PROGRAM=install_name_tool
      ARCH=x86-64
    ]

    system "make", *args
    system "make", "install", *args
  end

  test do
    assert_equal "25", shell_output("#{bin}/csi-4 -e '(print (* 5 5))'").strip
  end
end
