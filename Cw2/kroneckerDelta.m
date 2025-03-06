function y=kroneckerDelta(x)

for k=1:length(x)
    if(x(k)==0)
        y(k)=1;
    else
        y(k)=0;
    end
end

end