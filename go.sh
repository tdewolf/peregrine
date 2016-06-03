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
echo "Copying Files to Local Release Directory"
RELEASEDIRHTML=~/Documents/Amplidata-HGST/Peregrine/Releases/html
RELEASEDIRPDF=~/Documents/Amplidata-HGST/Peregrine/Releases/pdf
cp build_customer/latex/Peregrine.pdf $RELEASEDIRPDF/AS_CM_Customer.pdf
cp build_customer/latex/Peregrine.pdf $RELEASEDIRPDF/AS_CM_Customer_`date +%Y-%m-%d`.pdf
cp build_oem/latex/Peregrine.pdf $RELEASEDIRPDF/AS_CM_OEM.pdf
cp build_oem/latex/Peregrine.pdf $RELEASEDIRPDF/AS_CM_OEM_`date +%Y-%m-%d`.pdf
cp build_admin/latex/Peregrine.pdf $RELEASEDIRPDF/AS_CM_Admin.pdf
cp build_admin/latex/Peregrine.pdf $RELEASEDIRPDF/AS_CM_Admin_`date +%Y-%m-%d`.pdf
echo "Creating HTML Archive Customer in Local Release Directory"
tar czf $RELEASEDIRHTML/AS_CM_Customer_`date +%Y-%m-%d`.tar.gz build_customer/html
tar czf $RELEASEDIRHTML/AS_CM_Customer.tar.gz build_customer/html
echo "Creating HTML Archive OEM in Local Release Directory"
tar czf $RELEASEDIRHTML/AS_CM_OEM_`date +%Y-%m-%d`.tar.gz build_oem/html
tar czf $RELEASEDIRHTML/AS_CM_OEM.tar.gz build_oem/html
echo "Creating HTML Archive Admin in Local Release Directory"
tar czf $RELEASEDIRHTML/AS_CM_Admin_`date +%Y-%m-%d`.tar.gz build_admin/html
tar czf $RELEASEDIRHTML/AS_CM_Admin.tar.gz build_admin/html
