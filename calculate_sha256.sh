#!/bin/bash

# Script to calculate SHA256 checksums for wistia-downloader binaries
# Run this script to get the SHA256 values needed for the Homebrew formula

echo "Calculating SHA256 checksums for wistia-downloader binaries..."
echo "=================================================="

# Define the base URL and version
BASE_URL="https://github.com/peaz/wistia-downloader/raw/main/build"
VERSION="1.1.1"

# Array of platforms and their corresponding file names
declare -a platforms=(
    "macos-amd64:Intel Mac"
    "macos-arm64:Apple Silicon Mac"
    "linux-amd64:Linux AMD64"
    "linux-arm64:Linux ARM64"
)

# Create temporary directory
TEMP_DIR=$(mktemp -d)
cd "$TEMP_DIR"

echo "Downloading and calculating checksums..."
echo ""

for platform_info in "${platforms[@]}"; do
    IFS=':' read -r platform description <<< "$platform_info"
    
    filename="wistia-downloader-${platform}-${VERSION}.tar.gz"
    url="${BASE_URL}/${filename}"
    
    echo "Downloading $filename for $description..."
    
    if curl -sL "$url" -o "$filename"; then
        if [ -f "$filename" ]; then
            checksum=$(shasum -a 256 "$filename" | cut -d' ' -f1)
            echo "✓ $description: $checksum"
        else
            echo "✗ Failed to download $filename"
        fi
    else
        echo "✗ Failed to download $filename from $url"
    fi
    echo ""
done

# Cleanup
cd - > /dev/null
rm -rf "$TEMP_DIR"

echo "=================================================="
echo "Copy the SHA256 values above and update them in the Homebrew formula:"
echo "Formula/wistia-downloader.rb"
echo ""
echo "Replace the placeholder values:"
echo "- <REPLACE_WITH_ACTUAL_SHA256_FOR_INTEL_MAC>"
echo "- <REPLACE_WITH_ACTUAL_SHA256_FOR_ARM_MAC>"
echo "- <REPLACE_WITH_ACTUAL_SHA256_FOR_LINUX_AMD64>"
echo "- <REPLACE_WITH_ACTUAL_SHA256_FOR_LINUX_ARM64>"