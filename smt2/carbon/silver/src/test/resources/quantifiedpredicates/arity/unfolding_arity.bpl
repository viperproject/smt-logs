// 
// Translation of Viper program.
// 
// Date:         2024-12-29 15:15:32
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpredicates/arity/unfolding_arity.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpredicates/arity/unfolding_arity-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_8: Ref, f_12: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_8, f_12] }
  Heap[o_8, $allocated] ==> Heap[Heap[o_8, f_12], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_38: Ref, f_44: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_38, f_44] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_38, f_44) ==> Heap[o_38, f_44] == ExhaleHeap[o_38, f_44]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_21: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_21), ExhaleHeap[null, PredicateMaskField(pm_f_21)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_21) && IsPredicateField(pm_f_21) ==> Heap[null, PredicateMaskField(pm_f_21)] == ExhaleHeap[null, PredicateMaskField(pm_f_21)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_21: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_21) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_21) && IsPredicateField(pm_f_21) ==> (forall <A, B> o2_21: Ref, f_44: (Field A B) ::
    { ExhaleHeap[o2_21, f_44] }
    Heap[null, PredicateMaskField(pm_f_21)][o2_21, f_44] ==> Heap[o2_21, f_44] == ExhaleHeap[o2_21, f_44]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_21: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_21), ExhaleHeap[null, WandMaskField(pm_f_21)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_21) && IsWandField(pm_f_21) ==> Heap[null, WandMaskField(pm_f_21)] == ExhaleHeap[null, WandMaskField(pm_f_21)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_21: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_21) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_21) && IsWandField(pm_f_21) ==> (forall <A, B> o2_21: Ref, f_44: (Field A B) ::
    { ExhaleHeap[o2_21, f_44] }
    Heap[null, WandMaskField(pm_f_21)][o2_21, f_44] ==> Heap[o2_21, f_44] == ExhaleHeap[o2_21, f_44]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_38: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_38, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_38, $allocated] ==> ExhaleHeap[o_38, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_8: Ref, f_8: (Field A B), v: B ::
  { Heap[o_8, f_8:=v] }
  succHeap(Heap, Heap[o_8, f_8:=v])
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

function  neverTriggered1(r_1_1: Ref): bool;
function  neverTriggered2(r_1_1: Ref): bool;
function  neverTriggered3(r_1_1: Ref): bool;
function  neverTriggered4(r_1_1: Ref): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(r_2_1_1: Ref): Ref;
function  invRecv2(r_2_1_1: Ref): Ref;
function  invRecv3(r_2_1_1: Ref, i_1_1_1: int): Ref;
function  invRecv4(r_2_1_1: Ref, i_1_1_1: int): Ref;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(r_2_1_1: Ref): bool;
function  qpRange2(r_2_1_1: Ref): bool;
function  qpRange3(r_2_1_1: Ref, i_1_1_1: int): bool;
function  qpRange4(r_2_1_1: Ref, i_1_1_1: int): bool;

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

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);

// ==================================================
// Translation of predicate p1
// ==================================================

