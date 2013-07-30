-module(problem3).
-compile (export_all).


% solution to http://projecteuler.net/problem=3
%
% Brute force solution:
%
% 0. Let P=600 851 475 143, the prime number we're trying to factor
% 1. Generate a list of prime numbers such that primeNumber(2) * primeNumber(n) > P
% 2. Permute all prime numbers such that one of the permutations equals P
% 3. This is the factorization
%
% run with:
% 
% multiplesOfThreeAndFive(1000).
%


generateList(I, A) when I==10000000 ->
	A;

generateList(I, A) ->
	generateList(I+1, array:set(I,I,A)).
