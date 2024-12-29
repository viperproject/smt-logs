// 
// Translation of Viper program.
// 
// Date:         2024-12-29 15:37:37
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0336a.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0336a-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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

function  neverTriggered1(l_3_2: Ref): bool;
function  neverTriggered2(l_5_1: Ref): bool;
function  neverTriggered3(l$0: Ref): bool;
function  neverTriggered4(l$0_1_1: Ref): bool;
function  neverTriggered5(l$0_3: Ref): bool;
function  neverTriggered6(l$0_4: Ref): bool;
function  neverTriggered7(l$0_9: Ref): bool;
function  neverTriggered8(l$0_10: Ref): bool;
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
    assert {:msg "  Predicate might not be well-formed. Quantified resource l.parent might not be injective. (0336a.vpr@7.1--11.2) [196859]"}
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
    assert {:msg "  Predicate might not be well-formed. Quantified resource l.rank might not be injective. (0336a.vpr@7.1--11.2) [196860]"}
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
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access l.rank (0336a.vpr@7.1--11.2) [196861]"}
            HasDirectPerm(Mask, l_10, rank);
        }
        assume false;
      }
    assume (forall l_7_1: Ref ::
      { b_24[l_7_1] }
      b_24[l_7_1] ==> 0 <= Heap[l_7_1, rank]
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
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  var QPMask: MaskType;
  var l$0_5: Ref;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  
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
      oldHeap := Heap;
      oldMask := Mask;
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
  
  // -- Translating statement: unfold acc(uf_bank(b), write) -- 0336a.vpr@19.3--19.20
    assume uf_bank#trigger(Heap, uf_bank(b_24));
    assume Heap[null, uf_bank(b_24)] == CombineFrames(FrameFragment(uf_bank#condqp1(Heap, b_24)), FrameFragment(uf_bank#condqp2(Heap, b_24)));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding uf_bank(b) might fail. There might be insufficient permission to access uf_bank(b) (0336a.vpr@19.3--19.20) [196864]"}
        perm <= Mask[null, uf_bank(b_24)];
    }
    Mask := Mask[null, uf_bank(b_24):=Mask[null, uf_bank(b_24)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, uf_bank(b_24))) {
        havoc newVersion;
        Heap := Heap[null, uf_bank(b_24):=newVersion];
      }
    havoc QPMask;
    assert {:msg "  Unfolding uf_bank(b) might fail. Quantified resource l$0.parent might not be injective. (0336a.vpr@19.3--19.20) [196865]"}
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
    assert {:msg "  Unfolding uf_bank(b) might fail. Quantified resource l$0.rank might not be injective. (0336a.vpr@19.3--19.20) [196866]"}
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
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(uf_bank(b), write) -- 0336a.vpr@20.3--20.18
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver l$0 is injective
      assert {:msg "  Folding uf_bank(b) might fail. Quantified resource l$0.parent might not be injective. (0336a.vpr@20.3--20.18) [196869]"}
        (forall l$0_3: Ref, l$0_3_1: Ref ::
        { neverTriggered5(l$0_3), neverTriggered5(l$0_3_1) }
        (((l$0_3 != l$0_3_1 && b_24[l$0_3]) && b_24[l$0_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> l$0_3 != l$0_3_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding uf_bank(b) might fail. There might be insufficient permission to access l$0.parent (0336a.vpr@20.3--20.18) [196870]"}
        (forall l$0_3: Ref ::
        { Heap[l$0_3, parent] } { QPMask[l$0_3, parent] } { b_24[l$0_3] }
        b_24[l$0_3] ==> Mask[l$0_3, parent] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver l$0
      assume (forall l$0_3: Ref ::
        { Heap[l$0_3, parent] } { QPMask[l$0_3, parent] } { b_24[l$0_3] }
        b_24[l$0_3] && NoPerm < FullPerm ==> qpRange5(l$0_3) && invRecv5(l$0_3) == l$0_3
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
      assert {:msg "  Folding uf_bank(b) might fail. Quantified resource l$0.rank might not be injective. (0336a.vpr@20.3--20.18) [196872]"}
        (forall l$0_4: Ref, l$0_4_1: Ref ::
        { neverTriggered6(l$0_4), neverTriggered6(l$0_4_1) }
        (((l$0_4 != l$0_4_1 && b_24[l$0_4]) && b_24[l$0_4_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> l$0_4 != l$0_4_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding uf_bank(b) might fail. There might be insufficient permission to access l$0.rank (0336a.vpr@20.3--20.18) [196873]"}
        (forall l$0_4: Ref ::
        { Heap[l$0_4, rank] } { QPMask[l$0_4, rank] } { b_24[l$0_4] }
        b_24[l$0_4] ==> Mask[l$0_4, rank] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver l$0
      assume (forall l$0_4: Ref ::
        { Heap[l$0_4, rank] } { QPMask[l$0_4, rank] } { b_24[l$0_4] }
        b_24[l$0_4] && NoPerm < FullPerm ==> qpRange6(l$0_4) && invRecv6(l$0_4) == l$0_4
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
      if (b_24[l$0_5]) {
        assert {:msg "  Folding uf_bank(b) might fail. Assertion 0 <= l$0.rank might not hold. (0336a.vpr@20.3--20.18) [196874]"}
          0 <= Heap[l$0_5, rank];
      }
      assume false;
    }
    assume (forall l$0_6_1: Ref ::
      { b_24[l$0_6_1] }
      b_24[l$0_6_1] ==> 0 <= Heap[l$0_6_1, rank]
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
    assume (forall <A, B> o_32: Ref, f_38: (Field A B) ::
      { newPMask[o_32, f_38] }
      Heap[null, uf_bank#sm(b_24)][o_32, f_38] ==> newPMask[o_32, f_38]
    );
    assume (forall l$0_7: Ref ::
      
      b_24[l$0_7] ==> newPMask[l$0_7, parent]
    );
    Heap := Heap[null, uf_bank#sm(b_24):=newPMask];
    // register all known folded permissions guarded by predicate uf_bank
    havoc newPMask;
    assume (forall <A, B> o_33: Ref, f_39: (Field A B) ::
      { newPMask[o_33, f_39] }
      Heap[null, uf_bank#sm(b_24)][o_33, f_39] ==> newPMask[o_33, f_39]
    );
    assume (forall l$0_8: Ref ::
      
      b_24[l$0_8] ==> newPMask[l$0_8, rank]
    );
    Heap := Heap[null, uf_bank#sm(b_24):=newPMask];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(uf_bank(b), write) -- 0336a.vpr@21.3--21.20
    assume uf_bank#trigger(Heap, uf_bank(b_24));
    assume Heap[null, uf_bank(b_24)] == CombineFrames(FrameFragment(uf_bank#condqp1(Heap, b_24)), FrameFragment(uf_bank#condqp2(Heap, b_24)));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding uf_bank(b) might fail. There might be insufficient permission to access uf_bank(b) (0336a.vpr@21.3--21.20) [196879]"}
        perm <= Mask[null, uf_bank(b_24)];
    }
    Mask := Mask[null, uf_bank(b_24):=Mask[null, uf_bank(b_24)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, uf_bank(b_24))) {
        havoc newVersion;
        Heap := Heap[null, uf_bank(b_24):=newVersion];
      }
    havoc QPMask;
    assert {:msg "  Unfolding uf_bank(b) might fail. Quantified resource l$0.parent might not be injective. (0336a.vpr@21.3--21.20) [196880]"}
      (forall l$0_9: Ref, l$0_9_1: Ref ::
      
      (((l$0_9 != l$0_9_1 && b_24[l$0_9]) && b_24[l$0_9_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> l$0_9 != l$0_9_1
    );
    
    // -- Define Inverse Function
      assume (forall l$0_9: Ref ::
        { Heap[l$0_9, parent] } { QPMask[l$0_9, parent] } { b_24[l$0_9] }
        b_24[l$0_9] && NoPerm < FullPerm ==> qpRange7(l$0_9) && invRecv7(l$0_9) == l$0_9
      );
      assume (forall o_4: Ref ::
        { invRecv7(o_4) }
        (b_24[invRecv7(o_4)] && NoPerm < FullPerm) && qpRange7(o_4) ==> invRecv7(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall l$0_9: Ref ::
        { Heap[l$0_9, parent] } { QPMask[l$0_9, parent] } { b_24[l$0_9] }
        b_24[l$0_9] ==> l$0_9 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, parent] }
        ((b_24[invRecv7(o_4)] && NoPerm < FullPerm) && qpRange7(o_4) ==> (NoPerm < FullPerm ==> invRecv7(o_4) == o_4) && QPMask[o_4, parent] == Mask[o_4, parent] + FullPerm) && (!((b_24[invRecv7(o_4)] && NoPerm < FullPerm) && qpRange7(o_4)) ==> QPMask[o_4, parent] == Mask[o_4, parent])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != parent ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    havoc QPMask;
    assert {:msg "  Unfolding uf_bank(b) might fail. Quantified resource l$0.rank might not be injective. (0336a.vpr@21.3--21.20) [196881]"}
      (forall l$0_10: Ref, l$0_10_1: Ref ::
      
      (((l$0_10 != l$0_10_1 && b_24[l$0_10]) && b_24[l$0_10_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> l$0_10 != l$0_10_1
    );
    
    // -- Define Inverse Function
      assume (forall l$0_10: Ref ::
        { Heap[l$0_10, rank] } { QPMask[l$0_10, rank] } { b_24[l$0_10] }
        b_24[l$0_10] && NoPerm < FullPerm ==> qpRange8(l$0_10) && invRecv8(l$0_10) == l$0_10
      );
      assume (forall o_4: Ref ::
        { invRecv8(o_4) }
        (b_24[invRecv8(o_4)] && NoPerm < FullPerm) && qpRange8(o_4) ==> invRecv8(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall l$0_10: Ref ::
        { Heap[l$0_10, rank] } { QPMask[l$0_10, rank] } { b_24[l$0_10] }
        b_24[l$0_10] ==> l$0_10 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, rank] }
        ((b_24[invRecv8(o_4)] && NoPerm < FullPerm) && qpRange8(o_4) ==> (NoPerm < FullPerm ==> invRecv8(o_4) == o_4) && QPMask[o_4, rank] == Mask[o_4, rank] + FullPerm) && (!((b_24[invRecv8(o_4)] && NoPerm < FullPerm) && qpRange8(o_4)) ==> QPMask[o_4, rank] == Mask[o_4, rank])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != rank ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume (forall l$0_11: Ref ::
      { b_24[l$0_11] }
      b_24[l$0_11] ==> 0 <= Heap[l$0_11, rank]
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert true -- 0336a.vpr@22.3--22.14
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of bad might not hold. Assertion false might not hold. (0336a.vpr@17.11--17.16) [196883]"}
      false;
}