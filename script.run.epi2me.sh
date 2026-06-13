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

export NXF_VER=25.04.8

nextflow run epi2me-labs/wf-single-cell \
    --expected_cells 100 \
    --fastq wf-single-cell-demo/chr17.fq.gz \
    --kit 3prime:v3 \
    --ref_genome_dir wf-single-cell-demo \
    --genes_of_interest wf-single-cell-demo/umap_plot_genes.csv \
    --out_dir nano_wf-single-cell \
    --threads 8 \
    --matrix_min_genes 200 \
    --matrix_min_cells 3 \
    --matrix_max_mito 20 \
    --matrix_norm_count 10000 \
    --stringtie_opts "-c 2" \
    --estimate_cell_count true \
    --call_variants true \
    -c custom.config \
    -resume \
    -profile standard

  
# custom.config
#  process {
#  resourceLimits = [
#    cpus: 16,
#    memory: '32.GB'
#  ]
# }

export NXF_VER=25.04.8

nextflow run epi2me-labs/wf-human-variation \
  --bam wf-human-variation-demo/demo.bam \
  --ref wf-human-variation-demo/demo.fasta \
  --bed wf-human-variation-demo/demo.bed \
  --sample_name DEMO \
  --snp \
  --sv \
  --str \
  --mod \
  --phased \
  --annotation true \
  --igv true \
  --out_dir nano_human_variation \
  --use_qdnaseq true \
  --qdnaseq_bin_size 100 \
  --force_strand true \
  --depth_intervals true \
  --threads 10 \
  --ubam_map_threads 10 \
  --ubam_sort_threads 10 \
  --modkit_threads 10 \
  -profile standard \
  -c custom.config \
  -resume
