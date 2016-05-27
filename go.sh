#!/bin/bash

echo "Removing build dir content..."
rm -rf build_customer/*
rm -rf build_oem/*
rm -rf build_admin/*
PERSONA=customer make BUILDDIR=build_customer latexpdf
read -p "Customer doc created, press any key for OEM version..."
PERSONA=oem make BUILDDIR=build_oem latexpdf
read -p "OEM doc created, press any key for Admin version..."
PERSONA=admin make BUILDDIR=build_admin latexpdf
ls -als build_customer/latex/Peregrine.pdf
ls -als build_oem/latex/Peregrine.pdf
ls -als build_admin/latex/Peregrine.pdf
