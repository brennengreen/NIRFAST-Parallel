# IMPLEMENTATION SPECIFIC

This implementation uses the MATLAB GPU Computing toolkit to parallelize several functions in NIRFAST.
This implementation is being used by the [University of Kentucky Biomedical Optics Lab](https://bioptics.engr.uky.edu/)

## CURRENT CHANGES

- mean_filter.m

## NIRFASTMatlab v9.0 -- PARALELL IMPLEMENTATION

07/16/2020

NIRFAST is now a combined software package consisting of two main components:

1. NIRFASTSlicer - A medical image processing and analysis component built on the 3DSLicer
2. NIRFASTMatlab - The mesh generation and optical computation component built on MATLAB

The download associated with this readme is NIRFASTMatlab on its own, which some users prefer to use.

The combined package can be downloaded at nirfast.org (Recommended - comes with NIRFASTMatlab built in, which can be run in stand-alone mode)

## INSTALLATION of stand-alone NIRFASTMatlab

1. Unzip Nirfast onto your computer.
2. Open Matlab, and go to File -> Set Path -> Add With Subfolders.
3. Select the Nirfast folder, then Save and Close.
4. Type 'nirfast' (no quotes) in the Matlab prompt to start the NIRFASTMatlab GUI.