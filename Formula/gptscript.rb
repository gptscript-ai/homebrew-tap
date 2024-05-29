# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gptscript < Formula
  desc "GPTScript CLI"
  homepage "https://github.com/gptscript-ai/gptscript"
  version "0.7.1"

  on_macos do
    url "https://github.com/gptscript-ai/gptscript/releases/download/v0.7.1/gptscript-v0.7.1-macOS-universal.tar.gz"
    sha256 "dd3198a75ff31b509d024243a9536761d268e79116f2c4df47952fd4c2785718"

    def install
      bin.install "gptscript"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gptscript-ai/gptscript/releases/download/v0.7.1/gptscript-v0.7.1-linux-arm64.tar.gz"
      sha256 "3f8990049f542fd6073cc0e982e5ac1934c2149b768ad1249e6b2f584a3a9c40"

      def install
        bin.install "gptscript"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/gptscript-ai/gptscript/releases/download/v0.7.1/gptscript-v0.7.1-linux-amd64.tar.gz"
      sha256 "04eb10a62cb3584746d03fbc33b15f24d59f5c4bf8ff6d5b7c52dc0eacc768af"

      def install
        bin.install "gptscript"
      end
    end
  end
end
