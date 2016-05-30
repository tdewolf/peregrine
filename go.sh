#!/bin/bash

echo "Removing build dir content..."
rm -rf build_customer/*
rm -rf build_oem/*
rm -rf build_admin/*
echo "Building Customer PDF"
PERSONA=customer make BUILDDIR=build_customer latexpdf
echo "Building Customer HTML"
PERSONA=customer make BUILDDIR=build_customer html
#read -p "Customer doc created, press any key for OEM version..."
echo "Building OEM PDF"
PERSONA=oem make BUILDDIR=build_oem latexpdf
echo "Building OEM HTML"
PERSONA=oem make BUILDDIR=build_oem html
#read -p "OEM doc created, press any key for Admin version..."
echo "Building Admin PDF"
PERSONA=admin make BUILDDIR=build_admin latexpdf
echo "Building Admin HTML"
PERSONA=admin make BUILDDIR=build_admin html
ls -als build_customer/latex/Peregrine.pdf
ls -als build_oem/latex/Peregrine.pdf
ls -als build_admin/latex/Peregrine.pdf
