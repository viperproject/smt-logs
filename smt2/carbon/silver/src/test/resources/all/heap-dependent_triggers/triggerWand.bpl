// 
// Translation of Viper program.
// 
// Date:         2025-01-08 21:52:53
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/heap-dependent_triggers/triggerWand.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/heap-dependent_triggers/triggerWand-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_27: Ref, f_24: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_27, f_24] }
  Heap[o_27, $allocated] ==> Heap[Heap[o_27, f_24], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_23: Ref, f_25: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_23, f_25] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_23, f_25) ==> Heap[o_23, f_25] == ExhaleHeap[o_23, f_25]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_8: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_8), ExhaleHeap[null, PredicateMaskField(pm_f_8)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_8) && IsPredicateField(pm_f_8) ==> Heap[null, PredicateMaskField(pm_f_8)] == ExhaleHeap[null, PredicateMaskField(pm_f_8)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_8: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_8) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_8) && IsPredicateField(pm_f_8) ==> (forall <A, B> o2_8: Ref, f_25: (Field A B) ::
    { ExhaleHeap[o2_8, f_25] }
    Heap[null, PredicateMaskField(pm_f_8)][o2_8, f_25] ==> Heap[o2_8, f_25] == ExhaleHeap[o2_8, f_25]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_8: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_8), ExhaleHeap[null, WandMaskField(pm_f_8)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_8) && IsWandField(pm_f_8) ==> Heap[null, WandMaskField(pm_f_8)] == ExhaleHeap[null, WandMaskField(pm_f_8)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_8: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_8) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_8) && IsWandField(pm_f_8) ==> (forall <A, B> o2_8: Ref, f_25: (Field A B) ::
    { ExhaleHeap[o2_8, f_25] }
    Heap[null, WandMaskField(pm_f_8)][o2_8, f_25] ==> Heap[o2_8, f_25] == ExhaleHeap[o2_8, f_25]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_23: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_23, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_23, $allocated] ==> ExhaleHeap[o_23, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_27: Ref, f_30: (Field A B), v: B ::
  { Heap[o_27, f_30:=v] }
  succHeap(Heap, Heap[o_27, f_30:=v])
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

function  neverTriggered1(x_1: Ref): bool;
function  neverTriggered2(x_3: Ref): bool;
function  neverTriggered3(x_1: Ref): bool;
function  neverTriggered5(x_3: Ref, y_1: Ref): bool;
function  neverTriggered6(x_1: Ref): bool;
function  neverTriggered8(x_3: Ref, y_1: Ref): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): Ref;
function  invRecv2(arg_0: Ref, arg_1_2: Perm, arg_2_1: Ref, arg_3_1: Perm): Ref;
function  invRecv3(recv: Ref): Ref;
function  invRecv4(arg_0: Ref, arg_1_2: Perm, arg_2_1: Ref, arg_3_1: Perm): Ref;
function  invRecv5(arg_0: Ref, arg_1_2: Perm, arg_2_1: Ref, arg_3_1: Perm): Ref;
function  invRecv6(recv: Ref): Ref;
function  invRecv7(arg_0: Ref, arg_1_2: Perm, arg_2_1: Ref, arg_3_1: Perm): Ref;
function  invRecv8(arg_0: Ref, arg_1_2: Perm, arg_2_1: Ref, arg_3_1: Perm): Ref;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(recv: Ref): bool;
function  qpRange2(arg_0: Ref, arg_1_2: Perm, arg_2_1: Ref, arg_3_1: Perm): bool;
function  qpRange3(recv: Ref): bool;
function  qpRange5(arg_0: Ref, arg_1_2: Perm, arg_2_1: Ref, arg_3_1: Perm): bool;
function  qpRange6(recv: Ref): bool;
function  qpRange8(arg_0: Ref, arg_1_2: Perm, arg_2_1: Ref, arg_3_1: Perm): bool;

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
// Preamble of Wand Module.
// ==================================================

