function MB_2()
    %MB_2 Operacoes de Calculadora
    %   Atividade para aprendizado
    clc
    z = -3 - 4i;
    % Representacao
    table(real(z), imag(z), sqrt(real(z)^2 + imag(z)^2), 'VariableNames', {'Real', 'Imaginaria', 'Magnitude'})
    z
    % Diferentes formas de calcular a Magnitude
    z_mag = sqrt(real(z)^2 + imag(z)^2)
    z_mag = sqrt(z * conj(z))
    z_mag = abs(z)
    % Diferentes formas de calcular fase
    z_rad = angle(z)
    z_rad = atan2(imag(z), real(z))

    

end
