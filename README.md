# **Android Encryption based Obfuscation(AEON)**

### **Android Encryption based Obfuscation (AEON)** is a novel Obfuscation technique, implements code encryption on static code. AEON is a tool developed to perform obfuscation through encryption of static code. Given an apk, It identifies portions of the code that can be ran independently and keeps these codes encrypted. The encrypted code are than passed to a java source interpreter at runtime to be decrypted. The basic idea of AEON is to moves the code outside of Android Virtual Machine into an embeddable java source interpreter(Beanshell). Since the code is ran on an external interpreter the Android verifier will not flag any issues and run the program comfortably.

### **AEON** is developed and maintained by the team of @SITSecureSoftwareDevelopmentTeam. It is in its very early stages of development and there is a lot more to come. Any contributions and suggestions to the tool will be highly appreciated. 

## **AEON System Requirements:**
    - Kali GNU/Linux Rolling 2016.1
    - Python 2.7.0
    - Java JRE 1.0.8_121

## **Running AEON:**
    1. To run AEON simply type the following in your kali terminal:
         **sh main.sh *apk FilePath***




