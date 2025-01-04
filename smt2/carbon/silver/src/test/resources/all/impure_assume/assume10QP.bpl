// 
// Translation of Viper program.
// 
// Date:         2025-01-04 01:05:34
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/impure_assume/assume10QP.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/impure_assume/assume10QP-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
// Dependencies:
//   Boogie , located at /home/runner/.dotnet/tools/boogie.
//   Z3 4.12.1 - 64 bit, located at /opt/hostedtoolcache/z3/4.12.1/x64/z3-4.12.1-x64-glibc-2.35/bin/z3.
// 

// ==================================================
// Preamble of State module.
// ==================================================

function  state(Heap: HeapType, Mask: MaskType): bool;
axiom state(dummyHeap, ZeroMask);

// ==================================================
// Preamble of Heap module.
// ==================================================

type Ref;
var Heap: HeapType;
const null: Ref;
type Field A B;
type NormalField;
const dummyHeap: HeapType;
type HeapType = <A, B> [Ref, Field A B]B;
const unique $allocated: Field NormalField bool;
axiom (forall o_37: Ref, f_42: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_37, f_42] }
  Heap[o_37, $allocated] ==> Heap[Heap[o_37, f_42], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_60: Ref, f_81: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_60, f_81] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_60, f_81) ==> Heap[o_60, f_81] == ExhaleHeap[o_60, f_81]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_40: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_40), ExhaleHeap[null, PredicateMaskField(pm_f_40)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_40) && IsPredicateField(pm_f_40) ==> Heap[null, PredicateMaskField(pm_f_40)] == ExhaleHeap[null, PredicateMaskField(pm_f_40)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_40: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_40) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_40) && IsPredicateField(pm_f_40) ==> (forall <A, B> o2_40: Ref, f_81: (Field A B) ::
    { ExhaleHeap[o2_40, f_81] }
    Heap[null, PredicateMaskField(pm_f_40)][o2_40, f_81] ==> Heap[o2_40, f_81] == ExhaleHeap[o2_40, f_81]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_40: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_40), ExhaleHeap[null, WandMaskField(pm_f_40)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_40) && IsWandField(pm_f_40) ==> Heap[null, WandMaskField(pm_f_40)] == ExhaleHeap[null, WandMaskField(pm_f_40)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_40: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_40) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_40) && IsWandField(pm_f_40) ==> (forall <A, B> o2_40: Ref, f_81: (Field A B) ::
    { ExhaleHeap[o2_40, f_81] }
    Heap[null, WandMaskField(pm_f_40)][o2_40, f_81] ==> Heap[o2_40, f_81] == ExhaleHeap[o2_40, f_81]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_60: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_60, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_60, $allocated] ==> ExhaleHeap[o_60, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_37: Ref, f_32: (Field A B), v: B ::
  { Heap[o_37, f_32:=v] }
  succHeap(Heap, Heap[o_37, f_32:=v])
);
// IdenticalOnKnownLocations Heaps are Successor Heaps
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> succHeap(Heap, ExhaleHeap)
);
// Successor Heaps are Transitive Successor Heaps
axiom (forall Heap0: HeapType, Heap1: HeapType ::
  { succHeap(Heap0, Heap1) }
  succHeap(Heap0, Heap1) ==> succHeapTrans(Heap0, Heap1)
);
// Transitivity of Transitive Successor Heaps
axiom (forall Heap0: HeapType, Heap1: HeapType, Heap2: HeapType ::
  { succHeapTrans(Heap0, Heap1), succHeap(Heap1, Heap2) }
  succHeapTrans(Heap0, Heap1) && succHeap(Heap1, Heap2) ==> succHeapTrans(Heap0, Heap2)
);

// ==================================================
// Preamble of Permission module.
// ==================================================

type Perm = real;
type MaskType = <A, B> [Ref, Field A B]Perm;
var Mask: MaskType;
const ZeroMask: MaskType;
axiom (forall <A, B> o_2: Ref, f_4: (Field A B) ::
  { ZeroMask[o_2, f_4] }
  ZeroMask[o_2, f_4] == NoPerm
);
type PMaskType = <A, B> [Ref, Field A B]bool;
const ZeroPMask: PMaskType;
axiom (forall <A, B> o_2: Ref, f_4: (Field A B) ::
  { ZeroPMask[o_2, f_4] }
  !ZeroPMask[o_2, f_4]
);
function  PredicateMaskField<A>(f_5: (Field A FrameType)): Field A PMaskType;
function  WandMaskField<A>(f_5: (Field A FrameType)): Field A PMaskType;
const NoPerm: Perm;
axiom NoPerm == 0.000000000;
const FullPerm: Perm;
axiom FullPerm == 1.000000000;
function  Perm(a: real, b: real): Perm;
const AssumePermUpperBound: bool;
function  GoodMask(Mask: MaskType): bool;
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask) }
  state(Heap, Mask) ==> GoodMask(Mask)
);
axiom (forall <A, B> Mask: MaskType, o_2: Ref, f_4: (Field A B) ::
  { GoodMask(Mask), Mask[o_2, f_4] }
  GoodMask(Mask) ==> Mask[o_2, f_4] >= NoPerm && (((GoodMask(Mask) && AssumePermUpperBound) && !IsPredicateField(f_4)) && !IsWandField(f_4) ==> Mask[o_2, f_4] <= FullPerm)
);
function  HasDirectPerm<A, B>(Mask: MaskType, o_2: Ref, f_4: (Field A B)): bool;
axiom (forall <A, B> Mask: MaskType, o_2: Ref, f_4: (Field A B) ::
  { HasDirectPerm(Mask, o_2, f_4) }
  HasDirectPerm(Mask, o_2, f_4) <==> Mask[o_2, f_4] > NoPerm
);
function  sumMask(ResultMask: MaskType, SummandMask1: MaskType, SummandMask2: MaskType): bool;
axiom (forall <A, B> ResultMask: MaskType, SummandMask1: MaskType, SummandMask2: MaskType, o_2: Ref, f_4: (Field A B) ::
  { sumMask(ResultMask, SummandMask1, SummandMask2), ResultMask[o_2, f_4] } { sumMask(ResultMask, SummandMask1, SummandMask2), SummandMask1[o_2, f_4] } { sumMask(ResultMask, SummandMask1, SummandMask2), SummandMask2[o_2, f_4] }
  sumMask(ResultMask, SummandMask1, SummandMask2) ==> ResultMask[o_2, f_4] == SummandMask1[o_2, f_4] + SummandMask2[o_2, f_4]
);

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Declarations for function framing
type FrameType;
const EmptyFrame: FrameType;
function  FrameFragment<T>(t: T): FrameType;
function  ConditionalFrame(p: Perm, f_6: FrameType): FrameType;
function  dummyFunction<T>(t: T): bool;
function  CombineFrames(a_1: FrameType, b_1: FrameType): FrameType;
// ==================================================
// Definition of conditional frame fragments
// ==================================================

axiom (forall p: Perm, f_6: FrameType ::
  { ConditionalFrame(p, f_6) }
  ConditionalFrame(p, f_6) == (if p > 0.000000000 then f_6 else EmptyFrame)
);
// Function for recording enclosure of one predicate instance in another
function  InsidePredicate<A, B>(p: (Field A FrameType), v_1: FrameType, q: (Field B FrameType), w: FrameType): bool;
// Transitivity of InsidePredicate
axiom (forall <A, B, C> p: (Field A FrameType), v_1: FrameType, q: (Field B FrameType), w: FrameType, r: (Field C FrameType), u: FrameType ::
  { InsidePredicate(p, v_1, q, w), InsidePredicate(q, w, r, u) }
  InsidePredicate(p, v_1, q, w) && InsidePredicate(q, w, r, u) ==> InsidePredicate(p, v_1, r, u)
);
// Knowledge that two identical instances of the same predicate cannot be inside each other
axiom (forall <A> p: (Field A FrameType), v_1: FrameType, w: FrameType ::
  { InsidePredicate(p, v_1, p, w) }
  !InsidePredicate(p, v_1, p, w)
);

// ==================================================
// Preamble of Set module.
// ==================================================


type Set T = [T]bool;

