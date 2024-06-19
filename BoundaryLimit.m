function [result_X, result_V] = BoundaryLimit(X, V, X_Max, X_Min, V_Max, V_Min)

    for i_temp = 1:length(X(:, 1))
        for k=1:6

        if X(i_temp,k) > X_Max(k)
            X(i_temp,k) = X_Max(k);
        end

        if X(i_temp,k) < X_Min(k)
            X(i_temp,k) = X_Min(k);
        end
        
        end
    end

    for i_temp = 1:length(V(:, 1))
        for k=1:6
        if V(i_temp,k) > V_Max(k)
            V(i_temp,k) = V_Max(k);
        end

        if V(i_temp,k) < V_Min(k)
            V(i_temp,k) = V_Min(k);
        end
        end
    end

    result_X = X;
    result_V = V;

end
