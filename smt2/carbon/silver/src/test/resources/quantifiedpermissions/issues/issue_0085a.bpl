// 
// Translation of Viper program.
// 
// Date:         2025-01-08 21:35:28
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/issues/issue_0085a.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/issues/issue_0085a-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_20: Ref, f_17: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_20, f_17] }
  Heap[o_20, $allocated] ==> Heap[Heap[o_20, f_17], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_27: Ref, f_24: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_27, f_24] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_27, f_24) ==> Heap[o_27, f_24] == ExhaleHeap[o_27, f_24]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_9: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_9), ExhaleHeap[null, PredicateMaskField(pm_f_9)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_9) && IsPredicateField(pm_f_9) ==> Heap[null, PredicateMaskField(pm_f_9)] == ExhaleHeap[null, PredicateMaskField(pm_f_9)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_9: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_9) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_9) && IsPredicateField(pm_f_9) ==> (forall <A, B> o2_9: Ref, f_24: (Field A B) ::
    { ExhaleHeap[o2_9, f_24] }
    Heap[null, PredicateMaskField(pm_f_9)][o2_9, f_24] ==> Heap[o2_9, f_24] == ExhaleHeap[o2_9, f_24]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_9: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_9), ExhaleHeap[null, WandMaskField(pm_f_9)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_9) && IsWandField(pm_f_9) ==> Heap[null, WandMaskField(pm_f_9)] == ExhaleHeap[null, WandMaskField(pm_f_9)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_9: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_9) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_9) && IsWandField(pm_f_9) ==> (forall <A, B> o2_9: Ref, f_24: (Field A B) ::
    { ExhaleHeap[o2_9, f_24] }
    Heap[null, WandMaskField(pm_f_9)][o2_9, f_24] ==> Heap[o2_9, f_24] == ExhaleHeap[o2_9, f_24]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_27: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_27, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_27, $allocated] ==> ExhaleHeap[o_27, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_20: Ref, f_31: (Field A B), v: B ::
  { Heap[o_20, f_31:=v] }
  succHeap(Heap, Heap[o_20, f_31:=v])
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

function  neverTriggered1(x_2_2: Ref): bool;
function  neverTriggered2(x: Ref): bool;
function  neverTriggered3(x_1: Ref): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): Ref;
function  invRecv2(recv: Ref): Ref;
function  invRecv3(recv: Ref): Ref;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(recv: Ref): bool;
function  qpRange2(recv: Ref): bool;
function  qpRange3(recv: Ref): bool;

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

const unique n_10: Field NormalField (Set Ref);
axiom !IsPredicateField(n_10);
axiom !IsWandField(n_10);
const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);

// ==================================================
// Translation of predicate P
// ==================================================

