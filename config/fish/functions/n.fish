function n --description 'Open nvim in current directory or with args'
    if test (count $argv) -eq 0
        nvim .
    else
        nvim $argv
    end
end
