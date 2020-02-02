#!/bin/bash

TESTS_ALL=0
TESTS_FAIL=0


# $1 = test name
# $2 = command
# $3 = expected status code
runtest()
{
	TESTS_ALL=$((TESTS_ALL + 1))
	echo "####################"
	echo "Running test ${TESTS_ALL}: $1"
	OUTPUT="$( eval "$2" )"
	export RET=$?
	export OUTPUT
	if eval "$3";
	then
		echo "OK"
	else
		echo -e "${OUTPUT}"
		echo "FAILED"
		TESTS_FAIL=$((TESTS_FAIL + 1))
	fi
}


runtest "bacme noparamcheck" "../bacme 2>&1" "[ \$RET -eq 1 ] && ( echo \"\$OUTPUT\" | grep \"ERROR: Missing parameter\" >/dev/null )"

runtest "bacme testrun" "../bacme -v -t doesnotexist.example.com 2>&1 <<< \"\\n\"" "[ \$RET -eq 1 ] && ( echo \"\$OUTPUT\" | grep \"urn:ietf:params:acme:error:orderNotReady\" >/dev/null )"
rm -rf doesnotexist.example.com


echo "####################"

if [ ${TESTS_FAIL} -eq 0 ];
then
	echo "All ${TESTS_ALL} tests successful."
	exit 0
else
	echo "${TESTS_FAIL} of ${TESTS_ALL} tests failed."
	exit 1
fi

