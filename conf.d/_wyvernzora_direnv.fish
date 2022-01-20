
function _direnv_on_install --on-event direnv.fish_oninstall
    if not type -q direnv
        echo 'warning: could not find installed direnv'
    end 
end

direnv hook fish | source