type PredicateType_P;
function  P(this: Ref): Field PredicateType_P FrameType;
function  P#sm(this: Ref): Field PredicateType_P PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(P(this)) }
  PredicateMaskField(P(this)) == P#sm(this)
);
axiom (forall this: Ref ::
  { P(this) }
  IsPredicateField(P(this))
);
axiom (forall this: Ref ::
  { P(this) }
  getPredWandId(P(this)) == 0
);
function  P#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  P#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { P(this), P(this2) }
  P(this) == P(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { P#sm(this), P#sm(this2) }
  P#sm(this) == P#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { P#trigger(Heap, P(this)) }
  P#everUsed(P(this))
);

procedure P#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of P
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, n_10:=Mask[this, n_10] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate inv
// ==================================================

type PredicateType_inv;
function  inv(this: Ref): Field PredicateType_inv FrameType;
function  inv#sm(this: Ref): Field PredicateType_inv PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(inv(this)) }
  PredicateMaskField(inv(this)) == inv#sm(this)
);
axiom (forall this: Ref ::
  { inv(this) }
  IsPredicateField(inv(this))
);
axiom (forall this: Ref ::
  { inv(this) }
  getPredWandId(inv(this)) == 1
);
function  inv#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  inv#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { inv(this), inv(this2) }
  inv(this) == inv(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { inv#sm(this), inv#sm(this2) }
  inv#sm(this) == inv#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { inv#trigger(Heap, inv(this)) }
  inv#everUsed(inv(this))
);

// ==================================================
// Function used for framing of quantified permission (forall x: Ref :: { (x in this.n) } (x in this.n) ==> acc(x.f, write)) in predicate inv
// ==================================================

function  inv#condqp1(Heap: HeapType, this_1_1: Ref): int;
function  sk_inv#condqp1(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, this: Ref ::
  { inv#condqp1(Heap2Heap, this), inv#condqp1(Heap1Heap, this), succHeapTrans(Heap2Heap, Heap1Heap) }
  (Heap2Heap[this, n_10][sk_inv#condqp1(inv#condqp1(Heap2Heap, this), inv#condqp1(Heap1Heap, this))] && NoPerm < FullPerm <==> Heap1Heap[this, n_10][sk_inv#condqp1(inv#condqp1(Heap2Heap, this), inv#condqp1(Heap1Heap, this))] && NoPerm < FullPerm) && (Heap2Heap[this, n_10][sk_inv#condqp1(inv#condqp1(Heap2Heap, this), inv#condqp1(Heap1Heap, this))] && NoPerm < FullPerm ==> Heap2Heap[sk_inv#condqp1(inv#condqp1(Heap2Heap, this), inv#condqp1(Heap1Heap, this)), f_7] == Heap1Heap[sk_inv#condqp1(inv#condqp1(Heap2Heap, this), inv#condqp1(Heap1Heap, this)), f_7]) ==> inv#condqp1(Heap2Heap, this) == inv#condqp1(Heap1Heap, this)
);

procedure inv#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var QPMask: MaskType;
  
  // -- Check definedness of predicate body of inv
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, n_10:=Mask[this, n_10] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in this.n) } (x in this.n) ==> acc(x.f, write))
      if (*) {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.n (issue_0085a.vpr@29.1--31.2) [70368]"}
          HasDirectPerm(Mask, this, n_10);
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Predicate might not be well-formed. Quantified resource x.f might not be injective. (issue_0085a.vpr@29.1--31.2) [70369]"}
      (forall x_2_2: Ref, x_2_3: Ref ::
      
      (((x_2_2 != x_2_3 && Heap[this, n_10][x_2_2]) && Heap[this, n_10][x_2_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_2_2 != x_2_3
    );
    
    // -- Define Inverse Function
      assume (forall x_2_2: Ref ::
        { Heap[x_2_2, f_7] } { QPMask[x_2_2, f_7] } { Heap[this, n_10][x_2_2] }
        Heap[this, n_10][x_2_2] && NoPerm < FullPerm ==> qpRange1(x_2_2) && invRecv1(x_2_2) == x_2_2
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        (Heap[this, n_10][invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4) ==> invRecv1(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_2_2: Ref ::
        { Heap[x_2_2, f_7] } { QPMask[x_2_2, f_7] } { Heap[this, n_10][x_2_2] }
        Heap[this, n_10][x_2_2] ==> x_2_2 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Heap[this, n_10][invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4) ==> (NoPerm < FullPerm ==> invRecv1(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((Heap[this, n_10][invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m0
// ==================================================

procedure m0(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    assume this != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, P(this):=Mask[null, P(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: this.n := this.n -- issue_0085a.vpr@16.3--16.19
    
    // -- Check definedness of this.n
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.n (issue_0085a.vpr@16.3--16.19) [70370]"}
        HasDirectPerm(Mask, this, n_10);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.n (issue_0085a.vpr@16.3--16.19) [70371]"}
      FullPerm == Mask[this, n_10];
    Heap := Heap[this, n_10:=Heap[this, n_10]];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m1
// ==================================================

procedure m1(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, P(this):=Mask[null, P(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: unfold acc(P(this), write) -- issue_0085a.vpr@22.2--22.21
    assume P#trigger(Heap, P(this));
    assume Heap[null, P(this)] == FrameFragment(Heap[this, n_10]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding P(this) might fail. There might be insufficient permission to access P(this) (issue_0085a.vpr@22.2--22.21) [70374]"}
        perm <= Mask[null, P(this)];
    }
    Mask := Mask[null, P(this):=Mask[null, P(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, P(this))) {
        havoc newVersion;
        Heap := Heap[null, P(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, n_10:=Mask[this, n_10] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(P(this), write) -- issue_0085a.vpr@23.3--23.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding P(this) might fail. There might be insufficient permission to access this.n (issue_0085a.vpr@23.3--23.20) [70378]"}
        perm <= Mask[this, n_10];
    }
    Mask := Mask[this, n_10:=Mask[this, n_10] - perm];
    perm := FullPerm;
    Mask := Mask[null, P(this):=Mask[null, P(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume P#trigger(Heap, P(this));
    assume Heap[null, P(this)] == FrameFragment(Heap[this, n_10]);
    if (!HasDirectPerm(Mask, null, P(this))) {
      Heap := Heap[null, P#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, P(this):=freshVersion];
    }
    Heap := Heap[null, P#sm(this):=Heap[null, P#sm(this)][this, n_10:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.n := this.n -- issue_0085a.vpr@26.3--26.19
    
    // -- Check definedness of this.n
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.n (issue_0085a.vpr@26.3--26.19) [70380]"}
        HasDirectPerm(Mask, this, n_10);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.n (issue_0085a.vpr@26.3--26.19) [70381]"}
      FullPerm == Mask[this, n_10];
    Heap := Heap[this, n_10:=Heap[this, n_10]];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m2
// ==================================================

procedure m2(this: Ref, xs: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  var QPMask: MaskType;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, inv(this):=Mask[null, inv(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: unfold acc(inv(this), write) -- issue_0085a.vpr@36.3--36.24
    assume inv#trigger(Heap, inv(this));
    assume Heap[null, inv(this)] == CombineFrames(FrameFragment(Heap[this, n_10]), FrameFragment(inv#condqp1(Heap, this)));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding inv(this) might fail. There might be insufficient permission to access inv(this) (issue_0085a.vpr@36.3--36.24) [70384]"}
        perm <= Mask[null, inv(this)];
    }
    Mask := Mask[null, inv(this):=Mask[null, inv(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, inv(this))) {
        havoc newVersion;
        Heap := Heap[null, inv(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, n_10:=Mask[this, n_10] + perm];
    assume state(Heap, Mask);
    havoc QPMask;
    assert {:msg "  Unfolding inv(this) might fail. Quantified resource x.f might not be injective. (issue_0085a.vpr@36.3--36.24) [70386]"}
      (forall x: Ref, x_9: Ref ::
      
      (((x != x_9 && Heap[this, n_10][x]) && Heap[this, n_10][x_9]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x != x_9
    );
    
    // -- Define Inverse Function
      assume (forall x: Ref ::
        { Heap[x, f_7] } { QPMask[x, f_7] } { Heap[this, n_10][x] }
        Heap[this, n_10][x] && NoPerm < FullPerm ==> qpRange2(x) && invRecv2(x) == x
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        (Heap[this, n_10][invRecv2(o_4)] && NoPerm < FullPerm) && qpRange2(o_4) ==> invRecv2(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x: Ref ::
        { Heap[x, f_7] } { QPMask[x, f_7] } { Heap[this, n_10][x] }
        Heap[this, n_10][x] ==> x != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Heap[this, n_10][invRecv2(o_4)] && NoPerm < FullPerm) && qpRange2(o_4) ==> (NoPerm < FullPerm ==> invRecv2(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((Heap[this, n_10][invRecv2(o_4)] && NoPerm < FullPerm) && qpRange2(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(inv(this), write) -- issue_0085a.vpr@37.3--37.22
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding inv(this) might fail. There might be insufficient permission to access this.n (issue_0085a.vpr@37.3--37.22) [70389]"}
        perm <= Mask[this, n_10];
    }
    Mask := Mask[this, n_10:=Mask[this, n_10] - perm];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver x is injective
      assert {:msg "  Folding inv(this) might fail. Quantified resource x.f might not be injective. (issue_0085a.vpr@37.3--37.22) [70391]"}
        (forall x_1: Ref, x_1_1: Ref ::
        { neverTriggered3(x_1), neverTriggered3(x_1_1) }
        (((x_1 != x_1_1 && Heap[this, n_10][x_1]) && Heap[this, n_10][x_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding inv(this) might fail. There might be insufficient permission to access x.f (issue_0085a.vpr@37.3--37.22) [70392]"}
        (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { Heap[this, n_10][x_1] }
        Heap[this, n_10][x_1] ==> Mask[x_1, f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { Heap[this, n_10][x_1] }
        Heap[this, n_10][x_1] && NoPerm < FullPerm ==> qpRange3(x_1) && invRecv3(x_1) == x_1
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        Heap[this, n_10][invRecv3(o_4)] && (NoPerm < FullPerm && qpRange3(o_4)) ==> invRecv3(o_4) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Heap[this, n_10][invRecv3(o_4)] && (NoPerm < FullPerm && qpRange3(o_4)) ==> invRecv3(o_4) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!(Heap[this, n_10][invRecv3(o_4)] && (NoPerm < FullPerm && qpRange3(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    perm := FullPerm;
    Mask := Mask[null, inv(this):=Mask[null, inv(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume inv#trigger(Heap, inv(this));
    assume Heap[null, inv(this)] == CombineFrames(FrameFragment(Heap[this, n_10]), FrameFragment(inv#condqp1(Heap, this)));
    if (!HasDirectPerm(Mask, null, inv(this))) {
      Heap := Heap[null, inv#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, inv(this):=freshVersion];
    }
    Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, n_10:=true]];
    // register all known folded permissions guarded by predicate inv
    havoc newPMask;
    assume (forall <A, B> o_25: Ref, f_28: (Field A B) ::
      { newPMask[o_25, f_28] }
      Heap[null, inv#sm(this)][o_25, f_28] ==> newPMask[o_25, f_28]
    );
    assume (forall x_2_2: Ref ::
      
      Heap[this, n_10][x_2_2] ==> newPMask[x_2_2, f_7]
    );
    Heap := Heap[null, inv#sm(this):=newPMask];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.n := xs -- issue_0085a.vpr@40.3--40.15
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.n (issue_0085a.vpr@40.3--40.15) [70394]"}
      FullPerm == Mask[this, n_10];
    Heap := Heap[this, n_10:=xs];
    assume state(Heap, Mask);
}