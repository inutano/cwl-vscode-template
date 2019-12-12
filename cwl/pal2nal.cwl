#!/usr/bin/env cwl-runner
# Generated from: pal2nal.pl  test.aln  test.nuc  -output paml  -nogap  >  for_paml/test.codon
class: CommandLineTool
cwlVersion: v1.0
doc: "PAL2NAL http://www.bork.embl.de/pal2nal/"
baseCommand: pal2nal.pl
arguments:
  - $(inputs.pep_aln)
  - $(inputs.nuc_fasta)
  - -output
  - $(inputs.output)
  - -nogap
inputs:
  - id: pep_aln
    type: File
  - id: nuc_fasta
    type: File
  - id: output
    type: string
outputs:
  - id: out
    type: stdout
stdout: out.codon
requirements:
  DockerRequirement:
    dockerPull: inutano/pal2nal:test
