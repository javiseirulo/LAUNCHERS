% REFERENCES

% VEGA-C

% Stage 1: P120C
vega_c1.name = 'P120C';
vega_c1.length = 13.5;      % m
vega_c1.diameter = 3.4;     % m
vega_c1.Mp = 141400;        % kg (Propellant mass: 141.4 tons)
vega_c1.Me = 11200;         % kg (Motor dry mass)
vega_c1.M_case = 8200;      % kg (Motor case mass)
vega_c1.F_max = 4780e3;     % N  (Maximum thrust: 4,780 kN)
vega_c1.Isp = 280.0;        % s  (Specific impulse)
vega_c1.tb = 134;           % s  (Combustion time)

% Stage 2: Zefiro 40
vega_c2.name = 'Zefiro 40';
vega_c2.length = 7.6;       % m
vega_c2.diameter = 2.3;     % m
vega_c2.Mp = 36100;         % kg (Propellant mass: 36.1 tons)
vega_c2.Me = 3230;          % kg (Motor dry mass)
vega_c2.M_case = 2130;      % kg (Motor case mass)
vega_c2.F_avg = 1035e3;     % N  (Average thrust: 1,035 kN)
vega_c2.Isp = 292.2;        % s  (Specific impulse)
vega_c2.tb = 99.8;          % s  (Combustion time)

% Stage 3: Zefiro 9
vega_c3.name = 'Zefiro 9';
vega_c3.length = 3.9;       % m
vega_c3.diameter = 1.9;     % m
vega_c3.Mp = 10500;         % kg (Propellant mass: 10.5 tons)
vega_c3.Me = 929;           % kg (Motor dry mass)
vega_c3.M_case = 630;       % kg (Motor case mass)
vega_c3.F_avg = 255e3;      % N  (Average thrust: 255 kN)
vega_c3.Isp = 294.8;        % s  (Specific impulse)
vega_c3.tb = 119.2;         % s  (Combustion time)

% Stage 4: AVUM+
vega_c4.name = 'AVUM+';
vega_c4.diameter = 2.0;     % m  (Length not listed on page)
vega_c4.Mp = 737;           % kg (Propellant mass)
vega_c4.Me = 695;           % kg (Mass of inerts)
vega_c4.M_motor = 16;       % kg (Motor mass)
vega_c4.F_avg = 2.47e3;     % N  (Average thrust of main motor: 2.47 kN)
vega_c4.Isp = 316.3;        % s  (Specific impulse)
vega_c4.tb = 892;           % s  (Combustion time)
