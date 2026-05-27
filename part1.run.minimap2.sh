minimap2 -ax map-ont \
    -t 8 \
    GCA_000001405.15_GRCh38_no_alt_analysis_set.fasta \
    COLO829_tumor.ht.fastq.gz | \
    samtools sort -o COLO829_tumor.ht.bam
