# Shells
AIMS

I want to automate syncing my shell customizations across Windows and Linux (Raspbeey Pi) downloading or uploading any changes.

Explanation:
What is a Shell / CLI / CMD?
1. A computer program that acts as a user interface for an operating system
2. It usually looks like what we had in the 80s when I was a kid
3. CLI = Command Line Interface, CMD is the Windows command line... all kinda similar / equivalents

What is Oh-My-Posh?
1. This is a script that makes the CLI look nice 
2. There are versions for Linux and for Windows
3. In Windows it's prone to break, either M1cr0$hl0ttpf or 'omp' updates or something...
4. I want it fixed on Windows hence Powershell script ps1 should include that

What is Git?
1. You are in git, this is git
2. I used to use it as an Online backup for my script and ideas
3. I want to use it now to Syncronize any changes I do on my shell scripts automatically

What is bashrc or that ps1 script?
1. bashrc runs when opening a shell on Linux, locally or via ssh
2. The ps1 scrpt is the windows equivalent

What is ASCII Art?
1. American Standard Code for Information Interchange
2. It's what I've been dealing with since I started using computers as a kid (PC's that is, Amstrad had a variation and Commodore had PETSCII...)
3. Basically, it is the characters you are able to see in the shell (without omp)
4. ASCII Art is pictures done with characters for example the sideways-smiley :-) or rose @}}>-----

In short: I want my face in my shell before omp loads:
```
PowerShell 7.6.0
                    ..       *#=*::       habiwan@MYWINDOWSMACHINES
                 +@@@@@#.     ::...::.    ---------------
       #%@@%#+:-#@@@@@@@@+.               OS: Windows 2 - 3.1 - 95 / 98 - 2000 - Vista - 7 - 10 - 11
     @@@@@@@@@*#==*%@@@@**+               Host: IBM PC Compatibles and their evolutions
    %@@@@@@@@@=.                          Kernel: WIN32_NT since 2000 ...
    +#@@@@@@@@%.      .%@@@@%=.           Uptime: 41 years 20 hours, 57 mins
    .=*@@@@@@@@@@@@@@#@@@@@@@@%*:         Shell: MS-DOS 6.22 - PowerShell 7.6.0
     .+#%%@@@@@@@@@@@@@@@@@@@@@@%+-.      Display (DELD12C): 320x200 - 480p - 1080p - etc... 50 Hz [External, HDR]
      :+#%##*--. ..::::::.   . .-##*:     WM: Desktop Window Manager
       =%@%##+..=*#@@@@@@%%@@@@@@@@%*-    WM Theme: Custom - Storm (System: Dark, Apps: Dark)
        +%@%%@@+::=*%%%%+-:=@@@@@%###-    Theme: Fluent
         -***%@%#+: .. .+@@@@@@@%#**+:    Icons: This PC, User's Files, Remote Network, Recycle Bin, Control Panel
          :=+**#@@@@@@@@@@@@@@@@#*++-.    Font: Segoe UI (12pt) [Caption / Menu / Message / Status]
           .-**%@@@@@@@@@@@@@@@@#*-.      Cursor: Windows Default (32px)
              -++*%@@@@@@@@@@%#*=.        Terminal: Windows Terminal 
                 .-=*##*#*=-:.            Terminal Font: CaskaydiaCove NF (12pt)
                                          CPU: Z80 - MOS 6502 - Intel(R) 8088 ... Core(TM) i7 @ 1Mhz - 3 GHz
                                          GPU 1: Virtual Desktop Monitor
                                          GPU 2: Meta Virtual Monitor (for VR)
                                          GPU 3: Matrox - ATI - AMD or NVIDIA @ 400 Mhz - 2.10 GHz (0 - 3 GiB) [Discrete]
                                          GPU 4: Intel(R) [Integrated]
                                          Memory: 64 KB - 128 KB - 1MB - 4GB - 128GB / 31.85 GiB (51%)
                                          Swap: 60.86 MiB / 2.00 GiB (3%)
                                          Disk (C:\): 623.37 GiB / 952.09 GiB (65%) - NTFS
                                          Disk (D:\): 3.23 TiB / 3.64 TiB (89%) - NTFS
                                          Disk (E:\): 19.06 TiB / 27.93 TiB (68%) - NTFS [External]
                                          Disk (F:\): 1.59 TiB / 1.82 TiB (87%) - NTFS
                                          Local IP (Ethernet): 20.12.19.77/49
                                          Battery: 80% [AC Connected]
                                          Locale: es-ES or de-CH or de-DE or fr-CH or it-CH now en-GB
or in Linux on my Raspberry Pi 5:

Linux mypi5 6.12-rpi-v8 #1 SMP PREEMPT Debian 1:6.12+rpt1~bookworm (1991-05-10) aarch64

The programs included with the Debian GNU/Linux system are free software;
the exact distribution terms for each program are described in the
individual files in /usr/share/doc/*/copyright.

Debian GNU/Linux comes with ABSOLUTELY NO WARRANTY, to the extent
permitted by applicable law.
Last login: Sun Mar 29 00:00:00 2026 from yourpants
                ..       *#=*::       habiwan@mypi5
           +@@@@@#.     ::...::.      ---------------
   #%@@%#+:-#@@@@@@@@+.               OS: Raspberry Pi OS 12.13 (bookworm) aarch64
 @@@@@@@@@*#==*%@@@@**+               Host: Raspberry Pi 5 Model B Rev 1.0
%@@@@@@@@@=.                          Kernel: Linux 6.12
+#@@@@@@@@%.      .%@@@@%=.           Uptime: 35 years, 1 day, 11 hours, 57 mins
.=*@@@@@@@@@@@@@@#@@@@@@@@%*:         Packages: 4000 (dpkg), 20 (flatpak), 15 (snap)
 .+#%%@@@@@@@@@@@@@@@@@@@@@@%+-.      Shell: bash 5.2
  :+#%##*--. ..::::::.   . .-##*:     Display (DULL): 3440x1440 in 34", 144 Hz [External]
   =%@%##+..=*#@@@@@@%%@@@@@@@@%*-    Terminal: /dev/pts/0
    +%@%%@@+::=*%%%%+-:=@@@@@%###-    CPU: BCM2712 (4) @ 2.40 GHz
     -***%@%#+: .. .+@@@@@@@%#**+:    GPU: Broadcom bcm2712-vc6 [Integrated]
      :=+**#@@@@@@@@@@@@@@@@#*++-.    Memory: 3.91 GiB / 7.77 GiB (50%)
       .-**%@@@@@@@@@@@@@@@@#*-.      Swap: 0 B / 34.94 GiB (0%)
          -++*%@@@@@@@@@@%#*=.        Disk (/): 137.76 GiB / 233.18 GiB (59%) - ext4
             .-=*##*#*=-:.            Disk (/media/habiwan/Real 5TBUSB): 2.84 TiB / 4.55 TiB (62%) - exfat
                                      Disk (/zram): 8.00 KiB / 30.53 GiB (0%) - ext4
                                      Local IP (eth0): 256.348.527.HA/15
                                      Locale: same as above, now en_GB always UTF-8
```
