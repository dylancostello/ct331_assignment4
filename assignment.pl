%Definitions for isElementInList(El, List)
isElementInList(El,[El|_]).
isElementInList(El,[_|Tail]):- isElementInList(El,Tail).

%Definitions for mergeLists(List1, List2, Merged)
mergeLists([], List2, List2).
mergeLists([Head|Tail],List2,[Head|Merged]):-mergeLists(Tail,List2,Merged).

%Definitions for reverseList(List, ReversedList)
reverseList([],[]).
reverseList([Head|Tail],ReversedList):-reverseList(Tail,ReversedTail),mergeLists(ReversedTail,[Head],ReversedList).

%insertElementIntoListEnd(El, List, NewList)
insertElementIntoListEnd(El,List,NewList):-mergeLists(List,[El],NewList).
