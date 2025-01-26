// 
// Translation of Viper program.
// 
// Date:         2025-01-26 21:42:11
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silver/0455.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silver/0455-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_62: Ref, f_49: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_62, f_49] }
  Heap[o_62, $allocated] ==> Heap[Heap[o_62, f_49], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_63: Ref, f_71: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_63, f_71] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_63, f_71) ==> Heap[o_63, f_71] == ExhaleHeap[o_63, f_71]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_33: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_33), ExhaleHeap[null, PredicateMaskField(pm_f_33)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_33) && IsPredicateField(pm_f_33) ==> Heap[null, PredicateMaskField(pm_f_33)] == ExhaleHeap[null, PredicateMaskField(pm_f_33)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_33: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_33) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_33) && IsPredicateField(pm_f_33) ==> (forall <A, B> o2_33: Ref, f_71: (Field A B) ::
    { ExhaleHeap[o2_33, f_71] }
    Heap[null, PredicateMaskField(pm_f_33)][o2_33, f_71] ==> Heap[o2_33, f_71] == ExhaleHeap[o2_33, f_71]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_33: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_33), ExhaleHeap[null, WandMaskField(pm_f_33)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_33) && IsWandField(pm_f_33) ==> Heap[null, WandMaskField(pm_f_33)] == ExhaleHeap[null, WandMaskField(pm_f_33)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_33: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_33) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_33) && IsWandField(pm_f_33) ==> (forall <A, B> o2_33: Ref, f_71: (Field A B) ::
    { ExhaleHeap[o2_33, f_71] }
    Heap[null, WandMaskField(pm_f_33)][o2_33, f_71] ==> Heap[o2_33, f_71] == ExhaleHeap[o2_33, f_71]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_63: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_63, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_63, $allocated] ==> ExhaleHeap[o_63, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_62: Ref, f_72: (Field A B), v: B ::
  { Heap[o_62, f_72:=v] }
  succHeap(Heap, Heap[o_62, f_72:=v])
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

function  neverTriggered1(x_5: Ref): bool;
function  neverTriggered2(x$0: Ref): bool;
function  neverTriggered3(x_5: Ref): bool;
function  neverTriggered4(x$0: Ref): bool;
function  neverTriggered5(x: Ref): bool;
function  neverTriggered6(x: Ref): bool;
function  neverTriggered7(x: Ref): bool;
function  neverTriggered8(x: Ref): bool;
function  neverTriggered9(x: Ref): bool;
function  neverTriggered10(x: Ref): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(x_6_1_1: Ref): Ref;
function  invRecv2(x_9_1_1: Ref): Ref;
function  invRecv3(x_6_1_1: Ref): Ref;
function  invRecv4(x_9_1_1: Ref): Ref;
function  invRecv5(x_1_1_1: Ref): Ref;
function  invRecv6(x_1_1_1: Ref): Ref;
function  invRecv7(x_1_1_1: Ref): Ref;
function  invRecv8(x_1_1_1: Ref): Ref;
function  invRecv9(x_1_1_1: Ref): Ref;
function  invRecv10(x_1_1_1: Ref): Ref;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(x_6_1_1: Ref): bool;
function  qpRange2(x_9_1_1: Ref): bool;
function  qpRange3(x_6_1_1: Ref): bool;
function  qpRange4(x_9_1_1: Ref): bool;
function  qpRange5(x_1_1_1: Ref): bool;
function  qpRange6(x_1_1_1: Ref): bool;
function  qpRange7(x_1_1_1: Ref): bool;
function  qpRange8(x_1_1_1: Ref): bool;
function  qpRange9(x_1_1_1: Ref): bool;
function  qpRange10(x_1_1_1: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 3: length2_impl
// - height 2: length_impl
// - height 1: length3_impl
// - height 0: foo
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
// Translation of all fields
// ==================================================

const unique elem: Field NormalField int;
axiom !IsPredicateField(elem);
axiom !IsWandField(elem);
const unique next: Field NormalField Ref;
axiom !IsPredicateField(next);
axiom !IsWandField(next);

// ==================================================
// Translation of function foo
// ==================================================

// Uninterpreted function definitions
function  foo_1(Heap: HeapType, l_1: Ref, i: int): bool;
function  foo'(Heap: HeapType, l_1: Ref, i: int): bool;
axiom (forall Heap: HeapType, l_1: Ref, i: int ::
  { foo_1(Heap, l_1, i) }
  foo_1(Heap, l_1, i) == foo'(Heap, l_1, i) && dummyFunction(foo#triggerStateless(l_1, i))
);
axiom (forall Heap: HeapType, l_1: Ref, i: int ::
  { foo'(Heap, l_1, i) }
  dummyFunction(foo#triggerStateless(l_1, i))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, l_1: Ref, i: int ::
  { state(Heap, Mask), foo_1(Heap, l_1, i) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> foo_1(Heap, l_1, i) == (forall j: int ::
    { Heap[null, list2(l_1, j)] } { foo#frame(Heap[null, list2(Heap[l_1, next], j)], Heap[l_1, next], j) }
    i == j ==> Heap[l_1, next] == null || foo'(Heap, Heap[l_1, next], j)
  )
);

// Framing axioms
function  foo#frame(frame: FrameType, l_1: Ref, i: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, l_1: Ref, i: int ::
  { state(Heap, Mask), foo'(Heap, l_1, i) }
  state(Heap, Mask) ==> foo'(Heap, l_1, i) == foo#frame(Heap[null, list2(l_1, i)], l_1, i)
);

// Trigger function (controlling recursive postconditions)
function  foo#trigger_1(frame: FrameType, l_1: Ref, i: int): bool;

// State-independent trigger function
function  foo#triggerStateless(l_1: Ref, i: int): bool;

// Check contract well-formedness and postcondition
procedure foo#definedness(l_1: Ref, i: int) returns (Result: bool)
  modifies Heap, Mask;
{
  var perm: Perm;
  var j_12: int;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[l_1, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, list2(l_1, i):=Mask[null, list2(l_1, i)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (forall j: Int :: { list2(l, j) } { foo(l.next, j) } i == j ==> (unfolding acc(list2(l, j), write) in (l.next == null ? true : foo(l.next, j))))
      if (*) {
        if (i == j_12) {
          UnfoldingHeap := Heap;
          UnfoldingMask := Mask;
          assume list2#trigger(UnfoldingHeap, list2(l_1, j_12));
          assume UnfoldingHeap[null, list2(l_1, j_12)] == CombineFrames(FrameFragment(UnfoldingHeap[l_1, elem]), CombineFrames(FrameFragment(UnfoldingHeap[l_1, next]), FrameFragment((if UnfoldingHeap[l_1, next] != null then UnfoldingHeap[null, list2(UnfoldingHeap[l_1, next], j_12)] else EmptyFrame))));
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          perm := FullPerm;
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access list2(l, j) (0455.vpr@12.1--17.2) [55276]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, list2(l_1, j_12)];
          perm := FullPerm;
          assume l_1 != null;
          UnfoldingMask := UnfoldingMask[l_1, elem:=UnfoldingMask[l_1, elem] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume l_1 != null;
          UnfoldingMask := UnfoldingMask[l_1, next:=UnfoldingMask[l_1, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[l_1, next] != null) {
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, list2(UnfoldingHeap[l_1, next], j_12):=UnfoldingMask[null, list2(UnfoldingHeap[l_1, next], j_12)] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(list2(l_1, j_12), UnfoldingHeap[null, list2(l_1, j_12)], list2(UnfoldingHeap[l_1, next], j_12), UnfoldingHeap[null, list2(UnfoldingHeap[l_1, next], j_12)]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access l.next (0455.vpr@12.1--17.2) [55277]"}
            HasDirectPerm(UnfoldingMask, l_1, next);
          if (UnfoldingHeap[l_1, next] == null) {
          } else {
            assert {:msg "  Function might not be well-formed. There might be insufficient permission to access l.next (0455.vpr@12.1--17.2) [55278]"}
              HasDirectPerm(UnfoldingMask, l_1, next);
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Mask := UnfoldingMask;
              ExhaleWellDef0Heap := UnfoldingHeap;
              perm := FullPerm;
              assert {:msg "  Precondition of function foo might not hold. There might be insufficient permission to access list2(l.next, j) (0455.vpr@16.68--16.82) [55279]"}
                NoPerm < perm ==> NoPerm < UnfoldingMask[null, list2(UnfoldingHeap[l_1, next], j_12)];
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
              UnfoldingHeap := ExhaleHeap;
              // Stop execution
              assume false;
            } else {
              // Enable postcondition for recursive call
              assume foo#trigger_1(UnfoldingHeap[null, list2(UnfoldingHeap[l_1, next], j_12)], UnfoldingHeap[l_1, next], j_12);
            }
          }
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, list2#sm(l_1, j_12):=Heap[null, list2#sm(l_1, j_12)][l_1, elem:=true]];
            Heap := Heap[null, list2#sm(l_1, j_12):=Heap[null, list2#sm(l_1, j_12)][l_1, next:=true]];
            if (Heap[l_1, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_5: Ref, f_11: (Field A B) ::
                { newPMask[o_5, f_11] }
                Heap[null, list2#sm(l_1, j_12)][o_5, f_11] || Heap[null, list2#sm(Heap[l_1, next], j_12)][o_5, f_11] ==> newPMask[o_5, f_11]
              );
              Heap := Heap[null, list2#sm(l_1, j_12):=newPMask];
            }
            assume state(Heap, Mask);
        }
        assume false;
      }
  
  // -- Translate function body
    Result := (forall j_2_2: int ::
      { Heap[null, list2(l_1, j_2_2)] } { foo#frame(Heap[null, list2(Heap[l_1, next], j_2_2)], Heap[l_1, next], j_2_2) }
      i == j_2_2 ==> Heap[l_1, next] == null || foo_1(Heap, Heap[l_1, next], j_2_2)
    );
}

// ==================================================
// Translation of function length_impl
// ==================================================

// Uninterpreted function definitions
function  length_impl(Heap: HeapType, xs: (Set Ref), y: Ref, akk: int, res: int): bool;
function  length_impl'(Heap: HeapType, xs: (Set Ref), y: Ref, akk: int, res: int): bool;
axiom (forall Heap: HeapType, xs: (Set Ref), y: Ref, akk: int, res: int ::
  { length_impl(Heap, xs, y, akk, res) }
  length_impl(Heap, xs, y, akk, res) == length_impl'(Heap, xs, y, akk, res) && dummyFunction(length_impl#triggerStateless(xs, y, akk, res))
);
axiom (forall Heap: HeapType, xs: (Set Ref), y: Ref, akk: int, res: int ::
  { length_impl'(Heap, xs, y, akk, res) }
  dummyFunction(length_impl#triggerStateless(xs, y, akk, res))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Set Ref), y: Ref, akk: int, res: int ::
  { state(Heap, Mask), length_impl(Heap, xs, y, akk, res) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> length_impl(Heap, xs, y, akk, res) == (forall x: Ref ::
    { xs[x] } { Heap[null, list(x)] } { Heap[x, next] }
    xs[x] && x == y ==> (if Heap[x, next] == null then res == akk else length_impl'(Heap, xs, Heap[x, next], akk + 1, res))
  )
);

// Framing axioms
function  length_impl#frame(frame: FrameType, xs: (Set Ref), y: Ref, akk: int, res: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Set Ref), y: Ref, akk: int, res: int ::
  { state(Heap, Mask), length_impl'(Heap, xs, y, akk, res) }
  state(Heap, Mask) ==> length_impl'(Heap, xs, y, akk, res) == length_impl#frame(Heap[null, list(y)], xs, y, akk, res)
);

// Trigger function (controlling recursive postconditions)
function  length_impl#trigger(frame: FrameType, xs: (Set Ref), y: Ref, akk: int, res: int): bool;

// State-independent trigger function
function  length_impl#triggerStateless(xs: (Set Ref), y: Ref, akk: int, res: int): bool;

// Check contract well-formedness and postcondition
procedure length_impl#definedness(xs: (Set Ref), y: Ref, akk: int, res: int) returns (Result: bool)
  modifies Heap, Mask;
{
  var perm: Perm;
  var x_28: Ref;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[y, $allocated];
    assume AssumeFunctionsAbove == 2;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, list(y):=Mask[null, list(y)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } { list(x) } { x.next } (x in xs) && x == y ==> (unfolding acc(list(x), write) in (x.next == null ? res == akk : length_impl(xs, x.next, akk + 1, res))))
      if (*) {
        if (xs[x_28] && x_28 == y) {
          UnfoldingHeap := Heap;
          UnfoldingMask := Mask;
          assume list#trigger(UnfoldingHeap, list(x_28));
          assume UnfoldingHeap[null, list(x_28)] == CombineFrames(FrameFragment(UnfoldingHeap[x_28, next]), FrameFragment((if UnfoldingHeap[x_28, next] != null then UnfoldingHeap[null, list(UnfoldingHeap[x_28, next])] else EmptyFrame)));
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          perm := FullPerm;
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access list(x) (0455.vpr@72.1--81.2) [55280]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, list(x_28)];
          perm := FullPerm;
          assume x_28 != null;
          UnfoldingMask := UnfoldingMask[x_28, next:=UnfoldingMask[x_28, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[x_28, next] != null) {
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, list(UnfoldingHeap[x_28, next]):=UnfoldingMask[null, list(UnfoldingHeap[x_28, next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(list(x_28), UnfoldingHeap[null, list(x_28)], list(UnfoldingHeap[x_28, next]), UnfoldingHeap[null, list(UnfoldingHeap[x_28, next])]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.next (0455.vpr@72.1--81.2) [55281]"}
            HasDirectPerm(UnfoldingMask, x_28, next);
          if (UnfoldingHeap[x_28, next] == null) {
          } else {
            assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.next (0455.vpr@72.1--81.2) [55282]"}
              HasDirectPerm(UnfoldingMask, x_28, next);
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Mask := UnfoldingMask;
              ExhaleWellDef0Heap := UnfoldingHeap;
              perm := FullPerm;
              assert {:msg "  Precondition of function length_impl might not hold. There might be insufficient permission to access list(x.next) (0455.vpr@80.13--80.50) [55283]"}
                NoPerm < perm ==> NoPerm < UnfoldingMask[null, list(UnfoldingHeap[x_28, next])];
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
              UnfoldingHeap := ExhaleHeap;
              // Stop execution
              assume false;
            } else {
              // Enable postcondition for recursive call
              assume length_impl#trigger(UnfoldingHeap[null, list(UnfoldingHeap[x_28, next])], xs, UnfoldingHeap[x_28, next], akk + 1, res);
            }
          }
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, list#sm(x_28):=Heap[null, list#sm(x_28)][x_28, next:=true]];
            if (Heap[x_28, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_64: Ref, f_73: (Field A B) ::
                { newPMask[o_64, f_73] }
                Heap[null, list#sm(x_28)][o_64, f_73] || Heap[null, list#sm(Heap[x_28, next])][o_64, f_73] ==> newPMask[o_64, f_73]
              );
              Heap := Heap[null, list#sm(x_28):=newPMask];
            }
            assume state(Heap, Mask);
        }
        assume false;
      }
  
  // -- Translate function body
    Result := (forall x_3: Ref ::
      { xs[x_3] } { Heap[null, list(x_3)] } { Heap[x_3, next] }
      xs[x_3] && x_3 == y ==> (if Heap[x_3, next] == null then res == akk else length_impl(Heap, xs, Heap[x_3, next], akk + 1, res))
    );
}

// ==================================================
// Translation of function length2_impl
// ==================================================

// Uninterpreted function definitions
function  length2_impl(Heap: HeapType, xs: (Set Ref), y: Ref, akk: int, res: int): bool;
function  length2_impl'(Heap: HeapType, xs: (Set Ref), y: Ref, akk: int, res: int): bool;
axiom (forall Heap: HeapType, xs: (Set Ref), y: Ref, akk: int, res: int ::
  { length2_impl(Heap, xs, y, akk, res) }
  length2_impl(Heap, xs, y, akk, res) == length2_impl'(Heap, xs, y, akk, res) && dummyFunction(length2_impl#triggerStateless(xs, y, akk, res))
);
axiom (forall Heap: HeapType, xs: (Set Ref), y: Ref, akk: int, res: int ::
  { length2_impl'(Heap, xs, y, akk, res) }
  dummyFunction(length2_impl#triggerStateless(xs, y, akk, res))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Set Ref), y: Ref, akk: int, res: int ::
  { state(Heap, Mask), length2_impl(Heap, xs, y, akk, res) }
  state(Heap, Mask) && AssumeFunctionsAbove < 3 ==> length2_impl(Heap, xs, y, akk, res) == (forall x_1: Ref ::
    { xs[x_1] } { Heap[null, list(x_1)] } { Heap[x_1, next] }
    xs[x_1] && x_1 == y ==> (if Heap[x_1, next] == null then res == akk else length2_impl'(Heap, xs, Heap[x_1, next], akk + 1, res))
  )
);

// Framing axioms
function  length2_impl#frame(frame: FrameType, xs: (Set Ref), y: Ref, akk: int, res: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Set Ref), y: Ref, akk: int, res: int ::
  { state(Heap, Mask), length2_impl'(Heap, xs, y, akk, res) }
  state(Heap, Mask) ==> length2_impl'(Heap, xs, y, akk, res) == length2_impl#frame(FrameFragment(length2_impl#condqp1(Heap, xs, y, akk, res)), xs, y, akk, res)
);
// ==================================================
// Function used for framing of quantified permission (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(list(x), wildcard)) in function length2_impl
// ==================================================

function  length2_impl#condqp1(Heap: HeapType, xs_1_1: (Set Ref), y_1_1_1: Ref, akk_1_1: int, res_1_1: int): int;
function  sk_length2_impl#condqp1(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, xs: (Set Ref), y: Ref, akk: int, res: int ::
  { length2_impl#condqp1(Heap2Heap, xs, y, akk, res), length2_impl#condqp1(Heap1Heap, xs, y, akk, res), succHeapTrans(Heap2Heap, Heap1Heap) }
  (xs[sk_length2_impl#condqp1(length2_impl#condqp1(Heap2Heap, xs, y, akk, res), length2_impl#condqp1(Heap1Heap, xs, y, akk, res))] <==> xs[sk_length2_impl#condqp1(length2_impl#condqp1(Heap2Heap, xs, y, akk, res), length2_impl#condqp1(Heap1Heap, xs, y, akk, res))]) && (xs[sk_length2_impl#condqp1(length2_impl#condqp1(Heap2Heap, xs, y, akk, res), length2_impl#condqp1(Heap1Heap, xs, y, akk, res))] ==> Heap2Heap[null, list(sk_length2_impl#condqp1(length2_impl#condqp1(Heap2Heap, xs, y, akk, res), length2_impl#condqp1(Heap1Heap, xs, y, akk, res)))] == Heap1Heap[null, list(sk_length2_impl#condqp1(length2_impl#condqp1(Heap2Heap, xs, y, akk, res), length2_impl#condqp1(Heap1Heap, xs, y, akk, res)))]) ==> length2_impl#condqp1(Heap2Heap, xs, y, akk, res) == length2_impl#condqp1(Heap1Heap, xs, y, akk, res)
);

// Trigger function (controlling recursive postconditions)
function  length2_impl#trigger(frame: FrameType, xs: (Set Ref), y: Ref, akk: int, res: int): bool;

// State-independent trigger function
function  length2_impl#triggerStateless(xs: (Set Ref), y: Ref, akk: int, res: int): bool;

// Check contract well-formedness and postcondition
procedure length2_impl#definedness(xs: (Set Ref), y: Ref, akk: int, res: int) returns (Result: bool)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var x_18: Ref;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[y, $allocated];
    assume AssumeFunctionsAbove == 3;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(list(x), wildcard))
      if (*) {
        assume false;
      }
    havoc QPMask;
    havoc wildcard;
    
    // -- check if receiver acc(list(x), wildcard) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource list(x) might not be injective. (0455.vpr@141.12--141.63) [55284]"}
        (forall x_5: Ref, x_5_1: Ref ::
        { neverTriggered1(x_5), neverTriggered1(x_5_1) }
        (((x_5 != x_5_1 && xs[x_5]) && xs[x_5_1]) && NoPerm < wildcard) && NoPerm < wildcard ==> x_5 != x_5_1
      );
    
    // -- Define Inverse Function
      assume (forall x_5: Ref ::
        { Heap[null, list(x_5)] } { Mask[null, list(x_5)] } { xs[x_5] }
        xs[x_5] && NoPerm < wildcard ==> invRecv1(x_5) == x_5 && qpRange1(x_5)
      );
      assume (forall x_6_1_1: Ref ::
        { invRecv1(x_6_1_1) }
        (xs[invRecv1(x_6_1_1)] && NoPerm < wildcard) && qpRange1(x_6_1_1) ==> invRecv1(x_6_1_1) == x_6_1_1
      );
    
    // -- Define updated permissions
      assume (forall x_6_1_1: Ref ::
        { QPMask[null, list(x_6_1_1)] }
        (xs[invRecv1(x_6_1_1)] && NoPerm < wildcard) && qpRange1(x_6_1_1) ==> (NoPerm < wildcard ==> invRecv1(x_6_1_1) == x_6_1_1) && QPMask[null, list(x_6_1_1)] == Mask[null, list(x_6_1_1)] + wildcard
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall x_6_1_1: Ref ::
        { QPMask[null, list(x_6_1_1)] }
        !((xs[invRecv1(x_6_1_1)] && NoPerm < wildcard) && qpRange1(x_6_1_1)) ==> QPMask[null, list(x_6_1_1)] == Mask[null, list(x_6_1_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } { list(x) } { x.next } (x in xs) && x == y ==> (unfolding acc(list(x), wildcard) in (x.next == null ? res == akk : length2_impl(xs, x.next, akk + 1, res))))
      if (*) {
        if (xs[x_18] && x_18 == y) {
          UnfoldingHeap := Heap;
          UnfoldingMask := Mask;
          assume list#trigger(UnfoldingHeap, list(x_18));
          assume UnfoldingHeap[null, list(x_18)] == CombineFrames(FrameFragment(UnfoldingHeap[x_18, next]), FrameFragment((if UnfoldingHeap[x_18, next] != null then UnfoldingHeap[null, list(UnfoldingHeap[x_18, next])] else EmptyFrame)));
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          perm := FullPerm;
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access list(x) (0455.vpr@140.1--149.2) [55285]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, list(x_18)];
          havoc wildcard;
          perm := wildcard;
          assume x_18 != null;
          UnfoldingMask := UnfoldingMask[x_18, next:=UnfoldingMask[x_18, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[x_18, next] != null) {
            havoc wildcard;
            perm := wildcard;
            UnfoldingMask := UnfoldingMask[null, list(UnfoldingHeap[x_18, next]):=UnfoldingMask[null, list(UnfoldingHeap[x_18, next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(list(x_18), UnfoldingHeap[null, list(x_18)], list(UnfoldingHeap[x_18, next]), UnfoldingHeap[null, list(UnfoldingHeap[x_18, next])]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.next (0455.vpr@140.1--149.2) [55286]"}
            HasDirectPerm(UnfoldingMask, x_18, next);
          if (UnfoldingHeap[x_18, next] == null) {
          } else {
            assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.next (0455.vpr@140.1--149.2) [55287]"}
              HasDirectPerm(UnfoldingMask, x_18, next);
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Mask := UnfoldingMask;
              ExhaleWellDef0Heap := UnfoldingHeap;
              havoc QPMask;
              // wildcard assumptions
              havoc wildcard;
              assert {:msg "  Precondition of function length2_impl might not hold. There might be insufficient permission to access list(x$0) (0455.vpr@148.13--148.51) [55288]"}
                (forall x$0: Ref ::
                
                xs[x$0] ==> UnfoldingMask[null, list(x$0)] > NoPerm
              );
              assume (forall x$0: Ref ::
                
                xs[x$0] ==> wildcard < UnfoldingMask[null, list(x$0)]
              );
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function length2_impl might not hold. Fraction wildcard might be negative. (0455.vpr@148.13--148.51) [55289]"}
                  (forall x_9_1_1: Ref ::
                  { invRecv2(x_9_1_1) }
                  xs[invRecv2(x_9_1_1)] && qpRange2(x_9_1_1) ==> wildcard >= NoPerm
                );
              
              // -- check if receiver acc(list(x$0), wildcard) is injective
                assert {:msg "  Precondition of function length2_impl might not hold. Quantified resource list(x$0) might not be injective. (0455.vpr@148.13--148.51) [55290]"}
                  (forall x$0: Ref, x$0_6: Ref ::
                  { neverTriggered2(x$0), neverTriggered2(x$0_6) }
                  (((x$0 != x$0_6 && xs[x$0]) && xs[x$0_6]) && NoPerm < wildcard) && NoPerm < wildcard ==> x$0 != x$0_6
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function length2_impl might not hold. There might be insufficient permission to access list(x$0) (0455.vpr@148.13--148.51) [55291]"}
                  (forall x$0: Ref ::
                  { UnfoldingHeap[null, list(x$0)] } { UnfoldingMask[null, list(x$0)] } { xs[x$0] }
                  xs[x$0] ==> wildcard > NoPerm ==> UnfoldingMask[null, list(x$0)] > NoPerm
                );
              
              // -- assumptions for inverse of receiver acc(list(x$0), wildcard)
                assume (forall x$0: Ref ::
                  { UnfoldingHeap[null, list(x$0)] } { UnfoldingMask[null, list(x$0)] } { xs[x$0] }
                  xs[x$0] && NoPerm < wildcard ==> invRecv2(x$0) == x$0 && qpRange2(x$0)
                );
                assume (forall x_9_1_1: Ref ::
                  { invRecv2(x_9_1_1) }
                  (xs[invRecv2(x_9_1_1)] && NoPerm < wildcard) && qpRange2(x_9_1_1) ==> invRecv2(x_9_1_1) == x_9_1_1
                );
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
              UnfoldingHeap := ExhaleHeap;
              // Stop execution
              assume false;
            } else {
              // Enable postcondition for recursive call
              assume length2_impl#trigger(FrameFragment(length2_impl#condqp1(UnfoldingHeap, xs, UnfoldingHeap[x_18, next], akk + 1, res)), xs, UnfoldingHeap[x_18, next], akk + 1, res);
            }
          }
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, list#sm(x_18):=Heap[null, list#sm(x_18)][x_18, next:=true]];
            if (Heap[x_18, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_65: Ref, f_74: (Field A B) ::
                { newPMask[o_65, f_74] }
                Heap[null, list#sm(x_18)][o_65, f_74] || Heap[null, list#sm(Heap[x_18, next])][o_65, f_74] ==> newPMask[o_65, f_74]
              );
              Heap := Heap[null, list#sm(x_18):=newPMask];
            }
            assume state(Heap, Mask);
        }
        assume false;
      }
  
  // -- Translate function body
    Result := (forall x_10: Ref ::
      { xs[x_10] } { Heap[null, list(x_10)] } { Heap[x_10, next] }
      xs[x_10] && x_10 == y ==> (if Heap[x_10, next] == null then res == akk else length2_impl(Heap, xs, Heap[x_10, next], akk + 1, res))
    );
}

// ==================================================
// Translation of function length3_impl
// ==================================================

// Uninterpreted function definitions
function  length3_impl(Heap: HeapType, xs: (Set Ref), y: Ref, akk: int, res: int): bool;
function  length3_impl'(Heap: HeapType, xs: (Set Ref), y: Ref, akk: int, res: int): bool;
axiom (forall Heap: HeapType, xs: (Set Ref), y: Ref, akk: int, res: int ::
  { length3_impl(Heap, xs, y, akk, res) }
  length3_impl(Heap, xs, y, akk, res) == length3_impl'(Heap, xs, y, akk, res) && dummyFunction(length3_impl#triggerStateless(xs, y, akk, res))
);
axiom (forall Heap: HeapType, xs: (Set Ref), y: Ref, akk: int, res: int ::
  { length3_impl'(Heap, xs, y, akk, res) }
  dummyFunction(length3_impl#triggerStateless(xs, y, akk, res))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Set Ref), y: Ref, akk: int, res: int ::
  { state(Heap, Mask), length3_impl(Heap, xs, y, akk, res) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> length3_impl(Heap, xs, y, akk, res) == (forall x_1: Ref ::
    { xs[x_1] } { Heap[null, list(x_1)] } { Heap[x_1, next] }
    xs[x_1] && x_1 == y ==> (if Heap[x_1, next] == null then res == akk else length3_impl'(Heap, xs, Heap[x_1, next], akk + 1, res))
  )
);

// Framing axioms
function  length3_impl#frame(frame: FrameType, xs: (Set Ref), y: Ref, akk: int, res: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Set Ref), y: Ref, akk: int, res: int ::
  { state(Heap, Mask), length3_impl'(Heap, xs, y, akk, res) }
  state(Heap, Mask) ==> length3_impl'(Heap, xs, y, akk, res) == length3_impl#frame(FrameFragment(length3_impl#condqp2(Heap, xs, y, akk, res)), xs, y, akk, res)
);
// ==================================================
// Function used for framing of quantified permission (forall x: Ref :: { (x in xs) } { list(x) } (x in xs) ==> acc(list(x), wildcard)) in function length3_impl
// ==================================================

function  length3_impl#condqp2(Heap: HeapType, xs_1_1: (Set Ref), y_1_1_1: Ref, akk_1_1: int, res_1_1: int): int;
function  sk_length3_impl#condqp2(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, xs: (Set Ref), y: Ref, akk: int, res: int ::
  { length3_impl#condqp2(Heap2Heap, xs, y, akk, res), length3_impl#condqp2(Heap1Heap, xs, y, akk, res), succHeapTrans(Heap2Heap, Heap1Heap) }
  (xs[sk_length3_impl#condqp2(length3_impl#condqp2(Heap2Heap, xs, y, akk, res), length3_impl#condqp2(Heap1Heap, xs, y, akk, res))] <==> xs[sk_length3_impl#condqp2(length3_impl#condqp2(Heap2Heap, xs, y, akk, res), length3_impl#condqp2(Heap1Heap, xs, y, akk, res))]) && (xs[sk_length3_impl#condqp2(length3_impl#condqp2(Heap2Heap, xs, y, akk, res), length3_impl#condqp2(Heap1Heap, xs, y, akk, res))] ==> Heap2Heap[null, list(sk_length3_impl#condqp2(length3_impl#condqp2(Heap2Heap, xs, y, akk, res), length3_impl#condqp2(Heap1Heap, xs, y, akk, res)))] == Heap1Heap[null, list(sk_length3_impl#condqp2(length3_impl#condqp2(Heap2Heap, xs, y, akk, res), length3_impl#condqp2(Heap1Heap, xs, y, akk, res)))]) ==> length3_impl#condqp2(Heap2Heap, xs, y, akk, res) == length3_impl#condqp2(Heap1Heap, xs, y, akk, res)
);

// Trigger function (controlling recursive postconditions)
function  length3_impl#trigger(frame: FrameType, xs: (Set Ref), y: Ref, akk: int, res: int): bool;

// State-independent trigger function
function  length3_impl#triggerStateless(xs: (Set Ref), y: Ref, akk: int, res: int): bool;

// Check contract well-formedness and postcondition
procedure length3_impl#definedness(xs: (Set Ref), y: Ref, akk: int, res: int) returns (Result: bool)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var x_44: Ref;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[y, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } { list(x) } (x in xs) ==> acc(list(x), wildcard))
      if (*) {
        assume false;
      }
    havoc QPMask;
    havoc wildcard;
    
    // -- check if receiver acc(list(x), wildcard) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource list(x) might not be injective. (0455.vpr@208.12--208.82) [55292]"}
        (forall x_5: Ref, x_5_1: Ref ::
        { neverTriggered3(x_5), neverTriggered3(x_5_1) }
        (((x_5 != x_5_1 && xs[x_5]) && xs[x_5_1]) && NoPerm < wildcard) && NoPerm < wildcard ==> x_5 != x_5_1
      );
    
    // -- Define Inverse Function
      assume (forall x_5: Ref ::
        { Heap[null, list(x_5)] } { Mask[null, list(x_5)] } { xs[x_5] } { Heap[null, list(x_5)] }
        xs[x_5] && NoPerm < wildcard ==> invRecv3(x_5) == x_5 && qpRange3(x_5)
      );
      assume (forall x_6_1_1: Ref ::
        { invRecv3(x_6_1_1) }
        (xs[invRecv3(x_6_1_1)] && NoPerm < wildcard) && qpRange3(x_6_1_1) ==> invRecv3(x_6_1_1) == x_6_1_1
      );
    
    // -- Define updated permissions
      assume (forall x_6_1_1: Ref ::
        { QPMask[null, list(x_6_1_1)] }
        (xs[invRecv3(x_6_1_1)] && NoPerm < wildcard) && qpRange3(x_6_1_1) ==> (NoPerm < wildcard ==> invRecv3(x_6_1_1) == x_6_1_1) && QPMask[null, list(x_6_1_1)] == Mask[null, list(x_6_1_1)] + wildcard
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall x_6_1_1: Ref ::
        { QPMask[null, list(x_6_1_1)] }
        !((xs[invRecv3(x_6_1_1)] && NoPerm < wildcard) && qpRange3(x_6_1_1)) ==> QPMask[null, list(x_6_1_1)] == Mask[null, list(x_6_1_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } { list(x) } { x.next } (x in xs) && x == y ==> (unfolding acc(list(x), wildcard) in (x.next == null ? res == akk : length3_impl(xs, x.next, akk + 1, res))))
      if (*) {
        if (xs[x_44] && x_44 == y) {
          UnfoldingHeap := Heap;
          UnfoldingMask := Mask;
          assume list#trigger(UnfoldingHeap, list(x_44));
          assume UnfoldingHeap[null, list(x_44)] == CombineFrames(FrameFragment(UnfoldingHeap[x_44, next]), FrameFragment((if UnfoldingHeap[x_44, next] != null then UnfoldingHeap[null, list(UnfoldingHeap[x_44, next])] else EmptyFrame)));
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          perm := FullPerm;
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access list(x) (0455.vpr@207.1--216.2) [55293]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, list(x_44)];
          havoc wildcard;
          perm := wildcard;
          assume x_44 != null;
          UnfoldingMask := UnfoldingMask[x_44, next:=UnfoldingMask[x_44, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[x_44, next] != null) {
            havoc wildcard;
            perm := wildcard;
            UnfoldingMask := UnfoldingMask[null, list(UnfoldingHeap[x_44, next]):=UnfoldingMask[null, list(UnfoldingHeap[x_44, next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(list(x_44), UnfoldingHeap[null, list(x_44)], list(UnfoldingHeap[x_44, next]), UnfoldingHeap[null, list(UnfoldingHeap[x_44, next])]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.next (0455.vpr@207.1--216.2) [55294]"}
            HasDirectPerm(UnfoldingMask, x_44, next);
          if (UnfoldingHeap[x_44, next] == null) {
          } else {
            assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.next (0455.vpr@207.1--216.2) [55295]"}
              HasDirectPerm(UnfoldingMask, x_44, next);
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Mask := UnfoldingMask;
              ExhaleWellDef0Heap := UnfoldingHeap;
              havoc QPMask;
              // wildcard assumptions
              havoc wildcard;
              assert {:msg "  Precondition of function length3_impl might not hold. There might be insufficient permission to access list(x$0) (0455.vpr@215.13--215.51) [55296]"}
                (forall x$0: Ref ::
                
                xs[x$0] ==> UnfoldingMask[null, list(x$0)] > NoPerm
              );
              assume (forall x$0: Ref ::
                
                xs[x$0] ==> wildcard < UnfoldingMask[null, list(x$0)]
              );
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function length3_impl might not hold. Fraction wildcard might be negative. (0455.vpr@215.13--215.51) [55297]"}
                  (forall x_9_1_1: Ref ::
                  { invRecv4(x_9_1_1) }
                  xs[invRecv4(x_9_1_1)] && qpRange4(x_9_1_1) ==> wildcard >= NoPerm
                );
              
              // -- check if receiver acc(list(x$0), wildcard) is injective
                assert {:msg "  Precondition of function length3_impl might not hold. Quantified resource list(x$0) might not be injective. (0455.vpr@215.13--215.51) [55298]"}
                  (forall x$0: Ref, x$0_6: Ref ::
                  { neverTriggered4(x$0), neverTriggered4(x$0_6) }
                  (((x$0 != x$0_6 && xs[x$0]) && xs[x$0_6]) && NoPerm < wildcard) && NoPerm < wildcard ==> x$0 != x$0_6
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function length3_impl might not hold. There might be insufficient permission to access list(x$0) (0455.vpr@215.13--215.51) [55299]"}
                  (forall x$0: Ref ::
                  { UnfoldingHeap[null, list(x$0)] } { UnfoldingMask[null, list(x$0)] } { xs[x$0] } { UnfoldingHeap[null, list(x$0)] }
                  xs[x$0] ==> wildcard > NoPerm ==> UnfoldingMask[null, list(x$0)] > NoPerm
                );
              
              // -- assumptions for inverse of receiver acc(list(x$0), wildcard)
                assume (forall x$0: Ref ::
                  { UnfoldingHeap[null, list(x$0)] } { UnfoldingMask[null, list(x$0)] } { xs[x$0] } { UnfoldingHeap[null, list(x$0)] }
                  xs[x$0] && NoPerm < wildcard ==> invRecv4(x$0) == x$0 && qpRange4(x$0)
                );
                assume (forall x_9_1_1: Ref ::
                  { invRecv4(x_9_1_1) }
                  (xs[invRecv4(x_9_1_1)] && NoPerm < wildcard) && qpRange4(x_9_1_1) ==> invRecv4(x_9_1_1) == x_9_1_1
                );
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
              UnfoldingHeap := ExhaleHeap;
              // Stop execution
              assume false;
            } else {
              // Enable postcondition for recursive call
              assume length3_impl#trigger(FrameFragment(length3_impl#condqp2(UnfoldingHeap, xs, UnfoldingHeap[x_44, next], akk + 1, res)), xs, UnfoldingHeap[x_44, next], akk + 1, res);
            }
          }
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, list#sm(x_44):=Heap[null, list#sm(x_44)][x_44, next:=true]];
            if (Heap[x_44, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_56: Ref, f: (Field A B) ::
                { newPMask[o_56, f] }
                Heap[null, list#sm(x_44)][o_56, f] || Heap[null, list#sm(Heap[x_44, next])][o_56, f] ==> newPMask[o_56, f]
              );
              Heap := Heap[null, list#sm(x_44):=newPMask];
            }
            assume state(Heap, Mask);
        }
        assume false;
      }
  
  // -- Translate function body
    Result := (forall x_10: Ref ::
      { xs[x_10] } { Heap[null, list(x_10)] } { Heap[x_10, next] }
      xs[x_10] && x_10 == y ==> (if Heap[x_10, next] == null then res == akk else length3_impl(Heap, xs, Heap[x_10, next], akk + 1, res))
    );
}

// ==================================================
// Translation of predicate list2
// ==================================================

type PredicateType_list2;
function  list2(this: Ref, i: int): Field PredicateType_list2 FrameType;
function  list2#sm(this: Ref, i: int): Field PredicateType_list2 PMaskType;
axiom (forall this: Ref, i: int ::
  { PredicateMaskField(list2(this, i)) }
  PredicateMaskField(list2(this, i)) == list2#sm(this, i)
);
axiom (forall this: Ref, i: int ::
  { list2(this, i) }
  IsPredicateField(list2(this, i))
);
axiom (forall this: Ref, i: int ::
  { list2(this, i) }
  getPredWandId(list2(this, i)) == 1
);
function  list2#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  list2#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, i: int, this2: Ref, i2: int ::
  { list2(this, i), list2(this2, i2) }
  list2(this, i) == list2(this2, i2) ==> this == this2 && i == i2
);
axiom (forall this: Ref, i: int, this2: Ref, i2: int ::
  { list2#sm(this, i), list2#sm(this2, i2) }
  list2#sm(this, i) == list2#sm(this2, i2) ==> this == this2 && i == i2
);

axiom (forall Heap: HeapType, this: Ref, i: int ::
  { list2#trigger(Heap, list2(this, i)) }
  list2#everUsed(list2(this, i))
);

procedure list2#definedness(this: Ref, i: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of list2
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, elem:=Mask[this, elem] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, next:=Mask[this, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (0455.vpr@7.1--10.2) [55300]"}
        HasDirectPerm(Mask, this, next);
    if (Heap[this, next] != null) {
      
      // -- Check definedness of acc(list2(this.next, i), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (0455.vpr@7.1--10.2) [55301]"}
          HasDirectPerm(Mask, this, next);
      perm := FullPerm;
      Mask := Mask[null, list2(Heap[this, next], i):=Mask[null, list2(Heap[this, next], i)] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate list
// ==================================================

type PredicateType_list;
function  list(x: Ref): Field PredicateType_list FrameType;
function  list#sm(x: Ref): Field PredicateType_list PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(list(x)) }
  PredicateMaskField(list(x)) == list#sm(x)
);
axiom (forall x: Ref ::
  { list(x) }
  IsPredicateField(list(x))
);
axiom (forall x: Ref ::
  { list(x) }
  getPredWandId(list(x)) == 0
);
function  list#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  list#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { list(x), list(x2) }
  list(x) == list(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { list#sm(x), list#sm(x2) }
  list#sm(x) == list#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { list#trigger(Heap, list(x)) }
  list#everUsed(list(x))
);

procedure list#definedness(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of list
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, next:=Mask[x, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of x.next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.next (0455.vpr@62.1--64.2) [55302]"}
        HasDirectPerm(Mask, x, next);
    if (Heap[x, next] != null) {
      
      // -- Check definedness of acc(list(x.next), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.next (0455.vpr@62.1--64.2) [55303]"}
          HasDirectPerm(Mask, x, next);
      perm := FullPerm;
      Mask := Mask[null, list(Heap[x, next]):=Mask[null, list(Heap[x, next])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_foo1
// ==================================================

procedure test_foo1() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var x1: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleHeap: HeapType;
  
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
    assume Heap[x1, $allocated];
  
  // -- Translating statement: x1 := new(elem, next) -- 0455.vpr@20.15--20.27
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x1 := freshObj;
    Mask := Mask[x1, elem:=Mask[x1, elem] + FullPerm];
    Mask := Mask[x1, next:=Mask[x1, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x1.next := null -- 0455.vpr@21.2--21.17
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x1.next (0455.vpr@21.2--21.17) [55304]"}
      FullPerm == Mask[x1, next];
    Heap := Heap[x1, next:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list2(x1, 77), write) -- 0455.vpr@22.2--22.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list2(x1, 77) might fail. There might be insufficient permission to access x1.elem (0455.vpr@22.2--22.20) [55307]"}
        perm <= Mask[x1, elem];
    }
    Mask := Mask[x1, elem:=Mask[x1, elem] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list2(x1, 77) might fail. There might be insufficient permission to access x1.next (0455.vpr@22.2--22.20) [55309]"}
        perm <= Mask[x1, next];
    }
    Mask := Mask[x1, next:=Mask[x1, next] - perm];
    if (Heap[x1, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding list2(x1, 77) might fail. There might be insufficient permission to access list2(x1.next, 77) (0455.vpr@22.2--22.20) [55311]"}
          perm <= Mask[null, list2(Heap[x1, next], 77)];
      }
      Mask := Mask[null, list2(Heap[x1, next], 77):=Mask[null, list2(Heap[x1, next], 77)] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(list2(x1, 77), Heap[null, list2(x1, 77)], list2(Heap[x1, next], 77), Heap[null, list2(Heap[x1, next], 77)]);
    }
    perm := FullPerm;
    Mask := Mask[null, list2(x1, 77):=Mask[null, list2(x1, 77)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list2#trigger(Heap, list2(x1, 77));
    assume Heap[null, list2(x1, 77)] == CombineFrames(FrameFragment(Heap[x1, elem]), CombineFrames(FrameFragment(Heap[x1, next]), FrameFragment((if Heap[x1, next] != null then Heap[null, list2(Heap[x1, next], 77)] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, list2(x1, 77))) {
      Heap := Heap[null, list2#sm(x1, 77):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list2(x1, 77):=freshVersion];
    }
    Heap := Heap[null, list2#sm(x1, 77):=Heap[null, list2#sm(x1, 77)][x1, elem:=true]];
    Heap := Heap[null, list2#sm(x1, 77):=Heap[null, list2#sm(x1, 77)][x1, next:=true]];
    if (Heap[x1, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_3: Ref, f_24: (Field A B) ::
        { newPMask[o_3, f_24] }
        Heap[null, list2#sm(x1, 77)][o_3, f_24] || Heap[null, list2#sm(Heap[x1, next], 77)][o_3, f_24] ==> newPMask[o_3, f_24]
      );
      Heap := Heap[null, list2#sm(x1, 77):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert foo(x1, 77) -- 0455.vpr@24.2--24.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of foo(x1, 77)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function foo might not hold. There might be insufficient permission to access list2(x1, 77) (0455.vpr@24.9--24.20) [55313]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, list2(x1, 77)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion foo(x1, 77) might not hold. (0455.vpr@24.9--24.20) [55314]"}
      foo_1(Heap, x1, 77);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_foo2
// ==================================================

procedure test_foo2() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var x1: Ref;
  var x2: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleHeap: HeapType;
  
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
    assume Heap[x1, $allocated];
    assume Heap[x2, $allocated];
  
  // -- Translating statement: x1 := new(elem, next) -- 0455.vpr@28.15--28.27
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x1 := freshObj;
    Mask := Mask[x1, elem:=Mask[x1, elem] + FullPerm];
    Mask := Mask[x1, next:=Mask[x1, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x1.next := null -- 0455.vpr@29.2--29.17
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x1.next (0455.vpr@29.2--29.17) [55315]"}
      FullPerm == Mask[x1, next];
    Heap := Heap[x1, next:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list2(x1, 77), write) -- 0455.vpr@30.2--30.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list2(x1, 77) might fail. There might be insufficient permission to access x1.elem (0455.vpr@30.2--30.20) [55318]"}
        perm <= Mask[x1, elem];
    }
    Mask := Mask[x1, elem:=Mask[x1, elem] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list2(x1, 77) might fail. There might be insufficient permission to access x1.next (0455.vpr@30.2--30.20) [55320]"}
        perm <= Mask[x1, next];
    }
    Mask := Mask[x1, next:=Mask[x1, next] - perm];
    if (Heap[x1, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding list2(x1, 77) might fail. There might be insufficient permission to access list2(x1.next, 77) (0455.vpr@30.2--30.20) [55322]"}
          perm <= Mask[null, list2(Heap[x1, next], 77)];
      }
      Mask := Mask[null, list2(Heap[x1, next], 77):=Mask[null, list2(Heap[x1, next], 77)] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(list2(x1, 77), Heap[null, list2(x1, 77)], list2(Heap[x1, next], 77), Heap[null, list2(Heap[x1, next], 77)]);
    }
    perm := FullPerm;
    Mask := Mask[null, list2(x1, 77):=Mask[null, list2(x1, 77)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list2#trigger(Heap, list2(x1, 77));
    assume Heap[null, list2(x1, 77)] == CombineFrames(FrameFragment(Heap[x1, elem]), CombineFrames(FrameFragment(Heap[x1, next]), FrameFragment((if Heap[x1, next] != null then Heap[null, list2(Heap[x1, next], 77)] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, list2(x1, 77))) {
      Heap := Heap[null, list2#sm(x1, 77):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list2(x1, 77):=freshVersion];
    }
    Heap := Heap[null, list2#sm(x1, 77):=Heap[null, list2#sm(x1, 77)][x1, elem:=true]];
    Heap := Heap[null, list2#sm(x1, 77):=Heap[null, list2#sm(x1, 77)][x1, next:=true]];
    if (Heap[x1, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_1: Ref, f_10: (Field A B) ::
        { newPMask[o_1, f_10] }
        Heap[null, list2#sm(x1, 77)][o_1, f_10] || Heap[null, list2#sm(Heap[x1, next], 77)][o_1, f_10] ==> newPMask[o_1, f_10]
      );
      Heap := Heap[null, list2#sm(x1, 77):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: x2 := new(elem, next) -- 0455.vpr@32.15--32.27
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x2 := freshObj;
    Mask := Mask[x2, elem:=Mask[x2, elem] + FullPerm];
    Mask := Mask[x2, next:=Mask[x2, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x2.next := x1 -- 0455.vpr@33.2--33.15
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x2.next (0455.vpr@33.2--33.15) [55324]"}
      FullPerm == Mask[x2, next];
    Heap := Heap[x2, next:=x1];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list2(x2, 77), write) -- 0455.vpr@34.2--34.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list2(x2, 77) might fail. There might be insufficient permission to access x2.elem (0455.vpr@34.2--34.20) [55327]"}
        perm <= Mask[x2, elem];
    }
    Mask := Mask[x2, elem:=Mask[x2, elem] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list2(x2, 77) might fail. There might be insufficient permission to access x2.next (0455.vpr@34.2--34.20) [55329]"}
        perm <= Mask[x2, next];
    }
    Mask := Mask[x2, next:=Mask[x2, next] - perm];
    if (Heap[x2, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding list2(x2, 77) might fail. There might be insufficient permission to access list2(x2.next, 77) (0455.vpr@34.2--34.20) [55331]"}
          perm <= Mask[null, list2(Heap[x2, next], 77)];
      }
      Mask := Mask[null, list2(Heap[x2, next], 77):=Mask[null, list2(Heap[x2, next], 77)] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(list2(x2, 77), Heap[null, list2(x2, 77)], list2(Heap[x2, next], 77), Heap[null, list2(Heap[x2, next], 77)]);
    }
    perm := FullPerm;
    Mask := Mask[null, list2(x2, 77):=Mask[null, list2(x2, 77)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list2#trigger(Heap, list2(x2, 77));
    assume Heap[null, list2(x2, 77)] == CombineFrames(FrameFragment(Heap[x2, elem]), CombineFrames(FrameFragment(Heap[x2, next]), FrameFragment((if Heap[x2, next] != null then Heap[null, list2(Heap[x2, next], 77)] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, list2(x2, 77))) {
      Heap := Heap[null, list2#sm(x2, 77):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list2(x2, 77):=freshVersion];
    }
    Heap := Heap[null, list2#sm(x2, 77):=Heap[null, list2#sm(x2, 77)][x2, elem:=true]];
    Heap := Heap[null, list2#sm(x2, 77):=Heap[null, list2#sm(x2, 77)][x2, next:=true]];
    if (Heap[x2, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_15: Ref, f_51: (Field A B) ::
        { newPMask[o_15, f_51] }
        Heap[null, list2#sm(x2, 77)][o_15, f_51] || Heap[null, list2#sm(Heap[x2, next], 77)][o_15, f_51] ==> newPMask[o_15, f_51]
      );
      Heap := Heap[null, list2#sm(x2, 77):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert foo(x2, 77) -- 0455.vpr@36.2--36.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of foo(x2, 77)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function foo might not hold. There might be insufficient permission to access list2(x2, 77) (0455.vpr@36.9--36.20) [55333]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, list2(x2, 77)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion foo(x2, 77) might not hold. (0455.vpr@36.9--36.20) [55334]"}
      foo_1(Heap, x2, 77);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_foo4
// ==================================================

procedure test_foo4() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var x1: Ref;
  var x2: Ref;
  var x3: Ref;
  var x4: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleHeap: HeapType;
  
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
    assume Heap[x1, $allocated];
    assume Heap[x2, $allocated];
    assume Heap[x3, $allocated];
    assume Heap[x4, $allocated];
  
  // -- Translating statement: x1 := new(elem, next) -- 0455.vpr@40.15--40.27
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x1 := freshObj;
    Mask := Mask[x1, elem:=Mask[x1, elem] + FullPerm];
    Mask := Mask[x1, next:=Mask[x1, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x1.next := null -- 0455.vpr@41.2--41.17
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x1.next (0455.vpr@41.2--41.17) [55335]"}
      FullPerm == Mask[x1, next];
    Heap := Heap[x1, next:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list2(x1, 77), write) -- 0455.vpr@42.2--42.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list2(x1, 77) might fail. There might be insufficient permission to access x1.elem (0455.vpr@42.2--42.20) [55338]"}
        perm <= Mask[x1, elem];
    }
    Mask := Mask[x1, elem:=Mask[x1, elem] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list2(x1, 77) might fail. There might be insufficient permission to access x1.next (0455.vpr@42.2--42.20) [55340]"}
        perm <= Mask[x1, next];
    }
    Mask := Mask[x1, next:=Mask[x1, next] - perm];
    if (Heap[x1, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding list2(x1, 77) might fail. There might be insufficient permission to access list2(x1.next, 77) (0455.vpr@42.2--42.20) [55342]"}
          perm <= Mask[null, list2(Heap[x1, next], 77)];
      }
      Mask := Mask[null, list2(Heap[x1, next], 77):=Mask[null, list2(Heap[x1, next], 77)] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(list2(x1, 77), Heap[null, list2(x1, 77)], list2(Heap[x1, next], 77), Heap[null, list2(Heap[x1, next], 77)]);
    }
    perm := FullPerm;
    Mask := Mask[null, list2(x1, 77):=Mask[null, list2(x1, 77)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list2#trigger(Heap, list2(x1, 77));
    assume Heap[null, list2(x1, 77)] == CombineFrames(FrameFragment(Heap[x1, elem]), CombineFrames(FrameFragment(Heap[x1, next]), FrameFragment((if Heap[x1, next] != null then Heap[null, list2(Heap[x1, next], 77)] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, list2(x1, 77))) {
      Heap := Heap[null, list2#sm(x1, 77):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list2(x1, 77):=freshVersion];
    }
    Heap := Heap[null, list2#sm(x1, 77):=Heap[null, list2#sm(x1, 77)][x1, elem:=true]];
    Heap := Heap[null, list2#sm(x1, 77):=Heap[null, list2#sm(x1, 77)][x1, next:=true]];
    if (Heap[x1, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_4: Ref, f_54: (Field A B) ::
        { newPMask[o_4, f_54] }
        Heap[null, list2#sm(x1, 77)][o_4, f_54] || Heap[null, list2#sm(Heap[x1, next], 77)][o_4, f_54] ==> newPMask[o_4, f_54]
      );
      Heap := Heap[null, list2#sm(x1, 77):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: x2 := new(elem, next) -- 0455.vpr@44.15--44.27
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x2 := freshObj;
    Mask := Mask[x2, elem:=Mask[x2, elem] + FullPerm];
    Mask := Mask[x2, next:=Mask[x2, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x2.next := x1 -- 0455.vpr@45.2--45.15
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x2.next (0455.vpr@45.2--45.15) [55344]"}
      FullPerm == Mask[x2, next];
    Heap := Heap[x2, next:=x1];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list2(x2, 77), write) -- 0455.vpr@46.2--46.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list2(x2, 77) might fail. There might be insufficient permission to access x2.elem (0455.vpr@46.2--46.20) [55347]"}
        perm <= Mask[x2, elem];
    }
    Mask := Mask[x2, elem:=Mask[x2, elem] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list2(x2, 77) might fail. There might be insufficient permission to access x2.next (0455.vpr@46.2--46.20) [55349]"}
        perm <= Mask[x2, next];
    }
    Mask := Mask[x2, next:=Mask[x2, next] - perm];
    if (Heap[x2, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding list2(x2, 77) might fail. There might be insufficient permission to access list2(x2.next, 77) (0455.vpr@46.2--46.20) [55351]"}
          perm <= Mask[null, list2(Heap[x2, next], 77)];
      }
      Mask := Mask[null, list2(Heap[x2, next], 77):=Mask[null, list2(Heap[x2, next], 77)] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(list2(x2, 77), Heap[null, list2(x2, 77)], list2(Heap[x2, next], 77), Heap[null, list2(Heap[x2, next], 77)]);
    }
    perm := FullPerm;
    Mask := Mask[null, list2(x2, 77):=Mask[null, list2(x2, 77)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list2#trigger(Heap, list2(x2, 77));
    assume Heap[null, list2(x2, 77)] == CombineFrames(FrameFragment(Heap[x2, elem]), CombineFrames(FrameFragment(Heap[x2, next]), FrameFragment((if Heap[x2, next] != null then Heap[null, list2(Heap[x2, next], 77)] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, list2(x2, 77))) {
      Heap := Heap[null, list2#sm(x2, 77):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list2(x2, 77):=freshVersion];
    }
    Heap := Heap[null, list2#sm(x2, 77):=Heap[null, list2#sm(x2, 77)][x2, elem:=true]];
    Heap := Heap[null, list2#sm(x2, 77):=Heap[null, list2#sm(x2, 77)][x2, next:=true]];
    if (Heap[x2, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_12: Ref, f_25: (Field A B) ::
        { newPMask[o_12, f_25] }
        Heap[null, list2#sm(x2, 77)][o_12, f_25] || Heap[null, list2#sm(Heap[x2, next], 77)][o_12, f_25] ==> newPMask[o_12, f_25]
      );
      Heap := Heap[null, list2#sm(x2, 77):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: x3 := new(elem, next) -- 0455.vpr@48.15--48.27
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x3 := freshObj;
    Mask := Mask[x3, elem:=Mask[x3, elem] + FullPerm];
    Mask := Mask[x3, next:=Mask[x3, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x3.next := x2 -- 0455.vpr@49.2--49.15
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x3.next (0455.vpr@49.2--49.15) [55353]"}
      FullPerm == Mask[x3, next];
    Heap := Heap[x3, next:=x2];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list2(x3, 77), write) -- 0455.vpr@50.2--50.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list2(x3, 77) might fail. There might be insufficient permission to access x3.elem (0455.vpr@50.2--50.20) [55356]"}
        perm <= Mask[x3, elem];
    }
    Mask := Mask[x3, elem:=Mask[x3, elem] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list2(x3, 77) might fail. There might be insufficient permission to access x3.next (0455.vpr@50.2--50.20) [55358]"}
        perm <= Mask[x3, next];
    }
    Mask := Mask[x3, next:=Mask[x3, next] - perm];
    if (Heap[x3, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding list2(x3, 77) might fail. There might be insufficient permission to access list2(x3.next, 77) (0455.vpr@50.2--50.20) [55360]"}
          perm <= Mask[null, list2(Heap[x3, next], 77)];
      }
      Mask := Mask[null, list2(Heap[x3, next], 77):=Mask[null, list2(Heap[x3, next], 77)] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(list2(x3, 77), Heap[null, list2(x3, 77)], list2(Heap[x3, next], 77), Heap[null, list2(Heap[x3, next], 77)]);
    }
    perm := FullPerm;
    Mask := Mask[null, list2(x3, 77):=Mask[null, list2(x3, 77)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list2#trigger(Heap, list2(x3, 77));
    assume Heap[null, list2(x3, 77)] == CombineFrames(FrameFragment(Heap[x3, elem]), CombineFrames(FrameFragment(Heap[x3, next]), FrameFragment((if Heap[x3, next] != null then Heap[null, list2(Heap[x3, next], 77)] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, list2(x3, 77))) {
      Heap := Heap[null, list2#sm(x3, 77):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list2(x3, 77):=freshVersion];
    }
    Heap := Heap[null, list2#sm(x3, 77):=Heap[null, list2#sm(x3, 77)][x3, elem:=true]];
    Heap := Heap[null, list2#sm(x3, 77):=Heap[null, list2#sm(x3, 77)][x3, next:=true]];
    if (Heap[x3, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_41: Ref, f_21: (Field A B) ::
        { newPMask[o_41, f_21] }
        Heap[null, list2#sm(x3, 77)][o_41, f_21] || Heap[null, list2#sm(Heap[x3, next], 77)][o_41, f_21] ==> newPMask[o_41, f_21]
      );
      Heap := Heap[null, list2#sm(x3, 77):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: x4 := new(elem, next) -- 0455.vpr@52.15--52.27
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x4 := freshObj;
    Mask := Mask[x4, elem:=Mask[x4, elem] + FullPerm];
    Mask := Mask[x4, next:=Mask[x4, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x4.next := x3 -- 0455.vpr@53.2--53.15
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x4.next (0455.vpr@53.2--53.15) [55362]"}
      FullPerm == Mask[x4, next];
    Heap := Heap[x4, next:=x3];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list2(x4, 77), write) -- 0455.vpr@54.2--54.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list2(x4, 77) might fail. There might be insufficient permission to access x4.elem (0455.vpr@54.2--54.20) [55365]"}
        perm <= Mask[x4, elem];
    }
    Mask := Mask[x4, elem:=Mask[x4, elem] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list2(x4, 77) might fail. There might be insufficient permission to access x4.next (0455.vpr@54.2--54.20) [55367]"}
        perm <= Mask[x4, next];
    }
    Mask := Mask[x4, next:=Mask[x4, next] - perm];
    if (Heap[x4, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding list2(x4, 77) might fail. There might be insufficient permission to access list2(x4.next, 77) (0455.vpr@54.2--54.20) [55369]"}
          perm <= Mask[null, list2(Heap[x4, next], 77)];
      }
      Mask := Mask[null, list2(Heap[x4, next], 77):=Mask[null, list2(Heap[x4, next], 77)] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(list2(x4, 77), Heap[null, list2(x4, 77)], list2(Heap[x4, next], 77), Heap[null, list2(Heap[x4, next], 77)]);
    }
    perm := FullPerm;
    Mask := Mask[null, list2(x4, 77):=Mask[null, list2(x4, 77)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list2#trigger(Heap, list2(x4, 77));
    assume Heap[null, list2(x4, 77)] == CombineFrames(FrameFragment(Heap[x4, elem]), CombineFrames(FrameFragment(Heap[x4, next]), FrameFragment((if Heap[x4, next] != null then Heap[null, list2(Heap[x4, next], 77)] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, list2(x4, 77))) {
      Heap := Heap[null, list2#sm(x4, 77):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list2(x4, 77):=freshVersion];
    }
    Heap := Heap[null, list2#sm(x4, 77):=Heap[null, list2#sm(x4, 77)][x4, elem:=true]];
    Heap := Heap[null, list2#sm(x4, 77):=Heap[null, list2#sm(x4, 77)][x4, next:=true]];
    if (Heap[x4, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_23: Ref, f_13: (Field A B) ::
        { newPMask[o_23, f_13] }
        Heap[null, list2#sm(x4, 77)][o_23, f_13] || Heap[null, list2#sm(Heap[x4, next], 77)][o_23, f_13] ==> newPMask[o_23, f_13]
      );
      Heap := Heap[null, list2#sm(x4, 77):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert foo(x4, 77) -- 0455.vpr@56.2--56.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of foo(x4, 77)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function foo might not hold. There might be insufficient permission to access list2(x4, 77) (0455.vpr@56.9--56.20) [55371]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, list2(x4, 77)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion foo(x4, 77) might not hold. (0455.vpr@56.9--56.20) [55372]"}
      foo_1(Heap, x4, 77);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_length1
// ==================================================

procedure test_length1() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var x1: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var xs: (Set Ref);
  var ExhaleHeap: HeapType;
  var res: int;
  
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
    assume Heap[x1, $allocated];
  
  // -- Translating statement: x1 := new(next) -- 0455.vpr@84.16--84.31
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x1 := freshObj;
    Mask := Mask[x1, next:=Mask[x1, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x1.next := null -- 0455.vpr@85.3--85.18
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x1.next (0455.vpr@85.3--85.18) [55373]"}
      FullPerm == Mask[x1, next];
    Heap := Heap[x1, next:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(x1), write) -- 0455.vpr@86.3--86.16
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list(x1) might fail. There might be insufficient permission to access x1.next (0455.vpr@86.3--86.16) [55376]"}
        perm <= Mask[x1, next];
    }
    Mask := Mask[x1, next:=Mask[x1, next] - perm];
    if (Heap[x1, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding list(x1) might fail. There might be insufficient permission to access list(x1.next) (0455.vpr@86.3--86.16) [55378]"}
          perm <= Mask[null, list(Heap[x1, next])];
      }
      Mask := Mask[null, list(Heap[x1, next]):=Mask[null, list(Heap[x1, next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(list(x1), Heap[null, list(x1)], list(Heap[x1, next]), Heap[null, list(Heap[x1, next])]);
    }
    perm := FullPerm;
    Mask := Mask[null, list(x1):=Mask[null, list(x1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list#trigger(Heap, list(x1));
    assume Heap[null, list(x1)] == CombineFrames(FrameFragment(Heap[x1, next]), FrameFragment((if Heap[x1, next] != null then Heap[null, list(Heap[x1, next])] else EmptyFrame)));
    if (!HasDirectPerm(Mask, null, list(x1))) {
      Heap := Heap[null, list#sm(x1):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list(x1):=freshVersion];
    }
    Heap := Heap[null, list#sm(x1):=Heap[null, list#sm(x1)][x1, next:=true]];
    if (Heap[x1, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_13: Ref, f_65: (Field A B) ::
        { newPMask[o_13, f_65] }
        Heap[null, list#sm(x1)][o_13, f_65] || Heap[null, list#sm(Heap[x1, next])][o_13, f_65] ==> newPMask[o_13, f_65]
      );
      Heap := Heap[null, list#sm(x1):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: xs := Set(x1) -- 0455.vpr@87.3--87.30
    xs := Set#Singleton(x1);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale length_impl(xs, x1, 1, res) -- 0455.vpr@90.10--90.29
    assume state(Heap, Mask);
    
    // -- Check definedness of length_impl(xs, x1, 1, res)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function length_impl might not hold. There might be insufficient permission to access list(x1) (0455.vpr@90.10--90.29) [55380]"}
          NoPerm < perm ==> NoPerm < Mask[null, list(x1)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume length_impl(Heap, xs, x1, 1, res);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert res == 1 -- 0455.vpr@91.3--91.18
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion res == 1 might not hold. (0455.vpr@91.10--91.18) [55381]"}
      res == 1;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_length2
// ==================================================

procedure test_length2() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var x1: Ref;
  var x2: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var xs: (Set Ref);
  var ExhaleHeap: HeapType;
  var res: int;
  
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
    assume Heap[x1, $allocated];
    assume Heap[x2, $allocated];
  
  // -- Translating statement: x1 := new(next) -- 0455.vpr@95.16--95.31
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x1 := freshObj;
    Mask := Mask[x1, next:=Mask[x1, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x1.next := null -- 0455.vpr@96.3--96.18
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x1.next (0455.vpr@96.3--96.18) [55382]"}
      FullPerm == Mask[x1, next];
    Heap := Heap[x1, next:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(x1), write) -- 0455.vpr@97.3--97.16
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list(x1) might fail. There might be insufficient permission to access x1.next (0455.vpr@97.3--97.16) [55385]"}
        perm <= Mask[x1, next];
    }
    Mask := Mask[x1, next:=Mask[x1, next] - perm];
    if (Heap[x1, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding list(x1) might fail. There might be insufficient permission to access list(x1.next) (0455.vpr@97.3--97.16) [55387]"}
          perm <= Mask[null, list(Heap[x1, next])];
      }
      Mask := Mask[null, list(Heap[x1, next]):=Mask[null, list(Heap[x1, next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(list(x1), Heap[null, list(x1)], list(Heap[x1, next]), Heap[null, list(Heap[x1, next])]);
    }
    perm := FullPerm;
    Mask := Mask[null, list(x1):=Mask[null, list(x1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list#trigger(Heap, list(x1));
    assume Heap[null, list(x1)] == CombineFrames(FrameFragment(Heap[x1, next]), FrameFragment((if Heap[x1, next] != null then Heap[null, list(Heap[x1, next])] else EmptyFrame)));
    if (!HasDirectPerm(Mask, null, list(x1))) {
      Heap := Heap[null, list#sm(x1):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list(x1):=freshVersion];
    }
    Heap := Heap[null, list#sm(x1):=Heap[null, list#sm(x1)][x1, next:=true]];
    if (Heap[x1, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_51: Ref, f_66: (Field A B) ::
        { newPMask[o_51, f_66] }
        Heap[null, list#sm(x1)][o_51, f_66] || Heap[null, list#sm(Heap[x1, next])][o_51, f_66] ==> newPMask[o_51, f_66]
      );
      Heap := Heap[null, list#sm(x1):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: x2 := new(next) -- 0455.vpr@99.16--99.31
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x2 := freshObj;
    Mask := Mask[x2, next:=Mask[x2, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x2.next := x1 -- 0455.vpr@100.3--100.16
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x2.next (0455.vpr@100.3--100.16) [55389]"}
      FullPerm == Mask[x2, next];
    Heap := Heap[x2, next:=x1];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(x2), write) -- 0455.vpr@101.3--101.16
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list(x2) might fail. There might be insufficient permission to access x2.next (0455.vpr@101.3--101.16) [55392]"}
        perm <= Mask[x2, next];
    }
    Mask := Mask[x2, next:=Mask[x2, next] - perm];
    if (Heap[x2, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding list(x2) might fail. There might be insufficient permission to access list(x2.next) (0455.vpr@101.3--101.16) [55394]"}
          perm <= Mask[null, list(Heap[x2, next])];
      }
      Mask := Mask[null, list(Heap[x2, next]):=Mask[null, list(Heap[x2, next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(list(x2), Heap[null, list(x2)], list(Heap[x2, next]), Heap[null, list(Heap[x2, next])]);
    }
    perm := FullPerm;
    Mask := Mask[null, list(x2):=Mask[null, list(x2)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list#trigger(Heap, list(x2));
    assume Heap[null, list(x2)] == CombineFrames(FrameFragment(Heap[x2, next]), FrameFragment((if Heap[x2, next] != null then Heap[null, list(Heap[x2, next])] else EmptyFrame)));
    if (!HasDirectPerm(Mask, null, list(x2))) {
      Heap := Heap[null, list#sm(x2):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list(x2):=freshVersion];
    }
    Heap := Heap[null, list#sm(x2):=Heap[null, list#sm(x2)][x2, next:=true]];
    if (Heap[x2, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_52: Ref, f_14: (Field A B) ::
        { newPMask[o_52, f_14] }
        Heap[null, list#sm(x2)][o_52, f_14] || Heap[null, list#sm(Heap[x2, next])][o_52, f_14] ==> newPMask[o_52, f_14]
      );
      Heap := Heap[null, list#sm(x2):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: xs := Set(x1, x2) -- 0455.vpr@103.3--103.34
    xs := Set#UnionOne(Set#Singleton(x2), x1);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (x1 in xs) && (x2 in xs) -- 0455.vpr@104.3--104.30
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion (x1 in xs) might not hold. (0455.vpr@104.10--104.30) [55396]"}
      xs[x1];
    assert {:msg "  Assert might fail. Assertion (x2 in xs) might not hold. (0455.vpr@104.10--104.30) [55397]"}
      xs[x2];
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale length_impl(xs, x2, 1, res) -- 0455.vpr@107.10--107.29
    assume state(Heap, Mask);
    
    // -- Check definedness of length_impl(xs, x2, 1, res)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function length_impl might not hold. There might be insufficient permission to access list(x2) (0455.vpr@107.10--107.29) [55398]"}
          NoPerm < perm ==> NoPerm < Mask[null, list(x2)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume length_impl(Heap, xs, x2, 1, res);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert res == 2 -- 0455.vpr@108.3--108.18
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion res == 2 might not hold. (0455.vpr@108.10--108.18) [55399]"}
      res == 2;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_length4
// ==================================================

procedure test_length4() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var x1: Ref;
  var x2: Ref;
  var x3: Ref;
  var x4: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var xs: (Set Ref);
  var ExhaleHeap: HeapType;
  var res: int;
  
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
    assume Heap[x1, $allocated];
    assume Heap[x2, $allocated];
    assume Heap[x3, $allocated];
    assume Heap[x4, $allocated];
  
  // -- Translating statement: x1 := new(next) -- 0455.vpr@112.16--112.31
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x1 := freshObj;
    Mask := Mask[x1, next:=Mask[x1, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x1.next := null -- 0455.vpr@113.3--113.18
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x1.next (0455.vpr@113.3--113.18) [55400]"}
      FullPerm == Mask[x1, next];
    Heap := Heap[x1, next:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(x1), write) -- 0455.vpr@114.3--114.16
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list(x1) might fail. There might be insufficient permission to access x1.next (0455.vpr@114.3--114.16) [55403]"}
        perm <= Mask[x1, next];
    }
    Mask := Mask[x1, next:=Mask[x1, next] - perm];
    if (Heap[x1, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding list(x1) might fail. There might be insufficient permission to access list(x1.next) (0455.vpr@114.3--114.16) [55405]"}
          perm <= Mask[null, list(Heap[x1, next])];
      }
      Mask := Mask[null, list(Heap[x1, next]):=Mask[null, list(Heap[x1, next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(list(x1), Heap[null, list(x1)], list(Heap[x1, next]), Heap[null, list(Heap[x1, next])]);
    }
    perm := FullPerm;
    Mask := Mask[null, list(x1):=Mask[null, list(x1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list#trigger(Heap, list(x1));
    assume Heap[null, list(x1)] == CombineFrames(FrameFragment(Heap[x1, next]), FrameFragment((if Heap[x1, next] != null then Heap[null, list(Heap[x1, next])] else EmptyFrame)));
    if (!HasDirectPerm(Mask, null, list(x1))) {
      Heap := Heap[null, list#sm(x1):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list(x1):=freshVersion];
    }
    Heap := Heap[null, list#sm(x1):=Heap[null, list#sm(x1)][x1, next:=true]];
    if (Heap[x1, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_20: Ref, f_50: (Field A B) ::
        { newPMask[o_20, f_50] }
        Heap[null, list#sm(x1)][o_20, f_50] || Heap[null, list#sm(Heap[x1, next])][o_20, f_50] ==> newPMask[o_20, f_50]
      );
      Heap := Heap[null, list#sm(x1):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: x2 := new(next) -- 0455.vpr@116.16--116.31
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x2 := freshObj;
    Mask := Mask[x2, next:=Mask[x2, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x2.next := x1 -- 0455.vpr@117.3--117.16
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x2.next (0455.vpr@117.3--117.16) [55407]"}
      FullPerm == Mask[x2, next];
    Heap := Heap[x2, next:=x1];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(x2), write) -- 0455.vpr@118.3--118.16
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list(x2) might fail. There might be insufficient permission to access x2.next (0455.vpr@118.3--118.16) [55410]"}
        perm <= Mask[x2, next];
    }
    Mask := Mask[x2, next:=Mask[x2, next] - perm];
    if (Heap[x2, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding list(x2) might fail. There might be insufficient permission to access list(x2.next) (0455.vpr@118.3--118.16) [55412]"}
          perm <= Mask[null, list(Heap[x2, next])];
      }
      Mask := Mask[null, list(Heap[x2, next]):=Mask[null, list(Heap[x2, next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(list(x2), Heap[null, list(x2)], list(Heap[x2, next]), Heap[null, list(Heap[x2, next])]);
    }
    perm := FullPerm;
    Mask := Mask[null, list(x2):=Mask[null, list(x2)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list#trigger(Heap, list(x2));
    assume Heap[null, list(x2)] == CombineFrames(FrameFragment(Heap[x2, next]), FrameFragment((if Heap[x2, next] != null then Heap[null, list(Heap[x2, next])] else EmptyFrame)));
    if (!HasDirectPerm(Mask, null, list(x2))) {
      Heap := Heap[null, list#sm(x2):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list(x2):=freshVersion];
    }
    Heap := Heap[null, list#sm(x2):=Heap[null, list#sm(x2)][x2, next:=true]];
    if (Heap[x2, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_58: Ref, f_30: (Field A B) ::
        { newPMask[o_58, f_30] }
        Heap[null, list#sm(x2)][o_58, f_30] || Heap[null, list#sm(Heap[x2, next])][o_58, f_30] ==> newPMask[o_58, f_30]
      );
      Heap := Heap[null, list#sm(x2):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: x3 := new(next) -- 0455.vpr@120.16--120.31
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x3 := freshObj;
    Mask := Mask[x3, next:=Mask[x3, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x3.next := x2 -- 0455.vpr@121.3--121.16
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x3.next (0455.vpr@121.3--121.16) [55414]"}
      FullPerm == Mask[x3, next];
    Heap := Heap[x3, next:=x2];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(x3), write) -- 0455.vpr@122.3--122.16
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list(x3) might fail. There might be insufficient permission to access x3.next (0455.vpr@122.3--122.16) [55417]"}
        perm <= Mask[x3, next];
    }
    Mask := Mask[x3, next:=Mask[x3, next] - perm];
    if (Heap[x3, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding list(x3) might fail. There might be insufficient permission to access list(x3.next) (0455.vpr@122.3--122.16) [55419]"}
          perm <= Mask[null, list(Heap[x3, next])];
      }
      Mask := Mask[null, list(Heap[x3, next]):=Mask[null, list(Heap[x3, next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(list(x3), Heap[null, list(x3)], list(Heap[x3, next]), Heap[null, list(Heap[x3, next])]);
    }
    perm := FullPerm;
    Mask := Mask[null, list(x3):=Mask[null, list(x3)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list#trigger(Heap, list(x3));
    assume Heap[null, list(x3)] == CombineFrames(FrameFragment(Heap[x3, next]), FrameFragment((if Heap[x3, next] != null then Heap[null, list(Heap[x3, next])] else EmptyFrame)));
    if (!HasDirectPerm(Mask, null, list(x3))) {
      Heap := Heap[null, list#sm(x3):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list(x3):=freshVersion];
    }
    Heap := Heap[null, list#sm(x3):=Heap[null, list#sm(x3)][x3, next:=true]];
    if (Heap[x3, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_10: Ref, f_67: (Field A B) ::
        { newPMask[o_10, f_67] }
        Heap[null, list#sm(x3)][o_10, f_67] || Heap[null, list#sm(Heap[x3, next])][o_10, f_67] ==> newPMask[o_10, f_67]
      );
      Heap := Heap[null, list#sm(x3):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: x4 := new(next) -- 0455.vpr@124.16--124.31
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x4 := freshObj;
    Mask := Mask[x4, next:=Mask[x4, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x4.next := x3 -- 0455.vpr@125.3--125.16
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x4.next (0455.vpr@125.3--125.16) [55421]"}
      FullPerm == Mask[x4, next];
    Heap := Heap[x4, next:=x3];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(x4), write) -- 0455.vpr@126.3--126.16
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list(x4) might fail. There might be insufficient permission to access x4.next (0455.vpr@126.3--126.16) [55424]"}
        perm <= Mask[x4, next];
    }
    Mask := Mask[x4, next:=Mask[x4, next] - perm];
    if (Heap[x4, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding list(x4) might fail. There might be insufficient permission to access list(x4.next) (0455.vpr@126.3--126.16) [55426]"}
          perm <= Mask[null, list(Heap[x4, next])];
      }
      Mask := Mask[null, list(Heap[x4, next]):=Mask[null, list(Heap[x4, next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(list(x4), Heap[null, list(x4)], list(Heap[x4, next]), Heap[null, list(Heap[x4, next])]);
    }
    perm := FullPerm;
    Mask := Mask[null, list(x4):=Mask[null, list(x4)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list#trigger(Heap, list(x4));
    assume Heap[null, list(x4)] == CombineFrames(FrameFragment(Heap[x4, next]), FrameFragment((if Heap[x4, next] != null then Heap[null, list(Heap[x4, next])] else EmptyFrame)));
    if (!HasDirectPerm(Mask, null, list(x4))) {
      Heap := Heap[null, list#sm(x4):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list(x4):=freshVersion];
    }
    Heap := Heap[null, list#sm(x4):=Heap[null, list#sm(x4)][x4, next:=true]];
    if (Heap[x4, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_18: Ref, f_18: (Field A B) ::
        { newPMask[o_18, f_18] }
        Heap[null, list#sm(x4)][o_18, f_18] || Heap[null, list#sm(Heap[x4, next])][o_18, f_18] ==> newPMask[o_18, f_18]
      );
      Heap := Heap[null, list#sm(x4):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: xs := Set(x1, x2, x4, x3) -- 0455.vpr@128.3--128.42
    xs := Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Singleton(x3), x4), x2), x1);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale length_impl(xs, x4, 1, res) -- 0455.vpr@131.10--131.29
    assume state(Heap, Mask);
    
    // -- Check definedness of length_impl(xs, x4, 1, res)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function length_impl might not hold. There might be insufficient permission to access list(x4) (0455.vpr@131.10--131.29) [55428]"}
          NoPerm < perm ==> NoPerm < Mask[null, list(x4)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume length_impl(Heap, xs, x4, 1, res);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert res == 4 -- 0455.vpr@132.3--132.18
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion res == 4 might not hold. (0455.vpr@132.10--132.18) [55429]"}
      res == 4;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test2_length1
// ==================================================

procedure test2_length1() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var x1: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var xs: (Set Ref);
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var ExhaleHeap: HeapType;
  var res: int;
  
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
    assume Heap[x1, $allocated];
  
  // -- Translating statement: x1 := new(next) -- 0455.vpr@152.16--152.31
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x1 := freshObj;
    Mask := Mask[x1, next:=Mask[x1, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x1.next := null -- 0455.vpr@153.3--153.18
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x1.next (0455.vpr@153.3--153.18) [55430]"}
      FullPerm == Mask[x1, next];
    Heap := Heap[x1, next:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(x1), write) -- 0455.vpr@154.3--154.16
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list(x1) might fail. There might be insufficient permission to access x1.next (0455.vpr@154.3--154.16) [55433]"}
        perm <= Mask[x1, next];
    }
    Mask := Mask[x1, next:=Mask[x1, next] - perm];
    if (Heap[x1, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding list(x1) might fail. There might be insufficient permission to access list(x1.next) (0455.vpr@154.3--154.16) [55435]"}
          perm <= Mask[null, list(Heap[x1, next])];
      }
      Mask := Mask[null, list(Heap[x1, next]):=Mask[null, list(Heap[x1, next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(list(x1), Heap[null, list(x1)], list(Heap[x1, next]), Heap[null, list(Heap[x1, next])]);
    }
    perm := FullPerm;
    Mask := Mask[null, list(x1):=Mask[null, list(x1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list#trigger(Heap, list(x1));
    assume Heap[null, list(x1)] == CombineFrames(FrameFragment(Heap[x1, next]), FrameFragment((if Heap[x1, next] != null then Heap[null, list(Heap[x1, next])] else EmptyFrame)));
    if (!HasDirectPerm(Mask, null, list(x1))) {
      Heap := Heap[null, list#sm(x1):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list(x1):=freshVersion];
    }
    Heap := Heap[null, list#sm(x1):=Heap[null, list#sm(x1)][x1, next:=true]];
    if (Heap[x1, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_66: Ref, f_28: (Field A B) ::
        { newPMask[o_66, f_28] }
        Heap[null, list#sm(x1)][o_66, f_28] || Heap[null, list#sm(Heap[x1, next])][o_66, f_28] ==> newPMask[o_66, f_28]
      );
      Heap := Heap[null, list#sm(x1):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: xs := Set(x1) -- 0455.vpr@155.3--155.30
    xs := Set#Singleton(x1);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale length2_impl(xs, x1, 1, res) -- 0455.vpr@158.10--158.30
    assume state(Heap, Mask);
    
    // -- Check definedness of length2_impl(xs, x1, 1, res)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        havoc QPMask;
        // wildcard assumptions
        havoc wildcard;
        assert {:msg "  Precondition of function length2_impl might not hold. There might be insufficient permission to access list(x) (0455.vpr@158.10--158.30) [55437]"}
          (forall x: Ref ::
          
          xs[x] ==> Mask[null, list(x)] > NoPerm
        );
        assume (forall x: Ref ::
          
          xs[x] ==> wildcard < Mask[null, list(x)]
        );
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function length2_impl might not hold. Fraction wildcard might be negative. (0455.vpr@158.10--158.30) [55438]"}
            (forall x_1_1_1: Ref ::
            { invRecv5(x_1_1_1) }
            xs[invRecv5(x_1_1_1)] && qpRange5(x_1_1_1) ==> wildcard >= NoPerm
          );
        
        // -- check if receiver acc(list(x), wildcard) is injective
          assert {:msg "  Precondition of function length2_impl might not hold. Quantified resource list(x) might not be injective. (0455.vpr@158.10--158.30) [55439]"}
            (forall x: Ref, x_46: Ref ::
            { neverTriggered5(x), neverTriggered5(x_46) }
            (((x != x_46 && xs[x]) && xs[x_46]) && NoPerm < wildcard) && NoPerm < wildcard ==> x != x_46
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function length2_impl might not hold. There might be insufficient permission to access list(x) (0455.vpr@158.10--158.30) [55440]"}
            (forall x: Ref ::
            { Heap[null, list(x)] } { Mask[null, list(x)] } { xs[x] }
            xs[x] ==> wildcard > NoPerm ==> Mask[null, list(x)] > NoPerm
          );
        
        // -- assumptions for inverse of receiver acc(list(x), wildcard)
          assume (forall x: Ref ::
            { Heap[null, list(x)] } { Mask[null, list(x)] } { xs[x] }
            xs[x] && NoPerm < wildcard ==> invRecv5(x) == x && qpRange5(x)
          );
          assume (forall x_1_1_1: Ref ::
            { invRecv5(x_1_1_1) }
            (xs[invRecv5(x_1_1_1)] && NoPerm < wildcard) && qpRange5(x_1_1_1) ==> invRecv5(x_1_1_1) == x_1_1_1
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume length2_impl(Heap, xs, x1, 1, res);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert res == 1 -- 0455.vpr@159.3--159.18
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion res == 1 might not hold. (0455.vpr@159.10--159.18) [55441]"}
      res == 1;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test2_length2
// ==================================================

procedure test2_length2() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var x1: Ref;
  var x2: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var wildcard: real where wildcard > 0.000000000;
  var perm: Perm;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var xs: (Set Ref);
  var QPMask: MaskType;
  var ExhaleHeap: HeapType;
  var res: int;
  
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
    assume Heap[x1, $allocated];
    assume Heap[x2, $allocated];
  
  // -- Translating statement: x1 := new(next) -- 0455.vpr@163.16--163.31
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x1 := freshObj;
    Mask := Mask[x1, next:=Mask[x1, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x1.next := null -- 0455.vpr@164.3--164.18
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x1.next (0455.vpr@164.3--164.18) [55442]"}
      FullPerm == Mask[x1, next];
    Heap := Heap[x1, next:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(x1), wildcard) -- 0455.vpr@165.3--165.31
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Folding list(x1) might fail. There might be insufficient permission to access x1.next (0455.vpr@165.3--165.31) [55444]"}
      Mask[x1, next] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[x1, next];
    Mask := Mask[x1, next:=Mask[x1, next] - wildcard];
    if (Heap[x1, next] != null) {
      assert {:msg "  Folding list(x1) might fail. There might be insufficient permission to access list(x1.next) (0455.vpr@165.3--165.31) [55445]"}
        Mask[null, list(Heap[x1, next])] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[null, list(Heap[x1, next])];
      Mask := Mask[null, list(Heap[x1, next]):=Mask[null, list(Heap[x1, next])] - wildcard];
      
      // -- Record predicate instance information
        assume InsidePredicate(list(x1), Heap[null, list(x1)], list(Heap[x1, next]), Heap[null, list(Heap[x1, next])]);
    }
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, list(x1):=Mask[null, list(x1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list#trigger(Heap, list(x1));
    assume Heap[null, list(x1)] == CombineFrames(FrameFragment(Heap[x1, next]), FrameFragment((if Heap[x1, next] != null then Heap[null, list(Heap[x1, next])] else EmptyFrame)));
    if (!HasDirectPerm(Mask, null, list(x1))) {
      Heap := Heap[null, list#sm(x1):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list(x1):=freshVersion];
    }
    Heap := Heap[null, list#sm(x1):=Heap[null, list#sm(x1)][x1, next:=true]];
    if (Heap[x1, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_11: Ref, f_34: (Field A B) ::
        { newPMask[o_11, f_34] }
        Heap[null, list#sm(x1)][o_11, f_34] || Heap[null, list#sm(Heap[x1, next])][o_11, f_34] ==> newPMask[o_11, f_34]
      );
      Heap := Heap[null, list#sm(x1):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: x2 := new(next) -- 0455.vpr@167.16--167.31
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x2 := freshObj;
    Mask := Mask[x2, next:=Mask[x2, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x2.next := x1 -- 0455.vpr@168.3--168.16
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x2.next (0455.vpr@168.3--168.16) [55446]"}
      FullPerm == Mask[x2, next];
    Heap := Heap[x2, next:=x1];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(x2), wildcard) -- 0455.vpr@169.3--169.31
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Folding list(x2) might fail. There might be insufficient permission to access x2.next (0455.vpr@169.3--169.31) [55448]"}
      Mask[x2, next] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[x2, next];
    Mask := Mask[x2, next:=Mask[x2, next] - wildcard];
    if (Heap[x2, next] != null) {
      assert {:msg "  Folding list(x2) might fail. There might be insufficient permission to access list(x2.next) (0455.vpr@169.3--169.31) [55449]"}
        Mask[null, list(Heap[x2, next])] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[null, list(Heap[x2, next])];
      Mask := Mask[null, list(Heap[x2, next]):=Mask[null, list(Heap[x2, next])] - wildcard];
      
      // -- Record predicate instance information
        assume InsidePredicate(list(x2), Heap[null, list(x2)], list(Heap[x2, next]), Heap[null, list(Heap[x2, next])]);
    }
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, list(x2):=Mask[null, list(x2)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list#trigger(Heap, list(x2));
    assume Heap[null, list(x2)] == CombineFrames(FrameFragment(Heap[x2, next]), FrameFragment((if Heap[x2, next] != null then Heap[null, list(Heap[x2, next])] else EmptyFrame)));
    if (!HasDirectPerm(Mask, null, list(x2))) {
      Heap := Heap[null, list#sm(x2):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list(x2):=freshVersion];
    }
    Heap := Heap[null, list#sm(x2):=Heap[null, list#sm(x2)][x2, next:=true]];
    if (Heap[x2, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_19: Ref, f_57: (Field A B) ::
        { newPMask[o_19, f_57] }
        Heap[null, list#sm(x2)][o_19, f_57] || Heap[null, list#sm(Heap[x2, next])][o_19, f_57] ==> newPMask[o_19, f_57]
      );
      Heap := Heap[null, list#sm(x2):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: xs := Set(x1, x2) -- 0455.vpr@171.3--171.34
    xs := Set#UnionOne(Set#Singleton(x2), x1);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (x1 in xs) && (x2 in xs) -- 0455.vpr@172.3--172.30
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion (x1 in xs) might not hold. (0455.vpr@172.10--172.30) [55450]"}
      xs[x1];
    assert {:msg "  Assert might fail. Assertion (x2 in xs) might not hold. (0455.vpr@172.10--172.30) [55451]"}
      xs[x2];
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale length2_impl(xs, x2, 1, res) -- 0455.vpr@175.10--175.30
    assume state(Heap, Mask);
    
    // -- Check definedness of length2_impl(xs, x2, 1, res)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        havoc QPMask;
        // wildcard assumptions
        havoc wildcard;
        assert {:msg "  Precondition of function length2_impl might not hold. There might be insufficient permission to access list(x) (0455.vpr@175.10--175.30) [55452]"}
          (forall x: Ref ::
          
          xs[x] ==> Mask[null, list(x)] > NoPerm
        );
        assume (forall x: Ref ::
          
          xs[x] ==> wildcard < Mask[null, list(x)]
        );
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function length2_impl might not hold. Fraction wildcard might be negative. (0455.vpr@175.10--175.30) [55453]"}
            (forall x_1_1_1: Ref ::
            { invRecv6(x_1_1_1) }
            xs[invRecv6(x_1_1_1)] && qpRange6(x_1_1_1) ==> wildcard >= NoPerm
          );
        
        // -- check if receiver acc(list(x), wildcard) is injective
          assert {:msg "  Precondition of function length2_impl might not hold. Quantified resource list(x) might not be injective. (0455.vpr@175.10--175.30) [55454]"}
            (forall x: Ref, x_46: Ref ::
            { neverTriggered6(x), neverTriggered6(x_46) }
            (((x != x_46 && xs[x]) && xs[x_46]) && NoPerm < wildcard) && NoPerm < wildcard ==> x != x_46
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function length2_impl might not hold. There might be insufficient permission to access list(x) (0455.vpr@175.10--175.30) [55455]"}
            (forall x: Ref ::
            { Heap[null, list(x)] } { Mask[null, list(x)] } { xs[x] }
            xs[x] ==> wildcard > NoPerm ==> Mask[null, list(x)] > NoPerm
          );
        
        // -- assumptions for inverse of receiver acc(list(x), wildcard)
          assume (forall x: Ref ::
            { Heap[null, list(x)] } { Mask[null, list(x)] } { xs[x] }
            xs[x] && NoPerm < wildcard ==> invRecv6(x) == x && qpRange6(x)
          );
          assume (forall x_1_1_1: Ref ::
            { invRecv6(x_1_1_1) }
            (xs[invRecv6(x_1_1_1)] && NoPerm < wildcard) && qpRange6(x_1_1_1) ==> invRecv6(x_1_1_1) == x_1_1_1
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume length2_impl(Heap, xs, x2, 1, res);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert res == 2 -- 0455.vpr@176.3--176.18
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion res == 2 might not hold. (0455.vpr@176.10--176.18) [55456]"}
      res == 2;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test2_length4
// ==================================================

procedure test2_length4() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var x1: Ref;
  var x2: Ref;
  var x3: Ref;
  var x4: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var wildcard: real where wildcard > 0.000000000;
  var perm: Perm;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var xs: (Set Ref);
  var QPMask: MaskType;
  var ExhaleHeap: HeapType;
  var res: int;
  
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
    assume Heap[x1, $allocated];
    assume Heap[x2, $allocated];
    assume Heap[x3, $allocated];
    assume Heap[x4, $allocated];
  
  // -- Translating statement: x1 := new(next) -- 0455.vpr@180.16--180.31
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x1 := freshObj;
    Mask := Mask[x1, next:=Mask[x1, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x1.next := null -- 0455.vpr@181.3--181.18
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x1.next (0455.vpr@181.3--181.18) [55457]"}
      FullPerm == Mask[x1, next];
    Heap := Heap[x1, next:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(x1), wildcard) -- 0455.vpr@182.3--182.31
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Folding list(x1) might fail. There might be insufficient permission to access x1.next (0455.vpr@182.3--182.31) [55459]"}
      Mask[x1, next] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[x1, next];
    Mask := Mask[x1, next:=Mask[x1, next] - wildcard];
    if (Heap[x1, next] != null) {
      assert {:msg "  Folding list(x1) might fail. There might be insufficient permission to access list(x1.next) (0455.vpr@182.3--182.31) [55460]"}
        Mask[null, list(Heap[x1, next])] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[null, list(Heap[x1, next])];
      Mask := Mask[null, list(Heap[x1, next]):=Mask[null, list(Heap[x1, next])] - wildcard];
      
      // -- Record predicate instance information
        assume InsidePredicate(list(x1), Heap[null, list(x1)], list(Heap[x1, next]), Heap[null, list(Heap[x1, next])]);
    }
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, list(x1):=Mask[null, list(x1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list#trigger(Heap, list(x1));
    assume Heap[null, list(x1)] == CombineFrames(FrameFragment(Heap[x1, next]), FrameFragment((if Heap[x1, next] != null then Heap[null, list(Heap[x1, next])] else EmptyFrame)));
    if (!HasDirectPerm(Mask, null, list(x1))) {
      Heap := Heap[null, list#sm(x1):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list(x1):=freshVersion];
    }
    Heap := Heap[null, list#sm(x1):=Heap[null, list#sm(x1)][x1, next:=true]];
    if (Heap[x1, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_21: Ref, f_58: (Field A B) ::
        { newPMask[o_21, f_58] }
        Heap[null, list#sm(x1)][o_21, f_58] || Heap[null, list#sm(Heap[x1, next])][o_21, f_58] ==> newPMask[o_21, f_58]
      );
      Heap := Heap[null, list#sm(x1):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: x2 := new(next) -- 0455.vpr@184.16--184.31
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x2 := freshObj;
    Mask := Mask[x2, next:=Mask[x2, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x2.next := x1 -- 0455.vpr@185.3--185.16
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x2.next (0455.vpr@185.3--185.16) [55461]"}
      FullPerm == Mask[x2, next];
    Heap := Heap[x2, next:=x1];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(x2), wildcard) -- 0455.vpr@186.3--186.31
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Folding list(x2) might fail. There might be insufficient permission to access x2.next (0455.vpr@186.3--186.31) [55463]"}
      Mask[x2, next] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[x2, next];
    Mask := Mask[x2, next:=Mask[x2, next] - wildcard];
    if (Heap[x2, next] != null) {
      assert {:msg "  Folding list(x2) might fail. There might be insufficient permission to access list(x2.next) (0455.vpr@186.3--186.31) [55464]"}
        Mask[null, list(Heap[x2, next])] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[null, list(Heap[x2, next])];
      Mask := Mask[null, list(Heap[x2, next]):=Mask[null, list(Heap[x2, next])] - wildcard];
      
      // -- Record predicate instance information
        assume InsidePredicate(list(x2), Heap[null, list(x2)], list(Heap[x2, next]), Heap[null, list(Heap[x2, next])]);
    }
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, list(x2):=Mask[null, list(x2)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list#trigger(Heap, list(x2));
    assume Heap[null, list(x2)] == CombineFrames(FrameFragment(Heap[x2, next]), FrameFragment((if Heap[x2, next] != null then Heap[null, list(Heap[x2, next])] else EmptyFrame)));
    if (!HasDirectPerm(Mask, null, list(x2))) {
      Heap := Heap[null, list#sm(x2):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list(x2):=freshVersion];
    }
    Heap := Heap[null, list#sm(x2):=Heap[null, list#sm(x2)][x2, next:=true]];
    if (Heap[x2, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_43: Ref, f_33: (Field A B) ::
        { newPMask[o_43, f_33] }
        Heap[null, list#sm(x2)][o_43, f_33] || Heap[null, list#sm(Heap[x2, next])][o_43, f_33] ==> newPMask[o_43, f_33]
      );
      Heap := Heap[null, list#sm(x2):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: x3 := new(next) -- 0455.vpr@188.16--188.31
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x3 := freshObj;
    Mask := Mask[x3, next:=Mask[x3, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x3.next := x2 -- 0455.vpr@189.3--189.16
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x3.next (0455.vpr@189.3--189.16) [55465]"}
      FullPerm == Mask[x3, next];
    Heap := Heap[x3, next:=x2];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(x3), wildcard) -- 0455.vpr@190.3--190.31
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Folding list(x3) might fail. There might be insufficient permission to access x3.next (0455.vpr@190.3--190.31) [55467]"}
      Mask[x3, next] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[x3, next];
    Mask := Mask[x3, next:=Mask[x3, next] - wildcard];
    if (Heap[x3, next] != null) {
      assert {:msg "  Folding list(x3) might fail. There might be insufficient permission to access list(x3.next) (0455.vpr@190.3--190.31) [55468]"}
        Mask[null, list(Heap[x3, next])] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[null, list(Heap[x3, next])];
      Mask := Mask[null, list(Heap[x3, next]):=Mask[null, list(Heap[x3, next])] - wildcard];
      
      // -- Record predicate instance information
        assume InsidePredicate(list(x3), Heap[null, list(x3)], list(Heap[x3, next]), Heap[null, list(Heap[x3, next])]);
    }
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, list(x3):=Mask[null, list(x3)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list#trigger(Heap, list(x3));
    assume Heap[null, list(x3)] == CombineFrames(FrameFragment(Heap[x3, next]), FrameFragment((if Heap[x3, next] != null then Heap[null, list(Heap[x3, next])] else EmptyFrame)));
    if (!HasDirectPerm(Mask, null, list(x3))) {
      Heap := Heap[null, list#sm(x3):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list(x3):=freshVersion];
    }
    Heap := Heap[null, list#sm(x3):=Heap[null, list#sm(x3)][x3, next:=true]];
    if (Heap[x3, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_50: Ref, f_75: (Field A B) ::
        { newPMask[o_50, f_75] }
        Heap[null, list#sm(x3)][o_50, f_75] || Heap[null, list#sm(Heap[x3, next])][o_50, f_75] ==> newPMask[o_50, f_75]
      );
      Heap := Heap[null, list#sm(x3):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: x4 := new(next) -- 0455.vpr@192.16--192.31
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x4 := freshObj;
    Mask := Mask[x4, next:=Mask[x4, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x4.next := x3 -- 0455.vpr@193.3--193.16
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x4.next (0455.vpr@193.3--193.16) [55469]"}
      FullPerm == Mask[x4, next];
    Heap := Heap[x4, next:=x3];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(x4), wildcard) -- 0455.vpr@194.3--194.31
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Folding list(x4) might fail. There might be insufficient permission to access x4.next (0455.vpr@194.3--194.31) [55471]"}
      Mask[x4, next] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[x4, next];
    Mask := Mask[x4, next:=Mask[x4, next] - wildcard];
    if (Heap[x4, next] != null) {
      assert {:msg "  Folding list(x4) might fail. There might be insufficient permission to access list(x4.next) (0455.vpr@194.3--194.31) [55472]"}
        Mask[null, list(Heap[x4, next])] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[null, list(Heap[x4, next])];
      Mask := Mask[null, list(Heap[x4, next]):=Mask[null, list(Heap[x4, next])] - wildcard];
      
      // -- Record predicate instance information
        assume InsidePredicate(list(x4), Heap[null, list(x4)], list(Heap[x4, next]), Heap[null, list(Heap[x4, next])]);
    }
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, list(x4):=Mask[null, list(x4)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list#trigger(Heap, list(x4));
    assume Heap[null, list(x4)] == CombineFrames(FrameFragment(Heap[x4, next]), FrameFragment((if Heap[x4, next] != null then Heap[null, list(Heap[x4, next])] else EmptyFrame)));
    if (!HasDirectPerm(Mask, null, list(x4))) {
      Heap := Heap[null, list#sm(x4):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list(x4):=freshVersion];
    }
    Heap := Heap[null, list#sm(x4):=Heap[null, list#sm(x4)][x4, next:=true]];
    if (Heap[x4, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_22: Ref, f_59: (Field A B) ::
        { newPMask[o_22, f_59] }
        Heap[null, list#sm(x4)][o_22, f_59] || Heap[null, list#sm(Heap[x4, next])][o_22, f_59] ==> newPMask[o_22, f_59]
      );
      Heap := Heap[null, list#sm(x4):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: xs := Set(x1, x2, x4, x3) -- 0455.vpr@196.3--196.42
    xs := Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Singleton(x3), x4), x2), x1);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale length2_impl(xs, x4, 1, res) -- 0455.vpr@199.10--199.30
    assume state(Heap, Mask);
    
    // -- Check definedness of length2_impl(xs, x4, 1, res)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        havoc QPMask;
        // wildcard assumptions
        havoc wildcard;
        assert {:msg "  Precondition of function length2_impl might not hold. There might be insufficient permission to access list(x) (0455.vpr@199.10--199.30) [55473]"}
          (forall x: Ref ::
          
          xs[x] ==> Mask[null, list(x)] > NoPerm
        );
        assume (forall x: Ref ::
          
          xs[x] ==> wildcard < Mask[null, list(x)]
        );
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function length2_impl might not hold. Fraction wildcard might be negative. (0455.vpr@199.10--199.30) [55474]"}
            (forall x_1_1_1: Ref ::
            { invRecv7(x_1_1_1) }
            xs[invRecv7(x_1_1_1)] && qpRange7(x_1_1_1) ==> wildcard >= NoPerm
          );
        
        // -- check if receiver acc(list(x), wildcard) is injective
          assert {:msg "  Precondition of function length2_impl might not hold. Quantified resource list(x) might not be injective. (0455.vpr@199.10--199.30) [55475]"}
            (forall x: Ref, x_46: Ref ::
            { neverTriggered7(x), neverTriggered7(x_46) }
            (((x != x_46 && xs[x]) && xs[x_46]) && NoPerm < wildcard) && NoPerm < wildcard ==> x != x_46
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function length2_impl might not hold. There might be insufficient permission to access list(x) (0455.vpr@199.10--199.30) [55476]"}
            (forall x: Ref ::
            { Heap[null, list(x)] } { Mask[null, list(x)] } { xs[x] }
            xs[x] ==> wildcard > NoPerm ==> Mask[null, list(x)] > NoPerm
          );
        
        // -- assumptions for inverse of receiver acc(list(x), wildcard)
          assume (forall x: Ref ::
            { Heap[null, list(x)] } { Mask[null, list(x)] } { xs[x] }
            xs[x] && NoPerm < wildcard ==> invRecv7(x) == x && qpRange7(x)
          );
          assume (forall x_1_1_1: Ref ::
            { invRecv7(x_1_1_1) }
            (xs[invRecv7(x_1_1_1)] && NoPerm < wildcard) && qpRange7(x_1_1_1) ==> invRecv7(x_1_1_1) == x_1_1_1
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume length2_impl(Heap, xs, x4, 1, res);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert res == 4 -- 0455.vpr@200.3--200.18
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion res == 4 might not hold. (0455.vpr@200.10--200.18) [55477]"}
      res == 4;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test3_length1
// ==================================================

procedure test3_length1() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var x1: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var xs: (Set Ref);
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var ExhaleHeap: HeapType;
  var res: int;
  
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
    assume Heap[x1, $allocated];
  
  // -- Translating statement: x1 := new(next) -- 0455.vpr@219.16--219.31
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x1 := freshObj;
    Mask := Mask[x1, next:=Mask[x1, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x1.next := null -- 0455.vpr@220.3--220.18
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x1.next (0455.vpr@220.3--220.18) [55478]"}
      FullPerm == Mask[x1, next];
    Heap := Heap[x1, next:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(x1), write) -- 0455.vpr@221.3--221.16
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list(x1) might fail. There might be insufficient permission to access x1.next (0455.vpr@221.3--221.16) [55481]"}
        perm <= Mask[x1, next];
    }
    Mask := Mask[x1, next:=Mask[x1, next] - perm];
    if (Heap[x1, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding list(x1) might fail. There might be insufficient permission to access list(x1.next) (0455.vpr@221.3--221.16) [55483]"}
          perm <= Mask[null, list(Heap[x1, next])];
      }
      Mask := Mask[null, list(Heap[x1, next]):=Mask[null, list(Heap[x1, next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(list(x1), Heap[null, list(x1)], list(Heap[x1, next]), Heap[null, list(Heap[x1, next])]);
    }
    perm := FullPerm;
    Mask := Mask[null, list(x1):=Mask[null, list(x1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list#trigger(Heap, list(x1));
    assume Heap[null, list(x1)] == CombineFrames(FrameFragment(Heap[x1, next]), FrameFragment((if Heap[x1, next] != null then Heap[null, list(Heap[x1, next])] else EmptyFrame)));
    if (!HasDirectPerm(Mask, null, list(x1))) {
      Heap := Heap[null, list#sm(x1):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list(x1):=freshVersion];
    }
    Heap := Heap[null, list#sm(x1):=Heap[null, list#sm(x1)][x1, next:=true]];
    if (Heap[x1, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_67: Ref, f_69: (Field A B) ::
        { newPMask[o_67, f_69] }
        Heap[null, list#sm(x1)][o_67, f_69] || Heap[null, list#sm(Heap[x1, next])][o_67, f_69] ==> newPMask[o_67, f_69]
      );
      Heap := Heap[null, list#sm(x1):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: xs := Set(x1) -- 0455.vpr@222.3--222.30
    xs := Set#Singleton(x1);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale length3_impl(xs, x1, 1, res) -- 0455.vpr@225.10--225.30
    assume state(Heap, Mask);
    
    // -- Check definedness of length3_impl(xs, x1, 1, res)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        havoc QPMask;
        // wildcard assumptions
        havoc wildcard;
        assert {:msg "  Precondition of function length3_impl might not hold. There might be insufficient permission to access list(x) (0455.vpr@225.10--225.30) [55485]"}
          (forall x: Ref ::
          
          xs[x] ==> Mask[null, list(x)] > NoPerm
        );
        assume (forall x: Ref ::
          
          xs[x] ==> wildcard < Mask[null, list(x)]
        );
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function length3_impl might not hold. Fraction wildcard might be negative. (0455.vpr@225.10--225.30) [55486]"}
            (forall x_1_1_1: Ref ::
            { invRecv8(x_1_1_1) }
            xs[invRecv8(x_1_1_1)] && qpRange8(x_1_1_1) ==> wildcard >= NoPerm
          );
        
        // -- check if receiver acc(list(x), wildcard) is injective
          assert {:msg "  Precondition of function length3_impl might not hold. Quantified resource list(x) might not be injective. (0455.vpr@225.10--225.30) [55487]"}
            (forall x: Ref, x_46: Ref ::
            { neverTriggered8(x), neverTriggered8(x_46) }
            (((x != x_46 && xs[x]) && xs[x_46]) && NoPerm < wildcard) && NoPerm < wildcard ==> x != x_46
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function length3_impl might not hold. There might be insufficient permission to access list(x) (0455.vpr@225.10--225.30) [55488]"}
            (forall x: Ref ::
            { Heap[null, list(x)] } { Mask[null, list(x)] } { xs[x] } { Heap[null, list(x)] }
            xs[x] ==> wildcard > NoPerm ==> Mask[null, list(x)] > NoPerm
          );
        
        // -- assumptions for inverse of receiver acc(list(x), wildcard)
          assume (forall x: Ref ::
            { Heap[null, list(x)] } { Mask[null, list(x)] } { xs[x] } { Heap[null, list(x)] }
            xs[x] && NoPerm < wildcard ==> invRecv8(x) == x && qpRange8(x)
          );
          assume (forall x_1_1_1: Ref ::
            { invRecv8(x_1_1_1) }
            (xs[invRecv8(x_1_1_1)] && NoPerm < wildcard) && qpRange8(x_1_1_1) ==> invRecv8(x_1_1_1) == x_1_1_1
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume length3_impl(Heap, xs, x1, 1, res);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert res == 1 -- 0455.vpr@226.3--226.18
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion res == 1 might not hold. (0455.vpr@226.10--226.18) [55489]"}
      res == 1;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test3_length2
// ==================================================

procedure test3_length2() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var x1: Ref;
  var x2: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var wildcard: real where wildcard > 0.000000000;
  var perm: Perm;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var xs: (Set Ref);
  var QPMask: MaskType;
  var ExhaleHeap: HeapType;
  var res: int;
  
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
    assume Heap[x1, $allocated];
    assume Heap[x2, $allocated];
  
  // -- Translating statement: x1 := new(next) -- 0455.vpr@230.16--230.31
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x1 := freshObj;
    Mask := Mask[x1, next:=Mask[x1, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x1.next := null -- 0455.vpr@231.3--231.18
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x1.next (0455.vpr@231.3--231.18) [55490]"}
      FullPerm == Mask[x1, next];
    Heap := Heap[x1, next:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(x1), wildcard) -- 0455.vpr@232.3--232.31
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Folding list(x1) might fail. There might be insufficient permission to access x1.next (0455.vpr@232.3--232.31) [55492]"}
      Mask[x1, next] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[x1, next];
    Mask := Mask[x1, next:=Mask[x1, next] - wildcard];
    if (Heap[x1, next] != null) {
      assert {:msg "  Folding list(x1) might fail. There might be insufficient permission to access list(x1.next) (0455.vpr@232.3--232.31) [55493]"}
        Mask[null, list(Heap[x1, next])] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[null, list(Heap[x1, next])];
      Mask := Mask[null, list(Heap[x1, next]):=Mask[null, list(Heap[x1, next])] - wildcard];
      
      // -- Record predicate instance information
        assume InsidePredicate(list(x1), Heap[null, list(x1)], list(Heap[x1, next]), Heap[null, list(Heap[x1, next])]);
    }
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, list(x1):=Mask[null, list(x1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list#trigger(Heap, list(x1));
    assume Heap[null, list(x1)] == CombineFrames(FrameFragment(Heap[x1, next]), FrameFragment((if Heap[x1, next] != null then Heap[null, list(Heap[x1, next])] else EmptyFrame)));
    if (!HasDirectPerm(Mask, null, list(x1))) {
      Heap := Heap[null, list#sm(x1):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list(x1):=freshVersion];
    }
    Heap := Heap[null, list#sm(x1):=Heap[null, list#sm(x1)][x1, next:=true]];
    if (Heap[x1, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_68: Ref, f_76: (Field A B) ::
        { newPMask[o_68, f_76] }
        Heap[null, list#sm(x1)][o_68, f_76] || Heap[null, list#sm(Heap[x1, next])][o_68, f_76] ==> newPMask[o_68, f_76]
      );
      Heap := Heap[null, list#sm(x1):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: x2 := new(next) -- 0455.vpr@234.16--234.31
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x2 := freshObj;
    Mask := Mask[x2, next:=Mask[x2, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x2.next := x1 -- 0455.vpr@235.3--235.16
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x2.next (0455.vpr@235.3--235.16) [55494]"}
      FullPerm == Mask[x2, next];
    Heap := Heap[x2, next:=x1];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(x2), wildcard) -- 0455.vpr@236.3--236.31
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Folding list(x2) might fail. There might be insufficient permission to access x2.next (0455.vpr@236.3--236.31) [55496]"}
      Mask[x2, next] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[x2, next];
    Mask := Mask[x2, next:=Mask[x2, next] - wildcard];
    if (Heap[x2, next] != null) {
      assert {:msg "  Folding list(x2) might fail. There might be insufficient permission to access list(x2.next) (0455.vpr@236.3--236.31) [55497]"}
        Mask[null, list(Heap[x2, next])] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[null, list(Heap[x2, next])];
      Mask := Mask[null, list(Heap[x2, next]):=Mask[null, list(Heap[x2, next])] - wildcard];
      
      // -- Record predicate instance information
        assume InsidePredicate(list(x2), Heap[null, list(x2)], list(Heap[x2, next]), Heap[null, list(Heap[x2, next])]);
    }
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, list(x2):=Mask[null, list(x2)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list#trigger(Heap, list(x2));
    assume Heap[null, list(x2)] == CombineFrames(FrameFragment(Heap[x2, next]), FrameFragment((if Heap[x2, next] != null then Heap[null, list(Heap[x2, next])] else EmptyFrame)));
    if (!HasDirectPerm(Mask, null, list(x2))) {
      Heap := Heap[null, list#sm(x2):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list(x2):=freshVersion];
    }
    Heap := Heap[null, list#sm(x2):=Heap[null, list#sm(x2)][x2, next:=true]];
    if (Heap[x2, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_69: Ref, f_77: (Field A B) ::
        { newPMask[o_69, f_77] }
        Heap[null, list#sm(x2)][o_69, f_77] || Heap[null, list#sm(Heap[x2, next])][o_69, f_77] ==> newPMask[o_69, f_77]
      );
      Heap := Heap[null, list#sm(x2):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: xs := Set(x1, x2) -- 0455.vpr@238.3--238.34
    xs := Set#UnionOne(Set#Singleton(x2), x1);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (x1 in xs) && (x2 in xs) -- 0455.vpr@239.3--239.30
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion (x1 in xs) might not hold. (0455.vpr@239.10--239.30) [55498]"}
      xs[x1];
    assert {:msg "  Assert might fail. Assertion (x2 in xs) might not hold. (0455.vpr@239.10--239.30) [55499]"}
      xs[x2];
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale length3_impl(xs, x2, 1, res) -- 0455.vpr@242.10--242.30
    assume state(Heap, Mask);
    
    // -- Check definedness of length3_impl(xs, x2, 1, res)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        havoc QPMask;
        // wildcard assumptions
        havoc wildcard;
        assert {:msg "  Precondition of function length3_impl might not hold. There might be insufficient permission to access list(x) (0455.vpr@242.10--242.30) [55500]"}
          (forall x: Ref ::
          
          xs[x] ==> Mask[null, list(x)] > NoPerm
        );
        assume (forall x: Ref ::
          
          xs[x] ==> wildcard < Mask[null, list(x)]
        );
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function length3_impl might not hold. Fraction wildcard might be negative. (0455.vpr@242.10--242.30) [55501]"}
            (forall x_1_1_1: Ref ::
            { invRecv9(x_1_1_1) }
            xs[invRecv9(x_1_1_1)] && qpRange9(x_1_1_1) ==> wildcard >= NoPerm
          );
        
        // -- check if receiver acc(list(x), wildcard) is injective
          assert {:msg "  Precondition of function length3_impl might not hold. Quantified resource list(x) might not be injective. (0455.vpr@242.10--242.30) [55502]"}
            (forall x: Ref, x_46: Ref ::
            { neverTriggered9(x), neverTriggered9(x_46) }
            (((x != x_46 && xs[x]) && xs[x_46]) && NoPerm < wildcard) && NoPerm < wildcard ==> x != x_46
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function length3_impl might not hold. There might be insufficient permission to access list(x) (0455.vpr@242.10--242.30) [55503]"}
            (forall x: Ref ::
            { Heap[null, list(x)] } { Mask[null, list(x)] } { xs[x] } { Heap[null, list(x)] }
            xs[x] ==> wildcard > NoPerm ==> Mask[null, list(x)] > NoPerm
          );
        
        // -- assumptions for inverse of receiver acc(list(x), wildcard)
          assume (forall x: Ref ::
            { Heap[null, list(x)] } { Mask[null, list(x)] } { xs[x] } { Heap[null, list(x)] }
            xs[x] && NoPerm < wildcard ==> invRecv9(x) == x && qpRange9(x)
          );
          assume (forall x_1_1_1: Ref ::
            { invRecv9(x_1_1_1) }
            (xs[invRecv9(x_1_1_1)] && NoPerm < wildcard) && qpRange9(x_1_1_1) ==> invRecv9(x_1_1_1) == x_1_1_1
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume length3_impl(Heap, xs, x2, 1, res);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert res == 2 -- 0455.vpr@243.3--243.18
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion res == 2 might not hold. (0455.vpr@243.10--243.18) [55504]"}
      res == 2;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test3_length4
// ==================================================

procedure test3_length4() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var x1: Ref;
  var x2: Ref;
  var x3: Ref;
  var x4: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var wildcard: real where wildcard > 0.000000000;
  var perm: Perm;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var xs: (Set Ref);
  var QPMask: MaskType;
  var ExhaleHeap: HeapType;
  var res: int;
  
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
    assume Heap[x1, $allocated];
    assume Heap[x2, $allocated];
    assume Heap[x3, $allocated];
    assume Heap[x4, $allocated];
  
  // -- Translating statement: x1 := new(next) -- 0455.vpr@247.16--247.31
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x1 := freshObj;
    Mask := Mask[x1, next:=Mask[x1, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x1.next := null -- 0455.vpr@248.3--248.18
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x1.next (0455.vpr@248.3--248.18) [55505]"}
      FullPerm == Mask[x1, next];
    Heap := Heap[x1, next:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(x1), wildcard) -- 0455.vpr@249.3--249.31
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Folding list(x1) might fail. There might be insufficient permission to access x1.next (0455.vpr@249.3--249.31) [55507]"}
      Mask[x1, next] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[x1, next];
    Mask := Mask[x1, next:=Mask[x1, next] - wildcard];
    if (Heap[x1, next] != null) {
      assert {:msg "  Folding list(x1) might fail. There might be insufficient permission to access list(x1.next) (0455.vpr@249.3--249.31) [55508]"}
        Mask[null, list(Heap[x1, next])] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[null, list(Heap[x1, next])];
      Mask := Mask[null, list(Heap[x1, next]):=Mask[null, list(Heap[x1, next])] - wildcard];
      
      // -- Record predicate instance information
        assume InsidePredicate(list(x1), Heap[null, list(x1)], list(Heap[x1, next]), Heap[null, list(Heap[x1, next])]);
    }
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, list(x1):=Mask[null, list(x1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list#trigger(Heap, list(x1));
    assume Heap[null, list(x1)] == CombineFrames(FrameFragment(Heap[x1, next]), FrameFragment((if Heap[x1, next] != null then Heap[null, list(Heap[x1, next])] else EmptyFrame)));
    if (!HasDirectPerm(Mask, null, list(x1))) {
      Heap := Heap[null, list#sm(x1):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list(x1):=freshVersion];
    }
    Heap := Heap[null, list#sm(x1):=Heap[null, list#sm(x1)][x1, next:=true]];
    if (Heap[x1, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_70: Ref, f_78: (Field A B) ::
        { newPMask[o_70, f_78] }
        Heap[null, list#sm(x1)][o_70, f_78] || Heap[null, list#sm(Heap[x1, next])][o_70, f_78] ==> newPMask[o_70, f_78]
      );
      Heap := Heap[null, list#sm(x1):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: x2 := new(next) -- 0455.vpr@251.16--251.31
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x2 := freshObj;
    Mask := Mask[x2, next:=Mask[x2, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x2.next := x1 -- 0455.vpr@252.3--252.16
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x2.next (0455.vpr@252.3--252.16) [55509]"}
      FullPerm == Mask[x2, next];
    Heap := Heap[x2, next:=x1];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(x2), wildcard) -- 0455.vpr@253.3--253.31
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Folding list(x2) might fail. There might be insufficient permission to access x2.next (0455.vpr@253.3--253.31) [55511]"}
      Mask[x2, next] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[x2, next];
    Mask := Mask[x2, next:=Mask[x2, next] - wildcard];
    if (Heap[x2, next] != null) {
      assert {:msg "  Folding list(x2) might fail. There might be insufficient permission to access list(x2.next) (0455.vpr@253.3--253.31) [55512]"}
        Mask[null, list(Heap[x2, next])] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[null, list(Heap[x2, next])];
      Mask := Mask[null, list(Heap[x2, next]):=Mask[null, list(Heap[x2, next])] - wildcard];
      
      // -- Record predicate instance information
        assume InsidePredicate(list(x2), Heap[null, list(x2)], list(Heap[x2, next]), Heap[null, list(Heap[x2, next])]);
    }
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, list(x2):=Mask[null, list(x2)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list#trigger(Heap, list(x2));
    assume Heap[null, list(x2)] == CombineFrames(FrameFragment(Heap[x2, next]), FrameFragment((if Heap[x2, next] != null then Heap[null, list(Heap[x2, next])] else EmptyFrame)));
    if (!HasDirectPerm(Mask, null, list(x2))) {
      Heap := Heap[null, list#sm(x2):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list(x2):=freshVersion];
    }
    Heap := Heap[null, list#sm(x2):=Heap[null, list#sm(x2)][x2, next:=true]];
    if (Heap[x2, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_71: Ref, f_35: (Field A B) ::
        { newPMask[o_71, f_35] }
        Heap[null, list#sm(x2)][o_71, f_35] || Heap[null, list#sm(Heap[x2, next])][o_71, f_35] ==> newPMask[o_71, f_35]
      );
      Heap := Heap[null, list#sm(x2):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: x3 := new(next) -- 0455.vpr@255.16--255.31
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x3 := freshObj;
    Mask := Mask[x3, next:=Mask[x3, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x3.next := x2 -- 0455.vpr@256.3--256.16
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x3.next (0455.vpr@256.3--256.16) [55513]"}
      FullPerm == Mask[x3, next];
    Heap := Heap[x3, next:=x2];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(x3), wildcard) -- 0455.vpr@257.3--257.31
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Folding list(x3) might fail. There might be insufficient permission to access x3.next (0455.vpr@257.3--257.31) [55515]"}
      Mask[x3, next] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[x3, next];
    Mask := Mask[x3, next:=Mask[x3, next] - wildcard];
    if (Heap[x3, next] != null) {
      assert {:msg "  Folding list(x3) might fail. There might be insufficient permission to access list(x3.next) (0455.vpr@257.3--257.31) [55516]"}
        Mask[null, list(Heap[x3, next])] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[null, list(Heap[x3, next])];
      Mask := Mask[null, list(Heap[x3, next]):=Mask[null, list(Heap[x3, next])] - wildcard];
      
      // -- Record predicate instance information
        assume InsidePredicate(list(x3), Heap[null, list(x3)], list(Heap[x3, next]), Heap[null, list(Heap[x3, next])]);
    }
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, list(x3):=Mask[null, list(x3)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list#trigger(Heap, list(x3));
    assume Heap[null, list(x3)] == CombineFrames(FrameFragment(Heap[x3, next]), FrameFragment((if Heap[x3, next] != null then Heap[null, list(Heap[x3, next])] else EmptyFrame)));
    if (!HasDirectPerm(Mask, null, list(x3))) {
      Heap := Heap[null, list#sm(x3):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list(x3):=freshVersion];
    }
    Heap := Heap[null, list#sm(x3):=Heap[null, list#sm(x3)][x3, next:=true]];
    if (Heap[x3, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_72: Ref, f_79: (Field A B) ::
        { newPMask[o_72, f_79] }
        Heap[null, list#sm(x3)][o_72, f_79] || Heap[null, list#sm(Heap[x3, next])][o_72, f_79] ==> newPMask[o_72, f_79]
      );
      Heap := Heap[null, list#sm(x3):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: x4 := new(next) -- 0455.vpr@259.16--259.31
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x4 := freshObj;
    Mask := Mask[x4, next:=Mask[x4, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x4.next := x3 -- 0455.vpr@260.3--260.16
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x4.next (0455.vpr@260.3--260.16) [55517]"}
      FullPerm == Mask[x4, next];
    Heap := Heap[x4, next:=x3];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(x4), wildcard) -- 0455.vpr@261.3--261.31
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Folding list(x4) might fail. There might be insufficient permission to access x4.next (0455.vpr@261.3--261.31) [55519]"}
      Mask[x4, next] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[x4, next];
    Mask := Mask[x4, next:=Mask[x4, next] - wildcard];
    if (Heap[x4, next] != null) {
      assert {:msg "  Folding list(x4) might fail. There might be insufficient permission to access list(x4.next) (0455.vpr@261.3--261.31) [55520]"}
        Mask[null, list(Heap[x4, next])] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[null, list(Heap[x4, next])];
      Mask := Mask[null, list(Heap[x4, next]):=Mask[null, list(Heap[x4, next])] - wildcard];
      
      // -- Record predicate instance information
        assume InsidePredicate(list(x4), Heap[null, list(x4)], list(Heap[x4, next]), Heap[null, list(Heap[x4, next])]);
    }
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, list(x4):=Mask[null, list(x4)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list#trigger(Heap, list(x4));
    assume Heap[null, list(x4)] == CombineFrames(FrameFragment(Heap[x4, next]), FrameFragment((if Heap[x4, next] != null then Heap[null, list(Heap[x4, next])] else EmptyFrame)));
    if (!HasDirectPerm(Mask, null, list(x4))) {
      Heap := Heap[null, list#sm(x4):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list(x4):=freshVersion];
    }
    Heap := Heap[null, list#sm(x4):=Heap[null, list#sm(x4)][x4, next:=true]];
    if (Heap[x4, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_30: Ref, f_80: (Field A B) ::
        { newPMask[o_30, f_80] }
        Heap[null, list#sm(x4)][o_30, f_80] || Heap[null, list#sm(Heap[x4, next])][o_30, f_80] ==> newPMask[o_30, f_80]
      );
      Heap := Heap[null, list#sm(x4):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: xs := Set(x1, x2, x4, x3) -- 0455.vpr@263.3--263.42
    xs := Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Singleton(x3), x4), x2), x1);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale length3_impl(xs, x4, 1, res) -- 0455.vpr@266.10--266.30
    assume state(Heap, Mask);
    
    // -- Check definedness of length3_impl(xs, x4, 1, res)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        havoc QPMask;
        // wildcard assumptions
        havoc wildcard;
        assert {:msg "  Precondition of function length3_impl might not hold. There might be insufficient permission to access list(x) (0455.vpr@266.10--266.30) [55521]"}
          (forall x: Ref ::
          
          xs[x] ==> Mask[null, list(x)] > NoPerm
        );
        assume (forall x: Ref ::
          
          xs[x] ==> wildcard < Mask[null, list(x)]
        );
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function length3_impl might not hold. Fraction wildcard might be negative. (0455.vpr@266.10--266.30) [55522]"}
            (forall x_1_1_1: Ref ::
            { invRecv10(x_1_1_1) }
            xs[invRecv10(x_1_1_1)] && qpRange10(x_1_1_1) ==> wildcard >= NoPerm
          );
        
        // -- check if receiver acc(list(x), wildcard) is injective
          assert {:msg "  Precondition of function length3_impl might not hold. Quantified resource list(x) might not be injective. (0455.vpr@266.10--266.30) [55523]"}
            (forall x: Ref, x_46: Ref ::
            { neverTriggered10(x), neverTriggered10(x_46) }
            (((x != x_46 && xs[x]) && xs[x_46]) && NoPerm < wildcard) && NoPerm < wildcard ==> x != x_46
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function length3_impl might not hold. There might be insufficient permission to access list(x) (0455.vpr@266.10--266.30) [55524]"}
            (forall x: Ref ::
            { Heap[null, list(x)] } { Mask[null, list(x)] } { xs[x] } { Heap[null, list(x)] }
            xs[x] ==> wildcard > NoPerm ==> Mask[null, list(x)] > NoPerm
          );
        
        // -- assumptions for inverse of receiver acc(list(x), wildcard)
          assume (forall x: Ref ::
            { Heap[null, list(x)] } { Mask[null, list(x)] } { xs[x] } { Heap[null, list(x)] }
            xs[x] && NoPerm < wildcard ==> invRecv10(x) == x && qpRange10(x)
          );
          assume (forall x_1_1_1: Ref ::
            { invRecv10(x_1_1_1) }
            (xs[invRecv10(x_1_1_1)] && NoPerm < wildcard) && qpRange10(x_1_1_1) ==> invRecv10(x_1_1_1) == x_1_1_1
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume length3_impl(Heap, xs, x4, 1, res);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert res == 4 -- 0455.vpr@267.3--267.18
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion res == 4 might not hold. (0455.vpr@267.10--267.18) [55525]"}
      res == 4;
    assume state(Heap, Mask);
}