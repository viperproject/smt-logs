// 
// Translation of Viper program.
// 
// Date:         2025-01-26 21:42:59
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0240.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0240-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_57: Ref, f_69: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_57, f_69] }
  Heap[o_57, $allocated] ==> Heap[Heap[o_57, f_69], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_119: Ref, f_78: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_119, f_78] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_119, f_78) ==> Heap[o_119, f_78] == ExhaleHeap[o_119, f_78]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_44: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_44), ExhaleHeap[null, PredicateMaskField(pm_f_44)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_44) && IsPredicateField(pm_f_44) ==> Heap[null, PredicateMaskField(pm_f_44)] == ExhaleHeap[null, PredicateMaskField(pm_f_44)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_44: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_44) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_44) && IsPredicateField(pm_f_44) ==> (forall <A, B> o2_44: Ref, f_78: (Field A B) ::
    { ExhaleHeap[o2_44, f_78] }
    Heap[null, PredicateMaskField(pm_f_44)][o2_44, f_78] ==> Heap[o2_44, f_78] == ExhaleHeap[o2_44, f_78]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_44: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_44), ExhaleHeap[null, WandMaskField(pm_f_44)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_44) && IsWandField(pm_f_44) ==> Heap[null, WandMaskField(pm_f_44)] == ExhaleHeap[null, WandMaskField(pm_f_44)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_44: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_44) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_44) && IsWandField(pm_f_44) ==> (forall <A, B> o2_44: Ref, f_78: (Field A B) ::
    { ExhaleHeap[o2_44, f_78] }
    Heap[null, WandMaskField(pm_f_44)][o2_44, f_78] ==> Heap[o2_44, f_78] == ExhaleHeap[o2_44, f_78]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_119: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_119, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_119, $allocated] ==> ExhaleHeap[o_119, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_57: Ref, f_131: (Field A B), v: B ::
  { Heap[o_57, f_131:=v] }
  succHeap(Heap, Heap[o_57, f_131:=v])
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

function  neverTriggered1(x_4_2: Ref): bool;
function  neverTriggered2(x_2_2: Ref): bool;
function  neverTriggered3(x_3: Ref): bool;
function  neverTriggered4(x: Ref): bool;
function  neverTriggered5(x_1: Ref): bool;
function  neverTriggered6(x_2_2: Ref): bool;
function  neverTriggered7(x: Ref): bool;
function  neverTriggered8(x: Ref): bool;
function  neverTriggered9(x_1: Ref): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): Ref;
function  invRecv2(recv: Ref): Ref;
function  invRecv3(recv: Ref): Ref;
function  invRecv4(recv: Ref): Ref;
function  invRecv5(recv: Ref): Ref;
function  invRecv6(recv: Ref): Ref;
function  invRecv7(recv: Ref): Ref;
function  invRecv8(recv: Ref): Ref;
function  invRecv9(recv: Ref): Ref;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(recv: Ref): bool;
function  qpRange2(recv: Ref): bool;
function  qpRange3(recv: Ref): bool;
function  qpRange4(recv: Ref): bool;
function  qpRange5(recv: Ref): bool;
function  qpRange6(recv: Ref): bool;
function  qpRange7(recv: Ref): bool;
function  qpRange8(recv: Ref): bool;
function  qpRange9(recv: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 1: foo
// - height 0: foo_qp
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

const unique next: Field NormalField Ref;
axiom !IsPredicateField(next);
axiom !IsWandField(next);
const unique data: Field NormalField int;
axiom !IsPredicateField(data);
axiom !IsWandField(data);

// ==================================================
// Translation of function foo
// ==================================================

// Uninterpreted function definitions
function  foo_1(Heap: HeapType, this: Ref): bool;
function  foo'(Heap: HeapType, this: Ref): bool;
axiom (forall Heap: HeapType, this: Ref ::
  { foo_1(Heap, this) }
  foo_1(Heap, this) == foo'(Heap, this) && dummyFunction(foo#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { foo'(Heap, this) }
  dummyFunction(foo#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), foo_1(Heap, this) } { state(Heap, Mask), foo#triggerStateless(this), list#trigger(Heap, list(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> foo_1(Heap, this)
);

// Framing axioms
function  foo#frame(frame: FrameType, this: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), foo'(Heap, this) }
  state(Heap, Mask) ==> foo'(Heap, this) == foo#frame(Heap[null, list(this)], this)
);

// Trigger function (controlling recursive postconditions)
function  foo#trigger_1(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  foo#triggerStateless(this: Ref): bool;

// Check contract well-formedness and postcondition
procedure foo#definedness(this: Ref) returns (Result: bool)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, list(this):=Mask[null, list(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translate function body
    Result := true;
}

// ==================================================
// Translation of function foo_qp
// ==================================================

