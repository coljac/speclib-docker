#!/bin/bash
docker run -it --rm -v $(pwd):/data -w /data coljac/speclib:latest $@
