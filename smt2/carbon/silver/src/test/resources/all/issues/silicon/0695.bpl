// 
// Translation of Viper program.
// 
// Date:         2024-12-27 02:41:16
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0695.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0695-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_38: Ref, f_44: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_38, f_44] }
  Heap[o_38, $allocated] ==> Heap[Heap[o_38, f_44], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_39: Ref, f_45: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_39, f_45] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_39, f_45) ==> Heap[o_39, f_45] == ExhaleHeap[o_39, f_45]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_15: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_15), ExhaleHeap[null, PredicateMaskField(pm_f_15)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_15) && IsPredicateField(pm_f_15) ==> Heap[null, PredicateMaskField(pm_f_15)] == ExhaleHeap[null, PredicateMaskField(pm_f_15)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_15: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_15) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_15) && IsPredicateField(pm_f_15) ==> (forall <A, B> o2_15: Ref, f_45: (Field A B) ::
    { ExhaleHeap[o2_15, f_45] }
    Heap[null, PredicateMaskField(pm_f_15)][o2_15, f_45] ==> Heap[o2_15, f_45] == ExhaleHeap[o2_15, f_45]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_15: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_15), ExhaleHeap[null, WandMaskField(pm_f_15)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_15) && IsWandField(pm_f_15) ==> Heap[null, WandMaskField(pm_f_15)] == ExhaleHeap[null, WandMaskField(pm_f_15)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_15: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_15) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_15) && IsWandField(pm_f_15) ==> (forall <A, B> o2_15: Ref, f_45: (Field A B) ::
    { ExhaleHeap[o2_15, f_45] }
    Heap[null, WandMaskField(pm_f_15)][o2_15, f_45] ==> Heap[o2_15, f_45] == ExhaleHeap[o2_15, f_45]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_39: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_39, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_39, $allocated] ==> ExhaleHeap[o_39, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_38: Ref, f_40: (Field A B), v: B ::
  { Heap[o_38, f_40:=v] }
  succHeap(Heap, Heap[o_38, f_40:=v])
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

function  neverTriggered1(x$0_2: Ref): bool;
function  neverTriggered2(x$0_6: Ref): bool;
function  neverTriggered3(x_7: Ref): bool;
function  neverTriggered4(x_15_2: Ref): bool;
function  neverTriggered5(x$0_2: Ref): bool;
function  neverTriggered6(x$0_6: Ref): bool;
function  neverTriggered7(x$0_12: Ref): bool;
function  neverTriggered8(x$0_17: Ref): bool;
function  neverTriggered9(x_1: Ref): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(x_2_1: Ref): Ref;
function  invRecv2(x_3_1_1: Ref): Ref;
function  invRecv3(x_8_1_1: Ref): Ref;
function  invRecv4(x_16_1_1: Ref): Ref;
function  invRecv5(x_1_1_1: Ref): Ref;
function  invRecv6(x_2_1: Ref): Ref;
function  invRecv7(x_3_1_1: Ref): Ref;
function  invRecv8(x_4_1_1: Ref): Ref;
function  invRecv9(x_2_1: Ref): Ref;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(x_2_1: Ref): bool;
function  qpRange2(x_3_1_1: Ref): bool;
function  qpRange3(x_8_1_1: Ref): bool;
function  qpRange4(x_16_1_1: Ref): bool;
function  qpRange5(x_1_1_1: Ref): bool;
function  qpRange6(x_2_1: Ref): bool;
function  qpRange7(x_3_1_1: Ref): bool;
function  qpRange8(x_4_1_1: Ref): bool;
function  qpRange9(x_2_1: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 1: valid_lft
// - height 0: get_disc
const AssumeFunctionsAbove: int;
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
// Preamble of Map module.
// ==================================================


type Map U V;

// A Map is defined by three functions, Map#Domain, Map#Elements, and #Map#Card.

function Map#Domain<U,V>(Map U V) : Set U;

function Map#Elements<U,V>(Map U V) : [U]V;

function Map#Card<U,V>(Map U V) : int;

axiom (forall<U,V> m: Map U V :: { Map#Card(m) } 0 <= Map#Card(m));

// The set of Keys of a Map are available by Map#Domain, and the cardinality of that
// set is given by Map#Card.

  /* added second trigger set */

axiom (forall<U,V> m: Map U V :: { Set#Card(Map#Domain(m)) } { Map#Card(m) }
  Set#Card(Map#Domain(m)) == Map#Card(m));

// The set of Values of a Map can be obtained by the function Map#Values, which is
// defined as follows.  Remember, a Set is defined by membership (using Boogie's
// square brackets) and Map#Card, so we need to define what these mean for the Set
// returned by Map#Values.

function Map#Values<U,V>(Map U V) : Set V;

  /* split axiom into each direction */

axiom (forall<U,V> m: Map U V, v: V :: { Map#Values(m)[v] }
  Map#Values(m)[v] ==>
	(exists u: U :: { Map#Domain(m)[u] } { Map#Elements(m)[u] }
	  Map#Domain(m)[u] &&
    v == Map#Elements(m)[u]));

axiom (forall<U,V> m: Map U V, u: U ::  { Map#Elements(m)[u] } // { Map#Domain(m)[u] } // REMOVED this trigger due to a potential for matching loops
	  Map#Domain(m)[u]
    ==> Map#Values(m)[Map#Elements(m)[u]]);
// There's a potential for matching loops with the extra trigger if two maps have equal domains:
// v in range(m1); some k in dom(m1) = dom(m2) s.t. m1[k] = v; m2[k] in range(m2); some k' in dom(m2) s.t. m2[k'] = m2[k]

axiom (forall<U,V> m: Map U V, u: U ::  { Map#Domain(m)[u] } { Map#Elements(m)[u] }
	  Map#Domain(m)[u]
    ==> Set#Card(Map#Values(m)) > 0); // weaker property than above, with weaker triggers

 // Here are the operations that produce Map values.

function Map#Empty<U, V>(): Map U V;
axiom (forall<U, V> u: U ::
        { Map#Domain(Map#Empty(): Map U V)[u] }
        !Map#Domain(Map#Empty(): Map U V)[u]);

axiom (forall<U, V> m: Map U V :: { Map#Card(m) }
 (Map#Card(m) == 0 <==> m == Map#Empty()) &&
 (Map#Card(m) != 0 ==> (exists x: U :: Map#Domain(m)[x])) &&
 ((forall x: U :: {Map#Domain(m)[x]} Map#Domain(m)[x] ==> Map#Card(m) != 0)));

//Build is used in displays, and for map updates
function Map#Build<U, V>(Map U V, U, V): Map U V;

/* added second trigger set (cf. example3 test case, test3) */
axiom (forall<U, V> m: Map U V, u: U, u': U, v: V ::
  { Map#Domain(Map#Build(m, u, v))[u'] } { Map#Domain(m)[u'],Map#Build(m, u, v) } { Map#Elements(Map#Build(m, u, v))[u'] }
  (u' == u ==> Map#Domain(Map#Build(m, u, v))[u'] &&
               Map#Elements(Map#Build(m, u, v))[u'] == v) &&
  (u' != u ==> Map#Domain(Map#Build(m, u, v))[u'] == Map#Domain(m)[u'] &&
               Map#Elements(Map#Build(m, u, v))[u'] == Map#Elements(m)[u']));
/* added second trigger set (not sure of a test case needing it, though) */
axiom (forall<U, V> m: Map U V, u: U, v: V :: { Map#Card(Map#Build(m, u, v)) }{ Map#Card(m),Map#Build(m, u, v) }
  Map#Domain(m)[u] ==> Map#Card(Map#Build(m, u, v)) == Map#Card(m));
/* added second trigger set (not sure of a test case needing it, though) */
axiom (forall<U, V> m: Map U V, u: U, v: V :: { Map#Card(Map#Build(m, u, v)) }{ Map#Card(m),Map#Build(m, u, v) }
  !Map#Domain(m)[u] ==> Map#Card(Map#Build(m, u, v)) == Map#Card(m) + 1);

//equality for maps
  // this axiom is only needed in one direction; the other is implied by the next axiom

function Map#Equal<U, V>(Map U V, Map U V): bool;
axiom (forall<U, V> m: Map U V, m': Map U V::
  { Map#Equal(m, m') }
   (forall u : U :: Map#Domain(m)[u] == Map#Domain(m')[u]) &&
     (forall u : U :: Map#Domain(m)[u] ==> Map#Elements(m)[u] == Map#Elements(m')[u]) ==> Map#Equal(m, m'));
// extensionality
axiom (forall<U, V> m: Map U V, m': Map U V::
  { Map#Equal(m, m') }
    Map#Equal(m, m') ==> m == m');

function Map#Disjoint<U, V>(Map U V, Map U V): bool;
// split in both directions
axiom (forall<U, V> m: Map U V, m': Map U V ::
  { Map#Disjoint(m, m') }
    Map#Disjoint(m, m') ==> (forall o: U :: {Map#Domain(m)[o]} {Map#Domain(m')[o]} !Map#Domain(m)[o] || !Map#Domain(m')[o]));
axiom (forall<U, V> m: Map U V, m': Map U V ::
  { Map#Disjoint(m, m') }
    !Map#Disjoint(m, m') ==> (exists o: U :: {Map#Domain(m)[o]} {Map#Domain(m')[o]} Map#Domain(m)[o] && Map#Domain(m')[o]));



// ==================================================
// Preamble of Wand Module.
// ==================================================

type WandType_wand;
function  wand(arg1: bool, arg2: (Map int (Map Ref Perm)), arg3: bool, arg4: (Map int (Map Ref Perm))): Field WandType_wand int;
function  wand#sm(arg1: bool, arg2: (Map int (Map Ref Perm)), arg3: bool, arg4: (Map int (Map Ref Perm))): Field WandType_wand PMaskType;
function  wand#ft(arg1: bool, arg2: (Map int (Map Ref Perm)), arg3: bool, arg4: (Map int (Map Ref Perm))): Field WandType_wand FrameType;
axiom (forall arg1: bool, arg2: (Map int (Map Ref Perm)), arg3: bool, arg4: (Map int (Map Ref Perm)) ::
  { wand(arg1, arg2, arg3, arg4) }
  IsWandField(wand(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: (Map int (Map Ref Perm)), arg3: bool, arg4: (Map int (Map Ref Perm)) ::
  { wand#ft(arg1, arg2, arg3, arg4) }
  IsWandField(wand#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: (Map int (Map Ref Perm)), arg3: bool, arg4: (Map int (Map Ref Perm)) ::
  { wand(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: (Map int (Map Ref Perm)), arg3: bool, arg4: (Map int (Map Ref Perm)) ::
  { wand#ft(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: (Map int (Map Ref Perm)), arg3: bool, arg4: (Map int (Map Ref Perm)) ::
  { WandMaskField(wand#ft(arg1, arg2, arg3, arg4)) }
  wand#sm(arg1, arg2, arg3, arg4) == WandMaskField(wand#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: (Map int (Map Ref Perm)), arg3: bool, arg4: (Map int (Map Ref Perm)) ::
  { wand(arg1, arg2, arg3, arg4) }
  getPredWandId(wand(arg1, arg2, arg3, arg4)) == 8
);
axiom (forall arg1: bool, arg2: (Map int (Map Ref Perm)), arg3: bool, arg4: (Map int (Map Ref Perm)), arg1_2: bool, arg2_2: (Map int (Map Ref Perm)), arg3_2: bool, arg4_2: (Map int (Map Ref Perm)) ::
  { wand(arg1, arg2, arg3, arg4), wand(arg1_2, arg2_2, arg3_2, arg4_2) }
  wand(arg1, arg2, arg3, arg4) == wand(arg1_2, arg2_2, arg3_2, arg4_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && arg4 == arg4_2))
);
type WandType_wand_1;
function  wand_1(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref): Field WandType_wand_1 int;
function  wand_1#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref): Field WandType_wand_1 PMaskType;
function  wand_1#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref): Field WandType_wand_1 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6) }
  IsWandField(wand_1(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref ::
  { wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6) }
  IsWandField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6) }
  !IsPredicateField(wand_1(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref ::
  { wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6) }
  !IsPredicateField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref ::
  { WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6)) }
  wand_1#sm(arg1, arg2, arg3, arg4, arg5, arg6) == WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6) }
  getPredWandId(wand_1(arg1, arg2, arg3, arg4, arg5, arg6)) == 9
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm, arg5_2: Ref, arg6_2: Ref ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6), wand_1(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) }
  wand_1(arg1, arg2, arg3, arg4, arg5, arg6) == wand_1(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && arg6 == arg6_2))))
);

// ==================================================
// Translation of all fields
// ==================================================

const unique ref_2: Field NormalField Ref;
axiom !IsPredicateField(ref_2);
axiom !IsWandField(ref_2);
const unique f_7: Field NormalField Ref;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);
const unique n_10: Field NormalField Ref;
axiom !IsPredicateField(n_10);
axiom !IsWandField(n_10);

// ==================================================
// Translation of function valid_lft
// ==================================================

// Uninterpreted function definitions
function  valid_lft(Heap: HeapType, lft_1: (Map int (Map Ref Perm))): bool;
function  valid_lft'(Heap: HeapType, lft_1: (Map int (Map Ref Perm))): bool;
axiom (forall Heap: HeapType, lft_1: (Map int (Map Ref Perm)) ::
  { valid_lft(Heap, lft_1) }
  valid_lft(Heap, lft_1) == valid_lft'(Heap, lft_1) && dummyFunction(valid_lft#triggerStateless(lft_1))
);
axiom (forall Heap: HeapType, lft_1: (Map int (Map Ref Perm)) ::
  { valid_lft'(Heap, lft_1) }
  dummyFunction(valid_lft#triggerStateless(lft_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, lft_1: (Map int (Map Ref Perm)) ::
  { state(Heap, Mask), valid_lft(Heap, lft_1) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> valid_lft(Heap, lft_1) == (Map#Domain(lft_1)[0] && Map#Domain(lft_1)[1])
);

// Framing axioms
function  valid_lft#frame(frame: FrameType, lft_1: (Map int (Map Ref Perm))): bool;
axiom (forall Heap: HeapType, Mask: MaskType, lft_1: (Map int (Map Ref Perm)) ::
  { state(Heap, Mask), valid_lft'(Heap, lft_1) }
  state(Heap, Mask) ==> valid_lft'(Heap, lft_1) == valid_lft#frame(EmptyFrame, lft_1)
);

// Trigger function (controlling recursive postconditions)
function  valid_lft#trigger(frame: FrameType, lft_1: (Map int (Map Ref Perm))): bool;

// State-independent trigger function
function  valid_lft#triggerStateless(lft_1: (Map int (Map Ref Perm))): bool;

// Check contract well-formedness and postcondition
procedure valid_lft#definedness(lft_1: (Map int (Map Ref Perm))) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Translate function body
    Result := Map#Domain(lft_1)[0] && Map#Domain(lft_1)[1];
}

// ==================================================
// Translation of function get_disc
// ==================================================

// Uninterpreted function definitions
function  get_disc(Heap: HeapType, x: Ref, lft_1: (Map int (Map Ref Perm))): Ref;
function  get_disc'(Heap: HeapType, x: Ref, lft_1: (Map int (Map Ref Perm))): Ref;
axiom (forall Heap: HeapType, x: Ref, lft_1: (Map int (Map Ref Perm)) ::
  { get_disc(Heap, x, lft_1) }
  get_disc(Heap, x, lft_1) == get_disc'(Heap, x, lft_1) && dummyFunction(get_disc#triggerStateless(x, lft_1))
);
axiom (forall Heap: HeapType, x: Ref, lft_1: (Map int (Map Ref Perm)) ::
  { get_disc'(Heap, x, lft_1) }
  dummyFunction(get_disc#triggerStateless(x, lft_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, lft_1: (Map int (Map Ref Perm)) ::
  { state(Heap, Mask), get_disc(Heap, x, lft_1) } { state(Heap, Mask), get_disc#triggerStateless(x, lft_1), LifetimeP#trigger(Heap, LifetimeP(lft_1)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> valid_lft(Heap, lft_1) && (valid_lft(Heap, lft_1) && Map#Domain(Map#Elements(lft_1)[1])[x]) ==> get_disc(Heap, x, lft_1) == Heap[x, ref_2]
);

// Framing axioms
function  get_disc#frame(frame: FrameType, x: Ref, lft_1: (Map int (Map Ref Perm))): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, lft_1: (Map int (Map Ref Perm)) ::
  { state(Heap, Mask), get_disc'(Heap, x, lft_1) }
  state(Heap, Mask) ==> get_disc'(Heap, x, lft_1) == get_disc#frame(CombineFrames(Heap[null, LifetimeP(lft_1)], FrameFragment(EmptyFrame)), x, lft_1)
);

// Trigger function (controlling recursive postconditions)
function  get_disc#trigger(frame: FrameType, x: Ref, lft_1: (Map int (Map Ref Perm))): bool;

// State-independent trigger function
function  get_disc#triggerStateless(x: Ref, lft_1: (Map int (Map Ref Perm))): Ref;

// Check contract well-formedness and postcondition
procedure get_disc#definedness(x: Ref, lft_1: (Map int (Map Ref Perm))) returns (Result: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var QPMask: MaskType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var wildcard: real where wildcard > NoPerm;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    assume state(Heap, Mask);
    
    // -- Check definedness of valid_lft(lft)
      if (*) {
        // Stop execution
        assume false;
      }
    assume valid_lft(Heap, lft_1);
    perm := FullPerm;
    Mask := Mask[null, LifetimeP(lft_1):=Mask[null, LifetimeP(lft_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of valid_lft(lft)
      if (*) {
        // Stop execution
        assume false;
      }
    assume valid_lft(Heap, lft_1);
    
    // -- Check definedness of (x in lft[1])
      assert {:msg "  Contract might not be well-formed. Map lft might not contain an entry at key 1. (0695.vpr@41.12--41.35) [207855]"}
        Map#Domain(lft_1)[1];
    assume Map#Domain(Map#Elements(lft_1)[1])[x];
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(LifetimeP(lft), write) in (unfolding acc(lft_List(x), wildcard) in x.ref))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume LifetimeP#trigger(UnfoldingHeap, LifetimeP(lft_1));
      assume UnfoldingHeap[null, LifetimeP(lft_1)] == CombineFrames(FrameFragment(LifetimeP#condqp1(UnfoldingHeap, lft_1)), FrameFragment(LifetimeP#condqp2(UnfoldingHeap, lft_1)));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access LifetimeP(lft) (0695.vpr@39.1--44.2) [207856]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, LifetimeP(lft_1)];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume valid_lft(UnfoldingHeap, lft_1);
      assume (forall x$0: Ref ::
        { Map#Domain(Map#Elements(lft_1)[0])[x$0] } { Map#Elements(Map#Elements(lft_1)[0])[x$0] }
        Map#Domain(Map#Elements(lft_1)[0])[x$0] ==> 0 / 1 < Map#Elements(Map#Elements(lft_1)[0])[x$0]
      );
      assume (forall x$0_1: Ref ::
        { Map#Domain(Map#Elements(lft_1)[0])[x$0_1] } { Map#Elements(Map#Elements(lft_1)[0])[x$0_1] }
        Map#Domain(Map#Elements(lft_1)[0])[x$0_1] ==> Map#Elements(Map#Elements(lft_1)[0])[x$0_1] <= 1 / 1
      );
      havoc QPMask;
      
      // -- check if receiver acc(lft_T(x$0), lft[0][x$0]) is injective
        assert {:msg "  Function might not be well-formed. Quantified resource lft_T(x$0) might not be injective. (0695.vpr@39.1--44.2) [207857]"}
          (forall x$0_2: Ref, x$0_2_1: Ref ::
          { neverTriggered1(x$0_2), neverTriggered1(x$0_2_1) }
          (((x$0_2 != x$0_2_1 && Map#Domain(Map#Elements(lft_1)[0])[x$0_2]) && Map#Domain(Map#Elements(lft_1)[0])[x$0_2_1]) && NoPerm < Map#Elements(Map#Elements(lft_1)[0])[x$0_2]) && NoPerm < Map#Elements(Map#Elements(lft_1)[0])[x$0_2_1] ==> x$0_2 != x$0_2_1
        );
      
      // -- Define Inverse Function
        assume (forall x$0_2: Ref ::
          { UnfoldingHeap[null, lft_T(x$0_2)] } { UnfoldingMask[null, lft_T(x$0_2)] } { Map#Domain(Map#Elements(lft_1)[0])[x$0_2] } { Map#Elements(Map#Elements(lft_1)[0])[x$0_2] }
          Map#Domain(Map#Elements(lft_1)[0])[x$0_2] && NoPerm < Map#Elements(Map#Elements(lft_1)[0])[x$0_2] ==> invRecv1(x$0_2) == x$0_2 && qpRange1(x$0_2)
        );
        assume (forall x_2_1: Ref ::
          { invRecv1(x_2_1) }
          (Map#Domain(Map#Elements(lft_1)[0])[invRecv1(x_2_1)] && NoPerm < Map#Elements(Map#Elements(lft_1)[0])[invRecv1(x_2_1)]) && qpRange1(x_2_1) ==> invRecv1(x_2_1) == x_2_1
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Function might not be well-formed. Fraction lft[0][x$0] might be negative. (0695.vpr@39.1--44.2) [207858]"}
        (forall x$0_2: Ref ::
        { UnfoldingHeap[null, lft_T(x$0_2)] } { UnfoldingMask[null, lft_T(x$0_2)] } { Map#Domain(Map#Elements(lft_1)[0])[x$0_2] } { Map#Elements(Map#Elements(lft_1)[0])[x$0_2] }
        Map#Domain(Map#Elements(lft_1)[0])[x$0_2] ==> Map#Elements(Map#Elements(lft_1)[0])[x$0_2] >= NoPerm
      );
      
      // -- Define updated permissions
        assume (forall x_2_1: Ref ::
          { QPMask[null, lft_T(x_2_1)] }
          (Map#Domain(Map#Elements(lft_1)[0])[invRecv1(x_2_1)] && NoPerm < Map#Elements(Map#Elements(lft_1)[0])[invRecv1(x_2_1)]) && qpRange1(x_2_1) ==> (NoPerm < Map#Elements(Map#Elements(lft_1)[0])[invRecv1(x_2_1)] ==> invRecv1(x_2_1) == x_2_1) && QPMask[null, lft_T(x_2_1)] == UnfoldingMask[null, lft_T(x_2_1)] + Map#Elements(Map#Elements(lft_1)[0])[invRecv1(x_2_1)]
        );
      
      // -- Define independent locations
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { UnfoldingMask[o_4, f_5] } { QPMask[o_4, f_5] }
          (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> UnfoldingMask[o_4, f_5] == QPMask[o_4, f_5]
        );
        assume (forall x_2_1: Ref ::
          { QPMask[null, lft_T(x_2_1)] }
          !((Map#Domain(Map#Elements(lft_1)[0])[invRecv1(x_2_1)] && NoPerm < Map#Elements(Map#Elements(lft_1)[0])[invRecv1(x_2_1)]) && qpRange1(x_2_1)) ==> QPMask[null, lft_T(x_2_1)] == UnfoldingMask[null, lft_T(x_2_1)]
        );
      UnfoldingMask := QPMask;
      assume state(UnfoldingHeap, UnfoldingMask);
      assume (forall x$0_4: Ref ::
        { Map#Domain(Map#Elements(lft_1)[1])[x$0_4] } { Map#Elements(Map#Elements(lft_1)[1])[x$0_4] }
        Map#Domain(Map#Elements(lft_1)[1])[x$0_4] ==> 0 / 1 < Map#Elements(Map#Elements(lft_1)[1])[x$0_4]
      );
      assume (forall x$0_5: Ref ::
        { Map#Domain(Map#Elements(lft_1)[1])[x$0_5] } { Map#Elements(Map#Elements(lft_1)[1])[x$0_5] }
        Map#Domain(Map#Elements(lft_1)[1])[x$0_5] ==> Map#Elements(Map#Elements(lft_1)[1])[x$0_5] <= 1 / 1
      );
      havoc QPMask;
      
      // -- check if receiver acc(lft_List(x$0), lft[1][x$0]) is injective
        assert {:msg "  Function might not be well-formed. Quantified resource lft_List(x$0) might not be injective. (0695.vpr@39.1--44.2) [207859]"}
          (forall x$0_6: Ref, x$0_6_1: Ref ::
          { neverTriggered2(x$0_6), neverTriggered2(x$0_6_1) }
          (((x$0_6 != x$0_6_1 && Map#Domain(Map#Elements(lft_1)[1])[x$0_6]) && Map#Domain(Map#Elements(lft_1)[1])[x$0_6_1]) && NoPerm < Map#Elements(Map#Elements(lft_1)[1])[x$0_6]) && NoPerm < Map#Elements(Map#Elements(lft_1)[1])[x$0_6_1] ==> x$0_6 != x$0_6_1
        );
      
      // -- Define Inverse Function
        assume (forall x$0_6: Ref ::
          { UnfoldingHeap[null, lft_List(x$0_6)] } { UnfoldingMask[null, lft_List(x$0_6)] } { Map#Domain(Map#Elements(lft_1)[1])[x$0_6] } { Map#Elements(Map#Elements(lft_1)[1])[x$0_6] }
          Map#Domain(Map#Elements(lft_1)[1])[x$0_6] && NoPerm < Map#Elements(Map#Elements(lft_1)[1])[x$0_6] ==> invRecv2(x$0_6) == x$0_6 && qpRange2(x$0_6)
        );
        assume (forall x_3_1_1: Ref ::
          { invRecv2(x_3_1_1) }
          (Map#Domain(Map#Elements(lft_1)[1])[invRecv2(x_3_1_1)] && NoPerm < Map#Elements(Map#Elements(lft_1)[1])[invRecv2(x_3_1_1)]) && qpRange2(x_3_1_1) ==> invRecv2(x_3_1_1) == x_3_1_1
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Function might not be well-formed. Fraction lft[1][x$0] might be negative. (0695.vpr@39.1--44.2) [207860]"}
        (forall x$0_6: Ref ::
        { UnfoldingHeap[null, lft_List(x$0_6)] } { UnfoldingMask[null, lft_List(x$0_6)] } { Map#Domain(Map#Elements(lft_1)[1])[x$0_6] } { Map#Elements(Map#Elements(lft_1)[1])[x$0_6] }
        Map#Domain(Map#Elements(lft_1)[1])[x$0_6] ==> Map#Elements(Map#Elements(lft_1)[1])[x$0_6] >= NoPerm
      );
      
      // -- Define updated permissions
        assume (forall x_3_1_1: Ref ::
          { QPMask[null, lft_List(x_3_1_1)] }
          (Map#Domain(Map#Elements(lft_1)[1])[invRecv2(x_3_1_1)] && NoPerm < Map#Elements(Map#Elements(lft_1)[1])[invRecv2(x_3_1_1)]) && qpRange2(x_3_1_1) ==> (NoPerm < Map#Elements(Map#Elements(lft_1)[1])[invRecv2(x_3_1_1)] ==> invRecv2(x_3_1_1) == x_3_1_1) && QPMask[null, lft_List(x_3_1_1)] == UnfoldingMask[null, lft_List(x_3_1_1)] + Map#Elements(Map#Elements(lft_1)[1])[invRecv2(x_3_1_1)]
        );
      
      // -- Define independent locations
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { UnfoldingMask[o_4, f_5] } { QPMask[o_4, f_5] }
          (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> UnfoldingMask[o_4, f_5] == QPMask[o_4, f_5]
        );
        assume (forall x_3_1_1: Ref ::
          { QPMask[null, lft_List(x_3_1_1)] }
          !((Map#Domain(Map#Elements(lft_1)[1])[invRecv2(x_3_1_1)] && NoPerm < Map#Elements(Map#Elements(lft_1)[1])[invRecv2(x_3_1_1)]) && qpRange2(x_3_1_1)) ==> QPMask[null, lft_List(x_3_1_1)] == UnfoldingMask[null, lft_List(x_3_1_1)]
        );
      UnfoldingMask := QPMask;
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      Unfolding1Heap := UnfoldingHeap;
      Unfolding1Mask := UnfoldingMask;
      assume lft_List#trigger(Unfolding1Heap, lft_List(x));
      assume Unfolding1Heap[null, lft_List(x)] == CombineFrames(FrameFragment(Unfolding1Heap[x, ref_2]), Unfolding1Heap[null, List(Unfolding1Heap[x, ref_2])]);
      ExhaleWellDef0Mask := Unfolding1Mask;
      ExhaleWellDef0Heap := Unfolding1Heap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access lft_List(x) (0695.vpr@39.1--44.2) [207861]"}
        NoPerm < perm ==> NoPerm < Unfolding1Mask[null, lft_List(x)];
      havoc wildcard;
      perm := wildcard;
      assume x != null;
      Unfolding1Mask := Unfolding1Mask[x, ref_2:=Unfolding1Mask[x, ref_2] + perm];
      assume state(Unfolding1Heap, Unfolding1Mask);
      havoc wildcard;
      perm := wildcard;
      Unfolding1Mask := Unfolding1Mask[null, List(Unfolding1Heap[x, ref_2]):=Unfolding1Mask[null, List(Unfolding1Heap[x, ref_2])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(lft_List(x), Unfolding1Heap[null, lft_List(x)], List(Unfolding1Heap[x, ref_2]), Unfolding1Heap[null, List(Unfolding1Heap[x, ref_2])]);
      assume state(Unfolding1Heap, Unfolding1Mask);
      assume state(Unfolding1Heap, Unfolding1Mask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.ref (0695.vpr@39.1--44.2) [207862]"}
        HasDirectPerm(Unfolding1Mask, x, ref_2);
      
      // -- Free assumptions (exp module)
        UnfoldingHeap := UnfoldingHeap[null, lft_List#sm(x):=UnfoldingHeap[null, lft_List#sm(x)][x, ref_2:=true]];
        havoc newPMask;
        assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
          { newPMask[o_15, f_20] }
          UnfoldingHeap[null, lft_List#sm(x)][o_15, f_20] || UnfoldingHeap[null, List#sm(UnfoldingHeap[x, ref_2])][o_15, f_20] ==> newPMask[o_15, f_20]
        );
        UnfoldingHeap := UnfoldingHeap[null, lft_List#sm(x):=newPMask];
        assume state(UnfoldingHeap, UnfoldingMask);
      
      // -- Free assumptions (exp module)
        assume state(Heap, Mask);
        Heap := Heap[null, lft_List#sm(x):=Heap[null, lft_List#sm(x)][x, ref_2:=true]];
        havoc newPMask;
        assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
          { newPMask[o_16, f_21] }
          Heap[null, lft_List#sm(x)][o_16, f_21] || Heap[null, List#sm(Heap[x, ref_2])][o_16, f_21] ==> newPMask[o_16, f_21]
        );
        Heap := Heap[null, lft_List#sm(x):=newPMask];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[x, ref_2];
}

// ==================================================
// Translation of predicate List
// ==================================================

type PredicateType_List;
function  List(x: Ref): Field PredicateType_List FrameType;
function  List#sm(x: Ref): Field PredicateType_List PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(List(x)) }
  PredicateMaskField(List(x)) == List#sm(x)
);
axiom (forall x: Ref ::
  { List(x) }
  IsPredicateField(List(x))
);
axiom (forall x: Ref ::
  { List(x) }
  getPredWandId(List(x)) == 2
);
function  List#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  List#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { List(x), List(x2) }
  List(x) == List(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { List#sm(x), List#sm(x2) }
  List#sm(x) == List#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { List#trigger(Heap, List(x)) }
  List#everUsed(List(x))
);

procedure List#definedness(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of List
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    if (x != null) {
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, ref_2:=Mask[x, ref_2] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of acc(Node(x.ref), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.ref (0695.vpr@8.1--10.2) [207863]"}
          HasDirectPerm(Mask, x, ref_2);
      perm := FullPerm;
      Mask := Mask[null, Node(Heap[x, ref_2]):=Mask[null, Node(Heap[x, ref_2])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate Node
// ==================================================

type PredicateType_Node;
function  Node(x: Ref): Field PredicateType_Node FrameType;
function  Node#sm(x: Ref): Field PredicateType_Node PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(Node(x)) }
  PredicateMaskField(Node(x)) == Node#sm(x)
);
axiom (forall x: Ref ::
  { Node(x) }
  IsPredicateField(Node(x))
);
axiom (forall x: Ref ::
  { Node(x) }
  getPredWandId(Node(x)) == 3
);
function  Node#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Node#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { Node(x), Node(x2) }
  Node(x) == Node(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { Node#sm(x), Node#sm(x2) }
  Node#sm(x) == Node#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { Node#trigger(Heap, Node(x)) }
  Node#everUsed(Node(x))
);

// ==================================================
// Translation of predicate ListRef
// ==================================================

type PredicateType_ListRef;
function  ListRef(x: Ref, lft_1: (Map int (Map Ref Perm)), mut: bool): Field PredicateType_ListRef FrameType;
function  ListRef#sm(x: Ref, lft_1: (Map int (Map Ref Perm)), mut: bool): Field PredicateType_ListRef PMaskType;
axiom (forall x: Ref, lft_1: (Map int (Map Ref Perm)), mut: bool ::
  { PredicateMaskField(ListRef(x, lft_1, mut)) }
  PredicateMaskField(ListRef(x, lft_1, mut)) == ListRef#sm(x, lft_1, mut)
);
axiom (forall x: Ref, lft_1: (Map int (Map Ref Perm)), mut: bool ::
  { ListRef(x, lft_1, mut) }
  IsPredicateField(ListRef(x, lft_1, mut))
);
axiom (forall x: Ref, lft_1: (Map int (Map Ref Perm)), mut: bool ::
  { ListRef(x, lft_1, mut) }
  getPredWandId(ListRef(x, lft_1, mut)) == 4
);
function  ListRef#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  ListRef#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, lft_1: (Map int (Map Ref Perm)), mut: bool, x2: Ref, lft2: (Map int (Map Ref Perm)), mut2: bool ::
  { ListRef(x, lft_1, mut), ListRef(x2, lft2, mut2) }
  ListRef(x, lft_1, mut) == ListRef(x2, lft2, mut2) ==> x == x2 && (lft_1 == lft2 && mut == mut2)
);
axiom (forall x: Ref, lft_1: (Map int (Map Ref Perm)), mut: bool, x2: Ref, lft2: (Map int (Map Ref Perm)), mut2: bool ::
  { ListRef#sm(x, lft_1, mut), ListRef#sm(x2, lft2, mut2) }
  ListRef#sm(x, lft_1, mut) == ListRef#sm(x2, lft2, mut2) ==> x == x2 && (lft_1 == lft2 && mut == mut2)
);

axiom (forall Heap: HeapType, x: Ref, lft_1: (Map int (Map Ref Perm)), mut: bool ::
  { ListRef#trigger(Heap, ListRef(x, lft_1, mut)) }
  ListRef#everUsed(ListRef(x, lft_1, mut))
);

procedure ListRef#definedness(x: Ref, lft_1: (Map int (Map Ref Perm)), mut: bool) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of ListRef
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    if (x != null) {
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, ref_2:=Mask[x, ref_2] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of acc(NodeRef(x.ref, lft, mut), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.ref (0695.vpr@15.1--17.2) [207864]"}
          HasDirectPerm(Mask, x, ref_2);
      perm := FullPerm;
      Mask := Mask[null, NodeRef(Heap[x, ref_2], lft_1, mut):=Mask[null, NodeRef(Heap[x, ref_2], lft_1, mut)] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate NodeRef
// ==================================================

type PredicateType_NodeRef;
function  NodeRef(x: Ref, lft_1: (Map int (Map Ref Perm)), mut: bool): Field PredicateType_NodeRef FrameType;
function  NodeRef#sm(x: Ref, lft_1: (Map int (Map Ref Perm)), mut: bool): Field PredicateType_NodeRef PMaskType;
axiom (forall x: Ref, lft_1: (Map int (Map Ref Perm)), mut: bool ::
  { PredicateMaskField(NodeRef(x, lft_1, mut)) }
  PredicateMaskField(NodeRef(x, lft_1, mut)) == NodeRef#sm(x, lft_1, mut)
);
axiom (forall x: Ref, lft_1: (Map int (Map Ref Perm)), mut: bool ::
  { NodeRef(x, lft_1, mut) }
  IsPredicateField(NodeRef(x, lft_1, mut))
);
axiom (forall x: Ref, lft_1: (Map int (Map Ref Perm)), mut: bool ::
  { NodeRef(x, lft_1, mut) }
  getPredWandId(NodeRef(x, lft_1, mut)) == 5
);
function  NodeRef#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  NodeRef#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, lft_1: (Map int (Map Ref Perm)), mut: bool, x2: Ref, lft2: (Map int (Map Ref Perm)), mut2: bool ::
  { NodeRef(x, lft_1, mut), NodeRef(x2, lft2, mut2) }
  NodeRef(x, lft_1, mut) == NodeRef(x2, lft2, mut2) ==> x == x2 && (lft_1 == lft2 && mut == mut2)
);
axiom (forall x: Ref, lft_1: (Map int (Map Ref Perm)), mut: bool, x2: Ref, lft2: (Map int (Map Ref Perm)), mut2: bool ::
  { NodeRef#sm(x, lft_1, mut), NodeRef#sm(x2, lft2, mut2) }
  NodeRef#sm(x, lft_1, mut) == NodeRef#sm(x2, lft2, mut2) ==> x == x2 && (lft_1 == lft2 && mut == mut2)
);

axiom (forall Heap: HeapType, x: Ref, lft_1: (Map int (Map Ref Perm)), mut: bool ::
  { NodeRef#trigger(Heap, NodeRef(x, lft_1, mut)) }
  NodeRef#everUsed(NodeRef(x, lft_1, mut))
);

// ==================================================
// Translation of predicate lft_T
// ==================================================

type PredicateType_lft_T;
function  lft_T(x: Ref): Field PredicateType_lft_T FrameType;
function  lft_T#sm(x: Ref): Field PredicateType_lft_T PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(lft_T(x)) }
  PredicateMaskField(lft_T(x)) == lft_T#sm(x)
);
axiom (forall x: Ref ::
  { lft_T(x) }
  IsPredicateField(lft_T(x))
);
axiom (forall x: Ref ::
  { lft_T(x) }
  getPredWandId(lft_T(x)) == 0
);
function  lft_T#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  lft_T#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { lft_T(x), lft_T(x2) }
  lft_T(x) == lft_T(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { lft_T#sm(x), lft_T#sm(x2) }
  lft_T#sm(x) == lft_T#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { lft_T#trigger(Heap, lft_T(x)) }
  lft_T#everUsed(lft_T(x))
);

// ==================================================
// Translation of predicate lft_List
// ==================================================

type PredicateType_lft_List;
function  lft_List(x: Ref): Field PredicateType_lft_List FrameType;
function  lft_List#sm(x: Ref): Field PredicateType_lft_List PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(lft_List(x)) }
  PredicateMaskField(lft_List(x)) == lft_List#sm(x)
);
axiom (forall x: Ref ::
  { lft_List(x) }
  IsPredicateField(lft_List(x))
);
axiom (forall x: Ref ::
  { lft_List(x) }
  getPredWandId(lft_List(x)) == 1
);
function  lft_List#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  lft_List#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { lft_List(x), lft_List(x2) }
  lft_List(x) == lft_List(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { lft_List#sm(x), lft_List#sm(x2) }
  lft_List#sm(x) == lft_List#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { lft_List#trigger(Heap, lft_List(x)) }
  lft_List#everUsed(lft_List(x))
);

procedure lft_List#definedness(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of lft_List
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, ref_2:=Mask[x, ref_2] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(List(x.ref), write)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.ref (0695.vpr@25.1--27.2) [207865]"}
        HasDirectPerm(Mask, x, ref_2);
    perm := FullPerm;
    Mask := Mask[null, List(Heap[x, ref_2]):=Mask[null, List(Heap[x, ref_2])] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate LifetimeP
// ==================================================

type PredicateType_LifetimeP;
function  LifetimeP(lft_1: (Map int (Map Ref Perm))): Field PredicateType_LifetimeP FrameType;
function  LifetimeP#sm(lft_1: (Map int (Map Ref Perm))): Field PredicateType_LifetimeP PMaskType;
axiom (forall lft_1: (Map int (Map Ref Perm)) ::
  { PredicateMaskField(LifetimeP(lft_1)) }
  PredicateMaskField(LifetimeP(lft_1)) == LifetimeP#sm(lft_1)
);
axiom (forall lft_1: (Map int (Map Ref Perm)) ::
  { LifetimeP(lft_1) }
  IsPredicateField(LifetimeP(lft_1))
);
axiom (forall lft_1: (Map int (Map Ref Perm)) ::
  { LifetimeP(lft_1) }
  getPredWandId(LifetimeP(lft_1)) == 6
);
function  LifetimeP#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  LifetimeP#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall lft_1: (Map int (Map Ref Perm)), lft2: (Map int (Map Ref Perm)) ::
  { LifetimeP(lft_1), LifetimeP(lft2) }
  LifetimeP(lft_1) == LifetimeP(lft2) ==> lft_1 == lft2
);
axiom (forall lft_1: (Map int (Map Ref Perm)), lft2: (Map int (Map Ref Perm)) ::
  { LifetimeP#sm(lft_1), LifetimeP#sm(lft2) }
  LifetimeP#sm(lft_1) == LifetimeP#sm(lft2) ==> lft_1 == lft2
);

axiom (forall Heap: HeapType, lft_1: (Map int (Map Ref Perm)) ::
  { LifetimeP#trigger(Heap, LifetimeP(lft_1)) }
  LifetimeP#everUsed(LifetimeP(lft_1))
);

// ==================================================
// Function used for framing of quantified permission (forall x: Ref :: { (x in lft[0]) } { lft[0][x] } (x in lft[0]) ==> acc(lft_T(x), lft[0][x])) in predicate LifetimeP
// ==================================================

function  LifetimeP#condqp1(Heap: HeapType, lft_2_1: (Map int (Map Ref Perm))): int;
function  sk_LifetimeP#condqp1(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, lft_1: (Map int (Map Ref Perm)) ::
  { LifetimeP#condqp1(Heap2Heap, lft_1), LifetimeP#condqp1(Heap1Heap, lft_1), succHeapTrans(Heap2Heap, Heap1Heap) }
  (Map#Domain(Map#Elements(lft_1)[0])[sk_LifetimeP#condqp1(LifetimeP#condqp1(Heap2Heap, lft_1), LifetimeP#condqp1(Heap1Heap, lft_1))] && NoPerm < Map#Elements(Map#Elements(lft_1)[0])[sk_LifetimeP#condqp1(LifetimeP#condqp1(Heap2Heap, lft_1), LifetimeP#condqp1(Heap1Heap, lft_1))] <==> Map#Domain(Map#Elements(lft_1)[0])[sk_LifetimeP#condqp1(LifetimeP#condqp1(Heap2Heap, lft_1), LifetimeP#condqp1(Heap1Heap, lft_1))] && NoPerm < Map#Elements(Map#Elements(lft_1)[0])[sk_LifetimeP#condqp1(LifetimeP#condqp1(Heap2Heap, lft_1), LifetimeP#condqp1(Heap1Heap, lft_1))]) && (Map#Domain(Map#Elements(lft_1)[0])[sk_LifetimeP#condqp1(LifetimeP#condqp1(Heap2Heap, lft_1), LifetimeP#condqp1(Heap1Heap, lft_1))] && NoPerm < Map#Elements(Map#Elements(lft_1)[0])[sk_LifetimeP#condqp1(LifetimeP#condqp1(Heap2Heap, lft_1), LifetimeP#condqp1(Heap1Heap, lft_1))] ==> Heap2Heap[null, lft_T(sk_LifetimeP#condqp1(LifetimeP#condqp1(Heap2Heap, lft_1), LifetimeP#condqp1(Heap1Heap, lft_1)))] == Heap1Heap[null, lft_T(sk_LifetimeP#condqp1(LifetimeP#condqp1(Heap2Heap, lft_1), LifetimeP#condqp1(Heap1Heap, lft_1)))]) ==> LifetimeP#condqp1(Heap2Heap, lft_1) == LifetimeP#condqp1(Heap1Heap, lft_1)
);

// ==================================================
// Function used for framing of quantified permission (forall x: Ref :: { (x in lft[1]) } { lft[1][x] } (x in lft[1]) ==> acc(lft_List(x), lft[1][x])) in predicate LifetimeP
// ==================================================

function  LifetimeP#condqp2(Heap: HeapType, lft_2_1: (Map int (Map Ref Perm))): int;
function  sk_LifetimeP#condqp2(fnAppH1_1: int, fnAppH2_1: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, lft_1: (Map int (Map Ref Perm)) ::
  { LifetimeP#condqp2(Heap2Heap, lft_1), LifetimeP#condqp2(Heap1Heap, lft_1), succHeapTrans(Heap2Heap, Heap1Heap) }
  (Map#Domain(Map#Elements(lft_1)[1])[sk_LifetimeP#condqp2(LifetimeP#condqp2(Heap2Heap, lft_1), LifetimeP#condqp2(Heap1Heap, lft_1))] && NoPerm < Map#Elements(Map#Elements(lft_1)[1])[sk_LifetimeP#condqp2(LifetimeP#condqp2(Heap2Heap, lft_1), LifetimeP#condqp2(Heap1Heap, lft_1))] <==> Map#Domain(Map#Elements(lft_1)[1])[sk_LifetimeP#condqp2(LifetimeP#condqp2(Heap2Heap, lft_1), LifetimeP#condqp2(Heap1Heap, lft_1))] && NoPerm < Map#Elements(Map#Elements(lft_1)[1])[sk_LifetimeP#condqp2(LifetimeP#condqp2(Heap2Heap, lft_1), LifetimeP#condqp2(Heap1Heap, lft_1))]) && (Map#Domain(Map#Elements(lft_1)[1])[sk_LifetimeP#condqp2(LifetimeP#condqp2(Heap2Heap, lft_1), LifetimeP#condqp2(Heap1Heap, lft_1))] && NoPerm < Map#Elements(Map#Elements(lft_1)[1])[sk_LifetimeP#condqp2(LifetimeP#condqp2(Heap2Heap, lft_1), LifetimeP#condqp2(Heap1Heap, lft_1))] ==> Heap2Heap[null, lft_List(sk_LifetimeP#condqp2(LifetimeP#condqp2(Heap2Heap, lft_1), LifetimeP#condqp2(Heap1Heap, lft_1)))] == Heap1Heap[null, lft_List(sk_LifetimeP#condqp2(LifetimeP#condqp2(Heap2Heap, lft_1), LifetimeP#condqp2(Heap1Heap, lft_1)))]) ==> LifetimeP#condqp2(Heap2Heap, lft_1) == LifetimeP#condqp2(Heap1Heap, lft_1)
);

procedure LifetimeP#definedness(lft_1: (Map int (Map Ref Perm))) returns ()
  modifies Heap, Mask;
{
  var x_38: Ref;
  var x_32: Ref;
  var x_12: Ref;
  var QPMask: MaskType;
  var x_18: Ref;
  var x_42: Ref;
  var x_13: Ref;
  
  // -- Check definedness of predicate body of LifetimeP
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
    assume state(Heap, Mask);
    
    // -- Check definedness of valid_lft(lft)
      if (*) {
        // Stop execution
        assume false;
      }
    assume valid_lft(Heap, lft_1);
    
    // -- Check definedness of (forall x: Ref :: { (x in lft[0]) } { lft[0][x] } (x in lft[0]) ==> lft[0][x] > 0 / 1)
      if (*) {
        assert {:msg "  Predicate might not be well-formed. Map lft might not contain an entry at key 0. (0695.vpr@30.1--34.2) [207866]"}
          Map#Domain(lft_1)[0];
        if (Map#Domain(Map#Elements(lft_1)[0])[x_38]) {
          assert {:msg "  Predicate might not be well-formed. Map lft might not contain an entry at key 0. (0695.vpr@30.1--34.2) [207867]"}
            Map#Domain(lft_1)[0];
          assert {:msg "  Predicate might not be well-formed. Map lft[0] might not contain an entry at key x. (0695.vpr@30.1--34.2) [207868]"}
            Map#Domain(Map#Elements(lft_1)[0])[x_38];
        }
        assume false;
      }
    assume (forall x_3: Ref ::
      { Map#Domain(Map#Elements(lft_1)[0])[x_3] } { Map#Elements(Map#Elements(lft_1)[0])[x_3] }
      Map#Domain(Map#Elements(lft_1)[0])[x_3] ==> 0 / 1 < Map#Elements(Map#Elements(lft_1)[0])[x_3]
    );
    
    // -- Check definedness of (forall x: Ref :: { (x in lft[0]) } { lft[0][x] } (x in lft[0]) ==> lft[0][x] <= 1 / 1)
      if (*) {
        assert {:msg "  Predicate might not be well-formed. Map lft might not contain an entry at key 0. (0695.vpr@30.1--34.2) [207869]"}
          Map#Domain(lft_1)[0];
        if (Map#Domain(Map#Elements(lft_1)[0])[x_32]) {
          assert {:msg "  Predicate might not be well-formed. Map lft might not contain an entry at key 0. (0695.vpr@30.1--34.2) [207870]"}
            Map#Domain(lft_1)[0];
          assert {:msg "  Predicate might not be well-formed. Map lft[0] might not contain an entry at key x. (0695.vpr@30.1--34.2) [207871]"}
            Map#Domain(Map#Elements(lft_1)[0])[x_32];
        }
        assume false;
      }
    assume (forall x_5: Ref ::
      { Map#Domain(Map#Elements(lft_1)[0])[x_5] } { Map#Elements(Map#Elements(lft_1)[0])[x_5] }
      Map#Domain(Map#Elements(lft_1)[0])[x_5] ==> Map#Elements(Map#Elements(lft_1)[0])[x_5] <= 1 / 1
    );
    
    // -- Check definedness of (forall x: Ref :: { (x in lft[0]) } { lft[0][x] } (x in lft[0]) ==> acc(lft_T(x), lft[0][x]))
      if (*) {
        assert {:msg "  Predicate might not be well-formed. Map lft might not contain an entry at key 0. (0695.vpr@30.1--34.2) [207872]"}
          Map#Domain(lft_1)[0];
        if (Map#Domain(Map#Elements(lft_1)[0])[x_12]) {
          assert {:msg "  Predicate might not be well-formed. Map lft might not contain an entry at key 0. (0695.vpr@30.1--34.2) [207873]"}
            Map#Domain(lft_1)[0];
          assert {:msg "  Predicate might not be well-formed. Map lft[0] might not contain an entry at key x. (0695.vpr@30.1--34.2) [207874]"}
            Map#Domain(Map#Elements(lft_1)[0])[x_12];
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(lft_T(x), lft[0][x]) is injective
      assert {:msg "  Predicate might not be well-formed. Quantified resource lft_T(x) might not be injective. (0695.vpr@30.1--34.2) [207875]"}
        (forall x_7: Ref, x_7_1: Ref ::
        { neverTriggered3(x_7), neverTriggered3(x_7_1) }
        (((x_7 != x_7_1 && Map#Domain(Map#Elements(lft_1)[0])[x_7]) && Map#Domain(Map#Elements(lft_1)[0])[x_7_1]) && NoPerm < Map#Elements(Map#Elements(lft_1)[0])[x_7]) && NoPerm < Map#Elements(Map#Elements(lft_1)[0])[x_7_1] ==> x_7 != x_7_1
      );
    
    // -- Define Inverse Function
      assume (forall x_7: Ref ::
        { Heap[null, lft_T(x_7)] } { Mask[null, lft_T(x_7)] } { Map#Domain(Map#Elements(lft_1)[0])[x_7] } { Map#Elements(Map#Elements(lft_1)[0])[x_7] }
        Map#Domain(Map#Elements(lft_1)[0])[x_7] && NoPerm < Map#Elements(Map#Elements(lft_1)[0])[x_7] ==> invRecv3(x_7) == x_7 && qpRange3(x_7)
      );
      assume (forall x_8_1_1: Ref ::
        { invRecv3(x_8_1_1) }
        (Map#Domain(Map#Elements(lft_1)[0])[invRecv3(x_8_1_1)] && NoPerm < Map#Elements(Map#Elements(lft_1)[0])[invRecv3(x_8_1_1)]) && qpRange3(x_8_1_1) ==> invRecv3(x_8_1_1) == x_8_1_1
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Predicate might not be well-formed. Fraction lft[0][x] might be negative. (0695.vpr@30.1--34.2) [207876]"}
      (forall x_7: Ref ::
      { Heap[null, lft_T(x_7)] } { Mask[null, lft_T(x_7)] } { Map#Domain(Map#Elements(lft_1)[0])[x_7] } { Map#Elements(Map#Elements(lft_1)[0])[x_7] }
      Map#Domain(Map#Elements(lft_1)[0])[x_7] ==> Map#Elements(Map#Elements(lft_1)[0])[x_7] >= NoPerm
    );
    
    // -- Define updated permissions
      assume (forall x_8_1_1: Ref ::
        { QPMask[null, lft_T(x_8_1_1)] }
        (Map#Domain(Map#Elements(lft_1)[0])[invRecv3(x_8_1_1)] && NoPerm < Map#Elements(Map#Elements(lft_1)[0])[invRecv3(x_8_1_1)]) && qpRange3(x_8_1_1) ==> (NoPerm < Map#Elements(Map#Elements(lft_1)[0])[invRecv3(x_8_1_1)] ==> invRecv3(x_8_1_1) == x_8_1_1) && QPMask[null, lft_T(x_8_1_1)] == Mask[null, lft_T(x_8_1_1)] + Map#Elements(Map#Elements(lft_1)[0])[invRecv3(x_8_1_1)]
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall x_8_1_1: Ref ::
        { QPMask[null, lft_T(x_8_1_1)] }
        !((Map#Domain(Map#Elements(lft_1)[0])[invRecv3(x_8_1_1)] && NoPerm < Map#Elements(Map#Elements(lft_1)[0])[invRecv3(x_8_1_1)]) && qpRange3(x_8_1_1)) ==> QPMask[null, lft_T(x_8_1_1)] == Mask[null, lft_T(x_8_1_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in lft[1]) } { lft[1][x] } (x in lft[1]) ==> lft[1][x] > 0 / 1)
      if (*) {
        assert {:msg "  Predicate might not be well-formed. Map lft might not contain an entry at key 1. (0695.vpr@30.1--34.2) [207877]"}
          Map#Domain(lft_1)[1];
        if (Map#Domain(Map#Elements(lft_1)[1])[x_18]) {
          assert {:msg "  Predicate might not be well-formed. Map lft might not contain an entry at key 1. (0695.vpr@30.1--34.2) [207878]"}
            Map#Domain(lft_1)[1];
          assert {:msg "  Predicate might not be well-formed. Map lft[1] might not contain an entry at key x. (0695.vpr@30.1--34.2) [207879]"}
            Map#Domain(Map#Elements(lft_1)[1])[x_18];
        }
        assume false;
      }
    assume (forall x_11_1: Ref ::
      { Map#Domain(Map#Elements(lft_1)[1])[x_11_1] } { Map#Elements(Map#Elements(lft_1)[1])[x_11_1] }
      Map#Domain(Map#Elements(lft_1)[1])[x_11_1] ==> 0 / 1 < Map#Elements(Map#Elements(lft_1)[1])[x_11_1]
    );
    
    // -- Check definedness of (forall x: Ref :: { (x in lft[1]) } { lft[1][x] } (x in lft[1]) ==> lft[1][x] <= 1 / 1)
      if (*) {
        assert {:msg "  Predicate might not be well-formed. Map lft might not contain an entry at key 1. (0695.vpr@30.1--34.2) [207880]"}
          Map#Domain(lft_1)[1];
        if (Map#Domain(Map#Elements(lft_1)[1])[x_42]) {
          assert {:msg "  Predicate might not be well-formed. Map lft might not contain an entry at key 1. (0695.vpr@30.1--34.2) [207881]"}
            Map#Domain(lft_1)[1];
          assert {:msg "  Predicate might not be well-formed. Map lft[1] might not contain an entry at key x. (0695.vpr@30.1--34.2) [207882]"}
            Map#Domain(Map#Elements(lft_1)[1])[x_42];
        }
        assume false;
      }
    assume (forall x_13_2: Ref ::
      { Map#Domain(Map#Elements(lft_1)[1])[x_13_2] } { Map#Elements(Map#Elements(lft_1)[1])[x_13_2] }
      Map#Domain(Map#Elements(lft_1)[1])[x_13_2] ==> Map#Elements(Map#Elements(lft_1)[1])[x_13_2] <= 1 / 1
    );
    
    // -- Check definedness of (forall x: Ref :: { (x in lft[1]) } { lft[1][x] } (x in lft[1]) ==> acc(lft_List(x), lft[1][x]))
      if (*) {
        assert {:msg "  Predicate might not be well-formed. Map lft might not contain an entry at key 1. (0695.vpr@30.1--34.2) [207883]"}
          Map#Domain(lft_1)[1];
        if (Map#Domain(Map#Elements(lft_1)[1])[x_13]) {
          assert {:msg "  Predicate might not be well-formed. Map lft might not contain an entry at key 1. (0695.vpr@30.1--34.2) [207884]"}
            Map#Domain(lft_1)[1];
          assert {:msg "  Predicate might not be well-formed. Map lft[1] might not contain an entry at key x. (0695.vpr@30.1--34.2) [207885]"}
            Map#Domain(Map#Elements(lft_1)[1])[x_13];
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(lft_List(x), lft[1][x]) is injective
      assert {:msg "  Predicate might not be well-formed. Quantified resource lft_List(x) might not be injective. (0695.vpr@30.1--34.2) [207886]"}
        (forall x_15_2: Ref, x_15_3: Ref ::
        { neverTriggered4(x_15_2), neverTriggered4(x_15_3) }
        (((x_15_2 != x_15_3 && Map#Domain(Map#Elements(lft_1)[1])[x_15_2]) && Map#Domain(Map#Elements(lft_1)[1])[x_15_3]) && NoPerm < Map#Elements(Map#Elements(lft_1)[1])[x_15_2]) && NoPerm < Map#Elements(Map#Elements(lft_1)[1])[x_15_3] ==> x_15_2 != x_15_3
      );
    
    // -- Define Inverse Function
      assume (forall x_15_2: Ref ::
        { Heap[null, lft_List(x_15_2)] } { Mask[null, lft_List(x_15_2)] } { Map#Domain(Map#Elements(lft_1)[1])[x_15_2] } { Map#Elements(Map#Elements(lft_1)[1])[x_15_2] }
        Map#Domain(Map#Elements(lft_1)[1])[x_15_2] && NoPerm < Map#Elements(Map#Elements(lft_1)[1])[x_15_2] ==> invRecv4(x_15_2) == x_15_2 && qpRange4(x_15_2)
      );
      assume (forall x_16_1_1: Ref ::
        { invRecv4(x_16_1_1) }
        (Map#Domain(Map#Elements(lft_1)[1])[invRecv4(x_16_1_1)] && NoPerm < Map#Elements(Map#Elements(lft_1)[1])[invRecv4(x_16_1_1)]) && qpRange4(x_16_1_1) ==> invRecv4(x_16_1_1) == x_16_1_1
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Predicate might not be well-formed. Fraction lft[1][x] might be negative. (0695.vpr@30.1--34.2) [207887]"}
      (forall x_15_2: Ref ::
      { Heap[null, lft_List(x_15_2)] } { Mask[null, lft_List(x_15_2)] } { Map#Domain(Map#Elements(lft_1)[1])[x_15_2] } { Map#Elements(Map#Elements(lft_1)[1])[x_15_2] }
      Map#Domain(Map#Elements(lft_1)[1])[x_15_2] ==> Map#Elements(Map#Elements(lft_1)[1])[x_15_2] >= NoPerm
    );
    
    // -- Define updated permissions
      assume (forall x_16_1_1: Ref ::
        { QPMask[null, lft_List(x_16_1_1)] }
        (Map#Domain(Map#Elements(lft_1)[1])[invRecv4(x_16_1_1)] && NoPerm < Map#Elements(Map#Elements(lft_1)[1])[invRecv4(x_16_1_1)]) && qpRange4(x_16_1_1) ==> (NoPerm < Map#Elements(Map#Elements(lft_1)[1])[invRecv4(x_16_1_1)] ==> invRecv4(x_16_1_1) == x_16_1_1) && QPMask[null, lft_List(x_16_1_1)] == Mask[null, lft_List(x_16_1_1)] + Map#Elements(Map#Elements(lft_1)[1])[invRecv4(x_16_1_1)]
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall x_16_1_1: Ref ::
        { QPMask[null, lft_List(x_16_1_1)] }
        !((Map#Domain(Map#Elements(lft_1)[1])[invRecv4(x_16_1_1)] && NoPerm < Map#Elements(Map#Elements(lft_1)[1])[invRecv4(x_16_1_1)]) && qpRange4(x_16_1_1)) ==> QPMask[null, lft_List(x_16_1_1)] == Mask[null, lft_List(x_16_1_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate P
// ==================================================

type PredicateType_P;
function  P(x: Ref): Field PredicateType_P FrameType;
function  P#sm(x: Ref): Field PredicateType_P PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(P(x)) }
  PredicateMaskField(P(x)) == P#sm(x)
);
axiom (forall x: Ref ::
  { P(x) }
  IsPredicateField(P(x))
);
axiom (forall x: Ref ::
  { P(x) }
  getPredWandId(P(x)) == 7
);
function  P#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  P#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { P(x), P(x2) }
  P(x) == P(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { P#sm(x), P#sm(x2) }
  P#sm(x) == P#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { P#trigger(Heap, P(x)) }
  P#everUsed(P(x))
);

procedure P#definedness(x: Ref) returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of P
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method foo
// ==================================================

procedure foo_1(x: Ref, lft_1: (Map int (Map Ref Perm))) returns (res: Ref, new_lft: (Map int (Map Ref Perm)))
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs1Mask: MaskType;
  var Labellhs1Heap: HeapType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var ExhaleHeap: HeapType;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var x_nxt: Ref;
  var newVersion: FrameType;
  var QPMask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_a: Ref;
  var arg_p: Perm;
  var x$0_8: Ref;
  var x$0_10: Ref;
  var x$0_13: Ref;
  var x$0_15: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    assume state(Heap, Mask);
    
    // -- Check definedness of valid_lft(lft)
      if (*) {
        // Stop execution
        assume false;
      }
    assume valid_lft(Heap, lft_1);
    perm := FullPerm;
    Mask := Mask[null, LifetimeP(lft_1):=Mask[null, LifetimeP(lft_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, ref_2:=Mask[x, ref_2] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of valid_lft(lft)
      if (*) {
        // Stop execution
        assume false;
      }
    assume valid_lft(Heap, lft_1);
    
    // -- Check definedness of (x.ref in lft[1])
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.ref (0695.vpr@48.12--48.53) [207888]"}
        HasDirectPerm(Mask, x, ref_2);
      assert {:msg "  Contract might not be well-formed. Map lft might not contain an entry at key 1. (0695.vpr@48.12--48.53) [207889]"}
        Map#Domain(lft_1)[1];
    assume Map#Domain(Map#Elements(lft_1)[1])[Heap[x, ref_2]];
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
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of valid_lft(new_lft)
      if (*) {
        // Stop execution
        assume false;
      }
    assume valid_lft(PostHeap, new_lft);
    perm := FullPerm;
    PostMask := PostMask[null, LifetimeP(new_lft):=PostMask[null, LifetimeP(new_lft)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume res != null;
    PostMask := PostMask[res, ref_2:=PostMask[res, ref_2] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(ListRef(res.ref, new_lft, false), write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access res.ref (0695.vpr@50.11--50.59) [207890]"}
        HasDirectPerm(PostMask, res, ref_2);
    perm := FullPerm;
    PostMask := PostMask[null, ListRef(PostHeap[res, ref_2], new_lft, false):=PostMask[null, ListRef(PostHeap[res, ref_2], new_lft, false)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: new_lft := lft -- 0695.vpr@52.3--52.17
    new_lft := lft_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale valid_lft(new_lft) && acc(LifetimeP(new_lft), write) --*
  //   valid_lft(lft) && acc(LifetimeP(lft), write) -- 0695.vpr@53.3--53.45
    assume state(Heap, Mask);
    
    // -- Check definedness of valid_lft(new_lft) && acc(LifetimeP(new_lft), write) --* valid_lft(lft) && acc(LifetimeP(lft), write)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Check definedness of valid_lft(new_lft)
          if (*) {
            // Stop execution
            assume false;
          }
        assume valid_lft(WandDefLHSHeap, new_lft);
        perm := FullPerm;
        WandDefLHSMask := WandDefLHSMask[null, LifetimeP(new_lft):=WandDefLHSMask[null, LifetimeP(new_lft)] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs1 -- 0695.vpr@53.10--53.45
          lhs1:
          Labellhs1Mask := WandDefLHSMask;
          Labellhs1Heap := WandDefLHSHeap;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        assume state(WandDefRHSHeap, WandDefRHSMask);
        
        // -- Check definedness of valid_lft(lft)
          if (*) {
            // Stop execution
            assume false;
          }
        assume valid_lft(WandDefRHSHeap, lft_1);
        perm := FullPerm;
        WandDefRHSMask := WandDefRHSMask[null, LifetimeP(lft_1):=WandDefRHSMask[null, LifetimeP(lft_1)] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    Mask := Mask[null, wand(valid_lft(Heap, new_lft), new_lft, valid_lft(Heap, lft_1), lft_1):=Mask[null, wand(valid_lft(Heap, new_lft), new_lft, valid_lft(Heap, lft_1), lft_1)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(res.ref, write) -- 0695.vpr@55.3--55.22
    perm := FullPerm;
    assume res != null;
    Mask := Mask[res, ref_2:=Mask[res, ref_2] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: res.ref := null -- 0695.vpr@56.3--56.18
    assert {:msg "  Assignment might fail. There might be insufficient permission to access res.ref (0695.vpr@56.3--56.18) [207892]"}
      FullPerm == Mask[res, ref_2];
    Heap := Heap[res, ref_2:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(ListRef(res.ref, new_lft, false), write) -- 0695.vpr@57.3--57.40
    
    // -- Check definedness of acc(ListRef(res.ref, new_lft, false), write)
      assert {:msg "  Folding ListRef(res.ref, new_lft, false) might fail. There might be insufficient permission to access res.ref (0695.vpr@57.3--57.40) [207893]"}
        HasDirectPerm(Mask, res, ref_2);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (Heap[res, ref_2] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding ListRef(res.ref, new_lft, false) might fail. There might be insufficient permission to access res.ref.ref (0695.vpr@57.3--57.40) [207896]"}
          perm <= Mask[Heap[res, ref_2], ref_2];
      }
      Mask := Mask[Heap[res, ref_2], ref_2:=Mask[Heap[res, ref_2], ref_2] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding ListRef(res.ref, new_lft, false) might fail. There might be insufficient permission to access NodeRef(res.ref.ref, new_lft, false) (0695.vpr@57.3--57.40) [207898]"}
          perm <= Mask[null, NodeRef(Heap[Heap[res, ref_2], ref_2], new_lft, false)];
      }
      Mask := Mask[null, NodeRef(Heap[Heap[res, ref_2], ref_2], new_lft, false):=Mask[null, NodeRef(Heap[Heap[res, ref_2], ref_2], new_lft, false)] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(ListRef(Heap[res, ref_2], new_lft, false), Heap[null, ListRef(Heap[res, ref_2], new_lft, false)], NodeRef(Heap[Heap[res, ref_2], ref_2], new_lft, false), Heap[null, NodeRef(Heap[Heap[res, ref_2], ref_2], new_lft, false)]);
    }
    perm := FullPerm;
    Mask := Mask[null, ListRef(Heap[res, ref_2], new_lft, false):=Mask[null, ListRef(Heap[res, ref_2], new_lft, false)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume ListRef#trigger(Heap, ListRef(Heap[res, ref_2], new_lft, false));
    assume Heap[null, ListRef(Heap[res, ref_2], new_lft, false)] == FrameFragment((if Heap[res, ref_2] != null then CombineFrames(FrameFragment(Heap[Heap[res, ref_2], ref_2]), Heap[null, NodeRef(Heap[Heap[res, ref_2], ref_2], new_lft, false)]) else EmptyFrame));
    if (!HasDirectPerm(Mask, null, ListRef(Heap[res, ref_2], new_lft, false))) {
      Heap := Heap[null, ListRef#sm(Heap[res, ref_2], new_lft, false):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, ListRef(Heap[res, ref_2], new_lft, false):=freshVersion];
    }
    if (Heap[res, ref_2] != null) {
      Heap := Heap[null, ListRef#sm(Heap[res, ref_2], new_lft, false):=Heap[null, ListRef#sm(Heap[res, ref_2], new_lft, false)][Heap[res, ref_2], ref_2:=true]];
      havoc newPMask;
      assume (forall <A, B> o: Ref, f_85: (Field A B) ::
        { newPMask[o, f_85] }
        Heap[null, ListRef#sm(Heap[res, ref_2], new_lft, false)][o, f_85] || Heap[null, NodeRef#sm(Heap[Heap[res, ref_2], ref_2], new_lft, false)][o, f_85] ==> newPMask[o, f_85]
      );
      Heap := Heap[null, ListRef#sm(Heap[res, ref_2], new_lft, false):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: while (get_disc(x.ref, new_lft) != null) -- 0695.vpr@59.3--79.4
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Loop invariant valid_lft(new_lft) && acc(LifetimeP(new_lft), write) might not hold on entry. Assertion valid_lft(new_lft) might not hold. (0695.vpr@60.15--60.32) [207900]"}
          valid_lft(Heap, new_lft);
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant valid_lft(new_lft) && acc(LifetimeP(new_lft), write) might not hold on entry. There might be insufficient permission to access LifetimeP(new_lft) (0695.vpr@60.15--60.32) [207901]"}
            perm <= Mask[null, LifetimeP(new_lft)];
        }
        Mask := Mask[null, LifetimeP(new_lft):=Mask[null, LifetimeP(new_lft)] - perm];
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(x.ref, write) && (valid_lft(new_lft) && ((x.ref in new_lft[1]) && (false ==> new_lft[1][x.ref] == 1 / 1))) might not hold on entry. There might be insufficient permission to access x.ref (0695.vpr@61.15--61.60) [207902]"}
            perm <= Mask[x, ref_2];
        }
        Mask := Mask[x, ref_2:=Mask[x, ref_2] - perm];
        assert {:msg "  Loop invariant acc(x.ref, write) && (valid_lft(new_lft) && ((x.ref in new_lft[1]) && (false ==> new_lft[1][x.ref] == 1 / 1))) might not hold on entry. Assertion valid_lft(new_lft) might not hold. (0695.vpr@61.15--61.60) [207903]"}
          valid_lft(Heap, new_lft);
        assert {:msg "  Loop invariant acc(x.ref, write) && (valid_lft(new_lft) && ((x.ref in new_lft[1]) && (false ==> new_lft[1][x.ref] == 1 / 1))) might not hold on entry. Assertion (x.ref in new_lft[1]) might not hold. (0695.vpr@61.15--61.60) [207904]"}
          Map#Domain(Map#Elements(new_lft)[1])[Heap[x, ref_2]];
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(res.ref, write) && acc(ListRef(res.ref, new_lft, false), write) might not hold on entry. There might be insufficient permission to access res.ref (0695.vpr@62.15--62.63) [207905]"}
            perm <= Mask[res, ref_2];
        }
        Mask := Mask[res, ref_2:=Mask[res, ref_2] - perm];
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(res.ref, write) && acc(ListRef(res.ref, new_lft, false), write) might not hold on entry. There might be insufficient permission to access ListRef(res.ref, new_lft, false) (0695.vpr@62.15--62.63) [207906]"}
            perm <= Mask[null, ListRef(Heap[res, ref_2], new_lft, false)];
        }
        Mask := Mask[null, ListRef(Heap[res, ref_2], new_lft, false):=Mask[null, ListRef(Heap[res, ref_2], new_lft, false)] - perm];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc new_lft;
    
    // -- Check definedness of invariant
      if (*) {
        assume state(Heap, Mask);
        
        // -- Check definedness of valid_lft(new_lft)
          if (*) {
            // Stop execution
            assume false;
          }
        assume valid_lft(Heap, new_lft);
        perm := FullPerm;
        Mask := Mask[null, LifetimeP(new_lft):=Mask[null, LifetimeP(new_lft)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        perm := FullPerm;
        assume x != null;
        Mask := Mask[x, ref_2:=Mask[x, ref_2] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of valid_lft(new_lft)
          if (*) {
            // Stop execution
            assume false;
          }
        assume valid_lft(Heap, new_lft);
        
        // -- Check definedness of (x.ref in new_lft[1])
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.ref (0695.vpr@61.15--61.60) [207907]"}
            HasDirectPerm(Mask, x, ref_2);
          assert {:msg "  Contract might not be well-formed. Map new_lft might not contain an entry at key 1. (0695.vpr@61.15--61.60) [207908]"}
            Map#Domain(new_lft)[1];
        assume Map#Domain(Map#Elements(new_lft)[1])[Heap[x, ref_2]];
        assume state(Heap, Mask);
        perm := FullPerm;
        assume res != null;
        Mask := Mask[res, ref_2:=Mask[res, ref_2] + perm];
        assume state(Heap, Mask);
        
        // -- Check definedness of acc(ListRef(res.ref, new_lft, false), write)
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access res.ref (0695.vpr@62.15--62.63) [207909]"}
            HasDirectPerm(Mask, res, ref_2);
        perm := FullPerm;
        Mask := Mask[null, ListRef(Heap[res, ref_2], new_lft, false):=Mask[null, ListRef(Heap[res, ref_2], new_lft, false)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Check the loop body
      if (*) {
        // Reset state
        loopHeap := Heap;
        loopMask := Mask;
        Mask := ZeroMask;
        assume state(Heap, Mask);
        // Inhale invariant
        assume state(Heap, Mask);
        assume valid_lft(Heap, new_lft);
        perm := FullPerm;
        Mask := Mask[null, LifetimeP(new_lft):=Mask[null, LifetimeP(new_lft)] + perm];
        assume state(Heap, Mask);
        perm := FullPerm;
        assume x != null;
        Mask := Mask[x, ref_2:=Mask[x, ref_2] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume valid_lft(Heap, new_lft);
        assume Map#Domain(Map#Elements(new_lft)[1])[Heap[x, ref_2]];
        perm := FullPerm;
        assume res != null;
        Mask := Mask[res, ref_2:=Mask[res, ref_2] + perm];
        assume state(Heap, Mask);
        perm := FullPerm;
        Mask := Mask[null, ListRef(Heap[res, ref_2], new_lft, false):=Mask[null, ListRef(Heap[res, ref_2], new_lft, false)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        // Check and assume guard
        
        // -- Check definedness of get_disc(x.ref, new_lft) != null
          assert {:msg "  While statement might fail. There might be insufficient permission to access x.ref (0695.vpr@59.10--59.42) [207910]"}
            HasDirectPerm(Mask, x, ref_2);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Precondition of function get_disc might not hold. Assertion valid_lft(new_lft) might not hold. (0695.vpr@59.10--59.34) [207911]"}
              valid_lft(Heap, new_lft);
            perm := FullPerm;
            assert {:msg "  Precondition of function get_disc might not hold. There might be insufficient permission to access LifetimeP(new_lft) (0695.vpr@59.10--59.34) [207912]"}
              NoPerm < perm ==> NoPerm < Mask[null, LifetimeP(new_lft)];
            assert {:msg "  Precondition of function get_disc might not hold. Assertion valid_lft(new_lft) might not hold. (0695.vpr@59.10--59.34) [207913]"}
              valid_lft(Heap, new_lft);
            assert {:msg "  Precondition of function get_disc might not hold. Assertion (x.ref in new_lft[1]) might not hold. (0695.vpr@59.10--59.34) [207914]"}
              Map#Domain(Map#Elements(new_lft)[1])[Heap[x, ref_2]];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assume get_disc(Heap, Heap[x, ref_2], new_lft) != null;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Assumptions about local variables
            assume Heap[x_nxt, $allocated];
          
          // -- Translating statement: unfold acc(LifetimeP(new_lft), write) -- 0695.vpr@64.5--64.30
            assume LifetimeP#trigger(Heap, LifetimeP(new_lft));
            assume Heap[null, LifetimeP(new_lft)] == CombineFrames(FrameFragment(LifetimeP#condqp1(Heap, new_lft)), FrameFragment(LifetimeP#condqp2(Heap, new_lft)));
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Unfolding LifetimeP(new_lft) might fail. There might be insufficient permission to access LifetimeP(new_lft) (0695.vpr@64.5--64.30) [207915]"}
                perm <= Mask[null, LifetimeP(new_lft)];
            }
            Mask := Mask[null, LifetimeP(new_lft):=Mask[null, LifetimeP(new_lft)] - perm];
            
            // -- Update version of predicate
              if (!HasDirectPerm(Mask, null, LifetimeP(new_lft))) {
                havoc newVersion;
                Heap := Heap[null, LifetimeP(new_lft):=newVersion];
              }
            assume state(Heap, Mask);
            assume valid_lft(Heap, new_lft);
            assume (forall x$0: Ref ::
              { Map#Domain(Map#Elements(new_lft)[0])[x$0] } { Map#Elements(Map#Elements(new_lft)[0])[x$0] }
              Map#Domain(Map#Elements(new_lft)[0])[x$0] ==> 0 / 1 < Map#Elements(Map#Elements(new_lft)[0])[x$0]
            );
            assume (forall x$0_1: Ref ::
              { Map#Domain(Map#Elements(new_lft)[0])[x$0_1] } { Map#Elements(Map#Elements(new_lft)[0])[x$0_1] }
              Map#Domain(Map#Elements(new_lft)[0])[x$0_1] ==> Map#Elements(Map#Elements(new_lft)[0])[x$0_1] <= 1 / 1
            );
            havoc QPMask;
            
            // -- check if receiver acc(lft_T(x$0), new_lft[0][x$0]) is injective
              assert {:msg "  Unfolding LifetimeP(new_lft) might fail. Quantified resource lft_T(x$0) might not be injective. (0695.vpr@64.5--64.30) [207916]"}
                (forall x$0_2: Ref, x$0_2_1: Ref ::
                { neverTriggered5(x$0_2), neverTriggered5(x$0_2_1) }
                (((x$0_2 != x$0_2_1 && Map#Domain(Map#Elements(new_lft)[0])[x$0_2]) && Map#Domain(Map#Elements(new_lft)[0])[x$0_2_1]) && NoPerm < Map#Elements(Map#Elements(new_lft)[0])[x$0_2]) && NoPerm < Map#Elements(Map#Elements(new_lft)[0])[x$0_2_1] ==> x$0_2 != x$0_2_1
              );
            
            // -- Define Inverse Function
              assume (forall x$0_2: Ref ::
                { Heap[null, lft_T(x$0_2)] } { Mask[null, lft_T(x$0_2)] } { Map#Domain(Map#Elements(new_lft)[0])[x$0_2] } { Map#Elements(Map#Elements(new_lft)[0])[x$0_2] }
                Map#Domain(Map#Elements(new_lft)[0])[x$0_2] && NoPerm < Map#Elements(Map#Elements(new_lft)[0])[x$0_2] ==> invRecv5(x$0_2) == x$0_2 && qpRange5(x$0_2)
              );
              assume (forall x_1_1_1: Ref ::
                { invRecv5(x_1_1_1) }
                (Map#Domain(Map#Elements(new_lft)[0])[invRecv5(x_1_1_1)] && NoPerm < Map#Elements(Map#Elements(new_lft)[0])[invRecv5(x_1_1_1)]) && qpRange5(x_1_1_1) ==> invRecv5(x_1_1_1) == x_1_1_1
              );
            // Check that permission expression is non-negative for all fields
            assert {:msg "  Unfolding LifetimeP(new_lft) might fail. Fraction new_lft[0][x$0] might be negative. (0695.vpr@64.5--64.30) [207917]"}
              (forall x$0_2: Ref ::
              { Heap[null, lft_T(x$0_2)] } { Mask[null, lft_T(x$0_2)] } { Map#Domain(Map#Elements(new_lft)[0])[x$0_2] } { Map#Elements(Map#Elements(new_lft)[0])[x$0_2] }
              Map#Domain(Map#Elements(new_lft)[0])[x$0_2] ==> Map#Elements(Map#Elements(new_lft)[0])[x$0_2] >= NoPerm
            );
            
            // -- Define updated permissions
              assume (forall x_1_1_1: Ref ::
                { QPMask[null, lft_T(x_1_1_1)] }
                (Map#Domain(Map#Elements(new_lft)[0])[invRecv5(x_1_1_1)] && NoPerm < Map#Elements(Map#Elements(new_lft)[0])[invRecv5(x_1_1_1)]) && qpRange5(x_1_1_1) ==> (NoPerm < Map#Elements(Map#Elements(new_lft)[0])[invRecv5(x_1_1_1)] ==> invRecv5(x_1_1_1) == x_1_1_1) && QPMask[null, lft_T(x_1_1_1)] == Mask[null, lft_T(x_1_1_1)] + Map#Elements(Map#Elements(new_lft)[0])[invRecv5(x_1_1_1)]
              );
            
            // -- Define independent locations
              assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
                (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
              );
              assume (forall x_1_1_1: Ref ::
                { QPMask[null, lft_T(x_1_1_1)] }
                !((Map#Domain(Map#Elements(new_lft)[0])[invRecv5(x_1_1_1)] && NoPerm < Map#Elements(Map#Elements(new_lft)[0])[invRecv5(x_1_1_1)]) && qpRange5(x_1_1_1)) ==> QPMask[null, lft_T(x_1_1_1)] == Mask[null, lft_T(x_1_1_1)]
              );
            Mask := QPMask;
            assume state(Heap, Mask);
            assume (forall x$0_4: Ref ::
              { Map#Domain(Map#Elements(new_lft)[1])[x$0_4] } { Map#Elements(Map#Elements(new_lft)[1])[x$0_4] }
              Map#Domain(Map#Elements(new_lft)[1])[x$0_4] ==> 0 / 1 < Map#Elements(Map#Elements(new_lft)[1])[x$0_4]
            );
            assume (forall x$0_5: Ref ::
              { Map#Domain(Map#Elements(new_lft)[1])[x$0_5] } { Map#Elements(Map#Elements(new_lft)[1])[x$0_5] }
              Map#Domain(Map#Elements(new_lft)[1])[x$0_5] ==> Map#Elements(Map#Elements(new_lft)[1])[x$0_5] <= 1 / 1
            );
            havoc QPMask;
            
            // -- check if receiver acc(lft_List(x$0), new_lft[1][x$0]) is injective
              assert {:msg "  Unfolding LifetimeP(new_lft) might fail. Quantified resource lft_List(x$0) might not be injective. (0695.vpr@64.5--64.30) [207918]"}
                (forall x$0_6: Ref, x$0_6_1: Ref ::
                { neverTriggered6(x$0_6), neverTriggered6(x$0_6_1) }
                (((x$0_6 != x$0_6_1 && Map#Domain(Map#Elements(new_lft)[1])[x$0_6]) && Map#Domain(Map#Elements(new_lft)[1])[x$0_6_1]) && NoPerm < Map#Elements(Map#Elements(new_lft)[1])[x$0_6]) && NoPerm < Map#Elements(Map#Elements(new_lft)[1])[x$0_6_1] ==> x$0_6 != x$0_6_1
              );
            
            // -- Define Inverse Function
              assume (forall x$0_6: Ref ::
                { Heap[null, lft_List(x$0_6)] } { Mask[null, lft_List(x$0_6)] } { Map#Domain(Map#Elements(new_lft)[1])[x$0_6] } { Map#Elements(Map#Elements(new_lft)[1])[x$0_6] }
                Map#Domain(Map#Elements(new_lft)[1])[x$0_6] && NoPerm < Map#Elements(Map#Elements(new_lft)[1])[x$0_6] ==> invRecv6(x$0_6) == x$0_6 && qpRange6(x$0_6)
              );
              assume (forall x_2_1: Ref ::
                { invRecv6(x_2_1) }
                (Map#Domain(Map#Elements(new_lft)[1])[invRecv6(x_2_1)] && NoPerm < Map#Elements(Map#Elements(new_lft)[1])[invRecv6(x_2_1)]) && qpRange6(x_2_1) ==> invRecv6(x_2_1) == x_2_1
              );
            // Check that permission expression is non-negative for all fields
            assert {:msg "  Unfolding LifetimeP(new_lft) might fail. Fraction new_lft[1][x$0] might be negative. (0695.vpr@64.5--64.30) [207919]"}
              (forall x$0_6: Ref ::
              { Heap[null, lft_List(x$0_6)] } { Mask[null, lft_List(x$0_6)] } { Map#Domain(Map#Elements(new_lft)[1])[x$0_6] } { Map#Elements(Map#Elements(new_lft)[1])[x$0_6] }
              Map#Domain(Map#Elements(new_lft)[1])[x$0_6] ==> Map#Elements(Map#Elements(new_lft)[1])[x$0_6] >= NoPerm
            );
            
            // -- Define updated permissions
              assume (forall x_2_1: Ref ::
                { QPMask[null, lft_List(x_2_1)] }
                (Map#Domain(Map#Elements(new_lft)[1])[invRecv6(x_2_1)] && NoPerm < Map#Elements(Map#Elements(new_lft)[1])[invRecv6(x_2_1)]) && qpRange6(x_2_1) ==> (NoPerm < Map#Elements(Map#Elements(new_lft)[1])[invRecv6(x_2_1)] ==> invRecv6(x_2_1) == x_2_1) && QPMask[null, lft_List(x_2_1)] == Mask[null, lft_List(x_2_1)] + Map#Elements(Map#Elements(new_lft)[1])[invRecv6(x_2_1)]
              );
            
            // -- Define independent locations
              assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
                (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
              );
              assume (forall x_2_1: Ref ::
                { QPMask[null, lft_List(x_2_1)] }
                !((Map#Domain(Map#Elements(new_lft)[1])[invRecv6(x_2_1)] && NoPerm < Map#Elements(Map#Elements(new_lft)[1])[invRecv6(x_2_1)]) && qpRange6(x_2_1)) ==> QPMask[null, lft_List(x_2_1)] == Mask[null, lft_List(x_2_1)]
              );
            Mask := QPMask;
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: assert (x.ref in new_lft[1]) -- 0695.vpr@65.5--65.37
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            
            // -- Check definedness of (x.ref in new_lft[1])
              assert {:msg "  Assert might fail. There might be insufficient permission to access x.ref (0695.vpr@65.12--65.37) [207920]"}
                HasDirectPerm(ExhaleWellDef0Mask, x, ref_2);
              assert {:msg "  Assert might fail. Map new_lft might not contain an entry at key 1. (0695.vpr@65.12--65.37) [207921]"}
                Map#Domain(new_lft)[1];
            assert {:msg "  Assert might fail. Assertion (x.ref in new_lft[1]) might not hold. (0695.vpr@65.12--65.37) [207922]"}
              Map#Domain(Map#Elements(new_lft)[1])[Heap[x, ref_2]];
            assume state(Heap, Mask);
          
          // -- Translating statement: unfold acc(lft_List(x.ref), new_lft[1][x.ref]) -- 0695.vpr@66.5--66.57
            
            // -- Check definedness of acc(lft_List(x.ref), new_lft[1][x.ref])
              assert {:msg "  Unfolding lft_List(x.ref) might fail. There might be insufficient permission to access x.ref (0695.vpr@66.5--66.57) [207923]"}
                HasDirectPerm(Mask, x, ref_2);
              assert {:msg "  Unfolding lft_List(x.ref) might fail. Map new_lft might not contain an entry at key 1. (0695.vpr@66.5--66.57) [207924]"}
                Map#Domain(new_lft)[1];
              assert {:msg "  Unfolding lft_List(x.ref) might fail. There might be insufficient permission to access x.ref (0695.vpr@66.5--66.57) [207925]"}
                HasDirectPerm(Mask, x, ref_2);
              assert {:msg "  Unfolding lft_List(x.ref) might fail. Map new_lft[1] might not contain an entry at key x.ref. (0695.vpr@66.5--66.57) [207926]"}
                Map#Domain(Map#Elements(new_lft)[1])[Heap[x, ref_2]];
            
            // -- Check definedness of new_lft[1][x.ref]
              assert {:msg "  Unfolding lft_List(x.ref) might fail. Map new_lft might not contain an entry at key 1. (0695.vpr@66.5--66.57) [207927]"}
                Map#Domain(new_lft)[1];
              assert {:msg "  Unfolding lft_List(x.ref) might fail. There might be insufficient permission to access x.ref (0695.vpr@66.5--66.57) [207928]"}
                HasDirectPerm(Mask, x, ref_2);
              assert {:msg "  Unfolding lft_List(x.ref) might fail. Map new_lft[1] might not contain an entry at key x.ref. (0695.vpr@66.5--66.57) [207929]"}
                Map#Domain(Map#Elements(new_lft)[1])[Heap[x, ref_2]];
            assert {:msg "  Unfolding lft_List(x.ref) might fail. Fraction new_lft[1][x.ref] might not be positive. (0695.vpr@66.5--66.57) [207930]"}
              Map#Elements(Map#Elements(new_lft)[1])[Heap[x, ref_2]] > NoPerm;
            assume lft_List#trigger(Heap, lft_List(Heap[x, ref_2]));
            assume Heap[null, lft_List(Heap[x, ref_2])] == CombineFrames(FrameFragment(Heap[Heap[x, ref_2], ref_2]), Heap[null, List(Heap[Heap[x, ref_2], ref_2])]);
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            perm := Map#Elements(Map#Elements(new_lft)[1])[Heap[x, ref_2]];
            assert {:msg "  Unfolding lft_List(x.ref) might fail. Fraction new_lft[1][x.ref] might be negative. (0695.vpr@66.5--66.57) [207931]"}
              perm >= NoPerm;
            if (perm != NoPerm) {
              assert {:msg "  Unfolding lft_List(x.ref) might fail. There might be insufficient permission to access lft_List(x.ref) (0695.vpr@66.5--66.57) [207932]"}
                perm <= Mask[null, lft_List(Heap[x, ref_2])];
            }
            Mask := Mask[null, lft_List(Heap[x, ref_2]):=Mask[null, lft_List(Heap[x, ref_2])] - perm];
            
            // -- Update version of predicate
              if (!HasDirectPerm(Mask, null, lft_List(Heap[x, ref_2]))) {
                havoc newVersion;
                Heap := Heap[null, lft_List(Heap[x, ref_2]):=newVersion];
              }
            perm := Map#Elements(Map#Elements(new_lft)[1])[Heap[x, ref_2]];
            assert {:msg "  Unfolding lft_List(x.ref) might fail. Fraction new_lft[1][x.ref] might be negative. (0695.vpr@66.5--66.57) [207933]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> Heap[x, ref_2] != null;
            Mask := Mask[Heap[x, ref_2], ref_2:=Mask[Heap[x, ref_2], ref_2] + perm];
            assume state(Heap, Mask);
            perm := Map#Elements(Map#Elements(new_lft)[1])[Heap[x, ref_2]];
            assert {:msg "  Unfolding lft_List(x.ref) might fail. Fraction new_lft[1][x.ref] might be negative. (0695.vpr@66.5--66.57) [207934]"}
              perm >= NoPerm;
            Mask := Mask[null, List(Heap[Heap[x, ref_2], ref_2]):=Mask[null, List(Heap[Heap[x, ref_2], ref_2])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(lft_List(Heap[x, ref_2]), Heap[null, lft_List(Heap[x, ref_2])], List(Heap[Heap[x, ref_2], ref_2]), Heap[null, List(Heap[Heap[x, ref_2], ref_2])]);
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: x_nxt := sh_borrow(x.ref, new_lft[1][x.ref]) -- 0695.vpr@68.5--68.55
            PreCallHeap := Heap;
            PreCallMask := Mask;
            
            // -- Check definedness of x.ref
              assert {:msg "  Method call might fail. There might be insufficient permission to access x.ref (0695.vpr@68.5--68.55) [207935]"}
                HasDirectPerm(Mask, x, ref_2);
            
            // -- Check definedness of new_lft[1][x.ref]
              assert {:msg "  Method call might fail. Map new_lft might not contain an entry at key 1. (0695.vpr@68.5--68.55) [207936]"}
                Map#Domain(new_lft)[1];
              assert {:msg "  Method call might fail. There might be insufficient permission to access x.ref (0695.vpr@68.5--68.55) [207937]"}
                HasDirectPerm(Mask, x, ref_2);
              assert {:msg "  Method call might fail. Map new_lft[1] might not contain an entry at key x.ref. (0695.vpr@68.5--68.55) [207938]"}
                Map#Domain(Map#Elements(new_lft)[1])[Heap[x, ref_2]];
            arg_a := Heap[x, ref_2];
            arg_p := Map#Elements(Map#Elements(new_lft)[1])[Heap[x, ref_2]];
            
            // -- Exhaling precondition
              ExhaleWellDef0Mask := Mask;
              ExhaleWellDef0Heap := Heap;
              assert {:msg "  The precondition of method sh_borrow might not hold. Assertion new_lft[1][x.ref] > 0 / 1 might not hold. (0695.vpr@68.5--68.55) [207939]"}
                0 / 1 < arg_p;
              perm := arg_p;
              assert {:msg "  The precondition of method sh_borrow might not hold. Fraction new_lft[1][x.ref] might be negative. (0695.vpr@68.5--68.55) [207940]"}
                perm >= NoPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method sh_borrow might not hold. There might be insufficient permission to access x.ref.ref (0695.vpr@68.5--68.55) [207941]"}
                  perm <= Mask[arg_a, ref_2];
              }
              Mask := Mask[arg_a, ref_2:=Mask[arg_a, ref_2] - perm];
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
            
            // -- Havocing target variables
              havoc x_nxt;
            
            // -- Inhaling postcondition
              perm := arg_p / 2;
              assert {:msg "  Method call might fail. Fraction new_lft[1][x.ref] / 2 might be negative. (0695.vpr@68.5--68.55) [207942]"}
                perm >= NoPerm;
              assume perm > NoPerm ==> arg_a != null;
              Mask := Mask[arg_a, ref_2:=Mask[arg_a, ref_2] + perm];
              assume state(Heap, Mask);
              assume Heap[arg_a, ref_2] == PreCallHeap[arg_a, ref_2];
              perm := arg_p / 2;
              assert {:msg "  Method call might fail. Fraction new_lft[1][x.ref] / 2 might be negative. (0695.vpr@68.5--68.55) [207943]"}
                perm >= NoPerm;
              assume perm > NoPerm ==> x_nxt != null;
              Mask := Mask[x_nxt, ref_2:=Mask[x_nxt, ref_2] + perm];
              assume state(Heap, Mask);
              assume Heap[x_nxt, ref_2] == Heap[arg_a, ref_2];
              assume state(Heap, Mask);
            assume Heap[x_nxt, $allocated];
            assume state(Heap, Mask);
          
          // -- Translating statement: assert x_nxt.ref == x.ref.ref -- 0695.vpr@69.5--69.34
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            
            // -- Check definedness of x_nxt.ref == x.ref.ref
              assert {:msg "  Assert might fail. There might be insufficient permission to access x_nxt.ref (0695.vpr@69.12--69.34) [207944]"}
                HasDirectPerm(ExhaleWellDef0Mask, x_nxt, ref_2);
              assert {:msg "  Assert might fail. There might be insufficient permission to access x.ref (0695.vpr@69.12--69.34) [207945]"}
                HasDirectPerm(ExhaleWellDef0Mask, x, ref_2);
              assert {:msg "  Assert might fail. There might be insufficient permission to access x.ref.ref (0695.vpr@69.12--69.34) [207946]"}
                HasDirectPerm(ExhaleWellDef0Mask, Heap[x, ref_2], ref_2);
            assert {:msg "  Assert might fail. Assertion x_nxt.ref == x.ref.ref might not hold. (0695.vpr@69.12--69.34) [207947]"}
              Heap[x_nxt, ref_2] == Heap[Heap[x, ref_2], ref_2];
            assume state(Heap, Mask);
          
          // -- Translating statement: fold acc(lft_List(x.ref), new_lft[1][x.ref] / 2) -- 0695.vpr@71.5--71.57
            
            // -- Check definedness of acc(lft_List(x.ref), new_lft[1][x.ref] / 2)
              assert {:msg "  Folding lft_List(x.ref) might fail. There might be insufficient permission to access x.ref (0695.vpr@71.5--71.57) [207948]"}
                HasDirectPerm(Mask, x, ref_2);
              assert {:msg "  Folding lft_List(x.ref) might fail. Map new_lft might not contain an entry at key 1. (0695.vpr@71.5--71.57) [207949]"}
                Map#Domain(new_lft)[1];
              assert {:msg "  Folding lft_List(x.ref) might fail. There might be insufficient permission to access x.ref (0695.vpr@71.5--71.57) [207950]"}
                HasDirectPerm(Mask, x, ref_2);
              assert {:msg "  Folding lft_List(x.ref) might fail. Map new_lft[1] might not contain an entry at key x.ref. (0695.vpr@71.5--71.57) [207951]"}
                Map#Domain(Map#Elements(new_lft)[1])[Heap[x, ref_2]];
            
            // -- Check definedness of new_lft[1][x.ref] / 2
              assert {:msg "  Folding lft_List(x.ref) might fail. Map new_lft might not contain an entry at key 1. (0695.vpr@71.5--71.57) [207952]"}
                Map#Domain(new_lft)[1];
              assert {:msg "  Folding lft_List(x.ref) might fail. There might be insufficient permission to access x.ref (0695.vpr@71.5--71.57) [207953]"}
                HasDirectPerm(Mask, x, ref_2);
              assert {:msg "  Folding lft_List(x.ref) might fail. Map new_lft[1] might not contain an entry at key x.ref. (0695.vpr@71.5--71.57) [207954]"}
                Map#Domain(Map#Elements(new_lft)[1])[Heap[x, ref_2]];
            assert {:msg "  Folding lft_List(x.ref) might fail. Fraction new_lft[1][x.ref] / 2 might not be positive. (0695.vpr@71.5--71.57) [207955]"}
              Map#Elements(Map#Elements(new_lft)[1])[Heap[x, ref_2]] > NoPerm;
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            perm := Map#Elements(Map#Elements(new_lft)[1])[Heap[x, ref_2]] / 2;
            assert {:msg "  Folding lft_List(x.ref) might fail. Fraction new_lft[1][x.ref] / 2 might be negative. (0695.vpr@71.5--71.57) [207956]"}
              perm >= NoPerm;
            if (perm != NoPerm) {
              assert {:msg "  Folding lft_List(x.ref) might fail. There might be insufficient permission to access x.ref.ref (0695.vpr@71.5--71.57) [207957]"}
                perm <= Mask[Heap[x, ref_2], ref_2];
            }
            Mask := Mask[Heap[x, ref_2], ref_2:=Mask[Heap[x, ref_2], ref_2] - perm];
            perm := Map#Elements(Map#Elements(new_lft)[1])[Heap[x, ref_2]] / 2;
            assert {:msg "  Folding lft_List(x.ref) might fail. Fraction new_lft[1][x.ref] / 2 might be negative. (0695.vpr@71.5--71.57) [207958]"}
              perm >= NoPerm;
            if (perm != NoPerm) {
              assert {:msg "  Folding lft_List(x.ref) might fail. There might be insufficient permission to access List(x.ref.ref) (0695.vpr@71.5--71.57) [207959]"}
                perm <= Mask[null, List(Heap[Heap[x, ref_2], ref_2])];
            }
            Mask := Mask[null, List(Heap[Heap[x, ref_2], ref_2]):=Mask[null, List(Heap[Heap[x, ref_2], ref_2])] - perm];
            
            // -- Record predicate instance information
              assume InsidePredicate(lft_List(Heap[x, ref_2]), Heap[null, lft_List(Heap[x, ref_2])], List(Heap[Heap[x, ref_2], ref_2]), Heap[null, List(Heap[Heap[x, ref_2], ref_2])]);
            perm := Map#Elements(Map#Elements(new_lft)[1])[Heap[x, ref_2]] / 2;
            assert {:msg "  Folding lft_List(x.ref) might fail. Fraction new_lft[1][x.ref] / 2 might be negative. (0695.vpr@71.5--71.57) [207960]"}
              perm >= NoPerm;
            Mask := Mask[null, lft_List(Heap[x, ref_2]):=Mask[null, lft_List(Heap[x, ref_2])] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            assume lft_List#trigger(Heap, lft_List(Heap[x, ref_2]));
            assume Heap[null, lft_List(Heap[x, ref_2])] == CombineFrames(FrameFragment(Heap[Heap[x, ref_2], ref_2]), Heap[null, List(Heap[Heap[x, ref_2], ref_2])]);
            if (!HasDirectPerm(Mask, null, lft_List(Heap[x, ref_2]))) {
              Heap := Heap[null, lft_List#sm(Heap[x, ref_2]):=ZeroPMask];
              havoc freshVersion;
              Heap := Heap[null, lft_List(Heap[x, ref_2]):=freshVersion];
            }
            Heap := Heap[null, lft_List#sm(Heap[x, ref_2]):=Heap[null, lft_List#sm(Heap[x, ref_2])][Heap[x, ref_2], ref_2:=true]];
            havoc newPMask;
            assume (forall <A, B> o_11: Ref, f_3: (Field A B) ::
              { newPMask[o_11, f_3] }
              Heap[null, lft_List#sm(Heap[x, ref_2])][o_11, f_3] || Heap[null, List#sm(Heap[Heap[x, ref_2], ref_2])][o_11, f_3] ==> newPMask[o_11, f_3]
            );
            Heap := Heap[null, lft_List#sm(Heap[x, ref_2]):=newPMask];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: fold acc(LifetimeP(new_lft), write) -- 0695.vpr@74.5--74.28
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Folding LifetimeP(new_lft) might fail. Assertion valid_lft(new_lft) might not hold. (0695.vpr@74.5--74.28) [207961]"}
              valid_lft(Heap, new_lft);
            if (*) {
              if (Map#Domain(Map#Elements(new_lft)[0])[x$0_8]) {
                assert {:msg "  Folding LifetimeP(new_lft) might fail. Assertion new_lft[0][x$0] > 0 / 1 might not hold. (0695.vpr@74.5--74.28) [207962]"}
                  0 / 1 < Map#Elements(Map#Elements(new_lft)[0])[x$0_8];
              }
              assume false;
            }
            assume (forall x$0_9_1: Ref ::
              { Map#Domain(Map#Elements(new_lft)[0])[x$0_9_1] } { Map#Elements(Map#Elements(new_lft)[0])[x$0_9_1] }
              Map#Domain(Map#Elements(new_lft)[0])[x$0_9_1] ==> 0 / 1 < Map#Elements(Map#Elements(new_lft)[0])[x$0_9_1]
            );
            if (*) {
              if (Map#Domain(Map#Elements(new_lft)[0])[x$0_10]) {
                assert {:msg "  Folding LifetimeP(new_lft) might fail. Assertion new_lft[0][x$0] <= 1 / 1 might not hold. (0695.vpr@74.5--74.28) [207963]"}
                  Map#Elements(Map#Elements(new_lft)[0])[x$0_10] <= 1 / 1;
              }
              assume false;
            }
            assume (forall x$0_11_1: Ref ::
              { Map#Domain(Map#Elements(new_lft)[0])[x$0_11_1] } { Map#Elements(Map#Elements(new_lft)[0])[x$0_11_1] }
              Map#Domain(Map#Elements(new_lft)[0])[x$0_11_1] ==> Map#Elements(Map#Elements(new_lft)[0])[x$0_11_1] <= 1 / 1
            );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Folding LifetimeP(new_lft) might fail. Fraction new_lft[0][x$0] might be negative. (0695.vpr@74.5--74.28) [207964]"}
                (forall x_3_1_1: Ref ::
                { invRecv7(x_3_1_1) }
                Map#Domain(Map#Elements(new_lft)[0])[invRecv7(x_3_1_1)] && qpRange7(x_3_1_1) ==> Map#Elements(Map#Elements(new_lft)[0])[invRecv7(x_3_1_1)] >= NoPerm
              );
            
            // -- check if receiver acc(lft_T(x$0), new_lft[0][x$0]) is injective
              assert {:msg "  Folding LifetimeP(new_lft) might fail. Quantified resource lft_T(x$0) might not be injective. (0695.vpr@74.5--74.28) [207965]"}
                (forall x$0_12: Ref, x$0_12_1: Ref ::
                { neverTriggered7(x$0_12), neverTriggered7(x$0_12_1) }
                (((x$0_12 != x$0_12_1 && Map#Domain(Map#Elements(new_lft)[0])[x$0_12]) && Map#Domain(Map#Elements(new_lft)[0])[x$0_12_1]) && NoPerm < Map#Elements(Map#Elements(new_lft)[0])[x$0_12]) && NoPerm < Map#Elements(Map#Elements(new_lft)[0])[x$0_12_1] ==> x$0_12 != x$0_12_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Folding LifetimeP(new_lft) might fail. There might be insufficient permission to access lft_T(x$0) (0695.vpr@74.5--74.28) [207966]"}
                (forall x$0_12: Ref ::
                { Heap[null, lft_T(x$0_12)] } { Mask[null, lft_T(x$0_12)] } { Map#Domain(Map#Elements(new_lft)[0])[x$0_12] } { Map#Elements(Map#Elements(new_lft)[0])[x$0_12] }
                Map#Domain(Map#Elements(new_lft)[0])[x$0_12] ==> Mask[null, lft_T(x$0_12)] >= Map#Elements(Map#Elements(new_lft)[0])[x$0_12]
              );
            
            // -- assumptions for inverse of receiver acc(lft_T(x$0), new_lft[0][x$0])
              assume (forall x$0_12: Ref ::
                { Heap[null, lft_T(x$0_12)] } { Mask[null, lft_T(x$0_12)] } { Map#Domain(Map#Elements(new_lft)[0])[x$0_12] } { Map#Elements(Map#Elements(new_lft)[0])[x$0_12] }
                Map#Domain(Map#Elements(new_lft)[0])[x$0_12] && NoPerm < Map#Elements(Map#Elements(new_lft)[0])[x$0_12] ==> invRecv7(x$0_12) == x$0_12 && qpRange7(x$0_12)
              );
              assume (forall x_3_1_1: Ref ::
                { invRecv7(x_3_1_1) }
                (Map#Domain(Map#Elements(new_lft)[0])[invRecv7(x_3_1_1)] && NoPerm < Map#Elements(Map#Elements(new_lft)[0])[invRecv7(x_3_1_1)]) && qpRange7(x_3_1_1) ==> invRecv7(x_3_1_1) == x_3_1_1
              );
            
            // -- assume permission updates
              assume (forall x_3_1_1: Ref ::
                { QPMask[null, lft_T(x_3_1_1)] }
                (Map#Domain(Map#Elements(new_lft)[0])[invRecv7(x_3_1_1)] && NoPerm < Map#Elements(Map#Elements(new_lft)[0])[invRecv7(x_3_1_1)]) && qpRange7(x_3_1_1) ==> invRecv7(x_3_1_1) == x_3_1_1 && QPMask[null, lft_T(x_3_1_1)] == Mask[null, lft_T(x_3_1_1)] - Map#Elements(Map#Elements(new_lft)[0])[invRecv7(x_3_1_1)]
              );
              assume (forall x_3_1_1: Ref ::
                { QPMask[null, lft_T(x_3_1_1)] }
                !((Map#Domain(Map#Elements(new_lft)[0])[invRecv7(x_3_1_1)] && NoPerm < Map#Elements(Map#Elements(new_lft)[0])[invRecv7(x_3_1_1)]) && qpRange7(x_3_1_1)) ==> QPMask[null, lft_T(x_3_1_1)] == Mask[null, lft_T(x_3_1_1)]
              );
            
            // -- assume permission updates for independent locations 
              assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
                (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
              );
            Mask := QPMask;
            if (*) {
              if (Map#Domain(Map#Elements(new_lft)[1])[x$0_13]) {
                assert {:msg "  Folding LifetimeP(new_lft) might fail. Assertion new_lft[1][x$0] > 0 / 1 might not hold. (0695.vpr@74.5--74.28) [207967]"}
                  0 / 1 < Map#Elements(Map#Elements(new_lft)[1])[x$0_13];
              }
              assume false;
            }
            assume (forall x$0_14_1: Ref ::
              { Map#Domain(Map#Elements(new_lft)[1])[x$0_14_1] } { Map#Elements(Map#Elements(new_lft)[1])[x$0_14_1] }
              Map#Domain(Map#Elements(new_lft)[1])[x$0_14_1] ==> 0 / 1 < Map#Elements(Map#Elements(new_lft)[1])[x$0_14_1]
            );
            if (*) {
              if (Map#Domain(Map#Elements(new_lft)[1])[x$0_15]) {
                assert {:msg "  Folding LifetimeP(new_lft) might fail. Assertion new_lft[1][x$0] <= 1 / 1 might not hold. (0695.vpr@74.5--74.28) [207968]"}
                  Map#Elements(Map#Elements(new_lft)[1])[x$0_15] <= 1 / 1;
              }
              assume false;
            }
            assume (forall x$0_16_1: Ref ::
              { Map#Domain(Map#Elements(new_lft)[1])[x$0_16_1] } { Map#Elements(Map#Elements(new_lft)[1])[x$0_16_1] }
              Map#Domain(Map#Elements(new_lft)[1])[x$0_16_1] ==> Map#Elements(Map#Elements(new_lft)[1])[x$0_16_1] <= 1 / 1
            );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Folding LifetimeP(new_lft) might fail. Fraction new_lft[1][x$0] might be negative. (0695.vpr@74.5--74.28) [207969]"}
                (forall x_4_1_1: Ref ::
                { invRecv8(x_4_1_1) }
                Map#Domain(Map#Elements(new_lft)[1])[invRecv8(x_4_1_1)] && qpRange8(x_4_1_1) ==> Map#Elements(Map#Elements(new_lft)[1])[invRecv8(x_4_1_1)] >= NoPerm
              );
            
            // -- check if receiver acc(lft_List(x$0), new_lft[1][x$0]) is injective
              assert {:msg "  Folding LifetimeP(new_lft) might fail. Quantified resource lft_List(x$0) might not be injective. (0695.vpr@74.5--74.28) [207970]"}
                (forall x$0_17: Ref, x$0_17_1: Ref ::
                { neverTriggered8(x$0_17), neverTriggered8(x$0_17_1) }
                (((x$0_17 != x$0_17_1 && Map#Domain(Map#Elements(new_lft)[1])[x$0_17]) && Map#Domain(Map#Elements(new_lft)[1])[x$0_17_1]) && NoPerm < Map#Elements(Map#Elements(new_lft)[1])[x$0_17]) && NoPerm < Map#Elements(Map#Elements(new_lft)[1])[x$0_17_1] ==> x$0_17 != x$0_17_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Folding LifetimeP(new_lft) might fail. There might be insufficient permission to access lft_List(x$0) (0695.vpr@74.5--74.28) [207971]"}
                (forall x$0_17: Ref ::
                { Heap[null, lft_List(x$0_17)] } { Mask[null, lft_List(x$0_17)] } { Map#Domain(Map#Elements(new_lft)[1])[x$0_17] } { Map#Elements(Map#Elements(new_lft)[1])[x$0_17] }
                Map#Domain(Map#Elements(new_lft)[1])[x$0_17] ==> Mask[null, lft_List(x$0_17)] >= Map#Elements(Map#Elements(new_lft)[1])[x$0_17]
              );
            
            // -- assumptions for inverse of receiver acc(lft_List(x$0), new_lft[1][x$0])
              assume (forall x$0_17: Ref ::
                { Heap[null, lft_List(x$0_17)] } { Mask[null, lft_List(x$0_17)] } { Map#Domain(Map#Elements(new_lft)[1])[x$0_17] } { Map#Elements(Map#Elements(new_lft)[1])[x$0_17] }
                Map#Domain(Map#Elements(new_lft)[1])[x$0_17] && NoPerm < Map#Elements(Map#Elements(new_lft)[1])[x$0_17] ==> invRecv8(x$0_17) == x$0_17 && qpRange8(x$0_17)
              );
              assume (forall x_4_1_1: Ref ::
                { invRecv8(x_4_1_1) }
                (Map#Domain(Map#Elements(new_lft)[1])[invRecv8(x_4_1_1)] && NoPerm < Map#Elements(Map#Elements(new_lft)[1])[invRecv8(x_4_1_1)]) && qpRange8(x_4_1_1) ==> invRecv8(x_4_1_1) == x_4_1_1
              );
            
            // -- assume permission updates
              assume (forall x_4_1_1: Ref ::
                { QPMask[null, lft_List(x_4_1_1)] }
                (Map#Domain(Map#Elements(new_lft)[1])[invRecv8(x_4_1_1)] && NoPerm < Map#Elements(Map#Elements(new_lft)[1])[invRecv8(x_4_1_1)]) && qpRange8(x_4_1_1) ==> invRecv8(x_4_1_1) == x_4_1_1 && QPMask[null, lft_List(x_4_1_1)] == Mask[null, lft_List(x_4_1_1)] - Map#Elements(Map#Elements(new_lft)[1])[invRecv8(x_4_1_1)]
              );
              assume (forall x_4_1_1: Ref ::
                { QPMask[null, lft_List(x_4_1_1)] }
                !((Map#Domain(Map#Elements(new_lft)[1])[invRecv8(x_4_1_1)] && NoPerm < Map#Elements(Map#Elements(new_lft)[1])[invRecv8(x_4_1_1)]) && qpRange8(x_4_1_1)) ==> QPMask[null, lft_List(x_4_1_1)] == Mask[null, lft_List(x_4_1_1)]
              );
            
            // -- assume permission updates for independent locations 
              assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
                (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
              );
            Mask := QPMask;
            perm := FullPerm;
            Mask := Mask[null, LifetimeP(new_lft):=Mask[null, LifetimeP(new_lft)] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            assume LifetimeP#trigger(Heap, LifetimeP(new_lft));
            assume Heap[null, LifetimeP(new_lft)] == CombineFrames(FrameFragment(LifetimeP#condqp1(Heap, new_lft)), FrameFragment(LifetimeP#condqp2(Heap, new_lft)));
            if (!HasDirectPerm(Mask, null, LifetimeP(new_lft))) {
              Heap := Heap[null, LifetimeP#sm(new_lft):=ZeroPMask];
              havoc freshVersion;
              Heap := Heap[null, LifetimeP(new_lft):=freshVersion];
            }
            assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: fold acc(lft_List(x_nxt), new_lft[1][x.ref]) -- 0695.vpr@76.5--76.55
            
            // -- Check definedness of acc(lft_List(x_nxt), new_lft[1][x.ref])
              assert {:msg "  Folding lft_List(x_nxt) might fail. Map new_lft might not contain an entry at key 1. (0695.vpr@76.5--76.55) [207972]"}
                Map#Domain(new_lft)[1];
              assert {:msg "  Folding lft_List(x_nxt) might fail. There might be insufficient permission to access x.ref (0695.vpr@76.5--76.55) [207973]"}
                HasDirectPerm(Mask, x, ref_2);
              assert {:msg "  Folding lft_List(x_nxt) might fail. Map new_lft[1] might not contain an entry at key x.ref. (0695.vpr@76.5--76.55) [207974]"}
                Map#Domain(Map#Elements(new_lft)[1])[Heap[x, ref_2]];
            
            // -- Check definedness of new_lft[1][x.ref]
              assert {:msg "  Folding lft_List(x_nxt) might fail. Map new_lft might not contain an entry at key 1. (0695.vpr@76.5--76.55) [207975]"}
                Map#Domain(new_lft)[1];
              assert {:msg "  Folding lft_List(x_nxt) might fail. There might be insufficient permission to access x.ref (0695.vpr@76.5--76.55) [207976]"}
                HasDirectPerm(Mask, x, ref_2);
              assert {:msg "  Folding lft_List(x_nxt) might fail. Map new_lft[1] might not contain an entry at key x.ref. (0695.vpr@76.5--76.55) [207977]"}
                Map#Domain(Map#Elements(new_lft)[1])[Heap[x, ref_2]];
            assert {:msg "  Folding lft_List(x_nxt) might fail. Fraction new_lft[1][x.ref] might not be positive. (0695.vpr@76.5--76.55) [207978]"}
              Map#Elements(Map#Elements(new_lft)[1])[Heap[x, ref_2]] > NoPerm;
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            perm := Map#Elements(Map#Elements(new_lft)[1])[Heap[x, ref_2]];
            assert {:msg "  Folding lft_List(x_nxt) might fail. Fraction new_lft[1][x.ref] might be negative. (0695.vpr@76.5--76.55) [207979]"}
              perm >= NoPerm;
            if (perm != NoPerm) {
              assert {:msg "  Folding lft_List(x_nxt) might fail. There might be insufficient permission to access x_nxt.ref (0695.vpr@76.5--76.55) [207980]"}
                perm <= Mask[x_nxt, ref_2];
            }
            Mask := Mask[x_nxt, ref_2:=Mask[x_nxt, ref_2] - perm];
            perm := Map#Elements(Map#Elements(new_lft)[1])[Heap[x, ref_2]];
            assert {:msg "  Folding lft_List(x_nxt) might fail. Fraction new_lft[1][x.ref] might be negative. (0695.vpr@76.5--76.55) [207981]"}
              perm >= NoPerm;
            if (perm != NoPerm) {
              assert {:msg "  Folding lft_List(x_nxt) might fail. There might be insufficient permission to access List(x_nxt.ref) (0695.vpr@76.5--76.55) [207982]"}
                perm <= Mask[null, List(Heap[x_nxt, ref_2])];
            }
            Mask := Mask[null, List(Heap[x_nxt, ref_2]):=Mask[null, List(Heap[x_nxt, ref_2])] - perm];
            
            // -- Record predicate instance information
              assume InsidePredicate(lft_List(x_nxt), Heap[null, lft_List(x_nxt)], List(Heap[x_nxt, ref_2]), Heap[null, List(Heap[x_nxt, ref_2])]);
            perm := Map#Elements(Map#Elements(new_lft)[1])[Heap[x, ref_2]];
            assert {:msg "  Folding lft_List(x_nxt) might fail. Fraction new_lft[1][x.ref] might be negative. (0695.vpr@76.5--76.55) [207983]"}
              perm >= NoPerm;
            Mask := Mask[null, lft_List(x_nxt):=Mask[null, lft_List(x_nxt)] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            assume lft_List#trigger(Heap, lft_List(x_nxt));
            assume Heap[null, lft_List(x_nxt)] == CombineFrames(FrameFragment(Heap[x_nxt, ref_2]), Heap[null, List(Heap[x_nxt, ref_2])]);
            if (!HasDirectPerm(Mask, null, lft_List(x_nxt))) {
              Heap := Heap[null, lft_List#sm(x_nxt):=ZeroPMask];
              havoc freshVersion;
              Heap := Heap[null, lft_List(x_nxt):=freshVersion];
            }
            Heap := Heap[null, lft_List#sm(x_nxt):=Heap[null, lft_List#sm(x_nxt)][x_nxt, ref_2:=true]];
            havoc newPMask;
            assume (forall <A, B> o_35: Ref, f_17: (Field A B) ::
              { newPMask[o_35, f_17] }
              Heap[null, lft_List#sm(x_nxt)][o_35, f_17] || Heap[null, List#sm(Heap[x_nxt, ref_2])][o_35, f_17] ==> newPMask[o_35, f_17]
            );
            Heap := Heap[null, lft_List#sm(x_nxt):=newPMask];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: new_lft := new_lft -- 0695.vpr@78.5--78.23
            new_lft := new_lft;
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Loop invariant valid_lft(new_lft) && acc(LifetimeP(new_lft), write) might not be preserved. Assertion valid_lft(new_lft) might not hold. (0695.vpr@60.15--60.32) [207984]"}
          valid_lft(Heap, new_lft);
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant valid_lft(new_lft) && acc(LifetimeP(new_lft), write) might not be preserved. There might be insufficient permission to access LifetimeP(new_lft) (0695.vpr@60.15--60.32) [207985]"}
            perm <= Mask[null, LifetimeP(new_lft)];
        }
        Mask := Mask[null, LifetimeP(new_lft):=Mask[null, LifetimeP(new_lft)] - perm];
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(x.ref, write) && (valid_lft(new_lft) && ((x.ref in new_lft[1]) && (false ==> new_lft[1][x.ref] == 1 / 1))) might not be preserved. There might be insufficient permission to access x.ref (0695.vpr@61.15--61.60) [207986]"}
            perm <= Mask[x, ref_2];
        }
        Mask := Mask[x, ref_2:=Mask[x, ref_2] - perm];
        assert {:msg "  Loop invariant acc(x.ref, write) && (valid_lft(new_lft) && ((x.ref in new_lft[1]) && (false ==> new_lft[1][x.ref] == 1 / 1))) might not be preserved. Assertion valid_lft(new_lft) might not hold. (0695.vpr@61.15--61.60) [207987]"}
          valid_lft(Heap, new_lft);
        assert {:msg "  Loop invariant acc(x.ref, write) && (valid_lft(new_lft) && ((x.ref in new_lft[1]) && (false ==> new_lft[1][x.ref] == 1 / 1))) might not be preserved. Assertion (x.ref in new_lft[1]) might not hold. (0695.vpr@61.15--61.60) [207988]"}
          Map#Domain(Map#Elements(new_lft)[1])[Heap[x, ref_2]];
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(res.ref, write) && acc(ListRef(res.ref, new_lft, false), write) might not be preserved. There might be insufficient permission to access res.ref (0695.vpr@62.15--62.63) [207989]"}
            perm <= Mask[res, ref_2];
        }
        Mask := Mask[res, ref_2:=Mask[res, ref_2] - perm];
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(res.ref, write) && acc(ListRef(res.ref, new_lft, false), write) might not be preserved. There might be insufficient permission to access ListRef(res.ref, new_lft, false) (0695.vpr@62.15--62.63) [207990]"}
            perm <= Mask[null, ListRef(Heap[res, ref_2], new_lft, false)];
        }
        Mask := Mask[null, ListRef(Heap[res, ref_2], new_lft, false):=Mask[null, ListRef(Heap[res, ref_2], new_lft, false)] - perm];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(get_disc(Heap, Heap[x, ref_2], new_lft) != null);
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume valid_lft(Heap, new_lft);
      perm := FullPerm;
      Mask := Mask[null, LifetimeP(new_lft):=Mask[null, LifetimeP(new_lft)] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, ref_2:=Mask[x, ref_2] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume valid_lft(Heap, new_lft);
      assume Map#Domain(Map#Elements(new_lft)[1])[Heap[x, ref_2]];
      perm := FullPerm;
      assume res != null;
      Mask := Mask[res, ref_2:=Mask[res, ref_2] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      Mask := Mask[null, ListRef(Heap[res, ref_2], new_lft, false):=Mask[null, ListRef(Heap[res, ref_2], new_lft, false)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of foo might not hold. Assertion valid_lft(new_lft) might not hold. (0695.vpr@49.11--49.28) [207991]"}
      valid_lft(Heap, new_lft);
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of foo might not hold. There might be insufficient permission to access LifetimeP(new_lft) (0695.vpr@49.11--49.28) [207992]"}
        perm <= Mask[null, LifetimeP(new_lft)];
    }
    Mask := Mask[null, LifetimeP(new_lft):=Mask[null, LifetimeP(new_lft)] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of foo might not hold. There might be insufficient permission to access res.ref (0695.vpr@50.11--50.59) [207993]"}
        perm <= Mask[res, ref_2];
    }
    Mask := Mask[res, ref_2:=Mask[res, ref_2] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of foo might not hold. There might be insufficient permission to access ListRef(res.ref, new_lft, false) (0695.vpr@50.11--50.59) [207994]"}
        perm <= Mask[null, ListRef(Heap[res, ref_2], new_lft, false)];
    }
    Mask := Mask[null, ListRef(Heap[res, ref_2], new_lft, false):=Mask[null, ListRef(Heap[res, ref_2], new_lft, false)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method sh_borrow
// ==================================================

procedure sh_borrow(a_2: Ref, p_1: Perm) returns (bw: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var Ops_1Heap: HeapType;
  var Ops_1Mask: MaskType;
  var b_1_1: bool;
  var UsedHeap: HeapType;
  var UsedMask: MaskType;
  var b_2: bool;
  var Labellhs2Mask: MaskType;
  var Labellhs2Heap: HeapType;
  var boolCur: bool;
  var Used_1Heap: HeapType;
  var Used_1Mask: MaskType;
  var b_2_1: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_3: bool;
  var ResultHeap: HeapType;
  var ResultMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[a_2, $allocated];
  
  // -- Checked inhaling of precondition
    assume 0 / 1 < p_1;
    perm := p_1;
    assert {:msg "  Contract might not be well-formed. Fraction p might be negative. (0695.vpr@83.12--83.36) [207995]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> a_2 != null;
    Mask := Mask[a_2, ref_2:=Mask[a_2, ref_2] + perm];
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
    perm := p_1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction p / 2 might be negative. (0695.vpr@84.11--84.49) [207996]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> a_2 != null;
    PostMask := PostMask[a_2, ref_2:=PostMask[a_2, ref_2] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of a.ref == old(a.ref)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.ref (0695.vpr@84.11--84.49) [207997]"}
        HasDirectPerm(PostMask, a_2, ref_2);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.ref (0695.vpr@84.11--84.49) [207998]"}
        HasDirectPerm(oldMask, a_2, ref_2);
    assume PostHeap[a_2, ref_2] == oldHeap[a_2, ref_2];
    assume state(PostHeap, PostMask);
    perm := p_1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction p / 2 might be negative. (0695.vpr@85.11--85.46) [207999]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> bw != null;
    PostMask := PostMask[bw, ref_2:=PostMask[bw, ref_2] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of bw.ref == a.ref
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access bw.ref (0695.vpr@85.11--85.46) [208000]"}
        HasDirectPerm(PostMask, bw, ref_2);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a.ref (0695.vpr@85.11--85.46) [208001]"}
        HasDirectPerm(PostMask, a_2, ref_2);
    assume PostHeap[bw, ref_2] == PostHeap[a_2, ref_2];
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: bw := a -- 0695.vpr@87.3--87.10
    bw := a_2;
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(bw.ref, p / 2) --*
  // acc(a.ref, p / 2) && old[lhs](bw.ref) == a.ref {
  // } -- 0695.vpr@88.3--88.76
    havoc Ops_1Heap;
    Ops_1Mask := ZeroMask;
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    havoc UsedHeap;
    UsedMask := ZeroMask;
    b_2 := b_2 && state(UsedHeap, UsedMask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_1_1) {
      perm := p_1 / 2;
      assert {:msg "  Packaging wand might fail. Fraction p / 2 might be negative. (0695.vpr@88.3--88.76) [208002]"}
        perm >= NoPerm;
      b_1_1 := b_1_1 && (perm > NoPerm ==> bw != null);
      Ops_1Mask := Ops_1Mask[bw, ref_2:=Ops_1Mask[bw, ref_2] + perm];
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    
    // -- Translating statement: label lhs2 -- 0695.vpr@88.11--88.76
      lhs2:
      Labellhs2Mask := Ops_1Mask;
      Labellhs2Heap := Ops_1Heap;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    // Translating exec of non-ghost operationacc(a.ref, p / 2) && old[lhs](bw.ref) == a.ref
    havoc Used_1Heap;
    Used_1Mask := ZeroMask;
    b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
    
    // -- Transfer of acc(a.ref, p / 2)
      rcvLocal := a_2;
      neededTransfer := p_1 / 2;
      initNeededTransfer := Used_1Mask[rcvLocal, ref_2] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(a.ref, p / 2) might be negative. (0695.vpr@88.3--88.76) [208003]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_1Mask[rcvLocal, ref_2];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_1Mask := Used_1Mask[rcvLocal, ref_2:=Used_1Mask[rcvLocal, ref_2] + takeTransfer];
            b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
            b_2_1 := b_2_1 && Ops_1Heap[rcvLocal, ref_2] == Used_1Heap[rcvLocal, ref_2];
            Ops_1Mask := Ops_1Mask[rcvLocal, ref_2:=Ops_1Mask[rcvLocal, ref_2] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, ref_2];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_1Mask := Used_1Mask[rcvLocal, ref_2:=Used_1Mask[rcvLocal, ref_2] + takeTransfer];
            b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
            b_2_1 := b_2_1 && Heap[rcvLocal, ref_2] == Used_1Heap[rcvLocal, ref_2];
            Mask := Mask[rcvLocal, ref_2:=Mask[rcvLocal, ref_2] - takeTransfer];
            Heap := Heap[null, wand_1#sm(bw, p_1 / 2, a_2, p_1 / 2, bw, a_2):=Heap[null, wand_1#sm(bw, p_1 / 2, a_2, p_1 / 2, bw, a_2)][a_2, ref_2:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access a.ref (0695.vpr@88.3--88.76) [208004]"}
        (b_1_1 && b_1_1) && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[rcvLocal, ref_2] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_3 := b_1_1 && b_2_1;
        b_3 := b_3 && state(ResultHeap, ResultMask);
        b_3 := b_3 && sumMask(ResultMask, Ops_1Mask, Used_1Mask);
        b_3 := (b_3 && IdenticalOnKnownLocations(Ops_1Heap, ResultHeap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_1Heap, ResultHeap, Used_1Mask);
        b_3 := b_3 && state(ResultHeap, ResultMask);
      b_1_1 := b_1_1 && b_3;
    if ((b_1_1 && b_1_1) && b_2_1) {
      if (b_1_1) {
        
        // -- Check definedness of old[lhs](bw.ref) == a.ref
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access bw.ref (0695.vpr@88.3--88.76) [208005]"}
            HasDirectPerm(Labellhs2Mask, bw, ref_2);
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access a.ref (0695.vpr@88.3--88.76) [208006]"}
            HasDirectPerm(ResultMask, a_2, ref_2);
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion old[lhs](bw.ref) == a.ref might not hold. (0695.vpr@88.3--88.76) [208007]"}
      (b_1_1 && b_1_1) && b_2_1 ==> Labellhs2Heap[bw, ref_2] == ResultHeap[a_2, ref_2];
    Mask := Mask[null, wand_1(bw, p_1 / 2, a_2, p_1 / 2, bw, a_2):=Mask[null, wand_1(bw, p_1 / 2, a_2, p_1 / 2, bw, a_2)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := p_1 / 2;
    assert {:msg "  Postcondition of sh_borrow might not hold. Fraction p / 2 might be negative. (0695.vpr@84.11--84.49) [208008]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of sh_borrow might not hold. There might be insufficient permission to access a.ref (0695.vpr@84.11--84.49) [208009]"}
        perm <= Mask[a_2, ref_2];
    }
    Mask := Mask[a_2, ref_2:=Mask[a_2, ref_2] - perm];
    assert {:msg "  Postcondition of sh_borrow might not hold. Assertion a.ref == old(a.ref) might not hold. (0695.vpr@84.11--84.49) [208010]"}
      Heap[a_2, ref_2] == oldHeap[a_2, ref_2];
    perm := p_1 / 2;
    assert {:msg "  Postcondition of sh_borrow might not hold. Fraction p / 2 might be negative. (0695.vpr@85.11--85.46) [208011]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of sh_borrow might not hold. There might be insufficient permission to access bw.ref (0695.vpr@85.11--85.46) [208012]"}
        perm <= Mask[bw, ref_2];
    }
    Mask := Mask[bw, ref_2:=Mask[bw, ref_2] - perm];
    assert {:msg "  Postcondition of sh_borrow might not hold. Assertion bw.ref == a.ref might not hold. (0695.vpr@85.11--85.46) [208013]"}
      Heap[bw, ref_2] == Heap[a_2, ref_2];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method simple
// ==================================================

procedure simple() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var y: Ref;
  var z: Ref;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var freshVersion: FrameType;
  var ExhaleHeap: HeapType;
  var QPMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[y, $allocated];
    assume Heap[z, $allocated];
  
  // -- Translating statement: inhale acc(z.f, 1 / 2) -- 0695.vpr@97.3--97.23
    perm := 1 / 2;
    assert {:msg "  Inhale might fail. Fraction 1 / 2 might be negative. (0695.vpr@97.10--97.23) [208014]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> z != null;
    Mask := Mask[z, f_7:=Mask[z, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(P(y), 1 / 2) -- 0695.vpr@98.3--98.22
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := 1 / 2;
    assert {:msg "  Folding P(y) might fail. Fraction 1 / 2 might be negative. (0695.vpr@98.3--98.22) [208017]"}
      perm >= NoPerm;
    Mask := Mask[null, P(y):=Mask[null, P(y)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume P#trigger(Heap, P(y));
    assume Heap[null, P(y)] == EmptyFrame;
    if (!HasDirectPerm(Mask, null, P(y))) {
      Heap := Heap[null, P#sm(y):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, P(y):=freshVersion];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(z.f, write) -- 0695.vpr@101.3--101.18
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access z.f (0695.vpr@101.10--101.18) [208019]"}
        perm <= Mask[z, f_7];
    }
    Mask := Mask[z, f_7:=Mask[z, f_7] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- 0695.vpr@103.10--103.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x: Ref ::
  //     { (x in Set[Ref]()) }
  //     (x in Set[Ref]()) ==> acc(P(x), write)) -- 0695.vpr@105.3--105.56
    
    // -- Check definedness of (forall x: Ref :: { (x in Set[Ref]()) } (x in Set[Ref]()) ==> acc(P(x), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(P(x), write) is injective
      assert {:msg "  Inhale might fail. Quantified resource P(x) might not be injective. (0695.vpr@105.10--105.56) [208020]"}
        (forall x_1: Ref, x_1_1: Ref ::
        { neverTriggered9(x_1), neverTriggered9(x_1_1) }
        (((x_1 != x_1_1 && (Set#Empty(): Set Ref)[x_1]) && (Set#Empty(): Set Ref)[x_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
      );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[null, P(x_1)] } { Mask[null, P(x_1)] } { (Set#Empty(): Set Ref)[x_1] }
        (Set#Empty(): Set Ref)[x_1] && NoPerm < FullPerm ==> invRecv9(x_1) == x_1 && qpRange9(x_1)
      );
      assume (forall x_2_1: Ref ::
        { invRecv9(x_2_1) }
        ((Set#Empty(): Set Ref)[invRecv9(x_2_1)] && NoPerm < FullPerm) && qpRange9(x_2_1) ==> invRecv9(x_2_1) == x_2_1
      );
    
    // -- Define updated permissions
      assume (forall x_2_1: Ref ::
        { QPMask[null, P(x_2_1)] }
        ((Set#Empty(): Set Ref)[invRecv9(x_2_1)] && NoPerm < FullPerm) && qpRange9(x_2_1) ==> (NoPerm < FullPerm ==> invRecv9(x_2_1) == x_2_1) && QPMask[null, P(x_2_1)] == Mask[null, P(x_2_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall x_2_1: Ref ::
        { QPMask[null, P(x_2_1)] }
        !(((Set#Empty(): Set Ref)[invRecv9(x_2_1)] && NoPerm < FullPerm) && qpRange9(x_2_1)) ==> QPMask[null, P(x_2_1)] == Mask[null, P(x_2_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}