NXF_VER=23.10.1 nextflow run nf-core/nanoseq \
-r 3.1.0 \
--input samplesheet.csv \
--protocol DNA \
--skip_quantification \
--skip_demultiplexing \
--outdir ./results \
-profile docker
