#!/bin/bash

echo "Running CI/CD tests..."

if [ -f "automation.sh" ]; then
    echo "PASS: automation.sh exists"
else
    echo "FAIL: automation.sh is missing"
    exit 1
fi

if [ -x "automation.sh" ]; then
    echo "PASS: automation.sh is executable"
else
    echo "FAIL: automation.sh is not executable"
    exit 1
fi

echo "All tests passed successfully."
