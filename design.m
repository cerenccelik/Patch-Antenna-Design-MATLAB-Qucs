% Microstrip Patch Antenna Calculator
% Author: [Senin Adın]
% Description: Calculates dimensions for a rectangular patch antenna
% based on transmission line model.

clc; clear; close all;

%% 1. Design Parameters (Girdiler)
f_r = 2.4e9;        % Target Frequency (Hz) - 2.4 GHz
h   = 1.6e-3;       % Substrate Height (m) - Standard FR4
eps_r = 4.4;        % Dielectric Constant (FR4)
Z0  = 50;           % Characteristic Impedance of System (Ohm)
c   = 3e8;          % Speed of light

%% 2. Calculations (Fizik & Matematik)

% Step A: Width Calculation (W)
% W determines the radiation efficiency and bandwidth
W = (c / (2 * f_r)) * sqrt(2 / (eps_r + 1));

% Step B: Effective Dielectric Constant (eps_eff)
% Waves travel partially in air, partially in substrate
eps_eff = (eps_r + 1) / 2 + ((eps_r - 1) / 2) * (1 / sqrt(1 + 12 * (h / W)));

% Step C: Length Extension (Delta L)
% Due to fringing fields at the edges
num = (eps_eff + 0.3) * ((W / h) + 0.264);
den = (eps_eff - 0.258) * ((W / h) + 0.8);
delta_L = 0.412 * h * (num / den);

% Step D: Actual Length (L)
% Effective length minus fringing effects
L_eff = c / (2 * f_r * sqrt(eps_eff));
L = L_eff - 2 * delta_L;

% Step E: Input Impedance Approximation (Edge Feed)
% Simplified approximation for edge impedance to design matching
% Typically high for edge feed (e.g., 200-300 Ohms)
R_in_edge = 90 * (eps_r^2 / (eps_r - 1)) * (L / W)^2; 

% Step F: Quarter Wave Transformer Impedance (Z_qw)
% To match R_in_edge to 50 Ohm line
Z_qw = sqrt(Z0 * R_in_edge);

%% 3. Output to Console
fprintf('------------------------------------------\n');
fprintf('  Microstrip Antenna Design Parameters\n');
fprintf('------------------------------------------\n');
fprintf('Target Frequency : %.2f GHz\n', f_r/1e9);
fprintf('Substrate        : FR4 (h=%.2f mm, eps=%.1f)\n', h*1000, eps_r);
fprintf('------------------------------------------\n');
fprintf('Calculated Width (W)  : %.2f mm\n', W*1000);
fprintf('Calculated Length (L) : %.2f mm\n', L*1000);
fprintf('------------------------------------------\n');
fprintf('Estimated Edge Impedance (R_in) : %.2f Ohm\n', R_in_edge);
fprintf('Quarter Wave Transformer (Z_qw) : %.2f Ohm\n', Z_qw);
fprintf('------------------------------------------\n');

%% 4. Visualization (Simple Geometry)
figure;
rectangle('Position', [0, 0, W*1000, L*1000], 'FaceColor', [0.85 0.33 0.1]);
axis equal;
title(['Patch Geometry: ' num2str(W*1000, '%.1f') 'mm x ' num2str(L*1000, '%.1f') 'mm']);
xlabel('Width (mm)');
ylabel('Length (mm)');
grid on;