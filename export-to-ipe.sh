#!/bin/bash

OMM_CLI=~/"github/OpenMetroMaps/OpenMetroMaps/java/scripts/openmetromaps-cli"
OMM_NEW=~/"github/OpenMetroMapsData/new-format"
OMM_NEW_EXPORTS=~/"github/OpenMetroMapsData/new-format-exports"

for f in $(find "$OMM_NEW" -name "*.xml"); do
    FILE=$(realpath --relative-to="$OMM_NEW" $f)
    DIR=$(dirname "$FILE")
    BASE=$(basename "$FILE" .xml)
    OUTDIR="$OMM_NEW_EXPORTS/$DIR"
    mkdir -p "$OUTDIR"
    OUTPUT="$OUTDIR/$BASE.ipe"

    echo "Converting to IPE: $f → $OUTPUT"
    "$OMM_CLI" new-format export-ipe --input "$f" --output "$OUTPUT"
done
