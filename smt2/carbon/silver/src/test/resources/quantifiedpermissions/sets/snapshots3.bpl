// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:38:54
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/sets/snapshots3.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/sets/snapshots3-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_39: Ref, f_21: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_39, f_21] }
  Heap[o_39, $allocated] ==> Heap[Heap[o_39, f_21], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_48: Ref, f_66: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_48, f_66] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_48, f_66) ==> Heap[o_48, f_66] == ExhaleHeap[o_48, f_66]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_45: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_45), ExhaleHeap[null, PredicateMaskField(pm_f_45)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_45) && IsPredicateField(pm_f_45) ==> Heap[null, PredicateMaskField(pm_f_45)] == ExhaleHeap[null, PredicateMaskField(pm_f_45)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_45: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_45) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_45) && IsPredicateField(pm_f_45) ==> (forall <A, B> o2_45: Ref, f_66: (Field A B) ::
    { ExhaleHeap[o2_45, f_66] }
    Heap[null, PredicateMaskField(pm_f_45)][o2_45, f_66] ==> Heap[o2_45, f_66] == ExhaleHeap[o2_45, f_66]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_45: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_45), ExhaleHeap[null, WandMaskField(pm_f_45)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_45) && IsWandField(pm_f_45) ==> Heap[null, WandMaskField(pm_f_45)] == ExhaleHeap[null, WandMaskField(pm_f_45)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_45: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_45) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_45) && IsWandField(pm_f_45) ==> (forall <A, B> o2_45: Ref, f_66: (Field A B) ::
    { ExhaleHeap[o2_45, f_66] }
    Heap[null, WandMaskField(pm_f_45)][o2_45, f_66] ==> Heap[o2_45, f_66] == ExhaleHeap[o2_45, f_66]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_48: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_48, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_48, $allocated] ==> ExhaleHeap[o_48, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_39: Ref, f_53: (Field A B), v: B ::
  { Heap[o_39, f_53:=v] }
  succHeap(Heap, Heap[o_39, f_53:=v])
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
function  neverTriggered2(x_2_2: Ref): bool;
function  neverTriggered3(x_1: Ref): bool;
function  neverTriggered4(x_2_2: Ref): bool;
function  neverTriggered5(x_4_2: Ref): bool;
function  neverTriggered6(x: Ref): bool;
function  neverTriggered7(x_1: Ref): bool;
function  neverTriggered8(x_3: Ref): bool;
function  neverTriggered9(x_4_2: Ref): bool;
function  neverTriggered10(x_6: Ref): bool;
function  neverTriggered11(x: Ref): bool;
function  neverTriggered12(x_1: Ref): bool;
function  neverTriggered13(x_3: Ref): bool;
function  neverTriggered14(x_4_2: Ref): bool;
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
function  invRecv11(recv: Ref): Ref;
function  invRecv12(recv: Ref): Ref;
function  invRecv13(recv: Ref): Ref;
function  invRecv14(recv: Ref): Ref;
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
function  qpRange11(recv: Ref): bool;
function  qpRange12(recv: Ref): bool;
function  qpRange13(recv: Ref): bool;
function  qpRange14(recv: Ref): bool;

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

const unique n_85: Field NormalField (Set Ref);
axiom !IsPredicateField(n_85);
axiom !IsWandField(n_85);
const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);

// ==================================================
// Translation of predicate P
// ==================================================

