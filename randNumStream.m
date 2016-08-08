
% The random number stream is implemented as "randstream' 

%To seed the generator in new versions, things are more versatile: 

% Type: 
RandStream.list
% to get a list of available psuedorandom number generation methods

% Mersenne twister with Mersenne prime 2^19937-1: 
s = RandStream('mt19937ar', 'Seed', sum(100* clock))

RandStream.setGlobalStream(s);

%{
The following random number generator algorithms are available:
    dsfmt19937:   SIMD-oriented Fast Mersenne Twister with Mersenne prime 2^19937-1
    mcg16807:     Multiplicative congruential generator, with multiplier 7^5, modulo 2^31-1
    mlfg6331_64:  Multiplicative lagged Fibonacci generator, with lags 63 and 31, 64 bit (supports parallel streams)
    mrg32k3a:     Combined multiple recursive generator (supports parallel streams)
    mt19937ar:    Mersenne Twister with Mersenne prime 2^19937-1
    shr3cong:     SHR3 shift-register generator summed with CONG linear congruential generator
    swb2712:      Modified Subtract-with-Borrow generator, with lags 27 and 12
%}


% the simplest way to generate arrays of random numbers is to use
% RAND, RANDI, or RANDN
