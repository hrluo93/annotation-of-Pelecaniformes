#Creating Non-Redundant Protein Sequence
cd-hit-2d -i g7b.faa -i2 zf.faa -o zfnovel.faa -c 0.9 -n 5 -d 0 -M 16000 -T 8
cat g7b.faa zfnovel.faa > homoprot.faa
#Denovo TE finding
EDTA.pl --genome Nny_genome.fa --sensitive 1 --anno 1 --threads 8
