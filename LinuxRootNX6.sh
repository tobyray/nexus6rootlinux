if [ -f LinuxRootNX6.sh ];
then 
zenity --warning --text="KonradIT GUI Nexus 6 Root for Linux\nType the sudo password in the terminal"
sudo chmod +x tools/fastboot-linux
zenity --warning --text="By clicking OK, you accept that your device will be rooted, bad things can happen and nor KonradIT or Chainfire are responsible for this. You have been warned."
sleep 2
zenity --warning --text="Your device needs to be in Bootloader/FastMode before continuing\nPress OK to continue"
zenity --warning --text="ALL THE DATA IN THE PHONE MAY BE ERASED! Back up now, recommended!"
zenity --warning --text="Proceeding to OEM unlock your device, if you havent unlocked your device yet, this will whipe all your data!"
zenity --warning --text="After the unlock, KonradIT+CF-AutoRoot will boot, you should see a big red Android in your device screen"
sudo files/fastboot-linux oem unlock
sudo files/fastboot-linux boot files/CF-Auto-Root-shamu-shamu-nexus6.img
zenity --warning --text="If the red android appears, good!, if it does not appear, wait 2 or 3 minutes, if it does not appear after some mins you are in big trouble"
zenity --warning --text="Installation finished :)"
else
zenity --warning --text="Please select the folder nexus6rootlinux\nPress OK"
Folder=`zenity --file-selection`
cd $Folder
sleep 2
zenity --warning --text="KonradIT GUI Nexus 6 Root for Linux\nType the sudo password in the terminal"
sudo chmod +x tools/fastboot-linux
zenity --warning --text="By clicking OK, you accept that your device will be rooted, bad things can happen and nor KonradIT or Chainfire are responsible for this. You have been warned."
sleep 2
zenity --warning --text="Your device needs to be in Bootloader/FastMode before continuing\nPress OK to continue"
zenity --warning --text="ALL THE DATA IN THE PHONE MAY BE ERASED! Back up now, recommended!"
zenity --warning --text="Proceeding to OEM unlock your device, if you havent unlocked your device yet, this will whipe all your data!"
zenity --warning --text="After the unlock, KonradIT+CF-AutoRoot will boot, you should see a big red Android in your device screen"
sudo files/fastboot-linux oem unlock
sudo files/fastboot-linux boot files/CF-Auto-Root-shamu-shamu-nexus6.img
zenity --warning --text="If the red android appears, good!, if it does not appear, wait 2 or 3 minutes, if it does not appear after some mins you are in big trouble"
zenity --warning --text="Installation finished :)"
fi
