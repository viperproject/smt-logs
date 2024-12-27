// 
// Translation of Viper program.
// 
// Date:         2024-12-27 10:50:06
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0285.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0285-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_6: Ref, f_9: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_6, f_9] }
  Heap[o_6, $allocated] ==> Heap[Heap[o_6, f_9], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_30: Ref, f_35: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_30, f_35] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_30, f_35) ==> Heap[o_30, f_35] == ExhaleHeap[o_30, f_35]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_34: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_34), ExhaleHeap[null, PredicateMaskField(pm_f_34)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_34) && IsPredicateField(pm_f_34) ==> Heap[null, PredicateMaskField(pm_f_34)] == ExhaleHeap[null, PredicateMaskField(pm_f_34)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_34: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_34) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_34) && IsPredicateField(pm_f_34) ==> (forall <A, B> o2_34: Ref, f_35: (Field A B) ::
    { ExhaleHeap[o2_34, f_35] }
    Heap[null, PredicateMaskField(pm_f_34)][o2_34, f_35] ==> Heap[o2_34, f_35] == ExhaleHeap[o2_34, f_35]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_34: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_34), ExhaleHeap[null, WandMaskField(pm_f_34)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_34) && IsWandField(pm_f_34) ==> Heap[null, WandMaskField(pm_f_34)] == ExhaleHeap[null, WandMaskField(pm_f_34)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_34: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_34) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_34) && IsWandField(pm_f_34) ==> (forall <A, B> o2_34: Ref, f_35: (Field A B) ::
    { ExhaleHeap[o2_34, f_35] }
    Heap[null, WandMaskField(pm_f_34)][o2_34, f_35] ==> Heap[o2_34, f_35] == ExhaleHeap[o2_34, f_35]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_30: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_30, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_30, $allocated] ==> ExhaleHeap[o_30, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_6: Ref, f_16: (Field A B), v: B ::
  { Heap[o_6, f_16:=v] }
  succHeap(Heap, Heap[o_6, f_16:=v])
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

function  neverTriggered1(i_1: int): bool;
function  neverTriggered2(i_4_1: int): bool;
function  neverTriggered3(i_8_2: int): bool;
function  neverTriggered4(i_9_1: int): bool;
function  neverTriggered5(i_13_1: int): bool;
function  neverTriggered6(i_16_1: int): bool;
function  neverTriggered7(i_18_1: int): bool;
function  neverTriggered8(i_21: int): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): int;
function  invRecv2(recv: Ref): int;
function  invRecv3(recv: Ref): int;
function  invRecv4(recv: Ref): int;
function  invRecv5(recv: Ref): int;
function  invRecv6(recv: Ref): int;
function  invRecv7(recv: Ref): int;
function  invRecv8(recv: Ref): int;
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
// Translation of domain Array
// ==================================================

// The type for domain Array
type ArrayDomainType;

// Translation of domain function loc
function  loc(a_3: ArrayDomainType, i_79: int): Ref;

// Translation of domain function len
function  len_1(a_3: ArrayDomainType): int;

// Translation of domain function first
function  first(r_3: Ref): ArrayDomainType;

// Translation of domain function second
function  second(r_3: Ref): int;

// Translation of domain axiom all_diff
axiom (forall a_2: ArrayDomainType, i: int ::
  { (loc(a_2, i): Ref) }
  (first((loc(a_2, i): Ref)): ArrayDomainType) == a_2 && (second((loc(a_2, i): Ref)): int) == i
);

// Translation of domain axiom length_nonneg
axiom (forall a_2: ArrayDomainType ::
  { (len_1(a_2): int) }
  (len_1(a_2): int) >= 0
);

// ==================================================
// Translation of all fields
// ==================================================

const unique val: Field NormalField int;
axiom !IsPredicateField(val);
axiom !IsWandField(val);

// ==================================================
// Translation of method havocArray
// ==================================================

procedure havocArray() returns (a_2: ArrayDomainType)
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale false -- <no position>
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method havocInt
// ==================================================

procedure havocInt() returns (i: int)
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale false -- <no position>
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method setToArray
// ==================================================

