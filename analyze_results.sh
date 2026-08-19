#!/bin/bash

REPORT="pipeline_report.txt"
ANALYSIS="prompt_analysis.txt"

echo "========================================" > "$ANALYSIS"
echo " PROMPT-BASED PIPELINE ANALYSIS" >> "$ANALYSIS"
echo "========================================" >> "$ANALYSIS"

echo "" >> "$ANALYSIS"

echo "PROMPT:" >> "$ANALYSIS"
echo "Analyze the CI/CD pipeline results, detect errors," >> "$ANALYSIS"
echo "summarize the execution, and provide actionable recommendations." >> "$ANALYSIS"

echo "" >> "$ANALYSIS"

if grep -qi "success" "$REPORT"; then

    echo "PIPELINE STATUS: SUCCESS" >> "$ANALYSIS"
    echo "" >> "$ANALYSIS"

    echo "SUMMARY:" >> "$ANALYSIS"
    echo "The CI/CD pipeline completed successfully." >> "$ANALYSIS"
    echo "Automated tests passed and the automation script executed successfully." >> "$ANALYSIS"

    echo "" >> "$ANALYSIS"

    echo "ERROR DETECTION:" >> "$ANALYSIS"
    echo "No pipeline errors were detected." >> "$ANALYSIS"

    echo "" >> "$ANALYSIS"

    echo "ACTIONABLE RECOMMENDATIONS:" >> "$ANALYSIS"
    echo "1. Continue development." >> "$ANALYSIS"
    echo "2. Monitor future pipeline executions." >> "$ANALYSIS"
    echo "3. Review the generated pipeline report when required." >> "$ANALYSIS"

else

    echo "PIPELINE STATUS: FAILURE" >> "$ANALYSIS"
    echo "" >> "$ANALYSIS"

    echo "SUMMARY:" >> "$ANALYSIS"
    echo "The CI/CD pipeline failed during execution." >> "$ANALYSIS"

    echo "" >> "$ANALYSIS"

    echo "ERROR DETECTION:" >> "$ANALYSIS"
    echo "A pipeline failure was detected." >> "$ANALYSIS"
    echo "Inspect the GitHub Actions logs to identify the failed step." >> "$ANALYSIS"

    echo "" >> "$ANALYSIS"

    echo "ACTIONABLE RECOMMENDATIONS:" >> "$ANALYSIS"
    echo "1. Inspect the failed workflow step." >> "$ANALYSIS"
    echo "2. Correct the identified error." >> "$ANALYSIS"
    echo "3. Re-run the CI/CD pipeline." >> "$ANALYSIS"
fi

echo "" >> "$ANALYSIS"
echo "========================================" >> "$ANALYSIS"

cat "$ANALYSIS"
