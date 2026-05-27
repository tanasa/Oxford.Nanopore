docker run --rm \
-v $PWD:/data \
hkubal/clairs-to:latest \
run_clairs_to \
--tumor_bam /data/COLO829_tumor.ht.bam \
--ref_fn /data/GCA_000001405.15_GRCh38_no_alt_analysis_set.fasta \
--platform ont \
--threads 8 \
--output_dir /data/clairs_to_output_dir \
--platform ont_r10_dorado_sup_5khz
