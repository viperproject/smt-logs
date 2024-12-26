// 
// Translation of Viper program.
// 
// Date:         2024-12-26 20:26:13
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
axiom (forall o_88: Ref, f_80: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_88, f_80] }
  Heap[o_88, $allocated] ==> Heap[Heap[o_88, f_80], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_91: Ref, f_208: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_91, f_208] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_91, f_208) ==> Heap[o_91, f_208] == ExhaleHeap[o_91, f_208]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_61: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_61), ExhaleHeap[null, PredicateMaskField(pm_f_61)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_61) && IsPredicateField(pm_f_61) ==> Heap[null, PredicateMaskField(pm_f_61)] == ExhaleHeap[null, PredicateMaskField(pm_f_61)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_61: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_61) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_61) && IsPredicateField(pm_f_61) ==> (forall <A, B> o2_61: Ref, f_208: (Field A B) ::
    { ExhaleHeap[o2_61, f_208] }
    Heap[null, PredicateMaskField(pm_f_61)][o2_61, f_208] ==> Heap[o2_61, f_208] == ExhaleHeap[o2_61, f_208]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_61: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_61), ExhaleHeap[null, WandMaskField(pm_f_61)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_61) && IsWandField(pm_f_61) ==> Heap[null, WandMaskField(pm_f_61)] == ExhaleHeap[null, WandMaskField(pm_f_61)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_61: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_61) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_61) && IsWandField(pm_f_61) ==> (forall <A, B> o2_61: Ref, f_208: (Field A B) ::
    { ExhaleHeap[o2_61, f_208] }
    Heap[null, WandMaskField(pm_f_61)][o2_61, f_208] ==> Heap[o2_61, f_208] == ExhaleHeap[o2_61, f_208]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_91: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_91, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_91, $allocated] ==> ExhaleHeap[o_91, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_88: Ref, f_92: (Field A B), v: B ::
  { Heap[o_88, f_92:=v] }
  succHeap(Heap, Heap[o_88, f_92:=v])
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
function  invRecv2(x_9_1: Ref): Ref;
function  invRecv3(x_6_1_1: Ref): Ref;
function  invRecv4(x_9_1: Ref): Ref;
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
function  qpRange2(x_9_1: Ref): bool;
function  qpRange3(x_6_1_1: Ref): bool;
function  qpRange4(x_9_1: Ref): bool;
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

const unique elem_1: Field NormalField int;
axiom !IsPredicateField(elem_1);
axiom !IsWandField(elem_1);
const unique next: Field NormalField Ref;
axiom !IsPredicateField(next);
axiom !IsWandField(next);

// ==================================================
// Translation of function foo
// ==================================================

// Uninterpreted function definitions
function  foo_2(Heap: HeapType, l_2: Ref, i: int): bool;
function  foo'(Heap: HeapType, l_2: Ref, i: int): bool;
axiom (forall Heap: HeapType, l_2: Ref, i: int ::
  { foo_2(Heap, l_2, i) }
  foo_2(Heap, l_2, i) == foo'(Heap, l_2, i) && dummyFunction(foo#triggerStateless(l_2, i))
);
axiom (forall Heap: HeapType, l_2: Ref, i: int ::
  { foo'(Heap, l_2, i) }
  dummyFunction(foo#triggerStateless(l_2, i))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, l_2: Ref, i: int ::
  { state(Heap, Mask), foo_2(Heap, l_2, i) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> foo_2(Heap, l_2, i) == (forall j_9: int ::
    { Heap[null, list2(l_2, j_9)] } { foo#frame(Heap[null, list2(Heap[l_2, next], j_9)], Heap[l_2, next], j_9) }
    i == j_9 ==> Heap[l_2, next] == null || foo'(Heap, Heap[l_2, next], j_9)
  )
);

// Framing axioms
function  foo#frame(frame: FrameType, l_2: Ref, i: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, l_2: Ref, i: int ::
  { state(Heap, Mask), foo'(Heap, l_2, i) }
  state(Heap, Mask) ==> foo'(Heap, l_2, i) == foo#frame(Heap[null, list2(l_2, i)], l_2, i)
);

// Trigger function (controlling recursive postconditions)
function  foo#trigger(frame: FrameType, l_2: Ref, i: int): bool;

// State-independent trigger function
function  foo#triggerStateless(l_2: Ref, i: int): bool;

// Check contract well-formedness and postcondition
procedure foo#definedness(l_2: Ref, i: int) returns (Result: bool)
  modifies Heap, Mask;
{
  var perm: Perm;
  var j_6: int;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[l_2, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, list2(l_2, i):=Mask[null, list2(l_2, i)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (forall j: Int :: { list2(l, j) } { foo(l.next, j) } i == j ==> (unfolding acc(list2(l, j), write) in (l.next == null ? true : foo(l.next, j))))
      if (*) {
        if (i == j_6) {
          UnfoldingHeap := Heap;
          UnfoldingMask := Mask;
          assume list2#trigger(UnfoldingHeap, list2(l_2, j_6));
          assume UnfoldingHeap[null, list2(l_2, j_6)] == CombineFrames(FrameFragment(UnfoldingHeap[l_2, elem_1]), CombineFrames(FrameFragment(UnfoldingHeap[l_2, next]), FrameFragment((if UnfoldingHeap[l_2, next] != null then UnfoldingHeap[null, list2(UnfoldingHeap[l_2, next], j_6)] else EmptyFrame))));
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access list2(l, j) (0455.vpr@12.1--17.2) [222101]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, list2(l_2, j_6)];
          perm := FullPerm;
          assume l_2 != null;
          UnfoldingMask := UnfoldingMask[l_2, elem_1:=UnfoldingMask[l_2, elem_1] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume l_2 != null;
          UnfoldingMask := UnfoldingMask[l_2, next:=UnfoldingMask[l_2, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[l_2, next] != null) {
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, list2(UnfoldingHeap[l_2, next], j_6):=UnfoldingMask[null, list2(UnfoldingHeap[l_2, next], j_6)] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(list2(l_2, j_6), UnfoldingHeap[null, list2(l_2, j_6)], list2(UnfoldingHeap[l_2, next], j_6), UnfoldingHeap[null, list2(UnfoldingHeap[l_2, next], j_6)]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access l.next (0455.vpr@12.1--17.2) [222102]"}
            HasDirectPerm(UnfoldingMask, l_2, next);
          if (UnfoldingHeap[l_2, next] == null) {
          } else {
            assert {:msg "  Function might not be well-formed. There might be insufficient permission to access l.next (0455.vpr@12.1--17.2) [222103]"}
              HasDirectPerm(UnfoldingMask, l_2, next);
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := UnfoldingHeap;
              ExhaleWellDef0Mask := UnfoldingMask;
              perm := FullPerm;
              assert {:msg "  Precondition of function foo might not hold. There might be insufficient permission to access list2(l.next, j) (0455.vpr@16.68--16.82) [222104]"}
                NoPerm < perm ==> NoPerm < UnfoldingMask[null, list2(UnfoldingHeap[l_2, next], j_6)];
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
              UnfoldingHeap := ExhaleHeap;
              // Stop execution
              assume false;
            } else {
              // Enable postcondition for recursive call
              assume foo#trigger(UnfoldingHeap[null, list2(UnfoldingHeap[l_2, next], j_6)], UnfoldingHeap[l_2, next], j_6);
            }
          }
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, list2#sm(l_2, j_6):=Heap[null, list2#sm(l_2, j_6)][l_2, elem_1:=true]];
            Heap := Heap[null, list2#sm(l_2, j_6):=Heap[null, list2#sm(l_2, j_6)][l_2, next:=true]];
            if (Heap[l_2, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
                { newPMask[o_15, f_20] }
                Heap[null, list2#sm(l_2, j_6)][o_15, f_20] || Heap[null, list2#sm(Heap[l_2, next], j_6)][o_15, f_20] ==> newPMask[o_15, f_20]
              );
              Heap := Heap[null, list2#sm(l_2, j_6):=newPMask];
            }
            assume state(Heap, Mask);
        }
        assume false;
      }
  
  // -- Translate function body
    Result := (forall j_2_1: int ::
      { Heap[null, list2(l_2, j_2_1)] } { foo#frame(Heap[null, list2(Heap[l_2, next], j_2_1)], Heap[l_2, next], j_2_1) }
      i == j_2_1 ==> Heap[l_2, next] == null || foo_2(Heap, Heap[l_2, next], j_2_1)
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
  var x_32: Ref;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
        if (xs[x_32] && x_32 == y) {
          UnfoldingHeap := Heap;
          UnfoldingMask := Mask;
          assume list#trigger(UnfoldingHeap, list(x_32));
          assume UnfoldingHeap[null, list(x_32)] == CombineFrames(FrameFragment(UnfoldingHeap[x_32, next]), FrameFragment((if UnfoldingHeap[x_32, next] != null then UnfoldingHeap[null, list(UnfoldingHeap[x_32, next])] else EmptyFrame)));
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access list(x) (0455.vpr@72.1--81.2) [222105]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, list(x_32)];
          perm := FullPerm;
          assume x_32 != null;
          UnfoldingMask := UnfoldingMask[x_32, next:=UnfoldingMask[x_32, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[x_32, next] != null) {
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, list(UnfoldingHeap[x_32, next]):=UnfoldingMask[null, list(UnfoldingHeap[x_32, next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(list(x_32), UnfoldingHeap[null, list(x_32)], list(UnfoldingHeap[x_32, next]), UnfoldingHeap[null, list(UnfoldingHeap[x_32, next])]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.next (0455.vpr@72.1--81.2) [222106]"}
            HasDirectPerm(UnfoldingMask, x_32, next);
          if (UnfoldingHeap[x_32, next] == null) {
          } else {
            assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.next (0455.vpr@72.1--81.2) [222107]"}
              HasDirectPerm(UnfoldingMask, x_32, next);
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := UnfoldingHeap;
              ExhaleWellDef0Mask := UnfoldingMask;
              perm := FullPerm;
              assert {:msg "  Precondition of function length_impl might not hold. There might be insufficient permission to access list(x.next) (0455.vpr@80.13--80.50) [222108]"}
                NoPerm < perm ==> NoPerm < UnfoldingMask[null, list(UnfoldingHeap[x_32, next])];
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
              UnfoldingHeap := ExhaleHeap;
              // Stop execution
              assume false;
            } else {
              // Enable postcondition for recursive call
              assume length_impl#trigger(UnfoldingHeap[null, list(UnfoldingHeap[x_32, next])], xs, UnfoldingHeap[x_32, next], akk + 1, res);
            }
          }
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, list#sm(x_32):=Heap[null, list#sm(x_32)][x_32, next:=true]];
            if (Heap[x_32, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_32: Ref, f_38: (Field A B) ::
                { newPMask[o_32, f_38] }
                Heap[null, list#sm(x_32)][o_32, f_38] || Heap[null, list#sm(Heap[x_32, next])][o_32, f_38] ==> newPMask[o_32, f_38]
              );
              Heap := Heap[null, list#sm(x_32):=newPMask];
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
  var x_13: Ref;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
      assert {:msg "  Contract might not be well-formed. Quantified resource list(x) might not be injective. (0455.vpr@141.12--141.63) [222109]"}
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
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
        if (xs[x_13] && x_13 == y) {
          UnfoldingHeap := Heap;
          UnfoldingMask := Mask;
          assume list#trigger(UnfoldingHeap, list(x_13));
          assume UnfoldingHeap[null, list(x_13)] == CombineFrames(FrameFragment(UnfoldingHeap[x_13, next]), FrameFragment((if UnfoldingHeap[x_13, next] != null then UnfoldingHeap[null, list(UnfoldingHeap[x_13, next])] else EmptyFrame)));
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access list(x) (0455.vpr@140.1--149.2) [222110]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, list(x_13)];
          havoc wildcard;
          perm := wildcard;
          assume x_13 != null;
          UnfoldingMask := UnfoldingMask[x_13, next:=UnfoldingMask[x_13, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[x_13, next] != null) {
            havoc wildcard;
            perm := wildcard;
            UnfoldingMask := UnfoldingMask[null, list(UnfoldingHeap[x_13, next]):=UnfoldingMask[null, list(UnfoldingHeap[x_13, next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(list(x_13), UnfoldingHeap[null, list(x_13)], list(UnfoldingHeap[x_13, next]), UnfoldingHeap[null, list(UnfoldingHeap[x_13, next])]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.next (0455.vpr@140.1--149.2) [222111]"}
            HasDirectPerm(UnfoldingMask, x_13, next);
          if (UnfoldingHeap[x_13, next] == null) {
          } else {
            assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.next (0455.vpr@140.1--149.2) [222112]"}
              HasDirectPerm(UnfoldingMask, x_13, next);
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := UnfoldingHeap;
              ExhaleWellDef0Mask := UnfoldingMask;
              havoc QPMask;
              // wildcard assumptions
              havoc wildcard;
              assert {:msg "  Precondition of function length2_impl might not hold. There might be insufficient permission to access list(x$0) (0455.vpr@148.13--148.51) [222113]"}
                (forall x$0: Ref ::
                
                xs[x$0] ==> UnfoldingMask[null, list(x$0)] > NoPerm
              );
              assume (forall x$0: Ref ::
                
                xs[x$0] ==> wildcard < UnfoldingMask[null, list(x$0)]
              );
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function length2_impl might not hold. Fraction wildcard might be negative. (0455.vpr@148.13--148.51) [222114]"}
                  (forall x_9_1: Ref ::
                  { invRecv2(x_9_1) }
                  xs[invRecv2(x_9_1)] && qpRange2(x_9_1) ==> wildcard >= NoPerm
                );
              
              // -- check if receiver acc(list(x$0), wildcard) is injective
                assert {:msg "  Precondition of function length2_impl might not hold. Quantified resource list(x$0) might not be injective. (0455.vpr@148.13--148.51) [222115]"}
                  (forall x$0: Ref, x$0_3: Ref ::
                  { neverTriggered2(x$0), neverTriggered2(x$0_3) }
                  (((x$0 != x$0_3 && xs[x$0]) && xs[x$0_3]) && NoPerm < wildcard) && NoPerm < wildcard ==> x$0 != x$0_3
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function length2_impl might not hold. There might be insufficient permission to access list(x$0) (0455.vpr@148.13--148.51) [222116]"}
                  (forall x$0: Ref ::
                  { UnfoldingHeap[null, list(x$0)] } { UnfoldingMask[null, list(x$0)] } { xs[x$0] }
                  xs[x$0] ==> wildcard > NoPerm ==> UnfoldingMask[null, list(x$0)] > NoPerm
                );
              
              // -- assumptions for inverse of receiver acc(list(x$0), wildcard)
                assume (forall x$0: Ref ::
                  { UnfoldingHeap[null, list(x$0)] } { UnfoldingMask[null, list(x$0)] } { xs[x$0] }
                  xs[x$0] && NoPerm < wildcard ==> invRecv2(x$0) == x$0 && qpRange2(x$0)
                );
                assume (forall x_9_1: Ref ::
                  { invRecv2(x_9_1) }
                  (xs[invRecv2(x_9_1)] && NoPerm < wildcard) && qpRange2(x_9_1) ==> invRecv2(x_9_1) == x_9_1
                );
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
              UnfoldingHeap := ExhaleHeap;
              // Stop execution
              assume false;
            } else {
              // Enable postcondition for recursive call
              assume length2_impl#trigger(FrameFragment(length2_impl#condqp1(UnfoldingHeap, xs, UnfoldingHeap[x_13, next], akk + 1, res)), xs, UnfoldingHeap[x_13, next], akk + 1, res);
            }
          }
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, list#sm(x_13):=Heap[null, list#sm(x_13)][x_13, next:=true]];
            if (Heap[x_13, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_18: Ref, f_22: (Field A B) ::
                { newPMask[o_18, f_22] }
                Heap[null, list#sm(x_13)][o_18, f_22] || Heap[null, list#sm(Heap[x_13, next])][o_18, f_22] ==> newPMask[o_18, f_22]
              );
              Heap := Heap[null, list#sm(x_13):=newPMask];
            }
            assume state(Heap, Mask);
        }
        assume false;
      }
  
  // -- Translate function body
    Result := (forall x_10_1: Ref ::
      { xs[x_10_1] } { Heap[null, list(x_10_1)] } { Heap[x_10_1, next] }
      xs[x_10_1] && x_10_1 == y ==> (if Heap[x_10_1, next] == null then res == akk else length2_impl(Heap, xs, Heap[x_10_1, next], akk + 1, res))
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
  var x_46: Ref;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
      assert {:msg "  Contract might not be well-formed. Quantified resource list(x) might not be injective. (0455.vpr@208.12--208.82) [222117]"}
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
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
        if (xs[x_46] && x_46 == y) {
          UnfoldingHeap := Heap;
          UnfoldingMask := Mask;
          assume list#trigger(UnfoldingHeap, list(x_46));
          assume UnfoldingHeap[null, list(x_46)] == CombineFrames(FrameFragment(UnfoldingHeap[x_46, next]), FrameFragment((if UnfoldingHeap[x_46, next] != null then UnfoldingHeap[null, list(UnfoldingHeap[x_46, next])] else EmptyFrame)));
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access list(x) (0455.vpr@207.1--216.2) [222118]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, list(x_46)];
          havoc wildcard;
          perm := wildcard;
          assume x_46 != null;
          UnfoldingMask := UnfoldingMask[x_46, next:=UnfoldingMask[x_46, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[x_46, next] != null) {
            havoc wildcard;
            perm := wildcard;
            UnfoldingMask := UnfoldingMask[null, list(UnfoldingHeap[x_46, next]):=UnfoldingMask[null, list(UnfoldingHeap[x_46, next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(list(x_46), UnfoldingHeap[null, list(x_46)], list(UnfoldingHeap[x_46, next]), UnfoldingHeap[null, list(UnfoldingHeap[x_46, next])]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.next (0455.vpr@207.1--216.2) [222119]"}
            HasDirectPerm(UnfoldingMask, x_46, next);
          if (UnfoldingHeap[x_46, next] == null) {
          } else {
            assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.next (0455.vpr@207.1--216.2) [222120]"}
              HasDirectPerm(UnfoldingMask, x_46, next);
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := UnfoldingHeap;
              ExhaleWellDef0Mask := UnfoldingMask;
              havoc QPMask;
              // wildcard assumptions
              havoc wildcard;
              assert {:msg "  Precondition of function length3_impl might not hold. There might be insufficient permission to access list(x$0) (0455.vpr@215.13--215.51) [222121]"}
                (forall x$0: Ref ::
                
                xs[x$0] ==> UnfoldingMask[null, list(x$0)] > NoPerm
              );
              assume (forall x$0: Ref ::
                
                xs[x$0] ==> wildcard < UnfoldingMask[null, list(x$0)]
              );
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function length3_impl might not hold. Fraction wildcard might be negative. (0455.vpr@215.13--215.51) [222122]"}
                  (forall x_9_1: Ref ::
                  { invRecv4(x_9_1) }
                  xs[invRecv4(x_9_1)] && qpRange4(x_9_1) ==> wildcard >= NoPerm
                );
              
              // -- check if receiver acc(list(x$0), wildcard) is injective
                assert {:msg "  Precondition of function length3_impl might not hold. Quantified resource list(x$0) might not be injective. (0455.vpr@215.13--215.51) [222123]"}
                  (forall x$0: Ref, x$0_3: Ref ::
                  { neverTriggered4(x$0), neverTriggered4(x$0_3) }
                  (((x$0 != x$0_3 && xs[x$0]) && xs[x$0_3]) && NoPerm < wildcard) && NoPerm < wildcard ==> x$0 != x$0_3
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function length3_impl might not hold. There might be insufficient permission to access list(x$0) (0455.vpr@215.13--215.51) [222124]"}
                  (forall x$0: Ref ::
                  { UnfoldingHeap[null, list(x$0)] } { UnfoldingMask[null, list(x$0)] } { xs[x$0] } { UnfoldingHeap[null, list(x$0)] }
                  xs[x$0] ==> wildcard > NoPerm ==> UnfoldingMask[null, list(x$0)] > NoPerm
                );
              
              // -- assumptions for inverse of receiver acc(list(x$0), wildcard)
                assume (forall x$0: Ref ::
                  { UnfoldingHeap[null, list(x$0)] } { UnfoldingMask[null, list(x$0)] } { xs[x$0] } { UnfoldingHeap[null, list(x$0)] }
                  xs[x$0] && NoPerm < wildcard ==> invRecv4(x$0) == x$0 && qpRange4(x$0)
                );
                assume (forall x_9_1: Ref ::
                  { invRecv4(x_9_1) }
                  (xs[invRecv4(x_9_1)] && NoPerm < wildcard) && qpRange4(x_9_1) ==> invRecv4(x_9_1) == x_9_1
                );
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
              UnfoldingHeap := ExhaleHeap;
              // Stop execution
              assume false;
            } else {
              // Enable postcondition for recursive call
              assume length3_impl#trigger(FrameFragment(length3_impl#condqp2(UnfoldingHeap, xs, UnfoldingHeap[x_46, next], akk + 1, res)), xs, UnfoldingHeap[x_46, next], akk + 1, res);
            }
          }
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, list#sm(x_46):=Heap[null, list#sm(x_46)][x_46, next:=true]];
            if (Heap[x_46, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_5: Ref, f: (Field A B) ::
                { newPMask[o_5, f] }
                Heap[null, list#sm(x_46)][o_5, f] || Heap[null, list#sm(Heap[x_46, next])][o_5, f] ==> newPMask[o_5, f]
              );
              Heap := Heap[null, list#sm(x_46):=newPMask];
            }
            assume state(Heap, Mask);
        }
        assume false;
      }
  
  // -- Translate function body
    Result := (forall x_10_1: Ref ::
      { xs[x_10_1] } { Heap[null, list(x_10_1)] } { Heap[x_10_1, next] }
      xs[x_10_1] && x_10_1 == y ==> (if Heap[x_10_1, next] == null then res == akk else length3_impl(Heap, xs, Heap[x_10_1, next], akk + 1, res))
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
axiom (forall this: Ref, i: int, this2: Ref, i2_1: int ::
  { list2(this, i), list2(this2, i2_1) }
  list2(this, i) == list2(this2, i2_1) ==> this == this2 && i == i2_1
);
axiom (forall this: Ref, i: int, this2: Ref, i2_1: int ::
  { list2#sm(this, i), list2#sm(this2, i2_1) }
  list2#sm(this, i) == list2#sm(this2, i2_1) ==> this == this2 && i == i2_1
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
    Mask := Mask[this, elem_1:=Mask[this, elem_1] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, next:=Mask[this, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (0455.vpr@7.1--10.2) [222125]"}
        HasDirectPerm(Mask, this, next);
    if (Heap[this, next] != null) {
      
      // -- Check definedness of acc(list2(this.next, i), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (0455.vpr@7.1--10.2) [222126]"}
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
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.next (0455.vpr@62.1--64.2) [222127]"}
        HasDirectPerm(Mask, x, next);
    if (Heap[x, next] != null) {
      
      // -- Check definedness of acc(list(x.next), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.next (0455.vpr@62.1--64.2) [222128]"}
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
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x1_2: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[x1_2, $allocated];
  
  // -- Translating statement: x1 := new(elem, next) -- 0455.vpr@20.15--20.27
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x1_2 := freshObj;
    Mask := Mask[x1_2, elem_1:=Mask[x1_2, elem_1] + FullPerm];
    Mask := Mask[x1_2, next:=Mask[x1_2, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x1.next := null -- 0455.vpr@21.2--21.17
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x1.next (0455.vpr@21.2--21.17) [222129]"}
      FullPerm == Mask[x1_2, next];
    Heap := Heap[x1_2, next:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list2(x1, 77), write) -- 0455.vpr@22.2--22.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list2(x1, 77) might fail. There might be insufficient permission to access x1.elem (0455.vpr@22.2--22.20) [222132]"}
        perm <= Mask[x1_2, elem_1];
    }
    Mask := Mask[x1_2, elem_1:=Mask[x1_2, elem_1] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list2(x1, 77) might fail. There might be insufficient permission to access x1.next (0455.vpr@22.2--22.20) [222134]"}
        perm <= Mask[x1_2, next];
    }
    Mask := Mask[x1_2, next:=Mask[x1_2, next] - perm];
    if (Heap[x1_2, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding list2(x1, 77) might fail. There might be insufficient permission to access list2(x1.next, 77) (0455.vpr@22.2--22.20) [222136]"}
          perm <= Mask[null, list2(Heap[x1_2, next], 77)];
      }
      Mask := Mask[null, list2(Heap[x1_2, next], 77):=Mask[null, list2(Heap[x1_2, next], 77)] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(list2(x1_2, 77), Heap[null, list2(x1_2, 77)], list2(Heap[x1_2, next], 77), Heap[null, list2(Heap[x1_2, next], 77)]);
    }
    perm := FullPerm;
    Mask := Mask[null, list2(x1_2, 77):=Mask[null, list2(x1_2, 77)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list2#trigger(Heap, list2(x1_2, 77));
    assume Heap[null, list2(x1_2, 77)] == CombineFrames(FrameFragment(Heap[x1_2, elem_1]), CombineFrames(FrameFragment(Heap[x1_2, next]), FrameFragment((if Heap[x1_2, next] != null then Heap[null, list2(Heap[x1_2, next], 77)] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, list2(x1_2, 77))) {
      Heap := Heap[null, list2#sm(x1_2, 77):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list2(x1_2, 77):=freshVersion];
    }
    Heap := Heap[null, list2#sm(x1_2, 77):=Heap[null, list2#sm(x1_2, 77)][x1_2, elem_1:=true]];
    Heap := Heap[null, list2#sm(x1_2, 77):=Heap[null, list2#sm(x1_2, 77)][x1_2, next:=true]];
    if (Heap[x1_2, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_35: Ref, f_17: (Field A B) ::
        { newPMask[o_35, f_17] }
        Heap[null, list2#sm(x1_2, 77)][o_35, f_17] || Heap[null, list2#sm(Heap[x1_2, next], 77)][o_35, f_17] ==> newPMask[o_35, f_17]
      );
      Heap := Heap[null, list2#sm(x1_2, 77):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert foo(x1, 77) -- 0455.vpr@24.2--24.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of foo(x1, 77)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function foo might not hold. There might be insufficient permission to access list2(x1, 77) (0455.vpr@24.9--24.20) [222138]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, list2(x1_2, 77)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion foo(x1, 77) might not hold. (0455.vpr@24.9--24.20) [222139]"}
      foo_2(Heap, x1_2, 77);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_foo2
// ==================================================

procedure test_foo2() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x1_2: Ref;
  var x2: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[x1_2, $allocated];
    assume Heap[x2, $allocated];
  
  // -- Translating statement: x1 := new(elem, next) -- 0455.vpr@28.15--28.27
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x1_2 := freshObj;
    Mask := Mask[x1_2, elem_1:=Mask[x1_2, elem_1] + FullPerm];
    Mask := Mask[x1_2, next:=Mask[x1_2, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x1.next := null -- 0455.vpr@29.2--29.17
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x1.next (0455.vpr@29.2--29.17) [222140]"}
      FullPerm == Mask[x1_2, next];
    Heap := Heap[x1_2, next:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list2(x1, 77), write) -- 0455.vpr@30.2--30.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list2(x1, 77) might fail. There might be insufficient permission to access x1.elem (0455.vpr@30.2--30.20) [222143]"}
        perm <= Mask[x1_2, elem_1];
    }
    Mask := Mask[x1_2, elem_1:=Mask[x1_2, elem_1] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list2(x1, 77) might fail. There might be insufficient permission to access x1.next (0455.vpr@30.2--30.20) [222145]"}
        perm <= Mask[x1_2, next];
    }
    Mask := Mask[x1_2, next:=Mask[x1_2, next] - perm];
    if (Heap[x1_2, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding list2(x1, 77) might fail. There might be insufficient permission to access list2(x1.next, 77) (0455.vpr@30.2--30.20) [222147]"}
          perm <= Mask[null, list2(Heap[x1_2, next], 77)];
      }
      Mask := Mask[null, list2(Heap[x1_2, next], 77):=Mask[null, list2(Heap[x1_2, next], 77)] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(list2(x1_2, 77), Heap[null, list2(x1_2, 77)], list2(Heap[x1_2, next], 77), Heap[null, list2(Heap[x1_2, next], 77)]);
    }
    perm := FullPerm;
    Mask := Mask[null, list2(x1_2, 77):=Mask[null, list2(x1_2, 77)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list2#trigger(Heap, list2(x1_2, 77));
    assume Heap[null, list2(x1_2, 77)] == CombineFrames(FrameFragment(Heap[x1_2, elem_1]), CombineFrames(FrameFragment(Heap[x1_2, next]), FrameFragment((if Heap[x1_2, next] != null then Heap[null, list2(Heap[x1_2, next], 77)] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, list2(x1_2, 77))) {
      Heap := Heap[null, list2#sm(x1_2, 77):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list2(x1_2, 77):=freshVersion];
    }
    Heap := Heap[null, list2#sm(x1_2, 77):=Heap[null, list2#sm(x1_2, 77)][x1_2, elem_1:=true]];
    Heap := Heap[null, list2#sm(x1_2, 77):=Heap[null, list2#sm(x1_2, 77)][x1_2, next:=true]];
    if (Heap[x1_2, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_1: Ref, f_11: (Field A B) ::
        { newPMask[o_1, f_11] }
        Heap[null, list2#sm(x1_2, 77)][o_1, f_11] || Heap[null, list2#sm(Heap[x1_2, next], 77)][o_1, f_11] ==> newPMask[o_1, f_11]
      );
      Heap := Heap[null, list2#sm(x1_2, 77):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: x2 := new(elem, next) -- 0455.vpr@32.15--32.27
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x2 := freshObj;
    Mask := Mask[x2, elem_1:=Mask[x2, elem_1] + FullPerm];
    Mask := Mask[x2, next:=Mask[x2, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x2.next := x1 -- 0455.vpr@33.2--33.15
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x2.next (0455.vpr@33.2--33.15) [222149]"}
      FullPerm == Mask[x2, next];
    Heap := Heap[x2, next:=x1_2];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list2(x2, 77), write) -- 0455.vpr@34.2--34.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list2(x2, 77) might fail. There might be insufficient permission to access x2.elem (0455.vpr@34.2--34.20) [222152]"}
        perm <= Mask[x2, elem_1];
    }
    Mask := Mask[x2, elem_1:=Mask[x2, elem_1] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list2(x2, 77) might fail. There might be insufficient permission to access x2.next (0455.vpr@34.2--34.20) [222154]"}
        perm <= Mask[x2, next];
    }
    Mask := Mask[x2, next:=Mask[x2, next] - perm];
    if (Heap[x2, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding list2(x2, 77) might fail. There might be insufficient permission to access list2(x2.next, 77) (0455.vpr@34.2--34.20) [222156]"}
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
    assume Heap[null, list2(x2, 77)] == CombineFrames(FrameFragment(Heap[x2, elem_1]), CombineFrames(FrameFragment(Heap[x2, next]), FrameFragment((if Heap[x2, next] != null then Heap[null, list2(Heap[x2, next], 77)] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, list2(x2, 77))) {
      Heap := Heap[null, list2#sm(x2, 77):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list2(x2, 77):=freshVersion];
    }
    Heap := Heap[null, list2#sm(x2, 77):=Heap[null, list2#sm(x2, 77)][x2, elem_1:=true]];
    Heap := Heap[null, list2#sm(x2, 77):=Heap[null, list2#sm(x2, 77)][x2, next:=true]];
    if (Heap[x2, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_12: Ref, f_9: (Field A B) ::
        { newPMask[o_12, f_9] }
        Heap[null, list2#sm(x2, 77)][o_12, f_9] || Heap[null, list2#sm(Heap[x2, next], 77)][o_12, f_9] ==> newPMask[o_12, f_9]
      );
      Heap := Heap[null, list2#sm(x2, 77):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert foo(x2, 77) -- 0455.vpr@36.2--36.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of foo(x2, 77)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function foo might not hold. There might be insufficient permission to access list2(x2, 77) (0455.vpr@36.9--36.20) [222158]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, list2(x2, 77)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion foo(x2, 77) might not hold. (0455.vpr@36.9--36.20) [222159]"}
      foo_2(Heap, x2, 77);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_foo4
// ==================================================

procedure test_foo4() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x1_2: Ref;
  var x2: Ref;
  var x3: Ref;
  var x4: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[x1_2, $allocated];
    assume Heap[x2, $allocated];
    assume Heap[x3, $allocated];
    assume Heap[x4, $allocated];
  
  // -- Translating statement: x1 := new(elem, next) -- 0455.vpr@40.15--40.27
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x1_2 := freshObj;
    Mask := Mask[x1_2, elem_1:=Mask[x1_2, elem_1] + FullPerm];
    Mask := Mask[x1_2, next:=Mask[x1_2, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x1.next := null -- 0455.vpr@41.2--41.17
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x1.next (0455.vpr@41.2--41.17) [222160]"}
      FullPerm == Mask[x1_2, next];
    Heap := Heap[x1_2, next:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list2(x1, 77), write) -- 0455.vpr@42.2--42.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list2(x1, 77) might fail. There might be insufficient permission to access x1.elem (0455.vpr@42.2--42.20) [222163]"}
        perm <= Mask[x1_2, elem_1];
    }
    Mask := Mask[x1_2, elem_1:=Mask[x1_2, elem_1] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list2(x1, 77) might fail. There might be insufficient permission to access x1.next (0455.vpr@42.2--42.20) [222165]"}
        perm <= Mask[x1_2, next];
    }
    Mask := Mask[x1_2, next:=Mask[x1_2, next] - perm];
    if (Heap[x1_2, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding list2(x1, 77) might fail. There might be insufficient permission to access list2(x1.next, 77) (0455.vpr@42.2--42.20) [222167]"}
          perm <= Mask[null, list2(Heap[x1_2, next], 77)];
      }
      Mask := Mask[null, list2(Heap[x1_2, next], 77):=Mask[null, list2(Heap[x1_2, next], 77)] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(list2(x1_2, 77), Heap[null, list2(x1_2, 77)], list2(Heap[x1_2, next], 77), Heap[null, list2(Heap[x1_2, next], 77)]);
    }
    perm := FullPerm;
    Mask := Mask[null, list2(x1_2, 77):=Mask[null, list2(x1_2, 77)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list2#trigger(Heap, list2(x1_2, 77));
    assume Heap[null, list2(x1_2, 77)] == CombineFrames(FrameFragment(Heap[x1_2, elem_1]), CombineFrames(FrameFragment(Heap[x1_2, next]), FrameFragment((if Heap[x1_2, next] != null then Heap[null, list2(Heap[x1_2, next], 77)] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, list2(x1_2, 77))) {
      Heap := Heap[null, list2#sm(x1_2, 77):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list2(x1_2, 77):=freshVersion];
    }
    Heap := Heap[null, list2#sm(x1_2, 77):=Heap[null, list2#sm(x1_2, 77)][x1_2, elem_1:=true]];
    Heap := Heap[null, list2#sm(x1_2, 77):=Heap[null, list2#sm(x1_2, 77)][x1_2, next:=true]];
    if (Heap[x1_2, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_22: Ref, f_24: (Field A B) ::
        { newPMask[o_22, f_24] }
        Heap[null, list2#sm(x1_2, 77)][o_22, f_24] || Heap[null, list2#sm(Heap[x1_2, next], 77)][o_22, f_24] ==> newPMask[o_22, f_24]
      );
      Heap := Heap[null, list2#sm(x1_2, 77):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: x2 := new(elem, next) -- 0455.vpr@44.15--44.27
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x2 := freshObj;
    Mask := Mask[x2, elem_1:=Mask[x2, elem_1] + FullPerm];
    Mask := Mask[x2, next:=Mask[x2, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x2.next := x1 -- 0455.vpr@45.2--45.15
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x2.next (0455.vpr@45.2--45.15) [222169]"}
      FullPerm == Mask[x2, next];
    Heap := Heap[x2, next:=x1_2];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list2(x2, 77), write) -- 0455.vpr@46.2--46.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list2(x2, 77) might fail. There might be insufficient permission to access x2.elem (0455.vpr@46.2--46.20) [222172]"}
        perm <= Mask[x2, elem_1];
    }
    Mask := Mask[x2, elem_1:=Mask[x2, elem_1] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list2(x2, 77) might fail. There might be insufficient permission to access x2.next (0455.vpr@46.2--46.20) [222174]"}
        perm <= Mask[x2, next];
    }
    Mask := Mask[x2, next:=Mask[x2, next] - perm];
    if (Heap[x2, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding list2(x2, 77) might fail. There might be insufficient permission to access list2(x2.next, 77) (0455.vpr@46.2--46.20) [222176]"}
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
    assume Heap[null, list2(x2, 77)] == CombineFrames(FrameFragment(Heap[x2, elem_1]), CombineFrames(FrameFragment(Heap[x2, next]), FrameFragment((if Heap[x2, next] != null then Heap[null, list2(Heap[x2, next], 77)] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, list2(x2, 77))) {
      Heap := Heap[null, list2#sm(x2, 77):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list2(x2, 77):=freshVersion];
    }
    Heap := Heap[null, list2#sm(x2, 77):=Heap[null, list2#sm(x2, 77)][x2, elem_1:=true]];
    Heap := Heap[null, list2#sm(x2, 77):=Heap[null, list2#sm(x2, 77)][x2, next:=true]];
    if (Heap[x2, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_3: Ref, f_12: (Field A B) ::
        { newPMask[o_3, f_12] }
        Heap[null, list2#sm(x2, 77)][o_3, f_12] || Heap[null, list2#sm(Heap[x2, next], 77)][o_3, f_12] ==> newPMask[o_3, f_12]
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
    Mask := Mask[x3, elem_1:=Mask[x3, elem_1] + FullPerm];
    Mask := Mask[x3, next:=Mask[x3, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x3.next := x2 -- 0455.vpr@49.2--49.15
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x3.next (0455.vpr@49.2--49.15) [222178]"}
      FullPerm == Mask[x3, next];
    Heap := Heap[x3, next:=x2];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list2(x3, 77), write) -- 0455.vpr@50.2--50.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list2(x3, 77) might fail. There might be insufficient permission to access x3.elem (0455.vpr@50.2--50.20) [222181]"}
        perm <= Mask[x3, elem_1];
    }
    Mask := Mask[x3, elem_1:=Mask[x3, elem_1] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list2(x3, 77) might fail. There might be insufficient permission to access x3.next (0455.vpr@50.2--50.20) [222183]"}
        perm <= Mask[x3, next];
    }
    Mask := Mask[x3, next:=Mask[x3, next] - perm];
    if (Heap[x3, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding list2(x3, 77) might fail. There might be insufficient permission to access list2(x3.next, 77) (0455.vpr@50.2--50.20) [222185]"}
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
    assume Heap[null, list2(x3, 77)] == CombineFrames(FrameFragment(Heap[x3, elem_1]), CombineFrames(FrameFragment(Heap[x3, next]), FrameFragment((if Heap[x3, next] != null then Heap[null, list2(Heap[x3, next], 77)] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, list2(x3, 77))) {
      Heap := Heap[null, list2#sm(x3, 77):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list2(x3, 77):=freshVersion];
    }
    Heap := Heap[null, list2#sm(x3, 77):=Heap[null, list2#sm(x3, 77)][x3, elem_1:=true]];
    Heap := Heap[null, list2#sm(x3, 77):=Heap[null, list2#sm(x3, 77)][x3, next:=true]];
    if (Heap[x3, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_46: Ref, f_35: (Field A B) ::
        { newPMask[o_46, f_35] }
        Heap[null, list2#sm(x3, 77)][o_46, f_35] || Heap[null, list2#sm(Heap[x3, next], 77)][o_46, f_35] ==> newPMask[o_46, f_35]
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
    Mask := Mask[x4, elem_1:=Mask[x4, elem_1] + FullPerm];
    Mask := Mask[x4, next:=Mask[x4, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x4.next := x3 -- 0455.vpr@53.2--53.15
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x4.next (0455.vpr@53.2--53.15) [222187]"}
      FullPerm == Mask[x4, next];
    Heap := Heap[x4, next:=x3];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list2(x4, 77), write) -- 0455.vpr@54.2--54.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list2(x4, 77) might fail. There might be insufficient permission to access x4.elem (0455.vpr@54.2--54.20) [222190]"}
        perm <= Mask[x4, elem_1];
    }
    Mask := Mask[x4, elem_1:=Mask[x4, elem_1] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list2(x4, 77) might fail. There might be insufficient permission to access x4.next (0455.vpr@54.2--54.20) [222192]"}
        perm <= Mask[x4, next];
    }
    Mask := Mask[x4, next:=Mask[x4, next] - perm];
    if (Heap[x4, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding list2(x4, 77) might fail. There might be insufficient permission to access list2(x4.next, 77) (0455.vpr@54.2--54.20) [222194]"}
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
    assume Heap[null, list2(x4, 77)] == CombineFrames(FrameFragment(Heap[x4, elem_1]), CombineFrames(FrameFragment(Heap[x4, next]), FrameFragment((if Heap[x4, next] != null then Heap[null, list2(Heap[x4, next], 77)] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, list2(x4, 77))) {
      Heap := Heap[null, list2#sm(x4, 77):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list2(x4, 77):=freshVersion];
    }
    Heap := Heap[null, list2#sm(x4, 77):=Heap[null, list2#sm(x4, 77)][x4, elem_1:=true]];
    Heap := Heap[null, list2#sm(x4, 77):=Heap[null, list2#sm(x4, 77)][x4, next:=true]];
    if (Heap[x4, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_41: Ref, f_25: (Field A B) ::
        { newPMask[o_41, f_25] }
        Heap[null, list2#sm(x4, 77)][o_41, f_25] || Heap[null, list2#sm(Heap[x4, next], 77)][o_41, f_25] ==> newPMask[o_41, f_25]
      );
      Heap := Heap[null, list2#sm(x4, 77):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert foo(x4, 77) -- 0455.vpr@56.2--56.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of foo(x4, 77)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function foo might not hold. There might be insufficient permission to access list2(x4, 77) (0455.vpr@56.9--56.20) [222196]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, list2(x4, 77)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion foo(x4, 77) might not hold. (0455.vpr@56.9--56.20) [222197]"}
      foo_2(Heap, x4, 77);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_length1
// ==================================================

procedure test_length1() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x1_2: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[x1_2, $allocated];
  
  // -- Translating statement: x1 := new(next) -- 0455.vpr@84.16--84.31
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x1_2 := freshObj;
    Mask := Mask[x1_2, next:=Mask[x1_2, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x1.next := null -- 0455.vpr@85.3--85.18
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x1.next (0455.vpr@85.3--85.18) [222198]"}
      FullPerm == Mask[x1_2, next];
    Heap := Heap[x1_2, next:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(x1), write) -- 0455.vpr@86.3--86.16
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list(x1) might fail. There might be insufficient permission to access x1.next (0455.vpr@86.3--86.16) [222201]"}
        perm <= Mask[x1_2, next];
    }
    Mask := Mask[x1_2, next:=Mask[x1_2, next] - perm];
    if (Heap[x1_2, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding list(x1) might fail. There might be insufficient permission to access list(x1.next) (0455.vpr@86.3--86.16) [222203]"}
          perm <= Mask[null, list(Heap[x1_2, next])];
      }
      Mask := Mask[null, list(Heap[x1_2, next]):=Mask[null, list(Heap[x1_2, next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(list(x1_2), Heap[null, list(x1_2)], list(Heap[x1_2, next]), Heap[null, list(Heap[x1_2, next])]);
    }
    perm := FullPerm;
    Mask := Mask[null, list(x1_2):=Mask[null, list(x1_2)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list#trigger(Heap, list(x1_2));
    assume Heap[null, list(x1_2)] == CombineFrames(FrameFragment(Heap[x1_2, next]), FrameFragment((if Heap[x1_2, next] != null then Heap[null, list(Heap[x1_2, next])] else EmptyFrame)));
    if (!HasDirectPerm(Mask, null, list(x1_2))) {
      Heap := Heap[null, list#sm(x1_2):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list(x1_2):=freshVersion];
    }
    Heap := Heap[null, list#sm(x1_2):=Heap[null, list#sm(x1_2)][x1_2, next:=true]];
    if (Heap[x1_2, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_34: Ref, f_44: (Field A B) ::
        { newPMask[o_34, f_44] }
        Heap[null, list#sm(x1_2)][o_34, f_44] || Heap[null, list#sm(Heap[x1_2, next])][o_34, f_44] ==> newPMask[o_34, f_44]
      );
      Heap := Heap[null, list#sm(x1_2):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: xs := Set(x1) -- 0455.vpr@87.3--87.30
    xs := Set#Singleton(x1_2);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale length_impl(xs, x1, 1, res) -- 0455.vpr@90.10--90.29
    assume state(Heap, Mask);
    
    // -- Check definedness of length_impl(xs, x1, 1, res)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function length_impl might not hold. There might be insufficient permission to access list(x1) (0455.vpr@90.10--90.29) [222205]"}
          NoPerm < perm ==> NoPerm < Mask[null, list(x1_2)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume length_impl(Heap, xs, x1_2, 1, res);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert res == 1 -- 0455.vpr@91.3--91.18
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion res == 1 might not hold. (0455.vpr@91.10--91.18) [222206]"}
      res == 1;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_length2
// ==================================================

procedure test_length2() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x1_2: Ref;
  var x2: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[x1_2, $allocated];
    assume Heap[x2, $allocated];
  
  // -- Translating statement: x1 := new(next) -- 0455.vpr@95.16--95.31
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x1_2 := freshObj;
    Mask := Mask[x1_2, next:=Mask[x1_2, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x1.next := null -- 0455.vpr@96.3--96.18
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x1.next (0455.vpr@96.3--96.18) [222207]"}
      FullPerm == Mask[x1_2, next];
    Heap := Heap[x1_2, next:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(x1), write) -- 0455.vpr@97.3--97.16
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list(x1) might fail. There might be insufficient permission to access x1.next (0455.vpr@97.3--97.16) [222210]"}
        perm <= Mask[x1_2, next];
    }
    Mask := Mask[x1_2, next:=Mask[x1_2, next] - perm];
    if (Heap[x1_2, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding list(x1) might fail. There might be insufficient permission to access list(x1.next) (0455.vpr@97.3--97.16) [222212]"}
          perm <= Mask[null, list(Heap[x1_2, next])];
      }
      Mask := Mask[null, list(Heap[x1_2, next]):=Mask[null, list(Heap[x1_2, next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(list(x1_2), Heap[null, list(x1_2)], list(Heap[x1_2, next]), Heap[null, list(Heap[x1_2, next])]);
    }
    perm := FullPerm;
    Mask := Mask[null, list(x1_2):=Mask[null, list(x1_2)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list#trigger(Heap, list(x1_2));
    assume Heap[null, list(x1_2)] == CombineFrames(FrameFragment(Heap[x1_2, next]), FrameFragment((if Heap[x1_2, next] != null then Heap[null, list(Heap[x1_2, next])] else EmptyFrame)));
    if (!HasDirectPerm(Mask, null, list(x1_2))) {
      Heap := Heap[null, list#sm(x1_2):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list(x1_2):=freshVersion];
    }
    Heap := Heap[null, list#sm(x1_2):=Heap[null, list#sm(x1_2)][x1_2, next:=true]];
    if (Heap[x1_2, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_55: Ref, f_36: (Field A B) ::
        { newPMask[o_55, f_36] }
        Heap[null, list#sm(x1_2)][o_55, f_36] || Heap[null, list#sm(Heap[x1_2, next])][o_55, f_36] ==> newPMask[o_55, f_36]
      );
      Heap := Heap[null, list#sm(x1_2):=newPMask];
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x2.next (0455.vpr@100.3--100.16) [222214]"}
      FullPerm == Mask[x2, next];
    Heap := Heap[x2, next:=x1_2];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(x2), write) -- 0455.vpr@101.3--101.16
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list(x2) might fail. There might be insufficient permission to access x2.next (0455.vpr@101.3--101.16) [222217]"}
        perm <= Mask[x2, next];
    }
    Mask := Mask[x2, next:=Mask[x2, next] - perm];
    if (Heap[x2, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding list(x2) might fail. There might be insufficient permission to access list(x2.next) (0455.vpr@101.3--101.16) [222219]"}
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
      assume (forall <A, B> o_42: Ref, f_26: (Field A B) ::
        { newPMask[o_42, f_26] }
        Heap[null, list#sm(x2)][o_42, f_26] || Heap[null, list#sm(Heap[x2, next])][o_42, f_26] ==> newPMask[o_42, f_26]
      );
      Heap := Heap[null, list#sm(x2):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: xs := Set(x1, x2) -- 0455.vpr@103.3--103.34
    xs := Set#UnionOne(Set#Singleton(x2), x1_2);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (x1 in xs) && (x2 in xs) -- 0455.vpr@104.3--104.30
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion (x1 in xs) might not hold. (0455.vpr@104.10--104.30) [222221]"}
      xs[x1_2];
    assert {:msg "  Assert might fail. Assertion (x2 in xs) might not hold. (0455.vpr@104.10--104.30) [222222]"}
      xs[x2];
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale length_impl(xs, x2, 1, res) -- 0455.vpr@107.10--107.29
    assume state(Heap, Mask);
    
    // -- Check definedness of length_impl(xs, x2, 1, res)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function length_impl might not hold. There might be insufficient permission to access list(x2) (0455.vpr@107.10--107.29) [222223]"}
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
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion res == 2 might not hold. (0455.vpr@108.10--108.18) [222224]"}
      res == 2;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_length4
// ==================================================

procedure test_length4() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x1_2: Ref;
  var x2: Ref;
  var x3: Ref;
  var x4: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[x1_2, $allocated];
    assume Heap[x2, $allocated];
    assume Heap[x3, $allocated];
    assume Heap[x4, $allocated];
  
  // -- Translating statement: x1 := new(next) -- 0455.vpr@112.16--112.31
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x1_2 := freshObj;
    Mask := Mask[x1_2, next:=Mask[x1_2, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x1.next := null -- 0455.vpr@113.3--113.18
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x1.next (0455.vpr@113.3--113.18) [222225]"}
      FullPerm == Mask[x1_2, next];
    Heap := Heap[x1_2, next:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(x1), write) -- 0455.vpr@114.3--114.16
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list(x1) might fail. There might be insufficient permission to access x1.next (0455.vpr@114.3--114.16) [222228]"}
        perm <= Mask[x1_2, next];
    }
    Mask := Mask[x1_2, next:=Mask[x1_2, next] - perm];
    if (Heap[x1_2, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding list(x1) might fail. There might be insufficient permission to access list(x1.next) (0455.vpr@114.3--114.16) [222230]"}
          perm <= Mask[null, list(Heap[x1_2, next])];
      }
      Mask := Mask[null, list(Heap[x1_2, next]):=Mask[null, list(Heap[x1_2, next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(list(x1_2), Heap[null, list(x1_2)], list(Heap[x1_2, next]), Heap[null, list(Heap[x1_2, next])]);
    }
    perm := FullPerm;
    Mask := Mask[null, list(x1_2):=Mask[null, list(x1_2)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list#trigger(Heap, list(x1_2));
    assume Heap[null, list(x1_2)] == CombineFrames(FrameFragment(Heap[x1_2, next]), FrameFragment((if Heap[x1_2, next] != null then Heap[null, list(Heap[x1_2, next])] else EmptyFrame)));
    if (!HasDirectPerm(Mask, null, list(x1_2))) {
      Heap := Heap[null, list#sm(x1_2):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list(x1_2):=freshVersion];
    }
    Heap := Heap[null, list#sm(x1_2):=Heap[null, list#sm(x1_2)][x1_2, next:=true]];
    if (Heap[x1_2, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_13: Ref, f_45: (Field A B) ::
        { newPMask[o_13, f_45] }
        Heap[null, list#sm(x1_2)][o_13, f_45] || Heap[null, list#sm(Heap[x1_2, next])][o_13, f_45] ==> newPMask[o_13, f_45]
      );
      Heap := Heap[null, list#sm(x1_2):=newPMask];
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x2.next (0455.vpr@117.3--117.16) [222232]"}
      FullPerm == Mask[x2, next];
    Heap := Heap[x2, next:=x1_2];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(x2), write) -- 0455.vpr@118.3--118.16
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list(x2) might fail. There might be insufficient permission to access x2.next (0455.vpr@118.3--118.16) [222235]"}
        perm <= Mask[x2, next];
    }
    Mask := Mask[x2, next:=Mask[x2, next] - perm];
    if (Heap[x2, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding list(x2) might fail. There might be insufficient permission to access list(x2.next) (0455.vpr@118.3--118.16) [222237]"}
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
      assume (forall <A, B> o_43: Ref, f_13: (Field A B) ::
        { newPMask[o_43, f_13] }
        Heap[null, list#sm(x2)][o_43, f_13] || Heap[null, list#sm(Heap[x2, next])][o_43, f_13] ==> newPMask[o_43, f_13]
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x3.next (0455.vpr@121.3--121.16) [222239]"}
      FullPerm == Mask[x3, next];
    Heap := Heap[x3, next:=x2];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(x3), write) -- 0455.vpr@122.3--122.16
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list(x3) might fail. There might be insufficient permission to access x3.next (0455.vpr@122.3--122.16) [222242]"}
        perm <= Mask[x3, next];
    }
    Mask := Mask[x3, next:=Mask[x3, next] - perm];
    if (Heap[x3, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding list(x3) might fail. There might be insufficient permission to access list(x3.next) (0455.vpr@122.3--122.16) [222244]"}
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
      assume (forall <A, B> o_47: Ref, f_41: (Field A B) ::
        { newPMask[o_47, f_41] }
        Heap[null, list#sm(x3)][o_47, f_41] || Heap[null, list#sm(Heap[x3, next])][o_47, f_41] ==> newPMask[o_47, f_41]
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x4.next (0455.vpr@125.3--125.16) [222246]"}
      FullPerm == Mask[x4, next];
    Heap := Heap[x4, next:=x3];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(x4), write) -- 0455.vpr@126.3--126.16
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list(x4) might fail. There might be insufficient permission to access x4.next (0455.vpr@126.3--126.16) [222249]"}
        perm <= Mask[x4, next];
    }
    Mask := Mask[x4, next:=Mask[x4, next] - perm];
    if (Heap[x4, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding list(x4) might fail. There might be insufficient permission to access list(x4.next) (0455.vpr@126.3--126.16) [222251]"}
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
      assume (forall <A, B> o_14: Ref, f_51: (Field A B) ::
        { newPMask[o_14, f_51] }
        Heap[null, list#sm(x4)][o_14, f_51] || Heap[null, list#sm(Heap[x4, next])][o_14, f_51] ==> newPMask[o_14, f_51]
      );
      Heap := Heap[null, list#sm(x4):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: xs := Set(x1, x2, x4, x3) -- 0455.vpr@128.3--128.42
    xs := Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Singleton(x3), x4), x2), x1_2);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale length_impl(xs, x4, 1, res) -- 0455.vpr@131.10--131.29
    assume state(Heap, Mask);
    
    // -- Check definedness of length_impl(xs, x4, 1, res)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function length_impl might not hold. There might be insufficient permission to access list(x4) (0455.vpr@131.10--131.29) [222253]"}
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
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion res == 4 might not hold. (0455.vpr@132.10--132.18) [222254]"}
      res == 4;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test2_length1
// ==================================================

procedure test2_length1() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x1_2: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[x1_2, $allocated];
  
  // -- Translating statement: x1 := new(next) -- 0455.vpr@152.16--152.31
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x1_2 := freshObj;
    Mask := Mask[x1_2, next:=Mask[x1_2, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x1.next := null -- 0455.vpr@153.3--153.18
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x1.next (0455.vpr@153.3--153.18) [222255]"}
      FullPerm == Mask[x1_2, next];
    Heap := Heap[x1_2, next:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(x1), write) -- 0455.vpr@154.3--154.16
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list(x1) might fail. There might be insufficient permission to access x1.next (0455.vpr@154.3--154.16) [222258]"}
        perm <= Mask[x1_2, next];
    }
    Mask := Mask[x1_2, next:=Mask[x1_2, next] - perm];
    if (Heap[x1_2, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding list(x1) might fail. There might be insufficient permission to access list(x1.next) (0455.vpr@154.3--154.16) [222260]"}
          perm <= Mask[null, list(Heap[x1_2, next])];
      }
      Mask := Mask[null, list(Heap[x1_2, next]):=Mask[null, list(Heap[x1_2, next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(list(x1_2), Heap[null, list(x1_2)], list(Heap[x1_2, next]), Heap[null, list(Heap[x1_2, next])]);
    }
    perm := FullPerm;
    Mask := Mask[null, list(x1_2):=Mask[null, list(x1_2)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list#trigger(Heap, list(x1_2));
    assume Heap[null, list(x1_2)] == CombineFrames(FrameFragment(Heap[x1_2, next]), FrameFragment((if Heap[x1_2, next] != null then Heap[null, list(Heap[x1_2, next])] else EmptyFrame)));
    if (!HasDirectPerm(Mask, null, list(x1_2))) {
      Heap := Heap[null, list#sm(x1_2):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list(x1_2):=freshVersion];
    }
    Heap := Heap[null, list#sm(x1_2):=Heap[null, list#sm(x1_2)][x1_2, next:=true]];
    if (Heap[x1_2, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_44: Ref, f_14: (Field A B) ::
        { newPMask[o_44, f_14] }
        Heap[null, list#sm(x1_2)][o_44, f_14] || Heap[null, list#sm(Heap[x1_2, next])][o_44, f_14] ==> newPMask[o_44, f_14]
      );
      Heap := Heap[null, list#sm(x1_2):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: xs := Set(x1) -- 0455.vpr@155.3--155.30
    xs := Set#Singleton(x1_2);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale length2_impl(xs, x1, 1, res) -- 0455.vpr@158.10--158.30
    assume state(Heap, Mask);
    
    // -- Check definedness of length2_impl(xs, x1, 1, res)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        // wildcard assumptions
        havoc wildcard;
        assert {:msg "  Precondition of function length2_impl might not hold. There might be insufficient permission to access list(x) (0455.vpr@158.10--158.30) [222262]"}
          (forall x: Ref ::
          
          xs[x] ==> Mask[null, list(x)] > NoPerm
        );
        assume (forall x: Ref ::
          
          xs[x] ==> wildcard < Mask[null, list(x)]
        );
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function length2_impl might not hold. Fraction wildcard might be negative. (0455.vpr@158.10--158.30) [222263]"}
            (forall x_1_1_1: Ref ::
            { invRecv5(x_1_1_1) }
            xs[invRecv5(x_1_1_1)] && qpRange5(x_1_1_1) ==> wildcard >= NoPerm
          );
        
        // -- check if receiver acc(list(x), wildcard) is injective
          assert {:msg "  Precondition of function length2_impl might not hold. Quantified resource list(x) might not be injective. (0455.vpr@158.10--158.30) [222264]"}
            (forall x: Ref, x_9: Ref ::
            { neverTriggered5(x), neverTriggered5(x_9) }
            (((x != x_9 && xs[x]) && xs[x_9]) && NoPerm < wildcard) && NoPerm < wildcard ==> x != x_9
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function length2_impl might not hold. There might be insufficient permission to access list(x) (0455.vpr@158.10--158.30) [222265]"}
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
    assume length2_impl(Heap, xs, x1_2, 1, res);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert res == 1 -- 0455.vpr@159.3--159.18
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion res == 1 might not hold. (0455.vpr@159.10--159.18) [222266]"}
      res == 1;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test2_length2
// ==================================================

procedure test2_length2() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x1_2: Ref;
  var x2: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[x1_2, $allocated];
    assume Heap[x2, $allocated];
  
  // -- Translating statement: x1 := new(next) -- 0455.vpr@163.16--163.31
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x1_2 := freshObj;
    Mask := Mask[x1_2, next:=Mask[x1_2, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x1.next := null -- 0455.vpr@164.3--164.18
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x1.next (0455.vpr@164.3--164.18) [222267]"}
      FullPerm == Mask[x1_2, next];
    Heap := Heap[x1_2, next:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(x1), wildcard) -- 0455.vpr@165.3--165.31
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Folding list(x1) might fail. There might be insufficient permission to access x1.next (0455.vpr@165.3--165.31) [222269]"}
      Mask[x1_2, next] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[x1_2, next];
    Mask := Mask[x1_2, next:=Mask[x1_2, next] - wildcard];
    if (Heap[x1_2, next] != null) {
      assert {:msg "  Folding list(x1) might fail. There might be insufficient permission to access list(x1.next) (0455.vpr@165.3--165.31) [222270]"}
        Mask[null, list(Heap[x1_2, next])] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[null, list(Heap[x1_2, next])];
      Mask := Mask[null, list(Heap[x1_2, next]):=Mask[null, list(Heap[x1_2, next])] - wildcard];
      
      // -- Record predicate instance information
        assume InsidePredicate(list(x1_2), Heap[null, list(x1_2)], list(Heap[x1_2, next]), Heap[null, list(Heap[x1_2, next])]);
    }
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, list(x1_2):=Mask[null, list(x1_2)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list#trigger(Heap, list(x1_2));
    assume Heap[null, list(x1_2)] == CombineFrames(FrameFragment(Heap[x1_2, next]), FrameFragment((if Heap[x1_2, next] != null then Heap[null, list(Heap[x1_2, next])] else EmptyFrame)));
    if (!HasDirectPerm(Mask, null, list(x1_2))) {
      Heap := Heap[null, list#sm(x1_2):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list(x1_2):=freshVersion];
    }
    Heap := Heap[null, list#sm(x1_2):=Heap[null, list#sm(x1_2)][x1_2, next:=true]];
    if (Heap[x1_2, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_28: Ref, f_42: (Field A B) ::
        { newPMask[o_28, f_42] }
        Heap[null, list#sm(x1_2)][o_28, f_42] || Heap[null, list#sm(Heap[x1_2, next])][o_28, f_42] ==> newPMask[o_28, f_42]
      );
      Heap := Heap[null, list#sm(x1_2):=newPMask];
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x2.next (0455.vpr@168.3--168.16) [222271]"}
      FullPerm == Mask[x2, next];
    Heap := Heap[x2, next:=x1_2];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(x2), wildcard) -- 0455.vpr@169.3--169.31
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Folding list(x2) might fail. There might be insufficient permission to access x2.next (0455.vpr@169.3--169.31) [222273]"}
      Mask[x2, next] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[x2, next];
    Mask := Mask[x2, next:=Mask[x2, next] - wildcard];
    if (Heap[x2, next] != null) {
      assert {:msg "  Folding list(x2) might fail. There might be insufficient permission to access list(x2.next) (0455.vpr@169.3--169.31) [222274]"}
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
      assume (forall <A, B> o_76: Ref, f_34: (Field A B) ::
        { newPMask[o_76, f_34] }
        Heap[null, list#sm(x2)][o_76, f_34] || Heap[null, list#sm(Heap[x2, next])][o_76, f_34] ==> newPMask[o_76, f_34]
      );
      Heap := Heap[null, list#sm(x2):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: xs := Set(x1, x2) -- 0455.vpr@171.3--171.34
    xs := Set#UnionOne(Set#Singleton(x2), x1_2);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (x1 in xs) && (x2 in xs) -- 0455.vpr@172.3--172.30
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion (x1 in xs) might not hold. (0455.vpr@172.10--172.30) [222275]"}
      xs[x1_2];
    assert {:msg "  Assert might fail. Assertion (x2 in xs) might not hold. (0455.vpr@172.10--172.30) [222276]"}
      xs[x2];
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale length2_impl(xs, x2, 1, res) -- 0455.vpr@175.10--175.30
    assume state(Heap, Mask);
    
    // -- Check definedness of length2_impl(xs, x2, 1, res)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        // wildcard assumptions
        havoc wildcard;
        assert {:msg "  Precondition of function length2_impl might not hold. There might be insufficient permission to access list(x) (0455.vpr@175.10--175.30) [222277]"}
          (forall x: Ref ::
          
          xs[x] ==> Mask[null, list(x)] > NoPerm
        );
        assume (forall x: Ref ::
          
          xs[x] ==> wildcard < Mask[null, list(x)]
        );
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function length2_impl might not hold. Fraction wildcard might be negative. (0455.vpr@175.10--175.30) [222278]"}
            (forall x_1_1_1: Ref ::
            { invRecv6(x_1_1_1) }
            xs[invRecv6(x_1_1_1)] && qpRange6(x_1_1_1) ==> wildcard >= NoPerm
          );
        
        // -- check if receiver acc(list(x), wildcard) is injective
          assert {:msg "  Precondition of function length2_impl might not hold. Quantified resource list(x) might not be injective. (0455.vpr@175.10--175.30) [222279]"}
            (forall x: Ref, x_9: Ref ::
            { neverTriggered6(x), neverTriggered6(x_9) }
            (((x != x_9 && xs[x]) && xs[x_9]) && NoPerm < wildcard) && NoPerm < wildcard ==> x != x_9
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function length2_impl might not hold. There might be insufficient permission to access list(x) (0455.vpr@175.10--175.30) [222280]"}
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
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion res == 2 might not hold. (0455.vpr@176.10--176.18) [222281]"}
      res == 2;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test2_length4
// ==================================================

procedure test2_length4() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x1_2: Ref;
  var x2: Ref;
  var x3: Ref;
  var x4: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[x1_2, $allocated];
    assume Heap[x2, $allocated];
    assume Heap[x3, $allocated];
    assume Heap[x4, $allocated];
  
  // -- Translating statement: x1 := new(next) -- 0455.vpr@180.16--180.31
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x1_2 := freshObj;
    Mask := Mask[x1_2, next:=Mask[x1_2, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x1.next := null -- 0455.vpr@181.3--181.18
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x1.next (0455.vpr@181.3--181.18) [222282]"}
      FullPerm == Mask[x1_2, next];
    Heap := Heap[x1_2, next:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(x1), wildcard) -- 0455.vpr@182.3--182.31
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Folding list(x1) might fail. There might be insufficient permission to access x1.next (0455.vpr@182.3--182.31) [222284]"}
      Mask[x1_2, next] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[x1_2, next];
    Mask := Mask[x1_2, next:=Mask[x1_2, next] - wildcard];
    if (Heap[x1_2, next] != null) {
      assert {:msg "  Folding list(x1) might fail. There might be insufficient permission to access list(x1.next) (0455.vpr@182.3--182.31) [222285]"}
        Mask[null, list(Heap[x1_2, next])] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[null, list(Heap[x1_2, next])];
      Mask := Mask[null, list(Heap[x1_2, next]):=Mask[null, list(Heap[x1_2, next])] - wildcard];
      
      // -- Record predicate instance information
        assume InsidePredicate(list(x1_2), Heap[null, list(x1_2)], list(Heap[x1_2, next]), Heap[null, list(Heap[x1_2, next])]);
    }
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, list(x1_2):=Mask[null, list(x1_2)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list#trigger(Heap, list(x1_2));
    assume Heap[null, list(x1_2)] == CombineFrames(FrameFragment(Heap[x1_2, next]), FrameFragment((if Heap[x1_2, next] != null then Heap[null, list(Heap[x1_2, next])] else EmptyFrame)));
    if (!HasDirectPerm(Mask, null, list(x1_2))) {
      Heap := Heap[null, list#sm(x1_2):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list(x1_2):=freshVersion];
    }
    Heap := Heap[null, list#sm(x1_2):=Heap[null, list#sm(x1_2)][x1_2, next:=true]];
    if (Heap[x1_2, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_51: Ref, f_46: (Field A B) ::
        { newPMask[o_51, f_46] }
        Heap[null, list#sm(x1_2)][o_51, f_46] || Heap[null, list#sm(Heap[x1_2, next])][o_51, f_46] ==> newPMask[o_51, f_46]
      );
      Heap := Heap[null, list#sm(x1_2):=newPMask];
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x2.next (0455.vpr@185.3--185.16) [222286]"}
      FullPerm == Mask[x2, next];
    Heap := Heap[x2, next:=x1_2];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(x2), wildcard) -- 0455.vpr@186.3--186.31
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Folding list(x2) might fail. There might be insufficient permission to access x2.next (0455.vpr@186.3--186.31) [222288]"}
      Mask[x2, next] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[x2, next];
    Mask := Mask[x2, next:=Mask[x2, next] - wildcard];
    if (Heap[x2, next] != null) {
      assert {:msg "  Folding list(x2) might fail. There might be insufficient permission to access list(x2.next) (0455.vpr@186.3--186.31) [222289]"}
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
      assume (forall <A, B> o_29: Ref, f_81: (Field A B) ::
        { newPMask[o_29, f_81] }
        Heap[null, list#sm(x2)][o_29, f_81] || Heap[null, list#sm(Heap[x2, next])][o_29, f_81] ==> newPMask[o_29, f_81]
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x3.next (0455.vpr@189.3--189.16) [222290]"}
      FullPerm == Mask[x3, next];
    Heap := Heap[x3, next:=x2];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(x3), wildcard) -- 0455.vpr@190.3--190.31
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Folding list(x3) might fail. There might be insufficient permission to access x3.next (0455.vpr@190.3--190.31) [222292]"}
      Mask[x3, next] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[x3, next];
    Mask := Mask[x3, next:=Mask[x3, next] - wildcard];
    if (Heap[x3, next] != null) {
      assert {:msg "  Folding list(x3) might fail. There might be insufficient permission to access list(x3.next) (0455.vpr@190.3--190.31) [222293]"}
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
      assume (forall <A, B> o_77: Ref, f_52: (Field A B) ::
        { newPMask[o_77, f_52] }
        Heap[null, list#sm(x3)][o_77, f_52] || Heap[null, list#sm(Heap[x3, next])][o_77, f_52] ==> newPMask[o_77, f_52]
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x4.next (0455.vpr@193.3--193.16) [222294]"}
      FullPerm == Mask[x4, next];
    Heap := Heap[x4, next:=x3];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(x4), wildcard) -- 0455.vpr@194.3--194.31
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Folding list(x4) might fail. There might be insufficient permission to access x4.next (0455.vpr@194.3--194.31) [222296]"}
      Mask[x4, next] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[x4, next];
    Mask := Mask[x4, next:=Mask[x4, next] - wildcard];
    if (Heap[x4, next] != null) {
      assert {:msg "  Folding list(x4) might fail. There might be insufficient permission to access list(x4.next) (0455.vpr@194.3--194.31) [222297]"}
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
      assume (forall <A, B> o_78: Ref, f_49: (Field A B) ::
        { newPMask[o_78, f_49] }
        Heap[null, list#sm(x4)][o_78, f_49] || Heap[null, list#sm(Heap[x4, next])][o_78, f_49] ==> newPMask[o_78, f_49]
      );
      Heap := Heap[null, list#sm(x4):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: xs := Set(x1, x2, x4, x3) -- 0455.vpr@196.3--196.42
    xs := Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Singleton(x3), x4), x2), x1_2);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale length2_impl(xs, x4, 1, res) -- 0455.vpr@199.10--199.30
    assume state(Heap, Mask);
    
    // -- Check definedness of length2_impl(xs, x4, 1, res)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        // wildcard assumptions
        havoc wildcard;
        assert {:msg "  Precondition of function length2_impl might not hold. There might be insufficient permission to access list(x) (0455.vpr@199.10--199.30) [222298]"}
          (forall x: Ref ::
          
          xs[x] ==> Mask[null, list(x)] > NoPerm
        );
        assume (forall x: Ref ::
          
          xs[x] ==> wildcard < Mask[null, list(x)]
        );
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function length2_impl might not hold. Fraction wildcard might be negative. (0455.vpr@199.10--199.30) [222299]"}
            (forall x_1_1_1: Ref ::
            { invRecv7(x_1_1_1) }
            xs[invRecv7(x_1_1_1)] && qpRange7(x_1_1_1) ==> wildcard >= NoPerm
          );
        
        // -- check if receiver acc(list(x), wildcard) is injective
          assert {:msg "  Precondition of function length2_impl might not hold. Quantified resource list(x) might not be injective. (0455.vpr@199.10--199.30) [222300]"}
            (forall x: Ref, x_9: Ref ::
            { neverTriggered7(x), neverTriggered7(x_9) }
            (((x != x_9 && xs[x]) && xs[x_9]) && NoPerm < wildcard) && NoPerm < wildcard ==> x != x_9
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function length2_impl might not hold. There might be insufficient permission to access list(x) (0455.vpr@199.10--199.30) [222301]"}
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
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion res == 4 might not hold. (0455.vpr@200.10--200.18) [222302]"}
      res == 4;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test3_length1
// ==================================================

procedure test3_length1() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x1_2: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[x1_2, $allocated];
  
  // -- Translating statement: x1 := new(next) -- 0455.vpr@219.16--219.31
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x1_2 := freshObj;
    Mask := Mask[x1_2, next:=Mask[x1_2, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x1.next := null -- 0455.vpr@220.3--220.18
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x1.next (0455.vpr@220.3--220.18) [222303]"}
      FullPerm == Mask[x1_2, next];
    Heap := Heap[x1_2, next:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(x1), write) -- 0455.vpr@221.3--221.16
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list(x1) might fail. There might be insufficient permission to access x1.next (0455.vpr@221.3--221.16) [222306]"}
        perm <= Mask[x1_2, next];
    }
    Mask := Mask[x1_2, next:=Mask[x1_2, next] - perm];
    if (Heap[x1_2, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding list(x1) might fail. There might be insufficient permission to access list(x1.next) (0455.vpr@221.3--221.16) [222308]"}
          perm <= Mask[null, list(Heap[x1_2, next])];
      }
      Mask := Mask[null, list(Heap[x1_2, next]):=Mask[null, list(Heap[x1_2, next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(list(x1_2), Heap[null, list(x1_2)], list(Heap[x1_2, next]), Heap[null, list(Heap[x1_2, next])]);
    }
    perm := FullPerm;
    Mask := Mask[null, list(x1_2):=Mask[null, list(x1_2)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list#trigger(Heap, list(x1_2));
    assume Heap[null, list(x1_2)] == CombineFrames(FrameFragment(Heap[x1_2, next]), FrameFragment((if Heap[x1_2, next] != null then Heap[null, list(Heap[x1_2, next])] else EmptyFrame)));
    if (!HasDirectPerm(Mask, null, list(x1_2))) {
      Heap := Heap[null, list#sm(x1_2):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list(x1_2):=freshVersion];
    }
    Heap := Heap[null, list#sm(x1_2):=Heap[null, list#sm(x1_2)][x1_2, next:=true]];
    if (Heap[x1_2, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_63: Ref, f_86: (Field A B) ::
        { newPMask[o_63, f_86] }
        Heap[null, list#sm(x1_2)][o_63, f_86] || Heap[null, list#sm(Heap[x1_2, next])][o_63, f_86] ==> newPMask[o_63, f_86]
      );
      Heap := Heap[null, list#sm(x1_2):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: xs := Set(x1) -- 0455.vpr@222.3--222.30
    xs := Set#Singleton(x1_2);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale length3_impl(xs, x1, 1, res) -- 0455.vpr@225.10--225.30
    assume state(Heap, Mask);
    
    // -- Check definedness of length3_impl(xs, x1, 1, res)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        // wildcard assumptions
        havoc wildcard;
        assert {:msg "  Precondition of function length3_impl might not hold. There might be insufficient permission to access list(x) (0455.vpr@225.10--225.30) [222310]"}
          (forall x: Ref ::
          
          xs[x] ==> Mask[null, list(x)] > NoPerm
        );
        assume (forall x: Ref ::
          
          xs[x] ==> wildcard < Mask[null, list(x)]
        );
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function length3_impl might not hold. Fraction wildcard might be negative. (0455.vpr@225.10--225.30) [222311]"}
            (forall x_1_1_1: Ref ::
            { invRecv8(x_1_1_1) }
            xs[invRecv8(x_1_1_1)] && qpRange8(x_1_1_1) ==> wildcard >= NoPerm
          );
        
        // -- check if receiver acc(list(x), wildcard) is injective
          assert {:msg "  Precondition of function length3_impl might not hold. Quantified resource list(x) might not be injective. (0455.vpr@225.10--225.30) [222312]"}
            (forall x: Ref, x_9: Ref ::
            { neverTriggered8(x), neverTriggered8(x_9) }
            (((x != x_9 && xs[x]) && xs[x_9]) && NoPerm < wildcard) && NoPerm < wildcard ==> x != x_9
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function length3_impl might not hold. There might be insufficient permission to access list(x) (0455.vpr@225.10--225.30) [222313]"}
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
    assume length3_impl(Heap, xs, x1_2, 1, res);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert res == 1 -- 0455.vpr@226.3--226.18
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion res == 1 might not hold. (0455.vpr@226.10--226.18) [222314]"}
      res == 1;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test3_length2
// ==================================================

procedure test3_length2() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x1_2: Ref;
  var x2: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[x1_2, $allocated];
    assume Heap[x2, $allocated];
  
  // -- Translating statement: x1 := new(next) -- 0455.vpr@230.16--230.31
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x1_2 := freshObj;
    Mask := Mask[x1_2, next:=Mask[x1_2, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x1.next := null -- 0455.vpr@231.3--231.18
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x1.next (0455.vpr@231.3--231.18) [222315]"}
      FullPerm == Mask[x1_2, next];
    Heap := Heap[x1_2, next:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(x1), wildcard) -- 0455.vpr@232.3--232.31
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Folding list(x1) might fail. There might be insufficient permission to access x1.next (0455.vpr@232.3--232.31) [222317]"}
      Mask[x1_2, next] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[x1_2, next];
    Mask := Mask[x1_2, next:=Mask[x1_2, next] - wildcard];
    if (Heap[x1_2, next] != null) {
      assert {:msg "  Folding list(x1) might fail. There might be insufficient permission to access list(x1.next) (0455.vpr@232.3--232.31) [222318]"}
        Mask[null, list(Heap[x1_2, next])] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[null, list(Heap[x1_2, next])];
      Mask := Mask[null, list(Heap[x1_2, next]):=Mask[null, list(Heap[x1_2, next])] - wildcard];
      
      // -- Record predicate instance information
        assume InsidePredicate(list(x1_2), Heap[null, list(x1_2)], list(Heap[x1_2, next]), Heap[null, list(Heap[x1_2, next])]);
    }
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, list(x1_2):=Mask[null, list(x1_2)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list#trigger(Heap, list(x1_2));
    assume Heap[null, list(x1_2)] == CombineFrames(FrameFragment(Heap[x1_2, next]), FrameFragment((if Heap[x1_2, next] != null then Heap[null, list(Heap[x1_2, next])] else EmptyFrame)));
    if (!HasDirectPerm(Mask, null, list(x1_2))) {
      Heap := Heap[null, list#sm(x1_2):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list(x1_2):=freshVersion];
    }
    Heap := Heap[null, list#sm(x1_2):=Heap[null, list#sm(x1_2)][x1_2, next:=true]];
    if (Heap[x1_2, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_79: Ref, f_87: (Field A B) ::
        { newPMask[o_79, f_87] }
        Heap[null, list#sm(x1_2)][o_79, f_87] || Heap[null, list#sm(Heap[x1_2, next])][o_79, f_87] ==> newPMask[o_79, f_87]
      );
      Heap := Heap[null, list#sm(x1_2):=newPMask];
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x2.next (0455.vpr@235.3--235.16) [222319]"}
      FullPerm == Mask[x2, next];
    Heap := Heap[x2, next:=x1_2];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(x2), wildcard) -- 0455.vpr@236.3--236.31
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Folding list(x2) might fail. There might be insufficient permission to access x2.next (0455.vpr@236.3--236.31) [222321]"}
      Mask[x2, next] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[x2, next];
    Mask := Mask[x2, next:=Mask[x2, next] - wildcard];
    if (Heap[x2, next] != null) {
      assert {:msg "  Folding list(x2) might fail. There might be insufficient permission to access list(x2.next) (0455.vpr@236.3--236.31) [222322]"}
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
      assume (forall <A, B> o_80: Ref, f_88: (Field A B) ::
        { newPMask[o_80, f_88] }
        Heap[null, list#sm(x2)][o_80, f_88] || Heap[null, list#sm(Heap[x2, next])][o_80, f_88] ==> newPMask[o_80, f_88]
      );
      Heap := Heap[null, list#sm(x2):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: xs := Set(x1, x2) -- 0455.vpr@238.3--238.34
    xs := Set#UnionOne(Set#Singleton(x2), x1_2);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (x1 in xs) && (x2 in xs) -- 0455.vpr@239.3--239.30
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion (x1 in xs) might not hold. (0455.vpr@239.10--239.30) [222323]"}
      xs[x1_2];
    assert {:msg "  Assert might fail. Assertion (x2 in xs) might not hold. (0455.vpr@239.10--239.30) [222324]"}
      xs[x2];
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale length3_impl(xs, x2, 1, res) -- 0455.vpr@242.10--242.30
    assume state(Heap, Mask);
    
    // -- Check definedness of length3_impl(xs, x2, 1, res)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        // wildcard assumptions
        havoc wildcard;
        assert {:msg "  Precondition of function length3_impl might not hold. There might be insufficient permission to access list(x) (0455.vpr@242.10--242.30) [222325]"}
          (forall x: Ref ::
          
          xs[x] ==> Mask[null, list(x)] > NoPerm
        );
        assume (forall x: Ref ::
          
          xs[x] ==> wildcard < Mask[null, list(x)]
        );
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function length3_impl might not hold. Fraction wildcard might be negative. (0455.vpr@242.10--242.30) [222326]"}
            (forall x_1_1_1: Ref ::
            { invRecv9(x_1_1_1) }
            xs[invRecv9(x_1_1_1)] && qpRange9(x_1_1_1) ==> wildcard >= NoPerm
          );
        
        // -- check if receiver acc(list(x), wildcard) is injective
          assert {:msg "  Precondition of function length3_impl might not hold. Quantified resource list(x) might not be injective. (0455.vpr@242.10--242.30) [222327]"}
            (forall x: Ref, x_9: Ref ::
            { neverTriggered9(x), neverTriggered9(x_9) }
            (((x != x_9 && xs[x]) && xs[x_9]) && NoPerm < wildcard) && NoPerm < wildcard ==> x != x_9
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function length3_impl might not hold. There might be insufficient permission to access list(x) (0455.vpr@242.10--242.30) [222328]"}
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
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion res == 2 might not hold. (0455.vpr@243.10--243.18) [222329]"}
      res == 2;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test3_length4
// ==================================================

procedure test3_length4() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x1_2: Ref;
  var x2: Ref;
  var x3: Ref;
  var x4: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[x1_2, $allocated];
    assume Heap[x2, $allocated];
    assume Heap[x3, $allocated];
    assume Heap[x4, $allocated];
  
  // -- Translating statement: x1 := new(next) -- 0455.vpr@247.16--247.31
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x1_2 := freshObj;
    Mask := Mask[x1_2, next:=Mask[x1_2, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x1.next := null -- 0455.vpr@248.3--248.18
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x1.next (0455.vpr@248.3--248.18) [222330]"}
      FullPerm == Mask[x1_2, next];
    Heap := Heap[x1_2, next:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(x1), wildcard) -- 0455.vpr@249.3--249.31
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Folding list(x1) might fail. There might be insufficient permission to access x1.next (0455.vpr@249.3--249.31) [222332]"}
      Mask[x1_2, next] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[x1_2, next];
    Mask := Mask[x1_2, next:=Mask[x1_2, next] - wildcard];
    if (Heap[x1_2, next] != null) {
      assert {:msg "  Folding list(x1) might fail. There might be insufficient permission to access list(x1.next) (0455.vpr@249.3--249.31) [222333]"}
        Mask[null, list(Heap[x1_2, next])] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[null, list(Heap[x1_2, next])];
      Mask := Mask[null, list(Heap[x1_2, next]):=Mask[null, list(Heap[x1_2, next])] - wildcard];
      
      // -- Record predicate instance information
        assume InsidePredicate(list(x1_2), Heap[null, list(x1_2)], list(Heap[x1_2, next]), Heap[null, list(Heap[x1_2, next])]);
    }
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, list(x1_2):=Mask[null, list(x1_2)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list#trigger(Heap, list(x1_2));
    assume Heap[null, list(x1_2)] == CombineFrames(FrameFragment(Heap[x1_2, next]), FrameFragment((if Heap[x1_2, next] != null then Heap[null, list(Heap[x1_2, next])] else EmptyFrame)));
    if (!HasDirectPerm(Mask, null, list(x1_2))) {
      Heap := Heap[null, list#sm(x1_2):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list(x1_2):=freshVersion];
    }
    Heap := Heap[null, list#sm(x1_2):=Heap[null, list#sm(x1_2)][x1_2, next:=true]];
    if (Heap[x1_2, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_81: Ref, f_57: (Field A B) ::
        { newPMask[o_81, f_57] }
        Heap[null, list#sm(x1_2)][o_81, f_57] || Heap[null, list#sm(Heap[x1_2, next])][o_81, f_57] ==> newPMask[o_81, f_57]
      );
      Heap := Heap[null, list#sm(x1_2):=newPMask];
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x2.next (0455.vpr@252.3--252.16) [222334]"}
      FullPerm == Mask[x2, next];
    Heap := Heap[x2, next:=x1_2];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(x2), wildcard) -- 0455.vpr@253.3--253.31
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Folding list(x2) might fail. There might be insufficient permission to access x2.next (0455.vpr@253.3--253.31) [222336]"}
      Mask[x2, next] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[x2, next];
    Mask := Mask[x2, next:=Mask[x2, next] - wildcard];
    if (Heap[x2, next] != null) {
      assert {:msg "  Folding list(x2) might fail. There might be insufficient permission to access list(x2.next) (0455.vpr@253.3--253.31) [222337]"}
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
      assume (forall <A, B> o_82: Ref, f_70: (Field A B) ::
        { newPMask[o_82, f_70] }
        Heap[null, list#sm(x2)][o_82, f_70] || Heap[null, list#sm(Heap[x2, next])][o_82, f_70] ==> newPMask[o_82, f_70]
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x3.next (0455.vpr@256.3--256.16) [222338]"}
      FullPerm == Mask[x3, next];
    Heap := Heap[x3, next:=x2];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(x3), wildcard) -- 0455.vpr@257.3--257.31
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Folding list(x3) might fail. There might be insufficient permission to access x3.next (0455.vpr@257.3--257.31) [222340]"}
      Mask[x3, next] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[x3, next];
    Mask := Mask[x3, next:=Mask[x3, next] - wildcard];
    if (Heap[x3, next] != null) {
      assert {:msg "  Folding list(x3) might fail. There might be insufficient permission to access list(x3.next) (0455.vpr@257.3--257.31) [222341]"}
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
      assume (forall <A, B> o_83: Ref, f_89: (Field A B) ::
        { newPMask[o_83, f_89] }
        Heap[null, list#sm(x3)][o_83, f_89] || Heap[null, list#sm(Heap[x3, next])][o_83, f_89] ==> newPMask[o_83, f_89]
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x4.next (0455.vpr@260.3--260.16) [222342]"}
      FullPerm == Mask[x4, next];
    Heap := Heap[x4, next:=x3];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(x4), wildcard) -- 0455.vpr@261.3--261.31
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Folding list(x4) might fail. There might be insufficient permission to access x4.next (0455.vpr@261.3--261.31) [222344]"}
      Mask[x4, next] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[x4, next];
    Mask := Mask[x4, next:=Mask[x4, next] - wildcard];
    if (Heap[x4, next] != null) {
      assert {:msg "  Folding list(x4) might fail. There might be insufficient permission to access list(x4.next) (0455.vpr@261.3--261.31) [222345]"}
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
      assume (forall <A, B> o_68: Ref, f_58: (Field A B) ::
        { newPMask[o_68, f_58] }
        Heap[null, list#sm(x4)][o_68, f_58] || Heap[null, list#sm(Heap[x4, next])][o_68, f_58] ==> newPMask[o_68, f_58]
      );
      Heap := Heap[null, list#sm(x4):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: xs := Set(x1, x2, x4, x3) -- 0455.vpr@263.3--263.42
    xs := Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Singleton(x3), x4), x2), x1_2);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale length3_impl(xs, x4, 1, res) -- 0455.vpr@266.10--266.30
    assume state(Heap, Mask);
    
    // -- Check definedness of length3_impl(xs, x4, 1, res)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        // wildcard assumptions
        havoc wildcard;
        assert {:msg "  Precondition of function length3_impl might not hold. There might be insufficient permission to access list(x) (0455.vpr@266.10--266.30) [222346]"}
          (forall x: Ref ::
          
          xs[x] ==> Mask[null, list(x)] > NoPerm
        );
        assume (forall x: Ref ::
          
          xs[x] ==> wildcard < Mask[null, list(x)]
        );
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function length3_impl might not hold. Fraction wildcard might be negative. (0455.vpr@266.10--266.30) [222347]"}
            (forall x_1_1_1: Ref ::
            { invRecv10(x_1_1_1) }
            xs[invRecv10(x_1_1_1)] && qpRange10(x_1_1_1) ==> wildcard >= NoPerm
          );
        
        // -- check if receiver acc(list(x), wildcard) is injective
          assert {:msg "  Precondition of function length3_impl might not hold. Quantified resource list(x) might not be injective. (0455.vpr@266.10--266.30) [222348]"}
            (forall x: Ref, x_9: Ref ::
            { neverTriggered10(x), neverTriggered10(x_9) }
            (((x != x_9 && xs[x]) && xs[x_9]) && NoPerm < wildcard) && NoPerm < wildcard ==> x != x_9
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function length3_impl might not hold. There might be insufficient permission to access list(x) (0455.vpr@266.10--266.30) [222349]"}
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
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion res == 4 might not hold. (0455.vpr@267.10--267.18) [222350]"}
      res == 4;
    assume state(Heap, Mask);
}