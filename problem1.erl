-module(problem1).
-compile (export_all).


multiplesOfThreeAndFive(I) ->
	multiplesOfThreeAndFiveWorker(0, I-1).

multiplesOfThreeAndFiveWorker(S, I) when I == 0 ->
	S;

multiplesOfThreeAndFiveWorker(S, I) when I rem 5 == 0; I rem 3 == 0 ->
	multiplesOfThreeAndFiveWorker(S+I, I-1);

multiplesOfThreeAndFiveWorker(S,I) ->
	multiplesOfThreeAndFiveWorker(S,I-1).