type PredicateType_p1;
function  p1(r_1: Ref): Field PredicateType_p1 FrameType;
function  p1#sm(r_1: Ref): Field PredicateType_p1 PMaskType;
axiom (forall r_1: Ref ::
  { PredicateMaskField(p1(r_1)) }
  PredicateMaskField(p1(r_1)) == p1#sm(r_1)
);
axiom (forall r_1: Ref ::
  { p1(r_1) }
  IsPredicateField(p1(r_1))
);
axiom (forall r_1: Ref ::
  { p1(r_1) }
  getPredWandId(p1(r_1)) == 0
);
function  p1#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  p1#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall r_1: Ref, r2: Ref ::
  { p1(r_1), p1(r2) }
  p1(r_1) == p1(r2) ==> r_1 == r2
);
axiom (forall r_1: Ref, r2: Ref ::
  { p1#sm(r_1), p1#sm(r2) }
  p1#sm(r_1) == p1#sm(r2) ==> r_1 == r2
);

axiom (forall Heap: HeapType, r_1: Ref ::
  { p1#trigger(Heap, p1(r_1)) }
  p1#everUsed(p1(r_1))
);

procedure p1#definedness(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of p1
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[r_1, $allocated];
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate p2
// ==================================================

type PredicateType_p2;
function  p2(r_1: Ref): Field PredicateType_p2 FrameType;
function  p2#sm(r_1: Ref): Field PredicateType_p2 PMaskType;
axiom (forall r_1: Ref ::
  { PredicateMaskField(p2(r_1)) }
  PredicateMaskField(p2(r_1)) == p2#sm(r_1)
);
axiom (forall r_1: Ref ::
  { p2(r_1) }
  IsPredicateField(p2(r_1))
);
axiom (forall r_1: Ref ::
  { p2(r_1) }
  getPredWandId(p2(r_1)) == 1
);
function  p2#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  p2#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall r_1: Ref, r2: Ref ::
  { p2(r_1), p2(r2) }
  p2(r_1) == p2(r2) ==> r_1 == r2
);
axiom (forall r_1: Ref, r2: Ref ::
  { p2#sm(r_1), p2#sm(r2) }
  p2#sm(r_1) == p2#sm(r2) ==> r_1 == r2
);

axiom (forall Heap: HeapType, r_1: Ref ::
  { p2#trigger(Heap, p2(r_1)) }
  p2#everUsed(p2(r_1))
);

procedure p2#definedness(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of p2
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[r_1, $allocated];
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of r.f == 5
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access r.f (unfolding_arity.vpr@12.1--15.2) [108812]"}
        HasDirectPerm(Mask, r_1, f_7);
    assume Heap[r_1, f_7] == 5;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate p3
// ==================================================

type PredicateType_p3;
function  p3(r_1: Ref, i: int): Field PredicateType_p3 FrameType;
function  p3#sm(r_1: Ref, i: int): Field PredicateType_p3 PMaskType;
axiom (forall r_1: Ref, i: int ::
  { PredicateMaskField(p3(r_1, i)) }
  PredicateMaskField(p3(r_1, i)) == p3#sm(r_1, i)
);
axiom (forall r_1: Ref, i: int ::
  { p3(r_1, i) }
  IsPredicateField(p3(r_1, i))
);
axiom (forall r_1: Ref, i: int ::
  { p3(r_1, i) }
  getPredWandId(p3(r_1, i)) == 2
);
function  p3#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  p3#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall r_1: Ref, i: int, r2: Ref, i2_1: int ::
  { p3(r_1, i), p3(r2, i2_1) }
  p3(r_1, i) == p3(r2, i2_1) ==> r_1 == r2 && i == i2_1
);
axiom (forall r_1: Ref, i: int, r2: Ref, i2_1: int ::
  { p3#sm(r_1, i), p3#sm(r2, i2_1) }
  p3#sm(r_1, i) == p3#sm(r2, i2_1) ==> r_1 == r2 && i == i2_1
);

axiom (forall Heap: HeapType, r_1: Ref, i: int ::
  { p3#trigger(Heap, p3(r_1, i)) }
  p3#everUsed(p3(r_1, i))
);

procedure p3#definedness(r_1: Ref, i: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of p3
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[r_1, $allocated];
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    assume i > 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m1
// ==================================================

procedure m1(xs: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var r_27: Ref;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var r_28: Ref;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var r_7: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall r: Ref :: { (r in xs) } (r in xs) ==> acc(p1(r), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p1(r), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p1(r) might not be injective. (unfolding_arity.vpr@24.10--24.48) [108813]"}
        (forall r_1_1: Ref, r_1_2: Ref ::
        { neverTriggered1(r_1_1), neverTriggered1(r_1_2) }
        (((r_1_1 != r_1_2 && xs[r_1_1]) && xs[r_1_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_1_1 != r_1_2
      );
    
    // -- Define Inverse Function
      assume (forall r_1_1: Ref ::
        { Heap[null, p1(r_1_1)] } { Mask[null, p1(r_1_1)] } { xs[r_1_1] }
        xs[r_1_1] && NoPerm < FullPerm ==> invRecv1(r_1_1) == r_1_1 && qpRange1(r_1_1)
      );
      assume (forall r_2_1_1: Ref ::
        { invRecv1(r_2_1_1) }
        (xs[invRecv1(r_2_1_1)] && NoPerm < FullPerm) && qpRange1(r_2_1_1) ==> invRecv1(r_2_1_1) == r_2_1_1
      );
    
    // -- Define updated permissions
      assume (forall r_2_1_1: Ref ::
        { QPMask[null, p1(r_2_1_1)] }
        (xs[invRecv1(r_2_1_1)] && NoPerm < FullPerm) && qpRange1(r_2_1_1) ==> (NoPerm < FullPerm ==> invRecv1(r_2_1_1) == r_2_1_1) && QPMask[null, p1(r_2_1_1)] == Mask[null, p1(r_2_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall r_2_1_1: Ref ::
        { QPMask[null, p1(r_2_1_1)] }
        !((xs[invRecv1(r_2_1_1)] && NoPerm < FullPerm) && qpRange1(r_2_1_1)) ==> QPMask[null, p1(r_2_1_1)] == Mask[null, p1(r_2_1_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale (forall r: Ref ::
  //     { (r in xs) }
  //     (r in xs) ==> (unfolding acc(p1(r), write) in r.f == 4)) -- unfolding_arity.vpr@26.12--26.67
    
    // -- Check definedness of (forall r: Ref :: { (r in xs) } (r in xs) ==> (unfolding acc(p1(r), write) in r.f == 4))
      if (*) {
        if (xs[r_27]) {
          UnfoldingHeap := Heap;
          UnfoldingMask := Mask;
          assume p1#trigger(UnfoldingHeap, p1(r_27));
          assume UnfoldingHeap[null, p1(r_27)] == FrameFragment(UnfoldingHeap[r_27, f_7]);
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Inhale might fail. There might be insufficient permission to access p1(r) (unfolding_arity.vpr@26.12--26.67) [108814]"}
              perm <= UnfoldingMask[null, p1(r_27)];
          }
          UnfoldingMask := UnfoldingMask[null, p1(r_27):=UnfoldingMask[null, p1(r_27)] - perm];
          perm := FullPerm;
          assume r_27 != null;
          UnfoldingMask := UnfoldingMask[r_27, f_7:=UnfoldingMask[r_27, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Inhale might fail. There might be insufficient permission to access r.f (unfolding_arity.vpr@26.12--26.67) [108815]"}
            HasDirectPerm(UnfoldingMask, r_27, f_7);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, p1#sm(r_27):=Heap[null, p1#sm(r_27)][r_27, f_7:=true]];
            assume state(Heap, Mask);
        }
        assume false;
      }
    assume (forall r_5: Ref ::
      { xs[r_5] }
      xs[r_5] ==> Heap[r_5, f_7] == 4
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall r: Ref ::
  //     { (r in xs) }
  //     (r in xs) ==> (unfolding acc(p1(r), write) in r.f == 4)) -- unfolding_arity.vpr@27.5--27.67
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall r: Ref :: { (r in xs) } (r in xs) ==> (unfolding acc(p1(r), write) in r.f == 4))
      if (*) {
        if (xs[r_28]) {
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume p1#trigger(UnfoldingHeap, p1(r_28));
          assume UnfoldingHeap[null, p1(r_28)] == FrameFragment(UnfoldingHeap[r_28, f_7]);
          ExhaleWellDef1Heap := UnfoldingHeap;
          ExhaleWellDef1Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access p1(r) (unfolding_arity.vpr@27.12--27.67) [108816]"}
              perm <= UnfoldingMask[null, p1(r_28)];
          }
          UnfoldingMask := UnfoldingMask[null, p1(r_28):=UnfoldingMask[null, p1(r_28)] - perm];
          perm := FullPerm;
          assume r_28 != null;
          UnfoldingMask := UnfoldingMask[r_28, f_7:=UnfoldingMask[r_28, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f (unfolding_arity.vpr@27.12--27.67) [108817]"}
            HasDirectPerm(UnfoldingMask, r_28, f_7);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, p1#sm(r_28):=Heap[null, p1#sm(r_28)][r_28, f_7:=true]];
            assume state(Heap, Mask);
        }
        assume false;
      }
    if (*) {
      if (xs[r_7]) {
        
        // -- Execute unfolding (for extra information)
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume p1#trigger(UnfoldingHeap, p1(r_7));
          assume UnfoldingHeap[null, p1(r_7)] == FrameFragment(UnfoldingHeap[r_7, f_7]);
          ExhaleWellDef1Heap := UnfoldingHeap;
          ExhaleWellDef1Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access p1(r) (unfolding_arity.vpr@27.12--27.67) [108820]"}
              perm <= UnfoldingMask[null, p1(r_7)];
          }
          UnfoldingMask := UnfoldingMask[null, p1(r_7):=UnfoldingMask[null, p1(r_7)] - perm];
          perm := FullPerm;
          assume r_7 != null;
          UnfoldingMask := UnfoldingMask[r_7, f_7:=UnfoldingMask[r_7, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume state(UnfoldingHeap, UnfoldingMask);
        assert {:msg "  Assert might fail. Assertion r.f == 4 might not hold. (unfolding_arity.vpr@27.12--27.67) [108822]"}
          Heap[r_7, f_7] == 4;
      }
      assume false;
    }
    assume (forall r_8_1_1: Ref ::
      { xs[r_8_1_1] }
      xs[r_8_1_1] ==> Heap[r_8_1_1, f_7] == 4
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m2
// ==================================================

procedure m2(xs: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var r_12: Ref;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var perm: Perm;
  var r_5: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall r: Ref :: { (r in xs) } (r in xs) ==> acc(p2(r), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p2(r), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p2(r) might not be injective. (unfolding_arity.vpr@32.10--32.48) [108823]"}
        (forall r_1_1: Ref, r_1_2: Ref ::
        { neverTriggered2(r_1_1), neverTriggered2(r_1_2) }
        (((r_1_1 != r_1_2 && xs[r_1_1]) && xs[r_1_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_1_1 != r_1_2
      );
    
    // -- Define Inverse Function
      assume (forall r_1_1: Ref ::
        { Heap[null, p2(r_1_1)] } { Mask[null, p2(r_1_1)] } { xs[r_1_1] }
        xs[r_1_1] && NoPerm < FullPerm ==> invRecv2(r_1_1) == r_1_1 && qpRange2(r_1_1)
      );
      assume (forall r_2_1_1: Ref ::
        { invRecv2(r_2_1_1) }
        (xs[invRecv2(r_2_1_1)] && NoPerm < FullPerm) && qpRange2(r_2_1_1) ==> invRecv2(r_2_1_1) == r_2_1_1
      );
    
    // -- Define updated permissions
      assume (forall r_2_1_1: Ref ::
        { QPMask[null, p2(r_2_1_1)] }
        (xs[invRecv2(r_2_1_1)] && NoPerm < FullPerm) && qpRange2(r_2_1_1) ==> (NoPerm < FullPerm ==> invRecv2(r_2_1_1) == r_2_1_1) && QPMask[null, p2(r_2_1_1)] == Mask[null, p2(r_2_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall r_2_1_1: Ref ::
        { QPMask[null, p2(r_2_1_1)] }
        !((xs[invRecv2(r_2_1_1)] && NoPerm < FullPerm) && qpRange2(r_2_1_1)) ==> QPMask[null, p2(r_2_1_1)] == Mask[null, p2(r_2_1_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert (forall r: Ref ::
  //     { (r in xs) }
  //     (r in xs) ==> (unfolding acc(p2(r), write) in r.f == 5)) -- unfolding_arity.vpr@34.5--34.67
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall r: Ref :: { (r in xs) } (r in xs) ==> (unfolding acc(p2(r), write) in r.f == 5))
      if (*) {
        if (xs[r_12]) {
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume p2#trigger(UnfoldingHeap, p2(r_12));
          assume UnfoldingHeap[null, p2(r_12)] == FrameFragment(UnfoldingHeap[r_12, f_7]);
          ExhaleWellDef1Heap := UnfoldingHeap;
          ExhaleWellDef1Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access p2(r) (unfolding_arity.vpr@34.12--34.67) [108824]"}
              perm <= UnfoldingMask[null, p2(r_12)];
          }
          UnfoldingMask := UnfoldingMask[null, p2(r_12):=UnfoldingMask[null, p2(r_12)] - perm];
          perm := FullPerm;
          assume r_12 != null;
          UnfoldingMask := UnfoldingMask[r_12, f_7:=UnfoldingMask[r_12, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume UnfoldingHeap[r_12, f_7] == 5;
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f (unfolding_arity.vpr@34.12--34.67) [108825]"}
            HasDirectPerm(UnfoldingMask, r_12, f_7);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, p2#sm(r_12):=Heap[null, p2#sm(r_12)][r_12, f_7:=true]];
            assume state(Heap, Mask);
        }
        assume false;
      }
    if (*) {
      if (xs[r_5]) {
        
        // -- Execute unfolding (for extra information)
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume p2#trigger(UnfoldingHeap, p2(r_5));
          assume UnfoldingHeap[null, p2(r_5)] == FrameFragment(UnfoldingHeap[r_5, f_7]);
          ExhaleWellDef1Heap := UnfoldingHeap;
          ExhaleWellDef1Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access p2(r) (unfolding_arity.vpr@34.12--34.67) [108828]"}
              perm <= UnfoldingMask[null, p2(r_5)];
          }
          UnfoldingMask := UnfoldingMask[null, p2(r_5):=UnfoldingMask[null, p2(r_5)] - perm];
          perm := FullPerm;
          assume r_5 != null;
          UnfoldingMask := UnfoldingMask[r_5, f_7:=UnfoldingMask[r_5, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume UnfoldingHeap[r_5, f_7] == 5;
          assume state(UnfoldingHeap, UnfoldingMask);
        assert {:msg "  Assert might fail. Assertion r.f == 5 might not hold. (unfolding_arity.vpr@34.12--34.67) [108830]"}
          Heap[r_5, f_7] == 5;
      }
      assume false;
    }
    assume (forall r_6_1_1: Ref ::
      { xs[r_6_1_1] }
      xs[r_6_1_1] ==> Heap[r_6_1_1, f_7] == 5
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m3
// ==================================================

procedure m3(xs: (Set Ref), i: int) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var r_30: Ref;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var r_32: Ref;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var r_7: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall r: Ref :: { (r in xs) } (r in xs) ==> acc(p3(r, i), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p3(r, i), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p3(r, i) might not be injective. (unfolding_arity.vpr@38.10--38.51) [108831]"}
        (forall r_1_1: Ref, r_1_2: Ref ::
        { neverTriggered3(r_1_1), neverTriggered3(r_1_2) }
        (((r_1_1 != r_1_2 && xs[r_1_1]) && xs[r_1_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_1_1 != r_1_2 || i != i
      );
    
    // -- Define Inverse Function
      assume (forall r_1_1: Ref ::
        { Heap[null, p3(r_1_1, i)] } { Mask[null, p3(r_1_1, i)] } { xs[r_1_1] }
        xs[r_1_1] && NoPerm < FullPerm ==> invRecv3(r_1_1, i) == r_1_1 && qpRange3(r_1_1, i)
      );
      assume (forall r_2_1_1: Ref, i_1_1_1: int ::
        { invRecv3(r_2_1_1, i_1_1_1) }
        (xs[invRecv3(r_2_1_1, i_1_1_1)] && NoPerm < FullPerm) && qpRange3(r_2_1_1, i_1_1_1) ==> invRecv3(r_2_1_1, i_1_1_1) == r_2_1_1 && i == i_1_1_1
      );
    
    // -- Define updated permissions
      assume (forall r_2_1_1: Ref, i_1_1_1: int ::
        { QPMask[null, p3(r_2_1_1, i_1_1_1)] }
        (xs[invRecv3(r_2_1_1, i_1_1_1)] && NoPerm < FullPerm) && qpRange3(r_2_1_1, i_1_1_1) ==> (NoPerm < FullPerm ==> invRecv3(r_2_1_1, i_1_1_1) == r_2_1_1 && i == i_1_1_1) && QPMask[null, p3(r_2_1_1, i_1_1_1)] == Mask[null, p3(r_2_1_1, i_1_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 2 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall r_2_1_1: Ref, i_1_1_1: int ::
        { QPMask[null, p3(r_2_1_1, i_1_1_1)] }
        !((xs[invRecv3(r_2_1_1, i_1_1_1)] && NoPerm < FullPerm) && qpRange3(r_2_1_1, i_1_1_1)) ==> QPMask[null, p3(r_2_1_1, i_1_1_1)] == Mask[null, p3(r_2_1_1, i_1_1_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale (forall r: Ref ::
  //     { (r in xs) }
  //     (r in xs) ==> (unfolding acc(p3(r, i), write) in r.f == i + 1)) -- unfolding_arity.vpr@40.12--40.72
    
    // -- Check definedness of (forall r: Ref :: { (r in xs) } (r in xs) ==> (unfolding acc(p3(r, i), write) in r.f == i + 1))
      if (*) {
        if (xs[r_30]) {
          UnfoldingHeap := Heap;
          UnfoldingMask := Mask;
          assume p3#trigger(UnfoldingHeap, p3(r_30, i));
          assume UnfoldingHeap[null, p3(r_30, i)] == FrameFragment(UnfoldingHeap[r_30, f_7]);
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Inhale might fail. There might be insufficient permission to access p3(r, i) (unfolding_arity.vpr@40.12--40.72) [108832]"}
              perm <= UnfoldingMask[null, p3(r_30, i)];
          }
          UnfoldingMask := UnfoldingMask[null, p3(r_30, i):=UnfoldingMask[null, p3(r_30, i)] - perm];
          perm := FullPerm;
          assume r_30 != null;
          UnfoldingMask := UnfoldingMask[r_30, f_7:=UnfoldingMask[r_30, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume i > 0;
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Inhale might fail. There might be insufficient permission to access r.f (unfolding_arity.vpr@40.12--40.72) [108833]"}
            HasDirectPerm(UnfoldingMask, r_30, f_7);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, p3#sm(r_30, i):=Heap[null, p3#sm(r_30, i)][r_30, f_7:=true]];
            assume state(Heap, Mask);
        }
        assume false;
      }
    assume (forall r_5: Ref ::
      { xs[r_5] }
      xs[r_5] ==> Heap[r_5, f_7] == i + 1
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall r: Ref ::
  //     { (r in xs) }
  //     (r in xs) ==> (unfolding acc(p3(r, i), write) in r.f == i + 1)) -- unfolding_arity.vpr@41.5--41.72
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall r: Ref :: { (r in xs) } (r in xs) ==> (unfolding acc(p3(r, i), write) in r.f == i + 1))
      if (*) {
        if (xs[r_32]) {
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume p3#trigger(UnfoldingHeap, p3(r_32, i));
          assume UnfoldingHeap[null, p3(r_32, i)] == FrameFragment(UnfoldingHeap[r_32, f_7]);
          ExhaleWellDef1Heap := UnfoldingHeap;
          ExhaleWellDef1Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access p3(r, i) (unfolding_arity.vpr@41.12--41.72) [108834]"}
              perm <= UnfoldingMask[null, p3(r_32, i)];
          }
          UnfoldingMask := UnfoldingMask[null, p3(r_32, i):=UnfoldingMask[null, p3(r_32, i)] - perm];
          perm := FullPerm;
          assume r_32 != null;
          UnfoldingMask := UnfoldingMask[r_32, f_7:=UnfoldingMask[r_32, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume i > 0;
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f (unfolding_arity.vpr@41.12--41.72) [108835]"}
            HasDirectPerm(UnfoldingMask, r_32, f_7);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, p3#sm(r_32, i):=Heap[null, p3#sm(r_32, i)][r_32, f_7:=true]];
            assume state(Heap, Mask);
        }
        assume false;
      }
    if (*) {
      if (xs[r_7]) {
        
        // -- Execute unfolding (for extra information)
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume p3#trigger(UnfoldingHeap, p3(r_7, i));
          assume UnfoldingHeap[null, p3(r_7, i)] == FrameFragment(UnfoldingHeap[r_7, f_7]);
          ExhaleWellDef1Heap := UnfoldingHeap;
          ExhaleWellDef1Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access p3(r, i) (unfolding_arity.vpr@41.12--41.72) [108838]"}
              perm <= UnfoldingMask[null, p3(r_7, i)];
          }
          UnfoldingMask := UnfoldingMask[null, p3(r_7, i):=UnfoldingMask[null, p3(r_7, i)] - perm];
          perm := FullPerm;
          assume r_7 != null;
          UnfoldingMask := UnfoldingMask[r_7, f_7:=UnfoldingMask[r_7, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume i > 0;
          assume state(UnfoldingHeap, UnfoldingMask);
        assert {:msg "  Assert might fail. Assertion r.f == i + 1 might not hold. (unfolding_arity.vpr@41.12--41.72) [108840]"}
          Heap[r_7, f_7] == i + 1;
      }
      assume false;
    }
    assume (forall r_8_1_1: Ref ::
      { xs[r_8_1_1] }
      xs[r_8_1_1] ==> Heap[r_8_1_1, f_7] == i + 1
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m4
// ==================================================

procedure m4(xs: (Set Ref), i: int) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var r_13: Ref;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var r_15: Ref;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var r_7: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall r: Ref :: { (r in xs) } (r in xs) ==> acc(p3(r, i), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p3(r, i), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p3(r, i) might not be injective. (unfolding_arity.vpr@45.10--45.51) [108841]"}
        (forall r_1_1: Ref, r_1_2: Ref ::
        { neverTriggered4(r_1_1), neverTriggered4(r_1_2) }
        (((r_1_1 != r_1_2 && xs[r_1_1]) && xs[r_1_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_1_1 != r_1_2 || i != i
      );
    
    // -- Define Inverse Function
      assume (forall r_1_1: Ref ::
        { Heap[null, p3(r_1_1, i)] } { Mask[null, p3(r_1_1, i)] } { xs[r_1_1] }
        xs[r_1_1] && NoPerm < FullPerm ==> invRecv4(r_1_1, i) == r_1_1 && qpRange4(r_1_1, i)
      );
      assume (forall r_2_1_1: Ref, i_1_1_1: int ::
        { invRecv4(r_2_1_1, i_1_1_1) }
        (xs[invRecv4(r_2_1_1, i_1_1_1)] && NoPerm < FullPerm) && qpRange4(r_2_1_1, i_1_1_1) ==> invRecv4(r_2_1_1, i_1_1_1) == r_2_1_1 && i == i_1_1_1
      );
    
    // -- Define updated permissions
      assume (forall r_2_1_1: Ref, i_1_1_1: int ::
        { QPMask[null, p3(r_2_1_1, i_1_1_1)] }
        (xs[invRecv4(r_2_1_1, i_1_1_1)] && NoPerm < FullPerm) && qpRange4(r_2_1_1, i_1_1_1) ==> (NoPerm < FullPerm ==> invRecv4(r_2_1_1, i_1_1_1) == r_2_1_1 && i == i_1_1_1) && QPMask[null, p3(r_2_1_1, i_1_1_1)] == Mask[null, p3(r_2_1_1, i_1_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 2 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall r_2_1_1: Ref, i_1_1_1: int ::
        { QPMask[null, p3(r_2_1_1, i_1_1_1)] }
        !((xs[invRecv4(r_2_1_1, i_1_1_1)] && NoPerm < FullPerm) && qpRange4(r_2_1_1, i_1_1_1)) ==> QPMask[null, p3(r_2_1_1, i_1_1_1)] == Mask[null, p3(r_2_1_1, i_1_1_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale (forall r: Ref ::
  //     { (r in xs) }
  //     (r in xs) ==> (unfolding acc(p3(r, i), write) in r.f == i + 1)) -- unfolding_arity.vpr@47.11--47.71
    
    // -- Check definedness of (forall r: Ref :: { (r in xs) } (r in xs) ==> (unfolding acc(p3(r, i), write) in r.f == i + 1))
      if (*) {
        if (xs[r_13]) {
          UnfoldingHeap := Heap;
          UnfoldingMask := Mask;
          assume p3#trigger(UnfoldingHeap, p3(r_13, i));
          assume UnfoldingHeap[null, p3(r_13, i)] == FrameFragment(UnfoldingHeap[r_13, f_7]);
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Inhale might fail. There might be insufficient permission to access p3(r, i) (unfolding_arity.vpr@47.11--47.71) [108842]"}
              perm <= UnfoldingMask[null, p3(r_13, i)];
          }
          UnfoldingMask := UnfoldingMask[null, p3(r_13, i):=UnfoldingMask[null, p3(r_13, i)] - perm];
          perm := FullPerm;
          assume r_13 != null;
          UnfoldingMask := UnfoldingMask[r_13, f_7:=UnfoldingMask[r_13, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume i > 0;
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Inhale might fail. There might be insufficient permission to access r.f (unfolding_arity.vpr@47.11--47.71) [108843]"}
            HasDirectPerm(UnfoldingMask, r_13, f_7);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, p3#sm(r_13, i):=Heap[null, p3#sm(r_13, i)][r_13, f_7:=true]];
            assume state(Heap, Mask);
        }
        assume false;
      }
    assume (forall r_5: Ref ::
      { xs[r_5] }
      xs[r_5] ==> Heap[r_5, f_7] == i + 1
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall r: Ref ::
  //     { (r in xs) }
  //     (r in xs) ==> (unfolding acc(p3(r, i), write) in r.f == i)) -- unfolding_arity.vpr@49.4--49.69
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall r: Ref :: { (r in xs) } (r in xs) ==> (unfolding acc(p3(r, i), write) in r.f == i))
      if (*) {
        if (xs[r_15]) {
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume p3#trigger(UnfoldingHeap, p3(r_15, i));
          assume UnfoldingHeap[null, p3(r_15, i)] == FrameFragment(UnfoldingHeap[r_15, f_7]);
          ExhaleWellDef1Heap := UnfoldingHeap;
          ExhaleWellDef1Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access p3(r, i) (unfolding_arity.vpr@49.11--49.69) [108844]"}
              perm <= UnfoldingMask[null, p3(r_15, i)];
          }
          UnfoldingMask := UnfoldingMask[null, p3(r_15, i):=UnfoldingMask[null, p3(r_15, i)] - perm];
          perm := FullPerm;
          assume r_15 != null;
          UnfoldingMask := UnfoldingMask[r_15, f_7:=UnfoldingMask[r_15, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume i > 0;
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f (unfolding_arity.vpr@49.11--49.69) [108845]"}
            HasDirectPerm(UnfoldingMask, r_15, f_7);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, p3#sm(r_15, i):=Heap[null, p3#sm(r_15, i)][r_15, f_7:=true]];
            assume state(Heap, Mask);
        }
        assume false;
      }
    if (*) {
      if (xs[r_7]) {
        
        // -- Execute unfolding (for extra information)
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume p3#trigger(UnfoldingHeap, p3(r_7, i));
          assume UnfoldingHeap[null, p3(r_7, i)] == FrameFragment(UnfoldingHeap[r_7, f_7]);
          ExhaleWellDef1Heap := UnfoldingHeap;
          ExhaleWellDef1Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access p3(r, i) (unfolding_arity.vpr@49.11--49.69) [108848]"}
              perm <= UnfoldingMask[null, p3(r_7, i)];
          }
          UnfoldingMask := UnfoldingMask[null, p3(r_7, i):=UnfoldingMask[null, p3(r_7, i)] - perm];
          perm := FullPerm;
          assume r_7 != null;
          UnfoldingMask := UnfoldingMask[r_7, f_7:=UnfoldingMask[r_7, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume i > 0;
          assume state(UnfoldingHeap, UnfoldingMask);
        assert {:msg "  Assert might fail. Assertion r.f == i might not hold. (unfolding_arity.vpr@49.11--49.69) [108850]"}
          Heap[r_7, f_7] == i;
      }
      assume false;
    }
    assume (forall r_8_1_1: Ref ::
      { xs[r_8_1_1] }
      xs[r_8_1_1] ==> Heap[r_8_1_1, f_7] == i
    );
    assume state(Heap, Mask);
}