# grab the title and body into shell variables
ISSUE_NUMBER=$1
ISSUE_TITLE=$(gh issue view $ISSUE_NUMBER --json title -q .title)
ISSUE_BODY=$(gh issue view $ISSUE_NUMBER --json body -q .body)
echo # Issue #$1: $ISSUE_TITLE > FIX_ISSUE_$1.md
echo $ISSUE_BODY >> FIX_ISSUE_$1.md
