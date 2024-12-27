// 
// Translation of Viper program.
// 
// Date:         2024-12-27 10:20:36
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/issues/issue_0079.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/issues/issue_0079-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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

function  neverTriggered1(x: Ref): bool;
function  neverTriggered2(x: Ref): bool;
function  neverTriggered3(x_2_2: Ref): bool;
function  neverTriggered4(x: Ref): bool;
function  neverTriggered5(y_1: Ref): bool;
function  neverTriggered6(x$0: Ref): bool;
function  neverTriggered7(x$0_2: Ref): bool;
function  neverTriggered8(x: Ref): bool;
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

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 1: getField01
// - height 0: getField
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

const unique fld: Field NormalField int;
axiom !IsPredicateField(fld);
axiom !IsWandField(fld);
const unique col: Field NormalField (Set Ref);
axiom !IsPredicateField(col);
axiom !IsWandField(col);

// ==================================================
// Translation of function getField
// ==================================================

// Uninterpreted function definitions
function  getField(Heap: HeapType, this: Ref): int;
function  getField'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { getField(Heap, this) }
  getField(Heap, this) == getField'(Heap, this) && dummyFunction(getField#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { getField'(Heap, this) }
  dummyFunction(getField#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), getField(Heap, this) } { state(Heap, Mask), getField#triggerStateless(this), inv#trigger(Heap, inv(Heap[this, col])) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> Heap[this, col][this] ==> getField(Heap, this) == Heap[this, fld]
);

// Framing axioms
function  getField#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), getField'(Heap, this) }
  state(Heap, Mask) ==> getField'(Heap, this) == getField#frame(CombineFrames(FrameFragment(Heap[this, col]), Heap[null, inv(Heap[this, col])]), this)
);

