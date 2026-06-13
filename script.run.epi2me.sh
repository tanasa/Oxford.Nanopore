export NXF_VER=25.04.8

nextflow run epi2me-labs/wf-alignment \
--fastq 'wf-alignment-demo/fastq' \
--references 'wf-alignment-demo/references' \
--out_dir nano_wf-alignment \
--per_read_stats \
--igv \
--depth_coverage \
--minimap_preset dna \
--threads 12
