%function J_grad = compute_joint_derivative_Jacobian(J)
function J_grad = teng4fcn_7dofPANDA_dJ_tensor(J)
	% Compute the Jacobian derivative w.r.t joint angles (hybrid Jacobian
	% representation). Ref: H. Bruyninck and J. de Schutter, 1996
	nb_rows = size(J,1); % task space dim.
	nb_cols = size(J,2); % joint space dim.
	J_grad = zeros(nb_rows, nb_cols, nb_cols);
	for i = 1:nb_cols
		for j = 1:nb_cols
			J_i = J(:,i);
			J_j = J(:,j);
			if j < i
				J_grad(1:3,i,j) = cross(J_j(4:6,:),J_i(1:3,:));
				J_grad(4:6,i,j) = cross(J_j(4:6,:),J_i(4:6,:));
			elseif j > i
				J_grad(1:3,i,j) = -cross(J_j(1:3,:),J_i(4:6,:));
			else
				J_grad(1:3,i,j) = cross(J_i(4:6,:),J_i(1:3,:));
			end
		end
	end
end