// Trigger function (controlling recursive postconditions)
function  getField#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  getField#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure getField#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var QPMask: MaskType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, col:=Mask[this, col] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(inv(this.col), write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.col (issue_0079.vpr@12.12--12.67) [76253]"}
        HasDirectPerm(Mask, this, col);
    perm := FullPerm;
    Mask := Mask[null, inv(Heap[this, col]):=Mask[null, inv(Heap[this, col])] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of (this in this.col)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.col (issue_0079.vpr@12.12--12.67) [76254]"}
        HasDirectPerm(Mask, this, col);
    assume Heap[this, col][this];
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(inv(this.col), write) in this.fld)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume inv#trigger(UnfoldingHeap, inv(UnfoldingHeap[this, col]));
      assume UnfoldingHeap[null, inv(UnfoldingHeap[this, col])] == FrameFragment(inv#condqp1(UnfoldingHeap, UnfoldingHeap[this, col]));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access inv(this.col) (issue_0079.vpr@11.1--15.2) [76255]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, inv(UnfoldingHeap[this, col])];
      havoc QPMask;
      assert {:msg "  Function might not be well-formed. Quantified resource x.fld might not be injective. (issue_0079.vpr@11.1--15.2) [76256]"}
        (forall x: Ref, x_9: Ref ::
        
        (((x != x_9 && UnfoldingHeap[this, col][x]) && UnfoldingHeap[this, col][x_9]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x != x_9
      );
      
      // -- Define Inverse Function
        assume (forall x: Ref ::
          { UnfoldingHeap[x, fld] } { QPMask[x, fld] } { UnfoldingHeap[this, col][x] }
          UnfoldingHeap[this, col][x] && NoPerm < FullPerm ==> qpRange1(x) && invRecv1(x) == x
        );
        assume (forall o_4: Ref ::
          { invRecv1(o_4) }
          (UnfoldingHeap[this, col][invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4) ==> invRecv1(o_4) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall x: Ref ::
          { UnfoldingHeap[x, fld] } { QPMask[x, fld] } { UnfoldingHeap[this, col][x] }
          UnfoldingHeap[this, col][x] ==> x != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, fld] }
          ((UnfoldingHeap[this, col][invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4) ==> (NoPerm < FullPerm ==> invRecv1(o_4) == o_4) && QPMask[o_4, fld] == UnfoldingMask[o_4, fld] + FullPerm) && (!((UnfoldingHeap[this, col][invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4)) ==> QPMask[o_4, fld] == UnfoldingMask[o_4, fld])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { UnfoldingMask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != fld ==> UnfoldingMask[o_4, f_5] == QPMask[o_4, f_5]
        );
      UnfoldingMask := QPMask;
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.col (issue_0079.vpr@11.1--15.2) [76257]"}
        HasDirectPerm(UnfoldingMask, this, col);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.fld (issue_0079.vpr@11.1--15.2) [76258]"}
        HasDirectPerm(UnfoldingMask, this, fld);
      
      // -- Free assumptions (exp module)
        // register all known folded permissions guarded by predicate inv
        havoc newPMask;
        assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
          { newPMask[o_15, f_20] }
          Heap[null, inv#sm(Heap[this, col])][o_15, f_20] ==> newPMask[o_15, f_20]
        );
        assume (forall x_1: Ref ::
          
          Heap[this, col][x_1] ==> newPMask[x_1, fld]
        );
        Heap := Heap[null, inv#sm(Heap[this, col]):=newPMask];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[this, fld];
}

// ==================================================
// Translation of function getField01
// ==================================================

// Uninterpreted function definitions
function  getField01(Heap: HeapType, xs: (Set Ref), y: Ref): int;
function  getField01'(Heap: HeapType, xs: (Set Ref), y: Ref): int;
axiom (forall Heap: HeapType, xs: (Set Ref), y: Ref ::
  { getField01(Heap, xs, y) }
  getField01(Heap, xs, y) == getField01'(Heap, xs, y) && dummyFunction(getField01#triggerStateless(xs, y))
);
axiom (forall Heap: HeapType, xs: (Set Ref), y: Ref ::
  { getField01'(Heap, xs, y) }
  dummyFunction(getField01#triggerStateless(xs, y))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Set Ref), y: Ref ::
  { state(Heap, Mask), getField01(Heap, xs, y) } { state(Heap, Mask), getField01#triggerStateless(xs, y), inv#trigger(Heap, inv(xs)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> xs[y] ==> getField01(Heap, xs, y) == Heap[y, fld]
);

// Framing axioms
function  getField01#frame(frame: FrameType, xs: (Set Ref), y: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Set Ref), y: Ref ::
  { state(Heap, Mask), getField01'(Heap, xs, y) }
  state(Heap, Mask) ==> getField01'(Heap, xs, y) == getField01#frame(Heap[null, inv(xs)], xs, y)
);

// Trigger function (controlling recursive postconditions)
function  getField01#trigger(frame: FrameType, xs: (Set Ref), y: Ref): bool;

// State-independent trigger function
function  getField01#triggerStateless(xs: (Set Ref), y: Ref): int;

// Check contract well-formedness and postcondition
procedure getField01#definedness(xs: (Set Ref), y: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var QPMask: MaskType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[y, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, inv(xs):=Mask[null, inv(xs)] + perm];
    assume state(Heap, Mask);
    assume xs[y];
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(inv(xs), write) in y.fld)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume inv#trigger(UnfoldingHeap, inv(xs));
      assume UnfoldingHeap[null, inv(xs)] == FrameFragment(inv#condqp1(UnfoldingHeap, xs));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access inv(xs) (issue_0079.vpr@35.1--39.2) [76259]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, inv(xs)];
      havoc QPMask;
      assert {:msg "  Function might not be well-formed. Quantified resource x.fld might not be injective. (issue_0079.vpr@35.1--39.2) [76260]"}
        (forall x: Ref, x_9: Ref ::
        
        (((x != x_9 && xs[x]) && xs[x_9]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x != x_9
      );
      
      // -- Define Inverse Function
        assume (forall x: Ref ::
          { UnfoldingHeap[x, fld] } { QPMask[x, fld] } { xs[x] }
          xs[x] && NoPerm < FullPerm ==> qpRange2(x) && invRecv2(x) == x
        );
        assume (forall o_4: Ref ::
          { invRecv2(o_4) }
          (xs[invRecv2(o_4)] && NoPerm < FullPerm) && qpRange2(o_4) ==> invRecv2(o_4) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall x: Ref ::
          { UnfoldingHeap[x, fld] } { QPMask[x, fld] } { xs[x] }
          xs[x] ==> x != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, fld] }
          ((xs[invRecv2(o_4)] && NoPerm < FullPerm) && qpRange2(o_4) ==> (NoPerm < FullPerm ==> invRecv2(o_4) == o_4) && QPMask[o_4, fld] == UnfoldingMask[o_4, fld] + FullPerm) && (!((xs[invRecv2(o_4)] && NoPerm < FullPerm) && qpRange2(o_4)) ==> QPMask[o_4, fld] == UnfoldingMask[o_4, fld])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { UnfoldingMask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != fld ==> UnfoldingMask[o_4, f_5] == QPMask[o_4, f_5]
        );
      UnfoldingMask := QPMask;
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access y.fld (issue_0079.vpr@35.1--39.2) [76261]"}
        HasDirectPerm(UnfoldingMask, y, fld);
      
      // -- Free assumptions (exp module)
        // register all known folded permissions guarded by predicate inv
        havoc newPMask;
        assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
          { newPMask[o_16, f_21] }
          Heap[null, inv#sm(xs)][o_16, f_21] ==> newPMask[o_16, f_21]
        );
        assume (forall x_1: Ref ::
          
          xs[x_1] ==> newPMask[x_1, fld]
        );
        Heap := Heap[null, inv#sm(xs):=newPMask];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[y, fld];
}

// ==================================================
// Translation of predicate inv
// ==================================================

type PredicateType_inv;
function  inv(collection: (Set Ref)): Field PredicateType_inv FrameType;
function  inv#sm(collection: (Set Ref)): Field PredicateType_inv PMaskType;
axiom (forall collection: (Set Ref) ::
  { PredicateMaskField(inv(collection)) }
  PredicateMaskField(inv(collection)) == inv#sm(collection)
);
axiom (forall collection: (Set Ref) ::
  { inv(collection) }
  IsPredicateField(inv(collection))
);
axiom (forall collection: (Set Ref) ::
  { inv(collection) }
  getPredWandId(inv(collection)) == 0
);
function  inv#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  inv#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall collection: (Set Ref), collection2: (Set Ref) ::
  { inv(collection), inv(collection2) }
  inv(collection) == inv(collection2) ==> collection == collection2
);
axiom (forall collection: (Set Ref), collection2: (Set Ref) ::
  { inv#sm(collection), inv#sm(collection2) }
  inv#sm(collection) == inv#sm(collection2) ==> collection == collection2
);

axiom (forall Heap: HeapType, collection: (Set Ref) ::
  { inv#trigger(Heap, inv(collection)) }
  inv#everUsed(inv(collection))
);

// ==================================================
// Function used for framing of quantified permission (forall x: Ref :: { (x in collection) } (x in collection) ==> acc(x.fld, write)) in predicate inv
// ==================================================

function  inv#condqp1(Heap: HeapType, collection: (Set Ref)): int;
function  sk_inv#condqp1(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, collection: (Set Ref) ::
  { inv#condqp1(Heap2Heap, collection), inv#condqp1(Heap1Heap, collection), succHeapTrans(Heap2Heap, Heap1Heap) }
  (collection[sk_inv#condqp1(inv#condqp1(Heap2Heap, collection), inv#condqp1(Heap1Heap, collection))] && NoPerm < FullPerm <==> collection[sk_inv#condqp1(inv#condqp1(Heap2Heap, collection), inv#condqp1(Heap1Heap, collection))] && NoPerm < FullPerm) && (collection[sk_inv#condqp1(inv#condqp1(Heap2Heap, collection), inv#condqp1(Heap1Heap, collection))] && NoPerm < FullPerm ==> Heap2Heap[sk_inv#condqp1(inv#condqp1(Heap2Heap, collection), inv#condqp1(Heap1Heap, collection)), fld] == Heap1Heap[sk_inv#condqp1(inv#condqp1(Heap2Heap, collection), inv#condqp1(Heap1Heap, collection)), fld]) ==> inv#condqp1(Heap2Heap, collection) == inv#condqp1(Heap1Heap, collection)
);

procedure inv#definedness(collection: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  
  // -- Check definedness of predicate body of inv
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
    
    // -- Check definedness of (forall x: Ref :: { (x in collection) } (x in collection) ==> acc(x.fld, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Predicate might not be well-formed. Quantified resource x.fld might not be injective. (issue_0079.vpr@7.1--9.2) [76262]"}
      (forall x_2_2: Ref, x_2_3: Ref ::
      
      (((x_2_2 != x_2_3 && collection[x_2_2]) && collection[x_2_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_2_2 != x_2_3
    );
    
    // -- Define Inverse Function
      assume (forall x_2_2: Ref ::
        { Heap[x_2_2, fld] } { QPMask[x_2_2, fld] } { collection[x_2_2] }
        collection[x_2_2] && NoPerm < FullPerm ==> qpRange3(x_2_2) && invRecv3(x_2_2) == x_2_2
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        (collection[invRecv3(o_4)] && NoPerm < FullPerm) && qpRange3(o_4) ==> invRecv3(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_2_2: Ref ::
        { Heap[x_2_2, fld] } { QPMask[x_2_2, fld] } { collection[x_2_2] }
        collection[x_2_2] ==> x_2_2 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, fld] }
        ((collection[invRecv3(o_4)] && NoPerm < FullPerm) && qpRange3(o_4) ==> (NoPerm < FullPerm ==> invRecv3(o_4) == o_4) && QPMask[o_4, fld] == Mask[o_4, fld] + FullPerm) && (!((collection[invRecv3(o_4)] && NoPerm < FullPerm) && qpRange3(o_4)) ==> QPMask[o_4, fld] == Mask[o_4, fld])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != fld ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method foo
// ==================================================

procedure foo_1(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var newVersion: FrameType;
  var QPMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, col:=Mask[this, col] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(inv(this.col), write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.col (issue_0079.vpr@18.12--18.67) [76263]"}
        HasDirectPerm(Mask, this, col);
    perm := FullPerm;
    Mask := Mask[null, inv(Heap[this, col]):=Mask[null, inv(Heap[this, col])] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of (this in this.col)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.col (issue_0079.vpr@18.12--18.67) [76264]"}
        HasDirectPerm(Mask, this, col);
    assume Heap[this, col][this];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of getField(this) == 5
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function getField might not hold. There might be insufficient permission to access this.col (issue_0079.vpr@19.12--19.26) [76265]"}
          NoPerm < perm ==> NoPerm < Mask[this, col];
        perm := FullPerm;
        assert {:msg "  Precondition of function getField might not hold. There might be insufficient permission to access inv(this.col) (issue_0079.vpr@19.12--19.26) [76266]"}
          NoPerm < perm ==> NoPerm < Mask[null, inv(Heap[this, col])];
        assert {:msg "  Precondition of function getField might not hold. Assertion (this in this.col) might not hold. (issue_0079.vpr@19.12--19.26) [76267]"}
          Heap[this, col][this];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume getField(Heap, this) == 5;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: unfold acc(inv(this.col), write) -- issue_0079.vpr@21.3--21.28
    
    // -- Check definedness of acc(inv(this.col), write)
      assert {:msg "  Unfolding inv(this.col) might fail. There might be insufficient permission to access this.col (issue_0079.vpr@21.3--21.28) [76268]"}
        HasDirectPerm(Mask, this, col);
    assume inv#trigger(Heap, inv(Heap[this, col]));
    assume Heap[null, inv(Heap[this, col])] == FrameFragment(inv#condqp1(Heap, Heap[this, col]));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding inv(this.col) might fail. There might be insufficient permission to access inv(this.col) (issue_0079.vpr@21.3--21.28) [76271]"}
        perm <= Mask[null, inv(Heap[this, col])];
    }
    Mask := Mask[null, inv(Heap[this, col]):=Mask[null, inv(Heap[this, col])] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, inv(Heap[this, col]))) {
        havoc newVersion;
        Heap := Heap[null, inv(Heap[this, col]):=newVersion];
      }
    havoc QPMask;
    assert {:msg "  Unfolding inv(this.col) might fail. Quantified resource x.fld might not be injective. (issue_0079.vpr@21.3--21.28) [76272]"}
      (forall x: Ref, x_9: Ref ::
      
      (((x != x_9 && Heap[this, col][x]) && Heap[this, col][x_9]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x != x_9
    );
    
    // -- Define Inverse Function
      assume (forall x: Ref ::
        { Heap[x, fld] } { QPMask[x, fld] } { Heap[this, col][x] }
        Heap[this, col][x] && NoPerm < FullPerm ==> qpRange4(x) && invRecv4(x) == x
      );
      assume (forall o_4: Ref ::
        { invRecv4(o_4) }
        (Heap[this, col][invRecv4(o_4)] && NoPerm < FullPerm) && qpRange4(o_4) ==> invRecv4(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x: Ref ::
        { Heap[x, fld] } { QPMask[x, fld] } { Heap[this, col][x] }
        Heap[this, col][x] ==> x != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, fld] }
        ((Heap[this, col][invRecv4(o_4)] && NoPerm < FullPerm) && qpRange4(o_4) ==> (NoPerm < FullPerm ==> invRecv4(o_4) == o_4) && QPMask[o_4, fld] == Mask[o_4, fld] + FullPerm) && (!((Heap[this, col][invRecv4(o_4)] && NoPerm < FullPerm) && qpRange4(o_4)) ==> QPMask[o_4, fld] == Mask[o_4, fld])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != fld ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this.fld == 5 -- issue_0079.vpr@22.3--22.23
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of this.fld == 5
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.fld (issue_0079.vpr@22.10--22.23) [76273]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, fld);
    assert {:msg "  Assert might fail. Assertion this.fld == 5 might not hold. (issue_0079.vpr@22.10--22.23) [76274]"}
      Heap[this, fld] == 5;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(x: Ref, xs: (Set Ref)) returns ()
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
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall y: Ref :: { (y in xs) } (y in xs) ==> acc(y.fld, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource y.fld might not be injective. (issue_0079.vpr@26.12--26.51) [76275]"}
      (forall y_1: Ref, y_1_1: Ref ::
      
      (((y_1 != y_1_1 && xs[y_1]) && xs[y_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> y_1 != y_1_1
    );
    
    // -- Define Inverse Function
      assume (forall y_1: Ref ::
        { Heap[y_1, fld] } { QPMask[y_1, fld] } { xs[y_1] }
        xs[y_1] && NoPerm < FullPerm ==> qpRange5(y_1) && invRecv5(y_1) == y_1
      );
      assume (forall o_4: Ref ::
        { invRecv5(o_4) }
        (xs[invRecv5(o_4)] && NoPerm < FullPerm) && qpRange5(o_4) ==> invRecv5(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall y_1: Ref ::
        { Heap[y_1, fld] } { QPMask[y_1, fld] } { xs[y_1] }
        xs[y_1] ==> y_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, fld] }
        ((xs[invRecv5(o_4)] && NoPerm < FullPerm) && qpRange5(o_4) ==> (NoPerm < FullPerm ==> invRecv5(o_4) == o_4) && QPMask[o_4, fld] == Mask[o_4, fld] + FullPerm) && (!((xs[invRecv5(o_4)] && NoPerm < FullPerm) && qpRange5(o_4)) ==> QPMask[o_4, fld] == Mask[o_4, fld])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != fld ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume xs[x];
    assume state(Heap, Mask);
    
    // -- Check definedness of x.fld == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.fld (issue_0079.vpr@28.12--28.22) [76276]"}
        HasDirectPerm(Mask, x, fld);
    assume Heap[x, fld] == 0;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: fold acc(inv(xs), write) -- issue_0079.vpr@30.3--30.15
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver x$0 is injective
      assert {:msg "  Folding inv(xs) might fail. Quantified resource x$0.fld might not be injective. (issue_0079.vpr@30.3--30.15) [76279]"}
        (forall x$0: Ref, x$0_3: Ref ::
        { neverTriggered6(x$0), neverTriggered6(x$0_3) }
        (((x$0 != x$0_3 && xs[x$0]) && xs[x$0_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x$0 != x$0_3
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding inv(xs) might fail. There might be insufficient permission to access x$0.fld (issue_0079.vpr@30.3--30.15) [76280]"}
        (forall x$0: Ref ::
        { Heap[x$0, fld] } { QPMask[x$0, fld] } { xs[x$0] }
        xs[x$0] ==> Mask[x$0, fld] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x$0
      assume (forall x$0: Ref ::
        { Heap[x$0, fld] } { QPMask[x$0, fld] } { xs[x$0] }
        xs[x$0] && NoPerm < FullPerm ==> qpRange6(x$0) && invRecv6(x$0) == x$0
      );
      assume (forall o_4: Ref ::
        { invRecv6(o_4) }
        xs[invRecv6(o_4)] && (NoPerm < FullPerm && qpRange6(o_4)) ==> invRecv6(o_4) == o_4
      );
    
    // -- assume permission updates for field fld
      assume (forall o_4: Ref ::
        { QPMask[o_4, fld] }
        (xs[invRecv6(o_4)] && (NoPerm < FullPerm && qpRange6(o_4)) ==> invRecv6(o_4) == o_4 && QPMask[o_4, fld] == Mask[o_4, fld] - FullPerm) && (!(xs[invRecv6(o_4)] && (NoPerm < FullPerm && qpRange6(o_4))) ==> QPMask[o_4, fld] == Mask[o_4, fld])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != fld ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    perm := FullPerm;
    Mask := Mask[null, inv(xs):=Mask[null, inv(xs)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume inv#trigger(Heap, inv(xs));
    assume Heap[null, inv(xs)] == FrameFragment(inv#condqp1(Heap, xs));
    if (!HasDirectPerm(Mask, null, inv(xs))) {
      Heap := Heap[null, inv#sm(xs):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, inv(xs):=freshVersion];
    }
    // register all known folded permissions guarded by predicate inv
    havoc newPMask;
    assume (forall <A, B> o_53: Ref, f_56: (Field A B) ::
      { newPMask[o_53, f_56] }
      Heap[null, inv#sm(xs)][o_53, f_56] ==> newPMask[o_53, f_56]
    );
    assume (forall x$0_1: Ref ::
      
      xs[x$0_1] ==> newPMask[x$0_1, fld]
    );
    Heap := Heap[null, inv#sm(xs):=newPMask];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(inv(xs), write) -- issue_0079.vpr@31.3--31.17
    assume inv#trigger(Heap, inv(xs));
    assume Heap[null, inv(xs)] == FrameFragment(inv#condqp1(Heap, xs));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding inv(xs) might fail. There might be insufficient permission to access inv(xs) (issue_0079.vpr@31.3--31.17) [76284]"}
        perm <= Mask[null, inv(xs)];
    }
    Mask := Mask[null, inv(xs):=Mask[null, inv(xs)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, inv(xs))) {
        havoc newVersion;
        Heap := Heap[null, inv(xs):=newVersion];
      }
    havoc QPMask;
    assert {:msg "  Unfolding inv(xs) might fail. Quantified resource x$0.fld might not be injective. (issue_0079.vpr@31.3--31.17) [76285]"}
      (forall x$0_2: Ref, x$0_2_1: Ref ::
      
      (((x$0_2 != x$0_2_1 && xs[x$0_2]) && xs[x$0_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x$0_2 != x$0_2_1
    );
    
    // -- Define Inverse Function
      assume (forall x$0_2: Ref ::
        { Heap[x$0_2, fld] } { QPMask[x$0_2, fld] } { xs[x$0_2] }
        xs[x$0_2] && NoPerm < FullPerm ==> qpRange7(x$0_2) && invRecv7(x$0_2) == x$0_2
      );
      assume (forall o_4: Ref ::
        { invRecv7(o_4) }
        (xs[invRecv7(o_4)] && NoPerm < FullPerm) && qpRange7(o_4) ==> invRecv7(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x$0_2: Ref ::
        { Heap[x$0_2, fld] } { QPMask[x$0_2, fld] } { xs[x$0_2] }
        xs[x$0_2] ==> x$0_2 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, fld] }
        ((xs[invRecv7(o_4)] && NoPerm < FullPerm) && qpRange7(o_4) ==> (NoPerm < FullPerm ==> invRecv7(o_4) == o_4) && QPMask[o_4, fld] == Mask[o_4, fld] + FullPerm) && (!((xs[invRecv7(o_4)] && NoPerm < FullPerm) && qpRange7(o_4)) ==> QPMask[o_4, fld] == Mask[o_4, fld])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != fld ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert x.fld == 0 -- issue_0079.vpr@32.3--32.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of x.fld == 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.fld (issue_0079.vpr@32.10--32.20) [76286]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, fld);
    assert {:msg "  Assert might fail. Assertion x.fld == 0 might not hold. (issue_0079.vpr@32.10--32.20) [76287]"}
      Heap[x, fld] == 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(xs: (Set Ref), y: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var newVersion: FrameType;
  var QPMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[y, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, inv(xs):=Mask[null, inv(xs)] + perm];
    assume state(Heap, Mask);
    assume xs[y];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of getField01(xs, y) == 5
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function getField01 might not hold. There might be insufficient permission to access inv(xs) (issue_0079.vpr@43.12--43.29) [76288]"}
          NoPerm < perm ==> NoPerm < Mask[null, inv(xs)];
        assert {:msg "  Precondition of function getField01 might not hold. Assertion (y in xs) might not hold. (issue_0079.vpr@43.12--43.29) [76289]"}
          xs[y];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume getField01(Heap, xs, y) == 5;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: unfold acc(inv(xs), write) -- issue_0079.vpr@45.3--45.22
    assume inv#trigger(Heap, inv(xs));
    assume Heap[null, inv(xs)] == FrameFragment(inv#condqp1(Heap, xs));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding inv(xs) might fail. There might be insufficient permission to access inv(xs) (issue_0079.vpr@45.3--45.22) [76292]"}
        perm <= Mask[null, inv(xs)];
    }
    Mask := Mask[null, inv(xs):=Mask[null, inv(xs)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, inv(xs))) {
        havoc newVersion;
        Heap := Heap[null, inv(xs):=newVersion];
      }
    havoc QPMask;
    assert {:msg "  Unfolding inv(xs) might fail. Quantified resource x.fld might not be injective. (issue_0079.vpr@45.3--45.22) [76293]"}
      (forall x: Ref, x_9: Ref ::
      
      (((x != x_9 && xs[x]) && xs[x_9]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x != x_9
    );
    
    // -- Define Inverse Function
      assume (forall x: Ref ::
        { Heap[x, fld] } { QPMask[x, fld] } { xs[x] }
        xs[x] && NoPerm < FullPerm ==> qpRange8(x) && invRecv8(x) == x
      );
      assume (forall o_4: Ref ::
        { invRecv8(o_4) }
        (xs[invRecv8(o_4)] && NoPerm < FullPerm) && qpRange8(o_4) ==> invRecv8(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x: Ref ::
        { Heap[x, fld] } { QPMask[x, fld] } { xs[x] }
        xs[x] ==> x != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, fld] }
        ((xs[invRecv8(o_4)] && NoPerm < FullPerm) && qpRange8(o_4) ==> (NoPerm < FullPerm ==> invRecv8(o_4) == o_4) && QPMask[o_4, fld] == Mask[o_4, fld] + FullPerm) && (!((xs[invRecv8(o_4)] && NoPerm < FullPerm) && qpRange8(o_4)) ==> QPMask[o_4, fld] == Mask[o_4, fld])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != fld ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert y.fld == 5 -- issue_0079.vpr@46.3--46.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of y.fld == 5
      assert {:msg "  Assert might fail. There might be insufficient permission to access y.fld (issue_0079.vpr@46.10--46.20) [76294]"}
        HasDirectPerm(ExhaleWellDef0Mask, y, fld);
    assert {:msg "  Assert might fail. Assertion y.fld == 5 might not hold. (issue_0079.vpr@46.10--46.20) [76295]"}
      Heap[y, fld] == 5;
    assume state(Heap, Mask);
}