

tau = linspace(-3,5,100);
t_rys = linspace(min(tau),max(tau),1000);
dtau = mean(diff(tau));

t = tau;
x1 = @(t) 2*rectpuls(t-1);
x2 = @(t) triangularPulse(t-3);
y = zeros(size(t));

for i=1:length(t)
    tcurr = t(i);
    y(i) = sum(x1(-tau+tcurr).*x2(tau))*dtau;
end
tN = t;
tauN = tau;
%%
ylm = [0 2];
LS = {'-',':'};
FS = 16;
LW = 3;
figure('color','w')
plot(t_rys,x1(t_rys),LS{1},'LineWidth',LW);
hold on;
plot(t_rys,x2(t_rys),LS{2},'LineWidth',LW);
%plot([0 0],ylim,'-k','HandleVisibility','off')
xlabel('t')
ylabel('')
xlim(minmax(t_rys))
xticks(min(t_rys):1:max(t_rys))
ylim(ylm)
grid on
legend({'x_1(t)','x_2(t)'},'Box','off','Location','northwest');
set(gca,'fontsize',FS)
%%
LS = {'-',':'};
FS = 16;
LW = 3;
figure('color','w')
plot(t_rys,x1(t_rys),LS{1},'LineWidth',LW);
hold on;
plot(t_rys,x2(t_rys),LS{2},'LineWidth',LW);
%plot([0 0],ylim,'-k','HandleVisibility','off')
xlabel('\tau')
ylabel('')
xlim(minmax(t_rys))
xticks(min(t_rys):1:max(t_rys))
ylim(ylm)
grid on
legend({'x_1(\tau)','x_2(\tau)'},'Box','off','Location','northwest');
set(gca,'fontsize',FS)

%%
t_rys2 = linspace(-7,7,1000);
LS = {'-',':'};
FS = 16;
LW = 3;
figure('color','w')
plot(t_rys2,heaviside(t_rys2-2),LS{1},'LineWidth',LW);
hold on;
plot(t_rys2,heaviside(-t_rys2-2),LS{2},'LineWidth',LW);
%plot([0 0],ylim,'-k','HandleVisibility','off')
xlabel('\tau')
ylabel('')
xlim(minmax(t_rys2))
xticks(min(t_rys2):1:max(t_rys2))
%ylim(ylm)
grid on
legend({'h(t)','h(-t)'},'Box','off','Location','northwest');
set(gca,'fontsize',FS)
%%

LS = {'-',':'};
FS = 16;
LW = 3;
figure('color','w')
plot(t_rys,x1(-t_rys),LS{1},'LineWidth',LW);
hold on;
plot(t_rys,x2(t_rys),LS{2},'LineWidth',LW);
%plot([0 0],ylim,'-k','HandleVisibility','off')
xlabel('\tau')
ylabel('')
xlim(minmax(t_rys))
xticks(min(t_rys):1:max(t_rys))
ylim(ylm)
grid on
legend({'x_1(-\tau)','x_2(\tau)'},'Box','off','Location','northeast');
set(gca,'fontsize',FS)

%%

LS = {'-',':','--'};
FS = 16;
LW = 3;
figure('color','w')
plot(t_rys,x1(-t_rys-Inf),LS{1},'LineWidth',LW);
hold on;
plot(t_rys,x2(t_rys),LS{2},'LineWidth',LW);
plot(t_rys,x1(-t_rys-Inf).*x2(t_rys),LS{3},'LineWidth',LW);
%plot([0 0],ylim,'-k','HandleVisibility','off')
xlabel('\tau')
ylabel('')
xlim(minmax(t_rys))
xticks(min(t_rys):1:max(t_rys))
ylim(ylm)
grid on
legend({'x_1(-\tau+t)','x_2(\tau)','x_1(-\tau+t)\cdot x_2(\tau)'},'Box','off','Location','northeast');
set(gca,'fontsize',FS)

%%

LS = {'-',':','--'};
FS = 16;
LW = 3;
figure('color','w')
plot(t_rys,x1(-t_rys-100),LS{1},'LineWidth',LW);
hold on;
plot(t_rys,x2(t_rys),LS{2},'LineWidth',LW);
plot(t_rys,x1(-t_rys-100).*x2(t_rys),LS{3},'LineWidth',LW);
%plot([0 0],ylim,'-k','HandleVisibility','off')
xlabel('\tau')
ylabel('')
xlim(minmax(t_rys))
xticks(min(t_rys):1:max(t_rys))
ylim(ylm)
grid on
legend({'x_1(-\tau+t)','x_2(\tau)','x_1(-\tau-100)\cdot x_2(\tau)'},'Box','off','Location','northeast');
set(gca,'fontsize',FS)

