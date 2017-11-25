import os
import sys

class ModifyMethods():

	def AddRunMethod(self, modifiedMethod,returnTypes):
		#print "ADD MODIFIED METHOD"
		RunMethod = open("Run_Method.txt").read()
		#print RunMethod
		#Add Twisted MethodOverloading

		#For Testing Purpose am doing it for only single return type
		RunMethod = RunMethod.replace("LRETURN_TYPE;",returnTypes[0])
		#print RunMethod


		modifiedMethod += "\n\n" + RunMethod
		
		return modifiedMethod

	def addEncryptedMethod(self, smaliMethods,javaFiles_beanshellable,smaliFileName,tmpSmaliFile):

		currPath = smaliFileName.replace(sys.argv[1],"").replace(".smali","")[1:]
		returnTypes=[]
		for filePath in javaFiles_beanshellable:
			for JmethodName in javaFiles_beanshellable[filePath]:
				for SmethodName in smaliMethods:
				    
				    if SmethodName != JmethodName and JmethodName in smaliMethods[SmethodName][1] and len(smaliMethods[SmethodName])==3:

					open("tmp","w").write(smaliMethods[SmethodName][1])
					command = "cat tmp | grep \""+JmethodName+"\" > out"
					os.system(command)
					methodOccur = open("out").read().rstrip().split("\n")
					
					numOfVar=int(smaliMethods[SmethodName][2])
			
					newMeth = smaliMethods[SmethodName][1]				

					if int(numOfVar)+len(methodOccur) <= 15:
						
						for lineMethodOccur in methodOccur:
						    if filePath.replace(".java","") in lineMethodOccur:
							#print "\nOrg: ", lineMethodOccur
							
							ToReplaceTxt = open("To_Replace.txt").read()

							ToReplaceTxt = ToReplaceTxt.replace("VARIABLE_NUM",str(numOfVar))
							ToReplaceTxt = ToReplaceTxt.replace("CURR_PATH",str(currPath))
							ToReplaceTxt = ToReplaceTxt.replace("LRETURN_TYPE;",str(smaliMethods[JmethodName][0]))
							returnTypes.append(str(smaliMethods[JmethodName][0]))

							ToReplaceTxt = ToReplaceTxt.replace("ENCRYPTED_METHOD",str(JmethodName)+"(); "+str(javaFiles_beanshellable[filePath][JmethodName][3]))

			
							numOfVar += 1
							#print "\nNew: ", ToReplaceTxt
							newMeth = newMeth.replace(".locals "+str(smaliMethods[SmethodName][2]),".locals "+str(numOfVar))
							newMeth = newMeth.replace(lineMethodOccur,ToReplaceTxt)

					      
				        #print "\n\n"
				        tmpSmaliFile = tmpSmaliFile.replace(smaliMethods[SmethodName][1]	,newMeth)
				    else:
					if filePath.replace(".java","") == currPath :
					   tmpSmaliFile = tmpSmaliFile.replace(smaliMethods[JmethodName][1],"")

		#AddRunType
		tmpSmaliFile = self.AddRunMethod(tmpSmaliFile,returnTypes)
		return tmpSmaliFile		


			
	def IdentifySmaliMethod(self,filePath,fileContent):
			
		#Methods
		Methods = {}
		TrackMethod = False
		TrackCode = False
		c=0
	 
		for line in fileContent.split("\n"):
	 	    if ".method" in line:
			#Get Method Name
			methodName = line.split("(")[0].split(" ")[-1]
			if "<" not in methodName or ">" not in methodName:
				Methods[methodName]=[]

				#Getting MethodName
				#Methods[c].append(methodName)

				#Getting ReturnType
				methodReturnType = line.split(")")[-1]
				Methods[methodName].append(methodReturnType)			        

				#Getting Method
				Methods[methodName].append(line + "\n")
				#print line

				TrackMethod = True
		    elif ".locals " in line and TrackMethod == True:
			Methods[methodName][1] += line + "\n"
			Methods[methodName].append(line.replace(".locals ","").lstrip())
                    elif ".end method" in line and TrackMethod == True:
			#print line
			Methods[methodName][1] += line + "\n"
			#print "\n\n"
			TrackMethod = False
			c+=1
		    elif TrackMethod == True:
			#print line
			Methods[methodName][1] += line + "\n" 
		
			
		return Methods
			
	
	def ReadModifiableMethods(self):
		fileContent = open("../Beanshell_able_methods").read().split("\n-------------------------------------------------------------------------------------------------------\n")

		javaFiles_beanshellable = {}

		for lines in fileContent:
			if lines != "" and "MethodName" in lines:
				filePath = lines.split("\n")[0].split("FilePath: ")[-1][1:]
				
				javaFiles_beanshellable[filePath] = {}

				meth = lines.split("---------------------------------------------------")
				
				c=0
				for m in meth[1:-1]:
				  if m != "":

				     EncryptedMethod = m.split("EncryptedMethod: ")[-1]
				     #print "METHOD: ", Method,"\n"
				     m = m.replace("EncryptedMethod: "+EncryptedMethod,"")

				     Method = m.split("Method: ")[-1]
				     #print "METHOD: ", Method,"\n"
				     m = m.replace("Method: "+Method,"")

				     Parameters = m.split("Parameters: ")[-1]
				     #print "PARAMETERS: ", Parameters, "\n"
				     m = m.replace("Parameters: "+Parameters,"")
				
				     ReturnType = m.split("ReturnType: ")[-1]
				     #print "RETURNTYPE: ", ReturnType, "\n"
				     m = m.replace("ReturnType: "+ReturnType,"")

				     MethodName = m.split("MethodName: ")[-1]
				     #print "METHODNAME: ", MethodName, "\n"
				     m = m.replace("MethodName: "+MethodName,"")


				     javaFiles_beanshellable[filePath][MethodName.rstrip()] = []

				     #Add ReturnType [0]
				     javaFiles_beanshellable[filePath][MethodName.rstrip()].append(ReturnType.rstrip())
				     #Add Parameters [1]
				     javaFiles_beanshellable[filePath][MethodName.rstrip()].append(Parameters.rstrip())
				     #Add Parameters [2]
				     javaFiles_beanshellable[filePath][MethodName.rstrip()].append(Method.rstrip())
				     #Add MethodName [3]
				     javaFiles_beanshellable[filePath][MethodName.rstrip()].append(EncryptedMethod.rstrip())
					
				     c+=1
				    

		return javaFiles_beanshellable

	def IdentifySmali_Files(self,path):
	    smaliFiles=[]
	    if os.path.isdir(path):
		for dirs, subdirs, folder in os.walk(path):
		     if "android/support" not in dirs and "bsh" not in dirs :
			for fileName in folder:
			   if ".smali" in fileName:
				smaliFiles.append(dirs+"/"+fileName)
	    else:
		if ".smali" in path:
			smaliFiles.append(path)
	
	    return smaliFiles

	
	def __init__(self):
		if len(sys.argv) > 1 and os.path.exists(sys.argv[1]):
	
			smaliFiles = self.IdentifySmali_Files(sys.argv[1])
		
			javaFiles_beanshellable = self.ReadModifiableMethods()
	
			#smaliMethods = {}

			#Check if any beanshellable method exist in smali file
			for smaliFile in smaliFiles:

			    currPath = smaliFile.replace(sys.argv[1],"").replace(".smali","")

			    #smaliMethods[currPath]=[]

			    tmpSmaliFile= open(smaliFile).read()
		

			    if any( javaFile.replace(".java","") in tmpSmaliFile for javaFile in javaFiles_beanshellable) :
				print "CURRPATH", currPath
				smaliMethod = self.IdentifySmaliMethod(smaliFile,tmpSmaliFile)
				#smaliMethods[currPath].append(smaliMethod)

				modifiedMethod = self.addEncryptedMethod(smaliMethod,javaFiles_beanshellable,currPath,tmpSmaliFile)
	
				#print modifiedMethod

				open(smaliFile,"w").write(modifiedMethod)
				print "Changed "+ smaliFile + "..."
				print "\n"
						
				

			#self.removeBeanshellableMethod()
				
		else:
			print "Please enter path to smali files"

ModifyMethods()
