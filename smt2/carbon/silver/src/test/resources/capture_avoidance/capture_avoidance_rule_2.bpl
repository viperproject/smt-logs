// 
// Translation of Viper program.
// 
// Date:         2025-01-08 21:37:36
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/capture_avoidance/capture_avoidance_rule_2.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/capture_avoidance/capture_avoidance_rule_2-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_34: Ref, f_40: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_34, f_40] }
  Heap[o_34, $allocated] ==> Heap[Heap[o_34, f_40], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_13: Ref, f_18: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_13, f_18] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_13, f_18) ==> Heap[o_13, f_18] == ExhaleHeap[o_13, f_18]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_12: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_12), ExhaleHeap[null, PredicateMaskField(pm_f_12)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_12) && IsPredicateField(pm_f_12) ==> Heap[null, PredicateMaskField(pm_f_12)] == ExhaleHeap[null, PredicateMaskField(pm_f_12)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_12: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_12) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_12) && IsPredicateField(pm_f_12) ==> (forall <A, B> o2_12: Ref, f_18: (Field A B) ::
    { ExhaleHeap[o2_12, f_18] }
    Heap[null, PredicateMaskField(pm_f_12)][o2_12, f_18] ==> Heap[o2_12, f_18] == ExhaleHeap[o2_12, f_18]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_12: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_12), ExhaleHeap[null, WandMaskField(pm_f_12)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_12) && IsWandField(pm_f_12) ==> Heap[null, WandMaskField(pm_f_12)] == ExhaleHeap[null, WandMaskField(pm_f_12)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_12: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_12) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_12) && IsWandField(pm_f_12) ==> (forall <A, B> o2_12: Ref, f_18: (Field A B) ::
    { ExhaleHeap[o2_12, f_18] }
    Heap[null, WandMaskField(pm_f_12)][o2_12, f_18] ==> Heap[o2_12, f_18] == ExhaleHeap[o2_12, f_18]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_13: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_13, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_13, $allocated] ==> ExhaleHeap[o_13, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_34: Ref, f_36: (Field A B), v: B ::
  { Heap[o_34, f_36:=v] }
  succHeap(Heap, Heap[o_34, f_36:=v])
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

function  neverTriggered1(e_4: Ref): bool;
function  neverTriggered2(e$0: Ref): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): Ref;
function  invRecv2(recv: Ref): Ref;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(recv: Ref): bool;
function  qpRange2(recv: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 11: function2
// - height 10: function7
// - height 9: function4
// - height 8: function5
// - height 7: function10
// - height 6: function1
// - height 5: function6
// - height 4: function0
// - height 3: function11
// - height 2: function8
// - height 1: function9
// - height 0: function3
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

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);

// ==================================================
// Translation of function function0
// ==================================================

// Uninterpreted function definitions
function  function0(Heap: HeapType): bool;
function  function0'(Heap: HeapType): bool;
axiom (forall Heap: HeapType ::
  { function0(Heap) }
  function0(Heap) == function0'(Heap) && dummyFunction(function0#triggerStateless())
);
axiom (forall Heap: HeapType ::
  { function0'(Heap) }
  dummyFunction(function0#triggerStateless())
);

// Framing axioms
function  function0#frame(frame: FrameType): bool;
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), function0'(Heap) }
  state(Heap, Mask) ==> function0'(Heap) == function0#frame(EmptyFrame)
);

// Trigger function (controlling recursive postconditions)
function  function0#trigger(frame: FrameType): bool;

// State-independent trigger function
function  function0#triggerStateless(): bool;

