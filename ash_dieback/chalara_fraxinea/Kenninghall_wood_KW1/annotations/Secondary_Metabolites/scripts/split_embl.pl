#!/usr/bin/perl -w
use strict;
use warnings;
use Bio::SeqIO;

my $in = Bio::SeqIO->new(-format => 'embl', -file => 'all.embl');
my $odir = 'embl_ready_fixed';
while( my $seq = $in->next_seq ) {
 my $outacc = $seq->accession_number;
 $outacc =~ s/Cf746836_TGAC_s1v1_//;
 $seq->accession_number($outacc);
 $seq->display_id($outacc);
 Bio::SeqIO->new(-format => 'embl', -file =>">$odir/$outacc.embl")->write_seq($seq);
}
