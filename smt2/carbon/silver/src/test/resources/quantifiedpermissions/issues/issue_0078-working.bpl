// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:16:21
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/issues/issue_0078-working.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/issues/issue_0078-working-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_54: Ref, f_24: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_54, f_24] }
  Heap[o_54, $allocated] ==> Heap[Heap[o_54, f_24], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_55: Ref, f_54: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_55, f_54] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_55, f_54) ==> Heap[o_55, f_54] == ExhaleHeap[o_55, f_54]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_32: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_32), ExhaleHeap[null, PredicateMaskField(pm_f_32)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_32) && IsPredicateField(pm_f_32) ==> Heap[null, PredicateMaskField(pm_f_32)] == ExhaleHeap[null, PredicateMaskField(pm_f_32)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_32: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_32) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_32) && IsPredicateField(pm_f_32) ==> (forall <A, B> o2_32: Ref, f_54: (Field A B) ::
    { ExhaleHeap[o2_32, f_54] }
    Heap[null, PredicateMaskField(pm_f_32)][o2_32, f_54] ==> Heap[o2_32, f_54] == ExhaleHeap[o2_32, f_54]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_32: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_32), ExhaleHeap[null, WandMaskField(pm_f_32)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_32) && IsWandField(pm_f_32) ==> Heap[null, WandMaskField(pm_f_32)] == ExhaleHeap[null, WandMaskField(pm_f_32)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_32: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_32) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_32) && IsWandField(pm_f_32) ==> (forall <A, B> o2_32: Ref, f_54: (Field A B) ::
    { ExhaleHeap[o2_32, f_54] }
    Heap[null, WandMaskField(pm_f_32)][o2_32, f_54] ==> Heap[o2_32, f_54] == ExhaleHeap[o2_32, f_54]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_55: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_55, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_55, $allocated] ==> ExhaleHeap[o_55, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_54: Ref, f_8: (Field A B), v: B ::
  { Heap[o_54, f_8:=v] }
  succHeap(Heap, Heap[o_54, f_8:=v])
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

function  neverTriggered1(q_2_1: Ref): bool;
function  neverTriggered2(s_2_1: Ref): bool;
function  neverTriggered3(q_1: Ref): bool;
function  neverTriggered4(s_1: Ref): bool;
function  neverTriggered5(w_1_1: Ref): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): Ref;
function  invRecv2(recv: Ref): Ref;
function  invRecv3(recv: Ref): Ref;
function  invRecv4(recv: Ref): Ref;
function  invRecv5(recv: Ref): Ref;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(recv: Ref): bool;
function  qpRange2(recv: Ref): bool;
function  qpRange3(recv: Ref): bool;
function  qpRange4(recv: Ref): bool;
function  qpRange5(recv: Ref): bool;

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

const unique left_2: Field NormalField Ref;
axiom !IsPredicateField(left_2);
axiom !IsWandField(left_2);
const unique all: Field NormalField (Set Ref);
axiom !IsPredicateField(all);
axiom !IsWandField(all);

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
  getPredWandId(inv(this)) == 0
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
// Function used for framing of quantified permission (forall q: Ref :: { (q in this.all) } (q in this.all) ==> acc(q.left, 1 / 2)) in predicate inv
// ==================================================

