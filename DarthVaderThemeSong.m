clear; % Remove all variables from the workspace

% Sampling frequency
FS = 8000; % Sampling frequency in Hz

% Helper function to generate a note
note = @(freq, duration) sin(2*pi*freq*(0:1/FS:duration));

% Frequencies for the Imperial March
A = 440;        % A4
A_low = 220;    % A3
F = 349.23;     % F4
C_high = 523.25; % C5
E_high = 659.25; % E5
D_high = 587.33; % D5
B = 493.88;     % B4
G = 392;        % G4

% Note durations (in seconds)
quarter = 0.5;
half = 1.0;
eighth = 0.25;
dotted_quarter = 0.75;

% Imperial March melody
melody = [
    note(A, quarter), note(A, quarter), note(F, quarter), note(C_high, quarter), ...
    note(A, quarter), note(F, quarter), note(C_high, quarter), note(A, half), ...
    note(E_high, quarter), note(E_high, quarter), note(E_high, quarter), ...
    note(F, quarter), note(C_high, quarter), note(A_low, quarter), ...
    note(F, quarter), note(C_high, quarter), note(A, half), ...
    note(D_high, quarter), note(D_high, quarter), note(B, quarter), ...
    note(C_high, quarter), note(A, quarter), note(F, quarter), ...
    note(C_high, quarter), note(A, half)
];

% Bass line (optional for more depth)
bass = [
    note(A_low, quarter), note(A_low, quarter), note(A_low, quarter), ...
    note(F, quarter), note(F, quarter), note(F, quarter), ...
    note(A_low, quarter), note(A_low, quarter), note(A_low, quarter), ...
    note(G, quarter), note(G, quarter), note(G, quarter), ...
    note(A_low, quarter), note(A_low, quarter), note(A_low, quarter)
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
