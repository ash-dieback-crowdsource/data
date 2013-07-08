#!/usr/bin/perl -w
use strict;
use Bio::SeqIO;
use File::Spec;
use Getopt::Long;

my $infile = '../../assemblies/gDNA/KW1_assembly_version1/Chalara_fraxinea_TGAC_s1v1_scaffolds.fa';
my $ingff = '../../annotations/Gene_predictions/TGAC_Chalara_fraxinea_ass_s1v1_ann_v1.1/Chalara_fraxinea_ass_s1v1_ann_v1.1.gene.gff';
GetOptions(
    'i|in:s'   => \$infile,
    'gff:s'    => \$ingff,
    );

my $in = Bio::SeqIO->new(-format => 'fasta',
			 -file   => $infile);

my (undef,undef,$name) = File::Spec->splitpath($infile);
$name =~ s/\.fa\S*$//;
my $odir = $name.".d";
mkdir($odir) unless -d $odir;
while(my $seq = $in->next_seq ) {
    my $id = $seq->display_id;
    my $out = Bio::SeqIO->new(-format => 'fasta',
			      -file   => ">$odir/$id.fasta");
    $out->write_seq($seq);
}

open(my $fh => $ingff ) || die $!;
my %dat;
while(<$fh>) {
    next if /^#/;
    chomp;
    my ($seqid,$source,$type,$start,$end,
	$score,$strand,$frame,$ninth) = split(/\t/,$_);
    next if ( $type ne 'CDS');
    my %grp = map { split('=', $_) } split(';',$ninth);
    if( $grp{'Parent'}) {
	print join("\t", $seqid.".fasta",$grp{'Parent'},
	     $strand eq '+' ? ($start,$end) : ($end,$start),
	     'Hypothetical'), "\n";
    }
}
