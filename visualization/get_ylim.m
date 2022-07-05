function [ ylim_value ] = get_ylim()
%GET_YLIM get slightly smaller ylim
ylim_value = get(gca,'YLim');
ylim_value(1) = ylim_value(1) + abs(ylim_value(1))*0.001;
ylim_value(2) = ylim_value(2) - abs(ylim_value(2))*0.001;

end

