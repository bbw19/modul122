#!/bin/bash
# Skript: script.sh
# Aufruf: script.sh

# Get the Export file
# Only get German rows
grep 2 cut -f1 -d$'\t' ExportSmall.spl
# Only get third and fourth columns