%%

LS = {'-',':','--'};
FS = 16;
LW = 3;
figure('color','w')
plot(t_rys,x1(-t_rys-1),LS{1},'LineWidth',LW);
hold on;
plot(t_rys,x2(t_rys),LS{2},'LineWidth',LW);
plot(t_rys,x1(-t_rys-1).*x2(t_rys),LS{3},'LineWidth',LW);
%plot([0 0],ylim,'-k','HandleVisibility','off')
xlabel('\tau')
ylabel('')
xlim(minmax(t_rys))
xticks(min(t_rys):1:max(t_rys))
ylim(ylm)
grid on
legend({'x_1(-\tau+t)','x_2(\tau)','x_1(-\tau-1)\cdot x_2(\tau)'},'Box','off','Location','northeast');
set(gca,'fontsize',FS)

%%

LS = {'--',':','-'};
FS = 16;
LW = 3;
figure('color','w')
plot(t_rys,x1(-t_rys+3),LS{1},'LineWidth',LW);
hold on;
plot(t_rys,x2(t_rys),LS{2},'LineWidth',LW);
plot(t_rys,x1(-t_rys+3).*x2(t_rys),LS{3},'LineWidth',LW);
%plot([0 0],ylim,'-k','HandleVisibility','off')
xlabel('\tau')
ylabel('')
xlim(minmax(t_rys))
xticks(min(t_rys):1:max(t_rys))
ylim(ylm)
grid on
legend({'x_1(-\tau+t)','x_2(\tau)','x_1(-\tau+3)\cdot x_2(\tau)'},'Box','off','Location','northwest');
set(gca,'fontsize',FS)

%%
syms t tau
simplify(int(2*(tau-2),tau,2,-0.5+t),100)

%%

LS = {'--',':','-'};
FS = 16;
LW = 3;
figure('color','w')
plot(t_rys,x1(-t_rys+4),LS{1},'LineWidth',LW);
hold on;
plot(t_rys,x2(t_rys),LS{2},'LineWidth',LW);
plot(t_rys,x1(-t_rys+4).*x2(t_rys),LS{3},'LineWidth',LW);
%plot([0 0],ylim,'-k','HandleVisibility','off')
xlabel('\tau')
ylabel('')
xlim(minmax(t_rys))
xticks(min(t_rys):1:max(t_rys))
ylim(ylm)
grid on
legend({'x_1(-\tau+t)','x_2(\tau)','x_1(-\tau+4)\cdot x_2(\tau)'},'Box','off','Location','northwest');
set(gca,'fontsize',FS)

%%
syms t tau
simplify(int(2*(tau-2),tau,-3/2+t,3)+int(2*(-tau+4),tau,3,-1/2+t),1000)

%%

LS = {'--',':','-'};
FS = 16;
LW = 3;
figure('color','w')
plot(t_rys,x1(-t_rys+5),LS{1},'LineWidth',LW);
hold on;
plot(t_rys,x2(t_rys),LS{2},'LineWidth',LW);
plot(t_rys,x1(-t_rys+5).*x2(t_rys),LS{3},'LineWidth',LW);
%plot([0 0],ylim,'-k','HandleVisibility','off')
xlabel('\tau')
ylabel('')
xlim(minmax(t_rys))
xticks(min(t_rys):1:max(t_rys))
ylim(ylm)
grid on
legend({'x_1(-\tau+t)','x_2(\tau)','x_1(-\tau+5)\cdot x_2(\tau)'},'Box','off','Location','northwest');
set(gca,'fontsize',FS)

%%
syms t tau
simplify(int(2*(-tau+4),tau,-3/2+t,4),1000)

%%
t_rys_final = linspace(0,6,1000);
FS = 16;
LW = 3;
figure('color','w')
plot(t_rys_final,x1(t_rys_final),'LineWidth',LW)
hold on;
plot(t_rys_final,x2(t_rys_final),'LineWidth',LW)
plot(t_rys_final,splot1(t_rys_final),'LineWidth',LW)
xlim([0 6])
xlabel('t')
ylabel('')
legend({'x_1(t)','x_2(t)','y(t)'},'Box','off','Location','best');
set(gca,'fontsize',FS)


