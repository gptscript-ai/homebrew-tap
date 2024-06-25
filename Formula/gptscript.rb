# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gptscript < Formula
  desc "GPTScript CLI"
  homepage "https://github.com/gptscript-ai/gptscript"
  version "0.8.5-rc1"

  on_macos do
    url "https://github.com/gptscript-ai/gptscript/releases/download/v0.8.5-rc1/gptscript-v0.8.5-rc1-macOS-universal.tar.gz"
    sha256 "32aad5fee504b7fc3f1ad0f02dea5eb02bb1d09c512c681e46459ddbefca33ce"

    def install
      bin.install "gptscript"
      generate_completions_from_executable(bin/"gptscript", "completion", shells: [:bash, :zsh, :fish])
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gptscript-ai/gptscript/releases/download/v0.8.5-rc1/gptscript-v0.8.5-rc1-linux-amd64.tar.gz"
      sha256 "d2cf102dc1279d81a245cd2310cb55c0fe03d42ad6d204d07339689af7df6590"

      def install
        bin.install "gptscript"
        generate_completions_from_executable(bin/"gptscript", "completion", shells: [:bash, :zsh, :fish])
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gptscript-ai/gptscript/releases/download/v0.8.5-rc1/gptscript-v0.8.5-rc1-linux-arm64.tar.gz"
      sha256 "ce149f30742d1809bfcc1a407ccd1a00b85788db1145837db0c4f0d4a8e190d7"

      def install
        bin.install "gptscript"
        generate_completions_from_executable(bin/"gptscript", "completion", shells: [:bash, :zsh, :fish])
      end
    end
  end
end
