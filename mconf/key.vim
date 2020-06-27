"==================================================================="
	"==========="
	"配置markdown编辑时的快捷键"
	"==========="
	
 	autocmd Filetype markdown inoremap // <Esc>/<++><CR>:nohlsearch<CR>c4l
 	"加粗"
 	autocmd Filetype markdown inoremap /b **** <++><Esc>F*hi
 	"删除线"
 	autocmd Filetype markdown inoremap /d ~~~~ <++><Esc>F~hi
 	"分割线"
 	autocmd Filetype markdown inoremap /- <Enter>---<Enter>
	"添加代码块"
	autocmd Filetype markdown inoremap /[ ```<Enter><++><Enter>```<Enter><Enter>
	"添加行内代码"
	autocmd Filetype markdown inoremap /e ``<++><Esc>F`i
	"文字下划线"
	autocmd Filetype markdown inoremap /u <u></u><++><Esc>F<F<i
	"换行实现
	autocmd Filetype markdown inoremap /<Enter> <Space><Space><Space><br/><Space><Space><Enter><Enter>
	"自动填充3个空格
	autocmd Filetype markdown inoremap /<Space> <Space><Space><Space>
	"上标
	autocmd Filetype markdown inoremap /6 <sup></sup><++><Esc>F<F<i
	"下标
	autocmd Filetype markdown inoremap /7 <sub></sub><++><Esc>F<F<i
	"链接
	autocmd Filetype markdown inoremap /h [](<++>)<Esc>F]i

 	"/ 生成"
 	autocmd Filetype markdown inoremap /z /

	"双引号"
	autocmd Filetype markdown inoremap " ""<LEFT>

	"花括号"
	autocmd Filetype markdown inoremap { {}<LEFT>

	"小括号"
	autocmd Filetype markdown inoremap ( ()<LEFT>	

	func! Mdgoto()
		if expand('%:t') != 'SUMMARY.md'
			return 
		endif 
		let currentLine = getline(".")
		let len = strlen(currentLine)
		"echo currentLine
		let a1= stridx(currentLine, '(') + 1
		let a2= stridx(currentLine, ')') - 1 
		let a3 = a2-a1+1
	
		if a3 > 0
			let sub=strpart(currentLine,a1,a3)
		endif
		exec "vsp " .sub
		vertical res +200
	
	endfunction
	autocmd Filetype markdown map <C-]> :call Mdgoto()<CR>"
	autocmd Filetype markdown map <C-q> :wq<CR>"
	"调出自定义输入快捷键帮助
	autocmd Filetype markdown inoremap /,, <Esc>:!/home/yhp/.vim/mconf/keyhelp markdown<CR><Esc>i
	

"==================================================================="

	"==========="
	"配置shell编辑时的快捷键"
	"==========="
	
 	autocmd Filetype sh inoremap // <Esc>/<++><CR>:nohlsearch<CR>c4l
 	"加粗"
 	autocmd Filetype sh inoremap /e echo "<++>"<++><Esc>/<++><CR>:nohlsearch<CR>c4l
	"引用"
	autocmd Filetype sh inoremap /y $() <++><Esc>F)i
	"算数运算"
	autocmd Filetype sh inoremap /a $[]<++><Esc>F]i
	"if流程"
	autocmd Filetype sh inoremap /i if [ ];then<++><Esc>F]i
	"case流程"
	autocmd Filetype sh inoremap /c <Esc>:r !echo -e 'case <++> in\n	<++>)<++>;;\nesac'<Esc>/<++><CR>:nohlsearch<CR>c4l

 	"/ 生成"
 	autocmd Filetype sh inoremap /z /

	"单引号"
	autocmd Filetype sh inoremap ' ''<LEFT>

	"双引号"
	autocmd Filetype sh inoremap " ""<LEFT>

	"花括号"
	autocmd Filetype sh inoremap { {}<LEFT>

	"小括号"
	autocmd Filetype sh inoremap ( ()<LEFT>	

	"中括号"
	autocmd Filetype sh inoremap [ []<LEFT>
	"字符串替换"
	autocmd Filetype sh inoremap /t ${/<++>/<++>}<++><Esc>F/F/i
	"调出自定义输入快捷键帮助
	autocmd Filetype sh inoremap /,, <Esc>:!/home/yhp/.vim/mconf/keyhelp shell<CR><Esc>i
"==================================================================="

	"==========="
	"配置verilog编辑时的快捷键"
	"==========="
	
 	autocmd Filetype verilog inoremap // <Esc>/<++><CR>:nohlsearch<CR>c4l
 	"always语句"
 	"autocmd Filetype verilog inoremap /a always@(<++>)<Enter>begin <Enter><Tab><++> end <Esc>/<++><CR>:nohlsearch<CR>c4l
	autocmd Filetype verilog inoremap /a <Esc>:r !echo -e 'always@(<++>)\nbegin\n	<++>\nend'<CR><Esc>/<++><CR>:nohlsearch<CR>c4l
	
 	"if 语句"
 	autocmd Filetype verilog inoremap /i if()begin<++>end<Esc>F)i

 	"else 语句"
 	autocmd Filetype verilog inoremap /e else beginend<Esc>Fei

 	"initial 语句"
 	"autocmd Filetype verilog inoremap initial initial beginend<Esc>Fei

  	"assign 语句"
 	autocmd Filetype verilog inoremap /= assign = <++><Esc>F=i

  	"module例化 设置"
  	autocmd Filetype verilog inoremap /. .(<++>)<++><Esc>F(i


  	"monitor 语句"
  	autocmd Filetype verilog inoremap /m $monitor("",<++>)<++><Esc>F"i

 	"display 语句"
 	autocmd Filetype verilog inoremap /dd $display()<++><Esc>F)i	

 	"行注释 语句"
 	autocmd Filetype verilog inoremap /z /

 	"parameter 语句"
 	autocmd Filetype verilog inoremap /p parameter <++> = <++>;<Esc>/<++><CR>:nohlsearch<CR>c4l


 	"localparam 语句"
 	autocmd Filetype verilog inoremap /l localparam <++> = <++>;<Esc>/<++><CR>:nohlsearch<CR>c4l

 	"reg 语句"
 	autocmd Filetype verilog inoremap /r reg[ : 0 ] <++><Esc>F:i
 	"wire 语句"
 	autocmd Filetype verilog inoremap /w wire[ : 0 ] <++><Esc>F:i

 	"常量 语句"
 	autocmd Filetype verilog inoremap /d <++>'d<++><Esc>/<++><CR>:nohlsearch<CR>c4l

 	"case 语句"
 	autocmd Filetype verilog inoremap /c case()<++>endcase<Esc>F)i
 	
 	"begin 语句"
 	autocmd Filetype verilog inoremap /b beginend<Esc>Fei

 	"? : 语句"
 	autocmd Filetype verilog inoremap /s ? <++> : <++><Esc>F?i

 	"function 语句"
 	autocmd Filetype verilog inoremap /f <Esc>:r !echo -e 'function [ <++> : 0 ]<++>;\n 	<++>\nendfunction'<CR><Esc>/<++><CR>:nohlsearch<CR>c4l

 	"中括号"
 	autocmd Filetype verilog inoremap [ []<LEFT>	


 	"大括号"
 	autocmd Filetype verilog inoremap { {}<LEFT>

 	"小括号"
 	autocmd Filetype verilog inoremap ( ()<LEFT>

 	"调出自定义输入快捷键帮助
	autocmd Filetype verilog inoremap /,, <Esc>:!~/.vim/mconf/keyhelp verilog<CR><Esc>i	
"==================================================================="

	"==========="
	"配置 python 编辑时的快捷键"
	"==========="
	
 	autocmd Filetype python inoremap // <Esc>/<++><CR>:nohlsearch<CR>c4l

 	"print 语句"
 	autocmd Filetype python inoremap /p print()<++><Esc>F)i

 	"多行注释"
 	autocmd Filetype python inoremap /n '''<++>'''<++><Esc>/<++><CR>:nohlsearch<CR>c4l

 	"if语句"
 	autocmd Filetype python inoremap if if :<++><Esc>F:i
 	
 	"else语句"
 	autocmd Filetype python inoremap else else:

 	"elif语句"
 	autocmd Filetype python inoremap elif elif :<++><Esc>F:i 	

 	"while 语句"
 	autocmd Filetype python inoremap while while :<++><Esc>F:i

 	"for 语句"
 	autocmd Filetype python inoremap for for <++> in <++> :<++><Esc>/<++><CR>:nohlsearch<CR>c4l

 	"def 函数语句"
 	autocmd Filetype python inoremap def def () :<++><Esc>F(i

  	"input 语句"
 	autocmd Filetype python inoremap input input()<++><Esc>F)i
 	 	
 	"中括号"
 	autocmd Filetype python inoremap [ []<LEFT>	


 	"大括号"
 	autocmd Filetype python inoremap { {}<LEFT>

 	"小括号"
 	autocmd Filetype python inoremap ( ()<LEFT>

 	"单引号"
 	autocmd Filetype python inoremap ' ''<LEFT>

  	"双引号"
 	autocmd Filetype python inoremap " ""<LEFT>






 	