%% animacja 1

LS = {'--',':','-'};
FS = 16;
LW = 3;
ts = linspace(2,6,60);
nImages = length(ts);

fig = figure('color','w');
for idx = 1:nImages
    t = ts(idx);
    plot(t_rys,x1(-t_rys+t),LS{1},'LineWidth',LW);
    hold on;
    plot(t_rys,x2(t_rys),LS{2},'LineWidth',LW);
    plot(t_rys,x1(-t_rys+t).*x2(t_rys),LS{3},'LineWidth',LW);
    %plot([0 0],ylim,'-k','HandleVisibility','off')
    xlabel('\tau')
    ylabel('')
    xlim(minmax(t_rys))
    xticks(min(t_rys):1:max(t_rys))
    ylim(ylm)
    grid on
    legend({'x_1(-\tau+t)','x_2(\tau)','x_1(-\tau+t)\cdot x_2(\tau)'},'Box','off','Location','northwest');
    set(gca,'fontsize',FS)
    title(['t=' num2str(t)]);
    hold off;


    drawnow
    frame = getframe(fig);
    im{idx} = frame2im(frame);
end
close;
%%
delt = 8/nImages;
filename = "testAnimated.gif"; % Specify the output file name
for idx = 1:nImages
    [A,map] = rgb2ind(im{idx},256);
    if idx == 1
        imwrite(A,map,filename,"gif",LoopCount=Inf, ...
                DelayTime=delt)
    else
        imwrite(A,map,filename,"gif",WriteMode="append", ...
                DelayTime=delt)
    end
end

%% animacja 2
t_rys_a2 = linspace(0,6,100);
splot_a2 = splot1(t_rys_a2);

LS = {'--',':','-'};
FS = 16;
LW = 2;
LW2 = 3;
ts = linspace(2,6,60);
nImages = length(ts);

fig = figure('color','w','Position',[1440,818,2*560,2*420]);
for idx = 1:nImages
    t = ts(idx);
    [~,ix2] = min(abs(t_rys_a2-t));
    plot(t_rys_a2,x1(-t_rys_a2+t),LS{1},'LineWidth',LW);
    hold on;
    plot(t_rys_a2,x2(t_rys_a2),LS{2},'LineWidth',LW);
    a1 = area(t_rys_a2,x1(-t_rys_a2+t).*x2(t_rys_a2),'LineWidth',LW,'EdgeColor',[0.9290 0.6940 0.1250],'FaceColor',[0.4940 0.1840 0.5560]);
    a1.FaceAlpha = 0.8;
    plot(t_rys_a2(1:ix2),splot_a2(1:ix2),'LineWidth',LW2)
    %plot([0 0],ylim,'-k','HandleVisibility','off')
    xlabel('\tau,t')
    ylabel('')
    xlim(minmax(t_rys_a2))
    xticks(min(t_rys_a2):1:max(t_rys_a2))
    ylim(ylm)
    grid on
    legend({'x_1(-\tau+t)','x_2(\tau)','x_1(-\tau+t)\cdot x_2(\tau)','y(t)'},'Box','off','Location','northwest');
    set(gca,'fontsize',FS)
    title(['t=' num2str(t)]);
    hold off;


    drawnow
    frame = getframe(fig);
    im{idx} = frame2im(frame);
end
close;
%%
delt = 8/nImages;
filename = "splotAnimacjaFinal.gif"; % Specify the output file name
for idx = 1:nImages
    [A,map] = rgb2ind(im{idx},256);
    if idx == 1
        imwrite(A,map,filename,"gif",LoopCount=Inf, ...
                DelayTime=delt)
    else
        imwrite(A,map,filename,"gif",WriteMode="append", ...
                DelayTime=delt)
    end
end

function y = splot1(t)
y = zeros(size(t));
for i=1:length(t)
    tcurr = t(i);
    if tcurr>2.5 && tcurr<3.5
        y(i) = 1/4*(2*tcurr-5).^2;
    elseif tcurr>=3.5 && tcurr<4.5
        y(i) = -2*tcurr^2+16*tcurr-61/2;
    elseif tcurr>=4.5 && tcurr<5.5
        y(i) = 1/4*(2*tcurr-11).^2;
    end
end
end