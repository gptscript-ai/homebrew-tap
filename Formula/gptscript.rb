# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gptscript < Formula
  desc "GPTScript CLI"
  homepage "https://github.com/gptscript-ai/gptscript"
  version "0.2.2"

  on_macos do
    url "https://github.com/gptscript-ai/gptscript/releases/download/v0.2.2/gptscript-v0.2.2-macOS-universal.tar.gz"
    sha256 "adcc32346f94884751725d68b1acd9bdc17e8606e77f640c670a5151864731b3"

    def install
      bin.install "gptscript"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gptscript-ai/gptscript/releases/download/v0.2.2/gptscript-v0.2.2-linux-arm64.tar.gz"
      sha256 "26db4ff040ff1107bcd7a62e4044a448b7ccabf38fb4c3318a51fc80f9f2557b"

      def install
        bin.install "gptscript"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/gptscript-ai/gptscript/releases/download/v0.2.2/gptscript-v0.2.2-linux-amd64.tar.gz"
      sha256 "385687f9820d08128d3ecbf81ac136b493d3fbf70d38854fe16dd34c01bfeb97"

      def install
        bin.install "gptscript"
      end
    end
  end
end
