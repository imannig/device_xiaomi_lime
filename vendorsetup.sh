# ROM source patches

color="\033[0;32m"
end="\033[0m"

echo -e "${color}Applying patches${end}"
sleep 1

git clone https://github.com/imannig/vendor_xiaomi_sm6115-common vendor/xiaomi/sm6115-common
git clone https://github.com/frstprjkt/kernel_xiaomi_sm6115 kernel/xiaomi/sm6115 --depth=1
git clone https://github.com/imannig/device_xiaomi_sm6115 device/xiaomi/sm6115-common 
git clone https://github.com/imannig/vendor_xiaomi_lime vendor/xiaomi/lime
git clone https://github.com/frstprjkt/device_xiaomi_sm6115-common-kernel device/xiaomi/sm6115-common-kernel

git clone https://github.com/PixelExperience/hardware_qcom-caf_bengal_audio hardware/qcom-caf/bengal/audio && git clone https://github.com/PixelExperience/hardware_qcom-caf_bengal_media hardware/qcom-caf/bengal/media && git clone https://github.com/PixelExperience/hardware_qcom-caf_bengal_display hardware/qcom-caf/bengal/display
