export USE_CCACHE=1
export CCACHE_DIR=~/.ccache
prebuilt/linux-x86/ccache/ccache -M 40G
source build/envsetup.sh
lunch htc_ace-userdebug
export USE_CCACHE=1
export CCACHE_DIR=~/.ccache
prebuilt/linux-x86/ccache/ccache -M 40G
make -j4

