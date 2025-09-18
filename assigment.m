syms z
% i) x[n] = {1,2,5} en n=0,1,2
X1 = 1 + 2*z^(-1) + 5*z^(-2)
pretty(X1)

% ii) x[n] = {0,3,0,4} en n=0..3
X2 = 0 + 3*z^(-1) + 0*z^(-2) + 4*z^(-3)
pretty(X2)


syms n z

% (a) a^n u[n], con a=0.6
Xa = ztrans((0.6)^n * heaviside(n), n, z)

% (b) (-0.8)^n u[n]
Xb = ztrans((-0.8)^n * heaviside(n), n, z)

% (c) -(0.9)^n u[-n-1]
Xc = ztrans(-(0.9)^n * heaviside(-n-1), n, z)

syms n z
x1 = (0.5)^n * heaviside(n);
x2 = (-0.5)^n * heaviside(n);

% (a) Linealidad
X_lin = ztrans(2*x1 - 3*x2, n, z)

% (b) Desplazamiento en el tiempo
X_shift = ztrans(subs(x1, n, n-3), n, z)

b = [1 -2.4 2.88];    % numerador
a = [1 -0.8 0.64];    % denominador

% (a) Polos y ceros
figure; zplane(b,a); grid on; title('Pole-Zero Plot');

% (b) Respuesta en frecuencia
[H,w] = freqz(b,a,512);
figure;
subplot(2,1,1); plot(w/pi, abs(H)); grid on; ylabel('|H|'); title('Magnitude');
subplot(2,1,2); plot(w/pi, angle(H)); grid on; xlabel('\omega/\pi'); ylabel('Phase');

