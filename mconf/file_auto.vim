	"本文件配置vim新建文件时自动生成的内容"
	"===========
	"配置新建文件的模板(自动化完成)
	"===========
"=============================================================================="
	"cpp文件自动生成模板"
	autocmd BufNewFile *.cpp exec ":call SetTitle()"
	    func SetTitle()
	        call setline(1,"/**") 
	        call append(line("."), " *   Copyright (C) ".strftime("%Y")." All rights reserved.")
	        call append(line(".")+1, " *") 
	        call append(line(".")+2, " *   FileName      ：".expand("%:t")) 
	        call append(line(".")+3, " *   Author        ：hpy")
	        call append(line(".")+4, " *   Email         ：yuan_hp@qq.com")
	        call append(line(".")+5, " *   Date          ：".strftime("%Y年%m月%d日")) 
	        call append(line(".")+6, " *   Description   ：") 
	        call append(line(".")+7, " */") 
	        call append(line(".")+8, "")
	    endfunc
	"自动将光标定位到末尾"
	"autocmd BufNewFile * normal G"
"=============================================================================="	
	"配置shell脚本新建时的模板"
	autocmd BufNewFile *.sh exec ":call SetShTitle()"
	    func SetShTitle()
	        call setline(1,"#!/usr/bin/env bash") 
	        call append(line("."), "#-------------------------------------------------------") 
	        call append(line(".")+1, "#	FileName	: ".expand("%:t"))
	        call append(line(".")+2, "#	Author		：hpy")
	        call append(line(".")+3, "#	Date		：".strftime("%Y年%m月%d日"))
	        call append(line(".")+4, "#	Description	：")
	        call append(line(".")+5, "#-------------------------------------------------------")
			call append(line(".")+6, "")
	    endfunc
"=============================================================================="
	"配置verilog脚本新建时的模板"
		autocmd BufNewFile *.v exec ":call SetVTitle()"
		    func SetVTitle()
		        call setline(1,"`timescale 1ns / 1ps") 
		        call append(line("."), "// ********************************************************************") 
		        call append(line(".")+1, "//	FileName	: ".expand("%:t"))
		        call append(line(".")+2, "//	Author		：hpy")
		        call append(line(".")+3, "//	Email		：yuan_hp@qq.com")
		        call append(line(".")+4, "//	Date		：".strftime("%Y年%m月%d日"))
		        call append(line(".")+5, "//	Description	：")
		        call append(line(".")+6, "// --------------------------------------------------------------------")
		        call append(line(".")+7, "module " .expand("%:r") ."(")
		        call append(line(".")+8, "	input clk, ")
		        call append(line(".")+9, "	input rst_n")
		        call append(line(".")+10, ");")
		        call append(line(".")+11, " ")
		        call append(line(".")+12, "always@(posedge clk or negedge rst_n)")
		        call append(line(".")+13, "begin")
		        call append(line(".")+14, "	if(!rst_n)begin")
		        call append(line(".")+15, " ")
		        call append(line(".")+16, "	end ")
		        call append(line(".")+17, "	else begin ")
		        call append(line(".")+18, " ")
		        call append(line(".")+19, "	end ")
		        call append(line(".")+20, "end")
		        call append(line(".")+21, " ")
		        call append(line(".")+22, "endmodule")		        		    		      
		    endfunc

"=============================================================================="	
	"配置tcl脚本新建时的模板"
	autocmd BufNewFile *.tcl exec ":call SetTclTitle()"
	    func SetTclTitle()
	        call setline(1,"#!/usr/bin/env tclsh") 
	        call append(line("."), "#-------------------------------------------------------") 
	        call append(line(".")+1, "#	FileName	: ".expand("%:t"))
	        call append(line(".")+2, "#	Author		：hpy")
	        call append(line(".")+3, "#	Email		：yuan_hp@qq.com")
	        call append(line(".")+4, "#	Date		：".strftime("%Y年%m月%d日"))
	        call append(line(".")+5, "#	Description	：")
	        call append(line(".")+6, "#-------------------------------------------------------")
			call append(line(".")+7, "")
	    endfunc

"=============================================================================="	
	"配置python3脚本新建时的模板"
	autocmd BufNewFile *.py exec ":call SetPyTitle()"
	    func SetPyTitle()
	        call setline(1,"#!/usr/bin/env python3") 
	        call append(line("."), "# -- coding:utf-8 --")   
	        call append(line(".")+1, "#-------------------------------------------------------") 
	        call append(line(".")+2, "#	FileName	: ".expand("%:t"))
	        call append(line(".")+3, "#	Author		：hpy")
	        call append(line(".")+4, "#	Email		：yuan_hp@qq.com")
	        call append(line(".")+5, "#	Date		：".strftime("%Y年%m月%d日"))
	        call append(line(".")+6, "#	Description	：")
	        call append(line(".")+7, "#-------------------------------------------------------")
			call append(line(".")+8, "")
	    endfunc

	    
	"自动将光标定位到末尾"
	autocmd BufNewFile * normal G
