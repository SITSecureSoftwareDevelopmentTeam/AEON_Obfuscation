
if [[ $1 == *".apk"* ]];then

	 fileName=$(basename $1)
	 filePath=$(echo $1 | sed -e "s/.apk/_/" )
	 outDir=$filePath$(echo "OUTDIR")
	 echo "OutputDir: "$outDir

	 #Add check if dir ady exist add numeric value to out if it does

	 outFileDir=$(echo $fileName | sed -e "s/.apk//")

	 echo ""

	 echo "Decompiling zip method..."
	 outDirZ=$outDir/D_Zip
	 mkdir -p $outDirZ
	 cp $1 $outDirZ
	 rename "s/.apk/.zip/" $outDirZ/$fileName
	 outFileZip=$(echo $fileName | sed -e "s/.apk/.zip/")
	 unzip -o $outDirZ/$outFileZip -d $outDirZ/$outFileDir > /dev/null
	 dexFiles=$(find $outDirZ/$outFileDir -type f -name "*.dex")
	 
	 for dexFile in $dexFiles;do
		echo "Converting .dex files to .java files..."
		getJavaFilePath=$(echo $dexFile | sed -e "s/.dex//")
		jadx/bin/jadx $dexFile -d $getJavaFilePath > /dev/null
	 done

	 echo ""

	 #ls ../$getJavaFilePath
	 currDir=$(pwd)
	 echo "Getting Beanshellable Java Code..."
	 echo ""
	 cd beanshell_main
	 python IdentifyJavaMethods.py ../$getJavaFilePath
	 cd $currDir
	
	 echo ""

	 echo "Decompiling apk method..."
	 outDirA=$outDir/D_Apk
	 mkdir -p $outDirA
	 cp $1 $outDirA
	 obfDir=$(echo $outDirA/$(basename $1) | sed -e "s/.apk//")
	 apktool d -r -f $outDirA/$(basename $1) -o $obfDir > /dev/null

	 echo ""

	 echo "Copying bsh libary to decompiled apk..."
	 cp -r smali_bsh/bsh $obfDir/smali/

	 echo ""

	 echo "Modifying Smali Code..."	
	 cd smali_bsh
	 ls
	 echo ../$obfDir/smali
	 python ModifyMethods.py ../$obfDir/smali
	 cd $currDir
	 echo 

	 apktool b $obfDir
	 obfPath=$obfDir/dist
	 if [ -d $obfDir/dist ];then
		mkdir -p $outDir/$outFileDir
		cp -r $obfPath/* $outDir/$outFileDir
	 else
		echo "Apk couldn't be build" 
 	 fi
else
 	 echo $0 " <apk file>"
fi
