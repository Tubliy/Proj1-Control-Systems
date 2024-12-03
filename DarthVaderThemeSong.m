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
duration = struct( ...
    'quarter', 0.5, ...
    'half', 1.0, ...
    'eighth', 0.25, ...
    'dotted_quarter', 0.75 ...
);

% Generate waveforms for notes
Aquarter = sin(2*pi*freq.A*(0:1/FS:duration.quarter));
Fquarter = sin(2*pi*freq.F*(0:1/FS:duration.quarter));
C_highquarter = sin(2*pi*freq.C_high*(0:1/FS:duration.quarter));
Ahalf = sin(2*pi*freq.A*(0:1/FS:duration.half));
E_highquarter = sin(2*pi*freq.E_high*(0:1/FS:duration.quarter));
A_lowquarter = sin(2*pi*freq.A_low*(0:1/FS:duration.quarter));
D_highquarter = sin(2*pi*freq.D_high*(0:1/FS:duration.quarter));
Bquarter = sin(2*pi*freq.B*(0:1/FS:duration.quarter));
Gquarter = sin(2*pi*freq.G*(0:1/FS:duration.quarter));

% Define the melody (base melody repeated)
melody_part = [ ...
    Aquarter, Aquarter, Fquarter, C_highquarter, ...
    Aquarter, Fquarter, C_highquarter, Ahalf, ...
    E_highquarter, E_highquarter, E_highquarter, ...
    Fquarter, C_highquarter, A_lowquarter, ...
    Fquarter, C_highquarter, Ahalf, ...
    D_highquarter, D_highquarter, Bquarter, ...
    C_highquarter, Aquarter, Fquarter, ...
    C_highquarter, Ahalf ...
];

% Repeat melody to approximately 30 seconds
melody = repmat(melody_part, 1, ceil(30 / (length(melody_part) / FS)));

% Bass line to match melody
bass_part = [
    A_lowquarter, A_lowquarter, A_lowquarter, ...
    Fquarter, Fquarter, Fquarter, ...
    A_lowquarter, A_lowquarter, A_lowquarter, ...
    Gquarter, Gquarter, Gquarter, ...
    A_lowquarter, A_lowquarter, A_lowquarter ...
];

bass = repmat(bass_part, 1, ceil(30 / (length(bass_part) / FS)));

% Ensure melody and bass have the same length
melody = melody(1:min(length(melody), FS * 30)); % Trim melody to 30 seconds
bass = bass(1:min(length(bass), FS * 30));       % Trim bass to 30 seconds

% Combine melody and bass
bass = bass * 0.5; % Lower bass volume
song = melody + bass;

% Normalize song to avoid clipping
song = song / max(abs(song));

% Write the final music to a .wav file
audiowrite('song.wav', song, FS);

% Playback
audio = audioplayer(song, FS);
play(audio);
