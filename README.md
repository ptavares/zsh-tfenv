# zsh-tfenv

zsh plugin for installing and loading [tfenv](https://github.com/tfutils/tfenv.git)
>Inpired by [zsh-pyenv](https://github.com/mattberther/zsh-pyenv)

## Table of content

- [zsh-tfenv](#zsh-tfenv)
  - [Usage](#usage)
  - [Updating tfenv](#updating-tfenv)
  - [License](#license)

## Usage

Once the plugin installed, `tfenv` will be available

- Using [Antigen](https://github.com/zsh-users/antigen)

Bundle `zsh-tfenv` in your `.zshrc`

```shell
antigen bundle ptavares/zsh-tfenv
```

- Using [zplug](https://github.com/b4b4r07/zplug)

Load `zsh-tfenv` as a plugin in your `.zshrc`

```shell
zplug "ptavares/zsh-tfenv"
```

- Using [zgen](https://github.com/tarjoilija/zgen)

Include the load command in your `.zshrc`

```shell
zget load ptavares/zsh-tfenv
```

- As an [Oh My ZSH!](https://github.com/robbyrussell/oh-my-zsh) custom plugin

Clone `zsh-tfenv` into your custom plugins repo and load as a plugin in your `.zshrc`

```shell
git clone https://github.com/ptavares/zsh-tfenv.git ~/.oh-my-zsh/custom/plugins/zsh-tfenv
```

```shell
plugins+=(zsh-tfenv)
```

Keep in mind that plugins need to be added before `oh-my-zsh.sh` is sourced.

- Manually

Clone this repository somewhere (`~/.zsh-tfenv` for example) and source it in your `.zshrc`

```shell
git clone https://github.com/ptavares/zsh-tfenv ~/.zsh-tfenv
```

```shell
source ~/.zsh-tfenv/zsh-tfenv.plugin.zsh
```

## Updating tfenv

The plugin comes with a zsh function to update [tfenv](https://github.com/tfutils/tfenv.git) manually

```shell
# From zsh shell
update_zsh_tfenv
```

## License

[MIT](LICENCE)
