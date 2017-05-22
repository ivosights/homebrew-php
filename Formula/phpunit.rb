require File.expand_path("../../Abstract/abstract-php-phar", __FILE__)

class Phpunit < AbstractPhpPhar
  init
  desc "Programmer-oriented testing framework for PHP"
  homepage "https://phpunit.de"
  url "https://phar.phpunit.de/phpunit-6.1.4.phar"
  sha256 "471154b49846171a0c40f6cbb4a70e03c71f6ab19a61470de63f29639799f970"

  bottle do
    cellar :any_skip_relocation
    sha256 "eabde3da43b1dde648e14e895699f6742521f031ec6ee5e90bd1f901b8ed80be" => :sierra
    sha256 "43f91ff336a6c68a879baef35e57015eca79e54732b327414253da51d544b60f" => :el_capitan
    sha256 "43f91ff336a6c68a879baef35e57015eca79e54732b327414253da51d544b60f" => :yosemite
  end

  def phar_file
    "phpunit-#{version}.phar"
  end

  test do
    shell_output("#{bin}/phpunit --version").include?(version)
  end
end
