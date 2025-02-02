#!/bin/bash

# Create a temporary markdown file from LaTeX
pandoc -f latex -t markdown main.tex -o temp.md

# Convert markdown to EPUB with metadata
pandoc temp.md -o nigerian_biz_ops_blueprint_ebook.epub \
  --metadata title="The Nigerian Business Insider's Playbook" \
  --metadata subtitle="The Underground Guide to Launching and Scaling Successful Ventures in Africa's Hottest Market" \
  --metadata author="Dele Omotosho" \
  --metadata date="$(date +%Y)" \
  --metadata language="en-US" \
  --metadata publisher="Counseal" \
  --metadata description="How Smart Entrepreneurs Enter, Succeed, and Thrive in Nigeria's Multi-Billion Dollar Markets - Even Without Local Connections or Previous African Business Experience" \
  --toc --toc-depth=3 \
  --epub-cover-image=figures/book-cover.png \
  --css=epub.css

# Clean up
rm temp.md

# Open in Calibre for testing (optional)
open -a calibre nigerian_biz_ops_blueprint_ebook.epub