function Set#Card<T>(Set T): int;
axiom (forall<T> s: Set T :: { Set#Card(s) } 0 <= Set#Card(s));

function Set#Empty<T>(): Set T;
axiom (forall<T> o: T :: { Set#Empty()[o] } !Set#Empty()[o]);
axiom (forall<T> s: Set T :: { Set#Card(s) }
  (Set#Card(s) == 0 <==> s == Set#Empty()) &&
  (Set#Card(s) != 0 ==> (exists x: T :: s[x])));

function Set#Singleton<T>(T): Set T;
axiom (forall<T> r: T :: { Set#Singleton(r) } Set#Singleton(r)[r]);
axiom (forall<T> r: T, o: T :: { Set#Singleton(r)[o] } Set#Singleton(r)[o] <==> r == o);
axiom (forall<T> r: T :: { Set#Card(Set#Singleton(r)) } Set#Card(Set#Singleton(r)) == 1);

function Set#UnionOne<T>(Set T, T): Set T;
axiom (forall<T> a: Set T, x: T, o: T :: { Set#UnionOne(a,x)[o] }
  Set#UnionOne(a,x)[o] <==> o == x || a[o]);
axiom (forall<T> a: Set T, x: T :: { Set#UnionOne(a, x) }
  Set#UnionOne(a, x)[x]);
axiom (forall<T> a: Set T, x: T, y: T :: { Set#UnionOne(a, x), a[y] }
  a[y] ==> Set#UnionOne(a, x)[y]);
axiom (forall<T> a: Set T, x: T :: { Set#Card(Set#UnionOne(a, x)) }
  a[x] ==> Set#Card(Set#UnionOne(a, x)) == Set#Card(a));
axiom (forall<T> a: Set T, x: T :: { Set#Card(Set#UnionOne(a, x)) }
  !a[x] ==> Set#Card(Set#UnionOne(a, x)) == Set#Card(a) + 1);

function Set#Union<T>(Set T, Set T): Set T;
axiom (forall<T> a: Set T, b: Set T, o: T :: { Set#Union(a,b)[o] }
  Set#Union(a,b)[o] <==> a[o] || b[o]);
axiom (forall<T> a, b: Set T, y: T :: { Set#Union(a, b), a[y] }
  a[y] ==> Set#Union(a, b)[y]);
axiom (forall<T> a, b: Set T, y: T :: { Set#Union(a, b), b[y] }
  b[y] ==> Set#Union(a, b)[y]);
//axiom (forall<T> a, b: Set T :: { Set#Union(a, b) }
//  Set#Disjoint(a, b) ==>
//    Set#Difference(Set#Union(a, b), a) == b &&
//    Set#Difference(Set#Union(a, b), b) == a);

function Set#Intersection<T>(Set T, Set T): Set T;
axiom (forall<T> a: Set T, b: Set T, o: T :: { Set#Intersection(a,b)[o] } {Set#Intersection(a,b), a[o]} {Set#Intersection(a,b), b[o]} // AS: added alternative triggers 20/06/19
  Set#Intersection(a,b)[o] <==> a[o] && b[o]);

axiom (forall<T> a, b: Set T :: { Set#Union(Set#Union(a, b), b) }
  Set#Union(Set#Union(a, b), b) == Set#Union(a, b));
axiom (forall<T> a, b: Set T :: { Set#Union(a, Set#Union(a, b)) }
  Set#Union(a, Set#Union(a, b)) == Set#Union(a, b));
axiom (forall<T> a, b: Set T :: { Set#Intersection(Set#Intersection(a, b), b) }
  Set#Intersection(Set#Intersection(a, b), b) == Set#Intersection(a, b));
axiom (forall<T> a, b: Set T :: { Set#Intersection(a, Set#Intersection(a, b)) }
  Set#Intersection(a, Set#Intersection(a, b)) == Set#Intersection(a, b));
axiom (forall<T> a, b: Set T :: { Set#Card(Set#Union(a, b)) }{ Set#Card(Set#Intersection(a, b)) }
  Set#Card(Set#Union(a, b)) + Set#Card(Set#Intersection(a, b)) == Set#Card(a) + Set#Card(b));

function Set#Difference<T>(Set T, Set T): Set T;
axiom (forall<T> a: Set T, b: Set T, o: T :: { Set#Difference(a,b)[o] } { Set#Difference(a,b), a[o] }
  Set#Difference(a,b)[o] <==> a[o] && !b[o]);
axiom (forall<T> a, b: Set T, y: T :: { Set#Difference(a, b), b[y] }
  b[y] ==> !Set#Difference(a, b)[y] );
axiom (forall<T> a, b: Set T ::
  { Set#Card(Set#Difference(a, b)) }
  Set#Card(Set#Difference(a, b)) + Set#Card(Set#Difference(b, a))
  + Set#Card(Set#Intersection(a, b))
    == Set#Card(Set#Union(a, b)) &&
  Set#Card(Set#Difference(a, b)) == Set#Card(a) - Set#Card(Set#Intersection(a, b)));

function Set#Subset<T>(Set T, Set T): bool;
axiom(forall<T> a: Set T, b: Set T :: { Set#Subset(a,b) }
  Set#Subset(a,b) <==> (forall o: T :: {a[o]} {b[o]} a[o] ==> b[o]));
// axiom(forall<T> a: Set T, b: Set T ::
//   { Set#Subset(a,b), Set#Card(a), Set#Card(b) }  // very restrictive trigger
//   Set#Subset(a,b) ==> Set#Card(a) <= Set#Card(b));


function Set#Equal<T>(Set T, Set T): bool;
axiom(forall<T> a: Set T, b: Set T :: { Set#Equal(a,b) }
  Set#Equal(a,b) <==> (forall o: T :: {a[o]} {b[o]} a[o] <==> b[o]));
axiom(forall<T> a: Set T, b: Set T :: { Set#Equal(a,b) }  // extensionality axiom for sets
  Set#Equal(a,b) ==> a == b);

//function Set#Disjoint<T>(Set T, Set T): bool;
//axiom (forall<T> a: Set T, b: Set T :: { Set#Disjoint(a,b) }
//  Set#Disjoint(a,b) <==> (forall o: T :: {a[o]} {b[o]} !a[o] || !b[o]));

// ---------------------------------------------------------------
// -- Axiomatization of multisets --------------------------------
// ---------------------------------------------------------------

function Math#min(a: int, b: int): int;
axiom (forall a: int, b: int :: { Math#min(a, b) } a <= b <==> Math#min(a, b) == a);
axiom (forall a: int, b: int :: { Math#min(a, b) } b <= a <==> Math#min(a, b) == b);
axiom (forall a: int, b: int :: { Math#min(a, b) } Math#min(a, b) == a || Math#min(a, b) == b);

function Math#clip(a: int): int;
axiom (forall a: int :: { Math#clip(a) } 0 <= a ==> Math#clip(a) == a);
axiom (forall a: int :: { Math#clip(a) } a < 0  ==> Math#clip(a) == 0);

type MultiSet T; // = [T]int;

function MultiSet#Select<T>(ms: MultiSet T, x:T): int;

//function $IsGoodMultiSet<T>(ms: MultiSet T): bool;
// ints are non-negative, used after havocing, and for conversion from sequences to multisets.
//axiom (forall<T> ms: MultiSet T :: { $IsGoodMultiSet(ms) }
//  $IsGoodMultiSet(ms) <==>
//  (forall bx: T :: { ms[bx] } 0 <= ms[bx] && ms[bx] <= MultiSet#Card(ms)));

axiom (forall<T> ms: MultiSet T, x: T :: {MultiSet#Select(ms,x)} MultiSet#Select(ms,x) >= 0); // NEW

function MultiSet#Card<T>(MultiSet T): int;
axiom (forall<T> s: MultiSet T :: { MultiSet#Card(s) } 0 <= MultiSet#Card(s));
//axiom (forall<T> s: MultiSet T, x: T, n: int :: { MultiSet#Card(s[x := n]) }
//  0 <= n ==> MultiSet#Card(s[x := n]) == MultiSet#Card(s) - s[x] + n);
//
function MultiSet#Empty<T>(): MultiSet T;
axiom (forall<T> o: T :: { MultiSet#Select(MultiSet#Empty(),o) } MultiSet#Select(MultiSet#Empty(),o) == 0);
axiom (forall<T> s: MultiSet T :: { MultiSet#Card(s) }
  (MultiSet#Card(s) == 0 <==> s == MultiSet#Empty()) &&
  (MultiSet#Card(s) != 0 ==> (exists x: T :: 0 < MultiSet#Select(s,x))));

function MultiSet#Singleton<T>(T): MultiSet T;
axiom (forall<T> r: T, o: T :: { MultiSet#Select(MultiSet#Singleton(r),o) } (MultiSet#Select(MultiSet#Singleton(r),o) == 1 <==> r == o) &&
                                                            (MultiSet#Select(MultiSet#Singleton(r),o) == 0 <==> r != o));
axiom (forall<T> r: T :: { MultiSet#Singleton(r) } MultiSet#Card(MultiSet#Singleton(r)) == 1 && MultiSet#Select(MultiSet#Singleton(r),r) == 1); // AS: added
axiom (forall<T> r: T :: { MultiSet#Singleton(r) } MultiSet#Singleton(r) == MultiSet#UnionOne(MultiSet#Empty(), r)); // AS: remove this?

function MultiSet#UnionOne<T>(MultiSet T, T): MultiSet T;
// union-ing increases count by one for x, not for others
axiom (forall<T> a: MultiSet T, x: T, o: T :: { MultiSet#Select(MultiSet#UnionOne(a,x),o) } { MultiSet#UnionOne(a, x), MultiSet#Select(a,o) } // AS: added back this trigger (used on a similar axiom before)
  MultiSet#Select(MultiSet#UnionOne(a, x),o) == (if x==o then MultiSet#Select(a,o) + 1 else MultiSet#Select(a,o)));
// non-decreasing
axiom (forall<T> a: MultiSet T, x: T :: { MultiSet#Card(MultiSet#UnionOne(a, x)) } {MultiSet#UnionOne(a, x), MultiSet#Card(a)} // AS: added alternative trigger
  MultiSet#Card(MultiSet#UnionOne(a, x)) == MultiSet#Card(a) + 1);
// AS: added - concrete knowledge of element added
axiom (forall<T> a: MultiSet T, x: T :: { MultiSet#UnionOne(a,x)}
  MultiSet#Select(MultiSet#UnionOne(a, x),x) > 0 && MultiSet#Card(MultiSet#UnionOne(a, x)) > 0);

function MultiSet#Union<T>(MultiSet T, MultiSet T): MultiSet T;
// union-ing is the sum of the contents
axiom (forall<T> a: MultiSet T, b: MultiSet T, o: T :: { MultiSet#Select(MultiSet#Union(a,b),o) } {MultiSet#Union(a,b), MultiSet#Select(a,o), MultiSet#Select(b,o)}// AS: added triggers
  MultiSet#Select(MultiSet#Union(a,b),o) == MultiSet#Select(a,o) + MultiSet#Select(b,o));
axiom (forall<T> a: MultiSet T, b: MultiSet T :: { MultiSet#Card(MultiSet#Union(a,b)) } {MultiSet#Card(a), MultiSet#Union(a,b)} {MultiSet#Card(b), MultiSet#Union(a,b)}
  MultiSet#Card(MultiSet#Union(a,b)) == MultiSet#Card(a) + MultiSet#Card(b));

function MultiSet#Intersection<T>(MultiSet T, MultiSet T): MultiSet T;
axiom (forall<T> a: MultiSet T, b: MultiSet T, o: T :: { MultiSet#Select(MultiSet#Intersection(a,b),o) }
  MultiSet#Select(MultiSet#Intersection(a,b),o) == Math#min(MultiSet#Select(a,o),  MultiSet#Select(b,o)));

// left and right pseudo-idempotence
axiom (forall<T> a, b: MultiSet T :: { MultiSet#Intersection(MultiSet#Intersection(a, b), b) }
  MultiSet#Intersection(MultiSet#Intersection(a, b), b) == MultiSet#Intersection(a, b));
axiom (forall<T> a, b: MultiSet T :: { MultiSet#Intersection(a, MultiSet#Intersection(a, b)) }
  MultiSet#Intersection(a, MultiSet#Intersection(a, b)) == MultiSet#Intersection(a, b));

// multiset difference, a - b. clip() makes it positive.
function MultiSet#Difference<T>(MultiSet T, MultiSet T): MultiSet T;
axiom (forall<T> a: MultiSet T, b: MultiSet T, o: T :: { MultiSet#Select(MultiSet#Difference(a,b),o) }
  MultiSet#Select(MultiSet#Difference(a,b),o) == Math#clip(MultiSet#Select(a,o) - MultiSet#Select(b,o)));
axiom (forall<T> a, b: MultiSet T, y: T :: { MultiSet#Difference(a, b), MultiSet#Select(b,y), MultiSet#Select(a,y) }
  MultiSet#Select(a,y) <= MultiSet#Select(b,y) ==> MultiSet#Select(MultiSet#Difference(a, b),y) == 0 );
axiom (forall<T> a, b: MultiSet T ::
  { MultiSet#Card(MultiSet#Difference(a, b)) }
  MultiSet#Card(MultiSet#Difference(a, b)) + MultiSet#Card(MultiSet#Difference(b, a))
  + 2 * MultiSet#Card(MultiSet#Intersection(a, b))
    == MultiSet#Card(MultiSet#Union(a, b)) &&
  MultiSet#Card(MultiSet#Difference(a, b)) == MultiSet#Card(a) - MultiSet#Card(MultiSet#Intersection(a, b)));

// multiset subset means a must have at most as many of each element as b
function MultiSet#Subset<T>(MultiSet T, MultiSet T): bool;
axiom(forall<T> a: MultiSet T, b: MultiSet T :: { MultiSet#Subset(a,b) }
  MultiSet#Subset(a,b) <==> (forall o: T :: {MultiSet#Select(a,o)} {MultiSet#Select(b,o)} MultiSet#Select(a,o) <= MultiSet#Select(b,o)));

function MultiSet#Equal<T>(MultiSet T, MultiSet T): bool;
axiom(forall<T> a: MultiSet T, b: MultiSet T :: { MultiSet#Equal(a,b) }
  MultiSet#Equal(a,b) <==> (forall o: T :: {MultiSet#Select(a,o)} {MultiSet#Select(b,o)} MultiSet#Select(a,o) == MultiSet#Select(b,o)));
// extensionality axiom for multisets
axiom(forall<T> a: MultiSet T, b: MultiSet T :: { MultiSet#Equal(a,b) }
  MultiSet#Equal(a,b) ==> a == b);

function MultiSet#Disjoint<T>(MultiSet T, MultiSet T): bool;
axiom (forall<T> a: MultiSet T, b: MultiSet T :: { MultiSet#Disjoint(a,b) }
  MultiSet#Disjoint(a,b) <==> (forall o: T :: {MultiSet#Select(a,o)} {MultiSet#Select(b,o)} MultiSet#Select(a,o) == 0 || MultiSet#Select(b,o) == 0));

    

// ==================================================
// Translation of domain Inverse_56
// ==================================================

// The type for domain Inverse_56
type Inverse_56DomainType;

// Translation of domain function inv_56
function  inv_56(r_3: Ref): Ref;

// ==================================================
// Translation of domain Inverse_57
// ==================================================

// The type for domain Inverse_57
type Inverse_57DomainType;

// Translation of domain function inv_57
function  inv_57(r_3: Ref): Ref;

// ==================================================
// Translation of domain Inverse_58
// ==================================================

// The type for domain Inverse_58
type Inverse_58DomainType;

// Translation of domain function inv_58
function  inv_58(r_3: Ref): Ref;

// ==================================================
// Translation of domain Inverse_59
// ==================================================

// The type for domain Inverse_59
type Inverse_59DomainType;

// Translation of domain function inv_59
function  inv_59(r_3: Ref): Ref;

// ==================================================
// Translation of domain Inverse_60
// ==================================================

// The type for domain Inverse_60
type Inverse_60DomainType;

// Translation of domain function inv_60
function  inv_60(r_3: Ref): Ref;

// ==================================================
// Translation of domain Inverse_61
// ==================================================

// The type for domain Inverse_61
type Inverse_61DomainType;

// Translation of domain function inv_61
function  inv_61(r_3: Ref): Ref;

// ==================================================
// Translation of domain Inverse_62
// ==================================================

// The type for domain Inverse_62
type Inverse_62DomainType;

// Translation of domain function inv_62
function  inv_62(r_3: Ref): Ref;

// ==================================================
// Translation of domain Inverse_63
// ==================================================

// The type for domain Inverse_63
type Inverse_63DomainType;

// Translation of domain function inv_63
function  inv_63(r_3: Ref): Ref;

// ==================================================
// Translation of domain Inverse_64
// ==================================================

// The type for domain Inverse_64
type Inverse_64DomainType;

// Translation of domain function inv_64
function  inv_64(r_3: Ref): Ref;

// ==================================================
// Translation of domain Inverse_65
// ==================================================

// The type for domain Inverse_65
type Inverse_65DomainType;

// Translation of domain function inv_65
function  inv_65(r_3: Ref): Ref;

// ==================================================
// Translation of domain Inverse_66
// ==================================================

// The type for domain Inverse_66
type Inverse_66DomainType;

// Translation of domain function inv_66
function  inv_66(r_3: Ref): Ref;

// ==================================================
// Translation of domain __ns__impure_assume_rewriter
// ==================================================

// The type for domain __ns__impure_assume_rewriter
type __ns__impure_assume_rewriterDomainType;

// Translation of domain function __iar__assume_helper_1
function  __iar__assume_helper_1(c_1_2: bool, p_1_3: Perm, p_0: Perm): Perm;

// Translation of domain function __iar__assume_helper_2
function  __iar__assume_helper_2(c_2_2: bool, c_1_2: bool, p_2_2: Perm, p_1_3: Perm, p_0: Perm): Perm;

// Translation of domain function __iar__assume_helper_3
function  __iar__assume_helper_3(c_3_2: bool, c_2_2: bool, c_1_2: bool, p_3_2: Perm, p_2_2: Perm, p_1_3: Perm, p_0: Perm): Perm;

// Translation of domain function __iar__assume_helper_4
function  __iar__assume_helper_4(c_4_1: bool, c_3_2: bool, c_2_2: bool, c_1_2: bool, p_4_2: Perm, p_3_2: Perm, p_2_2: Perm, p_1_3: Perm, p_0: Perm): Perm;

// Translation of domain function __iar__assume_helper_5
function  __iar__assume_helper_5(c_5_2: bool, c_4_1: bool, c_3_2: bool, c_2_2: bool, c_1_2: bool, p_5_1: Perm, p_4_2: Perm, p_3_2: Perm, p_2_2: Perm, p_1_3: Perm, p_0: Perm): Perm;

// Translation of domain function __iar__assume_helper_6
function  __iar__assume_helper_6(c_6_2: bool, c_5_2: bool, c_4_1: bool, c_3_2: bool, c_2_2: bool, c_1_2: bool, p_6_2: Perm, p_5_1: Perm, p_4_2: Perm, p_3_2: Perm, p_2_2: Perm, p_1_3: Perm, p_0: Perm): Perm;

// Translation of domain function __iar__assume_helper_7
function  __iar__assume_helper_7(c_7_2: bool, c_6_2: bool, c_5_2: bool, c_4_1: bool, c_3_2: bool, c_2_2: bool, c_1_2: bool, p_7_2: Perm, p_6_2: Perm, p_5_1: Perm, p_4_2: Perm, p_3_2: Perm, p_2_2: Perm, p_1_3: Perm, p_0: Perm): Perm;

// Translation of domain function __iar__assume_helper_8
function  __iar__assume_helper_8(c_8_2: bool, c_7_2: bool, c_6_2: bool, c_5_2: bool, c_4_1: bool, c_3_2: bool, c_2_2: bool, c_1_2: bool, p_8_1: Perm, p_7_2: Perm, p_6_2: Perm, p_5_1: Perm, p_4_2: Perm, p_3_2: Perm, p_2_2: Perm, p_1_3: Perm, p_0: Perm): Perm;

// Translation of domain function __iar__assume_helper_9
function  __iar__assume_helper_9(c_9_2: bool, c_8_2: bool, c_7_2: bool, c_6_2: bool, c_5_2: bool, c_4_1: bool, c_3_2: bool, c_2_2: bool, c_1_2: bool, p_9_2: Perm, p_8_1: Perm, p_7_2: Perm, p_6_2: Perm, p_5_1: Perm, p_4_2: Perm, p_3_2: Perm, p_2_2: Perm, p_1_3: Perm, p_0: Perm): Perm;

// Translation of domain function __iar__assume_helper_10
function  __iar__assume_helper_10(c_10_1: bool, c_9_2: bool, c_8_2: bool, c_7_2: bool, c_6_2: bool, c_5_2: bool, c_4_1: bool, c_3_2: bool, c_2_2: bool, c_1_2: bool, p_10_1: Perm, p_9_2: Perm, p_8_1: Perm, p_7_2: Perm, p_6_2: Perm, p_5_1: Perm, p_4_2: Perm, p_3_2: Perm, p_2_2: Perm, p_1_3: Perm, p_0: Perm): Perm;

// Translation of domain axiom __iar__assume_helper_1_axiom
axiom (forall c_1: bool, p_1_1: Perm, p_0_1: Perm ::
  { (__iar__assume_helper_1(c_1, p_1_1, p_0_1): Perm) }
  (__iar__assume_helper_1(c_1, p_1_1, p_0_1): Perm) == p_0_1 + (if c_1 then p_1_1 else NoPerm)
);

// Translation of domain axiom __iar__assume_helper_2_axiom
axiom (forall c_2: bool, c_1: bool, p_2_1: Perm, p_1_1: Perm, p_0_1: Perm ::
  { (__iar__assume_helper_2(c_2, c_1, p_2_1, p_1_1, p_0_1): Perm) }
  (__iar__assume_helper_2(c_2, c_1, p_2_1, p_1_1, p_0_1): Perm) == p_0_1 + (if c_1 then p_1_1 else NoPerm) + (if c_2 then p_2_1 else NoPerm)
);

// Translation of domain axiom __iar__assume_helper_3_axiom
axiom (forall c_3: bool, c_2: bool, c_1: bool, p_3_1: Perm, p_2_1: Perm, p_1_1: Perm, p_0_1: Perm ::
  { (__iar__assume_helper_3(c_3, c_2, c_1, p_3_1, p_2_1, p_1_1, p_0_1): Perm) }
  (__iar__assume_helper_3(c_3, c_2, c_1, p_3_1, p_2_1, p_1_1, p_0_1): Perm) == p_0_1 + (if c_1 then p_1_1 else NoPerm) + (if c_2 then p_2_1 else NoPerm) + (if c_3 then p_3_1 else NoPerm)
);

// Translation of domain axiom __iar__assume_helper_4_axiom
axiom (forall c_4_2: bool, c_3: bool, c_2: bool, c_1: bool, p_4_1: Perm, p_3_1: Perm, p_2_1: Perm, p_1_1: Perm, p_0_1: Perm ::
  { (__iar__assume_helper_4(c_4_2, c_3, c_2, c_1, p_4_1, p_3_1, p_2_1, p_1_1, p_0_1): Perm) }
  (__iar__assume_helper_4(c_4_2, c_3, c_2, c_1, p_4_1, p_3_1, p_2_1, p_1_1, p_0_1): Perm) == p_0_1 + (if c_1 then p_1_1 else NoPerm) + (if c_2 then p_2_1 else NoPerm) + (if c_3 then p_3_1 else NoPerm) + (if c_4_2 then p_4_1 else NoPerm)
);

// Translation of domain axiom __iar__assume_helper_5_axiom
axiom (forall c_5_1: bool, c_4_2: bool, c_3: bool, c_2: bool, c_1: bool, p_5: Perm, p_4_1: Perm, p_3_1: Perm, p_2_1: Perm, p_1_1: Perm, p_0_1: Perm ::
  { (__iar__assume_helper_5(c_5_1, c_4_2, c_3, c_2, c_1, p_5, p_4_1, p_3_1, p_2_1, p_1_1, p_0_1): Perm) }
  (__iar__assume_helper_5(c_5_1, c_4_2, c_3, c_2, c_1, p_5, p_4_1, p_3_1, p_2_1, p_1_1, p_0_1): Perm) == p_0_1 + (if c_1 then p_1_1 else NoPerm) + (if c_2 then p_2_1 else NoPerm) + (if c_3 then p_3_1 else NoPerm) + (if c_4_2 then p_4_1 else NoPerm) + (if c_5_1 then p_5 else NoPerm)
);

// Translation of domain axiom __iar__assume_helper_6_axiom
axiom (forall c_6: bool, c_5_1: bool, c_4_2: bool, c_3: bool, c_2: bool, c_1: bool, p_6_1: Perm, p_5: Perm, p_4_1: Perm, p_3_1: Perm, p_2_1: Perm, p_1_1: Perm, p_0_1: Perm ::
  { (__iar__assume_helper_6(c_6, c_5_1, c_4_2, c_3, c_2, c_1, p_6_1, p_5, p_4_1, p_3_1, p_2_1, p_1_1, p_0_1): Perm) }
  (__iar__assume_helper_6(c_6, c_5_1, c_4_2, c_3, c_2, c_1, p_6_1, p_5, p_4_1, p_3_1, p_2_1, p_1_1, p_0_1): Perm) == p_0_1 + (if c_1 then p_1_1 else NoPerm) + (if c_2 then p_2_1 else NoPerm) + (if c_3 then p_3_1 else NoPerm) + (if c_4_2 then p_4_1 else NoPerm) + (if c_5_1 then p_5 else NoPerm) + (if c_6 then p_6_1 else NoPerm)
);

// Translation of domain axiom __iar__assume_helper_7_axiom
axiom (forall c_7: bool, c_6: bool, c_5_1: bool, c_4_2: bool, c_3: bool, c_2: bool, c_1: bool, p_7_3: Perm, p_6_1: Perm, p_5: Perm, p_4_1: Perm, p_3_1: Perm, p_2_1: Perm, p_1_1: Perm, p_0_1: Perm ::
  { (__iar__assume_helper_7(c_7, c_6, c_5_1, c_4_2, c_3, c_2, c_1, p_7_3, p_6_1, p_5, p_4_1, p_3_1, p_2_1, p_1_1, p_0_1): Perm) }
  (__iar__assume_helper_7(c_7, c_6, c_5_1, c_4_2, c_3, c_2, c_1, p_7_3, p_6_1, p_5, p_4_1, p_3_1, p_2_1, p_1_1, p_0_1): Perm) == p_0_1 + (if c_1 then p_1_1 else NoPerm) + (if c_2 then p_2_1 else NoPerm) + (if c_3 then p_3_1 else NoPerm) + (if c_4_2 then p_4_1 else NoPerm) + (if c_5_1 then p_5 else NoPerm) + (if c_6 then p_6_1 else NoPerm) + (if c_7 then p_7_3 else NoPerm)
);

// Translation of domain axiom __iar__assume_helper_8_axiom
axiom (forall c_8: bool, c_7: bool, c_6: bool, c_5_1: bool, c_4_2: bool, c_3: bool, c_2: bool, c_1: bool, p_8: Perm, p_7_3: Perm, p_6_1: Perm, p_5: Perm, p_4_1: Perm, p_3_1: Perm, p_2_1: Perm, p_1_1: Perm, p_0_1: Perm ::
  { (__iar__assume_helper_8(c_8, c_7, c_6, c_5_1, c_4_2, c_3, c_2, c_1, p_8, p_7_3, p_6_1, p_5, p_4_1, p_3_1, p_2_1, p_1_1, p_0_1): Perm) }
  (__iar__assume_helper_8(c_8, c_7, c_6, c_5_1, c_4_2, c_3, c_2, c_1, p_8, p_7_3, p_6_1, p_5, p_4_1, p_3_1, p_2_1, p_1_1, p_0_1): Perm) == p_0_1 + (if c_1 then p_1_1 else NoPerm) + (if c_2 then p_2_1 else NoPerm) + (if c_3 then p_3_1 else NoPerm) + (if c_4_2 then p_4_1 else NoPerm) + (if c_5_1 then p_5 else NoPerm) + (if c_6 then p_6_1 else NoPerm) + (if c_7 then p_7_3 else NoPerm) + (if c_8 then p_8 else NoPerm)
);

// Translation of domain axiom __iar__assume_helper_9_axiom
axiom (forall c_9: bool, c_8: bool, c_7: bool, c_6: bool, c_5_1: bool, c_4_2: bool, c_3: bool, c_2: bool, c_1: bool, p_9_3: Perm, p_8: Perm, p_7_3: Perm, p_6_1: Perm, p_5: Perm, p_4_1: Perm, p_3_1: Perm, p_2_1: Perm, p_1_1: Perm, p_0_1: Perm ::
  { (__iar__assume_helper_9(c_9, c_8, c_7, c_6, c_5_1, c_4_2, c_3, c_2, c_1, p_9_3, p_8, p_7_3, p_6_1, p_5, p_4_1, p_3_1, p_2_1, p_1_1, p_0_1): Perm) }
  (__iar__assume_helper_9(c_9, c_8, c_7, c_6, c_5_1, c_4_2, c_3, c_2, c_1, p_9_3, p_8, p_7_3, p_6_1, p_5, p_4_1, p_3_1, p_2_1, p_1_1, p_0_1): Perm) == p_0_1 + (if c_1 then p_1_1 else NoPerm) + (if c_2 then p_2_1 else NoPerm) + (if c_3 then p_3_1 else NoPerm) + (if c_4_2 then p_4_1 else NoPerm) + (if c_5_1 then p_5 else NoPerm) + (if c_6 then p_6_1 else NoPerm) + (if c_7 then p_7_3 else NoPerm) + (if c_8 then p_8 else NoPerm) + (if c_9 then p_9_3 else NoPerm)
);

// Translation of domain axiom __iar__assume_helper_10_axiom
axiom (forall c_10_2: bool, c_9: bool, c_8: bool, c_7: bool, c_6: bool, c_5_1: bool, c_4_2: bool, c_3: bool, c_2: bool, c_1: bool, p_10: Perm, p_9_3: Perm, p_8: Perm, p_7_3: Perm, p_6_1: Perm, p_5: Perm, p_4_1: Perm, p_3_1: Perm, p_2_1: Perm, p_1_1: Perm, p_0_1: Perm ::
  { (__iar__assume_helper_10(c_10_2, c_9, c_8, c_7, c_6, c_5_1, c_4_2, c_3, c_2, c_1, p_10, p_9_3, p_8, p_7_3, p_6_1, p_5, p_4_1, p_3_1, p_2_1, p_1_1, p_0_1): Perm) }
  (__iar__assume_helper_10(c_10_2, c_9, c_8, c_7, c_6, c_5_1, c_4_2, c_3, c_2, c_1, p_10, p_9_3, p_8, p_7_3, p_6_1, p_5, p_4_1, p_3_1, p_2_1, p_1_1, p_0_1): Perm) == p_0_1 + (if c_1 then p_1_1 else NoPerm) + (if c_2 then p_2_1 else NoPerm) + (if c_3 then p_3_1 else NoPerm) + (if c_4_2 then p_4_1 else NoPerm) + (if c_5_1 then p_5 else NoPerm) + (if c_6 then p_6_1 else NoPerm) + (if c_7 then p_7_3 else NoPerm) + (if c_8 then p_8 else NoPerm) + (if c_9 then p_9_3 else NoPerm) + (if c_10_2 then p_10 else NoPerm)
);

// ==================================================
// Translation of all fields
// ==================================================

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);

// ==================================================
// Translation of method m
// ==================================================

procedure m(xs1: (Set Ref), xs2: (Set Ref), xs3: (Set Ref), xs4: (Set Ref), xs5: (Set Ref), xs6: (Set Ref), xs7: (Set Ref), xs8: (Set Ref), xs9: (Set Ref), xs10: (Set Ref), xs11: (Set Ref), x: Ref, p_1: Perm) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var perm: Perm;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    assume NoPerm <= p_1;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale acc(x.f, p) -- assume10QP.vpr@12.3--12.21
    perm := p_1;
    assert {:msg "  Inhale might fail. Fraction p might be negative. (assume10QP.vpr@12.10--12.21) [149924]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x1: Ref ::
  //     { x1.f }
  //     (x1 in xs1) ==> true && inv_56(x1) == x1) -- assume10QP.vpr@14.11--14.62
    
    // -- Check definedness of (forall x1: Ref :: { x1.f } (x1 in xs1) ==> true && inv_56(x1) == x1)
      if (*) {
        assume false;
      }
    assume (forall x1_1: Ref ::
      { Heap[x1_1, f_7] }
      xs1[x1_1] ==> (inv_56(x1_1): Ref) == x1_1
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall r: Ref ::
  //     { inv_56(r) }
  //     (inv_56(r) in xs1) ==> inv_56(r) == r) -- assume10QP.vpr@14.11--14.62
    
    // -- Check definedness of (forall r: Ref :: { inv_56(r) } (inv_56(r) in xs1) ==> inv_56(r) == r)
      if (*) {
        assume false;
      }
    assume (forall r_1_1: Ref ::
      { (inv_56(r_1_1): Ref) }
      xs1[(inv_56(r_1_1): Ref)] ==> (inv_56(r_1_1): Ref) == r_1_1
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall r: Ref ::
  //     { inv_56(r) }
  //     (inv_56(r) in xs1) ==> perm(r.f) >= p) -- assume10QP.vpr@14.11--14.62
    
    // -- Check definedness of (forall r: Ref :: { inv_56(r) } (inv_56(r) in xs1) ==> perm(r.f) >= p)
      if (*) {
        assume false;
      }
    assume (forall r_3_2: Ref ::
      { (inv_56(r_3_2): Ref) }
      xs1[(inv_56(r_3_2): Ref)] ==> p_1 <= Mask[r_3_2, f_7]
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x2: Ref ::
  //     { x2.f }
  //     (x2 in xs2) ==> true && inv_57(x2) == x2) -- assume10QP.vpr@15.11--15.62
    
    // -- Check definedness of (forall x2: Ref :: { x2.f } (x2 in xs2) ==> true && inv_57(x2) == x2)
      if (*) {
        assume false;
      }
    assume (forall x2_1_1: Ref ::
      { Heap[x2_1_1, f_7] }
      xs2[x2_1_1] ==> (inv_57(x2_1_1): Ref) == x2_1_1
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall r: Ref ::
  //     { inv_57(r) }
  //     (inv_57(r) in xs2) ==> inv_57(r) == r) -- assume10QP.vpr@15.11--15.62
    
    // -- Check definedness of (forall r: Ref :: { inv_57(r) } (inv_57(r) in xs2) ==> inv_57(r) == r)
      if (*) {
        assume false;
      }
    assume (forall r_5: Ref ::
      { (inv_57(r_5): Ref) }
      xs2[(inv_57(r_5): Ref)] ==> (inv_57(r_5): Ref) == r_5
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall r: Ref ::
  //     { inv_57(r) }
  //     (inv_57(r) in xs2) ==>
  //     perm(r.f) >= __iar__assume_helper_1((inv_56(r) in xs1) && r == r, p, p)) -- assume10QP.vpr@15.11--15.62
    
    // -- Check definedness of (forall r: Ref :: { inv_57(r) } (inv_57(r) in xs2) ==> perm(r.f) >= __iar__assume_helper_1((inv_56(r) in xs1) && r == r, p, p))
      if (*) {
        assume false;
      }
    assume (forall r_7: Ref ::
      { (inv_57(r_7): Ref) }
      xs2[(inv_57(r_7): Ref)] ==> (__iar__assume_helper_1(xs1[(inv_56(r_7): Ref)] && r_7 == r_7, p_1, p_1): Perm) <= Mask[r_7, f_7]
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x3: Ref ::
  //     { x3.f }
  //     (x3 in xs3) ==> true && inv_58(x3) == x3) -- assume10QP.vpr@16.11--16.62
    
    // -- Check definedness of (forall x3: Ref :: { x3.f } (x3 in xs3) ==> true && inv_58(x3) == x3)
      if (*) {
        assume false;
      }
    assume (forall x3_1_1: Ref ::
      { Heap[x3_1_1, f_7] }
      xs3[x3_1_1] ==> (inv_58(x3_1_1): Ref) == x3_1_1
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall r: Ref ::
  //     { inv_58(r) }
  //     (inv_58(r) in xs3) ==> inv_58(r) == r) -- assume10QP.vpr@16.11--16.62
    
    // -- Check definedness of (forall r: Ref :: { inv_58(r) } (inv_58(r) in xs3) ==> inv_58(r) == r)
      if (*) {
        assume false;
      }
    assume (forall r_9: Ref ::
      { (inv_58(r_9): Ref) }
      xs3[(inv_58(r_9): Ref)] ==> (inv_58(r_9): Ref) == r_9
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall r: Ref ::
  //     { inv_58(r) }
  //     (inv_58(r) in xs3) ==>
  //     perm(r.f) >=
  //     __iar__assume_helper_2((inv_56(r) in xs1) && r == r, (inv_57(r) in xs2) &&
  //     r == r, p, p, p)) -- assume10QP.vpr@16.11--16.62
    
    // -- Check definedness of (forall r: Ref :: { inv_58(r) } (inv_58(r) in xs3) ==> perm(r.f) >= __iar__assume_helper_2((inv_56(r) in xs1) && r == r, (inv_57(r) in xs2) && r == r, p, p, p))
      if (*) {
        assume false;
      }
    assume (forall r_11_2: Ref ::
      { (inv_58(r_11_2): Ref) }
      xs3[(inv_58(r_11_2): Ref)] ==> (__iar__assume_helper_2(xs1[(inv_56(r_11_2): Ref)] && r_11_2 == r_11_2, xs2[(inv_57(r_11_2): Ref)] && r_11_2 == r_11_2, p_1, p_1, p_1): Perm) <= Mask[r_11_2, f_7]
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x4: Ref ::
  //     { x4.f }
  //     (x4 in xs4) ==> true && inv_59(x4) == x4) -- assume10QP.vpr@17.11--17.62
    
    // -- Check definedness of (forall x4: Ref :: { x4.f } (x4 in xs4) ==> true && inv_59(x4) == x4)
      if (*) {
        assume false;
      }
    assume (forall x4_1_1: Ref ::
      { Heap[x4_1_1, f_7] }
      xs4[x4_1_1] ==> (inv_59(x4_1_1): Ref) == x4_1_1
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall r: Ref ::
  //     { inv_59(r) }
  //     (inv_59(r) in xs4) ==> inv_59(r) == r) -- assume10QP.vpr@17.11--17.62
    
    // -- Check definedness of (forall r: Ref :: { inv_59(r) } (inv_59(r) in xs4) ==> inv_59(r) == r)
      if (*) {
        assume false;
      }
    assume (forall r_13_2: Ref ::
      { (inv_59(r_13_2): Ref) }
      xs4[(inv_59(r_13_2): Ref)] ==> (inv_59(r_13_2): Ref) == r_13_2
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall r: Ref ::
  //     { inv_59(r) }
  //     (inv_59(r) in xs4) ==>
  //     perm(r.f) >=
  //     __iar__assume_helper_3((inv_56(r) in xs1) && r == r, (inv_57(r) in xs2) &&
  //     r == r, (inv_58(r) in xs3) && r == r, p, p, p, p)) -- assume10QP.vpr@17.11--17.62
    
    // -- Check definedness of (forall r: Ref :: { inv_59(r) } (inv_59(r) in xs4) ==> perm(r.f) >= __iar__assume_helper_3((inv_56(r) in xs1) && r == r, (inv_57(r) in xs2) && r == r, (inv_58(r) in xs3) && r == r, p, p, p, p))
      if (*) {
        assume false;
      }
    assume (forall r_15_2: Ref ::
      { (inv_59(r_15_2): Ref) }
      xs4[(inv_59(r_15_2): Ref)] ==> (__iar__assume_helper_3(xs1[(inv_56(r_15_2): Ref)] && r_15_2 == r_15_2, xs2[(inv_57(r_15_2): Ref)] && r_15_2 == r_15_2, xs3[(inv_58(r_15_2): Ref)] && r_15_2 == r_15_2, p_1, p_1, p_1, p_1): Perm) <= Mask[r_15_2, f_7]
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x5: Ref ::
  //     { x5.f }
  //     (x5 in xs5) ==> true && inv_60(x5) == x5) -- assume10QP.vpr@18.11--18.62
    
    // -- Check definedness of (forall x5: Ref :: { x5.f } (x5 in xs5) ==> true && inv_60(x5) == x5)
      if (*) {
        assume false;
      }
    assume (forall x5_1_1: Ref ::
      { Heap[x5_1_1, f_7] }
      xs5[x5_1_1] ==> (inv_60(x5_1_1): Ref) == x5_1_1
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall r: Ref ::
  //     { inv_60(r) }
  //     (inv_60(r) in xs5) ==> inv_60(r) == r) -- assume10QP.vpr@18.11--18.62
    
    // -- Check definedness of (forall r: Ref :: { inv_60(r) } (inv_60(r) in xs5) ==> inv_60(r) == r)
      if (*) {
        assume false;
      }
    assume (forall r_17: Ref ::
      { (inv_60(r_17): Ref) }
      xs5[(inv_60(r_17): Ref)] ==> (inv_60(r_17): Ref) == r_17
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall r: Ref ::
  //     { inv_60(r) }
  //     (inv_60(r) in xs5) ==>
  //     perm(r.f) >=
  //     __iar__assume_helper_4((inv_56(r) in xs1) && r == r, (inv_57(r) in xs2) &&
  //     r == r, (inv_58(r) in xs3) && r == r, (inv_59(r) in xs4) && r == r, p, p,
  //     p, p, p)) -- assume10QP.vpr@18.11--18.62
    
    // -- Check definedness of (forall r: Ref :: { inv_60(r) } (inv_60(r) in xs5) ==> perm(r.f) >= __iar__assume_helper_4((inv_56(r) in xs1) && r == r, (inv_57(r) in xs2) && r == r, (inv_58(r) in xs3) && r == r, (inv_59(r) in xs4) && r == r, p, p, p, p, p))
      if (*) {
        assume false;
      }
    assume (forall r_19: Ref ::
      { (inv_60(r_19): Ref) }
      xs5[(inv_60(r_19): Ref)] ==> (__iar__assume_helper_4(xs1[(inv_56(r_19): Ref)] && r_19 == r_19, xs2[(inv_57(r_19): Ref)] && r_19 == r_19, xs3[(inv_58(r_19): Ref)] && r_19 == r_19, xs4[(inv_59(r_19): Ref)] && r_19 == r_19, p_1, p_1, p_1, p_1, p_1): Perm) <= Mask[r_19, f_7]
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x6: Ref ::
  //     { x6.f }
  //     (x6 in xs6) ==> true && inv_61(x6) == x6) -- assume10QP.vpr@19.11--19.62
    
    // -- Check definedness of (forall x6: Ref :: { x6.f } (x6 in xs6) ==> true && inv_61(x6) == x6)
      if (*) {
        assume false;
      }
    assume (forall x6_1_1: Ref ::
      { Heap[x6_1_1, f_7] }
      xs6[x6_1_1] ==> (inv_61(x6_1_1): Ref) == x6_1_1
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall r: Ref ::
  //     { inv_61(r) }
  //     (inv_61(r) in xs6) ==> inv_61(r) == r) -- assume10QP.vpr@19.11--19.62
    
    // -- Check definedness of (forall r: Ref :: { inv_61(r) } (inv_61(r) in xs6) ==> inv_61(r) == r)
      if (*) {
        assume false;
      }
    assume (forall r_21_2: Ref ::
      { (inv_61(r_21_2): Ref) }
      xs6[(inv_61(r_21_2): Ref)] ==> (inv_61(r_21_2): Ref) == r_21_2
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall r: Ref ::
  //     { inv_61(r) }
  //     (inv_61(r) in xs6) ==>
  //     perm(r.f) >=
  //     __iar__assume_helper_5((inv_56(r) in xs1) && r == r, (inv_57(r) in xs2) &&
  //     r == r, (inv_58(r) in xs3) && r == r, (inv_59(r) in xs4) && r == r, (inv_60(r) in
  //     xs5) &&
  //     r == r, p, p, p, p, p, p)) -- assume10QP.vpr@19.11--19.62
    
    // -- Check definedness of (forall r: Ref :: { inv_61(r) } (inv_61(r) in xs6) ==> perm(r.f) >= __iar__assume_helper_5((inv_56(r) in xs1) && r == r, (inv_57(r) in xs2) && r == r, (inv_58(r) in xs3) && r == r, (inv_59(r) in xs4) && r == r, (inv_60(r) in xs5) && r == r, p, p, p, p, p, p))
      if (*) {
        assume false;
      }
    assume (forall r_23_2: Ref ::
      { (inv_61(r_23_2): Ref) }
      xs6[(inv_61(r_23_2): Ref)] ==> (__iar__assume_helper_5(xs1[(inv_56(r_23_2): Ref)] && r_23_2 == r_23_2, xs2[(inv_57(r_23_2): Ref)] && r_23_2 == r_23_2, xs3[(inv_58(r_23_2): Ref)] && r_23_2 == r_23_2, xs4[(inv_59(r_23_2): Ref)] && r_23_2 == r_23_2, xs5[(inv_60(r_23_2): Ref)] && r_23_2 == r_23_2, p_1, p_1, p_1, p_1, p_1, p_1): Perm) <= Mask[r_23_2, f_7]
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x7: Ref ::
  //     { x7.f }
  //     (x7 in xs7) ==> true && inv_62(x7) == x7) -- assume10QP.vpr@20.11--20.62
    
    // -- Check definedness of (forall x7: Ref :: { x7.f } (x7 in xs7) ==> true && inv_62(x7) == x7)
      if (*) {
        assume false;
      }
    assume (forall x7_1: Ref ::
      { Heap[x7_1, f_7] }
      xs7[x7_1] ==> (inv_62(x7_1): Ref) == x7_1
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall r: Ref ::
  //     { inv_62(r) }
  //     (inv_62(r) in xs7) ==> inv_62(r) == r) -- assume10QP.vpr@20.11--20.62
    
    // -- Check definedness of (forall r: Ref :: { inv_62(r) } (inv_62(r) in xs7) ==> inv_62(r) == r)
      if (*) {
        assume false;
      }
    assume (forall r_25: Ref ::
      { (inv_62(r_25): Ref) }
      xs7[(inv_62(r_25): Ref)] ==> (inv_62(r_25): Ref) == r_25
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall r: Ref ::
  //     { inv_62(r) }
  //     (inv_62(r) in xs7) ==>
  //     perm(r.f) >=
  //     __iar__assume_helper_6((inv_56(r) in xs1) && r == r, (inv_57(r) in xs2) &&
  //     r == r, (inv_58(r) in xs3) && r == r, (inv_59(r) in xs4) && r == r, (inv_60(r) in
  //     xs5) &&
  //     r == r, (inv_61(r) in xs6) && r == r, p, p, p, p, p, p, p)) -- assume10QP.vpr@20.11--20.62
    
    // -- Check definedness of (forall r: Ref :: { inv_62(r) } (inv_62(r) in xs7) ==> perm(r.f) >= __iar__assume_helper_6((inv_56(r) in xs1) && r == r, (inv_57(r) in xs2) && r == r, (inv_58(r) in xs3) && r == r, (inv_59(r) in xs4) && r == r, (inv_60(r) in xs5) && r == r, (inv_61(r) in xs6) && r == r, p, p, p, p, p, p, p))
      if (*) {
        assume false;
      }
    assume (forall r_27_1: Ref ::
      { (inv_62(r_27_1): Ref) }
      xs7[(inv_62(r_27_1): Ref)] ==> (__iar__assume_helper_6(xs1[(inv_56(r_27_1): Ref)] && r_27_1 == r_27_1, xs2[(inv_57(r_27_1): Ref)] && r_27_1 == r_27_1, xs3[(inv_58(r_27_1): Ref)] && r_27_1 == r_27_1, xs4[(inv_59(r_27_1): Ref)] && r_27_1 == r_27_1, xs5[(inv_60(r_27_1): Ref)] && r_27_1 == r_27_1, xs6[(inv_61(r_27_1): Ref)] && r_27_1 == r_27_1, p_1, p_1, p_1, p_1, p_1, p_1, p_1): Perm) <= Mask[r_27_1, f_7]
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x8: Ref ::
  //     { x8.f }
  //     (x8 in xs8) ==> true && inv_63(x8) == x8) -- assume10QP.vpr@21.11--21.62
    
    // -- Check definedness of (forall x8: Ref :: { x8.f } (x8 in xs8) ==> true && inv_63(x8) == x8)
      if (*) {
        assume false;
      }
    assume (forall x8_1: Ref ::
      { Heap[x8_1, f_7] }
      xs8[x8_1] ==> (inv_63(x8_1): Ref) == x8_1
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall r: Ref ::
  //     { inv_63(r) }
  //     (inv_63(r) in xs8) ==> inv_63(r) == r) -- assume10QP.vpr@21.11--21.62
    
    // -- Check definedness of (forall r: Ref :: { inv_63(r) } (inv_63(r) in xs8) ==> inv_63(r) == r)
      if (*) {
        assume false;
      }
    assume (forall r_29: Ref ::
      { (inv_63(r_29): Ref) }
      xs8[(inv_63(r_29): Ref)] ==> (inv_63(r_29): Ref) == r_29
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall r: Ref ::
  //     { inv_63(r) }
  //     (inv_63(r) in xs8) ==>
  //     perm(r.f) >=
  //     __iar__assume_helper_7((inv_56(r) in xs1) && r == r, (inv_57(r) in xs2) &&
  //     r == r, (inv_58(r) in xs3) && r == r, (inv_59(r) in xs4) && r == r, (inv_60(r) in
  //     xs5) &&
  //     r == r, (inv_61(r) in xs6) && r == r, (inv_62(r) in xs7) && r == r, p, p,
  //     p, p, p, p, p, p)) -- assume10QP.vpr@21.11--21.62
    
    // -- Check definedness of (forall r: Ref :: { inv_63(r) } (inv_63(r) in xs8) ==> perm(r.f) >= __iar__assume_helper_7((inv_56(r) in xs1) && r == r, (inv_57(r) in xs2) && r == r, (inv_58(r) in xs3) && r == r, (inv_59(r) in xs4) && r == r, (inv_60(r) in xs5) && r == r, (inv_61(r) in xs6) && r == r, (inv_62(r) in xs7) && r == r, p, p, p, p, p, p, p, p))
      if (*) {
        assume false;
      }
    assume (forall r_31: Ref ::
      { (inv_63(r_31): Ref) }
      xs8[(inv_63(r_31): Ref)] ==> (__iar__assume_helper_7(xs1[(inv_56(r_31): Ref)] && r_31 == r_31, xs2[(inv_57(r_31): Ref)] && r_31 == r_31, xs3[(inv_58(r_31): Ref)] && r_31 == r_31, xs4[(inv_59(r_31): Ref)] && r_31 == r_31, xs5[(inv_60(r_31): Ref)] && r_31 == r_31, xs6[(inv_61(r_31): Ref)] && r_31 == r_31, xs7[(inv_62(r_31): Ref)] && r_31 == r_31, p_1, p_1, p_1, p_1, p_1, p_1, p_1, p_1): Perm) <= Mask[r_31, f_7]
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x9: Ref ::
  //     { x9.f }
  //     (x9 in xs9) ==> true && inv_64(x9) == x9) -- assume10QP.vpr@22.11--22.62
    
    // -- Check definedness of (forall x9: Ref :: { x9.f } (x9 in xs9) ==> true && inv_64(x9) == x9)
      if (*) {
        assume false;
      }
    assume (forall x9_1: Ref ::
      { Heap[x9_1, f_7] }
      xs9[x9_1] ==> (inv_64(x9_1): Ref) == x9_1
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall r: Ref ::
  //     { inv_64(r) }
  //     (inv_64(r) in xs9) ==> inv_64(r) == r) -- assume10QP.vpr@22.11--22.62
    
    // -- Check definedness of (forall r: Ref :: { inv_64(r) } (inv_64(r) in xs9) ==> inv_64(r) == r)
      if (*) {
        assume false;
      }
    assume (forall r_33_1: Ref ::
      { (inv_64(r_33_1): Ref) }
      xs9[(inv_64(r_33_1): Ref)] ==> (inv_64(r_33_1): Ref) == r_33_1
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall r: Ref ::
  //     { inv_64(r) }
  //     (inv_64(r) in xs9) ==>
  //     perm(r.f) >=
  //     __iar__assume_helper_8((inv_56(r) in xs1) && r == r, (inv_57(r) in xs2) &&
  //     r == r, (inv_58(r) in xs3) && r == r, (inv_59(r) in xs4) && r == r, (inv_60(r) in
  //     xs5) &&
  //     r == r, (inv_61(r) in xs6) && r == r, (inv_62(r) in xs7) && r == r, (inv_63(r) in
  //     xs8) &&
  //     r == r, p, p, p, p, p, p, p, p, p)) -- assume10QP.vpr@22.11--22.62
    
    // -- Check definedness of (forall r: Ref :: { inv_64(r) } (inv_64(r) in xs9) ==> perm(r.f) >= __iar__assume_helper_8((inv_56(r) in xs1) && r == r, (inv_57(r) in xs2) && r == r, (inv_58(r) in xs3) && r == r, (inv_59(r) in xs4) && r == r, (inv_60(r) in xs5) && r == r, (inv_61(r) in xs6) && r == r, (inv_62(r) in xs7) && r == r, (inv_63(r) in xs8) && r == r, p, p, p, p, p, p, p, p, p))
      if (*) {
        assume false;
      }
    assume (forall r_35: Ref ::
      { (inv_64(r_35): Ref) }
      xs9[(inv_64(r_35): Ref)] ==> (__iar__assume_helper_8(xs1[(inv_56(r_35): Ref)] && r_35 == r_35, xs2[(inv_57(r_35): Ref)] && r_35 == r_35, xs3[(inv_58(r_35): Ref)] && r_35 == r_35, xs4[(inv_59(r_35): Ref)] && r_35 == r_35, xs5[(inv_60(r_35): Ref)] && r_35 == r_35, xs6[(inv_61(r_35): Ref)] && r_35 == r_35, xs7[(inv_62(r_35): Ref)] && r_35 == r_35, xs8[(inv_63(r_35): Ref)] && r_35 == r_35, p_1, p_1, p_1, p_1, p_1, p_1, p_1, p_1, p_1): Perm) <= Mask[r_35, f_7]
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x10: Ref ::
  //     { x10.f }
  //     (x10 in xs10) ==> true && inv_65(x10) == x10) -- assume10QP.vpr@23.11--23.67
    
    // -- Check definedness of (forall x10: Ref :: { x10.f } (x10 in xs10) ==> true && inv_65(x10) == x10)
      if (*) {
        assume false;
      }
    assume (forall x10_1: Ref ::
      { Heap[x10_1, f_7] }
      xs10[x10_1] ==> (inv_65(x10_1): Ref) == x10_1
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall r: Ref ::
  //     { inv_65(r) }
  //     (inv_65(r) in xs10) ==> inv_65(r) == r) -- assume10QP.vpr@23.11--23.67
    
    // -- Check definedness of (forall r: Ref :: { inv_65(r) } (inv_65(r) in xs10) ==> inv_65(r) == r)
      if (*) {
        assume false;
      }
    assume (forall r_37: Ref ::
      { (inv_65(r_37): Ref) }
      xs10[(inv_65(r_37): Ref)] ==> (inv_65(r_37): Ref) == r_37
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall r: Ref ::
  //     { inv_65(r) }
  //     (inv_65(r) in xs10) ==>
  //     perm(r.f) >=
  //     __iar__assume_helper_9((inv_56(r) in xs1) && r == r, (inv_57(r) in xs2) &&
  //     r == r, (inv_58(r) in xs3) && r == r, (inv_59(r) in xs4) && r == r, (inv_60(r) in
  //     xs5) &&
  //     r == r, (inv_61(r) in xs6) && r == r, (inv_62(r) in xs7) && r == r, (inv_63(r) in
  //     xs8) &&
  //     r == r, (inv_64(r) in xs9) && r == r, p, p, p, p, p, p, p, p, p, p)) -- assume10QP.vpr@23.11--23.67
    
    // -- Check definedness of (forall r: Ref :: { inv_65(r) } (inv_65(r) in xs10) ==> perm(r.f) >= __iar__assume_helper_9((inv_56(r) in xs1) && r == r, (inv_57(r) in xs2) && r == r, (inv_58(r) in xs3) && r == r, (inv_59(r) in xs4) && r == r, (inv_60(r) in xs5) && r == r, (inv_61(r) in xs6) && r == r, (inv_62(r) in xs7) && r == r, (inv_63(r) in xs8) && r == r, (inv_64(r) in xs9) && r == r, p, p, p, p, p, p, p, p, p, p))
      if (*) {
        assume false;
      }
    assume (forall r_39: Ref ::
      { (inv_65(r_39): Ref) }
      xs10[(inv_65(r_39): Ref)] ==> (__iar__assume_helper_9(xs1[(inv_56(r_39): Ref)] && r_39 == r_39, xs2[(inv_57(r_39): Ref)] && r_39 == r_39, xs3[(inv_58(r_39): Ref)] && r_39 == r_39, xs4[(inv_59(r_39): Ref)] && r_39 == r_39, xs5[(inv_60(r_39): Ref)] && r_39 == r_39, xs6[(inv_61(r_39): Ref)] && r_39 == r_39, xs7[(inv_62(r_39): Ref)] && r_39 == r_39, xs8[(inv_63(r_39): Ref)] && r_39 == r_39, xs9[(inv_64(r_39): Ref)] && r_39 == r_39, p_1, p_1, p_1, p_1, p_1, p_1, p_1, p_1, p_1, p_1): Perm) <= Mask[r_39, f_7]
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x11: Ref ::
  //     { x11.f }
  //     (x11 in xs11) ==> true && inv_66(x11) == x11) -- assume10QP.vpr@24.11--24.67
    
    // -- Check definedness of (forall x11: Ref :: { x11.f } (x11 in xs11) ==> true && inv_66(x11) == x11)
      if (*) {
        assume false;
      }
    assume (forall x11_1: Ref ::
      { Heap[x11_1, f_7] }
      xs11[x11_1] ==> (inv_66(x11_1): Ref) == x11_1
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall r: Ref ::
  //     { inv_66(r) }
  //     (inv_66(r) in xs11) ==> inv_66(r) == r) -- assume10QP.vpr@24.11--24.67
    
    // -- Check definedness of (forall r: Ref :: { inv_66(r) } (inv_66(r) in xs11) ==> inv_66(r) == r)
      if (*) {
        assume false;
      }
    assume (forall r_41_2: Ref ::
      { (inv_66(r_41_2): Ref) }
      xs11[(inv_66(r_41_2): Ref)] ==> (inv_66(r_41_2): Ref) == r_41_2
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall r: Ref ::
  //     { inv_66(r) }
  //     (inv_66(r) in xs11) ==>
  //     perm(r.f) >=
  //     __iar__assume_helper_10((inv_56(r) in xs1) && r == r, (inv_57(r) in
  //     xs2) &&
  //     r == r, (inv_58(r) in xs3) && r == r, (inv_59(r) in xs4) && r == r, (inv_60(r) in
  //     xs5) &&
  //     r == r, (inv_61(r) in xs6) && r == r, (inv_62(r) in xs7) && r == r, (inv_63(r) in
  //     xs8) &&
  //     r == r, (inv_64(r) in xs9) && r == r, (inv_65(r) in xs10) && r == r, p,
  //     p, p, p, p, p, p, p, p, p, p)) -- assume10QP.vpr@24.11--24.67
    
    // -- Check definedness of (forall r: Ref :: { inv_66(r) } (inv_66(r) in xs11) ==> perm(r.f) >= __iar__assume_helper_10((inv_56(r) in xs1) && r == r, (inv_57(r) in xs2) && r == r, (inv_58(r) in xs3) && r == r, (inv_59(r) in xs4) && r == r, (inv_60(r) in xs5) && r == r, (inv_61(r) in xs6) && r == r, (inv_62(r) in xs7) && r == r, (inv_63(r) in xs8) && r == r, (inv_64(r) in xs9) && r == r, (inv_65(r) in xs10) && r == r, p, p, p, p, p, p, p, p, p, p, p))
      if (*) {
        assume false;
      }
    assume (forall r_43: Ref ::
      { (inv_66(r_43): Ref) }
      xs11[(inv_66(r_43): Ref)] ==> (__iar__assume_helper_10(xs1[(inv_56(r_43): Ref)] && r_43 == r_43, xs2[(inv_57(r_43): Ref)] && r_43 == r_43, xs3[(inv_58(r_43): Ref)] && r_43 == r_43, xs4[(inv_59(r_43): Ref)] && r_43 == r_43, xs5[(inv_60(r_43): Ref)] && r_43 == r_43, xs6[(inv_61(r_43): Ref)] && r_43 == r_43, xs7[(inv_62(r_43): Ref)] && r_43 == r_43, xs8[(inv_63(r_43): Ref)] && r_43 == r_43, xs9[(inv_64(r_43): Ref)] && r_43 == r_43, xs10[(inv_65(r_43): Ref)] && r_43 == r_43, p_1, p_1, p_1, p_1, p_1, p_1, p_1, p_1, p_1, p_1, p_1): Perm) <= Mask[r_43, f_7]
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (x in xs1) -- assume10QP.vpr@26.11--26.19
    assume xs1[x];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (x in xs2) -- assume10QP.vpr@26.23--26.31
    assume xs2[x];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(x.f, p) -- assume10QP.vpr@27.4--27.22
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    perm := p_1;
    assert {:msg "  Assert might fail. Fraction p might be negative. (assume10QP.vpr@27.11--27.22) [149925]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (assume10QP.vpr@27.11--27.22) [149926]"}
        perm <= AssertMask[x, f_7];
    }
    AssertMask := AssertMask[x, f_7:=AssertMask[x, f_7] - perm];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert p > none ==> false -- assume10QP.vpr@30.4--30.29
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    if (NoPerm < p_1) {
      assert {:msg "  Assert might fail. Assertion false might not hold. (assume10QP.vpr@30.11--30.29) [149927]"}
        false;
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert |xs1| > 0 && (x in xs1) ==> p < write -- assume10QP.vpr@31.4--31.46
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    if (Set#Card(xs1) > 0 && xs1[x]) {
      assert {:msg "  Assert might fail. Assertion p < write might not hold. (assume10QP.vpr@31.11--31.46) [149928]"}
        p_1 < FullPerm;
    }
    assume state(Heap, Mask);
}