type WandType_wand;
function  wand(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm): Field WandType_wand int;
function  wand#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm): Field WandType_wand PMaskType;
function  wand#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm): Field WandType_wand FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand(arg1, arg2, arg3, arg4) }
  IsWandField(wand(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand#ft(arg1, arg2, arg3, arg4) }
  IsWandField(wand#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand#ft(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { WandMaskField(wand#ft(arg1, arg2, arg3, arg4)) }
  wand#sm(arg1, arg2, arg3, arg4) == WandMaskField(wand#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand(arg1, arg2, arg3, arg4) }
  getPredWandId(wand(arg1, arg2, arg3, arg4)) == 0
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm ::
  { wand(arg1, arg2, arg3, arg4), wand(arg1_2, arg2_2, arg3_2, arg4_2) }
  wand(arg1, arg2, arg3, arg4) == wand(arg1_2, arg2_2, arg3_2, arg4_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && arg4 == arg4_2))
);

// ==================================================
// Translation of all fields
// ==================================================

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);

// ==================================================
// Translation of method m1
// ==================================================

procedure m1(xs: (Set Ref), y: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var z: Ref;
  var QPMask: MaskType;
  var x_10: Ref;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var perm: Perm;
  var Labellhs1Mask: MaskType;
  var Labellhs1Heap: HeapType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[y, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[z, $allocated];
  
  // -- Translating statement: inhale (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write)) -- triggerWand.vpr@7.5--7.49
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource x.f might not be injective. (triggerWand.vpr@7.12--7.49) [140620]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && xs[x_1]) && xs[x_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { xs[x_1] }
        xs[x_1] && NoPerm < FullPerm ==> qpRange1(x_1) && invRecv1(x_1) == x_1
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        (xs[invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4) ==> invRecv1(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { xs[x_1] }
        xs[x_1] ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((xs[invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4) ==> (NoPerm < FullPerm ==> invRecv1(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((xs[invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x: Ref ::
  //     { acc(x.f, write) --* acc(y.f, write) }
  //     (x in xs) ==> acc(x.f, write) --* acc(y.f, write)) -- triggerWand.vpr@8.5--8.86
    
    // -- Check definedness of (forall x: Ref :: { acc(x.f, write) --* acc(y.f, write) } (x in xs) ==> acc(x.f, write) --* acc(y.f, write))
      if (*) {
        if (xs[x_10]) {
          if (*) {
            havoc WandDefLHSHeap;
            WandDefLHSMask := ZeroMask;
            perm := FullPerm;
            assume x_10 != null;
            WandDefLHSMask := WandDefLHSMask[x_10, f_7:=WandDefLHSMask[x_10, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            assume state(WandDefLHSHeap, WandDefLHSMask);
            
            // -- Translating statement: label lhs1 -- triggerWand.vpr@8.65--8.86
              lhs1:
              Labellhs1Mask := WandDefLHSMask;
              Labellhs1Heap := WandDefLHSHeap;
              assume state(WandDefLHSHeap, WandDefLHSMask);
            havoc WandDefRHSHeap;
            WandDefRHSMask := ZeroMask;
            perm := FullPerm;
            assume y != null;
            WandDefRHSMask := WandDefRHSMask[y, f_7:=WandDefRHSMask[y, f_7] + perm];
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume false;
          }
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(x.f, write) --* acc(y.f, write) is injective
      assert {:msg "  Inhale might fail. Quantified resource acc(x.f, write) --* acc(y.f, write) might not be injective. (triggerWand.vpr@8.12--8.86) [140621]"}
        (forall x_3: Ref, x_3_1: Ref ::
        { neverTriggered2(x_3), neverTriggered2(x_3_1) }
        (((x_3 != x_3_1 && xs[x_3]) && xs[x_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> ((x_3 != x_3_1 || FullPerm != FullPerm) || y != y) || FullPerm != FullPerm
      );
    
    // -- Define Inverse Function
      assume (forall x_3: Ref ::
        { Heap[null, wand(x_3, FullPerm, y, FullPerm)] } { Mask[null, wand(x_3, FullPerm, y, FullPerm)] } { Heap[null, wand(x_3, FullPerm, y, FullPerm)] }
        xs[x_3] && NoPerm < FullPerm ==> invRecv2(x_3, FullPerm, y, FullPerm) == x_3 && qpRange2(x_3, FullPerm, y, FullPerm)
      );
      assume (forall arg_0: Ref, arg_1_2: Perm, arg_2_1: Ref, arg_3_1: Perm ::
        { invRecv2(arg_0, arg_1_2, arg_2_1, arg_3_1) }
        (xs[invRecv2(arg_0, arg_1_2, arg_2_1, arg_3_1)] && NoPerm < FullPerm) && qpRange2(arg_0, arg_1_2, arg_2_1, arg_3_1) ==> ((invRecv2(arg_0, arg_1_2, arg_2_1, arg_3_1) == arg_0 && FullPerm == arg_1_2) && y == arg_2_1) && FullPerm == arg_3_1
      );
    
    // -- Define updated permissions
      assume (forall arg_0: Ref, arg_1_2: Perm, arg_2_1: Ref, arg_3_1: Perm ::
        { QPMask[null, wand(arg_0, arg_1_2, arg_2_1, arg_3_1)] }
        (xs[invRecv2(arg_0, arg_1_2, arg_2_1, arg_3_1)] && NoPerm < FullPerm) && qpRange2(arg_0, arg_1_2, arg_2_1, arg_3_1) ==> (NoPerm < FullPerm ==> ((invRecv2(arg_0, arg_1_2, arg_2_1, arg_3_1) == arg_0 && FullPerm == arg_1_2) && y == arg_2_1) && FullPerm == arg_3_1) && QPMask[null, wand(arg_0, arg_1_2, arg_2_1, arg_3_1)] == Mask[null, wand(arg_0, arg_1_2, arg_2_1, arg_3_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsWandField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall arg_0: Ref, arg_1_2: Perm, arg_2_1: Ref, arg_3_1: Perm ::
        { QPMask[null, wand(arg_0, arg_1_2, arg_2_1, arg_3_1)] }
        !((xs[invRecv2(arg_0, arg_1_2, arg_2_1, arg_3_1)] && NoPerm < FullPerm) && qpRange2(arg_0, arg_1_2, arg_2_1, arg_3_1)) ==> QPMask[null, wand(arg_0, arg_1_2, arg_2_1, arg_3_1)] == Mask[null, wand(arg_0, arg_1_2, arg_2_1, arg_3_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (z in xs) -- triggerWand.vpr@10.12--10.19
    assume xs[z];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(z.f, write) --* acc(y.f, write) -- triggerWand.vpr@11.5--11.32
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (triggerWand.vpr@11.5--11.32) [140622]"}
        FullPerm <= Mask[null, wand(z, FullPerm, y, FullPerm)];
      Mask := Mask[null, wand(z, FullPerm, y, FullPerm):=Mask[null, wand(z, FullPerm, y, FullPerm)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access z.f (triggerWand.vpr@11.5--11.32) [140624]"}
          perm <= Mask[z, f_7];
      }
      Mask := Mask[z, f_7:=Mask[z, f_7] - perm];
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      assume y != null;
      Mask := Mask[y, f_7:=Mask[y, f_7] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m2
// ==================================================

procedure m2(xs: (Set Ref), ys: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var z: Ref;
  var QPMask: MaskType;
  var x_11: Ref;
  var y_5: Ref;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var perm: Perm;
  var Labellhs3Mask: MaskType;
  var Labellhs3Heap: HeapType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var x_32: Ref;
  var y_14: Ref;
  var Labellhs4Mask: MaskType;
  var Labellhs4Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[z, $allocated];
  
  // -- Translating statement: inhale (forall x: Ref ::x == z ==> acc(x.f, write)) -- triggerWand.vpr@16.5--16.48
    
    // -- Check definedness of (forall x: Ref ::x == z ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource x.f might not be injective. (triggerWand.vpr@16.12--16.48) [140626]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && x_1 == z) && x_1_1 == z) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] }
        x_1 == z && NoPerm < FullPerm ==> qpRange3(x_1) && invRecv3(x_1) == x_1
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        (invRecv3(o_4) == z && NoPerm < FullPerm) && qpRange3(o_4) ==> invRecv3(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] }
        x_1 == z ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((invRecv3(o_4) == z && NoPerm < FullPerm) && qpRange3(o_4) ==> (NoPerm < FullPerm ==> invRecv3(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((invRecv3(o_4) == z && NoPerm < FullPerm) && qpRange3(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x: Ref, y: Ref ::
  //     { (x in xs), (y in ys) }
  //     (x in xs) && (y in ys) ==> acc(x.f, write) --* acc(y.f, write)) -- triggerWand.vpr@17.5--17.81
    
    // -- Check definedness of (forall x: Ref, y: Ref :: { (x in xs), (y in ys) } (x in xs) && (y in ys) ==> acc(x.f, write) --* acc(y.f, write))
      if (*) {
        if (xs[x_11] && ys[y_5]) {
          if (*) {
            havoc WandDefLHSHeap;
            WandDefLHSMask := ZeroMask;
            perm := FullPerm;
            assume x_11 != null;
            WandDefLHSMask := WandDefLHSMask[x_11, f_7:=WandDefLHSMask[x_11, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            assume state(WandDefLHSHeap, WandDefLHSMask);
            
            // -- Translating statement: label lhs3 -- triggerWand.vpr@17.60--17.81
              lhs3:
              Labellhs3Mask := WandDefLHSMask;
              Labellhs3Heap := WandDefLHSHeap;
              assume state(WandDefLHSHeap, WandDefLHSMask);
            havoc WandDefRHSHeap;
            WandDefRHSMask := ZeroMask;
            perm := FullPerm;
            assume y_5 != null;
            WandDefRHSMask := WandDefRHSMask[y_5, f_7:=WandDefRHSMask[y_5, f_7] + perm];
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume false;
          }
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(x.f, write) --* acc(y.f, write) is injective
      assert {:msg "  Inhale might fail. Quantified resource acc(x.f, write) --* acc(y.f, write) might not be injective. (triggerWand.vpr@17.12--17.81) [140627]"}
        (forall x_3: Ref, y_1: Ref, x_3_1: Ref, y_1_1: Ref ::
        { neverTriggered5(x_3, y_1), neverTriggered5(x_3_1, y_1_1) }
        ((((x_3 != x_3_1 && y_1 != y_1_1) && (xs[x_3] && ys[y_1])) && (xs[x_3_1] && ys[y_1_1])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> ((x_3 != x_3_1 || FullPerm != FullPerm) || y_1 != y_1_1) || FullPerm != FullPerm
      );
    
    // -- Define Inverse Function
      assume (forall x_3: Ref, y_1: Ref ::
        { Heap[null, wand(x_3, FullPerm, y_1, FullPerm)] } { Mask[null, wand(x_3, FullPerm, y_1, FullPerm)] } { xs[x_3], ys[y_1] }
        (xs[x_3] && ys[y_1]) && NoPerm < FullPerm ==> (invRecv4(x_3, FullPerm, y_1, FullPerm) == x_3 && invRecv5(x_3, FullPerm, y_1, FullPerm) == y_1) && qpRange5(x_3, FullPerm, y_1, FullPerm)
      );
      assume (forall arg_0: Ref, arg_1_2: Perm, arg_2_1: Ref, arg_3_1: Perm ::
        { invRecv4(arg_0, arg_1_2, arg_2_1, arg_3_1), invRecv5(arg_0, arg_1_2, arg_2_1, arg_3_1) }
        ((xs[invRecv4(arg_0, arg_1_2, arg_2_1, arg_3_1)] && ys[invRecv5(arg_0, arg_1_2, arg_2_1, arg_3_1)]) && NoPerm < FullPerm) && qpRange5(arg_0, arg_1_2, arg_2_1, arg_3_1) ==> ((invRecv4(arg_0, arg_1_2, arg_2_1, arg_3_1) == arg_0 && FullPerm == arg_1_2) && invRecv5(arg_0, arg_1_2, arg_2_1, arg_3_1) == arg_2_1) && FullPerm == arg_3_1
      );
    
    // -- Define updated permissions
      assume (forall arg_0: Ref, arg_1_2: Perm, arg_2_1: Ref, arg_3_1: Perm ::
        { QPMask[null, wand(arg_0, arg_1_2, arg_2_1, arg_3_1)] }
        ((xs[invRecv4(arg_0, arg_1_2, arg_2_1, arg_3_1)] && ys[invRecv5(arg_0, arg_1_2, arg_2_1, arg_3_1)]) && NoPerm < FullPerm) && qpRange5(arg_0, arg_1_2, arg_2_1, arg_3_1) ==> (NoPerm < FullPerm ==> ((invRecv4(arg_0, arg_1_2, arg_2_1, arg_3_1) == arg_0 && FullPerm == arg_1_2) && invRecv5(arg_0, arg_1_2, arg_2_1, arg_3_1) == arg_2_1) && FullPerm == arg_3_1) && QPMask[null, wand(arg_0, arg_1_2, arg_2_1, arg_3_1)] == Mask[null, wand(arg_0, arg_1_2, arg_2_1, arg_3_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsWandField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall arg_0: Ref, arg_1_2: Perm, arg_2_1: Ref, arg_3_1: Perm ::
        { QPMask[null, wand(arg_0, arg_1_2, arg_2_1, arg_3_1)] }
        !(((xs[invRecv4(arg_0, arg_1_2, arg_2_1, arg_3_1)] && ys[invRecv5(arg_0, arg_1_2, arg_2_1, arg_3_1)]) && NoPerm < FullPerm) && qpRange5(arg_0, arg_1_2, arg_2_1, arg_3_1)) ==> QPMask[null, wand(arg_0, arg_1_2, arg_2_1, arg_3_1)] == Mask[null, wand(arg_0, arg_1_2, arg_2_1, arg_3_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x: Ref, y: Ref ::
  //     { acc(x.f, write) --* acc(y.f, write) }
  //     (x in xs) && (y in ys) ==> x != y) -- triggerWand.vpr@18.5--18.90
    
    // -- Check definedness of (forall x: Ref, y: Ref :: { acc(x.f, write) --* acc(y.f, write) } (x in xs) && (y in ys) ==> x != y)
      if (*) {
        assume false;
      }
    assume (forall x_6: Ref, y_4_1: Ref ::
      { Heap[null, wand(x_6, FullPerm, y_4_1, FullPerm)] }
      xs[x_6] && ys[y_4_1] ==> x_6 != y_4_1
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm
  //     x: Ref, y: Ref [acc(x.f, write) --* acc(y.f, write)] :: x != y) -- triggerWand.vpr@21.5--21.68
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forperm x: Ref, y: Ref [acc(x.f, write) --* acc(y.f, write)] :: x != y)
      if (*) {
        if (HasDirectPerm(Mask, null, wand(x_32, FullPerm, y_14, FullPerm))) {
          if (*) {
            havoc WandDefLHSHeap;
            WandDefLHSMask := ZeroMask;
            perm := FullPerm;
            assume x_32 != null;
            WandDefLHSMask := WandDefLHSMask[x_32, f_7:=WandDefLHSMask[x_32, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            assume state(WandDefLHSHeap, WandDefLHSMask);
            
            // -- Translating statement: label lhs4 -- triggerWand.vpr@21.36--21.57
              lhs4:
              Labellhs4Mask := WandDefLHSMask;
              Labellhs4Heap := WandDefLHSHeap;
              assume state(WandDefLHSHeap, WandDefLHSMask);
            havoc WandDefRHSHeap;
            WandDefRHSMask := ZeroMask;
            perm := FullPerm;
            assume y_14 != null;
            WandDefRHSMask := WandDefRHSMask[y_14, f_7:=WandDefRHSMask[y_14, f_7] + perm];
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume false;
          }
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm x: Ref, y: Ref [acc(x.f, write) --* acc(y.f, write)] :: x != y) might not hold. (triggerWand.vpr@21.12--21.68) [140628]"}
      (forall x_8_1: Ref, y_6_2: Ref ::
      { Mask[null, wand(x_8_1, FullPerm, y_6_2, FullPerm)] } { Heap[null, wand(x_8_1, FullPerm, y_6_2, FullPerm)] }
      HasDirectPerm(Mask, null, wand(x_8_1, FullPerm, y_6_2, FullPerm)) ==> x_8_1 != y_6_2
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m3
// ==================================================

procedure m3(xs: (Set Ref), ys: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var z: Ref;
  var a_2: Ref;
  var b_24: Ref;
  var QPMask: MaskType;
  var x_18: Ref;
  var y_3: Ref;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var perm: Perm;
  var Labellhs5Mask: MaskType;
  var Labellhs5Heap: HeapType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var Labellhs6Mask: MaskType;
  var Labellhs6Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[z, $allocated];
    assume Heap[a_2, $allocated];
    assume Heap[b_24, $allocated];
  
  // -- Translating statement: inhale (forall x: Ref ::x == z ==> acc(x.f, write)) -- triggerWand.vpr@26.5--26.48
    
    // -- Check definedness of (forall x: Ref ::x == z ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource x.f might not be injective. (triggerWand.vpr@26.12--26.48) [140629]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && x_1 == z) && x_1_1 == z) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] }
        x_1 == z && NoPerm < FullPerm ==> qpRange6(x_1) && invRecv6(x_1) == x_1
      );
      assume (forall o_4: Ref ::
        { invRecv6(o_4) }
        (invRecv6(o_4) == z && NoPerm < FullPerm) && qpRange6(o_4) ==> invRecv6(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] }
        x_1 == z ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((invRecv6(o_4) == z && NoPerm < FullPerm) && qpRange6(o_4) ==> (NoPerm < FullPerm ==> invRecv6(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((invRecv6(o_4) == z && NoPerm < FullPerm) && qpRange6(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x: Ref, y: Ref ::
  //     { (x in xs), (y in ys) }
  //     (x in xs) && (y in ys) ==> acc(x.f, write) --* acc(y.f, write)) -- triggerWand.vpr@27.5--27.81
    
    // -- Check definedness of (forall x: Ref, y: Ref :: { (x in xs), (y in ys) } (x in xs) && (y in ys) ==> acc(x.f, write) --* acc(y.f, write))
      if (*) {
        if (xs[x_18] && ys[y_3]) {
          if (*) {
            havoc WandDefLHSHeap;
            WandDefLHSMask := ZeroMask;
            perm := FullPerm;
            assume x_18 != null;
            WandDefLHSMask := WandDefLHSMask[x_18, f_7:=WandDefLHSMask[x_18, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            assume state(WandDefLHSHeap, WandDefLHSMask);
            
            // -- Translating statement: label lhs5 -- triggerWand.vpr@27.60--27.81
              lhs5:
              Labellhs5Mask := WandDefLHSMask;
              Labellhs5Heap := WandDefLHSHeap;
              assume state(WandDefLHSHeap, WandDefLHSMask);
            havoc WandDefRHSHeap;
            WandDefRHSMask := ZeroMask;
            perm := FullPerm;
            assume y_3 != null;
            WandDefRHSMask := WandDefRHSMask[y_3, f_7:=WandDefRHSMask[y_3, f_7] + perm];
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume false;
          }
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(x.f, write) --* acc(y.f, write) is injective
      assert {:msg "  Inhale might fail. Quantified resource acc(x.f, write) --* acc(y.f, write) might not be injective. (triggerWand.vpr@27.12--27.81) [140630]"}
        (forall x_3: Ref, y_1: Ref, x_3_1: Ref, y_1_1: Ref ::
        { neverTriggered8(x_3, y_1), neverTriggered8(x_3_1, y_1_1) }
        ((((x_3 != x_3_1 && y_1 != y_1_1) && (xs[x_3] && ys[y_1])) && (xs[x_3_1] && ys[y_1_1])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> ((x_3 != x_3_1 || FullPerm != FullPerm) || y_1 != y_1_1) || FullPerm != FullPerm
      );
    
    // -- Define Inverse Function
      assume (forall x_3: Ref, y_1: Ref ::
        { Heap[null, wand(x_3, FullPerm, y_1, FullPerm)] } { Mask[null, wand(x_3, FullPerm, y_1, FullPerm)] } { xs[x_3], ys[y_1] }
        (xs[x_3] && ys[y_1]) && NoPerm < FullPerm ==> (invRecv7(x_3, FullPerm, y_1, FullPerm) == x_3 && invRecv8(x_3, FullPerm, y_1, FullPerm) == y_1) && qpRange8(x_3, FullPerm, y_1, FullPerm)
      );
      assume (forall arg_0: Ref, arg_1_2: Perm, arg_2_1: Ref, arg_3_1: Perm ::
        { invRecv7(arg_0, arg_1_2, arg_2_1, arg_3_1), invRecv8(arg_0, arg_1_2, arg_2_1, arg_3_1) }
        ((xs[invRecv7(arg_0, arg_1_2, arg_2_1, arg_3_1)] && ys[invRecv8(arg_0, arg_1_2, arg_2_1, arg_3_1)]) && NoPerm < FullPerm) && qpRange8(arg_0, arg_1_2, arg_2_1, arg_3_1) ==> ((invRecv7(arg_0, arg_1_2, arg_2_1, arg_3_1) == arg_0 && FullPerm == arg_1_2) && invRecv8(arg_0, arg_1_2, arg_2_1, arg_3_1) == arg_2_1) && FullPerm == arg_3_1
      );
    
    // -- Define updated permissions
      assume (forall arg_0: Ref, arg_1_2: Perm, arg_2_1: Ref, arg_3_1: Perm ::
        { QPMask[null, wand(arg_0, arg_1_2, arg_2_1, arg_3_1)] }
        ((xs[invRecv7(arg_0, arg_1_2, arg_2_1, arg_3_1)] && ys[invRecv8(arg_0, arg_1_2, arg_2_1, arg_3_1)]) && NoPerm < FullPerm) && qpRange8(arg_0, arg_1_2, arg_2_1, arg_3_1) ==> (NoPerm < FullPerm ==> ((invRecv7(arg_0, arg_1_2, arg_2_1, arg_3_1) == arg_0 && FullPerm == arg_1_2) && invRecv8(arg_0, arg_1_2, arg_2_1, arg_3_1) == arg_2_1) && FullPerm == arg_3_1) && QPMask[null, wand(arg_0, arg_1_2, arg_2_1, arg_3_1)] == Mask[null, wand(arg_0, arg_1_2, arg_2_1, arg_3_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsWandField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall arg_0: Ref, arg_1_2: Perm, arg_2_1: Ref, arg_3_1: Perm ::
        { QPMask[null, wand(arg_0, arg_1_2, arg_2_1, arg_3_1)] }
        !(((xs[invRecv7(arg_0, arg_1_2, arg_2_1, arg_3_1)] && ys[invRecv8(arg_0, arg_1_2, arg_2_1, arg_3_1)]) && NoPerm < FullPerm) && qpRange8(arg_0, arg_1_2, arg_2_1, arg_3_1)) ==> QPMask[null, wand(arg_0, arg_1_2, arg_2_1, arg_3_1)] == Mask[null, wand(arg_0, arg_1_2, arg_2_1, arg_3_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x: Ref, y: Ref ::
  //     { acc(x.f, write) --* acc(y.f, write) }
  //     (x in xs) && (y in ys) ==> x != y) -- triggerWand.vpr@28.5--28.90
    
    // -- Check definedness of (forall x: Ref, y: Ref :: { acc(x.f, write) --* acc(y.f, write) } (x in xs) && (y in ys) ==> x != y)
      if (*) {
        assume false;
      }
    assume (forall x_6: Ref, y_4_1: Ref ::
      { Heap[null, wand(x_6, FullPerm, y_4_1, FullPerm)] }
      xs[x_6] && ys[y_4_1] ==> x_6 != y_4_1
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (a in xs) -- triggerWand.vpr@32.12--32.19
    assume xs[a_2];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (b in ys) -- triggerWand.vpr@33.12--33.19
    assume ys[b_24];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert perm(acc(a.f, write) --* acc(b.f, write)) == write -- triggerWand.vpr@35.5--35.48
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of perm(acc(a.f, write) --* acc(b.f, write)) == write
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        assume a_2 != null;
        WandDefLHSMask := WandDefLHSMask[a_2, f_7:=WandDefLHSMask[a_2, f_7] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs6 -- triggerWand.vpr@35.17--35.38
          lhs6:
          Labellhs6Mask := WandDefLHSMask;
          Labellhs6Heap := WandDefLHSHeap;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        assume b_24 != null;
        WandDefRHSMask := WandDefRHSMask[b_24, f_7:=WandDefRHSMask[b_24, f_7] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion perm(acc(a.f, write) --* acc(b.f, write)) == write might not hold. (triggerWand.vpr@35.12--35.48) [140631]"}
      Mask[null, wand(a_2, FullPerm, b_24, FullPerm)] == FullPerm;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a != b -- triggerWand.vpr@37.5--37.18
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion a != b might not hold. (triggerWand.vpr@37.12--37.18) [140632]"}
      a_2 != b_24;
    assume state(Heap, Mask);
}