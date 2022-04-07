#!/bin/bash
# Skript: script.sh
# Aufruf: script.sh

# Get the Export file
# Only get German rows
awk -F '\t' 'int($1) == 2 && int($2) == 0' ExportSmall.spl | cut -f3-4

# Only get third and fourth columns
