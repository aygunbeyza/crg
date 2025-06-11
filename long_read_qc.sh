#for nanoplot
NanoPlot --ubam /users/project/gencode_006070/jlagarde/nanopore/sequencing_runs/runs/20240115/20240115_BLaER_T0_sc10xONT/20240115_BLaER_T0_sc10xONT/20240115_1628_X1_FAX02366_794829ec/FAX02366_20240115_1632_794829ec.bam -o /users/rg/baygun/nanoplot/nanoplot_sample_1 --N50
#for mop4 (need nextflow)
git clone --depth 1 --recurse-submodules https://github.com/biocorecrg/master_of_pores.git
#for running ==> You can change the parameters either by changing params.config file or by feeding the parameters via command line:(bg for bagground)
nextflow run mop_preprocess.nf -with-singularity > log.txt