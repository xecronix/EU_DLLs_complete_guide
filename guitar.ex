#!/usr/bin/env eui
include guitar/guitar.e
atom guitar = guitar_new()
guitar_set_brand(guitar, "fender")
guitar_set_string_count(guitar, 6)
printf(1, "Your guitar is a %d string %s\n", {guitar_get_string_count(guitar), guitar_get_brand(guitar)})
guitar_destroy(guitar)
