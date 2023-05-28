# ROM source patches

color="\033[0;32m"
end="\033[0m"

echo -e "${color}Applying patches${end}"
sleep 1

git clone https://github.com/frstprjkt/kernel_xiaomi_sm6115 kernel/xiaomi/sm6115 --depth=1
git clone https://github.com/imannig/device_xiaomi_sm6115 device/xiaomi/sm6115-common -b thirteen
git clone https://github.com/imannig/vendor_xiaomi_sm6115-common-1 vendor/xiaomi/sm6115-common
git clone https://github.com/imannig/vendor_xiaomi_lime-1 vendor/xiaomi/lime
