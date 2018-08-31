#!/bin/bash

set -eux

export LD_LIBRARY_PATH=/usr/local/lib

samtools view -bS ${INPUT_SAM} > ${OUTPUT_DIR}/temp.bam
samtools sort ${OUTPUT_DIR}/temp.bam ${OUTPUT_DIR}/${OUTPUT_NAME}
samtools index ${OUTPUT_DIR}/${OUTPUT_NAME}

<< COMMENTOUT

--input INPUT_SAM	s3://aokad-ana-bucket/challenge/bamsort-20180831/bam/5929_tumor.sam
--output-recursive OUTPUT_DIR	s3://aokad-ana-bucket/challenge/bamsort-20180831/samtools-1.2/
--env OUTPUT_NAME	5929_tumor.sorted

<< COMMENTOUT
