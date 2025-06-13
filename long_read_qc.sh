#1.epi2me
# 1.1.docker install
sudo apt update
sudo apt install -y docker.io
sudo usermod -aG docker ${USER}
sudo systemctl restart docker
#1.2. nextflow install
conda install bioconda::nextflow
#1.3. run epi2me
nextflow run epi2me-labs/wf-human-variation \
-r v0.2.0 \                     # Workflows' varation
--input a.bam \                
--outdir results_epi2me \      
-profile docker                # Docker profiliyle çalıştır (container kullan)


#2. for nanoplot
NanoPlot --ubam /users/project/gencode_006070/jlagarde/nanopore/sequencing_runs/runs/20240115/20240115_BLaER_T0_sc10xONT/20240115_BLaER_T0_sc10xONT/20240115_1628_X1_FAX02366_794829ec/FAX02366_20240115_1632_794829ec.bam -o /users/rg/baygun/nanoplot/nanoplot_sample_1 --N50


#3.for mop4 (need nextflow)
#NOTE: Please install nextflow Nextflow and either Singularity or Docker before
#3.1. for installing
curl -s https://get.nextflow.io | bash
git clone --depth 1 --recurse-submodules https://github.com/biocorecrg/MOP2.git
cd MoP2; bash INSTALL.sh
#for running ==> You can change the parameters either by changing params.config file or by feeding the parameters via command line:(bg for bagground)
nextflow run mop_preprocess.nf -with-singularity > log.txt