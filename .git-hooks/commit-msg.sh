#get the commit message
commit_msg=$(cat "$1")

#define a regex pattern to match the commit message format
pattern='^(build|chore|ci|docs|feat|fix|perf|refactor|style|test)(\([a-z]+\))?!?: .+$'

#Test if the commit message matches the pattern
if ! [[ $commit_msg =~ $pattern ]]; then
    echo "Error: The commit message does not match the conventional commits format"
    echo "       Please use the format: type(scope)?: subject"
    echo "       Where type is one of: build, chore, ci, docs, feat, fix, perf, refactor, revert, style, test"
    echo "       Example: feat(users): add users to endpoint"
    echo "       See https://www.conventionalcommits.org/en/v1.0.0/#summary for more information"
    exit 1

    fi

    #if the commit message matches the pattern, exit successfully
    exit 0