// Check contract well-formedness and postcondition
procedure function0#definedness() returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 4;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall x: Int ::x == x)
      if (*) {
        assume false;
      }
    assume (forall x_2_2: int ::
      
      x_2_2 == x_2_2
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function function1
// ==================================================

// Uninterpreted function definitions
function  function1(Heap: HeapType, z: int): bool;
function  function1'(Heap: HeapType, z: int): bool;
axiom (forall Heap: HeapType, z: int ::
  { function1(Heap, z) }
  function1(Heap, z) == function1'(Heap, z) && dummyFunction(function1#triggerStateless(z))
);
axiom (forall Heap: HeapType, z: int ::
  { function1'(Heap, z) }
  dummyFunction(function1#triggerStateless(z))
);

// Framing axioms
function  function1#frame(frame: FrameType, z: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, z: int ::
  { state(Heap, Mask), function1'(Heap, z) }
  state(Heap, Mask) ==> function1'(Heap, z) == function1#frame(EmptyFrame, z)
);

// Trigger function (controlling recursive postconditions)
function  function1#trigger(frame: FrameType, z: int): bool;

// State-independent trigger function
function  function1#triggerStateless(z: int): bool;

// Check contract well-formedness and postcondition
procedure function1#definedness(z: int) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 6;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall x: Int ::x == x && z == 0)
      if (*) {
        assume false;
      }
    assume (forall x_2_2: int ::
      
      x_2_2 == x_2_2 && z == 0
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function function2
// ==================================================

// Uninterpreted function definitions
function  function2(Heap: HeapType, y: int, z: int): bool;
function  function2'(Heap: HeapType, y: int, z: int): bool;
axiom (forall Heap: HeapType, y: int, z: int ::
  { function2(Heap, y, z) }
  function2(Heap, y, z) == function2'(Heap, y, z) && dummyFunction(function2#triggerStateless(y, z))
);
axiom (forall Heap: HeapType, y: int, z: int ::
  { function2'(Heap, y, z) }
  dummyFunction(function2#triggerStateless(y, z))
);

// Framing axioms
function  function2#frame(frame: FrameType, y: int, z: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, y: int, z: int ::
  { state(Heap, Mask), function2'(Heap, y, z) }
  state(Heap, Mask) ==> function2'(Heap, y, z) == function2#frame(EmptyFrame, y, z)
);

// Trigger function (controlling recursive postconditions)
function  function2#trigger(frame: FrameType, y: int, z: int): bool;

// State-independent trigger function
function  function2#triggerStateless(y: int, z: int): bool;

// Check contract well-formedness and postcondition
procedure function2#definedness(y: int, z: int) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 11;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall x: Int ::x == x && y == z)
      if (*) {
        assume false;
      }
    assume (forall x_2_2: int ::
      
      x_2_2 == x_2_2 && y == z
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function function3
// ==================================================

// Uninterpreted function definitions
function  function3(Heap: HeapType, b_24: bool): bool;
function  function3'(Heap: HeapType, b_24: bool): bool;
axiom (forall Heap: HeapType, b_24: bool ::
  { function3(Heap, b_24) }
  function3(Heap, b_24) == function3'(Heap, b_24) && dummyFunction(function3#triggerStateless(b_24))
);
axiom (forall Heap: HeapType, b_24: bool ::
  { function3'(Heap, b_24) }
  dummyFunction(function3#triggerStateless(b_24))
);

// Framing axioms
function  function3#frame(frame: FrameType, b_24: bool): bool;
axiom (forall Heap: HeapType, Mask: MaskType, b_24: bool ::
  { state(Heap, Mask), function3'(Heap, b_24) }
  state(Heap, Mask) ==> function3'(Heap, b_24) == function3#frame(EmptyFrame, b_24)
);

// Trigger function (controlling recursive postconditions)
function  function3#trigger(frame: FrameType, b_24: bool): bool;

// State-independent trigger function
function  function3#triggerStateless(b_24: bool): bool;

// Check contract well-formedness and postcondition
procedure function3#definedness(b_24: bool) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall z: Int ::b)
      if (*) {
        assume false;
      }
    assume (forall z_2: int ::
      
      b_24
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function function4
// ==================================================

// Uninterpreted function definitions
function  function4(Heap: HeapType, b_24: bool, c: bool): bool;
function  function4'(Heap: HeapType, b_24: bool, c: bool): bool;
axiom (forall Heap: HeapType, b_24: bool, c: bool ::
  { function4(Heap, b_24, c) }
  function4(Heap, b_24, c) == function4'(Heap, b_24, c) && dummyFunction(function4#triggerStateless(b_24, c))
);
axiom (forall Heap: HeapType, b_24: bool, c: bool ::
  { function4'(Heap, b_24, c) }
  dummyFunction(function4#triggerStateless(b_24, c))
);

// Framing axioms
function  function4#frame(frame: FrameType, b_24: bool, c: bool): bool;
axiom (forall Heap: HeapType, Mask: MaskType, b_24: bool, c: bool ::
  { state(Heap, Mask), function4'(Heap, b_24, c) }
  state(Heap, Mask) ==> function4'(Heap, b_24, c) == function4#frame(EmptyFrame, b_24, c)
);

// Trigger function (controlling recursive postconditions)
function  function4#trigger(frame: FrameType, b_24: bool, c: bool): bool;

// State-independent trigger function
function  function4#triggerStateless(b_24: bool, c: bool): bool;

// Check contract well-formedness and postcondition
procedure function4#definedness(b_24: bool, c: bool) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 9;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall z: Int ::b && c)
      if (*) {
        assume false;
      }
    assume (forall z_2: int ::
      
      b_24 && c
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function function5
// ==================================================

// Uninterpreted function definitions
function  function5(Heap: HeapType, x: int, y: int): bool;
function  function5'(Heap: HeapType, x: int, y: int): bool;
axiom (forall Heap: HeapType, x: int, y: int ::
  { function5(Heap, x, y) }
  function5(Heap, x, y) == function5'(Heap, x, y) && dummyFunction(function5#triggerStateless(x, y))
);
axiom (forall Heap: HeapType, x: int, y: int ::
  { function5'(Heap, x, y) }
  dummyFunction(function5#triggerStateless(x, y))
);

// Framing axioms
function  function5#frame(frame: FrameType, x: int, y: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, x: int, y: int ::
  { state(Heap, Mask), function5'(Heap, x, y) }
  state(Heap, Mask) ==> function5'(Heap, x, y) == function5#frame(EmptyFrame, x, y)
);

// Trigger function (controlling recursive postconditions)
function  function5#trigger(frame: FrameType, x: int, y: int): bool;

// State-independent trigger function
function  function5#triggerStateless(x: int, y: int): bool;

// Check contract well-formedness and postcondition
procedure function5#definedness(x: int, y: int) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 8;
  
  // -- Inhaling precondition (with checking)
    assume x == 0 || y == 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function function6
// ==================================================

// Uninterpreted function definitions
function  function6(Heap: HeapType, z: int, w_2: int): bool;
function  function6'(Heap: HeapType, z: int, w_2: int): bool;
axiom (forall Heap: HeapType, z: int, w_2: int ::
  { function6(Heap, z, w_2) }
  function6(Heap, z, w_2) == function6'(Heap, z, w_2) && dummyFunction(function6#triggerStateless(z, w_2))
);
axiom (forall Heap: HeapType, z: int, w_2: int ::
  { function6'(Heap, z, w_2) }
  dummyFunction(function6#triggerStateless(z, w_2))
);

// Framing axioms
function  function6#frame(frame: FrameType, z: int, w_2: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, z: int, w_2: int ::
  { state(Heap, Mask), function6'(Heap, z, w_2) }
  state(Heap, Mask) ==> function6'(Heap, z, w_2) == function6#frame(EmptyFrame, z, w_2)
);

// Trigger function (controlling recursive postconditions)
function  function6#trigger(frame: FrameType, z: int, w_2: int): bool;

// State-independent trigger function
function  function6#triggerStateless(z: int, w_2: int): bool;

// Check contract well-formedness and postcondition
procedure function6#definedness(z: int, w_2: int) returns (Result: bool)
  modifies Heap, Mask;
{
  var x_12: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 5;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall x: Int ::x == x && (forall y: Int ::y == y && z == w))
      if (*) {
        if (x_12 == x_12) {
          if (*) {
            assume false;
          }
        }
        assume false;
      }
    assume (forall x_2_2: int ::
      
      x_2_2 == x_2_2 && (forall y_2: int ::
        
        y_2 == y_2 && z == w_2
      )
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function function7
// ==================================================

// Uninterpreted function definitions
function  function7(Heap: HeapType, b_24: bool, z: int): bool;
function  function7'(Heap: HeapType, b_24: bool, z: int): bool;
axiom (forall Heap: HeapType, b_24: bool, z: int ::
  { function7(Heap, b_24, z) }
  function7(Heap, b_24, z) == function7'(Heap, b_24, z) && dummyFunction(function7#triggerStateless(b_24, z))
);
axiom (forall Heap: HeapType, b_24: bool, z: int ::
  { function7'(Heap, b_24, z) }
  dummyFunction(function7#triggerStateless(b_24, z))
);

// Framing axioms
function  function7#frame(frame: FrameType, b_24: bool, z: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, b_24: bool, z: int ::
  { state(Heap, Mask), function7'(Heap, b_24, z) }
  state(Heap, Mask) ==> function7'(Heap, b_24, z) == function7#frame(EmptyFrame, b_24, z)
);

// Trigger function (controlling recursive postconditions)
function  function7#trigger(frame: FrameType, b_24: bool, z: int): bool;

// State-independent trigger function
function  function7#triggerStateless(b_24: bool, z: int): bool;

// Check contract well-formedness and postcondition
procedure function7#definedness(b_24: bool, z: int) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 10;
  
  // -- Inhaling precondition (with checking)
    assume b_24;
    assume z == 5;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function function8
// ==================================================

// Uninterpreted function definitions
function  function8(Heap: HeapType, b_24: bool, z: int): bool;
function  function8'(Heap: HeapType, b_24: bool, z: int): bool;
axiom (forall Heap: HeapType, b_24: bool, z: int ::
  { function8(Heap, b_24, z) }
  function8(Heap, b_24, z) == function8'(Heap, b_24, z) && dummyFunction(function8#triggerStateless(b_24, z))
);
axiom (forall Heap: HeapType, b_24: bool, z: int ::
  { function8'(Heap, b_24, z) }
  dummyFunction(function8#triggerStateless(b_24, z))
);

// Framing axioms
function  function8#frame(frame: FrameType, b_24: bool, z: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, b_24: bool, z: int ::
  { state(Heap, Mask), function8'(Heap, b_24, z) }
  state(Heap, Mask) ==> function8'(Heap, b_24, z) == function8#frame(EmptyFrame, b_24, z)
);

// Trigger function (controlling recursive postconditions)
function  function8#trigger(frame: FrameType, b_24: bool, z: int): bool;

// State-independent trigger function
function  function8#triggerStateless(b_24: bool, z: int): bool;

// Check contract well-formedness and postcondition
procedure function8#definedness(b_24: bool, z: int) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 2;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall x: Int ::b)
      if (*) {
        assume false;
      }
    assume (forall x_2_2: int ::
      
      b_24
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function function9
// ==================================================

// Uninterpreted function definitions
function  function9(Heap: HeapType): bool;
function  function9'(Heap: HeapType): bool;
axiom (forall Heap: HeapType ::
  { function9(Heap) }
  function9(Heap) == function9'(Heap) && dummyFunction(function9#triggerStateless())
);
axiom (forall Heap: HeapType ::
  { function9'(Heap) }
  dummyFunction(function9#triggerStateless())
);

// Framing axioms
function  function9#frame(frame: FrameType): bool;
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), function9'(Heap) }
  state(Heap, Mask) ==> function9'(Heap) == function9#frame(EmptyFrame)
);

// Trigger function (controlling recursive postconditions)
function  function9#trigger(frame: FrameType): bool;

// State-independent trigger function
function  function9#triggerStateless(): bool;

// Check contract well-formedness and postcondition
procedure function9#definedness() returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (exists x: Int :: x == x)
      if (*) {
        assume false;
      }
    assume (exists x_2_2: int ::
      
      x_2_2 == x_2_2
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function function10
// ==================================================

// Uninterpreted function definitions
function  function10(Heap: HeapType, z: int): bool;
function  function10'(Heap: HeapType, z: int): bool;
axiom (forall Heap: HeapType, z: int ::
  { function10(Heap, z) }
  function10(Heap, z) == function10'(Heap, z) && dummyFunction(function10#triggerStateless(z))
);
axiom (forall Heap: HeapType, z: int ::
  { function10'(Heap, z) }
  dummyFunction(function10#triggerStateless(z))
);

// Framing axioms
function  function10#frame(frame: FrameType, z: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, z: int ::
  { state(Heap, Mask), function10'(Heap, z) }
  state(Heap, Mask) ==> function10'(Heap, z) == function10#frame(EmptyFrame, z)
);

// Trigger function (controlling recursive postconditions)
function  function10#trigger(frame: FrameType, z: int): bool;

// State-independent trigger function
function  function10#triggerStateless(z: int): bool;

// Check contract well-formedness and postcondition
procedure function10#definedness(z: int) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 7;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (exists x: Int :: x == z ==> x == 0)
      if (*) {
        assume false;
      }
    assume (exists x_2_2: int ::
      
      x_2_2 == z ==> x_2_2 == 0
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function function11
// ==================================================

// Uninterpreted function definitions
function  function11(Heap: HeapType, s_2: (Set Ref)): bool;
function  function11'(Heap: HeapType, s_2: (Set Ref)): bool;
axiom (forall Heap: HeapType, s_2: (Set Ref) ::
  { function11(Heap, s_2) }
  function11(Heap, s_2) == function11'(Heap, s_2) && dummyFunction(function11#triggerStateless(s_2))
);
axiom (forall Heap: HeapType, s_2: (Set Ref) ::
  { function11'(Heap, s_2) }
  dummyFunction(function11#triggerStateless(s_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, s_2: (Set Ref) ::
  { state(Heap, Mask), function11(Heap, s_2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 3 ==> function11(Heap, s_2)
);

// Framing axioms
function  function11#frame(frame: FrameType, s_2: (Set Ref)): bool;
axiom (forall Heap: HeapType, Mask: MaskType, s_2: (Set Ref) ::
  { state(Heap, Mask), function11'(Heap, s_2) }
  state(Heap, Mask) ==> function11'(Heap, s_2) == function11#frame(FrameFragment(function11#condqp1(Heap, s_2)), s_2)
);
// ==================================================
// Function used for framing of quantified permission (forall e: Ref :: { (e in s) } (e in s) ==> acc(e.f, write)) in function function11
// ==================================================

function  function11#condqp1(Heap: HeapType, s_1_1_1: (Set Ref)): int;
function  sk_function11#condqp1(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, s_2: (Set Ref) ::
  { function11#condqp1(Heap2Heap, s_2), function11#condqp1(Heap1Heap, s_2), succHeapTrans(Heap2Heap, Heap1Heap) }
  (s_2[sk_function11#condqp1(function11#condqp1(Heap2Heap, s_2), function11#condqp1(Heap1Heap, s_2))] && NoPerm < FullPerm <==> s_2[sk_function11#condqp1(function11#condqp1(Heap2Heap, s_2), function11#condqp1(Heap1Heap, s_2))] && NoPerm < FullPerm) && (s_2[sk_function11#condqp1(function11#condqp1(Heap2Heap, s_2), function11#condqp1(Heap1Heap, s_2))] && NoPerm < FullPerm ==> Heap2Heap[sk_function11#condqp1(function11#condqp1(Heap2Heap, s_2), function11#condqp1(Heap1Heap, s_2)), f_7] == Heap1Heap[sk_function11#condqp1(function11#condqp1(Heap2Heap, s_2), function11#condqp1(Heap1Heap, s_2)), f_7]) ==> function11#condqp1(Heap2Heap, s_2) == function11#condqp1(Heap1Heap, s_2)
);

// Trigger function (controlling recursive postconditions)
function  function11#trigger(frame: FrameType, s_2: (Set Ref)): bool;

// State-independent trigger function
function  function11#triggerStateless(s_2: (Set Ref)): bool;

// Check contract well-formedness and postcondition
procedure function11#definedness(s_2: (Set Ref)) returns (Result: bool)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 3;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall e: Ref :: { (e in s) } (e in s) ==> acc(e.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource e.f might not be injective. (capture_avoidance_rule_2.vpr@95.12--95.48) [92242]"}
      (forall e_4: Ref, e_4_1: Ref ::
      
      (((e_4 != e_4_1 && s_2[e_4]) && s_2[e_4_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> e_4 != e_4_1
    );
    
    // -- Define Inverse Function
      assume (forall e_4: Ref ::
        { Heap[e_4, f_7] } { QPMask[e_4, f_7] } { s_2[e_4] }
        s_2[e_4] && NoPerm < FullPerm ==> qpRange1(e_4) && invRecv1(e_4) == e_4
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        (s_2[invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4) ==> invRecv1(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall e_4: Ref ::
        { Heap[e_4, f_7] } { QPMask[e_4, f_7] } { s_2[e_4] }
        s_2[e_4] ==> e_4 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((s_2[invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4) ==> (NoPerm < FullPerm ==> invRecv1(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((s_2[invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translate function body
    Result := true;
}

// ==================================================
// Translation of method client1
// ==================================================

procedure client1(x: int, y: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var x$0: int;
  var res: bool;
  var x$0_2: int;
  var x$0_4: int;
  var z$0: int;
  var z$0_3: int;
  var z$0_5: int;
  var z$0_9: int;
  var z$0_11: int;
  var x$0_6: int;
  var y$0: int;
  var z_17_2: int;
  var z_21: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume x == 0;
    assume y == 0;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: res := function0() -- capture_avoidance_rule_2.vpr@78.3--78.21
    
    // -- Check definedness of function0()
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        if (*) {
          assert {:msg "  Precondition of function function0 might not hold. Assertion x$0 == x$0 might not hold. (capture_avoidance_rule_2.vpr@78.10--78.21) [92243]"}
            x$0 == x$0;
          assume false;
        }
        assume (forall x$0_1_1_1: int ::
          
          x$0_1_1_1 == x$0_1_1_1
        );
        // Stop execution
        assume false;
      }
    res := function0(Heap);
    assume state(Heap, Mask);
  
  // -- Translating statement: res := function1(x) -- capture_avoidance_rule_2.vpr@79.3--79.22
    
    // -- Check definedness of function1(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        if (*) {
          assert {:msg "  Precondition of function function1 might not hold. Assertion x$0 == x$0 might not hold. (capture_avoidance_rule_2.vpr@79.10--79.22) [92244]"}
            x$0_2 == x$0_2;
          assert {:msg "  Precondition of function function1 might not hold. Assertion x == 0 might not hold. (capture_avoidance_rule_2.vpr@79.10--79.22) [92245]"}
            x == 0;
          assume false;
        }
        assume (forall x$0_3_1_1: int ::
          
          x$0_3_1_1 == x$0_3_1_1 && x == 0
        );
        // Stop execution
        assume false;
      }
    res := function1(Heap, x);
    assume state(Heap, Mask);
  
  // -- Translating statement: res := function2(x, y) -- capture_avoidance_rule_2.vpr@80.3--80.25
    
    // -- Check definedness of function2(x, y)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        if (*) {
          assert {:msg "  Precondition of function function2 might not hold. Assertion x$0 == x$0 might not hold. (capture_avoidance_rule_2.vpr@80.10--80.25) [92246]"}
            x$0_4 == x$0_4;
          assert {:msg "  Precondition of function function2 might not hold. Assertion x == y might not hold. (capture_avoidance_rule_2.vpr@80.10--80.25) [92247]"}
            x == y;
          assume false;
        }
        assume (forall x$0_5_1: int ::
          
          x$0_5_1 == x$0_5_1 && x == y
        );
        // Stop execution
        assume false;
      }
    res := function2(Heap, x, y);
    assume state(Heap, Mask);
  
  // -- Translating statement: res := function3((forall z: Int ::z == z)) -- capture_avoidance_rule_2.vpr@81.3--81.44
    
    // -- Check definedness of function3((forall z: Int ::z == z))
      if (*) {
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        if (*) {
          if (*) {
            assert {:msg "  Precondition of function function3 might not hold. Assertion z$0 == z$0 might not hold. (capture_avoidance_rule_2.vpr@81.10--81.44) [92248]"}
              z$0 == z$0;
            assume false;
          }
          assume (forall z$0_1_1: int ::
            
            z$0_1_1 == z$0_1_1
          );
          assume false;
        }
        assume (forall z_2_1_1: int ::
          
          (forall z$0_2: int ::
            
            z$0_2 == z$0_2
          )
        );
        // Stop execution
        assume false;
      }
    res := function3(Heap, (forall z_3: int ::
      
      z_3 == z_3
    ));
    assume state(Heap, Mask);
  
  // -- Translating statement: res := function4((forall z: Int ::z == z), (forall z: Int ::z == z)) -- capture_avoidance_rule_2.vpr@82.3--82.69
    
    // -- Check definedness of function4((forall z: Int ::z == z), (forall z: Int ::z == z))
      if (*) {
        assume false;
      }
      if (*) {
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        if (*) {
          if (*) {
            assert {:msg "  Precondition of function function4 might not hold. Assertion z$0 == z$0 might not hold. (capture_avoidance_rule_2.vpr@82.10--82.69) [92249]"}
              z$0_3 == z$0_3;
            assume false;
          }
          assume (forall z$0_4_1: int ::
            
            z$0_4_1 == z$0_4_1
          );
          if (*) {
            assert {:msg "  Precondition of function function4 might not hold. Assertion z$0 == z$0 might not hold. (capture_avoidance_rule_2.vpr@82.10--82.69) [92250]"}
              z$0_5 == z$0_5;
            assume false;
          }
          assume (forall z$0_6_1: int ::
            
            z$0_6_1 == z$0_6_1
          );
          assume false;
        }
        assume (forall z_7_1_1: int ::
          
          (forall z$0_7: int ::
            
            z$0_7 == z$0_7
          ) && (forall z$0_8: int ::
            
            z$0_8 == z$0_8
          )
        );
        // Stop execution
        assume false;
      }
    res := function4(Heap, (forall z_8_1: int ::
      
      z_8_1 == z_8_1
    ), (forall z_9_1: int ::
      
      z_9_1 == z_9_1
    ));
    assume state(Heap, Mask);
  
  // -- Translating statement: res := function4(x == 0 && (forall z: Int ::z == z), y == 0 &&
  //   (forall z: Int ::z == z)) -- capture_avoidance_rule_2.vpr@83.3--83.89
    
    // -- Check definedness of function4(x == 0 && (forall z: Int ::z == z), y == 0 && (forall z: Int ::z == z))
      if (x == 0) {
        if (*) {
          assume false;
        }
      }
      if (y == 0) {
        if (*) {
          assume false;
        }
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        if (*) {
          assert {:msg "  Precondition of function function4 might not hold. Assertion x == 0 might not hold. (capture_avoidance_rule_2.vpr@83.10--83.89) [92251]"}
            x == 0;
          if (*) {
            assert {:msg "  Precondition of function function4 might not hold. Assertion z$0 == z$0 might not hold. (capture_avoidance_rule_2.vpr@83.10--83.89) [92252]"}
              z$0_9 == z$0_9;
            assume false;
          }
          assume (forall z$0_10_1: int ::
            
            z$0_10_1 == z$0_10_1
          );
          assert {:msg "  Precondition of function function4 might not hold. Assertion y == 0 might not hold. (capture_avoidance_rule_2.vpr@83.10--83.89) [92253]"}
            y == 0;
          if (*) {
            assert {:msg "  Precondition of function function4 might not hold. Assertion z$0 == z$0 might not hold. (capture_avoidance_rule_2.vpr@83.10--83.89) [92254]"}
              z$0_11 == z$0_11;
            assume false;
          }
          assume (forall z$0_12_1: int ::
            
            z$0_12_1 == z$0_12_1
          );
          assume false;
        }
        assume (forall z_13_1_1: int ::
          
          (x == 0 && (forall z$0_13: int ::
            
            z$0_13 == z$0_13
          )) && (y == 0 && (forall z$0_14: int ::
            
            z$0_14 == z$0_14
          ))
        );
        // Stop execution
        assume false;
      }
    res := function4(Heap, x == 0 && (forall z_14_1: int ::
      
      z_14_1 == z_14_1
    ), y == 0 && (forall z_15_1: int ::
      
      z_15_1 == z_15_1
    ));
    assume state(Heap, Mask);
  
  // -- Translating statement: res := function5(y, x) -- capture_avoidance_rule_2.vpr@84.3--84.25
    
    // -- Check definedness of function5(y, x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function function5 might not hold. Assertion y == 0 || x == 0 might not hold. (capture_avoidance_rule_2.vpr@84.10--84.25) [92255]"}
          y == 0 || x == 0;
        // Stop execution
        assume false;
      }
    res := function5(Heap, y, x);
    assume state(Heap, Mask);
  
  // -- Translating statement: res := function6(x, y) -- capture_avoidance_rule_2.vpr@85.3--85.25
    
    // -- Check definedness of function6(x, y)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        if (*) {
          assert {:msg "  Precondition of function function6 might not hold. Assertion x$0 == x$0 might not hold. (capture_avoidance_rule_2.vpr@85.10--85.25) [92256]"}
            x$0_6 == x$0_6;
          if (*) {
            assert {:msg "  Precondition of function function6 might not hold. Assertion y$0 == y$0 might not hold. (capture_avoidance_rule_2.vpr@85.10--85.25) [92257]"}
              y$0 == y$0;
            assert {:msg "  Precondition of function function6 might not hold. Assertion x == y might not hold. (capture_avoidance_rule_2.vpr@85.10--85.25) [92258]"}
              x == y;
            assume false;
          }
          assume (forall y$0_1_1: int ::
            
            y$0_1_1 == y$0_1_1 && x == y
          );
          assume false;
        }
        assume (forall x$0_7_1: int ::
          
          x$0_7_1 == x$0_7_1 && (forall y$0_2: int ::
            
            y$0_2 == y$0_2 && x == y
          )
        );
        // Stop execution
        assume false;
      }
    res := function6(Heap, x, y);
    assume state(Heap, Mask);
  
  // -- Translating statement: res := function7((forall z: Int ::z == z), 5) -- capture_avoidance_rule_2.vpr@86.3--86.47
    
    // -- Check definedness of function7((forall z: Int ::z == z), 5)
      if (*) {
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        if (*) {
          assert {:msg "  Precondition of function function7 might not hold. Assertion z == z might not hold. (capture_avoidance_rule_2.vpr@86.10--86.47) [92259]"}
            z_17_2 == z_17_2;
          assume false;
        }
        assume (forall z_18_1_1: int ::
          
          z_18_1_1 == z_18_1_1
        );
        // Stop execution
        assume false;
      }
    res := function7(Heap, (forall z_19_1: int ::
      
      z_19_1 == z_19_1
    ), 5);
    assume state(Heap, Mask);
  
  // -- Translating statement: res := function8((forall z: Int ::z == z), 5) -- capture_avoidance_rule_2.vpr@87.3--87.47
    
    // -- Check definedness of function8((forall z: Int ::z == z), 5)
      if (*) {
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        if (*) {
          if (*) {
            assert {:msg "  Precondition of function function8 might not hold. Assertion z == z might not hold. (capture_avoidance_rule_2.vpr@87.10--87.47) [92260]"}
              z_21 == z_21;
            assume false;
          }
          assume (forall z_22_1: int ::
            
            z_22_1 == z_22_1
          );
          assume false;
        }
        assume (forall x$0_9_1: int ::
          
          (forall z_23: int ::
            
            z_23 == z_23
          )
        );
        // Stop execution
        assume false;
      }
    res := function8(Heap, (forall z_24: int ::
      
      z_24 == z_24
    ), 5);
    assume state(Heap, Mask);
  
  // -- Translating statement: res := function9() -- capture_avoidance_rule_2.vpr@88.3--88.21
    
    // -- Check definedness of function9()
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function function9 might not hold. Assertion (exists x$0: Int :: x$0 == x$0) might not hold. (capture_avoidance_rule_2.vpr@88.10--88.21) [92261]"}
          (exists x$0_10: int ::
          
          x$0_10 == x$0_10
        );
        // Stop execution
        assume false;
      }
    res := function9(Heap);
    assume state(Heap, Mask);
  
  // -- Translating statement: res := function10(x) -- capture_avoidance_rule_2.vpr@89.3--89.23
    
    // -- Check definedness of function10(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function function10 might not hold. Assertion (exists x$0: Int :: x$0 == x ==> x$0 == 0) might not hold. (capture_avoidance_rule_2.vpr@89.10--89.23) [92262]"}
          (exists x$0_11: int ::
          
          x$0_11 == x ==> x$0_11 == 0
        );
        // Stop execution
        assume false;
      }
    res := function10(Heap, x);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method client2
// ==================================================

procedure client2(e_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var QPMask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[e_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume e_1 != null;
    Mask := Mask[e_1, f_7:=Mask[e_1, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert function11(Set(e)) -- capture_avoidance_rule_2.vpr@104.3--104.28
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of function11(Set(e))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver e$0 is injective
          assert {:msg "  Precondition of function function11 might not hold. Quantified resource e$0.f might not be injective. (capture_avoidance_rule_2.vpr@104.10--104.28) [92263]"}
            (forall e$0: Ref, e$0_1: Ref ::
            { neverTriggered2(e$0), neverTriggered2(e$0_1) }
            (((e$0 != e$0_1 && Set#Singleton(e_1)[e$0]) && Set#Singleton(e_1)[e$0_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> e$0 != e$0_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function function11 might not hold. There might be insufficient permission to access e$0.f (capture_avoidance_rule_2.vpr@104.10--104.28) [92264]"}
            (forall e$0: Ref ::
            { ExhaleWellDef0Heap[e$0, f_7] } { QPMask[e$0, f_7] } { Set#Singleton(e_1)[e$0] }
            Set#Singleton(e_1)[e$0] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[e$0, f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver e$0
          assume (forall e$0: Ref ::
            { ExhaleWellDef0Heap[e$0, f_7] } { QPMask[e$0, f_7] } { Set#Singleton(e_1)[e$0] }
            Set#Singleton(e_1)[e$0] && NoPerm < FullPerm ==> qpRange2(e$0) && invRecv2(e$0) == e$0
          );
          assume (forall o_4: Ref ::
            { invRecv2(o_4) }
            Set#Singleton(e_1)[invRecv2(o_4)] && (NoPerm < FullPerm && qpRange2(o_4)) ==> invRecv2(o_4) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion function11(Set(e)) might not hold. (capture_avoidance_rule_2.vpr@104.10--104.28) [92265]"}
      function11(Heap, Set#Singleton(e_1));
    assume state(Heap, Mask);
}