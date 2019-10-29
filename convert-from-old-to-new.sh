#!/bin/bash

OMM_CLI=~/"github/OpenMetroMaps/OpenMetroMaps/java/scripts/openmetromaps-cli"
OMM_DATA=~/"github/OpenMetroMapsData"
OMM_NEW=~/"github/OpenMetroMapsData/new-format"

set -e

# Berlin
mkdir -p "$OMM_NEW/berlin"
"$OMM_CLI" new-format create \
    --input "$OMM_DATA/berlin/geographic.omm" \
    --output "$OMM_NEW/berlin/geographic.xml"

"$OMM_CLI" new-format create \
    --input "$OMM_DATA/berlin/schematic.omm" \
    --output "$OMM_NEW/berlin/schematic.xml"

"$OMM_CLI" new-format create --segment-mode straight \
    --input "$OMM_DATA/berlin/geographic.omm" \
    --output "$OMM_NEW/berlin/geographic-straight.xml"

"$OMM_CLI" new-format create -segment-mode straight \
    --input "$OMM_DATA/berlin/schematic.omm" \
    --output "$OMM_NEW/berlin/schematic-straight.xml"

# VBB
mkdir -p "$OMM_NEW/vbb-regio"
"$OMM_CLI" new-format create \
    --input "$OMM_DATA/vbb-regio/geographic.omm" \
    --output "$OMM_NEW/vbb-regio/geographic.xml"

"$OMM_CLI" new-format create \
    --input "$OMM_DATA/vbb-regio/schematic.omm" \
    --output "$OMM_NEW/vbb-regio/schematic.xml"

"$OMM_CLI" new-format create --segment-mode straight \
    --input "$OMM_DATA/vbb-regio/geographic.omm" \
    --output "$OMM_NEW/vbb-regio/geographic-straight.xml"

"$OMM_CLI" new-format create --segment-mode straight \
    --input "$OMM_DATA/vbb-regio/schematic.omm" \
    --output "$OMM_NEW/vbb-regio/schematic-straight.xml"

# Vienna
mkdir -p "$OMM_NEW/vienna"
"$OMM_CLI" new-format create \
    --input "$OMM_DATA/vienna/geographic.omm" \
    --output "$OMM_NEW/vienna/geographic.xml"

"$OMM_CLI" new-format create \
    --input "$OMM_DATA/vienna/schematic.omm" \
    --output "$OMM_NEW/vienna/schematic.xml"

"$OMM_CLI" new-format create --segment-mode straight \
    --input "$OMM_DATA/vienna/geographic.omm" \
    --output "$OMM_NEW/vienna/geographic-straight.xml"

"$OMM_CLI" new-format create --segment-mode straight \
    --input "$OMM_DATA/vienna/schematic.omm" \
    --output "$OMM_NEW/vienna/schematic-straight.xml"

# Stuttgart
mkdir -p "$OMM_NEW/stuttgart"
"$OMM_CLI" new-format create \
    --input "$OMM_DATA/stuttgart/sbahn-schematic.omm" \
    --output "$OMM_NEW/stuttgart/schematic.xml"

"$OMM_CLI" new-format create \
    --input "$OMM_DATA/stuttgart/sbahn-geographic.omm" \
    --output "$OMM_NEW/stuttgart/geographic.xml"

"$OMM_CLI" new-format create --segment-mode straight \
    --input "$OMM_DATA/stuttgart/sbahn-schematic.omm" \
    --output "$OMM_NEW/stuttgart/schematic-straight.xml"

"$OMM_CLI" new-format create --segment-mode straight \
    --input "$OMM_DATA/stuttgart/sbahn-geographic.omm" \
    --output "$OMM_NEW/stuttgart/geographic-straight.xml"

# BART
mkdir -p "$OMM_NEW/bart"
"$OMM_CLI" new-format create \
    --input "$OMM_DATA/bart/schematic.omm" \
    --output "$OMM_NEW/bart/schematic.xml"

"$OMM_CLI" new-format create \
    --input "$OMM_DATA/bart/geographic.omm" \
    --output "$OMM_NEW/bart/geographic.xml"

"$OMM_CLI" new-format create --segment-mode straight \
    --input "$OMM_DATA/bart/schematic.omm" \
    --output "$OMM_NEW/bart/schematic-straight.xml"

"$OMM_CLI" new-format create --segment-mode straight \
    --input "$OMM_DATA/bart/geographic.omm" \
    --output "$OMM_NEW/bart/geographic-straight.xml"

# Managua
mkdir -p "$OMM_NEW/managua"
"$OMM_CLI" new-format create \
    --input "$OMM_DATA/managua/geographic.omm" \
    --output "$OMM_NEW/managua/geographic.xml"

"$OMM_CLI" new-format create --segment-mode straight \
    --input "$OMM_DATA/managua/geographic.omm" \
    --output "$OMM_NEW/managua/geographic-straight.xml"

# Gueret
mkdir -p "$OMM_NEW/gueret"
"$OMM_CLI" new-format create \
    --input "$OMM_DATA/gueret/geographic.omm" \
    --output "$OMM_NEW/gueret/geographic.xml"

"$OMM_CLI" new-format create --segment-mode straight \
    --input "$OMM_DATA/gueret/geographic.omm" \
    --output "$OMM_NEW/gueret/geographic-straight.xml"
