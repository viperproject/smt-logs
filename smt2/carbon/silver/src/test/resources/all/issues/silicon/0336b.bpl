// 
// Translation of Viper program.
// 
// Date:         2025-01-08 22:04:51
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0336b.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0336b-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_41: Ref, f_27: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_41, f_27] }
  Heap[o_41, $allocated] ==> Heap[Heap[o_41, f_27], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_42: Ref, f_48: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_42, f_48] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_42, f_48) ==> Heap[o_42, f_48] == ExhaleHeap[o_42, f_48]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_18: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_18), ExhaleHeap[null, PredicateMaskField(pm_f_18)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_18) && IsPredicateField(pm_f_18) ==> Heap[null, PredicateMaskField(pm_f_18)] == ExhaleHeap[null, PredicateMaskField(pm_f_18)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_18: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_18) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_18) && IsPredicateField(pm_f_18) ==> (forall <A, B> o2_18: Ref, f_48: (Field A B) ::
    { ExhaleHeap[o2_18, f_48] }
    Heap[null, PredicateMaskField(pm_f_18)][o2_18, f_48] ==> Heap[o2_18, f_48] == ExhaleHeap[o2_18, f_48]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_18: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_18), ExhaleHeap[null, WandMaskField(pm_f_18)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_18) && IsWandField(pm_f_18) ==> Heap[null, WandMaskField(pm_f_18)] == ExhaleHeap[null, WandMaskField(pm_f_18)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_18: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_18) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_18) && IsWandField(pm_f_18) ==> (forall <A, B> o2_18: Ref, f_48: (Field A B) ::
    { ExhaleHeap[o2_18, f_48] }
    Heap[null, WandMaskField(pm_f_18)][o2_18, f_48] ==> Heap[o2_18, f_48] == ExhaleHeap[o2_18, f_48]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_42: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_42, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_42, $allocated] ==> ExhaleHeap[o_42, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_41: Ref, f_44: (Field A B), v: B ::
  { Heap[o_41, f_44:=v] }
  succHeap(Heap, Heap[o_41, f_44:=v])
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

function  neverTriggered1(l_3_2: Ref): bool;
function  neverTriggered2(l_5_1: Ref): bool;
function  neverTriggered3(l$0: Ref): bool;
function  neverTriggered4(l$0_1_1: Ref): bool;
function  neverTriggered5(l$0_4: Ref): bool;
function  neverTriggered6(l$0_5: Ref): bool;
function  neverTriggered7(l$0_12: Ref): bool;
function  neverTriggered8(l$0_13: Ref): bool;
function  neverTriggered9(l$0: Ref): bool;
function  neverTriggered10(l$0_1_1: Ref): bool;
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

const unique parent: Field NormalField Ref;
axiom !IsPredicateField(parent);
axiom !IsWandField(parent);
const unique rank: Field NormalField int;
axiom !IsPredicateField(rank);
axiom !IsWandField(rank);

// ==================================================
// Translation of predicate uf_bank
// ==================================================

type PredicateType_uf_bank;
function  uf_bank(b_24: (Set Ref)): Field PredicateType_uf_bank FrameType;
function  uf_bank#sm(b_24: (Set Ref)): Field PredicateType_uf_bank PMaskType;
axiom (forall b_24: (Set Ref) ::
  { PredicateMaskField(uf_bank(b_24)) }
  PredicateMaskField(uf_bank(b_24)) == uf_bank#sm(b_24)
);
axiom (forall b_24: (Set Ref) ::
  { uf_bank(b_24) }
  IsPredicateField(uf_bank(b_24))
);
axiom (forall b_24: (Set Ref) ::
  { uf_bank(b_24) }
  getPredWandId(uf_bank(b_24)) == 0
);
function  uf_bank#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  uf_bank#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall b_24: (Set Ref), b2: (Set Ref) ::
  { uf_bank(b_24), uf_bank(b2) }
  uf_bank(b_24) == uf_bank(b2) ==> b_24 == b2
);
axiom (forall b_24: (Set Ref), b2: (Set Ref) ::
  { uf_bank#sm(b_24), uf_bank#sm(b2) }
  uf_bank#sm(b_24) == uf_bank#sm(b2) ==> b_24 == b2
);

axiom (forall Heap: HeapType, b_24: (Set Ref) ::
  { uf_bank#trigger(Heap, uf_bank(b_24)) }
  uf_bank#everUsed(uf_bank(b_24))
);

// ==================================================
// Function used for framing of quantified permission (forall l: Ref :: { (l in b) } (l in b) ==> acc(l.parent, write)) in predicate uf_bank
// ==================================================

function  uf_bank#condqp1(Heap: HeapType, b_1_1_1: (Set Ref)): int;
function  sk_uf_bank#condqp1(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, b_24: (Set Ref) ::
  { uf_bank#condqp1(Heap2Heap, b_24), uf_bank#condqp1(Heap1Heap, b_24), succHeapTrans(Heap2Heap, Heap1Heap) }
  (b_24[sk_uf_bank#condqp1(uf_bank#condqp1(Heap2Heap, b_24), uf_bank#condqp1(Heap1Heap, b_24))] && NoPerm < FullPerm <==> b_24[sk_uf_bank#condqp1(uf_bank#condqp1(Heap2Heap, b_24), uf_bank#condqp1(Heap1Heap, b_24))] && NoPerm < FullPerm) && (b_24[sk_uf_bank#condqp1(uf_bank#condqp1(Heap2Heap, b_24), uf_bank#condqp1(Heap1Heap, b_24))] && NoPerm < FullPerm ==> Heap2Heap[sk_uf_bank#condqp1(uf_bank#condqp1(Heap2Heap, b_24), uf_bank#condqp1(Heap1Heap, b_24)), parent] == Heap1Heap[sk_uf_bank#condqp1(uf_bank#condqp1(Heap2Heap, b_24), uf_bank#condqp1(Heap1Heap, b_24)), parent]) ==> uf_bank#condqp1(Heap2Heap, b_24) == uf_bank#condqp1(Heap1Heap, b_24)
);

// ==================================================
// Function used for framing of quantified permission (forall l: Ref :: { (l in b) } (l in b) ==> acc(l.rank, write)) in predicate uf_bank
// ==================================================

function  uf_bank#condqp2(Heap: HeapType, b_1_1_1: (Set Ref)): int;
function  sk_uf_bank#condqp2(fnAppH1_1: int, fnAppH2_1: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, b_24: (Set Ref) ::
  { uf_bank#condqp2(Heap2Heap, b_24), uf_bank#condqp2(Heap1Heap, b_24), succHeapTrans(Heap2Heap, Heap1Heap) }
  (b_24[sk_uf_bank#condqp2(uf_bank#condqp2(Heap2Heap, b_24), uf_bank#condqp2(Heap1Heap, b_24))] && NoPerm < FullPerm <==> b_24[sk_uf_bank#condqp2(uf_bank#condqp2(Heap2Heap, b_24), uf_bank#condqp2(Heap1Heap, b_24))] && NoPerm < FullPerm) && (b_24[sk_uf_bank#condqp2(uf_bank#condqp2(Heap2Heap, b_24), uf_bank#condqp2(Heap1Heap, b_24))] && NoPerm < FullPerm ==> Heap2Heap[sk_uf_bank#condqp2(uf_bank#condqp2(Heap2Heap, b_24), uf_bank#condqp2(Heap1Heap, b_24)), rank] == Heap1Heap[sk_uf_bank#condqp2(uf_bank#condqp2(Heap2Heap, b_24), uf_bank#condqp2(Heap1Heap, b_24)), rank]) ==> uf_bank#condqp2(Heap2Heap, b_24) == uf_bank#condqp2(Heap1Heap, b_24)
);

procedure uf_bank#definedness(b_24: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var l_10: Ref;
  var l_7: Ref;
  
  // -- Check definedness of predicate body of uf_bank
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
    
    // -- Check definedness of (forall l: Ref :: { (l in b) } (l in b) ==> acc(l.parent, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Predicate might not be well-formed. Quantified resource l.parent might not be injective. (0336b.vpr@8.1--13.2) [202654]"}
      (forall l_3_2: Ref, l_3_3: Ref ::
      
      (((l_3_2 != l_3_3 && b_24[l_3_2]) && b_24[l_3_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> l_3_2 != l_3_3
    );
    
    // -- Define Inverse Function
      assume (forall l_3_2: Ref ::
        { Heap[l_3_2, parent] } { QPMask[l_3_2, parent] } { b_24[l_3_2] }
        b_24[l_3_2] && NoPerm < FullPerm ==> qpRange1(l_3_2) && invRecv1(l_3_2) == l_3_2
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        (b_24[invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4) ==> invRecv1(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall l_3_2: Ref ::
        { Heap[l_3_2, parent] } { QPMask[l_3_2, parent] } { b_24[l_3_2] }
        b_24[l_3_2] ==> l_3_2 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, parent] }
        ((b_24[invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4) ==> (NoPerm < FullPerm ==> invRecv1(o_4) == o_4) && QPMask[o_4, parent] == Mask[o_4, parent] + FullPerm) && (!((b_24[invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4)) ==> QPMask[o_4, parent] == Mask[o_4, parent])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != parent ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall l: Ref :: { (l in b) } (l in b) ==> acc(l.rank, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Predicate might not be well-formed. Quantified resource l.rank might not be injective. (0336b.vpr@8.1--13.2) [202655]"}
      (forall l_5_1: Ref, l_5_2: Ref ::
      
      (((l_5_1 != l_5_2 && b_24[l_5_1]) && b_24[l_5_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> l_5_1 != l_5_2
    );
    
    // -- Define Inverse Function
      assume (forall l_5_1: Ref ::
        { Heap[l_5_1, rank] } { QPMask[l_5_1, rank] } { b_24[l_5_1] }
        b_24[l_5_1] && NoPerm < FullPerm ==> qpRange2(l_5_1) && invRecv2(l_5_1) == l_5_1
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        (b_24[invRecv2(o_4)] && NoPerm < FullPerm) && qpRange2(o_4) ==> invRecv2(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall l_5_1: Ref ::
        { Heap[l_5_1, rank] } { QPMask[l_5_1, rank] } { b_24[l_5_1] }
        b_24[l_5_1] ==> l_5_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, rank] }
        ((b_24[invRecv2(o_4)] && NoPerm < FullPerm) && qpRange2(o_4) ==> (NoPerm < FullPerm ==> invRecv2(o_4) == o_4) && QPMask[o_4, rank] == Mask[o_4, rank] + FullPerm) && (!((b_24[invRecv2(o_4)] && NoPerm < FullPerm) && qpRange2(o_4)) ==> QPMask[o_4, rank] == Mask[o_4, rank])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != rank ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall l: Ref :: { (l in b) } (l in b) ==> 0 <= l.rank)
      if (*) {
        if (b_24[l_10]) {
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access l.rank (0336b.vpr@8.1--13.2) [202656]"}
            HasDirectPerm(Mask, l_10, rank);
        }
        assume false;
      }
    assume (forall l_7_1: Ref ::
      { b_24[l_7_1] }
      b_24[l_7_1] ==> 0 <= Heap[l_7_1, rank]
    );
    
    // -- Check definedness of (forall l: Ref :: { l.parent } (l in b) && l.parent != null ==> (l.parent in b) && l.parent.rank > l.rank)
      if (*) {
        if (b_24[l_7]) {
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access l.parent (0336b.vpr@8.1--13.2) [202657]"}
            HasDirectPerm(Mask, l_7, parent);
        }
        if (b_24[l_7] && Heap[l_7, parent] != null) {
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access l.parent (0336b.vpr@8.1--13.2) [202658]"}
            HasDirectPerm(Mask, l_7, parent);
          if (b_24[Heap[l_7, parent]]) {
            assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access l.parent (0336b.vpr@8.1--13.2) [202659]"}
              HasDirectPerm(Mask, l_7, parent);
            assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access l.parent.rank (0336b.vpr@8.1--13.2) [202660]"}
              HasDirectPerm(Mask, Heap[l_7, parent], rank);
            assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access l.rank (0336b.vpr@8.1--13.2) [202661]"}
              HasDirectPerm(Mask, l_7, rank);
          }
        }
        assume false;
      }
    assume (forall l_9_1: Ref ::
      { Heap[l_9_1, parent] }
      b_24[l_9_1] && Heap[l_9_1, parent] != null ==> b_24[Heap[l_9_1, parent]] && Heap[Heap[l_9_1, parent], rank] > Heap[l_9_1, rank]
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method bad
// ==================================================

procedure bad(b_24: (Set Ref), l_2: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newVersion: FrameType;
  var QPMask: MaskType;
  var l$0_6: Ref;
  var l$0_8: Ref;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var n: int;
  var n_2: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[l_2, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, uf_bank(b_24):=Mask[null, uf_bank(b_24)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume b_24[l_2];
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
    assume false;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(uf_bank(b), write) -- 0336b.vpr@20.3--20.20
    assume uf_bank#trigger(Heap, uf_bank(b_24));
    assume Heap[null, uf_bank(b_24)] == CombineFrames(FrameFragment(uf_bank#condqp1(Heap, b_24)), FrameFragment(uf_bank#condqp2(Heap, b_24)));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding uf_bank(b) might fail. There might be insufficient permission to access uf_bank(b) (0336b.vpr@20.3--20.20) [202664]"}
        perm <= Mask[null, uf_bank(b_24)];
    }
    Mask := Mask[null, uf_bank(b_24):=Mask[null, uf_bank(b_24)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, uf_bank(b_24))) {
        havoc newVersion;
        Heap := Heap[null, uf_bank(b_24):=newVersion];
      }
    havoc QPMask;
    assert {:msg "  Unfolding uf_bank(b) might fail. Quantified resource l$0.parent might not be injective. (0336b.vpr@20.3--20.20) [202665]"}
      (forall l$0: Ref, l$0_1: Ref ::
      
      (((l$0 != l$0_1 && b_24[l$0]) && b_24[l$0_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> l$0 != l$0_1
    );
    
    // -- Define Inverse Function
      assume (forall l$0: Ref ::
        { Heap[l$0, parent] } { QPMask[l$0, parent] } { b_24[l$0] }
        b_24[l$0] && NoPerm < FullPerm ==> qpRange3(l$0) && invRecv3(l$0) == l$0
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        (b_24[invRecv3(o_4)] && NoPerm < FullPerm) && qpRange3(o_4) ==> invRecv3(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall l$0: Ref ::
        { Heap[l$0, parent] } { QPMask[l$0, parent] } { b_24[l$0] }
        b_24[l$0] ==> l$0 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, parent] }
        ((b_24[invRecv3(o_4)] && NoPerm < FullPerm) && qpRange3(o_4) ==> (NoPerm < FullPerm ==> invRecv3(o_4) == o_4) && QPMask[o_4, parent] == Mask[o_4, parent] + FullPerm) && (!((b_24[invRecv3(o_4)] && NoPerm < FullPerm) && qpRange3(o_4)) ==> QPMask[o_4, parent] == Mask[o_4, parent])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != parent ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    havoc QPMask;
    assert {:msg "  Unfolding uf_bank(b) might fail. Quantified resource l$0.rank might not be injective. (0336b.vpr@20.3--20.20) [202666]"}
      (forall l$0_1_1: Ref, l$0_1_2: Ref ::
      
      (((l$0_1_1 != l$0_1_2 && b_24[l$0_1_1]) && b_24[l$0_1_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> l$0_1_1 != l$0_1_2
    );
    
    // -- Define Inverse Function
      assume (forall l$0_1_1: Ref ::
        { Heap[l$0_1_1, rank] } { QPMask[l$0_1_1, rank] } { b_24[l$0_1_1] }
        b_24[l$0_1_1] && NoPerm < FullPerm ==> qpRange4(l$0_1_1) && invRecv4(l$0_1_1) == l$0_1_1
      );
      assume (forall o_4: Ref ::
        { invRecv4(o_4) }
        (b_24[invRecv4(o_4)] && NoPerm < FullPerm) && qpRange4(o_4) ==> invRecv4(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall l$0_1_1: Ref ::
        { Heap[l$0_1_1, rank] } { QPMask[l$0_1_1, rank] } { b_24[l$0_1_1] }
        b_24[l$0_1_1] ==> l$0_1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, rank] }
        ((b_24[invRecv4(o_4)] && NoPerm < FullPerm) && qpRange4(o_4) ==> (NoPerm < FullPerm ==> invRecv4(o_4) == o_4) && QPMask[o_4, rank] == Mask[o_4, rank] + FullPerm) && (!((b_24[invRecv4(o_4)] && NoPerm < FullPerm) && qpRange4(o_4)) ==> QPMask[o_4, rank] == Mask[o_4, rank])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != rank ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume (forall l$0_2: Ref ::
      { b_24[l$0_2] }
      b_24[l$0_2] ==> 0 <= Heap[l$0_2, rank]
    );
    assume (forall l$0_3: Ref ::
      { Heap[l$0_3, parent] }
      b_24[l$0_3] && Heap[l$0_3, parent] != null ==> b_24[Heap[l$0_3, parent]] && Heap[Heap[l$0_3, parent], rank] > Heap[l$0_3, rank]
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(uf_bank(b), write) -- 0336b.vpr@21.3--21.18
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver l$0 is injective
      assert {:msg "  Folding uf_bank(b) might fail. Quantified resource l$0.parent might not be injective. (0336b.vpr@21.3--21.18) [202669]"}
        (forall l$0_4: Ref, l$0_4_1: Ref ::
        { neverTriggered5(l$0_4), neverTriggered5(l$0_4_1) }
        (((l$0_4 != l$0_4_1 && b_24[l$0_4]) && b_24[l$0_4_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> l$0_4 != l$0_4_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding uf_bank(b) might fail. There might be insufficient permission to access l$0.parent (0336b.vpr@21.3--21.18) [202670]"}
        (forall l$0_4: Ref ::
        { Heap[l$0_4, parent] } { QPMask[l$0_4, parent] } { b_24[l$0_4] }
        b_24[l$0_4] ==> Mask[l$0_4, parent] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver l$0
      assume (forall l$0_4: Ref ::
        { Heap[l$0_4, parent] } { QPMask[l$0_4, parent] } { b_24[l$0_4] }
        b_24[l$0_4] && NoPerm < FullPerm ==> qpRange5(l$0_4) && invRecv5(l$0_4) == l$0_4
      );
      assume (forall o_4: Ref ::
        { invRecv5(o_4) }
        b_24[invRecv5(o_4)] && (NoPerm < FullPerm && qpRange5(o_4)) ==> invRecv5(o_4) == o_4
      );
    
    // -- assume permission updates for field parent
      assume (forall o_4: Ref ::
        { QPMask[o_4, parent] }
        (b_24[invRecv5(o_4)] && (NoPerm < FullPerm && qpRange5(o_4)) ==> invRecv5(o_4) == o_4 && QPMask[o_4, parent] == Mask[o_4, parent] - FullPerm) && (!(b_24[invRecv5(o_4)] && (NoPerm < FullPerm && qpRange5(o_4))) ==> QPMask[o_4, parent] == Mask[o_4, parent])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != parent ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver l$0 is injective
      assert {:msg "  Folding uf_bank(b) might fail. Quantified resource l$0.rank might not be injective. (0336b.vpr@21.3--21.18) [202672]"}
        (forall l$0_5: Ref, l$0_5_1: Ref ::
        { neverTriggered6(l$0_5), neverTriggered6(l$0_5_1) }
        (((l$0_5 != l$0_5_1 && b_24[l$0_5]) && b_24[l$0_5_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> l$0_5 != l$0_5_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding uf_bank(b) might fail. There might be insufficient permission to access l$0.rank (0336b.vpr@21.3--21.18) [202673]"}
        (forall l$0_5: Ref ::
        { Heap[l$0_5, rank] } { QPMask[l$0_5, rank] } { b_24[l$0_5] }
        b_24[l$0_5] ==> Mask[l$0_5, rank] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver l$0
      assume (forall l$0_5: Ref ::
        { Heap[l$0_5, rank] } { QPMask[l$0_5, rank] } { b_24[l$0_5] }
        b_24[l$0_5] && NoPerm < FullPerm ==> qpRange6(l$0_5) && invRecv6(l$0_5) == l$0_5
      );
      assume (forall o_4: Ref ::
        { invRecv6(o_4) }
        b_24[invRecv6(o_4)] && (NoPerm < FullPerm && qpRange6(o_4)) ==> invRecv6(o_4) == o_4
      );
    
    // -- assume permission updates for field rank
      assume (forall o_4: Ref ::
        { QPMask[o_4, rank] }
        (b_24[invRecv6(o_4)] && (NoPerm < FullPerm && qpRange6(o_4)) ==> invRecv6(o_4) == o_4 && QPMask[o_4, rank] == Mask[o_4, rank] - FullPerm) && (!(b_24[invRecv6(o_4)] && (NoPerm < FullPerm && qpRange6(o_4))) ==> QPMask[o_4, rank] == Mask[o_4, rank])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != rank ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (b_24[l$0_6]) {
        assert {:msg "  Folding uf_bank(b) might fail. Assertion 0 <= l$0.rank might not hold. (0336b.vpr@21.3--21.18) [202674]"}
          0 <= Heap[l$0_6, rank];
      }
      assume false;
    }
    assume (forall l$0_7_1: Ref ::
      { b_24[l$0_7_1] }
      b_24[l$0_7_1] ==> 0 <= Heap[l$0_7_1, rank]
    );
    if (*) {
      if (b_24[l$0_8] && Heap[l$0_8, parent] != null) {
        assert {:msg "  Folding uf_bank(b) might fail. Assertion (l$0.parent in b) might not hold. (0336b.vpr@21.3--21.18) [202675]"}
          b_24[Heap[l$0_8, parent]];
        assert {:msg "  Folding uf_bank(b) might fail. Assertion l$0.parent.rank > l$0.rank might not hold. (0336b.vpr@21.3--21.18) [202676]"}
          Heap[Heap[l$0_8, parent], rank] > Heap[l$0_8, rank];
      }
      assume false;
    }
    assume (forall l$0_9_1_1: Ref ::
      { Heap[l$0_9_1_1, parent] }
      b_24[l$0_9_1_1] && Heap[l$0_9_1_1, parent] != null ==> b_24[Heap[l$0_9_1_1, parent]] && Heap[Heap[l$0_9_1_1, parent], rank] > Heap[l$0_9_1_1, rank]
    );
    perm := FullPerm;
    Mask := Mask[null, uf_bank(b_24):=Mask[null, uf_bank(b_24)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume uf_bank#trigger(Heap, uf_bank(b_24));
    assume Heap[null, uf_bank(b_24)] == CombineFrames(FrameFragment(uf_bank#condqp1(Heap, b_24)), FrameFragment(uf_bank#condqp2(Heap, b_24)));
    if (!HasDirectPerm(Mask, null, uf_bank(b_24))) {
      Heap := Heap[null, uf_bank#sm(b_24):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, uf_bank(b_24):=freshVersion];
    }
    // register all known folded permissions guarded by predicate uf_bank
    havoc newPMask;
    assume (forall <A, B> o_52: Ref, f_55: (Field A B) ::
      { newPMask[o_52, f_55] }
      Heap[null, uf_bank#sm(b_24)][o_52, f_55] ==> newPMask[o_52, f_55]
    );
    assume (forall l$0_10: Ref ::
      
      b_24[l$0_10] ==> newPMask[l$0_10, parent]
    );
    Heap := Heap[null, uf_bank#sm(b_24):=newPMask];
    // register all known folded permissions guarded by predicate uf_bank
    havoc newPMask;
    assume (forall <A, B> o_53: Ref, f_56: (Field A B) ::
      { newPMask[o_53, f_56] }
      Heap[null, uf_bank#sm(b_24)][o_53, f_56] ==> newPMask[o_53, f_56]
    );
    assume (forall l$0_11: Ref ::
      
      b_24[l$0_11] ==> newPMask[l$0_11, rank]
    );
    Heap := Heap[null, uf_bank#sm(b_24):=newPMask];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (let n ==
  //     ((unfolding acc(uf_bank(b), write) in l.rank)) in
  //     n > n) -- 0336b.vpr@22.3--25.10
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (let n == ((unfolding acc(uf_bank(b), write) in l.rank)) in n > n)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume uf_bank#trigger(UnfoldingHeap, uf_bank(b_24));
      assume UnfoldingHeap[null, uf_bank(b_24)] == CombineFrames(FrameFragment(uf_bank#condqp1(UnfoldingHeap, b_24)), FrameFragment(uf_bank#condqp2(UnfoldingHeap, b_24)));
      ExhaleWellDef1Mask := UnfoldingMask;
      ExhaleWellDef1Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access uf_bank(b) (0336b.vpr@24.5--25.10) [202678]"}
          perm <= UnfoldingMask[null, uf_bank(b_24)];
      }
      UnfoldingMask := UnfoldingMask[null, uf_bank(b_24):=UnfoldingMask[null, uf_bank(b_24)] - perm];
      havoc QPMask;
      assert {:msg "  Assert might fail. Quantified resource l$0.parent might not be injective. (0336b.vpr@24.5--25.10) [202679]"}
        (forall l$0_12: Ref, l$0_12_1: Ref ::
        
        (((l$0_12 != l$0_12_1 && b_24[l$0_12]) && b_24[l$0_12_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> l$0_12 != l$0_12_1
      );
      
      // -- Define Inverse Function
        assume (forall l$0_12: Ref ::
          { UnfoldingHeap[l$0_12, parent] } { QPMask[l$0_12, parent] } { b_24[l$0_12] }
          b_24[l$0_12] && NoPerm < FullPerm ==> qpRange7(l$0_12) && invRecv7(l$0_12) == l$0_12
        );
        assume (forall o_4: Ref ::
          { invRecv7(o_4) }
          (b_24[invRecv7(o_4)] && NoPerm < FullPerm) && qpRange7(o_4) ==> invRecv7(o_4) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall l$0_12: Ref ::
          { UnfoldingHeap[l$0_12, parent] } { QPMask[l$0_12, parent] } { b_24[l$0_12] }
          b_24[l$0_12] ==> l$0_12 != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, parent] }
          ((b_24[invRecv7(o_4)] && NoPerm < FullPerm) && qpRange7(o_4) ==> (NoPerm < FullPerm ==> invRecv7(o_4) == o_4) && QPMask[o_4, parent] == UnfoldingMask[o_4, parent] + FullPerm) && (!((b_24[invRecv7(o_4)] && NoPerm < FullPerm) && qpRange7(o_4)) ==> QPMask[o_4, parent] == UnfoldingMask[o_4, parent])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { UnfoldingMask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != parent ==> UnfoldingMask[o_4, f_5] == QPMask[o_4, f_5]
        );
      UnfoldingMask := QPMask;
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc QPMask;
      assert {:msg "  Assert might fail. Quantified resource l$0.rank might not be injective. (0336b.vpr@24.5--25.10) [202680]"}
        (forall l$0_13: Ref, l$0_13_1: Ref ::
        
        (((l$0_13 != l$0_13_1 && b_24[l$0_13]) && b_24[l$0_13_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> l$0_13 != l$0_13_1
      );
      
      // -- Define Inverse Function
        assume (forall l$0_13: Ref ::
          { UnfoldingHeap[l$0_13, rank] } { QPMask[l$0_13, rank] } { b_24[l$0_13] }
          b_24[l$0_13] && NoPerm < FullPerm ==> qpRange8(l$0_13) && invRecv8(l$0_13) == l$0_13
        );
        assume (forall o_4: Ref ::
          { invRecv8(o_4) }
          (b_24[invRecv8(o_4)] && NoPerm < FullPerm) && qpRange8(o_4) ==> invRecv8(o_4) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall l$0_13: Ref ::
          { UnfoldingHeap[l$0_13, rank] } { QPMask[l$0_13, rank] } { b_24[l$0_13] }
          b_24[l$0_13] ==> l$0_13 != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, rank] }
          ((b_24[invRecv8(o_4)] && NoPerm < FullPerm) && qpRange8(o_4) ==> (NoPerm < FullPerm ==> invRecv8(o_4) == o_4) && QPMask[o_4, rank] == UnfoldingMask[o_4, rank] + FullPerm) && (!((b_24[invRecv8(o_4)] && NoPerm < FullPerm) && qpRange8(o_4)) ==> QPMask[o_4, rank] == UnfoldingMask[o_4, rank])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { UnfoldingMask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != rank ==> UnfoldingMask[o_4, f_5] == QPMask[o_4, f_5]
        );
      UnfoldingMask := QPMask;
      assume state(UnfoldingHeap, UnfoldingMask);
      assume (forall l$0_14: Ref ::
        { b_24[l$0_14] }
        b_24[l$0_14] ==> 0 <= UnfoldingHeap[l$0_14, rank]
      );
      assume (forall l$0_15: Ref ::
        { UnfoldingHeap[l$0_15, parent] }
        b_24[l$0_15] && UnfoldingHeap[l$0_15, parent] != null ==> b_24[UnfoldingHeap[l$0_15, parent]] && UnfoldingHeap[UnfoldingHeap[l$0_15, parent], rank] > UnfoldingHeap[l$0_15, rank]
      );
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Assert might fail. There might be insufficient permission to access l.rank (0336b.vpr@24.5--25.10) [202681]"}
        HasDirectPerm(UnfoldingMask, l_2, rank);
      
      // -- Free assumptions (exp module)
        // register all known folded permissions guarded by predicate uf_bank
        havoc newPMask;
        assume (forall <A, B> o_26: Ref, f_29: (Field A B) ::
          { newPMask[o_26, f_29] }
          Heap[null, uf_bank#sm(b_24)][o_26, f_29] ==> newPMask[o_26, f_29]
        );
        assume (forall l$0_16: Ref ::
          
          b_24[l$0_16] ==> newPMask[l$0_16, parent]
        );
        Heap := Heap[null, uf_bank#sm(b_24):=newPMask];
        // register all known folded permissions guarded by predicate uf_bank
        havoc newPMask;
        assume (forall <A, B> o: Ref, f_85: (Field A B) ::
          { newPMask[o, f_85] }
          Heap[null, uf_bank#sm(b_24)][o, f_85] ==> newPMask[o, f_85]
        );
        assume (forall l$0_17: Ref ::
          
          b_24[l$0_17] ==> newPMask[l$0_17, rank]
        );
        Heap := Heap[null, uf_bank#sm(b_24):=newPMask];
        assume state(Heap, Mask);
      n := Heap[l_2, rank];
    assert {:msg "  Assert might fail. Assertion (let n == ((unfolding acc(uf_bank(b), write) in l.rank)) in n > n) might not hold. (0336b.vpr@24.5--25.10) [202682]"}
      Heap[l_2, rank] > Heap[l_2, rank];
    
    // -- Free assumptions (exhale module)
      n_2 := Heap[l_2, rank];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of bad might not hold. Assertion false might not hold. (0336b.vpr@18.11--18.16) [202683]"}
      false;
}

// ==================================================
// Translation of method veryBad
// ==================================================

procedure veryBad() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var l_2: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var QPMask: MaskType;
  var l$0_2: Ref;
  var l$0_4: Ref;
  var perm: Perm;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_b: (Set Ref);
  var ExhaleHeap: HeapType;
  
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
    assume false;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[l_2, $allocated];
  
  // -- Translating statement: l := new(parent, rank) -- 0336b.vpr@32.3--32.24
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    l_2 := freshObj;
    Mask := Mask[l_2, parent:=Mask[l_2, parent] + FullPerm];
    Mask := Mask[l_2, rank:=Mask[l_2, rank] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: l.parent := null -- 0336b.vpr@33.3--33.19
    assert {:msg "  Assignment might fail. There might be insufficient permission to access l.parent (0336b.vpr@33.3--33.19) [202684]"}
      FullPerm == Mask[l_2, parent];
    Heap := Heap[l_2, parent:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: l.rank := 0 -- 0336b.vpr@34.3--34.14
    assert {:msg "  Assignment might fail. There might be insufficient permission to access l.rank (0336b.vpr@34.3--34.14) [202685]"}
      FullPerm == Mask[l_2, rank];
    Heap := Heap[l_2, rank:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(uf_bank(Set(l)), write) -- 0336b.vpr@35.3--35.23
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver l$0 is injective
      assert {:msg "  Folding uf_bank(Set(l)) might fail. Quantified resource l$0.parent might not be injective. (0336b.vpr@35.3--35.23) [202688]"}
        (forall l$0: Ref, l$0_1: Ref ::
        { neverTriggered9(l$0), neverTriggered9(l$0_1) }
        (((l$0 != l$0_1 && Set#Singleton(l_2)[l$0]) && Set#Singleton(l_2)[l$0_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> l$0 != l$0_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding uf_bank(Set(l)) might fail. There might be insufficient permission to access l$0.parent (0336b.vpr@35.3--35.23) [202689]"}
        (forall l$0: Ref ::
        { Heap[l$0, parent] } { QPMask[l$0, parent] } { Set#Singleton(l_2)[l$0] }
        Set#Singleton(l_2)[l$0] ==> Mask[l$0, parent] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver l$0
      assume (forall l$0: Ref ::
        { Heap[l$0, parent] } { QPMask[l$0, parent] } { Set#Singleton(l_2)[l$0] }
        Set#Singleton(l_2)[l$0] && NoPerm < FullPerm ==> qpRange9(l$0) && invRecv9(l$0) == l$0
      );
      assume (forall o_4: Ref ::
        { invRecv9(o_4) }
        Set#Singleton(l_2)[invRecv9(o_4)] && (NoPerm < FullPerm && qpRange9(o_4)) ==> invRecv9(o_4) == o_4
      );
    
    // -- assume permission updates for field parent
      assume (forall o_4: Ref ::
        { QPMask[o_4, parent] }
        (Set#Singleton(l_2)[invRecv9(o_4)] && (NoPerm < FullPerm && qpRange9(o_4)) ==> invRecv9(o_4) == o_4 && QPMask[o_4, parent] == Mask[o_4, parent] - FullPerm) && (!(Set#Singleton(l_2)[invRecv9(o_4)] && (NoPerm < FullPerm && qpRange9(o_4))) ==> QPMask[o_4, parent] == Mask[o_4, parent])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != parent ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver l$0 is injective
      assert {:msg "  Folding uf_bank(Set(l)) might fail. Quantified resource l$0.rank might not be injective. (0336b.vpr@35.3--35.23) [202691]"}
        (forall l$0_1_1: Ref, l$0_1_2: Ref ::
        { neverTriggered10(l$0_1_1), neverTriggered10(l$0_1_2) }
        (((l$0_1_1 != l$0_1_2 && Set#Singleton(l_2)[l$0_1_1]) && Set#Singleton(l_2)[l$0_1_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> l$0_1_1 != l$0_1_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding uf_bank(Set(l)) might fail. There might be insufficient permission to access l$0.rank (0336b.vpr@35.3--35.23) [202692]"}
        (forall l$0_1_1: Ref ::
        { Heap[l$0_1_1, rank] } { QPMask[l$0_1_1, rank] } { Set#Singleton(l_2)[l$0_1_1] }
        Set#Singleton(l_2)[l$0_1_1] ==> Mask[l$0_1_1, rank] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver l$0
      assume (forall l$0_1_1: Ref ::
        { Heap[l$0_1_1, rank] } { QPMask[l$0_1_1, rank] } { Set#Singleton(l_2)[l$0_1_1] }
        Set#Singleton(l_2)[l$0_1_1] && NoPerm < FullPerm ==> qpRange10(l$0_1_1) && invRecv10(l$0_1_1) == l$0_1_1
      );
      assume (forall o_4: Ref ::
        { invRecv10(o_4) }
        Set#Singleton(l_2)[invRecv10(o_4)] && (NoPerm < FullPerm && qpRange10(o_4)) ==> invRecv10(o_4) == o_4
      );
    
    // -- assume permission updates for field rank
      assume (forall o_4: Ref ::
        { QPMask[o_4, rank] }
        (Set#Singleton(l_2)[invRecv10(o_4)] && (NoPerm < FullPerm && qpRange10(o_4)) ==> invRecv10(o_4) == o_4 && QPMask[o_4, rank] == Mask[o_4, rank] - FullPerm) && (!(Set#Singleton(l_2)[invRecv10(o_4)] && (NoPerm < FullPerm && qpRange10(o_4))) ==> QPMask[o_4, rank] == Mask[o_4, rank])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != rank ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (Set#Singleton(l_2)[l$0_2]) {
        assert {:msg "  Folding uf_bank(Set(l)) might fail. Assertion 0 <= l$0.rank might not hold. (0336b.vpr@35.3--35.23) [202693]"}
          0 <= Heap[l$0_2, rank];
      }
      assume false;
    }
    assume (forall l$0_3_1_1: Ref ::
      { Set#Singleton(l_2)[l$0_3_1_1] }
      Set#Singleton(l_2)[l$0_3_1_1] ==> 0 <= Heap[l$0_3_1_1, rank]
    );
    if (*) {
      if (Set#Singleton(l_2)[l$0_4] && Heap[l$0_4, parent] != null) {
        assert {:msg "  Folding uf_bank(Set(l)) might fail. Assertion (l$0.parent in Set(l)) might not hold. (0336b.vpr@35.3--35.23) [202694]"}
          Set#Singleton(l_2)[Heap[l$0_4, parent]];
        assert {:msg "  Folding uf_bank(Set(l)) might fail. Assertion l$0.parent.rank > l$0.rank might not hold. (0336b.vpr@35.3--35.23) [202695]"}
          Heap[Heap[l$0_4, parent], rank] > Heap[l$0_4, rank];
      }
      assume false;
    }
    assume (forall l$0_5_1_1: Ref ::
      { Heap[l$0_5_1_1, parent] }
      Set#Singleton(l_2)[l$0_5_1_1] && Heap[l$0_5_1_1, parent] != null ==> Set#Singleton(l_2)[Heap[l$0_5_1_1, parent]] && Heap[Heap[l$0_5_1_1, parent], rank] > Heap[l$0_5_1_1, rank]
    );
    perm := FullPerm;
    Mask := Mask[null, uf_bank(Set#Singleton(l_2)):=Mask[null, uf_bank(Set#Singleton(l_2))] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume uf_bank#trigger(Heap, uf_bank(Set#Singleton(l_2)));
    assume Heap[null, uf_bank(Set#Singleton(l_2))] == CombineFrames(FrameFragment(uf_bank#condqp1(Heap, Set#Singleton(l_2))), FrameFragment(uf_bank#condqp2(Heap, Set#Singleton(l_2))));
    if (!HasDirectPerm(Mask, null, uf_bank(Set#Singleton(l_2)))) {
      Heap := Heap[null, uf_bank#sm(Set#Singleton(l_2)):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, uf_bank(Set#Singleton(l_2)):=freshVersion];
    }
    // register all known folded permissions guarded by predicate uf_bank
    havoc newPMask;
    assume (forall <A, B> o_11: Ref, f_3: (Field A B) ::
      { newPMask[o_11, f_3] }
      Heap[null, uf_bank#sm(Set#Singleton(l_2))][o_11, f_3] ==> newPMask[o_11, f_3]
    );
    assume (forall l$0_6: Ref ::
      
      Set#Singleton(l_2)[l$0_6] ==> newPMask[l$0_6, parent]
    );
    Heap := Heap[null, uf_bank#sm(Set#Singleton(l_2)):=newPMask];
    // register all known folded permissions guarded by predicate uf_bank
    havoc newPMask;
    assume (forall <A, B> o_35: Ref, f_17: (Field A B) ::
      { newPMask[o_35, f_17] }
      Heap[null, uf_bank#sm(Set#Singleton(l_2))][o_35, f_17] ==> newPMask[o_35, f_17]
    );
    assume (forall l$0_7: Ref ::
      
      Set#Singleton(l_2)[l$0_7] ==> newPMask[l$0_7, rank]
    );
    Heap := Heap[null, uf_bank#sm(Set#Singleton(l_2)):=newPMask];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: bad(Set(l), l) -- 0336b.vpr@36.3--36.16
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_b := Set#Singleton(l_2);
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method bad might not hold. There might be insufficient permission to access uf_bank(Set(l)) (0336b.vpr@36.3--36.16) [202697]"}
          perm <= Mask[null, uf_bank(arg_b)];
      }
      Mask := Mask[null, uf_bank(arg_b):=Mask[null, uf_bank(arg_b)] - perm];
      assert {:msg "  The precondition of method bad might not hold. Assertion (l in Set(l)) might not hold. (0336b.vpr@36.3--36.16) [202698]"}
        arg_b[l_2];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      assume false;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of veryBad might not hold. Assertion false might not hold. (0336b.vpr@29.11--29.16) [202699]"}
      false;
}