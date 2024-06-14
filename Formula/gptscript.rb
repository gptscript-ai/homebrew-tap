# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gptscript < Formula
  desc "GPTScript CLI"
  homepage "https://github.com/gptscript-ai/gptscript"
  version "0.8.2-rc1"

  on_macos do
    url "https://github.com/gptscript-ai/gptscript/releases/download/v0.8.2-rc1/gptscript-v0.8.2-rc1-macOS-universal.tar.gz"
    sha256 "485b38f234aafe4d9d925a6affd36494c7a03f8b12710310b3032d929067657e"

    def install
      bin.install "gptscript"
      generate_completions_from_executable(bin/"gptscript", "completion", shells: [:bash, :zsh, :fish])
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gptscript-ai/gptscript/releases/download/v0.8.2-rc1/gptscript-v0.8.2-rc1-linux-arm64.tar.gz"
      sha256 "f8cca24781d3a92dcb56619fcf883a771bfc551e9e15564b4ee78ab736095774"

      def install
        bin.install "gptscript"
        generate_completions_from_executable(bin/"gptscript", "completion", shells: [:bash, :zsh, :fish])
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/gptscript-ai/gptscript/releases/download/v0.8.2-rc1/gptscript-v0.8.2-rc1-linux-amd64.tar.gz"
      sha256 "d9da51c225989c3e64ee0fddc2e25cc7973a131bab2205f272be5b081b8b9ecc"

      def install
        bin.install "gptscript"
        generate_completions_from_executable(bin/"gptscript", "completion", shells: [:bash, :zsh, :fish])
      end
    end
  end
end
