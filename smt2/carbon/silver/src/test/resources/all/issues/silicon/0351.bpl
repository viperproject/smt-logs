// 
// Translation of Viper program.
// 
// Date:         2024-12-27 02:41:07
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0351.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0351-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_12: Ref, f_16: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_12, f_16] }
  Heap[o_12, $allocated] ==> Heap[Heap[o_12, f_16], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_46: Ref, f_37: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_46, f_37] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_46, f_37) ==> Heap[o_46, f_37] == ExhaleHeap[o_46, f_37]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_22), ExhaleHeap[null, PredicateMaskField(pm_f_22)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsPredicateField(pm_f_22) ==> Heap[null, PredicateMaskField(pm_f_22)] == ExhaleHeap[null, PredicateMaskField(pm_f_22)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_22) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsPredicateField(pm_f_22) ==> (forall <A, B> o2_22: Ref, f_37: (Field A B) ::
    { ExhaleHeap[o2_22, f_37] }
    Heap[null, PredicateMaskField(pm_f_22)][o2_22, f_37] ==> Heap[o2_22, f_37] == ExhaleHeap[o2_22, f_37]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_22), ExhaleHeap[null, WandMaskField(pm_f_22)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsWandField(pm_f_22) ==> Heap[null, WandMaskField(pm_f_22)] == ExhaleHeap[null, WandMaskField(pm_f_22)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_22) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsWandField(pm_f_22) ==> (forall <A, B> o2_22: Ref, f_37: (Field A B) ::
    { ExhaleHeap[o2_22, f_37] }
    Heap[null, WandMaskField(pm_f_22)][o2_22, f_37] ==> Heap[o2_22, f_37] == ExhaleHeap[o2_22, f_37]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_46: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_46, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_46, $allocated] ==> ExhaleHeap[o_46, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_12: Ref, f_24: (Field A B), v: B ::
  { Heap[o_12, f_24:=v] }
  succHeap(Heap, Heap[o_12, f_24:=v])
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

function  neverTriggered1(n_0_1: Ref): bool;
function  neverTriggered2(n_0_3: Ref): bool;
function  neverTriggered3(n_0_4: Ref): bool;
function  neverTriggered4(n_0_6: Ref): bool;
function  neverTriggered5(n_0_8: Ref): bool;
function  neverTriggered6(n_0_1: Ref): bool;
function  neverTriggered7(n_0_3: Ref): bool;
function  neverTriggered8(n_0_4: Ref): bool;
function  neverTriggered9(n_0_6: Ref): bool;
function  neverTriggered10(n_0_8: Ref): bool;
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
function  invRecv10(recv: Ref): Ref;
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
function  qpRange10(recv: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 0: dummy
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

// ==================================================
// Translation of function dummy
// ==================================================

// Uninterpreted function definitions
function  dummy(Heap: HeapType, b_24: bool): bool;
function  dummy'(Heap: HeapType, b_24: bool): bool;
axiom (forall Heap: HeapType, b_24: bool ::
  { dummy(Heap, b_24) }
  dummy(Heap, b_24) == dummy'(Heap, b_24) && dummyFunction(dummy#triggerStateless(b_24))
);
axiom (forall Heap: HeapType, b_24: bool ::
  { dummy'(Heap, b_24) }
  dummyFunction(dummy#triggerStateless(b_24))
);

// Framing axioms
function  dummy#frame(frame: FrameType, b_24: bool): bool;
axiom (forall Heap: HeapType, Mask: MaskType, b_24: bool ::
  { state(Heap, Mask), dummy'(Heap, b_24) }
  state(Heap, Mask) ==> dummy'(Heap, b_24) == dummy#frame(EmptyFrame, b_24)
);

// Trigger function (controlling recursive postconditions)
function  dummy#trigger(frame: FrameType, b_24: bool): bool;

// State-independent trigger function
function  dummy#triggerStateless(b_24: bool): bool;

// Check contract well-formedness and postcondition
procedure dummy#definedness(b_24: bool) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
}

// ==================================================
// Translation of method inhExhTestA
// ==================================================

procedure inhExhTestA(g_1: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall n_0: Ref :: { n_0.next } (n_0 in g) ==> acc(n_0.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n_0.next might not be injective. (0351.vpr@9.12--9.79) [206595]"}
      (forall n_0_1: Ref, n_0_1_1: Ref ::
      
      (((n_0_1 != n_0_1_1 && g_1[n_0_1]) && g_1[n_0_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_0_1 != n_0_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n_0_1: Ref ::
        { Heap[n_0_1, next] } { QPMask[n_0_1, next] } { Heap[n_0_1, next] }
        g_1[n_0_1] && NoPerm < FullPerm ==> qpRange1(n_0_1) && invRecv1(n_0_1) == n_0_1
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        (g_1[invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4) ==> invRecv1(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_0_1: Ref ::
        { Heap[n_0_1, next] } { QPMask[n_0_1, next] } { Heap[n_0_1, next] }
        g_1[n_0_1] ==> n_0_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        ((g_1[invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4) ==> (NoPerm < FullPerm ==> invRecv1(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + FullPerm) && (!((g_1[invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    
    // -- Check definedness of (forall n_0: Ref :: { n_0.next } (n_0 in g) ==> acc(n_0.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n_0.next might not be injective. (0351.vpr@10.11--10.78) [206596]"}
      (forall n_0_3: Ref, n_0_3_1: Ref ::
      
      (((n_0_3 != n_0_3_1 && g_1[n_0_3]) && g_1[n_0_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_0_3 != n_0_3_1
    );
    
    // -- Define Inverse Function
      assume (forall n_0_3: Ref ::
        { PostHeap[n_0_3, next] } { QPMask[n_0_3, next] } { PostHeap[n_0_3, next] }
        g_1[n_0_3] && NoPerm < FullPerm ==> qpRange2(n_0_3) && invRecv2(n_0_3) == n_0_3
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        (g_1[invRecv2(o_4)] && NoPerm < FullPerm) && qpRange2(o_4) ==> invRecv2(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_0_3: Ref ::
        { PostHeap[n_0_3, next] } { QPMask[n_0_3, next] } { PostHeap[n_0_3, next] }
        g_1[n_0_3] ==> n_0_3 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        ((g_1[invRecv2(o_4)] && NoPerm < FullPerm) && qpRange2(o_4) ==> (NoPerm < FullPerm ==> invRecv2(o_4) == o_4) && QPMask[o_4, next] == PostMask[o_4, next] + FullPerm) && (!((g_1[invRecv2(o_4)] && NoPerm < FullPerm) && qpRange2(o_4)) ==> QPMask[o_4, next] == PostMask[o_4, next])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != next ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: exhale (forall n_0: Ref ::
  //     { n_0.next }
  //     (n_0 in g) ==> acc(n_0.next, 1 / 1)) -- 0351.vpr@12.3--12.77
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall n_0: Ref :: { n_0.next } (n_0 in g) ==> acc(n_0.next, 1 / 1))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Exhale might fail. Fraction 1 / 1 might be negative. (0351.vpr@12.10--12.77) [206597]"}
        (forall n_0_6: Ref ::
        { Heap[n_0_6, next] } { QPMask[n_0_6, next] } { Heap[n_0_6, next] }
        g_1[n_0_6] && dummyFunction(Heap[n_0_6, next]) ==> 1 / 1 >= NoPerm
      );
    
    // -- check if receiver n_0 is injective
      assert {:msg "  Exhale might fail. Quantified resource n_0.next might not be injective. (0351.vpr@12.10--12.77) [206598]"}
        (forall n_0_6: Ref, n_0_6_1: Ref ::
        { neverTriggered4(n_0_6), neverTriggered4(n_0_6_1) }
        (((n_0_6 != n_0_6_1 && g_1[n_0_6]) && g_1[n_0_6_1]) && NoPerm < 1 / 1) && NoPerm < 1 / 1 ==> n_0_6 != n_0_6_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access n_0.next (0351.vpr@12.10--12.77) [206599]"}
        (forall n_0_6: Ref ::
        { Heap[n_0_6, next] } { QPMask[n_0_6, next] } { Heap[n_0_6, next] }
        g_1[n_0_6] ==> Mask[n_0_6, next] >= 1 / 1
      );
    
    // -- assumptions for inverse of receiver n_0
      assume (forall n_0_6: Ref ::
        { Heap[n_0_6, next] } { QPMask[n_0_6, next] } { Heap[n_0_6, next] }
        g_1[n_0_6] && NoPerm < 1 / 1 ==> qpRange4(n_0_6) && invRecv4(n_0_6) == n_0_6
      );
      assume (forall o_4: Ref ::
        { invRecv4(o_4) }
        g_1[invRecv4(o_4)] && (NoPerm < 1 / 1 && qpRange4(o_4)) ==> invRecv4(o_4) == o_4
      );
    
    // -- assume permission updates for field next
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        (g_1[invRecv4(o_4)] && (NoPerm < 1 / 1 && qpRange4(o_4)) ==> invRecv4(o_4) == o_4 && QPMask[o_4, next] == Mask[o_4, next] - 1 / 1) && (!(g_1[invRecv4(o_4)] && (NoPerm < 1 / 1 && qpRange4(o_4))) ==> QPMask[o_4, next] == Mask[o_4, next])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall n_0: Ref ::
  //     { n_0.next }
  //     (n_0 in g) ==> acc(n_0.next, 1 / 1)) -- 0351.vpr@13.3--13.77
    
    // -- Check definedness of (forall n_0: Ref :: { n_0.next } (n_0 in g) ==> acc(n_0.next, 1 / 1))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource n_0.next might not be injective. (0351.vpr@13.10--13.77) [206600]"}
      (forall n_0_8: Ref, n_0_8_1: Ref ::
      
      (((n_0_8 != n_0_8_1 && g_1[n_0_8]) && g_1[n_0_8_1]) && NoPerm < 1 / 1) && NoPerm < 1 / 1 ==> n_0_8 != n_0_8_1
    );
    
    // -- Define Inverse Function
      assume (forall n_0_8: Ref ::
        { Heap[n_0_8, next] } { QPMask[n_0_8, next] } { Heap[n_0_8, next] }
        g_1[n_0_8] && NoPerm < 1 / 1 ==> qpRange5(n_0_8) && invRecv5(n_0_8) == n_0_8
      );
      assume (forall o_4: Ref ::
        { invRecv5(o_4) }
        (g_1[invRecv5(o_4)] && NoPerm < 1 / 1) && qpRange5(o_4) ==> invRecv5(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Inhale might fail. Fraction 1 / 1 might be negative. (0351.vpr@13.10--13.77) [206601]"}
      (forall n_0_8: Ref ::
      { Heap[n_0_8, next] } { QPMask[n_0_8, next] } { Heap[n_0_8, next] }
      g_1[n_0_8] ==> 1 / 1 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n_0_8: Ref ::
        { Heap[n_0_8, next] } { QPMask[n_0_8, next] } { Heap[n_0_8, next] }
        g_1[n_0_8] && 1 / 1 > NoPerm ==> n_0_8 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        ((g_1[invRecv5(o_4)] && NoPerm < 1 / 1) && qpRange5(o_4) ==> (NoPerm < 1 / 1 ==> invRecv5(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + 1 / 1) && (!((g_1[invRecv5(o_4)] && NoPerm < 1 / 1) && qpRange5(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver n_0 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n_0.next might not be injective. (0351.vpr@10.11--10.78) [206602]"}
        (forall n_0_4: Ref, n_0_4_1: Ref ::
        { neverTriggered3(n_0_4), neverTriggered3(n_0_4_1) }
        (((n_0_4 != n_0_4_1 && g_1[n_0_4]) && g_1[n_0_4_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_0_4 != n_0_4_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of inhExhTestA might not hold. There might be insufficient permission to access n_0.next (0351.vpr@10.11--10.78) [206603]"}
        (forall n_0_4: Ref ::
        { Heap[n_0_4, next] } { QPMask[n_0_4, next] } { Heap[n_0_4, next] }
        g_1[n_0_4] ==> Mask[n_0_4, next] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver n_0
      assume (forall n_0_4: Ref ::
        { Heap[n_0_4, next] } { QPMask[n_0_4, next] } { Heap[n_0_4, next] }
        g_1[n_0_4] && NoPerm < FullPerm ==> qpRange3(n_0_4) && invRecv3(n_0_4) == n_0_4
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        g_1[invRecv3(o_4)] && (NoPerm < FullPerm && qpRange3(o_4)) ==> invRecv3(o_4) == o_4
      );
    
    // -- assume permission updates for field next
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        (g_1[invRecv3(o_4)] && (NoPerm < FullPerm && qpRange3(o_4)) ==> invRecv3(o_4) == o_4 && QPMask[o_4, next] == Mask[o_4, next] - FullPerm) && (!(g_1[invRecv3(o_4)] && (NoPerm < FullPerm && qpRange3(o_4))) ==> QPMask[o_4, next] == Mask[o_4, next])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method inhExhTestB
// ==================================================

procedure inhExhTestB(g_1: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall n_0: Ref :: { n_0.next } (n_0 in g) ==> acc(n_0.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n_0.next might not be injective. (0351.vpr@17.12--17.79) [206604]"}
      (forall n_0_1: Ref, n_0_1_1: Ref ::
      
      (((n_0_1 != n_0_1_1 && g_1[n_0_1]) && g_1[n_0_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_0_1 != n_0_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n_0_1: Ref ::
        { Heap[n_0_1, next] } { QPMask[n_0_1, next] } { Heap[n_0_1, next] }
        g_1[n_0_1] && NoPerm < FullPerm ==> qpRange6(n_0_1) && invRecv6(n_0_1) == n_0_1
      );
      assume (forall o_4: Ref ::
        { invRecv6(o_4) }
        (g_1[invRecv6(o_4)] && NoPerm < FullPerm) && qpRange6(o_4) ==> invRecv6(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_0_1: Ref ::
        { Heap[n_0_1, next] } { QPMask[n_0_1, next] } { Heap[n_0_1, next] }
        g_1[n_0_1] ==> n_0_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        ((g_1[invRecv6(o_4)] && NoPerm < FullPerm) && qpRange6(o_4) ==> (NoPerm < FullPerm ==> invRecv6(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + FullPerm) && (!((g_1[invRecv6(o_4)] && NoPerm < FullPerm) && qpRange6(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    
    // -- Check definedness of (forall n_0: Ref :: { n_0.next } (n_0 in g) ==> acc(n_0.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n_0.next might not be injective. (0351.vpr@18.11--18.78) [206605]"}
      (forall n_0_3: Ref, n_0_3_1: Ref ::
      
      (((n_0_3 != n_0_3_1 && g_1[n_0_3]) && g_1[n_0_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_0_3 != n_0_3_1
    );
    
    // -- Define Inverse Function
      assume (forall n_0_3: Ref ::
        { PostHeap[n_0_3, next] } { QPMask[n_0_3, next] } { PostHeap[n_0_3, next] }
        g_1[n_0_3] && NoPerm < FullPerm ==> qpRange7(n_0_3) && invRecv7(n_0_3) == n_0_3
      );
      assume (forall o_4: Ref ::
        { invRecv7(o_4) }
        (g_1[invRecv7(o_4)] && NoPerm < FullPerm) && qpRange7(o_4) ==> invRecv7(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_0_3: Ref ::
        { PostHeap[n_0_3, next] } { QPMask[n_0_3, next] } { PostHeap[n_0_3, next] }
        g_1[n_0_3] ==> n_0_3 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        ((g_1[invRecv7(o_4)] && NoPerm < FullPerm) && qpRange7(o_4) ==> (NoPerm < FullPerm ==> invRecv7(o_4) == o_4) && QPMask[o_4, next] == PostMask[o_4, next] + FullPerm) && (!((g_1[invRecv7(o_4)] && NoPerm < FullPerm) && qpRange7(o_4)) ==> QPMask[o_4, next] == PostMask[o_4, next])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != next ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: exhale (forall n_0: Ref ::
  //     { n_0.next }
  //     (n_0 in g) ==> acc(n_0.next, 1 / 2)) -- 0351.vpr@20.3--20.77
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall n_0: Ref :: { n_0.next } (n_0 in g) ==> acc(n_0.next, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Exhale might fail. Fraction 1 / 2 might be negative. (0351.vpr@20.10--20.77) [206606]"}
        (forall n_0_6: Ref ::
        { Heap[n_0_6, next] } { QPMask[n_0_6, next] } { Heap[n_0_6, next] }
        g_1[n_0_6] && dummyFunction(Heap[n_0_6, next]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver n_0 is injective
      assert {:msg "  Exhale might fail. Quantified resource n_0.next might not be injective. (0351.vpr@20.10--20.77) [206607]"}
        (forall n_0_6: Ref, n_0_6_1: Ref ::
        { neverTriggered9(n_0_6), neverTriggered9(n_0_6_1) }
        (((n_0_6 != n_0_6_1 && g_1[n_0_6]) && g_1[n_0_6_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_0_6 != n_0_6_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access n_0.next (0351.vpr@20.10--20.77) [206608]"}
        (forall n_0_6: Ref ::
        { Heap[n_0_6, next] } { QPMask[n_0_6, next] } { Heap[n_0_6, next] }
        g_1[n_0_6] ==> Mask[n_0_6, next] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver n_0
      assume (forall n_0_6: Ref ::
        { Heap[n_0_6, next] } { QPMask[n_0_6, next] } { Heap[n_0_6, next] }
        g_1[n_0_6] && NoPerm < 1 / 2 ==> qpRange9(n_0_6) && invRecv9(n_0_6) == n_0_6
      );
      assume (forall o_4: Ref ::
        { invRecv9(o_4) }
        g_1[invRecv9(o_4)] && (NoPerm < 1 / 2 && qpRange9(o_4)) ==> invRecv9(o_4) == o_4
      );
    
    // -- assume permission updates for field next
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        (g_1[invRecv9(o_4)] && (NoPerm < 1 / 2 && qpRange9(o_4)) ==> invRecv9(o_4) == o_4 && QPMask[o_4, next] == Mask[o_4, next] - 1 / 2) && (!(g_1[invRecv9(o_4)] && (NoPerm < 1 / 2 && qpRange9(o_4))) ==> QPMask[o_4, next] == Mask[o_4, next])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall n_0: Ref ::
  //     { n_0.next }
  //     (n_0 in g) ==> acc(n_0.next, 1 / 2)) -- 0351.vpr@21.3--21.77
    
    // -- Check definedness of (forall n_0: Ref :: { n_0.next } (n_0 in g) ==> acc(n_0.next, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource n_0.next might not be injective. (0351.vpr@21.10--21.77) [206609]"}
      (forall n_0_8: Ref, n_0_8_1: Ref ::
      
      (((n_0_8 != n_0_8_1 && g_1[n_0_8]) && g_1[n_0_8_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_0_8 != n_0_8_1
    );
    
    // -- Define Inverse Function
      assume (forall n_0_8: Ref ::
        { Heap[n_0_8, next] } { QPMask[n_0_8, next] } { Heap[n_0_8, next] }
        g_1[n_0_8] && NoPerm < 1 / 2 ==> qpRange10(n_0_8) && invRecv10(n_0_8) == n_0_8
      );
      assume (forall o_4: Ref ::
        { invRecv10(o_4) }
        (g_1[invRecv10(o_4)] && NoPerm < 1 / 2) && qpRange10(o_4) ==> invRecv10(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Inhale might fail. Fraction 1 / 2 might be negative. (0351.vpr@21.10--21.77) [206610]"}
      (forall n_0_8: Ref ::
      { Heap[n_0_8, next] } { QPMask[n_0_8, next] } { Heap[n_0_8, next] }
      g_1[n_0_8] ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n_0_8: Ref ::
        { Heap[n_0_8, next] } { QPMask[n_0_8, next] } { Heap[n_0_8, next] }
        g_1[n_0_8] && 1 / 2 > NoPerm ==> n_0_8 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        ((g_1[invRecv10(o_4)] && NoPerm < 1 / 2) && qpRange10(o_4) ==> (NoPerm < 1 / 2 ==> invRecv10(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + 1 / 2) && (!((g_1[invRecv10(o_4)] && NoPerm < 1 / 2) && qpRange10(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver n_0 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n_0.next might not be injective. (0351.vpr@18.11--18.78) [206611]"}
        (forall n_0_4: Ref, n_0_4_1: Ref ::
        { neverTriggered8(n_0_4), neverTriggered8(n_0_4_1) }
        (((n_0_4 != n_0_4_1 && g_1[n_0_4]) && g_1[n_0_4_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_0_4 != n_0_4_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of inhExhTestB might not hold. There might be insufficient permission to access n_0.next (0351.vpr@18.11--18.78) [206612]"}
        (forall n_0_4: Ref ::
        { Heap[n_0_4, next] } { QPMask[n_0_4, next] } { Heap[n_0_4, next] }
        g_1[n_0_4] ==> Mask[n_0_4, next] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver n_0
      assume (forall n_0_4: Ref ::
        { Heap[n_0_4, next] } { QPMask[n_0_4, next] } { Heap[n_0_4, next] }
        g_1[n_0_4] && NoPerm < FullPerm ==> qpRange8(n_0_4) && invRecv8(n_0_4) == n_0_4
      );
      assume (forall o_4: Ref ::
        { invRecv8(o_4) }
        g_1[invRecv8(o_4)] && (NoPerm < FullPerm && qpRange8(o_4)) ==> invRecv8(o_4) == o_4
      );
    
    // -- assume permission updates for field next
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        (g_1[invRecv8(o_4)] && (NoPerm < FullPerm && qpRange8(o_4)) ==> invRecv8(o_4) == o_4 && QPMask[o_4, next] == Mask[o_4, next] - FullPerm) && (!(g_1[invRecv8(o_4)] && (NoPerm < FullPerm && qpRange8(o_4))) ==> QPMask[o_4, next] == Mask[o_4, next])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}