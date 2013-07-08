#!/usr/bin/perl -w
use strict;
use Bio::SeqIO;

my $dir = shift || 'embl_ready';
opendir(DIR,$dir) || die $!;
my $out = Bio::SeqIO->new(-format => 'embl', -file => ">all.embl");
for my $file ( readdir(DIR) ) {
    next unless $file =~ /(\S+)\.embl$/;
    my $name = $1;
    my $in = Bio::SeqIO->new(-format => 'embl', -file => "$dir/$file");
#    warn("name is $name\n");
    while(my $s = $in->next_seq ) {
	$s->display_id($name);
	$s->accession_number($name);
	$out->write_seq($s);
    }
#    last;
}
