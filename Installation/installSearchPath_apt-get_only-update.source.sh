# apt_get_only_update_root_directory 變數：ann2srt 的根目錄
apt_get_only_update_root_directory="${HOME}/Software/apt-get_only-update"

if [ -d "${ann2srt_root_directory}" ]; then
	PATH=${PATH}:"${apt_get_only_update_root_directory}/Executables"
fi