procedure setToArray(vals_2: (Set int)) returns (a_2: ArrayDomainType)
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var QPMask: MaskType;
  var i_4: int;
  var k_2: int;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var s_2: (Set int);
  var j_9: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var i_10_1: int;
  var ExhaleHeap: HeapType;
  var element: int;
  var i_9: int;
  var k_12: int;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var t_2: (Set int);
  var i_19: int;
  var i_5: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    assume (len_1(a_2): int) == Set#Card(vals_2);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { loc(a, i) } 0 <= i && i < len(a) ==> acc(loc(a, i).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, i).val might not be injective. (0285.vpr@27.11--27.68) [206859]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && (0 <= i_1 && i_1 < (len_1(a_2): int))) && (0 <= i_1_1 && i_1_1 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_1): Ref) != (loc(a_2, i_1_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { (loc(a_2, i_1): Ref) } { (loc(a_2, i_1): Ref) }
        (0 <= i_1 && i_1 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange1((loc(a_2, i_1): Ref)) && invRecv1((loc(a_2, i_1): Ref)) == i_1
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        ((0 <= invRecv1(o_4) && invRecv1(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange1(o_4) ==> (loc(a_2, invRecv1(o_4)): Ref) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { (loc(a_2, i_1): Ref) } { (loc(a_2, i_1): Ref) }
        0 <= i_1 && i_1 < (len_1(a_2): int) ==> (loc(a_2, i_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (((0 <= invRecv1(o_4) && invRecv1(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange1(o_4) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv1(o_4)): Ref) == o_4) && QPMask[o_4, val] == PostMask[o_4, val] + FullPerm) && (!(((0 <= invRecv1(o_4) && invRecv1(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange1(o_4)) ==> QPMask[o_4, val] == PostMask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { (i in vals) } (i in vals) ==> (exists k: Int :: { loc(a, k) } 0 <= k && (k < len(a) && loc(a, k).val == i)))
      if (*) {
        if (vals_2[i_4]) {
          if (*) {
            if (0 <= k_2) {
              if (k_2 < (len_1(a_2): int)) {
                assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, k).val (0285.vpr@28.11--28.99) [206860]"}
                  HasDirectPerm(PostMask, (loc(a_2, k_2): Ref), val);
              }
            }
            assume false;
          }
        }
        assume false;
      }
    assume (forall i_3: int ::
      { vals_2[i_3] }
      vals_2[i_3] ==> (exists k_1_1: int ::
        { (loc(a_2, k_1_1): Ref) }
        0 <= k_1_1 && (k_1_1 < (len_1(a_2): int) && PostHeap[(loc(a_2, k_1_1): Ref), val] == i_3)
      )
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: a := havocArray() -- 0285.vpr@31.3--31.20
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc a_2;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale len(a) == |vals| -- 0285.vpr@32.10--32.26
    assume (len_1(a_2): int) == Set#Card(vals_2);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i: Int ::
  //     { loc(a, i) }
  //     0 <= i && i < len(a) ==> acc(loc(a, i).val, write)) -- 0285.vpr@33.3--33.67
    
    // -- Check definedness of (forall i: Int :: { loc(a, i) } 0 <= i && i < len(a) ==> acc(loc(a, i).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource loc(a, i).val might not be injective. (0285.vpr@33.10--33.67) [206861]"}
      (forall i_8_2: int, i_8_3: int ::
      
      (((i_8_2 != i_8_3 && (0 <= i_8_2 && i_8_2 < (len_1(a_2): int))) && (0 <= i_8_3 && i_8_3 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_8_2): Ref) != (loc(a_2, i_8_3): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_8_2: int ::
        { (loc(a_2, i_8_2): Ref) } { (loc(a_2, i_8_2): Ref) }
        (0 <= i_8_2 && i_8_2 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange3((loc(a_2, i_8_2): Ref)) && invRecv3((loc(a_2, i_8_2): Ref)) == i_8_2
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        ((0 <= invRecv3(o_4) && invRecv3(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange3(o_4) ==> (loc(a_2, invRecv3(o_4)): Ref) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_8_2: int ::
        { (loc(a_2, i_8_2): Ref) } { (loc(a_2, i_8_2): Ref) }
        0 <= i_8_2 && i_8_2 < (len_1(a_2): int) ==> (loc(a_2, i_8_2): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (((0 <= invRecv3(o_4) && invRecv3(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange3(o_4) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv3(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((0 <= invRecv3(o_4) && invRecv3(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange3(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: s := vals -- 0285.vpr@35.3--35.27
    s_2 := vals_2;
    assume state(Heap, Mask);
  
  // -- Translating statement: j := 0 -- 0285.vpr@36.22--36.38
    j_9 := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (|s| > 0) -- 0285.vpr@38.3--50.4
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver loc(a, i) is injective
          assert {:msg "  Loop invariant (forall i: Int :: { loc(a, i) } 0 <= i && i < len(a) ==> acc(loc(a, i).val, write)) might not hold on entry. Quantified resource loc(a, i).val might not be injective. (0285.vpr@39.13--39.70) [206862]"}
            (forall i_9_1: int, i_9_2: int ::
            { neverTriggered4(i_9_1), neverTriggered4(i_9_2) }
            (((i_9_1 != i_9_2 && (0 <= i_9_1 && i_9_1 < (len_1(a_2): int))) && (0 <= i_9_2 && i_9_2 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_9_1): Ref) != (loc(a_2, i_9_2): Ref)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall i: Int :: { loc(a, i) } 0 <= i && i < len(a) ==> acc(loc(a, i).val, write)) might not hold on entry. There might be insufficient permission to access loc(a, i).val (0285.vpr@39.13--39.70) [206863]"}
            (forall i_9_1: int ::
            { (loc(a_2, i_9_1): Ref) } { (loc(a_2, i_9_1): Ref) }
            0 <= i_9_1 && i_9_1 < (len_1(a_2): int) ==> Mask[(loc(a_2, i_9_1): Ref), val] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver loc(a, i)
          assume (forall i_9_1: int ::
            { (loc(a_2, i_9_1): Ref) } { (loc(a_2, i_9_1): Ref) }
            (0 <= i_9_1 && i_9_1 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange4((loc(a_2, i_9_1): Ref)) && invRecv4((loc(a_2, i_9_1): Ref)) == i_9_1
          );
          assume (forall o_4: Ref ::
            { invRecv4(o_4) }
            (0 <= invRecv4(o_4) && invRecv4(o_4) < (len_1(a_2): int)) && (NoPerm < FullPerm && qpRange4(o_4)) ==> (loc(a_2, invRecv4(o_4)): Ref) == o_4
          );
        
        // -- assume permission updates for field val
          assume (forall o_4: Ref ::
            { QPMask[o_4, val] }
            ((0 <= invRecv4(o_4) && invRecv4(o_4) < (len_1(a_2): int)) && (NoPerm < FullPerm && qpRange4(o_4)) ==> (loc(a_2, invRecv4(o_4)): Ref) == o_4 && QPMask[o_4, val] == Mask[o_4, val] - FullPerm) && (!((0 <= invRecv4(o_4) && invRecv4(o_4) < (len_1(a_2): int)) && (NoPerm < FullPerm && qpRange4(o_4))) ==> QPMask[o_4, val] == Mask[o_4, val])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assert {:msg "  Loop invariant (s subset vals) might not hold on entry. Assertion (s subset vals) might not hold. (0285.vpr@40.13--40.26) [206864]"}
          Set#Subset(s_2, vals_2);
        assert {:msg "  Loop invariant j == |(vals setminus s)| might not hold on entry. Assertion j == |(vals setminus s)| might not hold. (0285.vpr@41.13--41.35) [206865]"}
          j_9 == Set#Card(Set#Difference(vals_2, s_2));
        if (*) {
          if (Set#Difference(vals_2, s_2)[i_10_1]) {
            assert {:msg "  Loop invariant (forall i: Int :: { (i in vals) } (i in (vals setminus s)) ==> (exists k: Int :: { loc(a, k) } 0 <= k && (k < j && loc(a, k).val == i))) might not hold on entry. Assertion (exists k: Int :: { loc(a, k) } 0 <= k && (k < j && loc(a, k).val == i)) might not hold. (0285.vpr@42.13--42.121) [206866]"}
              (exists k_4_1: int ::
              { (loc(a_2, k_4_1): Ref) }
              0 <= k_4_1 && (k_4_1 < j_9 && Heap[(loc(a_2, k_4_1): Ref), val] == i_10_1)
            );
          }
          assume false;
        }
        assume (forall i_11_1_1: int ::
          { vals_2[i_11_1_1] }
          Set#Difference(vals_2, s_2)[i_11_1_1] ==> (exists k_5: int ::
            { (loc(a_2, k_5): Ref) }
            0 <= k_5 && (k_5 < j_9 && Heap[(loc(a_2, k_5): Ref), val] == i_11_1_1)
          )
        );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc j_9, s_2, element;
    
    // -- Check definedness of invariant
      if (*) {
        
        // -- Check definedness of (forall i: Int :: { loc(a, i) } 0 <= i && i < len(a) ==> acc(loc(a, i).val, write))
          if (*) {
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, i).val might not be injective. (0285.vpr@39.13--39.70) [206867]"}
          (forall i_13_1: int, i_13_2: int ::
          
          (((i_13_1 != i_13_2 && (0 <= i_13_1 && i_13_1 < (len_1(a_2): int))) && (0 <= i_13_2 && i_13_2 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_13_1): Ref) != (loc(a_2, i_13_2): Ref)
        );
        
        // -- Define Inverse Function
          assume (forall i_13_1: int ::
            { (loc(a_2, i_13_1): Ref) } { (loc(a_2, i_13_1): Ref) }
            (0 <= i_13_1 && i_13_1 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange5((loc(a_2, i_13_1): Ref)) && invRecv5((loc(a_2, i_13_1): Ref)) == i_13_1
          );
          assume (forall o_4: Ref ::
            { invRecv5(o_4) }
            ((0 <= invRecv5(o_4) && invRecv5(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange5(o_4) ==> (loc(a_2, invRecv5(o_4)): Ref) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i_13_1: int ::
            { (loc(a_2, i_13_1): Ref) } { (loc(a_2, i_13_1): Ref) }
            0 <= i_13_1 && i_13_1 < (len_1(a_2): int) ==> (loc(a_2, i_13_1): Ref) != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, val] }
            (((0 <= invRecv5(o_4) && invRecv5(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange5(o_4) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv5(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((0 <= invRecv5(o_4) && invRecv5(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange5(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume Set#Subset(s_2, vals_2);
        assume state(Heap, Mask);
        assume j_9 == Set#Card(Set#Difference(vals_2, s_2));
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall i: Int :: { (i in vals) } (i in (vals setminus s)) ==> (exists k: Int :: { loc(a, k) } 0 <= k && (k < j && loc(a, k).val == i)))
          if (*) {
            if (Set#Difference(vals_2, s_2)[i_9]) {
              if (*) {
                if (0 <= k_12) {
                  if (k_12 < j_9) {
                    assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, k).val (0285.vpr@42.13--42.121) [206868]"}
                      HasDirectPerm(Mask, (loc(a_2, k_12): Ref), val);
                  }
                }
                assume false;
              }
            }
            assume false;
          }
        assume (forall i_15: int ::
          { vals_2[i_15] }
          Set#Difference(vals_2, s_2)[i_15] ==> (exists k_7_1: int ::
            { (loc(a_2, k_7_1): Ref) }
            0 <= k_7_1 && (k_7_1 < j_9 && Heap[(loc(a_2, k_7_1): Ref), val] == i_15)
          )
        );
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
        havoc QPMask;
        assert {:msg "  While statement might fail. Quantified resource loc(a, i).val might not be injective. (0285.vpr@39.13--39.70) [206869]"}
          (forall i_16_1: int, i_16_2: int ::
          
          (((i_16_1 != i_16_2 && (0 <= i_16_1 && i_16_1 < (len_1(a_2): int))) && (0 <= i_16_2 && i_16_2 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_16_1): Ref) != (loc(a_2, i_16_2): Ref)
        );
        
        // -- Define Inverse Function
          assume (forall i_16_1: int ::
            { (loc(a_2, i_16_1): Ref) } { (loc(a_2, i_16_1): Ref) }
            (0 <= i_16_1 && i_16_1 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange6((loc(a_2, i_16_1): Ref)) && invRecv6((loc(a_2, i_16_1): Ref)) == i_16_1
          );
          assume (forall o_4: Ref ::
            { invRecv6(o_4) }
            ((0 <= invRecv6(o_4) && invRecv6(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange6(o_4) ==> (loc(a_2, invRecv6(o_4)): Ref) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i_16_1: int ::
            { (loc(a_2, i_16_1): Ref) } { (loc(a_2, i_16_1): Ref) }
            0 <= i_16_1 && i_16_1 < (len_1(a_2): int) ==> (loc(a_2, i_16_1): Ref) != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, val] }
            (((0 <= invRecv6(o_4) && invRecv6(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange6(o_4) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv6(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((0 <= invRecv6(o_4) && invRecv6(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange6(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume Set#Subset(s_2, vals_2);
        assume j_9 == Set#Card(Set#Difference(vals_2, s_2));
        assume (forall i_17: int ::
          { vals_2[i_17] }
          Set#Difference(vals_2, s_2)[i_17] ==> (exists k_8: int ::
            { (loc(a_2, k_8): Ref) }
            0 <= k_8 && (k_8 < j_9 && Heap[(loc(a_2, k_8): Ref), val] == i_17)
          )
        );
        assume state(Heap, Mask);
        // Check and assume guard
        assume Set#Card(s_2) > 0;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: t := s -- 0285.vpr@44.5--44.26
            t_2 := s_2;
            assume state(Heap, Mask);
          
          // -- Translating statement: element := havocInt() -- 0285.vpr@45.5--45.26
            PreCallHeap := Heap;
            PreCallMask := Mask;
            
            // -- Havocing target variables
              havoc element;
            
            // -- Inhaling postcondition
              assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: inhale (element in s) -- 0285.vpr@46.12--46.24
            assume s_2[element];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: loc(a, j).val := element -- 0285.vpr@47.5--47.28
            assert {:msg "  Assignment might fail. There might be insufficient permission to access loc(a, j).val (0285.vpr@47.5--47.28) [206870]"}
              FullPerm == Mask[(loc(a_2, j_9): Ref), val];
            Heap := Heap[(loc(a_2, j_9): Ref), val:=element];
            assume state(Heap, Mask);
          
          // -- Translating statement: s := (s setminus Set(element)) -- 0285.vpr@48.5--48.33
            s_2 := Set#Difference(s_2, Set#Singleton(element));
            assume state(Heap, Mask);
          
          // -- Translating statement: j := j + 1 -- 0285.vpr@49.5--49.15
            j_9 := j_9 + 1;
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver loc(a, i) is injective
          assert {:msg "  Loop invariant (forall i: Int :: { loc(a, i) } 0 <= i && i < len(a) ==> acc(loc(a, i).val, write)) might not be preserved. Quantified resource loc(a, i).val might not be injective. (0285.vpr@39.13--39.70) [206871]"}
            (forall i_18_1: int, i_18_2: int ::
            { neverTriggered7(i_18_1), neverTriggered7(i_18_2) }
            (((i_18_1 != i_18_2 && (0 <= i_18_1 && i_18_1 < (len_1(a_2): int))) && (0 <= i_18_2 && i_18_2 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_18_1): Ref) != (loc(a_2, i_18_2): Ref)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall i: Int :: { loc(a, i) } 0 <= i && i < len(a) ==> acc(loc(a, i).val, write)) might not be preserved. There might be insufficient permission to access loc(a, i).val (0285.vpr@39.13--39.70) [206872]"}
            (forall i_18_1: int ::
            { (loc(a_2, i_18_1): Ref) } { (loc(a_2, i_18_1): Ref) }
            0 <= i_18_1 && i_18_1 < (len_1(a_2): int) ==> Mask[(loc(a_2, i_18_1): Ref), val] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver loc(a, i)
          assume (forall i_18_1: int ::
            { (loc(a_2, i_18_1): Ref) } { (loc(a_2, i_18_1): Ref) }
            (0 <= i_18_1 && i_18_1 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange7((loc(a_2, i_18_1): Ref)) && invRecv7((loc(a_2, i_18_1): Ref)) == i_18_1
          );
          assume (forall o_4: Ref ::
            { invRecv7(o_4) }
            (0 <= invRecv7(o_4) && invRecv7(o_4) < (len_1(a_2): int)) && (NoPerm < FullPerm && qpRange7(o_4)) ==> (loc(a_2, invRecv7(o_4)): Ref) == o_4
          );
        
        // -- assume permission updates for field val
          assume (forall o_4: Ref ::
            { QPMask[o_4, val] }
            ((0 <= invRecv7(o_4) && invRecv7(o_4) < (len_1(a_2): int)) && (NoPerm < FullPerm && qpRange7(o_4)) ==> (loc(a_2, invRecv7(o_4)): Ref) == o_4 && QPMask[o_4, val] == Mask[o_4, val] - FullPerm) && (!((0 <= invRecv7(o_4) && invRecv7(o_4) < (len_1(a_2): int)) && (NoPerm < FullPerm && qpRange7(o_4))) ==> QPMask[o_4, val] == Mask[o_4, val])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assert {:msg "  Loop invariant (s subset vals) might not be preserved. Assertion (s subset vals) might not hold. (0285.vpr@40.13--40.26) [206873]"}
          Set#Subset(s_2, vals_2);
        assert {:msg "  Loop invariant j == |(vals setminus s)| might not be preserved. Assertion j == |(vals setminus s)| might not hold. (0285.vpr@41.13--41.35) [206874]"}
          j_9 == Set#Card(Set#Difference(vals_2, s_2));
        if (*) {
          if (Set#Difference(vals_2, s_2)[i_19]) {
            assert {:msg "  Loop invariant (forall i: Int :: { (i in vals) } (i in (vals setminus s)) ==> (exists k: Int :: { loc(a, k) } 0 <= k && (k < j && loc(a, k).val == i))) might not be preserved. Assertion (exists k: Int :: { loc(a, k) } 0 <= k && (k < j && loc(a, k).val == i)) might not hold. (0285.vpr@42.13--42.121) [206875]"}
              (exists k_9: int ::
              { (loc(a_2, k_9): Ref) }
              0 <= k_9 && (k_9 < j_9 && Heap[(loc(a_2, k_9): Ref), val] == i_19)
            );
          }
          assume false;
        }
        assume (forall i_20_1_1: int ::
          { vals_2[i_20_1_1] }
          Set#Difference(vals_2, s_2)[i_20_1_1] ==> (exists k_10_2: int ::
            { (loc(a_2, k_10_2): Ref) }
            0 <= k_10_2 && (k_10_2 < j_9 && Heap[(loc(a_2, k_10_2): Ref), val] == i_20_1_1)
          )
        );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(Set#Card(s_2) > 0);
      assume state(Heap, Mask);
      havoc QPMask;
      assert {:msg "  While statement might fail. Quantified resource loc(a, i).val might not be injective. (0285.vpr@39.13--39.70) [206876]"}
        (forall i_21: int, i_21_1: int ::
        
        (((i_21 != i_21_1 && (0 <= i_21 && i_21 < (len_1(a_2): int))) && (0 <= i_21_1 && i_21_1 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_21): Ref) != (loc(a_2, i_21_1): Ref)
      );
      
      // -- Define Inverse Function
        assume (forall i_21: int ::
          { (loc(a_2, i_21): Ref) } { (loc(a_2, i_21): Ref) }
          (0 <= i_21 && i_21 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange8((loc(a_2, i_21): Ref)) && invRecv8((loc(a_2, i_21): Ref)) == i_21
        );
        assume (forall o_4: Ref ::
          { invRecv8(o_4) }
          ((0 <= invRecv8(o_4) && invRecv8(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange8(o_4) ==> (loc(a_2, invRecv8(o_4)): Ref) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall i_21: int ::
          { (loc(a_2, i_21): Ref) } { (loc(a_2, i_21): Ref) }
          0 <= i_21 && i_21 < (len_1(a_2): int) ==> (loc(a_2, i_21): Ref) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, val] }
          (((0 <= invRecv8(o_4) && invRecv8(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange8(o_4) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv8(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((0 <= invRecv8(o_4) && invRecv8(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange8(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume Set#Subset(s_2, vals_2);
      assume j_9 == Set#Card(Set#Difference(vals_2, s_2));
      assume (forall i_22_1: int ::
        { vals_2[i_22_1] }
        Set#Difference(vals_2, s_2)[i_22_1] ==> (exists k_11: int ::
          { (loc(a_2, k_11): Ref) }
          0 <= k_11 && (k_11 < j_9 && Heap[(loc(a_2, k_11): Ref), val] == i_22_1)
        )
      );
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of setToArray might not hold. Assertion len(a) == |vals| might not hold. (0285.vpr@26.11--26.27) [206877]"}
      (len_1(a_2): int) == Set#Card(vals_2);
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver loc(a, i) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, i).val might not be injective. (0285.vpr@27.11--27.68) [206878]"}
        (forall i_4_1: int, i_4_2: int ::
        { neverTriggered2(i_4_1), neverTriggered2(i_4_2) }
        (((i_4_1 != i_4_2 && (0 <= i_4_1 && i_4_1 < (len_1(a_2): int))) && (0 <= i_4_2 && i_4_2 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_4_1): Ref) != (loc(a_2, i_4_2): Ref)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of setToArray might not hold. There might be insufficient permission to access loc(a, i).val (0285.vpr@27.11--27.68) [206879]"}
        (forall i_4_1: int ::
        { (loc(a_2, i_4_1): Ref) } { (loc(a_2, i_4_1): Ref) }
        0 <= i_4_1 && i_4_1 < (len_1(a_2): int) ==> Mask[(loc(a_2, i_4_1): Ref), val] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver loc(a, i)
      assume (forall i_4_1: int ::
        { (loc(a_2, i_4_1): Ref) } { (loc(a_2, i_4_1): Ref) }
        (0 <= i_4_1 && i_4_1 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange2((loc(a_2, i_4_1): Ref)) && invRecv2((loc(a_2, i_4_1): Ref)) == i_4_1
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        (0 <= invRecv2(o_4) && invRecv2(o_4) < (len_1(a_2): int)) && (NoPerm < FullPerm && qpRange2(o_4)) ==> (loc(a_2, invRecv2(o_4)): Ref) == o_4
      );
    
    // -- assume permission updates for field val
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        ((0 <= invRecv2(o_4) && invRecv2(o_4) < (len_1(a_2): int)) && (NoPerm < FullPerm && qpRange2(o_4)) ==> (loc(a_2, invRecv2(o_4)): Ref) == o_4 && QPMask[o_4, val] == Mask[o_4, val] - FullPerm) && (!((0 <= invRecv2(o_4) && invRecv2(o_4) < (len_1(a_2): int)) && (NoPerm < FullPerm && qpRange2(o_4))) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (vals_2[i_5]) {
        assert {:msg "  Postcondition of setToArray might not hold. Assertion (exists k: Int :: { loc(a, k) } 0 <= k && (k < len(a) && loc(a, k).val == i)) might not hold. (0285.vpr@28.11--28.99) [206880]"}
          (exists k_2_1: int ::
          { (loc(a_2, k_2_1): Ref) }
          0 <= k_2_1 && (k_2_1 < (len_1(a_2): int) && Heap[(loc(a_2, k_2_1): Ref), val] == i_5)
        );
      }
      assume false;
    }
    assume (forall i_6_1_1: int ::
      { vals_2[i_6_1_1] }
      vals_2[i_6_1_1] ==> (exists k_3: int ::
        { (loc(a_2, k_3): Ref) }
        0 <= k_3 && (k_3 < (len_1(a_2): int) && Heap[(loc(a_2, k_3): Ref), val] == i_6_1_1)
      )
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}