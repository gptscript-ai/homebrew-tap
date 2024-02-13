class GptscriptHead < Formula
  desc "GPTScript CLI"
  homepage "https://github.com/gptscript-ai/gptscript"
  head "https://github.com/gptscript-ai/gptscript.git", :branch => "main"

  depends_on "go" => :build

  def install
    system "go build"
    bin.install "gptscript"
  end

  test do
    system "#{bin}/gptscript --help"
  end
end
