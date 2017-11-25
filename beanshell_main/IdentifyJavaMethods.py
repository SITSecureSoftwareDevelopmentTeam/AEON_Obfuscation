import sys
import os

java_Modifiers=("public","private","protected","static","abstract","sycnchronized","extends","implement","interface","inheritance")



java_ReturnTypes=("")

class IdentifyJavaMethods:

	

	def TestJavaMethods(self,Methods):
		Input_TestMethod = open("Input_TestMethod","r").read()

		Input_TestMethod = Input_TestMethod.replace("INSERT_METHOD",Methods[3][0:-1])
		Input_TestMethod = Input_TestMethod.replace("METHOD_RETURN",Methods[1])
		Input_TestMethod = Input_TestMethod.replace("METHOD_NAME",Methods[0])

		open("TestMethod.java","w").write(Input_TestMethod)
		os.system("javac TestMethod.java > /dev/null")

		os.system("java TestMethod > Output_TestMethod")
		
			

		

	def IdentifyMethods_Java(self,filePath):
		FileContent = open(filePath).read().split("\n")
		
		Methods={}
		methCount=0
		methodTrack=False
		bracketCount=0

		for line in FileContent:
		  if "class" not in line:

		     tmpArray= line.lstrip().split(" ")
		     tmp=[ x for x in java_Modifiers if x in line ]
		     if len(tmp) > 0 and (("(" in line) or (")" in line)):
		       Methods[methCount]=[] 

		       tmpLine=line 
		       for t in tmp:
			   tmpLine=tmpLine.lstrip().replace(t,"")

		       #ToDO - Check if constructor class (e.g pubic MethName)

		       #Getting MethodName		     
		       Methods[methCount].append(tmpLine.split(" ")[2].split("(")[0]	)		

		       #Getting ReturnType
		       Methods[methCount].append(tmpLine.split(" ")[1])

		       #Getting Parameters
		       Methods[methCount].append(tmpLine.split("(")[1].split(")")[0].split(","))
		       
		       Methods[methCount].append("")
		       methodTrack=True;
		       pass

                  if methodTrack == True and "Log.i" not in line:
		       Methods[methCount][3]+=  " \""+ line.replace("\\","\\\\").replace("\"","\\\"") +" \\n" +"\""+"+"
		       if "{" in line:
			 bracketCount += 1
		       if "}" in line:
			 bracketCount -= 1
		       if bracketCount == 0:
			 methodTrack = False
			 methCount+=1
		  
		return Methods
			

	def IdentifyJava_Files(self,path):
	    javaFiles=[]
	    if os.path.isdir(path):
		for dirs, subdirs, folder in os.walk(path):
		     if "android/support" not in dirs:
			for fileName in folder:
			   if ".java" in fileName:
				javaFiles.append(dirs+"/"+fileName)
	    else:
		if ".java" in path:
			javaFiles.append(path)
	
	    return javaFiles


	def __init__(self):
		print ""
		if len(sys.argv) > 1 and os.path.exists(sys.argv[1]):

			javaFiles = self.IdentifyJava_Files(sys.argv[1])	

			text=""
			for javaFile in javaFiles:

			     text += "\n-------------------------------------------------------------------------------------------------------\n"
			     #print "FilePath: ", javaFile.replace(sys.argv[1],""), "\n"
			     text += "FilePath: "+ javaFile.replace(sys.argv[1],"")+ "\n"

			     Methods = self.IdentifyMethods_Java(javaFile)			     
			    
			     for i in range(0,len(Methods)):
			        if Methods[i][1] != "void" and Methods[i][1] != "final" :
				   self.TestJavaMethods(Methods[i])
				   if open("Output_TestMethod").read().rstrip() == "SUCCESS":
					text += "\n---------------------------------------------------\n"
					#print "MethodName: ", Methods[i][0]
					text += "MethodName: "+ Methods[i][0] + "\n"
				
					#print "ReturnType: ", Methods[i][1]
					text += "ReturnType: "+ Methods[i][1] + "\n"

					#print "Parameters: ", Methods[i][2]
					text += "Parameters: "+ ",".join(Methods[i][2]) + "\n"

					#print "Method: \n", Methods[i][3][0:-2],"\n"
					text += "Method: "+ Methods[i][3][0:-1] + "\n"
					

					Input_JavaStrEnc = open("Input_JavaStrEnc").read()
					Input_JavaStrEnc = Input_JavaStrEnc.replace("INSERT_METHOD",Methods[i][3][0:-1])
					open("JavaStrEnc.java","w").write(Input_JavaStrEnc)
					os.system("javac JavaStrEnc.java > /dev/null")

					os.system("java JavaStrEnc > Output_TestMethod")
					EncryptedMethod= open("Output_TestMethod").read()
					text += "EncryptedMethod: "+ EncryptedMethod + "\n"

					text += "\n---------------------------------------------------\n"

			     text += "\n-------------------------------------------------------------------------------------------------------\n\n"

			print text
			open("../Beanshell_able_methods","w").write(text)	

		else:

			print "Please enter path to java files"
				

IdentifyJavaMethods()

