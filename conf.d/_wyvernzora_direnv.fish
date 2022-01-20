fish_add_path $HOME/.bin

function _direnv_install --on-event _wyvernzora_direnv_install
    if not type -q direnv
        echo 'Could not locate direnv, installing'
        test -d $HOME/.bin || mkdir $HOME/.bin
        curl -sfL 'https://direnv.net/install.sh' | bin_path=$HOME/.bin bash
    end
end

function _direnv_uninstall --on-event _wyvernzora_direnv_uninstall
    rm $HOME/.bin/direnv
end

direnv hook fish | source
