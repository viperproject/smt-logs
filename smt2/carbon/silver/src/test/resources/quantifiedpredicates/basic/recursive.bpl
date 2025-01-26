// 
// Translation of Viper program.
// 
// Date:         2025-01-26 21:44:49
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpredicates/basic/recursive.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpredicates/basic/recursive-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_8: Ref, f_14: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_8, f_14] }
  Heap[o_8, $allocated] ==> Heap[Heap[o_8, f_14], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_53: Ref, f_67: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_53, f_67] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_53, f_67) ==> Heap[o_53, f_67] == ExhaleHeap[o_53, f_67]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_25: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_25), ExhaleHeap[null, PredicateMaskField(pm_f_25)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_25) && IsPredicateField(pm_f_25) ==> Heap[null, PredicateMaskField(pm_f_25)] == ExhaleHeap[null, PredicateMaskField(pm_f_25)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_25: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_25) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_25) && IsPredicateField(pm_f_25) ==> (forall <A, B> o2_25: Ref, f_67: (Field A B) ::
    { ExhaleHeap[o2_25, f_67] }
    Heap[null, PredicateMaskField(pm_f_25)][o2_25, f_67] ==> Heap[o2_25, f_67] == ExhaleHeap[o2_25, f_67]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_25: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_25), ExhaleHeap[null, WandMaskField(pm_f_25)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_25) && IsWandField(pm_f_25) ==> Heap[null, WandMaskField(pm_f_25)] == ExhaleHeap[null, WandMaskField(pm_f_25)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_25: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_25) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_25) && IsWandField(pm_f_25) ==> (forall <A, B> o2_25: Ref, f_67: (Field A B) ::
    { ExhaleHeap[o2_25, f_67] }
    Heap[null, WandMaskField(pm_f_25)][o2_25, f_67] ==> Heap[o2_25, f_67] == ExhaleHeap[o2_25, f_67]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_53: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_53, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_53, $allocated] ==> ExhaleHeap[o_53, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_8: Ref, f_63: (Field A B), v: B ::
  { Heap[o_8, f_63:=v] }
  succHeap(Heap, Heap[o_8, f_63:=v])
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
// Function for trigger used in checks which are never triggered
// ==================================================

function  neverTriggered1(l_1_2: Ref): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(r_1: Ref, i: int): Ref;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(r_1: Ref, i: int): bool;

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
// Translation of all fields
// ==================================================

const unique val: Field NormalField int;
axiom !IsPredicateField(val);
axiom !IsWandField(val);
const unique next: Field NormalField Ref;
axiom !IsPredicateField(next);
axiom !IsWandField(next);

// ==================================================
// Translation of predicate list
// ==================================================

type PredicateType_list;
function  list(r_1: Ref, i: int): Field PredicateType_list FrameType;
function  list#sm(r_1: Ref, i: int): Field PredicateType_list PMaskType;
axiom (forall r_1: Ref, i: int ::
  { PredicateMaskField(list(r_1, i)) }
  PredicateMaskField(list(r_1, i)) == list#sm(r_1, i)
);
axiom (forall r_1: Ref, i: int ::
  { list(r_1, i) }
  IsPredicateField(list(r_1, i))
);
axiom (forall r_1: Ref, i: int ::
  { list(r_1, i) }
  getPredWandId(list(r_1, i)) == 0
);
function  list#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  list#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall r_1: Ref, i: int, r2: Ref, i2: int ::
  { list(r_1, i), list(r2, i2) }
  list(r_1, i) == list(r2, i2) ==> r_1 == r2 && i == i2
);
axiom (forall r_1: Ref, i: int, r2: Ref, i2: int ::
  { list#sm(r_1, i), list#sm(r2, i2) }
  list#sm(r_1, i) == list#sm(r2, i2) ==> r_1 == r2 && i == i2
);

axiom (forall Heap: HeapType, r_1: Ref, i: int ::
  { list#trigger(Heap, list(r_1, i)) }
  list#everUsed(list(r_1, i))
);

procedure list#definedness(r_1: Ref, i: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of list
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[r_1, $allocated];
    if (i > 0) {
      perm := FullPerm;
      assume r_1 != null;
      Mask := Mask[r_1, val:=Mask[r_1, val] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume r_1 != null;
      Mask := Mask[r_1, next:=Mask[r_1, next] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of acc(list(r.next, i - 1), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access r.next (recursive.vpr@7.1--10.2) [204051]"}
          HasDirectPerm(Mask, r_1, next);
      perm := FullPerm;
      Mask := Mask[null, list(Heap[r_1, next], i - 1):=Mask[null, list(Heap[r_1, next], i - 1)] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m1
// ==================================================

procedure m1(r_1: Ref, length_3: int, v_2: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newPMask: PMaskType;
  var newVersion: FrameType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_r: Ref;
  var arg_length: int;
  var ExhaleHeap: HeapType;
  var freshVersion: FrameType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    assume length_3 > 0;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, list(r_1, length_3):=Mask[null, list(r_1, length_3)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    PostMask := PostMask[null, list(r_1, length_3):=PostMask[null, list(r_1, length_3)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (unfolding acc(list(r, length), write) in r.val == v)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume list#trigger(UnfoldingHeap, list(r_1, length_3));
      assume UnfoldingHeap[null, list(r_1, length_3)] == FrameFragment((if length_3 > 0 then CombineFrames(FrameFragment(UnfoldingHeap[r_1, val]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, list(UnfoldingHeap[r_1, next], length_3 - 1)])) else EmptyFrame));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access list(r, length) (recursive.vpr@16.9--16.50) [204052]"}
          perm <= UnfoldingMask[null, list(r_1, length_3)];
      }
      UnfoldingMask := UnfoldingMask[null, list(r_1, length_3):=UnfoldingMask[null, list(r_1, length_3)] - perm];
      if (length_3 > 0) {
        perm := FullPerm;
        assume r_1 != null;
        UnfoldingMask := UnfoldingMask[r_1, val:=UnfoldingMask[r_1, val] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume r_1 != null;
        UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, list(UnfoldingHeap[r_1, next], length_3 - 1):=UnfoldingMask[null, list(UnfoldingHeap[r_1, next], length_3 - 1)] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(list(r_1, length_3), UnfoldingHeap[null, list(r_1, length_3)], list(UnfoldingHeap[r_1, next], length_3 - 1), UnfoldingHeap[null, list(UnfoldingHeap[r_1, next], length_3 - 1)]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.val (recursive.vpr@16.9--16.50) [204053]"}
        HasDirectPerm(UnfoldingMask, r_1, val);
      
      // -- Free assumptions (exp module)
        if (length_3 > 0) {
          PostHeap := PostHeap[null, list#sm(r_1, length_3):=PostHeap[null, list#sm(r_1, length_3)][r_1, val:=true]];
          PostHeap := PostHeap[null, list#sm(r_1, length_3):=PostHeap[null, list#sm(r_1, length_3)][r_1, next:=true]];
          havoc newPMask;
          assume (forall <A, B> o_5: Ref, f_11: (Field A B) ::
            { newPMask[o_5, f_11] }
            PostHeap[null, list#sm(r_1, length_3)][o_5, f_11] || PostHeap[null, list#sm(PostHeap[r_1, next], length_3 - 1)][o_5, f_11] ==> newPMask[o_5, f_11]
          );
          PostHeap := PostHeap[null, list#sm(r_1, length_3):=newPMask];
        }
        assume state(PostHeap, PostMask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume list#trigger(UnfoldingHeap, list(r_1, length_3));
      assume UnfoldingHeap[null, list(r_1, length_3)] == FrameFragment((if length_3 > 0 then CombineFrames(FrameFragment(UnfoldingHeap[r_1, val]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, list(UnfoldingHeap[r_1, next], length_3 - 1)])) else EmptyFrame));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, list(r_1, length_3):=UnfoldingMask[null, list(r_1, length_3)] - perm];
      if (length_3 > 0) {
        perm := FullPerm;
        assume r_1 != null;
        UnfoldingMask := UnfoldingMask[r_1, val:=UnfoldingMask[r_1, val] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume r_1 != null;
        UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, list(UnfoldingHeap[r_1, next], length_3 - 1):=UnfoldingMask[null, list(UnfoldingHeap[r_1, next], length_3 - 1)] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(list(r_1, length_3), UnfoldingHeap[null, list(r_1, length_3)], list(UnfoldingHeap[r_1, next], length_3 - 1), UnfoldingHeap[null, list(UnfoldingHeap[r_1, next], length_3 - 1)]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
    assume PostHeap[r_1, val] == v_2;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(list(r, length), write) -- recursive.vpr@18.5--18.27
    assume list#trigger(Heap, list(r_1, length_3));
    assume Heap[null, list(r_1, length_3)] == FrameFragment((if length_3 > 0 then CombineFrames(FrameFragment(Heap[r_1, val]), CombineFrames(FrameFragment(Heap[r_1, next]), Heap[null, list(Heap[r_1, next], length_3 - 1)])) else EmptyFrame));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding list(r, length) might fail. There might be insufficient permission to access list(r, length) (recursive.vpr@18.5--18.27) [204056]"}
        perm <= Mask[null, list(r_1, length_3)];
    }
    Mask := Mask[null, list(r_1, length_3):=Mask[null, list(r_1, length_3)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, list(r_1, length_3))) {
        havoc newVersion;
        Heap := Heap[null, list(r_1, length_3):=newVersion];
      }
    if (length_3 > 0) {
      perm := FullPerm;
      assume r_1 != null;
      Mask := Mask[r_1, val:=Mask[r_1, val] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume r_1 != null;
      Mask := Mask[r_1, next:=Mask[r_1, next] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      Mask := Mask[null, list(Heap[r_1, next], length_3 - 1):=Mask[null, list(Heap[r_1, next], length_3 - 1)] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(list(r_1, length_3), Heap[null, list(r_1, length_3)], list(Heap[r_1, next], length_3 - 1), Heap[null, list(Heap[r_1, next], length_3 - 1)]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: r.val := v -- recursive.vpr@19.5--19.15
    assert {:msg "  Assignment might fail. There might be insufficient permission to access r.val (recursive.vpr@19.5--19.15) [204060]"}
      FullPerm == Mask[r_1, val];
    Heap := Heap[r_1, val:=v_2];
    assume state(Heap, Mask);
  
  // -- Translating statement: if (length - 1 > 0) -- recursive.vpr@20.5--22.6
    if (length_3 - 1 > 0) {
      
      // -- Translating statement: m1(r.next, length - 1, v) -- recursive.vpr@21.9--21.32
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Check definedness of r.next
          assert {:msg "  Method call might fail. There might be insufficient permission to access r.next (recursive.vpr@21.9--21.32) [204061]"}
            HasDirectPerm(Mask, r_1, next);
        arg_r := Heap[r_1, next];
        arg_length := length_3 - 1;
        
        // -- Exhaling precondition
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  The precondition of method m1 might not hold. Assertion length - 1 > 0 might not hold. (recursive.vpr@21.9--21.32) [204062]"}
            arg_length > 0;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method m1 might not hold. There might be insufficient permission to access list(r.next, length - 1) (recursive.vpr@21.9--21.32) [204063]"}
              perm <= Mask[null, list(arg_r, arg_length)];
          }
          Mask := Mask[null, list(arg_r, arg_length):=Mask[null, list(arg_r, arg_length)] - perm];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          perm := FullPerm;
          Mask := Mask[null, list(arg_r, arg_length):=Mask[null, list(arg_r, arg_length)] + perm];
          assume state(Heap, Mask);
          
          // -- Execute unfolding (for extra information)
            UnfoldingHeap := Heap;
            UnfoldingMask := Mask;
            assume list#trigger(UnfoldingHeap, list(arg_r, arg_length));
            assume UnfoldingHeap[null, list(arg_r, arg_length)] == FrameFragment((if arg_length > 0 then CombineFrames(FrameFragment(UnfoldingHeap[arg_r, val]), CombineFrames(FrameFragment(UnfoldingHeap[arg_r, next]), UnfoldingHeap[null, list(UnfoldingHeap[arg_r, next], arg_length - 1)])) else EmptyFrame));
            ExhaleWellDef0Mask := UnfoldingMask;
            ExhaleWellDef0Heap := UnfoldingHeap;
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, list(arg_r, arg_length):=UnfoldingMask[null, list(arg_r, arg_length)] - perm];
            if (arg_length > 0) {
              perm := FullPerm;
              assume arg_r != null;
              UnfoldingMask := UnfoldingMask[arg_r, val:=UnfoldingMask[arg_r, val] + perm];
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              assume arg_r != null;
              UnfoldingMask := UnfoldingMask[arg_r, next:=UnfoldingMask[arg_r, next] + perm];
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, list(UnfoldingHeap[arg_r, next], arg_length - 1):=UnfoldingMask[null, list(UnfoldingHeap[arg_r, next], arg_length - 1)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(list(arg_r, arg_length), UnfoldingHeap[null, list(arg_r, arg_length)], list(UnfoldingHeap[arg_r, next], arg_length - 1), UnfoldingHeap[null, list(UnfoldingHeap[arg_r, next], arg_length - 1)]);
              assume state(UnfoldingHeap, UnfoldingMask);
            }
            assume state(UnfoldingHeap, UnfoldingMask);
          assume Heap[arg_r, val] == v_2;
          
          // -- Free assumptions (inhale module)
            if (arg_length > 0) {
              Heap := Heap[null, list#sm(arg_r, arg_length):=Heap[null, list#sm(arg_r, arg_length)][arg_r, val:=true]];
              Heap := Heap[null, list#sm(arg_r, arg_length):=Heap[null, list#sm(arg_r, arg_length)][arg_r, next:=true]];
              havoc newPMask;
              assume (forall <A, B> o_40: Ref, f_52: (Field A B) ::
                { newPMask[o_40, f_52] }
                Heap[null, list#sm(arg_r, arg_length)][o_40, f_52] || Heap[null, list#sm(Heap[arg_r, next], arg_length - 1)][o_40, f_52] ==> newPMask[o_40, f_52]
              );
              Heap := Heap[null, list#sm(arg_r, arg_length):=newPMask];
            }
            assume state(Heap, Mask);
          assume state(Heap, Mask);
          
          // -- Execute definedness check of (unfolding acc(list(arg_r, arg_length), write) in arg_r.val == v) without enforcing the checks (e.g., to gain more information)
            UnfoldingHeap := Heap;
            UnfoldingMask := Mask;
            assume list#trigger(UnfoldingHeap, list(arg_r, arg_length));
            assume UnfoldingHeap[null, list(arg_r, arg_length)] == FrameFragment((if arg_length > 0 then CombineFrames(FrameFragment(UnfoldingHeap[arg_r, val]), CombineFrames(FrameFragment(UnfoldingHeap[arg_r, next]), UnfoldingHeap[null, list(UnfoldingHeap[arg_r, next], arg_length - 1)])) else EmptyFrame));
            ExhaleWellDef0Mask := UnfoldingMask;
            ExhaleWellDef0Heap := UnfoldingHeap;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  An internal error occurred. There might be insufficient permission to access list(r.next, length - 1) (recursive.vpr@16.9--16.50) [204064]"}
                perm <= UnfoldingMask[null, list(arg_r, arg_length)];
            }
            UnfoldingMask := UnfoldingMask[null, list(arg_r, arg_length):=UnfoldingMask[null, list(arg_r, arg_length)] - perm];
            if (arg_length > 0) {
              perm := FullPerm;
              assume arg_r != null;
              UnfoldingMask := UnfoldingMask[arg_r, val:=UnfoldingMask[arg_r, val] + perm];
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              assume arg_r != null;
              UnfoldingMask := UnfoldingMask[arg_r, next:=UnfoldingMask[arg_r, next] + perm];
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, list(UnfoldingHeap[arg_r, next], arg_length - 1):=UnfoldingMask[null, list(UnfoldingHeap[arg_r, next], arg_length - 1)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(list(arg_r, arg_length), UnfoldingHeap[null, list(arg_r, arg_length)], list(UnfoldingHeap[arg_r, next], arg_length - 1), UnfoldingHeap[null, list(UnfoldingHeap[arg_r, next], arg_length - 1)]);
              assume state(UnfoldingHeap, UnfoldingMask);
            }
            assume state(UnfoldingHeap, UnfoldingMask);
            
            // -- Free assumptions (exp module)
              if (arg_length > 0) {
                Heap := Heap[null, list#sm(arg_r, arg_length):=Heap[null, list#sm(arg_r, arg_length)][arg_r, val:=true]];
                Heap := Heap[null, list#sm(arg_r, arg_length):=Heap[null, list#sm(arg_r, arg_length)][arg_r, next:=true]];
                havoc newPMask;
                assume (forall <A, B> o_42: Ref, f_55: (Field A B) ::
                  { newPMask[o_42, f_55] }
                  Heap[null, list#sm(arg_r, arg_length)][o_42, f_55] || Heap[null, list#sm(Heap[arg_r, next], arg_length - 1)][o_42, f_55] ==> newPMask[o_42, f_55]
                );
                Heap := Heap[null, list#sm(arg_r, arg_length):=newPMask];
              }
              assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(r, length), write) -- recursive.vpr@23.5--23.25
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (length_3 > 0) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding list(r, length) might fail. There might be insufficient permission to access r.val (recursive.vpr@23.5--23.25) [204067]"}
          perm <= Mask[r_1, val];
      }
      Mask := Mask[r_1, val:=Mask[r_1, val] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding list(r, length) might fail. There might be insufficient permission to access r.next (recursive.vpr@23.5--23.25) [204069]"}
          perm <= Mask[r_1, next];
      }
      Mask := Mask[r_1, next:=Mask[r_1, next] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding list(r, length) might fail. There might be insufficient permission to access list(r.next, length - 1) (recursive.vpr@23.5--23.25) [204071]"}
          perm <= Mask[null, list(Heap[r_1, next], length_3 - 1)];
      }
      Mask := Mask[null, list(Heap[r_1, next], length_3 - 1):=Mask[null, list(Heap[r_1, next], length_3 - 1)] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(list(r_1, length_3), Heap[null, list(r_1, length_3)], list(Heap[r_1, next], length_3 - 1), Heap[null, list(Heap[r_1, next], length_3 - 1)]);
    }
    perm := FullPerm;
    Mask := Mask[null, list(r_1, length_3):=Mask[null, list(r_1, length_3)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list#trigger(Heap, list(r_1, length_3));
    assume Heap[null, list(r_1, length_3)] == FrameFragment((if length_3 > 0 then CombineFrames(FrameFragment(Heap[r_1, val]), CombineFrames(FrameFragment(Heap[r_1, next]), Heap[null, list(Heap[r_1, next], length_3 - 1)])) else EmptyFrame));
    if (!HasDirectPerm(Mask, null, list(r_1, length_3))) {
      Heap := Heap[null, list#sm(r_1, length_3):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list(r_1, length_3):=freshVersion];
    }
    if (length_3 > 0) {
      Heap := Heap[null, list#sm(r_1, length_3):=Heap[null, list#sm(r_1, length_3)][r_1, val:=true]];
      Heap := Heap[null, list#sm(r_1, length_3):=Heap[null, list#sm(r_1, length_3)][r_1, next:=true]];
      havoc newPMask;
      assume (forall <A, B> o_46: Ref, f_60: (Field A B) ::
        { newPMask[o_46, f_60] }
        Heap[null, list#sm(r_1, length_3)][o_46, f_60] || Heap[null, list#sm(Heap[r_1, next], length_3 - 1)][o_46, f_60] ==> newPMask[o_46, f_60]
      );
      Heap := Heap[null, list#sm(r_1, length_3):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of m1 might not hold. There might be insufficient permission to access list(r, length) (recursive.vpr@15.9--15.29) [204073]"}
        perm <= Mask[null, list(r_1, length_3)];
    }
    Mask := Mask[null, list(r_1, length_3):=Mask[null, list(r_1, length_3)] - perm];
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume list#trigger(UnfoldingHeap, list(r_1, length_3));
      assume UnfoldingHeap[null, list(r_1, length_3)] == FrameFragment((if length_3 > 0 then CombineFrames(FrameFragment(UnfoldingHeap[r_1, val]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, list(UnfoldingHeap[r_1, next], length_3 - 1)])) else EmptyFrame));
      ExhaleWellDef1Mask := UnfoldingMask;
      ExhaleWellDef1Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of m1 might not hold. There might be insufficient permission to access list(r, length) (recursive.vpr@16.9--16.50) [204074]"}
          perm <= UnfoldingMask[null, list(r_1, length_3)];
      }
      UnfoldingMask := UnfoldingMask[null, list(r_1, length_3):=UnfoldingMask[null, list(r_1, length_3)] - perm];
      if (length_3 > 0) {
        perm := FullPerm;
        assume r_1 != null;
        UnfoldingMask := UnfoldingMask[r_1, val:=UnfoldingMask[r_1, val] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume r_1 != null;
        UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, list(UnfoldingHeap[r_1, next], length_3 - 1):=UnfoldingMask[null, list(UnfoldingHeap[r_1, next], length_3 - 1)] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(list(r_1, length_3), UnfoldingHeap[null, list(r_1, length_3)], list(UnfoldingHeap[r_1, next], length_3 - 1), UnfoldingHeap[null, list(UnfoldingHeap[r_1, next], length_3 - 1)]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
    assert {:msg "  Postcondition of m1 might not hold. Assertion r.val == v might not hold. (recursive.vpr@16.9--16.50) [204075]"}
      Heap[r_1, val] == v_2;
    
    // -- Free assumptions (exhale module)
      if (length_3 > 0) {
        Heap := Heap[null, list#sm(r_1, length_3):=Heap[null, list#sm(r_1, length_3)][r_1, val:=true]];
        Heap := Heap[null, list#sm(r_1, length_3):=Heap[null, list#sm(r_1, length_3)][r_1, next:=true]];
        havoc newPMask;
        assume (forall <A, B> o_6: Ref, f_12: (Field A B) ::
          { newPMask[o_6, f_12] }
          Heap[null, list#sm(r_1, length_3)][o_6, f_12] || Heap[null, list#sm(Heap[r_1, next], length_3 - 1)][o_6, f_12] ==> newPMask[o_6, f_12]
        );
        Heap := Heap[null, list#sm(r_1, length_3):=newPMask];
      }
      assume state(Heap, Mask);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method m2
// ==================================================

procedure m2(l1_1: Ref, l2: Ref, length_3: int, v_2: int) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newPMask: PMaskType;
  var newVersion: FrameType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_r: Ref;
  var arg_length: int;
  var ExhaleHeap: HeapType;
  var freshVersion: FrameType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[l1_1, $allocated];
    assume Heap[l2, $allocated];
  
  // -- Checked inhaling of precondition
    assume length_3 > 0;
    assume state(Heap, Mask);
    assume l1_1 != l2;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall l: Ref :: { (l in Set(l1, l2)) } (l in Set(l1, l2)) ==> acc(list(l, length), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(list(l, length), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource list(l, length) might not be injective. (recursive.vpr@29.10--29.67) [204076]"}
        (forall l_1_2: Ref, l_1_3: Ref ::
        { neverTriggered1(l_1_2), neverTriggered1(l_1_3) }
        (((l_1_2 != l_1_3 && Set#UnionOne(Set#Singleton(l2), l1_1)[l_1_2]) && Set#UnionOne(Set#Singleton(l2), l1_1)[l_1_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> l_1_2 != l_1_3 || length_3 != length_3
      );
    
    // -- Define Inverse Function
      assume (forall l_1_2: Ref ::
        { Heap[null, list(l_1_2, length_3)] } { Mask[null, list(l_1_2, length_3)] } { Set#UnionOne(Set#Singleton(l2), l1_1)[l_1_2] }
        Set#UnionOne(Set#Singleton(l2), l1_1)[l_1_2] && NoPerm < FullPerm ==> invRecv1(l_1_2, length_3) == l_1_2 && qpRange1(l_1_2, length_3)
      );
      assume (forall r_1: Ref, i: int ::
        { invRecv1(r_1, i) }
        (Set#UnionOne(Set#Singleton(l2), l1_1)[invRecv1(r_1, i)] && NoPerm < FullPerm) && qpRange1(r_1, i) ==> invRecv1(r_1, i) == r_1 && length_3 == i
      );
    
    // -- Define updated permissions
      assume (forall r_1: Ref, i: int ::
        { QPMask[null, list(r_1, i)] }
        (Set#UnionOne(Set#Singleton(l2), l1_1)[invRecv1(r_1, i)] && NoPerm < FullPerm) && qpRange1(r_1, i) ==> (NoPerm < FullPerm ==> invRecv1(r_1, i) == r_1 && length_3 == i) && QPMask[null, list(r_1, i)] == Mask[null, list(r_1, i)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall r_1: Ref, i: int ::
        { QPMask[null, list(r_1, i)] }
        !((Set#UnionOne(Set#Singleton(l2), l1_1)[invRecv1(r_1, i)] && NoPerm < FullPerm) && qpRange1(r_1, i)) ==> QPMask[null, list(r_1, i)] == Mask[null, list(r_1, i)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    PostMask := PostMask[null, list(l1_1, length_3):=PostMask[null, list(l1_1, length_3)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    PostMask := PostMask[null, list(l2, length_3):=PostMask[null, list(l2, length_3)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (unfolding acc(list(l1, length), write) in l1.val == v)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume list#trigger(UnfoldingHeap, list(l1_1, length_3));
      assume UnfoldingHeap[null, list(l1_1, length_3)] == FrameFragment((if length_3 > 0 then CombineFrames(FrameFragment(UnfoldingHeap[l1_1, val]), CombineFrames(FrameFragment(UnfoldingHeap[l1_1, next]), UnfoldingHeap[null, list(UnfoldingHeap[l1_1, next], length_3 - 1)])) else EmptyFrame));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access list(l1, length) (recursive.vpr@32.9--32.52) [204077]"}
          perm <= UnfoldingMask[null, list(l1_1, length_3)];
      }
      UnfoldingMask := UnfoldingMask[null, list(l1_1, length_3):=UnfoldingMask[null, list(l1_1, length_3)] - perm];
      if (length_3 > 0) {
        perm := FullPerm;
        assume l1_1 != null;
        UnfoldingMask := UnfoldingMask[l1_1, val:=UnfoldingMask[l1_1, val] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume l1_1 != null;
        UnfoldingMask := UnfoldingMask[l1_1, next:=UnfoldingMask[l1_1, next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, list(UnfoldingHeap[l1_1, next], length_3 - 1):=UnfoldingMask[null, list(UnfoldingHeap[l1_1, next], length_3 - 1)] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(list(l1_1, length_3), UnfoldingHeap[null, list(l1_1, length_3)], list(UnfoldingHeap[l1_1, next], length_3 - 1), UnfoldingHeap[null, list(UnfoldingHeap[l1_1, next], length_3 - 1)]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access l1.val (recursive.vpr@32.9--32.52) [204078]"}
        HasDirectPerm(UnfoldingMask, l1_1, val);
      
      // -- Free assumptions (exp module)
        if (length_3 > 0) {
          PostHeap := PostHeap[null, list#sm(l1_1, length_3):=PostHeap[null, list#sm(l1_1, length_3)][l1_1, val:=true]];
          PostHeap := PostHeap[null, list#sm(l1_1, length_3):=PostHeap[null, list#sm(l1_1, length_3)][l1_1, next:=true]];
          havoc newPMask;
          assume (forall <A, B> o_56: Ref, f: (Field A B) ::
            { newPMask[o_56, f] }
            PostHeap[null, list#sm(l1_1, length_3)][o_56, f] || PostHeap[null, list#sm(PostHeap[l1_1, next], length_3 - 1)][o_56, f] ==> newPMask[o_56, f]
          );
          PostHeap := PostHeap[null, list#sm(l1_1, length_3):=newPMask];
        }
        assume state(PostHeap, PostMask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume list#trigger(UnfoldingHeap, list(l1_1, length_3));
      assume UnfoldingHeap[null, list(l1_1, length_3)] == FrameFragment((if length_3 > 0 then CombineFrames(FrameFragment(UnfoldingHeap[l1_1, val]), CombineFrames(FrameFragment(UnfoldingHeap[l1_1, next]), UnfoldingHeap[null, list(UnfoldingHeap[l1_1, next], length_3 - 1)])) else EmptyFrame));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, list(l1_1, length_3):=UnfoldingMask[null, list(l1_1, length_3)] - perm];
      if (length_3 > 0) {
        perm := FullPerm;
        assume l1_1 != null;
        UnfoldingMask := UnfoldingMask[l1_1, val:=UnfoldingMask[l1_1, val] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume l1_1 != null;
        UnfoldingMask := UnfoldingMask[l1_1, next:=UnfoldingMask[l1_1, next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, list(UnfoldingHeap[l1_1, next], length_3 - 1):=UnfoldingMask[null, list(UnfoldingHeap[l1_1, next], length_3 - 1)] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(list(l1_1, length_3), UnfoldingHeap[null, list(l1_1, length_3)], list(UnfoldingHeap[l1_1, next], length_3 - 1), UnfoldingHeap[null, list(UnfoldingHeap[l1_1, next], length_3 - 1)]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
    assume PostHeap[l1_1, val] == v_2;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(list(l1, length), write) -- recursive.vpr@34.5--34.28
    assume list#trigger(Heap, list(l1_1, length_3));
    assume Heap[null, list(l1_1, length_3)] == FrameFragment((if length_3 > 0 then CombineFrames(FrameFragment(Heap[l1_1, val]), CombineFrames(FrameFragment(Heap[l1_1, next]), Heap[null, list(Heap[l1_1, next], length_3 - 1)])) else EmptyFrame));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding list(l1, length) might fail. There might be insufficient permission to access list(l1, length) (recursive.vpr@34.5--34.28) [204081]"}
        perm <= Mask[null, list(l1_1, length_3)];
    }
    Mask := Mask[null, list(l1_1, length_3):=Mask[null, list(l1_1, length_3)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, list(l1_1, length_3))) {
        havoc newVersion;
        Heap := Heap[null, list(l1_1, length_3):=newVersion];
      }
    if (length_3 > 0) {
      perm := FullPerm;
      assume l1_1 != null;
      Mask := Mask[l1_1, val:=Mask[l1_1, val] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume l1_1 != null;
      Mask := Mask[l1_1, next:=Mask[l1_1, next] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      Mask := Mask[null, list(Heap[l1_1, next], length_3 - 1):=Mask[null, list(Heap[l1_1, next], length_3 - 1)] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(list(l1_1, length_3), Heap[null, list(l1_1, length_3)], list(Heap[l1_1, next], length_3 - 1), Heap[null, list(Heap[l1_1, next], length_3 - 1)]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: l1.val := v -- recursive.vpr@35.5--35.16
    assert {:msg "  Assignment might fail. There might be insufficient permission to access l1.val (recursive.vpr@35.5--35.16) [204085]"}
      FullPerm == Mask[l1_1, val];
    Heap := Heap[l1_1, val:=v_2];
    assume state(Heap, Mask);
  
  // -- Translating statement: if (length - 1 > 0) -- recursive.vpr@36.5--38.6
    if (length_3 - 1 > 0) {
      
      // -- Translating statement: m1(l1.next, length - 1, v) -- recursive.vpr@37.9--37.33
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Check definedness of l1.next
          assert {:msg "  Method call might fail. There might be insufficient permission to access l1.next (recursive.vpr@37.9--37.33) [204086]"}
            HasDirectPerm(Mask, l1_1, next);
        arg_r := Heap[l1_1, next];
        arg_length := length_3 - 1;
        
        // -- Exhaling precondition
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  The precondition of method m1 might not hold. Assertion length - 1 > 0 might not hold. (recursive.vpr@37.9--37.33) [204087]"}
            arg_length > 0;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method m1 might not hold. There might be insufficient permission to access list(l1.next, length - 1) (recursive.vpr@37.9--37.33) [204088]"}
              perm <= Mask[null, list(arg_r, arg_length)];
          }
          Mask := Mask[null, list(arg_r, arg_length):=Mask[null, list(arg_r, arg_length)] - perm];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          perm := FullPerm;
          Mask := Mask[null, list(arg_r, arg_length):=Mask[null, list(arg_r, arg_length)] + perm];
          assume state(Heap, Mask);
          
          // -- Execute unfolding (for extra information)
            UnfoldingHeap := Heap;
            UnfoldingMask := Mask;
            assume list#trigger(UnfoldingHeap, list(arg_r, arg_length));
            assume UnfoldingHeap[null, list(arg_r, arg_length)] == FrameFragment((if arg_length > 0 then CombineFrames(FrameFragment(UnfoldingHeap[arg_r, val]), CombineFrames(FrameFragment(UnfoldingHeap[arg_r, next]), UnfoldingHeap[null, list(UnfoldingHeap[arg_r, next], arg_length - 1)])) else EmptyFrame));
            ExhaleWellDef0Mask := UnfoldingMask;
            ExhaleWellDef0Heap := UnfoldingHeap;
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, list(arg_r, arg_length):=UnfoldingMask[null, list(arg_r, arg_length)] - perm];
            if (arg_length > 0) {
              perm := FullPerm;
              assume arg_r != null;
              UnfoldingMask := UnfoldingMask[arg_r, val:=UnfoldingMask[arg_r, val] + perm];
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              assume arg_r != null;
              UnfoldingMask := UnfoldingMask[arg_r, next:=UnfoldingMask[arg_r, next] + perm];
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, list(UnfoldingHeap[arg_r, next], arg_length - 1):=UnfoldingMask[null, list(UnfoldingHeap[arg_r, next], arg_length - 1)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(list(arg_r, arg_length), UnfoldingHeap[null, list(arg_r, arg_length)], list(UnfoldingHeap[arg_r, next], arg_length - 1), UnfoldingHeap[null, list(UnfoldingHeap[arg_r, next], arg_length - 1)]);
              assume state(UnfoldingHeap, UnfoldingMask);
            }
            assume state(UnfoldingHeap, UnfoldingMask);
          assume Heap[arg_r, val] == v_2;
          
          // -- Free assumptions (inhale module)
            if (arg_length > 0) {
              Heap := Heap[null, list#sm(arg_r, arg_length):=Heap[null, list#sm(arg_r, arg_length)][arg_r, val:=true]];
              Heap := Heap[null, list#sm(arg_r, arg_length):=Heap[null, list#sm(arg_r, arg_length)][arg_r, next:=true]];
              havoc newPMask;
              assume (forall <A, B> o_16: Ref, f_8: (Field A B) ::
                { newPMask[o_16, f_8] }
                Heap[null, list#sm(arg_r, arg_length)][o_16, f_8] || Heap[null, list#sm(Heap[arg_r, next], arg_length - 1)][o_16, f_8] ==> newPMask[o_16, f_8]
              );
              Heap := Heap[null, list#sm(arg_r, arg_length):=newPMask];
            }
            assume state(Heap, Mask);
          assume state(Heap, Mask);
          
          // -- Execute definedness check of (unfolding acc(list(arg_r, arg_length), write) in arg_r.val == v) without enforcing the checks (e.g., to gain more information)
            UnfoldingHeap := Heap;
            UnfoldingMask := Mask;
            assume list#trigger(UnfoldingHeap, list(arg_r, arg_length));
            assume UnfoldingHeap[null, list(arg_r, arg_length)] == FrameFragment((if arg_length > 0 then CombineFrames(FrameFragment(UnfoldingHeap[arg_r, val]), CombineFrames(FrameFragment(UnfoldingHeap[arg_r, next]), UnfoldingHeap[null, list(UnfoldingHeap[arg_r, next], arg_length - 1)])) else EmptyFrame));
            ExhaleWellDef0Mask := UnfoldingMask;
            ExhaleWellDef0Heap := UnfoldingHeap;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  An internal error occurred. There might be insufficient permission to access list(l1.next, length - 1) (recursive.vpr@16.9--16.50) [204089]"}
                perm <= UnfoldingMask[null, list(arg_r, arg_length)];
            }
            UnfoldingMask := UnfoldingMask[null, list(arg_r, arg_length):=UnfoldingMask[null, list(arg_r, arg_length)] - perm];
            if (arg_length > 0) {
              perm := FullPerm;
              assume arg_r != null;
              UnfoldingMask := UnfoldingMask[arg_r, val:=UnfoldingMask[arg_r, val] + perm];
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              assume arg_r != null;
              UnfoldingMask := UnfoldingMask[arg_r, next:=UnfoldingMask[arg_r, next] + perm];
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, list(UnfoldingHeap[arg_r, next], arg_length - 1):=UnfoldingMask[null, list(UnfoldingHeap[arg_r, next], arg_length - 1)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(list(arg_r, arg_length), UnfoldingHeap[null, list(arg_r, arg_length)], list(UnfoldingHeap[arg_r, next], arg_length - 1), UnfoldingHeap[null, list(UnfoldingHeap[arg_r, next], arg_length - 1)]);
              assume state(UnfoldingHeap, UnfoldingMask);
            }
            assume state(UnfoldingHeap, UnfoldingMask);
            
            // -- Free assumptions (exp module)
              if (arg_length > 0) {
                Heap := Heap[null, list#sm(arg_r, arg_length):=Heap[null, list#sm(arg_r, arg_length)][arg_r, val:=true]];
                Heap := Heap[null, list#sm(arg_r, arg_length):=Heap[null, list#sm(arg_r, arg_length)][arg_r, next:=true]];
                havoc newPMask;
                assume (forall <A, B> o_38: Ref, f_2: (Field A B) ::
                  { newPMask[o_38, f_2] }
                  Heap[null, list#sm(arg_r, arg_length)][o_38, f_2] || Heap[null, list#sm(Heap[arg_r, next], arg_length - 1)][o_38, f_2] ==> newPMask[o_38, f_2]
                );
                Heap := Heap[null, list#sm(arg_r, arg_length):=newPMask];
              }
              assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(l1, length), write) -- recursive.vpr@39.5--39.26
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (length_3 > 0) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding list(l1, length) might fail. There might be insufficient permission to access l1.val (recursive.vpr@39.5--39.26) [204092]"}
          perm <= Mask[l1_1, val];
      }
      Mask := Mask[l1_1, val:=Mask[l1_1, val] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding list(l1, length) might fail. There might be insufficient permission to access l1.next (recursive.vpr@39.5--39.26) [204094]"}
          perm <= Mask[l1_1, next];
      }
      Mask := Mask[l1_1, next:=Mask[l1_1, next] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding list(l1, length) might fail. There might be insufficient permission to access list(l1.next, length - 1) (recursive.vpr@39.5--39.26) [204096]"}
          perm <= Mask[null, list(Heap[l1_1, next], length_3 - 1)];
      }
      Mask := Mask[null, list(Heap[l1_1, next], length_3 - 1):=Mask[null, list(Heap[l1_1, next], length_3 - 1)] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(list(l1_1, length_3), Heap[null, list(l1_1, length_3)], list(Heap[l1_1, next], length_3 - 1), Heap[null, list(Heap[l1_1, next], length_3 - 1)]);
    }
    perm := FullPerm;
    Mask := Mask[null, list(l1_1, length_3):=Mask[null, list(l1_1, length_3)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list#trigger(Heap, list(l1_1, length_3));
    assume Heap[null, list(l1_1, length_3)] == FrameFragment((if length_3 > 0 then CombineFrames(FrameFragment(Heap[l1_1, val]), CombineFrames(FrameFragment(Heap[l1_1, next]), Heap[null, list(Heap[l1_1, next], length_3 - 1)])) else EmptyFrame));
    if (!HasDirectPerm(Mask, null, list(l1_1, length_3))) {
      Heap := Heap[null, list#sm(l1_1, length_3):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list(l1_1, length_3):=freshVersion];
    }
    if (length_3 > 0) {
      Heap := Heap[null, list#sm(l1_1, length_3):=Heap[null, list#sm(l1_1, length_3)][l1_1, val:=true]];
      Heap := Heap[null, list#sm(l1_1, length_3):=Heap[null, list#sm(l1_1, length_3)][l1_1, next:=true]];
      havoc newPMask;
      assume (forall <A, B> o_55: Ref, f_23: (Field A B) ::
        { newPMask[o_55, f_23] }
        Heap[null, list#sm(l1_1, length_3)][o_55, f_23] || Heap[null, list#sm(Heap[l1_1, next], length_3 - 1)][o_55, f_23] ==> newPMask[o_55, f_23]
      );
      Heap := Heap[null, list#sm(l1_1, length_3):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of m2 might not hold. There might be insufficient permission to access list(l1, length) (recursive.vpr@30.10--30.31) [204098]"}
        perm <= Mask[null, list(l1_1, length_3)];
    }
    Mask := Mask[null, list(l1_1, length_3):=Mask[null, list(l1_1, length_3)] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of m2 might not hold. There might be insufficient permission to access list(l2, length) (recursive.vpr@31.10--31.31) [204099]"}
        perm <= Mask[null, list(l2, length_3)];
    }
    Mask := Mask[null, list(l2, length_3):=Mask[null, list(l2, length_3)] - perm];
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume list#trigger(UnfoldingHeap, list(l1_1, length_3));
      assume UnfoldingHeap[null, list(l1_1, length_3)] == FrameFragment((if length_3 > 0 then CombineFrames(FrameFragment(UnfoldingHeap[l1_1, val]), CombineFrames(FrameFragment(UnfoldingHeap[l1_1, next]), UnfoldingHeap[null, list(UnfoldingHeap[l1_1, next], length_3 - 1)])) else EmptyFrame));
      ExhaleWellDef1Mask := UnfoldingMask;
      ExhaleWellDef1Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of m2 might not hold. There might be insufficient permission to access list(l1, length) (recursive.vpr@32.9--32.52) [204100]"}
          perm <= UnfoldingMask[null, list(l1_1, length_3)];
      }
      UnfoldingMask := UnfoldingMask[null, list(l1_1, length_3):=UnfoldingMask[null, list(l1_1, length_3)] - perm];
      if (length_3 > 0) {
        perm := FullPerm;
        assume l1_1 != null;
        UnfoldingMask := UnfoldingMask[l1_1, val:=UnfoldingMask[l1_1, val] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume l1_1 != null;
        UnfoldingMask := UnfoldingMask[l1_1, next:=UnfoldingMask[l1_1, next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, list(UnfoldingHeap[l1_1, next], length_3 - 1):=UnfoldingMask[null, list(UnfoldingHeap[l1_1, next], length_3 - 1)] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(list(l1_1, length_3), UnfoldingHeap[null, list(l1_1, length_3)], list(UnfoldingHeap[l1_1, next], length_3 - 1), UnfoldingHeap[null, list(UnfoldingHeap[l1_1, next], length_3 - 1)]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
    assert {:msg "  Postcondition of m2 might not hold. Assertion l1.val == v might not hold. (recursive.vpr@32.9--32.52) [204101]"}
      Heap[l1_1, val] == v_2;
    
    // -- Free assumptions (exhale module)
      if (length_3 > 0) {
        Heap := Heap[null, list#sm(l1_1, length_3):=Heap[null, list#sm(l1_1, length_3)][l1_1, val:=true]];
        Heap := Heap[null, list#sm(l1_1, length_3):=Heap[null, list#sm(l1_1, length_3)][l1_1, next:=true]];
        havoc newPMask;
        assume (forall <A, B> o_54: Ref, f_22: (Field A B) ::
          { newPMask[o_54, f_22] }
          Heap[null, list#sm(l1_1, length_3)][o_54, f_22] || Heap[null, list#sm(Heap[l1_1, next], length_3 - 1)][o_54, f_22] ==> newPMask[o_54, f_22]
        );
        Heap := Heap[null, list#sm(l1_1, length_3):=newPMask];
      }
      assume state(Heap, Mask);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}