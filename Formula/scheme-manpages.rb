class SchemeManpages < Formula
  desc "Unix manual pages for the Scheme programming language"
  homepage "https://man.scheme.org/"
  license "MIT"
  head "https://github.com/schemedoc/manpages.git"

  def install
    man3.install Dir["man3/*"]
    man7.install Dir["man7/*"]
  end
end
