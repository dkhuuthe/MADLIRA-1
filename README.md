# MADLIRA
Malware detection using learning and information retrieval for Android

## Overview
MADLIRA is a tool for Android malware detection. It consists in two components: TFIDF component and SVM learning component. In gerneral, it takes an input a set of malwares and benwares and then  extracts the malicious behaviors (TFIDF component) or computes training model (SVM classifier). Then, it uses this knowledge to detect malicious behaviors in the Android application.

## How to get
```
git clone https://github.com/madlira/madlira.git
```

## Launch it
Test MADLIRA
```
./MADLIRA.sh TEST
```

## Check a new apk file
This tool have two main components: TFIDF component and SVM component.
### Using TFIDF component
```
Command: ./MADLIRA.sh TFIDF check -S <path to apk files>
```
### Using SVM component
```
Command: ./MADLIRA.sh SVM check -S <path to apk files>
```

## Malicious behavior extraction
+ Collect benign applications and malicious applications and oput them in folders named benginAPKFolder and maliciousApkFolder, respectively.
+ Prepare training data and pack them in two files named benignPack and maliciousPack by using the command:
```
./MADLIRA.sh TFIDF packAPK -PB <benignApkFolder> -PM <maliciousApkFolder>
```
+ Extracting malicious behaviors from two packed files (BenDataL and MalDataL) by using the command:
```
./MADLIRA.sh TFIDF train -B BenDataL -M MalDataL
```
## Train SVM model
+ Collect benign applications  in a folder named benignApkFolder and malicious applications in a folder named maliciousApkFolder.
+ Prepare training data by using the commands:
```
./MADLIRA.sh SVM packAPK -PB <benignApkFolder> -PM <maliciousApkFolder>
```
+ Compute the training model by this command:
```
./MADLIRA.sh SVM train -B BenDataL -M MalDataL
```


### Dependencies:
This tool uses the following packages:
+ apktool_2.4.1 (https://ibotpeaches.github.io/Apktool/)
+ ojalgo-41.0.0 (https://github.com/optimatika/ojAlgo)
+ libsvm (http://www.csie.ntu.edu.tw/~cjlin/libsvm/)
+ antlr (https://www.antlr3.org/)


<!--
**madlira/madlira** is a ✨ _special_ ✨ repository because its `README.md` (this file) appears on your GitHub profile.

Here are some ideas to get you started:

- 🔭 I’m currently working on ...
- 🌱 I’m currently learning ...
- 👯 I’m looking to collaborate on ...
- 🤔 I’m looking for help with ...
- 💬 Ask me about ...
- 📫 How to reach me: ...
- 😄 Pronouns: ...
- ⚡ Fun fact: ...
-->
