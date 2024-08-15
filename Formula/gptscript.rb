# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gptscript < Formula
  desc "GPTScript CLI"
  homepage "https://github.com/gptscript-ai/gptscript"
  version "0.9.5-rc3"

  on_macos do
    url "https://github.com/gptscript-ai/gptscript/releases/download/v0.9.5-rc3/gptscript-v0.9.5-rc3-macOS-universal.tar.gz"
    sha256 "7afe44895b808ad28f8a0d6c78382c0cc0142dab77cf64a69de257cddc18bf63"

    def install
      bin.install "gptscript"
      generate_completions_from_executable(bin/"gptscript", "completion")
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/gptscript-ai/gptscript/releases/download/v0.9.5-rc3/gptscript-v0.9.5-rc3-linux-amd64.tar.gz"
        sha256 "616ff247082e2d92bd8172f507b0e7140f9b3d2b416a570de10fdf3b216817c5"

        def install
          bin.install "gptscript"
          generate_completions_from_executable(bin/"gptscript", "completion")
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/gptscript-ai/gptscript/releases/download/v0.9.5-rc3/gptscript-v0.9.5-rc3-linux-arm64.tar.gz"
        sha256 "7639dc549381d0a9a6985eea0b77bf2b1a2f49eaa656663b5ae08deea76cccf4"

        def install
          bin.install "gptscript"
          generate_completions_from_executable(bin/"gptscript", "completion")
        end
      end
    end
  end
end
