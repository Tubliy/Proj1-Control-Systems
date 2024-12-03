% Load audio files
[y_clean, Fs_clean] = audioread('song.wav'); % Reference clean audio
[y_noisy, Fs_noisy] = audioread('noisySong.wav'); % Noisy audio to be cleaned

% Initialize processed audio as the noisy audio
y_filtered = y_noisy;

% Set a threshold for residual noise
threshold = 0.001; 

% Initial residual to enter the loop
residual = inf;

% Start the feedback loop
while residual > threshold
    % Perform FFT  
    Y_clean = fft(y_clean);
    Y_filtered = fft(y_filtered);

    % Calculate Transfer Function
    H = Y_clean ./ Y_filtered;

    % Apply Noise Cancellation
    Y_filtered= H .* fft(y_noisy);

    % Inverse FFT back to time domain.
    y_filtered = ifft(Y_filtered);

    % Calculate residual noise
    residual = norm(y_filtered - y_clean) / norm(y_clean); % Using norm as a measure of difference
end



% Write the final processed audio to a new file
 
audiowrite("cleanSong.wav", y_filtered, Fs_noisy);

% Display a message indicating the completion of the process
disp('Processed audio file with feedback until clean saved as cleanSong.wav');
