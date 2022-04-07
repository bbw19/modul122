#!/bin/bash
# Skript: script.sh
# Aufruf: script.sh

# Get the Export file
# Only get German rows
awk -F, '$1 + 0 == 2' ExportSmall.spl

cut -f1 -d$'\t' ExportSmall.spl | sort 
# Only get third and fourth columns
