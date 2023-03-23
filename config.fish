if status is-interactive
    # Commands to run in interactive sessions can go here
   zoxide init fish | source
  oh-my-posh init fish --config ~/.poshthemes/catppuccin.omp.json | source
 # set -g default-terminal "screen-256color"
  alias chatgpt="sgpt"
  alias ll="ls -al"
  # 配置访问代理
  export ALL_PROXY="http://172.31.96.1:7891"
end
