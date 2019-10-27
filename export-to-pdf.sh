#!/bin/bash

OMM_NEW_EXPORTS=~/"github/OpenMetroMapsData/new-format-exports"

for f in $(find "$OMM_NEW_EXPORTS" -name "*.ipe"); do
    FILE=$(realpath --relative-to="$OMM_NEW_EXPORTS" $f)
    DIR=$(dirname "$FILE")
    BASE=$(basename "$FILE" .ipe)
    OUTDIR="$OMM_NEW_EXPORTS/$DIR"
    mkdir -p "$OUTDIR"
    OUTPUT="$OUTDIR/$BASE.pdf"

    echo "Converting to PDF: $f → $OUTPUT"
    ipetoipe -pdf "$f" "$OUTPUT"
done