function  inv#condqp1(Heap: HeapType, this_1_1: Ref): int;
function  sk_inv#condqp1(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, this: Ref ::
  { inv#condqp1(Heap2Heap, this), inv#condqp1(Heap1Heap, this), succHeapTrans(Heap2Heap, Heap1Heap) }
  (Heap2Heap[this, all][sk_inv#condqp1(inv#condqp1(Heap2Heap, this), inv#condqp1(Heap1Heap, this))] && NoPerm < 1 / 2 <==> Heap1Heap[this, all][sk_inv#condqp1(inv#condqp1(Heap2Heap, this), inv#condqp1(Heap1Heap, this))] && NoPerm < 1 / 2) && (Heap2Heap[this, all][sk_inv#condqp1(inv#condqp1(Heap2Heap, this), inv#condqp1(Heap1Heap, this))] && NoPerm < 1 / 2 ==> Heap2Heap[sk_inv#condqp1(inv#condqp1(Heap2Heap, this), inv#condqp1(Heap1Heap, this)), left_2] == Heap1Heap[sk_inv#condqp1(inv#condqp1(Heap2Heap, this), inv#condqp1(Heap1Heap, this)), left_2]) ==> inv#condqp1(Heap2Heap, this) == inv#condqp1(Heap1Heap, this)
);

// ==================================================
// Function used for framing of quantified permission (forall s: Ref :: { (s in this.all) } (s in this.all) && s.left == null ==> acc(s.left, 1 / 2)) in predicate inv
// ==================================================

function  inv#condqp2(Heap: HeapType, this_1_1: Ref): int;
function  sk_inv#condqp2(fnAppH1_1: int, fnAppH2_1: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, this: Ref ::
  { inv#condqp2(Heap2Heap, this), inv#condqp2(Heap1Heap, this), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((Heap2Heap[this, all][sk_inv#condqp2(inv#condqp2(Heap2Heap, this), inv#condqp2(Heap1Heap, this))] && Heap2Heap[sk_inv#condqp2(inv#condqp2(Heap2Heap, this), inv#condqp2(Heap1Heap, this)), left_2] == null) && NoPerm < 1 / 2 <==> (Heap1Heap[this, all][sk_inv#condqp2(inv#condqp2(Heap2Heap, this), inv#condqp2(Heap1Heap, this))] && Heap1Heap[sk_inv#condqp2(inv#condqp2(Heap2Heap, this), inv#condqp2(Heap1Heap, this)), left_2] == null) && NoPerm < 1 / 2) && ((Heap2Heap[this, all][sk_inv#condqp2(inv#condqp2(Heap2Heap, this), inv#condqp2(Heap1Heap, this))] && Heap2Heap[sk_inv#condqp2(inv#condqp2(Heap2Heap, this), inv#condqp2(Heap1Heap, this)), left_2] == null) && NoPerm < 1 / 2 ==> Heap2Heap[sk_inv#condqp2(inv#condqp2(Heap2Heap, this), inv#condqp2(Heap1Heap, this)), left_2] == Heap1Heap[sk_inv#condqp2(inv#condqp2(Heap2Heap, this), inv#condqp2(Heap1Heap, this)), left_2]) ==> inv#condqp2(Heap2Heap, this) == inv#condqp2(Heap1Heap, this)
);

procedure inv#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var QPMask: MaskType;
  var s_2: Ref;
  
  // -- Check definedness of predicate body of inv
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, all:=Mask[this, all] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall q: Ref :: { (q in this.all) } (q in this.all) ==> acc(q.left, 1 / 2))
      if (*) {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.all (issue_0078-working.vpr@7.1--11.2) [168145]"}
          HasDirectPerm(Mask, this, all);
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Predicate might not be well-formed. Quantified resource q.left might not be injective. (issue_0078-working.vpr@7.1--11.2) [168146]"}
      (forall q_2_1: Ref, q_2_2: Ref ::
      
      (((q_2_1 != q_2_2 && Heap[this, all][q_2_1]) && Heap[this, all][q_2_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> q_2_1 != q_2_2
    );
    
    // -- Define Inverse Function
      assume (forall q_2_1: Ref ::
        { Heap[q_2_1, left_2] } { QPMask[q_2_1, left_2] } { Heap[this, all][q_2_1] }
        Heap[this, all][q_2_1] && NoPerm < 1 / 2 ==> qpRange1(q_2_1) && invRecv1(q_2_1) == q_2_1
      );
      assume (forall o_9: Ref ::
        { invRecv1(o_9) }
        (Heap[this, all][invRecv1(o_9)] && NoPerm < 1 / 2) && qpRange1(o_9) ==> invRecv1(o_9) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (issue_0078-working.vpr@7.1--11.2) [168147]"}
      (forall q_2_1: Ref ::
      { Heap[q_2_1, left_2] } { QPMask[q_2_1, left_2] } { Heap[this, all][q_2_1] }
      Heap[this, all][q_2_1] ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall q_2_1: Ref ::
        { Heap[q_2_1, left_2] } { QPMask[q_2_1, left_2] } { Heap[this, all][q_2_1] }
        Heap[this, all][q_2_1] && 1 / 2 > NoPerm ==> q_2_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, left_2] }
        ((Heap[this, all][invRecv1(o_9)] && NoPerm < 1 / 2) && qpRange1(o_9) ==> (NoPerm < 1 / 2 ==> invRecv1(o_9) == o_9) && QPMask[o_9, left_2] == Mask[o_9, left_2] + 1 / 2) && (!((Heap[this, all][invRecv1(o_9)] && NoPerm < 1 / 2) && qpRange1(o_9)) ==> QPMask[o_9, left_2] == Mask[o_9, left_2])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != left_2 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall s: Ref :: { (s in this.all) } (s in this.all) && s.left == null ==> acc(s.left, 1 / 2))
      if (*) {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.all (issue_0078-working.vpr@7.1--11.2) [168148]"}
          HasDirectPerm(Mask, this, all);
        if (Heap[this, all][s_2]) {
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access s.left (issue_0078-working.vpr@7.1--11.2) [168149]"}
            HasDirectPerm(Mask, s_2, left_2);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Predicate might not be well-formed. Quantified resource s.left might not be injective. (issue_0078-working.vpr@7.1--11.2) [168150]"}
      (forall s_2_1: Ref, s_2_2: Ref ::
      
      (((s_2_1 != s_2_2 && (Heap[this, all][s_2_1] && Heap[s_2_1, left_2] == null)) && (Heap[this, all][s_2_2] && Heap[s_2_2, left_2] == null)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> s_2_1 != s_2_2
    );
    
    // -- Define Inverse Function
      assume (forall s_2_1: Ref ::
        { Heap[s_2_1, left_2] } { QPMask[s_2_1, left_2] } { Heap[this, all][s_2_1] }
        (Heap[this, all][s_2_1] && Heap[s_2_1, left_2] == null) && NoPerm < 1 / 2 ==> qpRange2(s_2_1) && invRecv2(s_2_1) == s_2_1
      );
      assume (forall o_9: Ref ::
        { invRecv2(o_9) }
        ((Heap[this, all][invRecv2(o_9)] && Heap[invRecv2(o_9), left_2] == null) && NoPerm < 1 / 2) && qpRange2(o_9) ==> invRecv2(o_9) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (issue_0078-working.vpr@7.1--11.2) [168151]"}
      (forall s_2_1: Ref ::
      { Heap[s_2_1, left_2] } { QPMask[s_2_1, left_2] } { Heap[this, all][s_2_1] }
      Heap[this, all][s_2_1] && Heap[s_2_1, left_2] == null ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall s_2_1: Ref ::
        { Heap[s_2_1, left_2] } { QPMask[s_2_1, left_2] } { Heap[this, all][s_2_1] }
        (Heap[this, all][s_2_1] && Heap[s_2_1, left_2] == null) && 1 / 2 > NoPerm ==> s_2_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, left_2] }
        (((Heap[this, all][invRecv2(o_9)] && Heap[invRecv2(o_9), left_2] == null) && NoPerm < 1 / 2) && qpRange2(o_9) ==> (NoPerm < 1 / 2 ==> invRecv2(o_9) == o_9) && QPMask[o_9, left_2] == Mask[o_9, left_2] + 1 / 2) && (!(((Heap[this, all][invRecv2(o_9)] && Heap[invRecv2(o_9), left_2] == null) && NoPerm < 1 / 2) && qpRange2(o_9)) ==> QPMask[o_9, left_2] == Mask[o_9, left_2])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != left_2 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method goo
// ==================================================

procedure goo() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x: Ref;
  var t_2: Ref;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  var QPMask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[x, $allocated];
    assume Heap[t_2, $allocated];
  
  // -- Translating statement: inhale acc(inv(t), write) -- issue_0078-working.vpr@17.3--17.21
    perm := FullPerm;
    Mask := Mask[null, inv(t_2):=Mask[null, inv(t_2)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(inv(t), write) -- issue_0078-working.vpr@18.3--18.21
    assume inv#trigger(Heap, inv(t_2));
    assume Heap[null, inv(t_2)] == CombineFrames(FrameFragment(Heap[t_2, all]), CombineFrames(FrameFragment(inv#condqp1(Heap, t_2)), FrameFragment(inv#condqp2(Heap, t_2))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding inv(t) might fail. There might be insufficient permission to access inv(t) (issue_0078-working.vpr@18.3--18.21) [168155]"}
        perm <= Mask[null, inv(t_2)];
    }
    Mask := Mask[null, inv(t_2):=Mask[null, inv(t_2)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, inv(t_2))) {
        havoc newVersion;
        Heap := Heap[null, inv(t_2):=newVersion];
      }
    perm := FullPerm;
    assume t_2 != null;
    Mask := Mask[t_2, all:=Mask[t_2, all] + perm];
    assume state(Heap, Mask);
    havoc QPMask;
    assert {:msg "  Unfolding inv(t) might fail. Quantified resource q.left might not be injective. (issue_0078-working.vpr@18.3--18.21) [168157]"}
      (forall q_1: Ref, q_7: Ref ::
      
      (((q_1 != q_7 && Heap[t_2, all][q_1]) && Heap[t_2, all][q_7]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> q_1 != q_7
    );
    
    // -- Define Inverse Function
      assume (forall q_1: Ref ::
        { Heap[q_1, left_2] } { QPMask[q_1, left_2] } { Heap[t_2, all][q_1] }
        Heap[t_2, all][q_1] && NoPerm < 1 / 2 ==> qpRange3(q_1) && invRecv3(q_1) == q_1
      );
      assume (forall o_9: Ref ::
        { invRecv3(o_9) }
        (Heap[t_2, all][invRecv3(o_9)] && NoPerm < 1 / 2) && qpRange3(o_9) ==> invRecv3(o_9) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Unfolding inv(t) might fail. Fraction 1 / 2 might be negative. (issue_0078-working.vpr@18.3--18.21) [168158]"}
      (forall q_1: Ref ::
      { Heap[q_1, left_2] } { QPMask[q_1, left_2] } { Heap[t_2, all][q_1] }
      Heap[t_2, all][q_1] ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall q_1: Ref ::
        { Heap[q_1, left_2] } { QPMask[q_1, left_2] } { Heap[t_2, all][q_1] }
        Heap[t_2, all][q_1] && 1 / 2 > NoPerm ==> q_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, left_2] }
        ((Heap[t_2, all][invRecv3(o_9)] && NoPerm < 1 / 2) && qpRange3(o_9) ==> (NoPerm < 1 / 2 ==> invRecv3(o_9) == o_9) && QPMask[o_9, left_2] == Mask[o_9, left_2] + 1 / 2) && (!((Heap[t_2, all][invRecv3(o_9)] && NoPerm < 1 / 2) && qpRange3(o_9)) ==> QPMask[o_9, left_2] == Mask[o_9, left_2])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != left_2 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    havoc QPMask;
    assert {:msg "  Unfolding inv(t) might fail. Quantified resource s.left might not be injective. (issue_0078-working.vpr@18.3--18.21) [168159]"}
      (forall s_1: Ref, s_12: Ref ::
      
      (((s_1 != s_12 && (Heap[t_2, all][s_1] && Heap[s_1, left_2] == null)) && (Heap[t_2, all][s_12] && Heap[s_12, left_2] == null)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> s_1 != s_12
    );
    
    // -- Define Inverse Function
      assume (forall s_1: Ref ::
        { Heap[s_1, left_2] } { QPMask[s_1, left_2] } { Heap[t_2, all][s_1] }
        (Heap[t_2, all][s_1] && Heap[s_1, left_2] == null) && NoPerm < 1 / 2 ==> qpRange4(s_1) && invRecv4(s_1) == s_1
      );
      assume (forall o_9: Ref ::
        { invRecv4(o_9) }
        ((Heap[t_2, all][invRecv4(o_9)] && Heap[invRecv4(o_9), left_2] == null) && NoPerm < 1 / 2) && qpRange4(o_9) ==> invRecv4(o_9) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Unfolding inv(t) might fail. Fraction 1 / 2 might be negative. (issue_0078-working.vpr@18.3--18.21) [168160]"}
      (forall s_1: Ref ::
      { Heap[s_1, left_2] } { QPMask[s_1, left_2] } { Heap[t_2, all][s_1] }
      Heap[t_2, all][s_1] && Heap[s_1, left_2] == null ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall s_1: Ref ::
        { Heap[s_1, left_2] } { QPMask[s_1, left_2] } { Heap[t_2, all][s_1] }
        (Heap[t_2, all][s_1] && Heap[s_1, left_2] == null) && 1 / 2 > NoPerm ==> s_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, left_2] }
        (((Heap[t_2, all][invRecv4(o_9)] && Heap[invRecv4(o_9), left_2] == null) && NoPerm < 1 / 2) && qpRange4(o_9) ==> (NoPerm < 1 / 2 ==> invRecv4(o_9) == o_9) && QPMask[o_9, left_2] == Mask[o_9, left_2] + 1 / 2) && (!(((Heap[t_2, all][invRecv4(o_9)] && Heap[invRecv4(o_9), left_2] == null) && NoPerm < 1 / 2) && qpRange4(o_9)) ==> QPMask[o_9, left_2] == Mask[o_9, left_2])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != left_2 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (x in t.all) && x.left == null -- issue_0078-working.vpr@19.3--19.38
    
    // -- Check definedness of (x in t.all)
      assert {:msg "  Inhale might fail. There might be insufficient permission to access t.all (issue_0078-working.vpr@19.10--19.38) [168161]"}
        HasDirectPerm(Mask, t_2, all);
    assume Heap[t_2, all][x];
    
    // -- Check definedness of x.left == null
      assert {:msg "  Inhale might fail. There might be insufficient permission to access x.left (issue_0078-working.vpr@19.10--19.38) [168162]"}
        HasDirectPerm(Mask, x, left_2);
    assume Heap[x, left_2] == null;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(x.left, write) -- issue_0078-working.vpr@20.3--20.21
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access x.left (issue_0078-working.vpr@20.10--20.21) [168164]"}
        perm <= Mask[x, left_2];
    }
    Mask := Mask[x, left_2:=Mask[x, left_2] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method doo
// ==================================================

procedure doo() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var y: Ref;
  var z: Ref;
  var x: (Set Ref);
  var QPMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[y, $allocated];
    assume Heap[z, $allocated];
  
  // -- Translating statement: inhale x == Set(y, z) && (y != null && z != null) -- issue_0078-working.vpr@28.3--28.50
    assume Set#Equal(x, Set#UnionOne(Set#Singleton(z), y));
    assume y != null;
    assume z != null;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall w: Ref :: { (w in x) } (w in x) ==> acc(w.left, 1 / 2)) -- issue_0078-working.vpr@29.3--29.54
    
    // -- Check definedness of (forall w: Ref :: { (w in x) } (w in x) ==> acc(w.left, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource w.left might not be injective. (issue_0078-working.vpr@29.10--29.54) [168165]"}
      (forall w_1_1: Ref, w_1_2: Ref ::
      
      (((w_1_1 != w_1_2 && x[w_1_1]) && x[w_1_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> w_1_1 != w_1_2
    );
    
    // -- Define Inverse Function
      assume (forall w_1_1: Ref ::
        { Heap[w_1_1, left_2] } { QPMask[w_1_1, left_2] } { x[w_1_1] }
        x[w_1_1] && NoPerm < 1 / 2 ==> qpRange5(w_1_1) && invRecv5(w_1_1) == w_1_1
      );
      assume (forall o_9: Ref ::
        { invRecv5(o_9) }
        (x[invRecv5(o_9)] && NoPerm < 1 / 2) && qpRange5(o_9) ==> invRecv5(o_9) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Inhale might fail. Fraction 1 / 2 might be negative. (issue_0078-working.vpr@29.10--29.54) [168166]"}
      (forall w_1_1: Ref ::
      { Heap[w_1_1, left_2] } { QPMask[w_1_1, left_2] } { x[w_1_1] }
      x[w_1_1] ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall w_1_1: Ref ::
        { Heap[w_1_1, left_2] } { QPMask[w_1_1, left_2] } { x[w_1_1] }
        x[w_1_1] && 1 / 2 > NoPerm ==> w_1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, left_2] }
        ((x[invRecv5(o_9)] && NoPerm < 1 / 2) && qpRange5(o_9) ==> (NoPerm < 1 / 2 ==> invRecv5(o_9) == o_9) && QPMask[o_9, left_2] == Mask[o_9, left_2] + 1 / 2) && (!((x[invRecv5(o_9)] && NoPerm < 1 / 2) && qpRange5(o_9)) ==> QPMask[o_9, left_2] == Mask[o_9, left_2])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != left_2 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert y.left == z.left -- issue_0078-working.vpr@32.3--32.26
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of y.left == z.left
      assert {:msg "  Assert might fail. There might be insufficient permission to access y.left (issue_0078-working.vpr@32.10--32.26) [168167]"}
        HasDirectPerm(ExhaleWellDef0Mask, y, left_2);
      assert {:msg "  Assert might fail. There might be insufficient permission to access z.left (issue_0078-working.vpr@32.10--32.26) [168168]"}
        HasDirectPerm(ExhaleWellDef0Mask, z, left_2);
    assert {:msg "  Assert might fail. Assertion y.left == z.left might not hold. (issue_0078-working.vpr@32.10--32.26) [168169]"}
      Heap[y, left_2] == Heap[z, left_2];
    assume state(Heap, Mask);
}