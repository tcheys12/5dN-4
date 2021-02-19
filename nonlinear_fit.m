clc;
clear;
close all;
exp_LTP_raw=[   0	2.92308E-09
            0.857143	6.07692E-09
            1.71429	8.76923E-09
            2.85714	9.92308E-09
            3.71429	1.13077E-08
            4.28571	1.24615E-08
            5.71429	1.22308E-08
            6.57143	1.30769E-08
            8	1.28462E-08
            9.14286	1.46923E-08
            10.8571	1.43077E-08
            11.7143	1.53846E-08
            12.8571	1.49231E-08
            13.7143	1.56923E-08
            14.5714	1.63077E-08
            16	1.61538E-08
            16.5714	1.72308E-08
            17.7143	1.76154E-08
            18.8571	1.81538E-08
            19.4286	1.94615E-08
            20.8571	0.000000018
            23.7143	2.01538E-08
            24.5714	2.14615E-08
            26.5714	2.09231E-08
            28	2.03077E-08
            28.5714	2.24615E-08
            30	2.33846E-08
            30.8571	2.03077E-08
            31.7143	2.23846E-08
            32.5714	2.33846E-08
            33.4286	2.42308E-08
            34.8571	2.14615E-08
            37.7143	2.06154E-08
            38.5714	2.21538E-08
            39.4286	2.15385E-08
            40.8571	0.000000022
            41.7143	2.13077E-08
            42.5714	2.42308E-08
            43.4286	2.32308E-08
            45.7143	2.46154E-08
            46.5714	2.91538E-08
            48	2.45385E-08
            48.2857	2.41538E-08
            49.4286	2.29231E-08
            50.5714	2.43077E-08
            51.7143	2.30769E-08
            52.2857	2.49231E-08
            53.7143	2.45385E-08
            54.5714	2.56923E-08
            55.4286	2.43077E-08
            56.2857	2.59231E-08
            57.4286	2.83077E-08
            58.2857	2.56923E-08
            59.4286	2.76154E-08
            60.2857	2.86154E-08
            61.4286	2.94615E-08
            62.5714	2.99231E-08
            63.4286	3.30769E-08
            64.5714	3.17692E-08
            65.4286	3.82308E-08
            66.5714	0.000000031
            67.4286	3.63077E-08
            68.2857	3.34615E-08
            69.4286	3.31538E-08
            70.5714	3.29231E-08
            71.1429	0.000000034
            72.2857	3.61538E-08
            74.5714	0.000000034
            75.4286	3.25385E-08
            76.2857	3.66923E-08
            77.4286	3.53846E-08
            78.2857	3.44615E-08
            79.7143	3.51538E-08
            80.2857	3.39231E-08
            81.1429	3.62308E-08
            82.2857	3.79231E-08
            83.4286	3.21538E-08
            84.2857	3.43846E-08
            85.4286	3.27692E-08
            86.2857	3.58462E-08
            87.1429	3.66923E-08
            88.2857	3.61538E-08
            90	3.81538E-08
            90.2857	3.90769E-08
            91.1429	4.02308E-08
            92.5714	3.81538E-08
            93.7143	3.69231E-08
            94.5714	3.78462E-08
            95.4286	3.90769E-08
            96.2857	4.11538E-08
            97.4286	4.17692E-08];

exp_LTD_raw=[   0	3.15385E-09
            3.1424	3.53846E-09
            4.0004	2.92308E-09
            4.5714	4.23077E-09
            6.5714	3.07692E-09
            6.8574	4.15385E-09
            8.0004	3.30769E-09
            9.1424	4.23077E-09
            10.0004	3.61538E-09
            11.1424	4.07692E-09
            12.0004	3.84615E-09
            13.1424	4.30769E-09
            15.1424	4.30769E-09
            15.7144	4.23077E-09
            17.1424	3.61538E-09
            18.2854	0.000000003
            19.1424	3.69231E-09
            21.1424	4.23077E-09
            22.0004	3.53846E-09
            23.1424	4.07692E-09
            24.2854	3.46154E-09
            26.5714	3.76923E-09
            28.0004	4.38462E-09
            28.8574	3.30769E-09
            29.7144	2.69231E-09
            31.4284	3.69231E-09
            32.8574	0.000000003
            34.0004	3.46154E-09
            35.1424	5.30769E-09
            36.8574	4.69231E-09
            37.4284	5.07692E-09
            38.2854	5.76923E-09
            39.7144	5.46154E-09
            40.8574	6.07692E-09
            42.5714	5.23077E-09
            44.0004	0.000000006
            44.8574	5.30769E-09
            46.8574	6.69231E-09
            48.0004	7.46154E-09
            49.1424	0.000000007
            49.7144	6.38462E-09
            50.5714	7.23077E-09
            52.5714	8.46154E-09
            54.5714	7.76923E-09
            56.8574	8.76923E-09
            57.4284	8.30769E-09
            60.2854	9.76923E-09
            61.4284	9.38462E-09
            63.7144	0.000000011
            64.2854	1.04615E-08
            65.7144	1.21538E-08
            67.7144	0.000000011
            68.0004	1.13077E-08
            69.7144	1.26923E-08
            70.5714	1.35385E-08
            71.7144	1.41538E-08
            73.1424	1.56154E-08
            74.5714	1.77692E-08
            76.0004	1.87692E-08
            76.5714	1.95385E-08
            79.4284	2.04615E-08
            80.2854	2.16923E-08
            80.8574	2.07692E-08
            82.5714	2.35385E-08
            83.7144	2.36923E-08
            85.4284	2.67692E-08
            87.1424	2.71538E-08
            87.4284	3.18462E-08
            89.4284	3.26923E-08
            91.4284	0.000000034
            91.7144	0.000000036
            93.7144	3.47692E-08
            94.0004	3.83846E-08
            96.0004	3.93077E-08
            96.2854	3.93846E-08
            97.7144	3.63846E-08
            98.8574	4.10769E-08
            100.5714	4.17692E-08];
