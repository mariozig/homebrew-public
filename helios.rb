require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.2/helios-tools-0.9.2-shaded.jar"
  sha256 "0b1d586beacc180e79c03f174a97c40fb54734371272edb92bc019ae39317be1"
  version "0.9.2"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.2-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.2-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
