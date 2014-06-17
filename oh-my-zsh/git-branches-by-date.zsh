function git-branches-by-date {
    # make sur elist is up-to-date
    git fetch --all -p

    # list branches by date
    for k in `git branch -r | perl -pe 's/^..(.*?)( ->.*)?$/\1/'`; do echo -e `git show --pretty=format:"%Cgreen%ci %Cblue%cr%Creset" $k -- | head -n 1`\\t$k; done | sort -r
}
