function y = linterp_bary(X, Y, x)
    w = ones(size(X));
    for i = 1:numel(X)
        for j = 1:numel(X)
            if i ~=j
                w(i) = w(i) * (X(i)-X(j));
            end     
        end
    end
    w = 1./w;
    yy = w./(x.'-X);
    y = sum(yy .* Y)/sum(yy);
end