// Uninterpreted function definitions
function  foo_qp(Heap: HeapType, xs: (Set Ref)): bool;
function  foo_qp'(Heap: HeapType, xs: (Set Ref)): bool;
axiom (forall Heap: HeapType, xs: (Set Ref) ::
  { foo_qp(Heap, xs) }
  foo_qp(Heap, xs) == foo_qp'(Heap, xs) && dummyFunction(foo_qp#triggerStateless(xs))
);
axiom (forall Heap: HeapType, xs: (Set Ref) ::
  { foo_qp'(Heap, xs) }
  dummyFunction(foo_qp#triggerStateless(xs))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Set Ref) ::
  { state(Heap, Mask), foo_qp(Heap, xs) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> foo_qp(Heap, xs)
);

// Framing axioms
function  foo_qp#frame(frame: FrameType, xs: (Set Ref)): bool;
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Set Ref) ::
  { state(Heap, Mask), foo_qp'(Heap, xs) }
  state(Heap, Mask) ==> foo_qp'(Heap, xs) == foo_qp#frame(FrameFragment(foo_qp#condqp1(Heap, xs)), xs)
);
// ==================================================
// Function used for framing of quantified permission (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.data, write)) in function foo_qp
// ==================================================

function  foo_qp#condqp1(Heap: HeapType, xs_1_1: (Set Ref)): int;
function  sk_foo_qp#condqp1(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, xs: (Set Ref) ::
  { foo_qp#condqp1(Heap2Heap, xs), foo_qp#condqp1(Heap1Heap, xs), succHeapTrans(Heap2Heap, Heap1Heap) }
  (xs[sk_foo_qp#condqp1(foo_qp#condqp1(Heap2Heap, xs), foo_qp#condqp1(Heap1Heap, xs))] && NoPerm < FullPerm <==> xs[sk_foo_qp#condqp1(foo_qp#condqp1(Heap2Heap, xs), foo_qp#condqp1(Heap1Heap, xs))] && NoPerm < FullPerm) && (xs[sk_foo_qp#condqp1(foo_qp#condqp1(Heap2Heap, xs), foo_qp#condqp1(Heap1Heap, xs))] && NoPerm < FullPerm ==> Heap2Heap[sk_foo_qp#condqp1(foo_qp#condqp1(Heap2Heap, xs), foo_qp#condqp1(Heap1Heap, xs)), data] == Heap1Heap[sk_foo_qp#condqp1(foo_qp#condqp1(Heap2Heap, xs), foo_qp#condqp1(Heap1Heap, xs)), data]) ==> foo_qp#condqp1(Heap2Heap, xs) == foo_qp#condqp1(Heap1Heap, xs)
);

// Trigger function (controlling recursive postconditions)
function  foo_qp#trigger(frame: FrameType, xs: (Set Ref)): bool;

// State-independent trigger function
function  foo_qp#triggerStateless(xs: (Set Ref)): bool;

// Check contract well-formedness and postcondition
procedure foo_qp#definedness(xs: (Set Ref)) returns (Result: bool)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.data, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.data might not be injective. (0240.vpr@72.12--72.52) [79326]"}
      (forall x_4_2: Ref, x_4_3: Ref ::
      
      (((x_4_2 != x_4_3 && xs[x_4_2]) && xs[x_4_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_4_2 != x_4_3
    );
    
    // -- Define Inverse Function
      assume (forall x_4_2: Ref ::
        { Heap[x_4_2, data] } { QPMask[x_4_2, data] } { xs[x_4_2] }
        xs[x_4_2] && NoPerm < FullPerm ==> qpRange1(x_4_2) && invRecv1(x_4_2) == x_4_2
      );
      assume (forall o_9: Ref ::
        { invRecv1(o_9) }
        (xs[invRecv1(o_9)] && NoPerm < FullPerm) && qpRange1(o_9) ==> invRecv1(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_4_2: Ref ::
        { Heap[x_4_2, data] } { QPMask[x_4_2, data] } { xs[x_4_2] }
        xs[x_4_2] ==> x_4_2 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, data] }
        ((xs[invRecv1(o_9)] && NoPerm < FullPerm) && qpRange1(o_9) ==> (NoPerm < FullPerm ==> invRecv1(o_9) == o_9) && QPMask[o_9, data] == Mask[o_9, data] + FullPerm) && (!((xs[invRecv1(o_9)] && NoPerm < FullPerm) && qpRange1(o_9)) ==> QPMask[o_9, data] == Mask[o_9, data])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != data ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translate function body
    Result := true;
}

// ==================================================
// Translation of predicate list
// ==================================================

type PredicateType_list;
function  list(this: Ref): Field PredicateType_list FrameType;
function  list#sm(this: Ref): Field PredicateType_list PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(list(this)) }
  PredicateMaskField(list(this)) == list#sm(this)
);
axiom (forall this: Ref ::
  { list(this) }
  IsPredicateField(list(this))
);
axiom (forall this: Ref ::
  { list(this) }
  getPredWandId(list(this)) == 0
);
function  list#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  list#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { list(this), list(this2) }
  list(this) == list(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { list#sm(this), list#sm(this2) }
  list#sm(this) == list#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { list#trigger(Heap, list(this)) }
  list#everUsed(list(this))
);

procedure list#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var newPMask: PMaskType;
  
  // -- Check definedness of predicate body of list
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, next:=Mask[this, next] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, data:=Mask[this, data] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (0240.vpr@7.2--13.3) [79327]"}
        HasDirectPerm(Mask, this, next);
    if (Heap[this, next] != null) {
      
      // -- Check definedness of acc(list(this.next), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (0240.vpr@7.2--13.3) [79328]"}
          HasDirectPerm(Mask, this, next);
      perm := FullPerm;
      Mask := Mask[null, list(Heap[this, next]):=Mask[null, list(Heap[this, next])] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of (unfolding acc(list(this.next), write) in this.data <= this.next.data)
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume list#trigger(UnfoldingHeap, list(UnfoldingHeap[this, next]));
        assume UnfoldingHeap[null, list(UnfoldingHeap[this, next])] == CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[this, next], next]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[this, next], data]), FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, next], next] != null then UnfoldingHeap[null, list(UnfoldingHeap[UnfoldingHeap[this, next], next])] else EmptyFrame))));
        ExhaleWellDef0Heap := UnfoldingHeap;
        ExhaleWellDef0Mask := UnfoldingMask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access list(this.next) (0240.vpr@7.2--13.3) [79329]"}
            perm <= UnfoldingMask[null, list(UnfoldingHeap[this, next])];
        }
        UnfoldingMask := UnfoldingMask[null, list(UnfoldingHeap[this, next]):=UnfoldingMask[null, list(UnfoldingHeap[this, next])] - perm];
        perm := FullPerm;
        assume UnfoldingHeap[this, next] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, next], next:=UnfoldingMask[UnfoldingHeap[this, next], next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume UnfoldingHeap[this, next] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, next], data:=UnfoldingMask[UnfoldingHeap[this, next], data] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[UnfoldingHeap[this, next], next] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, list(UnfoldingHeap[UnfoldingHeap[this, next], next]):=UnfoldingMask[null, list(UnfoldingHeap[UnfoldingHeap[this, next], next])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(list(UnfoldingHeap[this, next]), UnfoldingHeap[null, list(UnfoldingHeap[this, next])], list(UnfoldingHeap[UnfoldingHeap[this, next], next]), UnfoldingHeap[null, list(UnfoldingHeap[UnfoldingHeap[this, next], next])]);
          assume state(UnfoldingHeap, UnfoldingMask);
          
          // -- Execute unfolding (for extra information)
            Unfolding1Heap := UnfoldingHeap;
            Unfolding1Mask := UnfoldingMask;
            assume list#trigger(Unfolding1Heap, list(Unfolding1Heap[Unfolding1Heap[this, next], next]));
            assume Unfolding1Heap[null, list(Unfolding1Heap[Unfolding1Heap[this, next], next])] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], data]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next] != null then Unfolding1Heap[null, list(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next])] else EmptyFrame))));
            ExhaleWellDef0Heap := Unfolding1Heap;
            ExhaleWellDef0Mask := Unfolding1Mask;
            perm := FullPerm;
            Unfolding1Mask := Unfolding1Mask[null, list(Unfolding1Heap[Unfolding1Heap[this, next], next]):=Unfolding1Mask[null, list(Unfolding1Heap[Unfolding1Heap[this, next], next])] - perm];
            perm := FullPerm;
            assume Unfolding1Heap[Unfolding1Heap[this, next], next] != null;
            Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[this, next], next], next:=Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[this, next], next], next] + perm];
            assume state(Unfolding1Heap, Unfolding1Mask);
            perm := FullPerm;
            assume Unfolding1Heap[Unfolding1Heap[this, next], next] != null;
            Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[this, next], next], data:=Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[this, next], next], data] + perm];
            assume state(Unfolding1Heap, Unfolding1Mask);
            if (Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next] != null) {
              perm := FullPerm;
              Unfolding1Mask := Unfolding1Mask[null, list(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next]):=Unfolding1Mask[null, list(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next])] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(list(Unfolding1Heap[Unfolding1Heap[this, next], next]), Unfolding1Heap[null, list(Unfolding1Heap[Unfolding1Heap[this, next], next])], list(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next]), Unfolding1Heap[null, list(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next])]);
              assume state(Unfolding1Heap, Unfolding1Mask);
              assume Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], data] <= Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next], data];
              
              // -- Free assumptions (inhale module)
                Unfolding1Heap := Unfolding1Heap[null, list#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next]):=Unfolding1Heap[null, list#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next])][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next], next:=true]];
                Unfolding1Heap := Unfolding1Heap[null, list#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next]):=Unfolding1Heap[null, list#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next])][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next], data:=true]];
                if (Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next], next] != null) {
                  havoc newPMask;
                  assume (forall <A, B> o_64: Ref, f_73: (Field A B) ::
                    { newPMask[o_64, f_73] }
                    Unfolding1Heap[null, list#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next])][o_64, f_73] || Unfolding1Heap[null, list#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next], next])][o_64, f_73] ==> newPMask[o_64, f_73]
                  );
                  Unfolding1Heap := Unfolding1Heap[null, list#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next]):=newPMask];
                }
                assume state(Unfolding1Heap, Unfolding1Mask);
            }
            assume state(Unfolding1Heap, Unfolding1Mask);
          assume UnfoldingHeap[UnfoldingHeap[this, next], data] <= UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, next], next], data];
          
          // -- Free assumptions (inhale module)
            UnfoldingHeap := UnfoldingHeap[null, list#sm(UnfoldingHeap[UnfoldingHeap[this, next], next]):=UnfoldingHeap[null, list#sm(UnfoldingHeap[UnfoldingHeap[this, next], next])][UnfoldingHeap[UnfoldingHeap[this, next], next], next:=true]];
            UnfoldingHeap := UnfoldingHeap[null, list#sm(UnfoldingHeap[UnfoldingHeap[this, next], next]):=UnfoldingHeap[null, list#sm(UnfoldingHeap[UnfoldingHeap[this, next], next])][UnfoldingHeap[UnfoldingHeap[this, next], next], data:=true]];
            if (UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, next], next], next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_73: Ref, f_82: (Field A B) ::
                { newPMask[o_73, f_82] }
                UnfoldingHeap[null, list#sm(UnfoldingHeap[UnfoldingHeap[this, next], next])][o_73, f_82] || UnfoldingHeap[null, list#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, next], next], next])][o_73, f_82] ==> newPMask[o_73, f_82]
              );
              UnfoldingHeap := UnfoldingHeap[null, list#sm(UnfoldingHeap[UnfoldingHeap[this, next], next]):=newPMask];
            }
            assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (0240.vpr@7.2--13.3) [79330]"}
          HasDirectPerm(UnfoldingMask, this, next);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.data (0240.vpr@7.2--13.3) [79331]"}
          HasDirectPerm(UnfoldingMask, this, data);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (0240.vpr@7.2--13.3) [79332]"}
          HasDirectPerm(UnfoldingMask, this, next);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next.data (0240.vpr@7.2--13.3) [79333]"}
          HasDirectPerm(UnfoldingMask, UnfoldingHeap[this, next], data);
        
        // -- Free assumptions (exp module)
          Heap := Heap[null, list#sm(Heap[this, next]):=Heap[null, list#sm(Heap[this, next])][Heap[this, next], next:=true]];
          Heap := Heap[null, list#sm(Heap[this, next]):=Heap[null, list#sm(Heap[this, next])][Heap[this, next], data:=true]];
          if (Heap[Heap[this, next], next] != null) {
            havoc newPMask;
            assume (forall <A, B> o_75: Ref, f_84: (Field A B) ::
              { newPMask[o_75, f_84] }
              Heap[null, list#sm(Heap[this, next])][o_75, f_84] || Heap[null, list#sm(Heap[Heap[this, next], next])][o_75, f_84] ==> newPMask[o_75, f_84]
            );
            Heap := Heap[null, list#sm(Heap[this, next]):=newPMask];
          }
          assume state(Heap, Mask);
      
      // -- Execute unfolding (for extra information)
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume list#trigger(UnfoldingHeap, list(UnfoldingHeap[this, next]));
        assume UnfoldingHeap[null, list(UnfoldingHeap[this, next])] == CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[this, next], next]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[this, next], data]), FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, next], next] != null then UnfoldingHeap[null, list(UnfoldingHeap[UnfoldingHeap[this, next], next])] else EmptyFrame))));
        ExhaleWellDef0Heap := UnfoldingHeap;
        ExhaleWellDef0Mask := UnfoldingMask;
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, list(UnfoldingHeap[this, next]):=UnfoldingMask[null, list(UnfoldingHeap[this, next])] - perm];
        perm := FullPerm;
        assume UnfoldingHeap[this, next] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, next], next:=UnfoldingMask[UnfoldingHeap[this, next], next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume UnfoldingHeap[this, next] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, next], data:=UnfoldingMask[UnfoldingHeap[this, next], data] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[UnfoldingHeap[this, next], next] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, list(UnfoldingHeap[UnfoldingHeap[this, next], next]):=UnfoldingMask[null, list(UnfoldingHeap[UnfoldingHeap[this, next], next])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(list(UnfoldingHeap[this, next]), UnfoldingHeap[null, list(UnfoldingHeap[this, next])], list(UnfoldingHeap[UnfoldingHeap[this, next], next]), UnfoldingHeap[null, list(UnfoldingHeap[UnfoldingHeap[this, next], next])]);
          assume state(UnfoldingHeap, UnfoldingMask);
          assume UnfoldingHeap[UnfoldingHeap[this, next], data] <= UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, next], next], data];
          
          // -- Free assumptions (inhale module)
            UnfoldingHeap := UnfoldingHeap[null, list#sm(UnfoldingHeap[UnfoldingHeap[this, next], next]):=UnfoldingHeap[null, list#sm(UnfoldingHeap[UnfoldingHeap[this, next], next])][UnfoldingHeap[UnfoldingHeap[this, next], next], next:=true]];
            UnfoldingHeap := UnfoldingHeap[null, list#sm(UnfoldingHeap[UnfoldingHeap[this, next], next]):=UnfoldingHeap[null, list#sm(UnfoldingHeap[UnfoldingHeap[this, next], next])][UnfoldingHeap[UnfoldingHeap[this, next], next], data:=true]];
            if (UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, next], next], next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_65: Ref, f_74: (Field A B) ::
                { newPMask[o_65, f_74] }
                UnfoldingHeap[null, list#sm(UnfoldingHeap[UnfoldingHeap[this, next], next])][o_65, f_74] || UnfoldingHeap[null, list#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, next], next], next])][o_65, f_74] ==> newPMask[o_65, f_74]
              );
              UnfoldingHeap := UnfoldingHeap[null, list#sm(UnfoldingHeap[UnfoldingHeap[this, next], next]):=newPMask];
            }
            assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
      assume Heap[this, data] <= Heap[Heap[this, next], data];
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate bla
// ==================================================

type PredicateType_bla;
function  bla_1(this: Ref): Field PredicateType_bla FrameType;
function  bla#sm(this: Ref): Field PredicateType_bla PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(bla_1(this)) }
  PredicateMaskField(bla_1(this)) == bla#sm(this)
);
axiom (forall this: Ref ::
  { bla_1(this) }
  IsPredicateField(bla_1(this))
);
axiom (forall this: Ref ::
  { bla_1(this) }
  getPredWandId(bla_1(this)) == 1
);
function  bla#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  bla#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { bla_1(this), bla_1(this2) }
  bla_1(this) == bla_1(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { bla#sm(this), bla#sm(this2) }
  bla#sm(this) == bla#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { bla#trigger(Heap, bla_1(this)) }
  bla#everUsed(bla_1(this))
);

procedure bla#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Check definedness of predicate body of bla
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    Mask := Mask[null, list(this):=Mask[null, list(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of foo(this)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function foo might not hold. There might be insufficient permission to access list(this) (0240.vpr@33.6--33.15) [79334]"}
          NoPerm < perm ==> NoPerm < Mask[null, list(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume foo_1(Heap, this);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate blabla
// ==================================================

type PredicateType_blabla;
function  blabla(this: Ref): Field PredicateType_blabla FrameType;
function  blabla#sm(this: Ref): Field PredicateType_blabla PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(blabla(this)) }
  PredicateMaskField(blabla(this)) == blabla#sm(this)
);
axiom (forall this: Ref ::
  { blabla(this) }
  IsPredicateField(blabla(this))
);
axiom (forall this: Ref ::
  { blabla(this) }
  getPredWandId(blabla(this)) == 2
);
function  blabla#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  blabla#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { blabla(this), blabla(this2) }
  blabla(this) == blabla(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { blabla#sm(this), blabla#sm(this2) }
  blabla#sm(this) == blabla#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { blabla#trigger(Heap, blabla(this)) }
  blabla#everUsed(blabla(this))
);

procedure blabla#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of blabla
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    Mask := Mask[null, bla_1(this):=Mask[null, bla_1(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate bla_qp
// ==================================================

type PredicateType_bla_qp;
function  bla_qp(xs: (Set Ref)): Field PredicateType_bla_qp FrameType;
function  bla_qp#sm(xs: (Set Ref)): Field PredicateType_bla_qp PMaskType;
axiom (forall xs: (Set Ref) ::
  { PredicateMaskField(bla_qp(xs)) }
  PredicateMaskField(bla_qp(xs)) == bla_qp#sm(xs)
);
axiom (forall xs: (Set Ref) ::
  { bla_qp(xs) }
  IsPredicateField(bla_qp(xs))
);
axiom (forall xs: (Set Ref) ::
  { bla_qp(xs) }
  getPredWandId(bla_qp(xs)) == 3
);
function  bla_qp#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  bla_qp#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall xs: (Set Ref), xs2: (Set Ref) ::
  { bla_qp(xs), bla_qp(xs2) }
  bla_qp(xs) == bla_qp(xs2) ==> xs == xs2
);
axiom (forall xs: (Set Ref), xs2: (Set Ref) ::
  { bla_qp#sm(xs), bla_qp#sm(xs2) }
  bla_qp#sm(xs) == bla_qp#sm(xs2) ==> xs == xs2
);

axiom (forall Heap: HeapType, xs: (Set Ref) ::
  { bla_qp#trigger(Heap, bla_qp(xs)) }
  bla_qp#everUsed(bla_qp(xs))
);

// ==================================================
// Function used for framing of quantified permission (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.data, write)) in predicate bla_qp
// ==================================================

function  bla_qp#condqp2(Heap: HeapType, xs_1_1: (Set Ref)): int;
function  sk_bla_qp#condqp2(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, xs: (Set Ref) ::
  { bla_qp#condqp2(Heap2Heap, xs), bla_qp#condqp2(Heap1Heap, xs), succHeapTrans(Heap2Heap, Heap1Heap) }
  (xs[sk_bla_qp#condqp2(bla_qp#condqp2(Heap2Heap, xs), bla_qp#condqp2(Heap1Heap, xs))] && NoPerm < FullPerm <==> xs[sk_bla_qp#condqp2(bla_qp#condqp2(Heap2Heap, xs), bla_qp#condqp2(Heap1Heap, xs))] && NoPerm < FullPerm) && (xs[sk_bla_qp#condqp2(bla_qp#condqp2(Heap2Heap, xs), bla_qp#condqp2(Heap1Heap, xs))] && NoPerm < FullPerm ==> Heap2Heap[sk_bla_qp#condqp2(bla_qp#condqp2(Heap2Heap, xs), bla_qp#condqp2(Heap1Heap, xs)), data] == Heap1Heap[sk_bla_qp#condqp2(bla_qp#condqp2(Heap2Heap, xs), bla_qp#condqp2(Heap1Heap, xs)), data]) ==> bla_qp#condqp2(Heap2Heap, xs) == bla_qp#condqp2(Heap1Heap, xs)
);

procedure bla_qp#definedness(xs: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Check definedness of predicate body of bla_qp
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.data, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Predicate might not be well-formed. Quantified resource x.data might not be injective. (0240.vpr@75.1--78.2) [79335]"}
      (forall x_2_2: Ref, x_2_3: Ref ::
      
      (((x_2_2 != x_2_3 && xs[x_2_2]) && xs[x_2_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_2_2 != x_2_3
    );
    
    // -- Define Inverse Function
      assume (forall x_2_2: Ref ::
        { Heap[x_2_2, data] } { QPMask[x_2_2, data] } { xs[x_2_2] }
        xs[x_2_2] && NoPerm < FullPerm ==> qpRange2(x_2_2) && invRecv2(x_2_2) == x_2_2
      );
      assume (forall o_9: Ref ::
        { invRecv2(o_9) }
        (xs[invRecv2(o_9)] && NoPerm < FullPerm) && qpRange2(o_9) ==> invRecv2(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_2_2: Ref ::
        { Heap[x_2_2, data] } { QPMask[x_2_2, data] } { xs[x_2_2] }
        xs[x_2_2] ==> x_2_2 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, data] }
        ((xs[invRecv2(o_9)] && NoPerm < FullPerm) && qpRange2(o_9) ==> (NoPerm < FullPerm ==> invRecv2(o_9) == o_9) && QPMask[o_9, data] == Mask[o_9, data] + FullPerm) && (!((xs[invRecv2(o_9)] && NoPerm < FullPerm) && qpRange2(o_9)) ==> QPMask[o_9, data] == Mask[o_9, data])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != data ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of foo_qp(xs)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver x is injective
          assert {:msg "  Precondition of function foo_qp might not hold. Quantified resource x.data might not be injective. (0240.vpr@77.6--77.16) [79336]"}
            (forall x_3: Ref, x_3_1: Ref ::
            { neverTriggered3(x_3), neverTriggered3(x_3_1) }
            (((x_3 != x_3_1 && xs[x_3]) && xs[x_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_3 != x_3_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function foo_qp might not hold. There might be insufficient permission to access x.data (0240.vpr@77.6--77.16) [79337]"}
            (forall x_3: Ref ::
            { Heap[x_3, data] } { QPMask[x_3, data] } { xs[x_3] }
            xs[x_3] ==> FullPerm > NoPerm ==> Mask[x_3, data] > NoPerm
          );
        
        // -- assumptions for inverse of receiver x
          assume (forall x_3: Ref ::
            { Heap[x_3, data] } { QPMask[x_3, data] } { xs[x_3] }
            xs[x_3] && NoPerm < FullPerm ==> qpRange3(x_3) && invRecv3(x_3) == x_3
          );
          assume (forall o_9: Ref ::
            { invRecv3(o_9) }
            xs[invRecv3(o_9)] && (NoPerm < FullPerm && qpRange3(o_9)) ==> invRecv3(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume foo_qp(Heap, xs);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, list(this):=Mask[null, list(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: unfold acc(list(this), 1 / 2) -- 0240.vpr@18.3--18.30
    assume list#trigger(Heap, list(this));
    assume Heap[null, list(this)] == CombineFrames(FrameFragment(Heap[this, next]), CombineFrames(FrameFragment(Heap[this, data]), FrameFragment((if Heap[this, next] != null then Heap[null, list(Heap[this, next])] else EmptyFrame))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := 1 / 2;
    assert {:msg "  Unfolding list(this) might fail. Fraction 1 / 2 might be negative. (0240.vpr@18.3--18.30) [79339]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding list(this) might fail. There might be insufficient permission to access list(this) (0240.vpr@18.3--18.30) [79340]"}
        perm <= Mask[null, list(this)];
    }
    Mask := Mask[null, list(this):=Mask[null, list(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, list(this))) {
        havoc newVersion;
        Heap := Heap[null, list(this):=newVersion];
      }
    perm := 1 / 2;
    assert {:msg "  Unfolding list(this) might fail. Fraction 1 / 2 might be negative. (0240.vpr@18.3--18.30) [79341]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, next:=Mask[this, next] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Unfolding list(this) might fail. Fraction 1 / 2 might be negative. (0240.vpr@18.3--18.30) [79342]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, data:=Mask[this, data] + perm];
    assume state(Heap, Mask);
    if (Heap[this, next] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding list(this) might fail. Fraction 1 / 2 might be negative. (0240.vpr@18.3--18.30) [79343]"}
        perm >= NoPerm;
      Mask := Mask[null, list(Heap[this, next]):=Mask[null, list(Heap[this, next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(list(this), Heap[null, list(this)], list(Heap[this, next]), Heap[null, list(Heap[this, next])]);
      assume state(Heap, Mask);
      
      // -- Execute unfolding (for extra information)
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume list#trigger(UnfoldingHeap, list(UnfoldingHeap[this, next]));
        assume UnfoldingHeap[null, list(UnfoldingHeap[this, next])] == CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[this, next], next]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[this, next], data]), FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, next], next] != null then UnfoldingHeap[null, list(UnfoldingHeap[UnfoldingHeap[this, next], next])] else EmptyFrame))));
        ExhaleWellDef0Heap := UnfoldingHeap;
        ExhaleWellDef0Mask := UnfoldingMask;
        perm := 1 / 2;
        UnfoldingMask := UnfoldingMask[null, list(UnfoldingHeap[this, next]):=UnfoldingMask[null, list(UnfoldingHeap[this, next])] - perm];
        perm := 1 / 2;
        assume perm > NoPerm ==> UnfoldingHeap[this, next] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, next], next:=UnfoldingMask[UnfoldingHeap[this, next], next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := 1 / 2;
        assume perm > NoPerm ==> UnfoldingHeap[this, next] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, next], data:=UnfoldingMask[UnfoldingHeap[this, next], data] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[UnfoldingHeap[this, next], next] != null) {
          perm := 1 / 2;
          UnfoldingMask := UnfoldingMask[null, list(UnfoldingHeap[UnfoldingHeap[this, next], next]):=UnfoldingMask[null, list(UnfoldingHeap[UnfoldingHeap[this, next], next])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(list(UnfoldingHeap[this, next]), UnfoldingHeap[null, list(UnfoldingHeap[this, next])], list(UnfoldingHeap[UnfoldingHeap[this, next], next]), UnfoldingHeap[null, list(UnfoldingHeap[UnfoldingHeap[this, next], next])]);
          assume state(UnfoldingHeap, UnfoldingMask);
          assume UnfoldingHeap[UnfoldingHeap[this, next], data] <= UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, next], next], data];
          
          // -- Free assumptions (inhale module)
            UnfoldingHeap := UnfoldingHeap[null, list#sm(UnfoldingHeap[UnfoldingHeap[this, next], next]):=UnfoldingHeap[null, list#sm(UnfoldingHeap[UnfoldingHeap[this, next], next])][UnfoldingHeap[UnfoldingHeap[this, next], next], next:=true]];
            UnfoldingHeap := UnfoldingHeap[null, list#sm(UnfoldingHeap[UnfoldingHeap[this, next], next]):=UnfoldingHeap[null, list#sm(UnfoldingHeap[UnfoldingHeap[this, next], next])][UnfoldingHeap[UnfoldingHeap[this, next], next], data:=true]];
            if (UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, next], next], next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_14: Ref, f_3: (Field A B) ::
                { newPMask[o_14, f_3] }
                UnfoldingHeap[null, list#sm(UnfoldingHeap[UnfoldingHeap[this, next], next])][o_14, f_3] || UnfoldingHeap[null, list#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, next], next], next])][o_14, f_3] ==> newPMask[o_14, f_3]
              );
              UnfoldingHeap := UnfoldingHeap[null, list#sm(UnfoldingHeap[UnfoldingHeap[this, next], next]):=newPMask];
            }
            assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
      assume Heap[this, data] <= Heap[Heap[this, next], data];
      
      // -- Free assumptions (inhale module)
        Heap := Heap[null, list#sm(Heap[this, next]):=Heap[null, list#sm(Heap[this, next])][Heap[this, next], next:=true]];
        Heap := Heap[null, list#sm(Heap[this, next]):=Heap[null, list#sm(Heap[this, next])][Heap[this, next], data:=true]];
        if (Heap[Heap[this, next], next] != null) {
          havoc newPMask;
          assume (forall <A, B> o: Ref, f_61: (Field A B) ::
            { newPMask[o, f_61] }
            Heap[null, list#sm(Heap[this, next])][o, f_61] || Heap[null, list#sm(Heap[Heap[this, next], next])][o, f_61] ==> newPMask[o, f_61]
          );
          Heap := Heap[null, list#sm(Heap[this, next]):=newPMask];
        }
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0240.vpr@37.12--37.31) [79344]"}
      perm >= NoPerm;
    Mask := Mask[null, bla_1(this):=Mask[null, bla_1(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: unfold acc(bla(this), 1 / 2) -- 0240.vpr@39.3--39.29
    assume bla#trigger(Heap, bla_1(this));
    assume Heap[null, bla_1(this)] == Heap[null, list(this)];
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := 1 / 2;
    assert {:msg "  Unfolding bla(this) might fail. Fraction 1 / 2 might be negative. (0240.vpr@39.3--39.29) [79346]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding bla(this) might fail. There might be insufficient permission to access bla(this) (0240.vpr@39.3--39.29) [79347]"}
        perm <= Mask[null, bla_1(this)];
    }
    Mask := Mask[null, bla_1(this):=Mask[null, bla_1(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, bla_1(this))) {
        havoc newVersion;
        Heap := Heap[null, bla_1(this):=newVersion];
      }
    perm := 1 / 2;
    assert {:msg "  Unfolding bla(this) might fail. Fraction 1 / 2 might be negative. (0240.vpr@39.3--39.29) [79348]"}
      perm >= NoPerm;
    Mask := Mask[null, list(this):=Mask[null, list(this)] + perm];
    
    // -- Extra unfolding of predicate
      assume InsidePredicate(bla_1(this), Heap[null, bla_1(this)], list(this), Heap[null, list(this)]);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume foo_1(Heap, this);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03
// ==================================================

procedure test03(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0240.vpr@43.12--43.32) [79349]"}
      perm >= NoPerm;
    Mask := Mask[null, list(this):=Mask[null, list(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: fold acc(bla(this), 1 / 2) -- 0240.vpr@45.3--45.27
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := 1 / 2;
    assert {:msg "  Folding bla(this) might fail. Fraction 1 / 2 might be negative. (0240.vpr@45.3--45.27) [79351]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding bla(this) might fail. There might be insufficient permission to access list(this) (0240.vpr@45.3--45.27) [79352]"}
        perm <= Mask[null, list(this)];
    }
    Mask := Mask[null, list(this):=Mask[null, list(this)] - perm];
    
    // -- Record predicate instance information
      assume InsidePredicate(bla_1(this), Heap[null, bla_1(this)], list(this), Heap[null, list(this)]);
    assert {:msg "  Folding bla(this) might fail. Assertion foo(this) might not hold. (0240.vpr@45.3--45.27) [79353]"}
      foo_1(Heap, this);
    perm := 1 / 2;
    assert {:msg "  Folding bla(this) might fail. Fraction 1 / 2 might be negative. (0240.vpr@45.3--45.27) [79354]"}
      perm >= NoPerm;
    Mask := Mask[null, bla_1(this):=Mask[null, bla_1(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume bla#trigger(Heap, bla_1(this));
    assume Heap[null, bla_1(this)] == Heap[null, list(this)];
    if (!HasDirectPerm(Mask, null, bla_1(this))) {
      Heap := Heap[null, bla#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, bla_1(this):=freshVersion];
    }
    havoc newPMask;
    assume (forall <A, B> o_3: Ref, f_24: (Field A B) ::
      { newPMask[o_3, f_24] }
      Heap[null, bla#sm(this)][o_3, f_24] || Heap[null, list#sm(this)][o_3, f_24] ==> newPMask[o_3, f_24]
    );
    Heap := Heap[null, bla#sm(this):=newPMask];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test04a
// ==================================================

procedure test04a(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0240.vpr@49.12--49.31) [79355]"}
      perm >= NoPerm;
    Mask := Mask[null, bla_1(this):=Mask[null, bla_1(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert (unfolding acc(bla(this), 1 / 2) in true) -- 0240.vpr@51.3--51.47
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (unfolding acc(bla(this), 1 / 2) in true)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume bla#trigger(UnfoldingHeap, bla_1(this));
      assume UnfoldingHeap[null, bla_1(this)] == UnfoldingHeap[null, list(this)];
      ExhaleWellDef1Heap := UnfoldingHeap;
      ExhaleWellDef1Mask := UnfoldingMask;
      perm := 1 / 2;
      assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0240.vpr@51.10--51.47) [79356]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access bla(this) (0240.vpr@51.10--51.47) [79357]"}
          perm <= UnfoldingMask[null, bla_1(this)];
      }
      UnfoldingMask := UnfoldingMask[null, bla_1(this):=UnfoldingMask[null, bla_1(this)] - perm];
      perm := 1 / 2;
      assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0240.vpr@51.10--51.47) [79358]"}
        perm >= NoPerm;
      UnfoldingMask := UnfoldingMask[null, list(this):=UnfoldingMask[null, list(this)] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(bla_1(this), UnfoldingHeap[null, bla_1(this)], list(this), UnfoldingHeap[null, list(this)]);
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assume foo_1(UnfoldingHeap, this);
      assume state(UnfoldingHeap, UnfoldingMask);
      
      // -- Free assumptions (exp module)
        havoc newPMask;
        assume (forall <A, B> o_1: Ref, f_10: (Field A B) ::
          { newPMask[o_1, f_10] }
          Heap[null, bla#sm(this)][o_1, f_10] || Heap[null, list#sm(this)][o_1, f_10] ==> newPMask[o_1, f_10]
        );
        Heap := Heap[null, bla#sm(this):=newPMask];
        assume state(Heap, Mask);
    
    // -- Free assumptions (exhale module)
      havoc newPMask;
      assume (forall <A, B> o_15: Ref, f_51: (Field A B) ::
        { newPMask[o_15, f_51] }
        Heap[null, bla#sm(this)][o_15, f_51] || Heap[null, list#sm(this)][o_15, f_51] ==> newPMask[o_15, f_51]
      );
      Heap := Heap[null, bla#sm(this):=newPMask];
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test04b
// ==================================================

procedure test04b(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleHeap: HeapType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0240.vpr@55.12--55.31) [79360]"}
      perm >= NoPerm;
    Mask := Mask[null, bla_1(this):=Mask[null, bla_1(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert (unfolding acc(bla(this), 1 / 2) in foo(this)) -- 0240.vpr@58.3--58.52
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (unfolding acc(bla(this), 1 / 2) in foo(this))
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume bla#trigger(UnfoldingHeap, bla_1(this));
      assume UnfoldingHeap[null, bla_1(this)] == UnfoldingHeap[null, list(this)];
      ExhaleWellDef1Heap := UnfoldingHeap;
      ExhaleWellDef1Mask := UnfoldingMask;
      perm := 1 / 2;
      assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0240.vpr@58.10--58.52) [79361]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access bla(this) (0240.vpr@58.10--58.52) [79362]"}
          perm <= UnfoldingMask[null, bla_1(this)];
      }
      UnfoldingMask := UnfoldingMask[null, bla_1(this):=UnfoldingMask[null, bla_1(this)] - perm];
      perm := 1 / 2;
      assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0240.vpr@58.10--58.52) [79363]"}
        perm >= NoPerm;
      UnfoldingMask := UnfoldingMask[null, list(this):=UnfoldingMask[null, list(this)] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(bla_1(this), UnfoldingHeap[null, bla_1(this)], list(this), UnfoldingHeap[null, list(this)]);
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assume foo_1(UnfoldingHeap, this);
      assume state(UnfoldingHeap, UnfoldingMask);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := UnfoldingHeap;
        ExhaleWellDef1Mask := UnfoldingMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function foo might not hold. There might be insufficient permission to access list(this) (0240.vpr@58.43--58.52) [79364]"}
          NoPerm < perm ==> NoPerm < UnfoldingMask[null, list(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
        UnfoldingHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      
      // -- Free assumptions (exp module)
        havoc newPMask;
        assume (forall <A, B> o_4: Ref, f_54: (Field A B) ::
          { newPMask[o_4, f_54] }
          Heap[null, bla#sm(this)][o_4, f_54] || Heap[null, list#sm(this)][o_4, f_54] ==> newPMask[o_4, f_54]
        );
        Heap := Heap[null, bla#sm(this):=newPMask];
        assume state(Heap, Mask);
    assert {:msg "  Assert might fail. Assertion foo(this) might not hold. (0240.vpr@58.10--58.52) [79365]"}
      foo_1(Heap, this);
    
    // -- Free assumptions (exhale module)
      havoc newPMask;
      assume (forall <A, B> o_12: Ref, f_25: (Field A B) ::
        { newPMask[o_12, f_25] }
        Heap[null, bla#sm(this)][o_12, f_25] || Heap[null, list#sm(this)][o_12, f_25] ==> newPMask[o_12, f_25]
      );
      Heap := Heap[null, bla#sm(this):=newPMask];
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test05
// ==================================================

procedure test05(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, blabla(this):=Mask[null, blabla(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert (unfolding acc(blabla(this), 1 / 3) in
  //     (unfolding acc(bla(this), 1 / 5) in true)) -- 0240.vpr@66.3--66.83
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (unfolding acc(blabla(this), 1 / 3) in (unfolding acc(bla(this), 1 / 5) in true))
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume blabla#trigger(UnfoldingHeap, blabla(this));
      assume UnfoldingHeap[null, blabla(this)] == UnfoldingHeap[null, bla_1(this)];
      ExhaleWellDef1Heap := UnfoldingHeap;
      ExhaleWellDef1Mask := UnfoldingMask;
      perm := 1 / 3;
      assert {:msg "  Assert might fail. Fraction 1 / 3 might be negative. (0240.vpr@66.10--66.83) [79366]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access blabla(this) (0240.vpr@66.10--66.83) [79367]"}
          perm <= UnfoldingMask[null, blabla(this)];
      }
      UnfoldingMask := UnfoldingMask[null, blabla(this):=UnfoldingMask[null, blabla(this)] - perm];
      perm := 1 / 3;
      assert {:msg "  Assert might fail. Fraction 1 / 3 might be negative. (0240.vpr@66.10--66.83) [79368]"}
        perm >= NoPerm;
      UnfoldingMask := UnfoldingMask[null, bla_1(this):=UnfoldingMask[null, bla_1(this)] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(blabla(this), UnfoldingHeap[null, blabla(this)], bla_1(this), UnfoldingHeap[null, bla_1(this)]);
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      Unfolding1Heap := UnfoldingHeap;
      Unfolding1Mask := UnfoldingMask;
      assume bla#trigger(Unfolding1Heap, bla_1(this));
      assume Unfolding1Heap[null, bla_1(this)] == Unfolding1Heap[null, list(this)];
      ExhaleWellDef1Heap := Unfolding1Heap;
      ExhaleWellDef1Mask := Unfolding1Mask;
      perm := 1 / 5;
      assert {:msg "  Assert might fail. Fraction 1 / 5 might be negative. (0240.vpr@66.10--66.83) [79369]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access bla(this) (0240.vpr@66.10--66.83) [79370]"}
          perm <= Unfolding1Mask[null, bla_1(this)];
      }
      Unfolding1Mask := Unfolding1Mask[null, bla_1(this):=Unfolding1Mask[null, bla_1(this)] - perm];
      perm := 1 / 5;
      assert {:msg "  Assert might fail. Fraction 1 / 5 might be negative. (0240.vpr@66.10--66.83) [79371]"}
        perm >= NoPerm;
      Unfolding1Mask := Unfolding1Mask[null, list(this):=Unfolding1Mask[null, list(this)] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(bla_1(this), Unfolding1Heap[null, bla_1(this)], list(this), Unfolding1Heap[null, list(this)]);
      assume state(Unfolding1Heap, Unfolding1Mask);
      assume state(Unfolding1Heap, Unfolding1Mask);
      assume foo_1(Unfolding1Heap, this);
      assume state(Unfolding1Heap, Unfolding1Mask);
      
      // -- Free assumptions (exp module)
        havoc newPMask;
        assume (forall <A, B> o_41: Ref, f_21: (Field A B) ::
          { newPMask[o_41, f_21] }
          Heap[null, bla#sm(this)][o_41, f_21] || Heap[null, list#sm(this)][o_41, f_21] ==> newPMask[o_41, f_21]
        );
        Heap := Heap[null, bla#sm(this):=newPMask];
        assume state(Heap, Mask);
      
      // -- Free assumptions (exp module)
        havoc newPMask;
        assume (forall <A, B> o_23: Ref, f_13: (Field A B) ::
          { newPMask[o_23, f_13] }
          Heap[null, blabla#sm(this)][o_23, f_13] || Heap[null, bla#sm(this)][o_23, f_13] ==> newPMask[o_23, f_13]
        );
        Heap := Heap[null, blabla#sm(this):=newPMask];
        assume state(Heap, Mask);
        havoc newPMask;
        assume (forall <A, B> o_13: Ref, f_65: (Field A B) ::
          { newPMask[o_13, f_65] }
          Heap[null, bla#sm(this)][o_13, f_65] || Heap[null, list#sm(this)][o_13, f_65] ==> newPMask[o_13, f_65]
        );
        Heap := Heap[null, bla#sm(this):=newPMask];
        assume state(Heap, Mask);
    
    // -- Free assumptions (exhale module)
      havoc newPMask;
      assume (forall <A, B> o_51: Ref, f_66: (Field A B) ::
        { newPMask[o_51, f_66] }
        Heap[null, blabla#sm(this)][o_51, f_66] || Heap[null, bla#sm(this)][o_51, f_66] ==> newPMask[o_51, f_66]
      );
      Heap := Heap[null, blabla#sm(this):=newPMask];
      assume state(Heap, Mask);
      havoc newPMask;
      assume (forall <A, B> o_52: Ref, f_14: (Field A B) ::
        { newPMask[o_52, f_14] }
        Heap[null, bla#sm(this)][o_52, f_14] || Heap[null, list#sm(this)][o_52, f_14] ==> newPMask[o_52, f_14]
      );
      Heap := Heap[null, bla#sm(this):=newPMask];
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02_qp
// ==================================================

procedure test02_qp(xs: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  var QPMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0240.vpr@81.12--81.32) [79373]"}
      perm >= NoPerm;
    Mask := Mask[null, bla_qp(xs):=Mask[null, bla_qp(xs)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: unfold acc(bla_qp(xs), 1 / 2) -- 0240.vpr@83.3--83.30
    assume bla_qp#trigger(Heap, bla_qp(xs));
    assume Heap[null, bla_qp(xs)] == FrameFragment(bla_qp#condqp2(Heap, xs));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := 1 / 2;
    assert {:msg "  Unfolding bla_qp(xs) might fail. Fraction 1 / 2 might be negative. (0240.vpr@83.3--83.30) [79375]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding bla_qp(xs) might fail. There might be insufficient permission to access bla_qp(xs) (0240.vpr@83.3--83.30) [79376]"}
        perm <= Mask[null, bla_qp(xs)];
    }
    Mask := Mask[null, bla_qp(xs):=Mask[null, bla_qp(xs)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, bla_qp(xs))) {
        havoc newVersion;
        Heap := Heap[null, bla_qp(xs):=newVersion];
      }
    havoc QPMask;
    assert {:msg "  Unfolding bla_qp(xs) might fail. Quantified resource x.data might not be injective. (0240.vpr@83.3--83.30) [79377]"}
      (forall x: Ref, x_46: Ref ::
      
      (((x != x_46 && xs[x]) && xs[x_46]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> x != x_46
    );
    
    // -- Define Inverse Function
      assume (forall x: Ref ::
        { Heap[x, data] } { QPMask[x, data] } { xs[x] }
        xs[x] && NoPerm < 1 / 2 ==> qpRange4(x) && invRecv4(x) == x
      );
      assume (forall o_9: Ref ::
        { invRecv4(o_9) }
        (xs[invRecv4(o_9)] && NoPerm < 1 / 2) && qpRange4(o_9) ==> invRecv4(o_9) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Unfolding bla_qp(xs) might fail. Fraction 1 / 2 might be negative. (0240.vpr@83.3--83.30) [79378]"}
      (forall x: Ref ::
      { Heap[x, data] } { QPMask[x, data] } { xs[x] }
      xs[x] ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall x: Ref ::
        { Heap[x, data] } { QPMask[x, data] } { xs[x] }
        xs[x] && 1 / 2 > NoPerm ==> x != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, data] }
        ((xs[invRecv4(o_9)] && NoPerm < 1 / 2) && qpRange4(o_9) ==> (NoPerm < 1 / 2 ==> invRecv4(o_9) == o_9) && QPMask[o_9, data] == Mask[o_9, data] + 1 / 2) && (!((xs[invRecv4(o_9)] && NoPerm < 1 / 2) && qpRange4(o_9)) ==> QPMask[o_9, data] == Mask[o_9, data])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != data ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume foo_qp(Heap, xs);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03_qp
// ==================================================

procedure test03_qp(xs: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.data, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.data might not be injective. (0240.vpr@87.12--87.57) [79379]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && xs[x_1]) && xs[x_1_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[x_1, data] } { QPMask[x_1, data] } { xs[x_1] }
        xs[x_1] && NoPerm < 1 / 2 ==> qpRange5(x_1) && invRecv5(x_1) == x_1
      );
      assume (forall o_9: Ref ::
        { invRecv5(o_9) }
        (xs[invRecv5(o_9)] && NoPerm < 1 / 2) && qpRange5(o_9) ==> invRecv5(o_9) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0240.vpr@87.12--87.57) [79380]"}
      (forall x_1: Ref ::
      { Heap[x_1, data] } { QPMask[x_1, data] } { xs[x_1] }
      xs[x_1] ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { Heap[x_1, data] } { QPMask[x_1, data] } { xs[x_1] }
        xs[x_1] && 1 / 2 > NoPerm ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, data] }
        ((xs[invRecv5(o_9)] && NoPerm < 1 / 2) && qpRange5(o_9) ==> (NoPerm < 1 / 2 ==> invRecv5(o_9) == o_9) && QPMask[o_9, data] == Mask[o_9, data] + 1 / 2) && (!((xs[invRecv5(o_9)] && NoPerm < 1 / 2) && qpRange5(o_9)) ==> QPMask[o_9, data] == Mask[o_9, data])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != data ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: fold acc(bla_qp(xs), 1 / 2) -- 0240.vpr@89.3--89.28
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Folding bla_qp(xs) might fail. Fraction 1 / 2 might be negative. (0240.vpr@89.3--89.28) [79382]"}
        (forall x_2_2: Ref ::
        { Heap[x_2_2, data] } { QPMask[x_2_2, data] } { xs[x_2_2] }
        xs[x_2_2] && dummyFunction(Heap[x_2_2, data]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver x is injective
      assert {:msg "  Folding bla_qp(xs) might fail. Quantified resource x.data might not be injective. (0240.vpr@89.3--89.28) [79383]"}
        (forall x_2_2: Ref, x_2_3: Ref ::
        { neverTriggered6(x_2_2), neverTriggered6(x_2_3) }
        (((x_2_2 != x_2_3 && xs[x_2_2]) && xs[x_2_3]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> x_2_2 != x_2_3
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding bla_qp(xs) might fail. There might be insufficient permission to access x.data (0240.vpr@89.3--89.28) [79384]"}
        (forall x_2_2: Ref ::
        { Heap[x_2_2, data] } { QPMask[x_2_2, data] } { xs[x_2_2] }
        xs[x_2_2] ==> Mask[x_2_2, data] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_2_2: Ref ::
        { Heap[x_2_2, data] } { QPMask[x_2_2, data] } { xs[x_2_2] }
        xs[x_2_2] && NoPerm < 1 / 2 ==> qpRange6(x_2_2) && invRecv6(x_2_2) == x_2_2
      );
      assume (forall o_9: Ref ::
        { invRecv6(o_9) }
        xs[invRecv6(o_9)] && (NoPerm < 1 / 2 && qpRange6(o_9)) ==> invRecv6(o_9) == o_9
      );
    
    // -- assume permission updates for field data
      assume (forall o_9: Ref ::
        { QPMask[o_9, data] }
        (xs[invRecv6(o_9)] && (NoPerm < 1 / 2 && qpRange6(o_9)) ==> invRecv6(o_9) == o_9 && QPMask[o_9, data] == Mask[o_9, data] - 1 / 2) && (!(xs[invRecv6(o_9)] && (NoPerm < 1 / 2 && qpRange6(o_9))) ==> QPMask[o_9, data] == Mask[o_9, data])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != data ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assert {:msg "  Folding bla_qp(xs) might fail. Assertion foo_qp(xs) might not hold. (0240.vpr@89.3--89.28) [79385]"}
      foo_qp(Heap, xs);
    perm := 1 / 2;
    assert {:msg "  Folding bla_qp(xs) might fail. Fraction 1 / 2 might be negative. (0240.vpr@89.3--89.28) [79386]"}
      perm >= NoPerm;
    Mask := Mask[null, bla_qp(xs):=Mask[null, bla_qp(xs)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume bla_qp#trigger(Heap, bla_qp(xs));
    assume Heap[null, bla_qp(xs)] == FrameFragment(bla_qp#condqp2(Heap, xs));
    if (!HasDirectPerm(Mask, null, bla_qp(xs))) {
      Heap := Heap[null, bla_qp#sm(xs):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, bla_qp(xs):=freshVersion];
    }
    // register all known folded permissions guarded by predicate bla_qp
    havoc newPMask;
    assume (forall <A, B> o_49: Ref, f_29: (Field A B) ::
      { newPMask[o_49, f_29] }
      Heap[null, bla_qp#sm(xs)][o_49, f_29] ==> newPMask[o_49, f_29]
    );
    assume (forall x_3: Ref ::
      
      xs[x_3] ==> newPMask[x_3, data]
    );
    Heap := Heap[null, bla_qp#sm(xs):=newPMask];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test04a_qp
// ==================================================

procedure test04a_qp(xs: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var QPMask: MaskType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0240.vpr@93.12--93.32) [79387]"}
      perm >= NoPerm;
    Mask := Mask[null, bla_qp(xs):=Mask[null, bla_qp(xs)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert (unfolding acc(bla_qp(xs), 1 / 2) in true) -- 0240.vpr@95.3--95.48
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (unfolding acc(bla_qp(xs), 1 / 2) in true)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume bla_qp#trigger(UnfoldingHeap, bla_qp(xs));
      assume UnfoldingHeap[null, bla_qp(xs)] == FrameFragment(bla_qp#condqp2(UnfoldingHeap, xs));
      ExhaleWellDef1Heap := UnfoldingHeap;
      ExhaleWellDef1Mask := UnfoldingMask;
      perm := 1 / 2;
      assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0240.vpr@95.10--95.48) [79388]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access bla_qp(xs) (0240.vpr@95.10--95.48) [79389]"}
          perm <= UnfoldingMask[null, bla_qp(xs)];
      }
      UnfoldingMask := UnfoldingMask[null, bla_qp(xs):=UnfoldingMask[null, bla_qp(xs)] - perm];
      havoc QPMask;
      assert {:msg "  Assert might fail. Quantified resource x.data might not be injective. (0240.vpr@95.10--95.48) [79390]"}
        (forall x: Ref, x_46: Ref ::
        
        (((x != x_46 && xs[x]) && xs[x_46]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> x != x_46
      );
      
      // -- Define Inverse Function
        assume (forall x: Ref ::
          { UnfoldingHeap[x, data] } { QPMask[x, data] } { xs[x] }
          xs[x] && NoPerm < 1 / 2 ==> qpRange7(x) && invRecv7(x) == x
        );
        assume (forall o_9: Ref ::
          { invRecv7(o_9) }
          (xs[invRecv7(o_9)] && NoPerm < 1 / 2) && qpRange7(o_9) ==> invRecv7(o_9) == o_9
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0240.vpr@95.10--95.48) [79391]"}
        (forall x: Ref ::
        { UnfoldingHeap[x, data] } { QPMask[x, data] } { xs[x] }
        xs[x] ==> 1 / 2 >= NoPerm
      );
      
      // -- Assume set of fields is nonNull
        assume (forall x: Ref ::
          { UnfoldingHeap[x, data] } { QPMask[x, data] } { xs[x] }
          xs[x] && 1 / 2 > NoPerm ==> x != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, data] }
          ((xs[invRecv7(o_9)] && NoPerm < 1 / 2) && qpRange7(o_9) ==> (NoPerm < 1 / 2 ==> invRecv7(o_9) == o_9) && QPMask[o_9, data] == UnfoldingMask[o_9, data] + 1 / 2) && (!((xs[invRecv7(o_9)] && NoPerm < 1 / 2) && qpRange7(o_9)) ==> QPMask[o_9, data] == UnfoldingMask[o_9, data])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { UnfoldingMask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != data ==> UnfoldingMask[o_9, f_5] == QPMask[o_9, f_5]
        );
      UnfoldingMask := QPMask;
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assume foo_qp(UnfoldingHeap, xs);
      assume state(UnfoldingHeap, UnfoldingMask);
      
      // -- Free assumptions (exp module)
        // register all known folded permissions guarded by predicate bla_qp
        havoc newPMask;
        assume (forall <A, B> o_53: Ref, f_70: (Field A B) ::
          { newPMask[o_53, f_70] }
          Heap[null, bla_qp#sm(xs)][o_53, f_70] ==> newPMask[o_53, f_70]
        );
        assume (forall x_1: Ref ::
          
          xs[x_1] ==> newPMask[x_1, data]
        );
        Heap := Heap[null, bla_qp#sm(xs):=newPMask];
        assume state(Heap, Mask);
    
    // -- Free assumptions (exhale module)
      // register all known folded permissions guarded by predicate bla_qp
      havoc newPMask;
      assume (forall <A, B> o_37: Ref, f_16: (Field A B) ::
        { newPMask[o_37, f_16] }
        Heap[null, bla_qp#sm(xs)][o_37, f_16] ==> newPMask[o_37, f_16]
      );
      assume (forall x_2_2: Ref ::
        
        xs[x_2_2] ==> newPMask[x_2_2, data]
      );
      Heap := Heap[null, bla_qp#sm(xs):=newPMask];
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test04b_qp
// ==================================================

procedure test04b_qp(xs: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var QPMask: MaskType;
  var ExhaleHeap: HeapType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0240.vpr@99.12--99.32) [79393]"}
      perm >= NoPerm;
    Mask := Mask[null, bla_qp(xs):=Mask[null, bla_qp(xs)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert (unfolding acc(bla_qp(xs), 1 / 2) in foo_qp(xs)) -- 0240.vpr@102.3--102.54
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (unfolding acc(bla_qp(xs), 1 / 2) in foo_qp(xs))
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume bla_qp#trigger(UnfoldingHeap, bla_qp(xs));
      assume UnfoldingHeap[null, bla_qp(xs)] == FrameFragment(bla_qp#condqp2(UnfoldingHeap, xs));
      ExhaleWellDef1Heap := UnfoldingHeap;
      ExhaleWellDef1Mask := UnfoldingMask;
      perm := 1 / 2;
      assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0240.vpr@102.10--102.54) [79394]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access bla_qp(xs) (0240.vpr@102.10--102.54) [79395]"}
          perm <= UnfoldingMask[null, bla_qp(xs)];
      }
      UnfoldingMask := UnfoldingMask[null, bla_qp(xs):=UnfoldingMask[null, bla_qp(xs)] - perm];
      havoc QPMask;
      assert {:msg "  Assert might fail. Quantified resource x.data might not be injective. (0240.vpr@102.10--102.54) [79396]"}
        (forall x: Ref, x_46: Ref ::
        
        (((x != x_46 && xs[x]) && xs[x_46]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> x != x_46
      );
      
      // -- Define Inverse Function
        assume (forall x: Ref ::
          { UnfoldingHeap[x, data] } { QPMask[x, data] } { xs[x] }
          xs[x] && NoPerm < 1 / 2 ==> qpRange8(x) && invRecv8(x) == x
        );
        assume (forall o_9: Ref ::
          { invRecv8(o_9) }
          (xs[invRecv8(o_9)] && NoPerm < 1 / 2) && qpRange8(o_9) ==> invRecv8(o_9) == o_9
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0240.vpr@102.10--102.54) [79397]"}
        (forall x: Ref ::
        { UnfoldingHeap[x, data] } { QPMask[x, data] } { xs[x] }
        xs[x] ==> 1 / 2 >= NoPerm
      );
      
      // -- Assume set of fields is nonNull
        assume (forall x: Ref ::
          { UnfoldingHeap[x, data] } { QPMask[x, data] } { xs[x] }
          xs[x] && 1 / 2 > NoPerm ==> x != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, data] }
          ((xs[invRecv8(o_9)] && NoPerm < 1 / 2) && qpRange8(o_9) ==> (NoPerm < 1 / 2 ==> invRecv8(o_9) == o_9) && QPMask[o_9, data] == UnfoldingMask[o_9, data] + 1 / 2) && (!((xs[invRecv8(o_9)] && NoPerm < 1 / 2) && qpRange8(o_9)) ==> QPMask[o_9, data] == UnfoldingMask[o_9, data])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { UnfoldingMask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != data ==> UnfoldingMask[o_9, f_5] == QPMask[o_9, f_5]
        );
      UnfoldingMask := QPMask;
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assume foo_qp(UnfoldingHeap, xs);
      assume state(UnfoldingHeap, UnfoldingMask);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := UnfoldingHeap;
        ExhaleWellDef1Mask := UnfoldingMask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver x is injective
          assert {:msg "  Precondition of function foo_qp might not hold. Quantified resource x.data might not be injective. (0240.vpr@102.44--102.54) [79398]"}
            (forall x_1: Ref, x_1_1: Ref ::
            { neverTriggered9(x_1), neverTriggered9(x_1_1) }
            (((x_1 != x_1_1 && xs[x_1]) && xs[x_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function foo_qp might not hold. There might be insufficient permission to access x.data (0240.vpr@102.44--102.54) [79399]"}
            (forall x_1: Ref ::
            { UnfoldingHeap[x_1, data] } { QPMask[x_1, data] } { xs[x_1] }
            xs[x_1] ==> FullPerm > NoPerm ==> UnfoldingMask[x_1, data] > NoPerm
          );
        
        // -- assumptions for inverse of receiver x
          assume (forall x_1: Ref ::
            { UnfoldingHeap[x_1, data] } { QPMask[x_1, data] } { xs[x_1] }
            xs[x_1] && NoPerm < FullPerm ==> qpRange9(x_1) && invRecv9(x_1) == x_1
          );
          assume (forall o_9: Ref ::
            { invRecv9(o_9) }
            xs[invRecv9(o_9)] && (NoPerm < FullPerm && qpRange9(o_9)) ==> invRecv9(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
        UnfoldingHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      
      // -- Free assumptions (exp module)
        // register all known folded permissions guarded by predicate bla_qp
        havoc newPMask;
        assume (forall <A, B> o_59: Ref, f_26: (Field A B) ::
          { newPMask[o_59, f_26] }
          Heap[null, bla_qp#sm(xs)][o_59, f_26] ==> newPMask[o_59, f_26]
        );
        assume (forall x_2_2: Ref ::
          
          xs[x_2_2] ==> newPMask[x_2_2, data]
        );
        Heap := Heap[null, bla_qp#sm(xs):=newPMask];
        assume state(Heap, Mask);
    assert {:msg "  Assert might fail. Assertion foo_qp(xs) might not hold. (0240.vpr@102.10--102.54) [79400]"}
      foo_qp(Heap, xs);
    
    // -- Free assumptions (exhale module)
      // register all known folded permissions guarded by predicate bla_qp
      havoc newPMask;
      assume (forall <A, B> o_24: Ref, f_134: (Field A B) ::
        { newPMask[o_24, f_134] }
        Heap[null, bla_qp#sm(xs)][o_24, f_134] ==> newPMask[o_24, f_134]
      );
      assume (forall x_3: Ref ::
        
        xs[x_3] ==> newPMask[x_3, data]
      );
      Heap := Heap[null, bla_qp#sm(xs):=newPMask];
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}