#!/bin/bash
# example running script for basicMF

# make buffer, transform text format to binary format
../resource/svdfeature-1.2.2/tools/make_feature_buffer data/svd_train.txt ua.base.buffer
../resource/svdfeature-1.2.2/tools/make_feature_buffer data/svd_test.txt ua.test.buffer
../resource/svdfeature-1.2.2/tools/make_feature_buffer data/svd_predict.txt ua.predict.buffer

# training for 40 rounds
../resource/svdfeature-1.2.2/svd_feature basicMFtrain.conf num_round=40 
# write out prediction from 0040.model
../resource/svdfeature-1.2.2/svd_feature_infer basicMFpredict.conf pred=40 
