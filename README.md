---
title: "Getting and Cleaning Data - Course Project Readme"
output: html_document
---

# Purpose

This dataset has been compiled as a further analysis of the Human Activity Using
Smartphones dataset provided by the UMI Machine Learning Repository.

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The goal is to create a more tidy dataset, that functions within R, and report
the mean of all indicated features for each Subject/Activity combination.

# Source

All data was acquired from the UMI Machine Learning Repository at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip, at 3:30PM on 4/24/2015.

# Description

This data summarizes various findings that were compiled from a set of Subjects
conducting Activities, meausred by Samsung smartphones.

A more complete explanation of the analysis and data processing can be found in
CodeBook.md.

# Contents

This repository contains

Codebook.md: An explanation of the data included, and the transformations/analysis
that were performed in order to deliver it.

datameans.txt: The dataset for this repository.

fdecode.R: An R function for matching the Feature names from the original dataset
with a key, to better understand their significance.

fdecode.txt: The key used by fdecode.R.

run_analysis.R: An R script which performs the transformation on the original UMI 
dataset, resulting in the data contained herein.

# How-to Use

Build this dataset from scratch:
1) Download the original dataset from UMI at the link provided above
2) Run run_analysis.R

View the dataset, as provided, in R:
1) dt_datameans <- read.table("datameans.txt")

Understand more information about a given feature name:
1) Run fdecode.R
2) (eg) fdecode("m.tbodyacc.mean.z")