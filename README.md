# Fix Opera ArchLinux ffmpeg & WidevineCdm

* Fix Opera html5 media content
* It script must be execute all times opera will fails on showing html5 media content.
* Now it also fixes WidevineCdm support for DRM video. You can try it on Vevo youtube channel for example.

## Requirements

1. **wget** (Is needed for downloading the ffmpeg lib and Chrome)
    ```sudo pacman -S wget```

2. **unzip** (Is needed for unpacking the downloaded file)
    ```sudo pacman -S unzip```

## Usage

1. (*Optional*) You may disable **Widevine** fix if one that comes with Opera works well for you.

    ```sed -i '/FIX_WIDEVINE=/s/true/false/g' ./fix-opera.sh```

2. Run script. And if it works well got ot next step.
    
    ```sudo ./fix-opera.sh```

3. (Optional) Run script to configure creating alias/Autostart

    ```sudo ./configure.sh```

4. Delete the repo

    ``` rm -rf <directory>
