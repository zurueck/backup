#!/bin/bash

find . \
         \( \
         -name .git -type d -o \
         -name .git\* -type f -o \
         -name docs -type d -o \
         -name .repo -type d -o \
         -name doc -type d -o \
         -iname jdk\* -o \
         -path out/FileSystem -o \
         -path out/_sysroot -o \
         -path out/ipmid -o \
         -path toolchain/Host/i386 -o \
         -path toolchain/Host/x86_64 -o \
         -path FileSystem/Host/AST2500/build\.\* -type d -o \
         -path Build\.\* -o \
         -path images -o \
         -path build/cache -o \
         -path build/downloads -o \
         -path build/sstate-cache -o \
         -path build/tmp/buildstats -o \
         -path build/tmp/cache -o \
         -path build/tmp/deploy -o \
         -path build/tmp/hosttools -o \
         -path build/tmp/log -o \
         -path build/tmp/pkgdata -o \
         -path build/tmp/sstate-control -o \
         -path build/tmp/stamps -o \
         -path build/tmp/sysroots -o \
         -path build/tmp/sysroots-components -o \
         -path build/tmp/work/\.\*/deploy-rpms -o \
         -path build/tmp/work/\.\*/license-destdir -o \
         -path build/tmp/work/\.\*/temp -o \
         -path build/tmp/work/\.\*/recipe-sysroot -o \
         -path build/tmp/work/\.\*/recipe-sysroot-native -o \
         -path build/tmp/work-shared/\.\*/recipe-sysroot -o \
         -path build/tmp/work-shared/\.\*/recipe-sysroot-native -o \
         -path poky/documentation -o \
         -iname Documentation -type d \
         -path '*/\.*' -type f \
         \) -prune -o \
         \( \
         -iname \*.am -o \
         -iname \*.ac -o \
         -iname \*.hpp -o \
         -iname \*.cc -o \
         -iname \*.conf -o \
         -iname \*.config -o \
         -iname \*.machine -o \
         -name ProjectConfig-AST2500 -o \
         -name ProjectConfig-JavaAP -o \
         -name ProjectConfig-x86 -o \
         -name ProjectConfig-x86_64 -o \
         -name \*defines -o \
         -iname \*.cpp -o \
         -iname \*.java -o \
         -iname \*Kconfig\* -o \
         -iname \*Makefile\* -o \
         -iname \*.mk -o \
         -iname \*.mak -o \
         -iname \*.inc -o \
         -iname \*.ini -o \
         -iname \*.py -o \
         -iname \*.rc -o \
         -iname \*.xml -o \
         -iname \*_defconfig -o \
         -iname \*.dts -o \
         -iname \*.dtsi -o \
         -iname \*.cfg -o \
         -iname \*.mkconfig -o \
         -iname \*.lds -o \
         -iname \*.[chxsS] -o \
         -iname \*.env -o \
         -iname \*.normal -o \
         -iname \*.bb -o \
         -iname \*.bbclass -o \
         -iname \*.bbappend -o \
         -path PKConfig/\*.in -o \
         -path platform/Supervyse3.0/\*.in -o \
         -name Makefile.lib \
         \) -type f > tagfilelist

echo "start to creating cscope.out"
echo "It may take a while. Be patient ......."

cscope -b -k -q -i tagfilelist 2>cscope.error







