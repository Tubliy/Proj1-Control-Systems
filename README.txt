
$$$$$$$\                            $$\       $$\      $$\                                                                                                                                                                                                                                                                       
$$  __$$\                           $$ |      $$$\    $$$ |                                                                                                                                                                                                                                                                      
$$ |  $$ | $$$$$$\   $$$$$$\   $$$$$$$ |      $$$$\  $$$$ | $$$$$$\                                                                                                                                                                                                                                                              
$$$$$$$  |$$  __$$\  \____$$\ $$  __$$ |      $$\$$\$$ $$ |$$  __$$\                                                                                                                                                                                                                                                             
$$  __$$< $$$$$$$$ | $$$$$$$ |$$ /  $$ |      $$ \$$$  $$ |$$$$$$$$ |                                                                                                                                                                                                                                                            
$$ |  $$ |$$   ____|$$  __$$ |$$ |  $$ |      $$ |\$  /$$ |$$   ____|                                                                                                                                                                                                                                                            
$$ |  $$ |\$$$$$$$\ \$$$$$$$ |\$$$$$$$ |      $$ | \_/ $$ |\$$$$$$$\                                                                                                                                                                                                                                                             
\__|  \__| \_______| \_______| \_______|      \__|     \__| \_______|                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                 
                                                                                                                                                                                                                                                                                                                                 
                                                                                                                                                                                                                                                                                                                                 
$$$$$$$\                   $$$$$$\  $$\                 $$\             $$\     $$\                            $$$$$$\            $$\                                                      $$\       $$$$$$$$\           $$\ $$\              $$$$$$\            $$\       $$\                                                   
$$  __$$\                 $$  __$$\ $$ |                \__|            $$ |    \__|                          $$  __$$\           $$ |                                                     $$ |      $$  _____|          \__|$$ |            $$  __$$\           $$ |      $$ |                                                  
$$ |  $$ |$$\   $$\       $$ /  \__|$$$$$$$\   $$$$$$\  $$\  $$$$$$$\ $$$$$$\   $$\  $$$$$$\  $$$$$$$\        $$ /  \__| $$$$$$\  $$ |$$\    $$\  $$$$$$\         $$$$$$\  $$$$$$$\   $$$$$$$ |      $$ |       $$$$$$\  $$\ $$ |  $$\       $$ /  \__| $$$$$$$\ $$$$$$$\  $$ | $$$$$$\   $$$$$$$\  $$$$$$$\  $$$$$$\   $$$$$$\  
$$$$$$$\ |$$ |  $$ |      $$ |      $$  __$$\ $$  __$$\ $$ |$$  _____|\_$$  _|  $$ | \____$$\ $$  __$$\       $$ |       \____$$\ $$ |\$$\  $$  |$$  __$$\        \____$$\ $$  __$$\ $$  __$$ |      $$$$$\    $$  __$$\ $$ |$$ | $$  |      \$$$$$$\  $$  _____|$$  __$$\ $$ |$$  __$$\ $$  _____|$$  _____|$$  __$$\ $$  __$$\ 
$$  __$$\ $$ |  $$ |      $$ |      $$ |  $$ |$$ |  \__|$$ |\$$$$$$\    $$ |    $$ | $$$$$$$ |$$ |  $$ |      $$ |       $$$$$$$ |$$ | \$$\$$  / $$ /  $$ |       $$$$$$$ |$$ |  $$ |$$ /  $$ |      $$  __|   $$ |  \__|$$ |$$$$$$  /        \____$$\ $$ /      $$ |  $$ |$$ |$$ /  $$ |\$$$$$$\  \$$$$$$\  $$$$$$$$ |$$ |  \__|
$$ |  $$ |$$ |  $$ |      $$ |  $$\ $$ |  $$ |$$ |      $$ | \____$$\   $$ |$$\ $$ |$$  __$$ |$$ |  $$ |      $$ |  $$\ $$  __$$ |$$ |  \$$$  /  $$ |  $$ |      $$  __$$ |$$ |  $$ |$$ |  $$ |      $$ |      $$ |      $$ |$$  _$$<        $$\   $$ |$$ |      $$ |  $$ |$$ |$$ |  $$ | \____$$\  \____$$\ $$   ____|$$ |      
$$$$$$$  |\$$$$$$$ |      \$$$$$$  |$$ |  $$ |$$ |      $$ |$$$$$$$  |  \$$$$  |$$ |\$$$$$$$ |$$ |  $$ |      \$$$$$$  |\$$$$$$$ |$$ |   \$  /   \$$$$$$  |      \$$$$$$$ |$$ |  $$ |\$$$$$$$ |      $$$$$$$$\ $$ |      $$ |$$ | \$$\       \$$$$$$  |\$$$$$$$\ $$ |  $$ |$$ |\$$$$$$  |$$$$$$$  |$$$$$$$  |\$$$$$$$\ $$ |      
\_______/  \____$$ |       \______/ \__|  \__|\__|      \__|\_______/    \____/ \__| \_______|\__|  \__|       \______/  \_______|\__|    \_/     \______/        \_______|\__|  \__| \_______|      \________|\__|      \__|\__|  \__|       \______/  \_______|\__|  \__|\__| \______/ \_______/ \_______/  \_______|\__|      
          $$\   $$ |                                                                                                                                                                                                                                                                                                             
          \$$$$$$  |                                                                                                                                                                                                                                                                                                             
           \______/                                                                                                                                                                                                                                                                                                              
                                                                                                         |___/                               


With the help of the Matlab files included in this folder, you can implement noise cancellation by running a feedback loop until the noise is eliminated.
Song.wav and audionoise.wav are combined into one noisySong.wav signal. The extra noise can then be eliminated via audioCancel.m.
You will find a comprehensive guide on how to run all of the files in this zip file in the stages that follow.



Step 1: File Preparation
   Verify that you have every file included in this zip file. "audioCancel.m, audioMerge.m, DarthVaderThemeSong.m, timeandfreqPlot.m" are among these files. 
You will eventually need these essential files in order to receive the audios as well.
Don't worry if this folder contains no.wav files! These files will be created by the code and simply overwritten if you already have them.


Step 2: Installing Matlab
    Mathematical and engineering fields frequently employ the programming language Matlab. Mathworks.com offers a download for their proprietary IDE. 
To create an account and download the required software, adhere to the website's instructions.
You can now launch Matlab after it has been installed.


Step 3: Opening the folder with all the files
    The open button in the upper left corner allows you to open each file individually. 
Getting your folder's directory and seeing everything at once is considerably simpler, though. 
Use your preferred file-opening program (such as Windows File Explorer) and right-click the folder containing the compressed file, then select "Copy path."
 After that, you return to Matlab and paste it into the "C://Users//.." box, which is long and rectangular. 


Step 4: Running any file
    The order in which this job was completed was extremely precise. 
DarthVaderThemeSong.m must be run first, followed by audioMerge.m, audioCancel.m, and timeandfreqPlot.m. 
This will offer you the complete experience, but you have to select the editor option above in order to run any file. 
After then, a green play button ought to appear on the right. Verify that it is functioning by looking at the command window!


    How it works-

The song.wav file produced by DarthVaderThemeSong.m is then combined with another noise sound in audioMerge.m to produce a noisySong.wav.
 White noise has been added to the previous tune. You may eliminate this noise by opening audioCancel.m, which should remove the noise and leave you with the initial sound.

 Finally, using a spectrogram and the sine waves of the signals in time, frequency, and "," timeandfreqPlot.m lets you see what just transpired.


