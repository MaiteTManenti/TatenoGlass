function [intervaloRR, deltaRR, CV_RR, CV_deltaRR] = tateno(posicao_picosR, freq_amostragem)

    intervaloRR = zeros([size(posicao_picosR, 2) - 1  1]);
    for i = 1:size(posicao_picosR,2)-1
        intervaloRR(i) =  posicao_picosR(i+1) - posicao_picosR(i); 
    end
    
    %intervalo em segundos
    intervaloRR = intervaloRR * (1/freq_amostragem); 
    
    deltaRR = zeros([size(intervaloRR,1)-1 1]);
    for i = 1:size(intervaloRR,1)-1
        deltaRR(i) =  intervaloRR(i+1) - intervaloRR(i); 
        %if (deltaRR(i) < 0)
         %   deltaRR(i) = deltaRR(i) * -1;
        %nd
    end  
    
    CV_RR = std(intervaloRR)/mean(intervaloRR);
    CV_deltaRR = std(deltaRR)/mean(intervaloRR);
    
end





















