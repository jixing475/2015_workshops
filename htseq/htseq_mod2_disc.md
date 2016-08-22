# Discussion Questions

1. How do base qualities affect alignments? What would you expect if you try to align a read with low base qualities? With high base qualities?

2. You have been given the task of looking for short insertions and deletions (INDELs) in a data set. Given what you might know about the error mode in different sequencing technologies, would you use Illumina or PacBio sequencing if you're only interested in finding INDELs?

3. Why are single-molecule sequencing technologies interesting?

4. Sometimes sequencing libraries exhibit low complexity - meaning that some sequence fragments are over-represented and appear as duplicate fragments. Is this a problem for the aligner or is it a problem for downstream analysis projects such as SNP calling and copy number variation (CNV) detection? What can be done about this situation?

5. The notion of a base quality seemed simple enough, what is an alignment quality (sometimes called mapping quality)? If a read aligns uniquely to the genome, would you expect a high or low alignment quality? If a read aligns to many locations in the genome with the same number of mismatches, would you expect a high or low alignment quality?

6. Is it important to know every place where a read can be aligned in the genome? How about with ChIP-Seq or RNA-Seq projects?
