let configs = ["keys", "plug", "settings", "colors", "after"]

for conf in configs
  exe 'source '.stdpath('config').'/conf.d/'.conf.'.vim'
endfor

let file_list = split(globpath(stdpath('config').'/plug-config/', '*.vim'), '\n')
for file in file_list
  execute 'source' fnameescape(file)
endfor
