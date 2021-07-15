#!/usr/bin/env bash

# ---------------- Requirements -------------------
# GCC >= 5.1.0		(by default on ubuntu >= 16.04)
# Cmake >= 3.13.4	(done) 
# python >= 3.6		(by default)
# zlib >= 1.2.3.4	(done)
# GNU Make >= 3.8	(by default on ubuntu >= 16.04)
# ------------------------------------------------

sudo apt-get update
sudo apt-get upgrade
#########################
# Install cmake && zlib #
#########################
sudo apt-get -y install cmake zlib


PKG_VERSION=12

######################################
# Install the latest version of LLVM #
######################################

sudo bash -c "$(wget -O - https://apt.llvm.org/llvm.sh)"

#####################################
# Install clang libraries and tools #
#####################################

# Clang and co
sudo apt-get install -y clang-${PKG_VERSION} \
	     clang-tools-${PKG_VERSION} \
	     clang-tidy-${PKG_VERSION} \
	     clang-format-${PKG_VERSION} \
	     clang-${PKG_VERSION}-doc \
	     libclang-common-${PKG_VERSION}-dev \
	     libclang-${PKG_VERSION}-dev \
	     libclang1-${PKG_VERSION} \
	     python-clang-${PKG_VERSION} \
	     clangd-${PKG_VERSION}
# libc++
sudo apt-get install -y libc++-${PKG_VERSION}-dev libc++abi-${PKG_VERSION}-dev
# lldb
sudo apt-get install -y lldb-${PKG_VERSION}
# lld (linker) 
sudo apt-get install -y lld-${PKG_VERSION}
# OpenMP
sudo apt-get install -y libomp-${PKG_VERSION}-dev


################################
# Set clang as default comiler # 
################################

