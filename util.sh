#!/bin/bash
TZ=UTC0 \
git log \
-n 1 \
--format=format:"v0.0.0-%cd-%H" \
--date='format-local:%Y%m%d%H%M%S' \
HEAD \
 | \
cut -c1-34