xf_ltp = floor(max(exp_LTP_raw(:,1)));
xf_ltd = floor(max(exp_LTD_raw(:,1)));
x_step_ltp = 1/xf_ltp;
x_step_ltd = 1/xf_ltd;
yf_ltp = max(exp_LTP_raw(:,2));
yf_ltd = max(exp_LTD_raw(:,2));
yi_ltp = min(exp_LTP_raw(:,2));
yi_ltd = min(exp_LTD_raw(:,2));

exp_LTP(:,1) = exp_LTP_raw(:,1)/xf_ltp;
exp_LTD(:,1) = exp_LTD_raw(:,1)/xf_ltd;
exp_LTP(:,2) = (exp_LTP_raw(:,2)-yi_ltp)/(yf_ltp-yi_ltp);
exp_LTD(:,2) = (exp_LTD_raw(:,2)-yi_ltd)/(yf_ltd-yi_ltd);

plot(exp_LTP(:,1), exp_LTP(:,2), 'bo', 'LineWidth', 1);
hold on;
plot(exp_LTD(:,1), exp_LTD(:,2), 'ro', 'LineWidth', 1);

xf = 1;
A_LTP = 0.5;
B_LTP = 1./(1-exp(-1./A_LTP));
A_LTD = -0.2;
B_LTD = 1./(1-exp(-1./A_LTD));

% LTP fitting
var_amp = 0.035;    % LTP cycle-to-cycle variation
rng(103);
x_ltp(1) = 0;
y_ltp(1) = 0;
for n=1:1/x_step_ltp+1
    x_ltp(n+1) = x_ltp(n)+x_step_ltp;
    y_ltp(n+1) = B_LTP(1)*(1-exp(-x_ltp(n+1)/A_LTP(1)));
    delta_y = (y_ltp(n+1)-y_ltp(n)) + randn*var_amp;
    y_ltp(n+1) = y_ltp(n) + delta_y;   
    if y_ltp(n+1)>=1
        y_ltp(n+1)=1;
    elseif y_ltp(n+1)<=0
        y_ltp(n+1)=0;
    end
    x_ltp(n+1) = -A_LTP(1)*log(1-(y_ltp(n+1))/B_LTP(1));
end
plot((0:n-1)/(n-1), y_ltp(1:n), 'b', 'linewidth', 2);

% LTD fitting
var_amp = 0.025;    % LTD cycle-to-cycle variation
rng(898);
x_ltd(1) = 1;
y_ltd(1) = 1;
for n=1:1/x_step_ltd+1
    x_ltd(n+1) = x_ltd(n)-x_step_ltd;
    y_ltd(n+1) = B_LTD(1)*(1-exp(-x_ltd(n+1)/A_LTD(1)));
    delta_y = (y_ltd(n+1)-y_ltd(n)) + randn*var_amp;
    y_ltd(n+1) = y_ltd(n) + delta_y;
    if y_ltd(n+1)>=1
        y_ltd(n+1)=1;
    elseif y_ltd(n+1)<=0
        y_ltd(n+1)=0;
    end
    x_ltd(n+1) = -A_LTD(1)*log(1-(y_ltd(n+1))/B_LTD(1));
end
x_start = numel(x_ltd(:));
x_end = numel(x_ltd(:)) - n;
plot((n-1:-1:0)/(n-1), y_ltd(1:n), 'r', 'linewidth', 2);

xlabel('Normalized Pulse #');
ylabel('Normalized Conductance');
legend('Exp data (LTP)','Exp data (LTD)', 'Fit (LTP)', 'Fit (LTD)', 'location', 'southeast');