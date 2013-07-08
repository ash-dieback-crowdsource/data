#PBS -l nodes=1:ppn=2,mem=4gb -N antiSMASH-ash -j oe -o antiSMASH
CPUS=2

module load antismash/2.0.2

LIST=lst
ODIR=antismash_out
DIR=/bigdata/jstajich/ash-dieback/data/ash_dieback/chalara_fraxinea/Kenninghall_wood_KW1/annotations/Secondary_Metabolites
cd $DIR/$ODIR
echo $DIR/$NAME
run_antismash --eukaryotic --input-type nucl  --clusterblast --subclusterblast  --inclusive --smcogs --full-hmmer --full-blast --enable-xls --cpus $CPUS $DIR/$NAME

