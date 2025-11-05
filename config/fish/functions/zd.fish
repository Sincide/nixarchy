function zd --description 'Smart cd with zoxide fallback'
    if test (count $argv) -eq 0
        cd ~
        return
    else if test -d $argv[1]
        cd $argv[1]
    else
        z $argv && printf "\U000F17A9 " && pwd || echo "Error: Directory not found"
    end
end
