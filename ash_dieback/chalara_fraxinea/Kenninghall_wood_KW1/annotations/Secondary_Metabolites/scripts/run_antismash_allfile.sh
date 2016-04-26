#PBS -l nodes=1:ppn=12,mem=96gb -N antiSMASH-ash -j oe -o antiSMASH -q highmem
CPUS=12

module load antismash/2.0.2
INFILE=make_embl/embl_ready_fixed/*.embl
ODIR=antismash_all_out
DIR=/bigdata/jstajich/ash-dieback/data/ash_dieback/chalara_fraxinea/Kenninghall_wood_KW1/annotations/Secondary_Metabolites
mkdir $DIR/$ODIR;
cd $DIR/$ODIR
echo $DIR/$NAME
run_antismash --eukaryotic --input-type nucl  --clusterblast --subclusterblast  --inclusive --smcogs --full-hmmer --full-blast --outputfolder $DIR/$ODIR --cpus $CPUS $DIR/$INFILE
