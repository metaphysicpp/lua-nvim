<h1 align="center"> ✨ Personal Neovim's config by Lua ✨ </h1>

> Powered by metaphysicpp

### Preface

> Neovim = 0.8.0 

learn to how to config Neovim by Lua

### 1.add options.lua

### 2.add keymaps.lua

#### Map命令，常见语法如下
```
[nore]map [<args>] {lhs} {rhs}
```
- 第一个单词是具体的映射命令，表示在哪个模式下定义按键

常见的模式有:`nmap(Normal)` `imap(Insert)` `vmap(Visual+Select)` `map(Normal+Visual)` `!map(Insert+Command)`

- {lhs}表示映射前的按键序列

- {rhs}表示映射后的按键序列

- [nore]map表示非递归映射，就是会把rhs当作lhs再解释一次，直到找到最后一个rhs

- `<args>`表示map命令的一些参数，常用的有

  - `<buffer>`表示这个映射只是在当前的buffer中定义，不是全局的映射

  - `<expr>`表示{rhs}是一个Vim表达式，而不是按键序列

  - `<silent>`:表示静默映射，不会显示Vim在处理rhs过程中对界面产生的变化。

#### map命令中的expr参数

使用expr参数可以在rhs的位置指定一个表达式，vim会eval这个表达式，并将表达式的值作为真正的rhs序列,这个表达式甚至可以是一个函数

一个简单的例子

```
noremap <expr>0 col('.') == 1 ? '^' : '0'
```

在Normal或者Visual模式下，按0键可以实现让光标在首列和首个非空白字符之间的切换。
这里就是用了一个条件表达式，当前列是第一列时，0键被映射成^ 键；当不在第一列时，还是0键。

更多用法可以使用`:help map`,或者参考[这里](https://zhuanlan.zhihu.com/p/38150203)























