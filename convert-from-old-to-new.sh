#!/bin/bash

OMM_CLI=~/"github/OpenMetroMaps/OpenMetroMaps/java/scripts/openmetromaps-cli"
OMM_DATA=~/"github/OpenMetroMapsData"
OMM_NEW=~/"github/OpenMetroMapsData/new-format"

# Berlin
mkdir -p "$OMM_NEW/berlin"
"$OMM_CLI" new-format create \
    --input "$OMM_DATA/berlin/geographic.omm" \
    --output "$OMM_NEW/berlin/geographic.xml"

"$OMM_CLI" new-format create \
    --input "$OMM_DATA/berlin/schematic.omm" \
    --output "$OMM_NEW/berlin/schematic.xml"

# VBB
mkdir -p "$OMM_NEW/vbb-regio"
"$OMM_CLI" new-format create \
    --input "$OMM_DATA/vbb-regio/geographic.omm" \
    --output "$OMM_NEW/vbb-regio/geographic.xml"

"$OMM_CLI" new-format create \
    --input "$OMM_DATA/vbb-regio/schematic.omm" \
    --output "$OMM_NEW/vbb-regio/schematic.xml"

# Vienna
mkdir -p "$OMM_NEW/vienna"
"$OMM_CLI" new-format create \
    --input "$OMM_DATA/vienna/geographic.omm" \
    --output "$OMM_NEW/vienna/geographic.xml"

"$OMM_CLI" new-format create \
    --input "$OMM_DATA/vienna/schematic.omm" \
    --output "$OMM_NEW/vienna/schematic.xml"

# Stuttgart
mkdir -p "$OMM_NEW/stuttgart"
"$OMM_CLI" new-format create \
    --input "$OMM_DATA/stuttgart/sbahn-schematic.omm" \
    --output "$OMM_NEW/stuttgart/schematic.xml"

"$OMM_CLI" new-format create \
    --input "$OMM_DATA/stuttgart/sbahn-geographic.omm" \
    --output "$OMM_NEW/stuttgart/geographic.xml"

# BART
mkdir -p "$OMM_NEW/bart"
"$OMM_CLI" new-format create \
    --input "$OMM_DATA/bart/schematic.omm" \
    --output "$OMM_NEW/bart/schematic.xml"

"$OMM_CLI" new-format create \
    --input "$OMM_DATA/bart/geographic.omm" \
    --output "$OMM_NEW/bart/geographic.xml"

# Managua
mkdir -p "$OMM_NEW/managua"
"$OMM_CLI" new-format create \
    --input "$OMM_DATA/managua/geographic.omm" \
    --output "$OMM_NEW/managua/geographic.xml"

# Gueret
mkdir -p "$OMM_NEW/gueret"
"$OMM_CLI" new-format create \
    --input "$OMM_DATA/gueret/geographic.omm" \
    --output "$OMM_NEW/gueret/geographic.xml"
