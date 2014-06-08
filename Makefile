# The format of this file is based on GNU_Make_Makefile_templates
# https://github.com/Vdragon/GNU_Make_Makefile_templates
## 關於專案本身的變數
## Variables about the project itself
name_project = apt-get_only-update
name_project_abbrieviation = name_project_abbrieviation undefined
name_target = name_target undefined
name_module = name_module undefined

## 安裝路徑前綴設定
DIR_INSTALL_PREFIX_UNIX = /usr/local
dir_install_prefix = ${DIR_INSTALL_PREFIX_UNIX}

## 刪除檔案相關
## Delete file related
### DOS/Windows
FILE_REMOVER_WINDOWS = del

### Unix
FILE_REMOVER_LINUX = rm
OPTION_FILE_REMOVER_LINUX_FORCE = --force
OPTION_FILE_REMOVER_LINUX_RECURSIVE = --recursive
COMMAND_REMOVE_LINUX = ${FILE_REMOVER_LINUX} ${OPTION_FILE_REMOVER_LINUX_FORCE}
COMMAND_REMOVE_LINUX_RECURSIVE = ${COMMAND_REMOVE_LINUX} ${OPTION_FILE_REMOVER_LINUX_RECURSIVE}

## 目錄取名？
## Directory names?
dir_source_code = Source_code
dir_object_code = Object_code
dir_build = Build
dir_executables = Executables
dir_libraries = Libaries
dir_library_headers = Library_headers

## Specific build rules
.PHONY : install
install : 
	install -D ${dir_executables}/apt-get_only-update ${dir_install_prefix}/sbin
	install -D README.md ${dir_install_prefix}/share/doc/${name_project}/README.md

.PHONY : uninstall
uninstall : 
	${COMMAND_REMOVE_LINUX} ${dir_install_prefix}/sbin/apt-get_only-update
	${COMMAND_REMOVE_LINUX_RECURSIVE} ${dir_install_prefix}/share/doc/${name_project}
