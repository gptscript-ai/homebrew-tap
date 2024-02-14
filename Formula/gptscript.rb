# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gptscript < Formula
  desc "GPTScript CLI"
  homepage "https://github.com/gptscript-ai/gptscript"
  version "0.1.0"

  on_macos do
    url "https://github.com/gptscript-ai/gptscript/releases/download/v0.1.0/gptscript-v0.1.0-macOS-universal.tar.gz"
    sha256 "1eb9f61fca20bea77b1968b3b13a46069d6e528a3b5405e6ad40556895ca97eb"

    def install
      bin.install "gptscript"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gptscript-ai/gptscript/releases/download/v0.1.0/gptscript-v0.1.0-linux-amd64.tar.gz"
      sha256 "186430d0c1856c9c79324dc53242dc618041eaaf303daa45941fbd793f7d1860"

      def install
        bin.install "gptscript"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gptscript-ai/gptscript/releases/download/v0.1.0/gptscript-v0.1.0-linux-arm64.tar.gz"
      sha256 "f5cc5624568aba373e6d9f9424b91d4293c21f7d24fd128e11990a477c1e3528"

      def install
        bin.install "gptscript"
      end
    end
  end
end
