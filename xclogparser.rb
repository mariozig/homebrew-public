class Xclogparser < Formula
  desc 'Tool to parse the SLF serialization format used by Xcode and xcodebuild to store its Build and Test logs (xcactivitylog).'
  homepage 'https://github.com/spotify/XCLogParser'
  url 'https://github.com/spotify/XCLogParser.git', tag: '0.2.0'

  depends_on xcode: ['11.0', :build]

  def install
    system 'rake', "install[#{prefix}]"
  end

  test do
    system "#{bin}/xclogparser help"
  end
end
