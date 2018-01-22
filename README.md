# Sentinel syntax highlighting and formating for Vim and Nvim

To install this plugin you can use Vundle or another plugin manager for Vim:

```
Plugin 'hashicorp/sentinel.vim'
```

Once the plugin is loaded files with the extension `.sentinel` will be syntax highlighted according to the language specification.  To enable formatting of Sentinel files on save, download and install the free Sentinel simulator from the following location [https://releases.hashicorp.com/sentinel/0.1.0/](https://releases.hashicorp.com/sentinel/0.1.0/) and save it somewhere in your path.  When a file is saved the plugin will run `sentinel fmt` with the current buffer.
