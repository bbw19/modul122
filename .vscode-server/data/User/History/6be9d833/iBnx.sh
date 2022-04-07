#!/bin/bash
# Skript: script.sh
# Aufruf: script.sh

# Get the Export file
# Only get German rows
awk -F, '$1 + 0 == 2 && $2 + 0 == 0' ExportSmall.spl | cut -f3-4

cut -f1 -d$'\t' ExportSmall.spl | sort 
# Only get third and fourth columns
