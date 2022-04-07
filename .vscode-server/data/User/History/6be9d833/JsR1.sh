#!/bin/bash
# Skript: script.sh
# Aufruf: script.sh

# Get the Export file
# Only get German rows
awk -F, '$1 + 0 == 2 && int($2) == 4' ExportSmall.spl | cut -f3-4

cut -f1 -d$'\t' ExportSmall.spl | sort 
# Only get third and fourth columns
