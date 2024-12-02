clear; % Remove all variables from the workspace

% Sampling frequency
FS = 8000; % Sampling frequency in Hz

% Frequencies for the Imperial March

freq = struct( ...
    'A', 440, ...        % A4
    'A_low', 220, ...    % A3
    'F', 349.23, ...     % F4
    'C_high', 523.25, ... % C5
    'E_high', 659.25, ... % E5
    'D_high', 587.33, ... % D5
    'B', 493.88, ...     % B4
    'G', 392 ...         % G4
);

% Note durations (in seconds)

duration = struct(...
'quarter',  0.5, ...
'half',  1.0,...
'eighth',  0.25,...
'dotted_quarter',  0.75...
);

Aquarter = sin(2*pi*freq.A*(0:1/FS:duration.quarter));
Fquarter = sin(2*pi*freq.F*(0:1/FS:duration.quarter));
C_highquarter = sin(2*pi*freq.C_high*(0:1/FS:duration.quarter));
Ahalf = sin(2*pi*freq.A*(0:1/FS:duration.half));
E_highquarter = sin(2*pi*freq.E_high*(0:1/FS:duration.quarter));
A_lowquarter = sin(2*pi*freq.A_low*(0:1/FS:duration.quarter));
D_highquarter = sin(2*pi*freq.D_high*(0:1/FS:duration.quarter));
Bquarter = sin(2*pi*freq.B*(0:1/FS:duration.quarter));
Gquarter = sin(2*pi*freq.G*(0:1/FS:duration.quarter));

melody = [ 

    Aquarter, Aquarter, Fquarter, C_highquarter,...
    Aquarter, Fquarter, C_highquarter, Ahalf,...
    E_highquarter, E_highquarter, E_highquarter,...
    Fquarter, C_highquarter, A_lowquarter,...
    Fquarter, C_highquarter, Ahalf,...
    D_highquarter, D_highquarter, Bquarter,...
    C_highquarter, Aquarter, Fquarter,...
    C_highquarter, Ahalf,...

];

% Bass line (optional for more depth)

bass = [
    
    A_lowquarter, A_lowquarter, A_lowquarter,...
    Fquarter,Fquarter, Fquarter,...
    A_lowquarter, A_lowquarter, A_lowquarter,...
    Gquarter, Gquarter, Gquarter,...
    A_lowquarter, A_lowquarter, A_lowquarter,...

];

% Combine melody and bass (bass is lower in volume for harmony)
bass = bass * 0.5; % Lower bass volume
song = [melody + [bass, zeros(1, length(melody) - length(bass))]];

% Normalize song to avoid clipping
song = song / max(abs(song));

% Write the final music to a .wav file
audiowrite('song.wav', song, FS);

% Playback
audio = audioplayer(song, FS);
play(audio);