type PredicateType_P;
function  P(xs: (Set Ref)): Field PredicateType_P FrameType;
function  P#sm(xs: (Set Ref)): Field PredicateType_P PMaskType;
axiom (forall xs: (Set Ref) ::
  { PredicateMaskField(P(xs)) }
  PredicateMaskField(P(xs)) == P#sm(xs)
);
axiom (forall xs: (Set Ref) ::
  { P(xs) }
  IsPredicateField(P(xs))
);
axiom (forall xs: (Set Ref) ::
  { P(xs) }
  getPredWandId(P(xs)) == 0
);
function  P#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  P#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall xs: (Set Ref), xs2: (Set Ref) ::
  { P(xs), P(xs2) }
  P(xs) == P(xs2) ==> xs == xs2
);
axiom (forall xs: (Set Ref), xs2: (Set Ref) ::
  { P#sm(xs), P#sm(xs2) }
  P#sm(xs) == P#sm(xs2) ==> xs == xs2
);

axiom (forall Heap: HeapType, xs: (Set Ref) ::
  { P#trigger(Heap, P(xs)) }
  P#everUsed(P(xs))
);

// ==================================================
// Function used for framing of quantified permission (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write)) in predicate P
// ==================================================

function  P#condqp1(Heap: HeapType, xs_1_1: (Set Ref)): int;
function  sk_P#condqp1(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, xs: (Set Ref) ::
  { P#condqp1(Heap2Heap, xs), P#condqp1(Heap1Heap, xs), succHeapTrans(Heap2Heap, Heap1Heap) }
  (xs[sk_P#condqp1(P#condqp1(Heap2Heap, xs), P#condqp1(Heap1Heap, xs))] && NoPerm < FullPerm <==> xs[sk_P#condqp1(P#condqp1(Heap2Heap, xs), P#condqp1(Heap1Heap, xs))] && NoPerm < FullPerm) && (xs[sk_P#condqp1(P#condqp1(Heap2Heap, xs), P#condqp1(Heap1Heap, xs))] && NoPerm < FullPerm ==> Heap2Heap[sk_P#condqp1(P#condqp1(Heap2Heap, xs), P#condqp1(Heap1Heap, xs)), f_7] == Heap1Heap[sk_P#condqp1(P#condqp1(Heap2Heap, xs), P#condqp1(Heap1Heap, xs)), f_7]) ==> P#condqp1(Heap2Heap, xs) == P#condqp1(Heap1Heap, xs)
);

procedure P#definedness(xs: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  
  // -- Check definedness of predicate body of P
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Predicate might not be well-formed. Quantified resource x.f might not be injective. (snapshots3.vpr@7.1--9.2) [182570]"}
      (forall x_2_2: Ref, x_2_3: Ref ::
      
      (((x_2_2 != x_2_3 && xs[x_2_2]) && xs[x_2_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_2_2 != x_2_3
    );
    
    // -- Define Inverse Function
      assume (forall x_2_2: Ref ::
        { Heap[x_2_2, f_7] } { QPMask[x_2_2, f_7] } { xs[x_2_2] }
        xs[x_2_2] && NoPerm < FullPerm ==> qpRange1(x_2_2) && invRecv1(x_2_2) == x_2_2
      );
      assume (forall o_9: Ref ::
        { invRecv1(o_9) }
        (xs[invRecv1(o_9)] && NoPerm < FullPerm) && qpRange1(o_9) ==> invRecv1(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_2_2: Ref ::
        { Heap[x_2_2, f_7] } { QPMask[x_2_2, f_7] } { xs[x_2_2] }
        xs[x_2_2] ==> x_2_2 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((xs[invRecv1(o_9)] && NoPerm < FullPerm) && qpRange1(o_9) ==> (NoPerm < FullPerm ==> invRecv1(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((xs[invRecv1(o_9)] && NoPerm < FullPerm) && qpRange1(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
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

function  inv#condqp2(Heap: HeapType, this_1_1: Ref): int;
function  sk_inv#condqp2(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, this: Ref ::
  { inv#condqp2(Heap2Heap, this), inv#condqp2(Heap1Heap, this), succHeapTrans(Heap2Heap, Heap1Heap) }
  (Heap2Heap[this, n_85][sk_inv#condqp2(inv#condqp2(Heap2Heap, this), inv#condqp2(Heap1Heap, this))] && NoPerm < FullPerm <==> Heap1Heap[this, n_85][sk_inv#condqp2(inv#condqp2(Heap2Heap, this), inv#condqp2(Heap1Heap, this))] && NoPerm < FullPerm) && (Heap2Heap[this, n_85][sk_inv#condqp2(inv#condqp2(Heap2Heap, this), inv#condqp2(Heap1Heap, this))] && NoPerm < FullPerm ==> Heap2Heap[sk_inv#condqp2(inv#condqp2(Heap2Heap, this), inv#condqp2(Heap1Heap, this)), f_7] == Heap1Heap[sk_inv#condqp2(inv#condqp2(Heap2Heap, this), inv#condqp2(Heap1Heap, this)), f_7]) ==> inv#condqp2(Heap2Heap, this) == inv#condqp2(Heap1Heap, this)
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
    Mask := Mask[this, n_85:=Mask[this, n_85] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in this.n) } (x in this.n) ==> acc(x.f, write))
      if (*) {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.n (snapshots3.vpr@24.1--26.2) [182571]"}
          HasDirectPerm(Mask, this, n_85);
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Predicate might not be well-formed. Quantified resource x.f might not be injective. (snapshots3.vpr@24.1--26.2) [182572]"}
      (forall x_2_2: Ref, x_2_3: Ref ::
      
      (((x_2_2 != x_2_3 && Heap[this, n_85][x_2_2]) && Heap[this, n_85][x_2_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_2_2 != x_2_3
    );
    
    // -- Define Inverse Function
      assume (forall x_2_2: Ref ::
        { Heap[x_2_2, f_7] } { QPMask[x_2_2, f_7] } { Heap[this, n_85][x_2_2] }
        Heap[this, n_85][x_2_2] && NoPerm < FullPerm ==> qpRange2(x_2_2) && invRecv2(x_2_2) == x_2_2
      );
      assume (forall o_9: Ref ::
        { invRecv2(o_9) }
        (Heap[this, n_85][invRecv2(o_9)] && NoPerm < FullPerm) && qpRange2(o_9) ==> invRecv2(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_2_2: Ref ::
        { Heap[x_2_2, f_7] } { QPMask[x_2_2, f_7] } { Heap[this, n_85][x_2_2] }
        Heap[this, n_85][x_2_2] ==> x_2_2 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((Heap[this, n_85][invRecv2(o_9)] && NoPerm < FullPerm) && qpRange2(o_9) ==> (NoPerm < FullPerm ==> invRecv2(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((Heap[this, n_85][invRecv2(o_9)] && NoPerm < FullPerm) && qpRange2(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(xs: (Set Ref), y: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var newVersion: FrameType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[y, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (snapshots3.vpr@12.12--12.49) [182573]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && xs[x_1]) && xs[x_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { xs[x_1] }
        xs[x_1] && NoPerm < FullPerm ==> qpRange3(x_1) && invRecv3(x_1) == x_1
      );
      assume (forall o_9: Ref ::
        { invRecv3(o_9) }
        (xs[invRecv3(o_9)] && NoPerm < FullPerm) && qpRange3(o_9) ==> invRecv3(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { xs[x_1] }
        xs[x_1] ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((xs[invRecv3(o_9)] && NoPerm < FullPerm) && qpRange3(o_9) ==> (NoPerm < FullPerm ==> invRecv3(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((xs[invRecv3(o_9)] && NoPerm < FullPerm) && qpRange3(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume xs[y];
    assume state(Heap, Mask);
    
    // -- Check definedness of y.f == 5
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access y.f (snapshots3.vpr@14.12--14.20) [182574]"}
        HasDirectPerm(Mask, y, f_7);
    assume Heap[y, f_7] == 5;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert y.f == 5 -- snapshots3.vpr@16.3--16.18
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of y.f == 5
      assert {:msg "  Assert might fail. There might be insufficient permission to access y.f (snapshots3.vpr@16.10--16.18) [182575]"}
        HasDirectPerm(ExhaleWellDef0Mask, y, f_7);
    assert {:msg "  Assert might fail. Assertion y.f == 5 might not hold. (snapshots3.vpr@16.10--16.18) [182576]"}
      Heap[y, f_7] == 5;
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(P(xs), write) -- snapshots3.vpr@18.3--18.13
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver x is injective
      assert {:msg "  Folding P(xs) might fail. Quantified resource x.f might not be injective. (snapshots3.vpr@18.3--18.13) [182579]"}
        (forall x_2_2: Ref, x_2_3: Ref ::
        { neverTriggered4(x_2_2), neverTriggered4(x_2_3) }
        (((x_2_2 != x_2_3 && xs[x_2_2]) && xs[x_2_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_2_2 != x_2_3
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding P(xs) might fail. There might be insufficient permission to access x.f (snapshots3.vpr@18.3--18.13) [182580]"}
        (forall x_2_2: Ref ::
        { Heap[x_2_2, f_7] } { QPMask[x_2_2, f_7] } { xs[x_2_2] }
        xs[x_2_2] ==> Mask[x_2_2, f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_2_2: Ref ::
        { Heap[x_2_2, f_7] } { QPMask[x_2_2, f_7] } { xs[x_2_2] }
        xs[x_2_2] && NoPerm < FullPerm ==> qpRange4(x_2_2) && invRecv4(x_2_2) == x_2_2
      );
      assume (forall o_9: Ref ::
        { invRecv4(o_9) }
        xs[invRecv4(o_9)] && (NoPerm < FullPerm && qpRange4(o_9)) ==> invRecv4(o_9) == o_9
      );
    
    // -- assume permission updates for field f
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (xs[invRecv4(o_9)] && (NoPerm < FullPerm && qpRange4(o_9)) ==> invRecv4(o_9) == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - FullPerm) && (!(xs[invRecv4(o_9)] && (NoPerm < FullPerm && qpRange4(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    perm := FullPerm;
    Mask := Mask[null, P(xs):=Mask[null, P(xs)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume P#trigger(Heap, P(xs));
    assume Heap[null, P(xs)] == FrameFragment(P#condqp1(Heap, xs));
    if (!HasDirectPerm(Mask, null, P(xs))) {
      Heap := Heap[null, P#sm(xs):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, P(xs):=freshVersion];
    }
    // register all known folded permissions guarded by predicate P
    havoc newPMask;
    assume (forall <A, B> o_64: Ref, f_73: (Field A B) ::
      { newPMask[o_64, f_73] }
      Heap[null, P#sm(xs)][o_64, f_73] ==> newPMask[o_64, f_73]
    );
    assume (forall x_3: Ref ::
      
      xs[x_3] ==> newPMask[x_3, f_7]
    );
    Heap := Heap[null, P#sm(xs):=newPMask];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(P(xs), write) -- snapshots3.vpr@19.3--19.15
    assume P#trigger(Heap, P(xs));
    assume Heap[null, P(xs)] == FrameFragment(P#condqp1(Heap, xs));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding P(xs) might fail. There might be insufficient permission to access P(xs) (snapshots3.vpr@19.3--19.15) [182584]"}
        perm <= Mask[null, P(xs)];
    }
    Mask := Mask[null, P(xs):=Mask[null, P(xs)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, P(xs))) {
        havoc newVersion;
        Heap := Heap[null, P(xs):=newVersion];
      }
    havoc QPMask;
    assert {:msg "  Unfolding P(xs) might fail. Quantified resource x.f might not be injective. (snapshots3.vpr@19.3--19.15) [182585]"}
      (forall x_4_2: Ref, x_4_3: Ref ::
      
      (((x_4_2 != x_4_3 && xs[x_4_2]) && xs[x_4_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_4_2 != x_4_3
    );
    
    // -- Define Inverse Function
      assume (forall x_4_2: Ref ::
        { Heap[x_4_2, f_7] } { QPMask[x_4_2, f_7] } { xs[x_4_2] }
        xs[x_4_2] && NoPerm < FullPerm ==> qpRange5(x_4_2) && invRecv5(x_4_2) == x_4_2
      );
      assume (forall o_9: Ref ::
        { invRecv5(o_9) }
        (xs[invRecv5(o_9)] && NoPerm < FullPerm) && qpRange5(o_9) ==> invRecv5(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_4_2: Ref ::
        { Heap[x_4_2, f_7] } { QPMask[x_4_2, f_7] } { xs[x_4_2] }
        xs[x_4_2] ==> x_4_2 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((xs[invRecv5(o_9)] && NoPerm < FullPerm) && qpRange5(o_9) ==> (NoPerm < FullPerm ==> invRecv5(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((xs[invRecv5(o_9)] && NoPerm < FullPerm) && qpRange5(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert y.f == 5 -- snapshots3.vpr@21.3--21.18
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of y.f == 5
      assert {:msg "  Assert might fail. There might be insufficient permission to access y.f (snapshots3.vpr@21.10--21.18) [182586]"}
        HasDirectPerm(ExhaleWellDef0Mask, y, f_7);
    assert {:msg "  Assert might fail. Assertion y.f == 5 might not hold. (snapshots3.vpr@21.10--21.18) [182587]"}
      Heap[y, f_7] == 5;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m1
// ==================================================

procedure m1(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var t_2: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newVersion: FrameType;
  var QPMask: MaskType;
  var a_2: int;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var ExhaleHeap: HeapType;
  
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
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[t_2, $allocated];
  
  // -- Translating statement: unfold acc(inv(this), write) -- snapshots3.vpr@31.2--31.23
    assume inv#trigger(Heap, inv(this));
    assume Heap[null, inv(this)] == CombineFrames(FrameFragment(Heap[this, n_85]), FrameFragment(inv#condqp2(Heap, this)));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding inv(this) might fail. There might be insufficient permission to access inv(this) (snapshots3.vpr@31.2--31.23) [182590]"}
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
    Mask := Mask[this, n_85:=Mask[this, n_85] + perm];
    assume state(Heap, Mask);
    havoc QPMask;
    assert {:msg "  Unfolding inv(this) might fail. Quantified resource x.f might not be injective. (snapshots3.vpr@31.2--31.23) [182592]"}
      (forall x: Ref, x_46: Ref ::
      
      (((x != x_46 && Heap[this, n_85][x]) && Heap[this, n_85][x_46]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x != x_46
    );
    
    // -- Define Inverse Function
      assume (forall x: Ref ::
        { Heap[x, f_7] } { QPMask[x, f_7] } { Heap[this, n_85][x] }
        Heap[this, n_85][x] && NoPerm < FullPerm ==> qpRange6(x) && invRecv6(x) == x
      );
      assume (forall o_9: Ref ::
        { invRecv6(o_9) }
        (Heap[this, n_85][invRecv6(o_9)] && NoPerm < FullPerm) && qpRange6(o_9) ==> invRecv6(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x: Ref ::
        { Heap[x, f_7] } { QPMask[x, f_7] } { Heap[this, n_85][x] }
        Heap[this, n_85][x] ==> x != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((Heap[this, n_85][invRecv6(o_9)] && NoPerm < FullPerm) && qpRange6(o_9) ==> (NoPerm < FullPerm ==> invRecv6(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((Heap[this, n_85][invRecv6(o_9)] && NoPerm < FullPerm) && qpRange6(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (t in this.n) -- snapshots3.vpr@34.9--34.20
    
    // -- Check definedness of (t in this.n)
      assert {:msg "  Inhale might fail. There might be insufficient permission to access this.n (snapshots3.vpr@34.9--34.20) [182593]"}
        HasDirectPerm(Mask, this, n_85);
    assume Heap[this, n_85][t_2];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: a := t.f -- snapshots3.vpr@36.2--36.19
    
    // -- Check definedness of t.f
      assert {:msg "  Assignment might fail. There might be insufficient permission to access t.f (snapshots3.vpr@36.2--36.19) [182594]"}
        HasDirectPerm(Mask, t_2, f_7);
    a_2 := Heap[t_2, f_7];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(inv(this), write) -- snapshots3.vpr@38.2--38.21
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding inv(this) might fail. There might be insufficient permission to access this.n (snapshots3.vpr@38.2--38.21) [182597]"}
        perm <= Mask[this, n_85];
    }
    Mask := Mask[this, n_85:=Mask[this, n_85] - perm];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver x is injective
      assert {:msg "  Folding inv(this) might fail. Quantified resource x.f might not be injective. (snapshots3.vpr@38.2--38.21) [182599]"}
        (forall x_1: Ref, x_1_1: Ref ::
        { neverTriggered7(x_1), neverTriggered7(x_1_1) }
        (((x_1 != x_1_1 && Heap[this, n_85][x_1]) && Heap[this, n_85][x_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding inv(this) might fail. There might be insufficient permission to access x.f (snapshots3.vpr@38.2--38.21) [182600]"}
        (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { Heap[this, n_85][x_1] }
        Heap[this, n_85][x_1] ==> Mask[x_1, f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { Heap[this, n_85][x_1] }
        Heap[this, n_85][x_1] && NoPerm < FullPerm ==> qpRange7(x_1) && invRecv7(x_1) == x_1
      );
      assume (forall o_9: Ref ::
        { invRecv7(o_9) }
        Heap[this, n_85][invRecv7(o_9)] && (NoPerm < FullPerm && qpRange7(o_9)) ==> invRecv7(o_9) == o_9
      );
    
    // -- assume permission updates for field f
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (Heap[this, n_85][invRecv7(o_9)] && (NoPerm < FullPerm && qpRange7(o_9)) ==> invRecv7(o_9) == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - FullPerm) && (!(Heap[this, n_85][invRecv7(o_9)] && (NoPerm < FullPerm && qpRange7(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    perm := FullPerm;
    Mask := Mask[null, inv(this):=Mask[null, inv(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume inv#trigger(Heap, inv(this));
    assume Heap[null, inv(this)] == CombineFrames(FrameFragment(Heap[this, n_85]), FrameFragment(inv#condqp2(Heap, this)));
    if (!HasDirectPerm(Mask, null, inv(this))) {
      Heap := Heap[null, inv#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, inv(this):=freshVersion];
    }
    Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, n_85:=true]];
    // register all known folded permissions guarded by predicate inv
    havoc newPMask;
    assume (forall <A, B> o_75: Ref, f_84: (Field A B) ::
      { newPMask[o_75, f_84] }
      Heap[null, inv#sm(this)][o_75, f_84] ==> newPMask[o_75, f_84]
    );
    assume (forall x_2_2: Ref ::
      
      Heap[this, n_85][x_2_2] ==> newPMask[x_2_2, f_7]
    );
    Heap := Heap[null, inv#sm(this):=newPMask];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(inv(this), write) -- snapshots3.vpr@39.2--39.23
    assume inv#trigger(Heap, inv(this));
    assume Heap[null, inv(this)] == CombineFrames(FrameFragment(Heap[this, n_85]), FrameFragment(inv#condqp2(Heap, this)));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding inv(this) might fail. There might be insufficient permission to access inv(this) (snapshots3.vpr@39.2--39.23) [182604]"}
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
    Mask := Mask[this, n_85:=Mask[this, n_85] + perm];
    assume state(Heap, Mask);
    havoc QPMask;
    assert {:msg "  Unfolding inv(this) might fail. Quantified resource x.f might not be injective. (snapshots3.vpr@39.2--39.23) [182606]"}
      (forall x_3: Ref, x_3_1: Ref ::
      
      (((x_3 != x_3_1 && Heap[this, n_85][x_3]) && Heap[this, n_85][x_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_3 != x_3_1
    );
    
    // -- Define Inverse Function
      assume (forall x_3: Ref ::
        { Heap[x_3, f_7] } { QPMask[x_3, f_7] } { Heap[this, n_85][x_3] }
        Heap[this, n_85][x_3] && NoPerm < FullPerm ==> qpRange8(x_3) && invRecv8(x_3) == x_3
      );
      assume (forall o_9: Ref ::
        { invRecv8(o_9) }
        (Heap[this, n_85][invRecv8(o_9)] && NoPerm < FullPerm) && qpRange8(o_9) ==> invRecv8(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_3: Ref ::
        { Heap[x_3, f_7] } { QPMask[x_3, f_7] } { Heap[this, n_85][x_3] }
        Heap[this, n_85][x_3] ==> x_3 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((Heap[this, n_85][invRecv8(o_9)] && NoPerm < FullPerm) && qpRange8(o_9) ==> (NoPerm < FullPerm ==> invRecv8(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((Heap[this, n_85][invRecv8(o_9)] && NoPerm < FullPerm) && qpRange8(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a == t.f -- snapshots3.vpr@40.2--40.17
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of a == t.f
      assert {:msg "  Assert might fail. There might be insufficient permission to access t.f (snapshots3.vpr@40.9--40.17) [182607]"}
        HasDirectPerm(ExhaleWellDef0Mask, t_2, f_7);
    assert {:msg "  Assert might fail. Assertion a == t.f might not hold. (snapshots3.vpr@40.9--40.17) [182608]"}
      a_2 == Heap[t_2, f_7];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(P(this.n), write) -- snapshots3.vpr@42.2--42.21
    
    // -- Check definedness of acc(P(this.n), write)
      assert {:msg "  Folding P(this.n) might fail. There might be insufficient permission to access this.n (snapshots3.vpr@42.2--42.21) [182609]"}
        HasDirectPerm(Mask, this, n_85);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver x is injective
      assert {:msg "  Folding P(this.n) might fail. Quantified resource x.f might not be injective. (snapshots3.vpr@42.2--42.21) [182612]"}
        (forall x_4_2: Ref, x_4_3: Ref ::
        { neverTriggered9(x_4_2), neverTriggered9(x_4_3) }
        (((x_4_2 != x_4_3 && Heap[this, n_85][x_4_2]) && Heap[this, n_85][x_4_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_4_2 != x_4_3
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding P(this.n) might fail. There might be insufficient permission to access x.f (snapshots3.vpr@42.2--42.21) [182613]"}
        (forall x_4_2: Ref ::
        { Heap[x_4_2, f_7] } { QPMask[x_4_2, f_7] } { Heap[this, n_85][x_4_2] }
        Heap[this, n_85][x_4_2] ==> Mask[x_4_2, f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_4_2: Ref ::
        { Heap[x_4_2, f_7] } { QPMask[x_4_2, f_7] } { Heap[this, n_85][x_4_2] }
        Heap[this, n_85][x_4_2] && NoPerm < FullPerm ==> qpRange9(x_4_2) && invRecv9(x_4_2) == x_4_2
      );
      assume (forall o_9: Ref ::
        { invRecv9(o_9) }
        Heap[this, n_85][invRecv9(o_9)] && (NoPerm < FullPerm && qpRange9(o_9)) ==> invRecv9(o_9) == o_9
      );
    
    // -- assume permission updates for field f
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (Heap[this, n_85][invRecv9(o_9)] && (NoPerm < FullPerm && qpRange9(o_9)) ==> invRecv9(o_9) == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - FullPerm) && (!(Heap[this, n_85][invRecv9(o_9)] && (NoPerm < FullPerm && qpRange9(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    perm := FullPerm;
    Mask := Mask[null, P(Heap[this, n_85]):=Mask[null, P(Heap[this, n_85])] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume P#trigger(Heap, P(Heap[this, n_85]));
    assume Heap[null, P(Heap[this, n_85])] == FrameFragment(P#condqp1(Heap, Heap[this, n_85]));
    if (!HasDirectPerm(Mask, null, P(Heap[this, n_85]))) {
      Heap := Heap[null, P#sm(Heap[this, n_85]):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, P(Heap[this, n_85]):=freshVersion];
    }
    // register all known folded permissions guarded by predicate P
    havoc newPMask;
    assume (forall <A, B> o_65: Ref, f_74: (Field A B) ::
      { newPMask[o_65, f_74] }
      Heap[null, P#sm(Heap[this, n_85])][o_65, f_74] ==> newPMask[o_65, f_74]
    );
    assume (forall x_5: Ref ::
      
      Heap[this, n_85][x_5] ==> newPMask[x_5, f_7]
    );
    Heap := Heap[null, P#sm(Heap[this, n_85]):=newPMask];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(P(this.n), write) -- snapshots3.vpr@43.4--43.25
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of acc(P(this.n), write)
      assert {:msg "  Exhale might fail. There might be insufficient permission to access this.n (snapshots3.vpr@43.11--43.25) [182615]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, n_85);
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access P(this.n) (snapshots3.vpr@43.11--43.25) [182617]"}
        perm <= Mask[null, P(Heap[this, n_85])];
    }
    Mask := Mask[null, P(Heap[this, n_85]):=Mask[null, P(Heap[this, n_85])] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(P(this.n), write) -- snapshots3.vpr@44.2--44.23
    
    // -- Check definedness of acc(P(this.n), write)
      assert {:msg "  Inhale might fail. There might be insufficient permission to access this.n (snapshots3.vpr@44.9--44.23) [182618]"}
        HasDirectPerm(Mask, this, n_85);
    perm := FullPerm;
    Mask := Mask[null, P(Heap[this, n_85]):=Mask[null, P(Heap[this, n_85])] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(P(this.n), write) -- snapshots3.vpr@45.2--45.23
    
    // -- Check definedness of acc(P(this.n), write)
      assert {:msg "  Unfolding P(this.n) might fail. There might be insufficient permission to access this.n (snapshots3.vpr@45.2--45.23) [182620]"}
        HasDirectPerm(Mask, this, n_85);
    assume P#trigger(Heap, P(Heap[this, n_85]));
    assume Heap[null, P(Heap[this, n_85])] == FrameFragment(P#condqp1(Heap, Heap[this, n_85]));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding P(this.n) might fail. There might be insufficient permission to access P(this.n) (snapshots3.vpr@45.2--45.23) [182623]"}
        perm <= Mask[null, P(Heap[this, n_85])];
    }
    Mask := Mask[null, P(Heap[this, n_85]):=Mask[null, P(Heap[this, n_85])] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, P(Heap[this, n_85]))) {
        havoc newVersion;
        Heap := Heap[null, P(Heap[this, n_85]):=newVersion];
      }
    havoc QPMask;
    assert {:msg "  Unfolding P(this.n) might fail. Quantified resource x.f might not be injective. (snapshots3.vpr@45.2--45.23) [182624]"}
      (forall x_6: Ref, x_6_1: Ref ::
      
      (((x_6 != x_6_1 && Heap[this, n_85][x_6]) && Heap[this, n_85][x_6_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_6 != x_6_1
    );
    
    // -- Define Inverse Function
      assume (forall x_6: Ref ::
        { Heap[x_6, f_7] } { QPMask[x_6, f_7] } { Heap[this, n_85][x_6] }
        Heap[this, n_85][x_6] && NoPerm < FullPerm ==> qpRange10(x_6) && invRecv10(x_6) == x_6
      );
      assume (forall o_9: Ref ::
        { invRecv10(o_9) }
        (Heap[this, n_85][invRecv10(o_9)] && NoPerm < FullPerm) && qpRange10(o_9) ==> invRecv10(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_6: Ref ::
        { Heap[x_6, f_7] } { QPMask[x_6, f_7] } { Heap[this, n_85][x_6] }
        Heap[this, n_85][x_6] ==> x_6 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((Heap[this, n_85][invRecv10(o_9)] && NoPerm < FullPerm) && qpRange10(o_9) ==> (NoPerm < FullPerm ==> invRecv10(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((Heap[this, n_85][invRecv10(o_9)] && NoPerm < FullPerm) && qpRange10(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a == t.f -- snapshots3.vpr@48.2--48.17
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of a == t.f
      assert {:msg "  Assert might fail. There might be insufficient permission to access t.f (snapshots3.vpr@48.9--48.17) [182625]"}
        HasDirectPerm(ExhaleWellDef0Mask, t_2, f_7);
    assert {:msg "  Assert might fail. Assertion a == t.f might not hold. (snapshots3.vpr@48.9--48.17) [182626]"}
      a_2 == Heap[t_2, f_7];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m1_carbon_regression
// ==================================================

procedure m1_carbon_regression(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var t_2: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newVersion: FrameType;
  var QPMask: MaskType;
  var a_2: int;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var ExhaleHeap: HeapType;
  
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
      oldMask := Mask;
      oldHeap := Heap;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    PostMask := PostMask[null, inv(this):=PostMask[null, inv(this)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[t_2, $allocated];
  
  // -- Translating statement: unfold acc(inv(this), write) -- snapshots3.vpr@55.2--55.23
    assume inv#trigger(Heap, inv(this));
    assume Heap[null, inv(this)] == CombineFrames(FrameFragment(Heap[this, n_85]), FrameFragment(inv#condqp2(Heap, this)));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding inv(this) might fail. There might be insufficient permission to access inv(this) (snapshots3.vpr@55.2--55.23) [182629]"}
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
    Mask := Mask[this, n_85:=Mask[this, n_85] + perm];
    assume state(Heap, Mask);
    havoc QPMask;
    assert {:msg "  Unfolding inv(this) might fail. Quantified resource x.f might not be injective. (snapshots3.vpr@55.2--55.23) [182631]"}
      (forall x: Ref, x_46: Ref ::
      
      (((x != x_46 && Heap[this, n_85][x]) && Heap[this, n_85][x_46]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x != x_46
    );
    
    // -- Define Inverse Function
      assume (forall x: Ref ::
        { Heap[x, f_7] } { QPMask[x, f_7] } { Heap[this, n_85][x] }
        Heap[this, n_85][x] && NoPerm < FullPerm ==> qpRange11(x) && invRecv11(x) == x
      );
      assume (forall o_9: Ref ::
        { invRecv11(o_9) }
        (Heap[this, n_85][invRecv11(o_9)] && NoPerm < FullPerm) && qpRange11(o_9) ==> invRecv11(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x: Ref ::
        { Heap[x, f_7] } { QPMask[x, f_7] } { Heap[this, n_85][x] }
        Heap[this, n_85][x] ==> x != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((Heap[this, n_85][invRecv11(o_9)] && NoPerm < FullPerm) && qpRange11(o_9) ==> (NoPerm < FullPerm ==> invRecv11(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((Heap[this, n_85][invRecv11(o_9)] && NoPerm < FullPerm) && qpRange11(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (t in this.n) -- snapshots3.vpr@58.9--58.20
    
    // -- Check definedness of (t in this.n)
      assert {:msg "  Inhale might fail. There might be insufficient permission to access this.n (snapshots3.vpr@58.9--58.20) [182632]"}
        HasDirectPerm(Mask, this, n_85);
    assume Heap[this, n_85][t_2];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: a := t.f -- snapshots3.vpr@60.2--60.19
    
    // -- Check definedness of t.f
      assert {:msg "  Assignment might fail. There might be insufficient permission to access t.f (snapshots3.vpr@60.2--60.19) [182633]"}
        HasDirectPerm(Mask, t_2, f_7);
    a_2 := Heap[t_2, f_7];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(inv(this), write) -- snapshots3.vpr@62.2--62.21
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding inv(this) might fail. There might be insufficient permission to access this.n (snapshots3.vpr@62.2--62.21) [182636]"}
        perm <= Mask[this, n_85];
    }
    Mask := Mask[this, n_85:=Mask[this, n_85] - perm];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver x is injective
      assert {:msg "  Folding inv(this) might fail. Quantified resource x.f might not be injective. (snapshots3.vpr@62.2--62.21) [182638]"}
        (forall x_1: Ref, x_1_1: Ref ::
        { neverTriggered12(x_1), neverTriggered12(x_1_1) }
        (((x_1 != x_1_1 && Heap[this, n_85][x_1]) && Heap[this, n_85][x_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding inv(this) might fail. There might be insufficient permission to access x.f (snapshots3.vpr@62.2--62.21) [182639]"}
        (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { Heap[this, n_85][x_1] }
        Heap[this, n_85][x_1] ==> Mask[x_1, f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { Heap[this, n_85][x_1] }
        Heap[this, n_85][x_1] && NoPerm < FullPerm ==> qpRange12(x_1) && invRecv12(x_1) == x_1
      );
      assume (forall o_9: Ref ::
        { invRecv12(o_9) }
        Heap[this, n_85][invRecv12(o_9)] && (NoPerm < FullPerm && qpRange12(o_9)) ==> invRecv12(o_9) == o_9
      );
    
    // -- assume permission updates for field f
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (Heap[this, n_85][invRecv12(o_9)] && (NoPerm < FullPerm && qpRange12(o_9)) ==> invRecv12(o_9) == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - FullPerm) && (!(Heap[this, n_85][invRecv12(o_9)] && (NoPerm < FullPerm && qpRange12(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    perm := FullPerm;
    Mask := Mask[null, inv(this):=Mask[null, inv(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume inv#trigger(Heap, inv(this));
    assume Heap[null, inv(this)] == CombineFrames(FrameFragment(Heap[this, n_85]), FrameFragment(inv#condqp2(Heap, this)));
    if (!HasDirectPerm(Mask, null, inv(this))) {
      Heap := Heap[null, inv#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, inv(this):=freshVersion];
    }
    Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, n_85:=true]];
    // register all known folded permissions guarded by predicate inv
    havoc newPMask;
    assume (forall <A, B> o_74: Ref, f_83: (Field A B) ::
      { newPMask[o_74, f_83] }
      Heap[null, inv#sm(this)][o_74, f_83] ==> newPMask[o_74, f_83]
    );
    assume (forall x_2_2: Ref ::
      
      Heap[this, n_85][x_2_2] ==> newPMask[x_2_2, f_7]
    );
    Heap := Heap[null, inv#sm(this):=newPMask];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(inv(this), write) -- snapshots3.vpr@63.2--63.23
    assume inv#trigger(Heap, inv(this));
    assume Heap[null, inv(this)] == CombineFrames(FrameFragment(Heap[this, n_85]), FrameFragment(inv#condqp2(Heap, this)));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding inv(this) might fail. There might be insufficient permission to access inv(this) (snapshots3.vpr@63.2--63.23) [182643]"}
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
    Mask := Mask[this, n_85:=Mask[this, n_85] + perm];
    assume state(Heap, Mask);
    havoc QPMask;
    assert {:msg "  Unfolding inv(this) might fail. Quantified resource x.f might not be injective. (snapshots3.vpr@63.2--63.23) [182645]"}
      (forall x_3: Ref, x_3_1: Ref ::
      
      (((x_3 != x_3_1 && Heap[this, n_85][x_3]) && Heap[this, n_85][x_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_3 != x_3_1
    );
    
    // -- Define Inverse Function
      assume (forall x_3: Ref ::
        { Heap[x_3, f_7] } { QPMask[x_3, f_7] } { Heap[this, n_85][x_3] }
        Heap[this, n_85][x_3] && NoPerm < FullPerm ==> qpRange13(x_3) && invRecv13(x_3) == x_3
      );
      assume (forall o_9: Ref ::
        { invRecv13(o_9) }
        (Heap[this, n_85][invRecv13(o_9)] && NoPerm < FullPerm) && qpRange13(o_9) ==> invRecv13(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_3: Ref ::
        { Heap[x_3, f_7] } { QPMask[x_3, f_7] } { Heap[this, n_85][x_3] }
        Heap[this, n_85][x_3] ==> x_3 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((Heap[this, n_85][invRecv13(o_9)] && NoPerm < FullPerm) && qpRange13(o_9) ==> (NoPerm < FullPerm ==> invRecv13(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((Heap[this, n_85][invRecv13(o_9)] && NoPerm < FullPerm) && qpRange13(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a == t.f -- snapshots3.vpr@64.2--64.17
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of a == t.f
      assert {:msg "  Assert might fail. There might be insufficient permission to access t.f (snapshots3.vpr@64.9--64.17) [182646]"}
        HasDirectPerm(ExhaleWellDef0Mask, t_2, f_7);
    assert {:msg "  Assert might fail. Assertion a == t.f might not hold. (snapshots3.vpr@64.9--64.17) [182647]"}
      a_2 == Heap[t_2, f_7];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(P(this.n), write) -- snapshots3.vpr@66.2--66.21
    
    // -- Check definedness of acc(P(this.n), write)
      assert {:msg "  Folding P(this.n) might fail. There might be insufficient permission to access this.n (snapshots3.vpr@66.2--66.21) [182648]"}
        HasDirectPerm(Mask, this, n_85);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver x is injective
      assert {:msg "  Folding P(this.n) might fail. Quantified resource x.f might not be injective. (snapshots3.vpr@66.2--66.21) [182651]"}
        (forall x_4_2: Ref, x_4_3: Ref ::
        { neverTriggered14(x_4_2), neverTriggered14(x_4_3) }
        (((x_4_2 != x_4_3 && Heap[this, n_85][x_4_2]) && Heap[this, n_85][x_4_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_4_2 != x_4_3
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding P(this.n) might fail. There might be insufficient permission to access x.f (snapshots3.vpr@66.2--66.21) [182652]"}
        (forall x_4_2: Ref ::
        { Heap[x_4_2, f_7] } { QPMask[x_4_2, f_7] } { Heap[this, n_85][x_4_2] }
        Heap[this, n_85][x_4_2] ==> Mask[x_4_2, f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_4_2: Ref ::
        { Heap[x_4_2, f_7] } { QPMask[x_4_2, f_7] } { Heap[this, n_85][x_4_2] }
        Heap[this, n_85][x_4_2] && NoPerm < FullPerm ==> qpRange14(x_4_2) && invRecv14(x_4_2) == x_4_2
      );
      assume (forall o_9: Ref ::
        { invRecv14(o_9) }
        Heap[this, n_85][invRecv14(o_9)] && (NoPerm < FullPerm && qpRange14(o_9)) ==> invRecv14(o_9) == o_9
      );
    
    // -- assume permission updates for field f
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (Heap[this, n_85][invRecv14(o_9)] && (NoPerm < FullPerm && qpRange14(o_9)) ==> invRecv14(o_9) == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - FullPerm) && (!(Heap[this, n_85][invRecv14(o_9)] && (NoPerm < FullPerm && qpRange14(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    perm := FullPerm;
    Mask := Mask[null, P(Heap[this, n_85]):=Mask[null, P(Heap[this, n_85])] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume P#trigger(Heap, P(Heap[this, n_85]));
    assume Heap[null, P(Heap[this, n_85])] == FrameFragment(P#condqp1(Heap, Heap[this, n_85]));
    if (!HasDirectPerm(Mask, null, P(Heap[this, n_85]))) {
      Heap := Heap[null, P#sm(Heap[this, n_85]):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, P(Heap[this, n_85]):=freshVersion];
    }
    // register all known folded permissions guarded by predicate P
    havoc newPMask;
    assume (forall <A, B> o_56: Ref, f: (Field A B) ::
      { newPMask[o_56, f] }
      Heap[null, P#sm(Heap[this, n_85])][o_56, f] ==> newPMask[o_56, f]
    );
    assume (forall x_5: Ref ::
      
      Heap[this, n_85][x_5] ==> newPMask[x_5, f_7]
    );
    Heap := Heap[null, P#sm(Heap[this, n_85]):=newPMask];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- snapshots3.vpr@68.9--68.21
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion false might not hold. (snapshots3.vpr@68.16--68.21) [182654]"}
      false;
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of m1_carbon_regression might not hold. There might be insufficient permission to access inv(this) (snapshots3.vpr@53.11--53.25) [182655]"}
        perm <= Mask[null, inv(this)];
    }
    Mask := Mask[null, inv(this):=Mask[null, inv(this)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}