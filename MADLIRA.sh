#!/bin/bash
executable="launch.jar"

if [ $# -lt 1 ]
then
	echo "Run Test"
	echo "	Syntax: ${0} TEST"
	echo "TFIDF Malicious behavior extraction"
	echo "	Syntax: ${0} TFIDF"
	echo ""
	echo "SVM malicious behavior detection"
	echo "	Syntax: ${0} SVM"
	exit 1
fi

if [ $1 == "TEST" ]
then
	echo "Test TFIDF Malicious behavior extraction"
	cmdTest="java -jar ${executable} TFIDF train -B BenDataL -M MalDataL"
	eval $cmdTest
	cmdTest="java -jar ${executable} TFIDF check -S Samples/"
	eval $cmdTest

	echo "SVM malicious behavior detection"
	cmdTest="java -jar ${executable} SVM train -B BenDataL -M MalDataL"
	eval $cmdTest
	cmdTest="java -jar ${executable} SVM check -S Samples/"
	eval $cmdTest

	echo "Successful!"
	exit 1
fi

cmd="java -jar ${executable} $@"
#echo $cmd 
eval $cmd
