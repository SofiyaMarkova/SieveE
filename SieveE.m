%Sofiya Markova 
%goal of code:
%Sieve of Eratosthenes simulation. find all primes numbers in a given
%value.

%note: Matlab Array indices start from 1


function [SPrimes] = SieveE(N)
 
%make vector from 2 to N
ListingN = [1:N];
%start at 1 in vector
h=1;

%loop vector of all numbers
for k = 2:N
    
    %if ListingN number not set to 0 it is prime
    if ListingN(k) ~=0
        
        %to move position over
        h=h+1;
        
        %save prime number
        SPrimes(h)= ListingN(k);
        
        %sets to start, later used for multiple accumulate
        x = k;
        
        %loops through vector
        for z = 2:N
            
            %multiples accumulate
            x = x+k;
            
         %set the multiples to 0 b/c then is not prime if multiple
          ListingN(x)=0;   
            
        end    
       
       
    end
end


