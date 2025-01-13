// 
// Translation of Viper program.
// 
// Date:         2025-01-13 12:52:35
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/issues/issue_0067.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/issues/issue_0067-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_3: Ref, f_8: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_3, f_8] }
  Heap[o_3, $allocated] ==> Heap[Heap[o_3, f_8], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_34: Ref, f_40: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_34, f_40] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_34, f_40) ==> Heap[o_34, f_40] == ExhaleHeap[o_34, f_40]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_16: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_16), ExhaleHeap[null, PredicateMaskField(pm_f_16)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_16) && IsPredicateField(pm_f_16) ==> Heap[null, PredicateMaskField(pm_f_16)] == ExhaleHeap[null, PredicateMaskField(pm_f_16)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_16: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_16) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_16) && IsPredicateField(pm_f_16) ==> (forall <A, B> o2_16: Ref, f_40: (Field A B) ::
    { ExhaleHeap[o2_16, f_40] }
    Heap[null, PredicateMaskField(pm_f_16)][o2_16, f_40] ==> Heap[o2_16, f_40] == ExhaleHeap[o2_16, f_40]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_16: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_16), ExhaleHeap[null, WandMaskField(pm_f_16)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_16) && IsWandField(pm_f_16) ==> Heap[null, WandMaskField(pm_f_16)] == ExhaleHeap[null, WandMaskField(pm_f_16)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_16: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_16) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_16) && IsWandField(pm_f_16) ==> (forall <A, B> o2_16: Ref, f_40: (Field A B) ::
    { ExhaleHeap[o2_16, f_40] }
    Heap[null, WandMaskField(pm_f_16)][o2_16, f_40] ==> Heap[o2_16, f_40] == ExhaleHeap[o2_16, f_40]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_34: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_34, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_34, $allocated] ==> ExhaleHeap[o_34, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_3: Ref, f_35: (Field A B), v: B ::
  { Heap[o_3, f_35:=v] }
  succHeap(Heap, Heap[o_3, f_35:=v])
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

function  neverTriggered1(s_1: Ref): bool;
function  neverTriggered2(s_5_1: Ref): bool;
function  neverTriggered3(s_1: Ref): bool;
function  neverTriggered4(s_5_1: Ref): bool;
function  neverTriggered5(s_1: Ref): bool;
function  neverTriggered6(s_5_1: Ref): bool;
function  neverTriggered7(s_1: Ref): bool;
function  neverTriggered8(s_5_1: Ref): bool;
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

const unique k_47: Field NormalField Perm;
axiom !IsPredicateField(k_47);
axiom !IsWandField(k_47);
const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(S: (Set Ref), a_2: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var s_5: Ref;
  var s_7: Ref;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[a_2, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall s: Ref :: { (s in S) } (s in S) ==> acc(s.k, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource s.k might not be injective. (issue_0067.vpr@8.12--8.48) [73774]"}
      (forall s_1: Ref, s_1_1: Ref ::
      
      (((s_1 != s_1_1 && S[s_1]) && S[s_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> s_1 != s_1_1
    );
    
    // -- Define Inverse Function
      assume (forall s_1: Ref ::
        { Heap[s_1, k_47] } { QPMask[s_1, k_47] } { S[s_1] }
        S[s_1] && NoPerm < FullPerm ==> qpRange1(s_1) && invRecv1(s_1) == s_1
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        (S[invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4) ==> invRecv1(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall s_1: Ref ::
        { Heap[s_1, k_47] } { QPMask[s_1, k_47] } { S[s_1] }
        S[s_1] ==> s_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, k_47] }
        ((S[invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4) ==> (NoPerm < FullPerm ==> invRecv1(o_4) == o_4) && QPMask[o_4, k_47] == Mask[o_4, k_47] + FullPerm) && (!((S[invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4)) ==> QPMask[o_4, k_47] == Mask[o_4, k_47])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != k_47 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall s: Ref :: { (s in S) } (s in S) ==> s.k > none)
      if (*) {
        if (S[s_5]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access s.k (issue_0067.vpr@9.12--9.50) [73775]"}
            HasDirectPerm(Mask, s_5, k_47);
        }
        assume false;
      }
    assume (forall s_3: Ref ::
      { S[s_3] }
      S[s_3] ==> NoPerm < Heap[s_3, k_47]
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall s: Ref :: { (s in S) } (s in S) && s != null ==> acc(s.f, s.k))
      if (*) {
        if (S[s_7] && s_7 != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access s.k (issue_0067.vpr@10.12--10.66) [73776]"}
            HasDirectPerm(Mask, s_7, k_47);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource s.f might not be injective. (issue_0067.vpr@10.12--10.66) [73777]"}
      (forall s_5_1: Ref, s_5_2: Ref ::
      
      (((s_5_1 != s_5_2 && (S[s_5_1] && s_5_1 != null)) && (S[s_5_2] && s_5_2 != null)) && NoPerm < Heap[s_5_1, k_47]) && NoPerm < Heap[s_5_2, k_47] ==> s_5_1 != s_5_2
    );
    
    // -- Define Inverse Function
      assume (forall s_5_1: Ref ::
        { Heap[s_5_1, f_7] } { QPMask[s_5_1, f_7] } { S[s_5_1] }
        (S[s_5_1] && s_5_1 != null) && NoPerm < Heap[s_5_1, k_47] ==> qpRange2(s_5_1) && invRecv2(s_5_1) == s_5_1
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        ((S[invRecv2(o_4)] && invRecv2(o_4) != null) && NoPerm < Heap[invRecv2(o_4), k_47]) && qpRange2(o_4) ==> invRecv2(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction s.k might be negative. (issue_0067.vpr@10.12--10.66) [73778]"}
      (forall s_5_1: Ref ::
      { Heap[s_5_1, f_7] } { QPMask[s_5_1, f_7] } { S[s_5_1] }
      S[s_5_1] && s_5_1 != null ==> Heap[s_5_1, k_47] >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall s_5_1: Ref ::
        { Heap[s_5_1, f_7] } { QPMask[s_5_1, f_7] } { S[s_5_1] }
        (S[s_5_1] && s_5_1 != null) && Heap[s_5_1, k_47] > NoPerm ==> s_5_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((S[invRecv2(o_4)] && invRecv2(o_4) != null) && NoPerm < Heap[invRecv2(o_4), k_47]) && qpRange2(o_4) ==> (NoPerm < Heap[invRecv2(o_4), k_47] ==> invRecv2(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + Heap[invRecv2(o_4), k_47]) && (!(((S[invRecv2(o_4)] && invRecv2(o_4) != null) && NoPerm < Heap[invRecv2(o_4), k_47]) && qpRange2(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume S[a_2];
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: exhale acc(a.f, a.k) -- issue_0067.vpr@13.3--13.23
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of acc(a.f, a.k)
      assert {:msg "  Exhale might fail. There might be insufficient permission to access a.k (issue_0067.vpr@13.10--13.23) [73779]"}
        HasDirectPerm(ExhaleWellDef0Mask, a_2, k_47);
    perm := Heap[a_2, k_47];
    assert {:msg "  Exhale might fail. Fraction a.k might be negative. (issue_0067.vpr@13.10--13.23) [73780]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access a.f (issue_0067.vpr@13.10--13.23) [73781]"}
        perm <= Mask[a_2, f_7];
    }
    Mask := Mask[a_2, f_7:=Mask[a_2, f_7] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(a.f, a.k) -- issue_0067.vpr@15.3--15.23
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of acc(a.f, a.k)
      assert {:msg "  Exhale might fail. There might be insufficient permission to access a.k (issue_0067.vpr@15.10--15.23) [73782]"}
        HasDirectPerm(ExhaleWellDef0Mask, a_2, k_47);
    perm := Heap[a_2, k_47];
    assert {:msg "  Exhale might fail. Fraction a.k might be negative. (issue_0067.vpr@15.10--15.23) [73783]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access a.f (issue_0067.vpr@15.10--15.23) [73784]"}
        perm <= Mask[a_2, f_7];
    }
    Mask := Mask[a_2, f_7:=Mask[a_2, f_7] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(S: (Set Ref), a_2: Ref, b_24: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var s_8: Ref;
  var s_9: Ref;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[a_2, $allocated];
    assume Heap[b_24, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall s: Ref :: { (s in S) } (s in S) ==> acc(s.k, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource s.k might not be injective. (issue_0067.vpr@19.12--19.48) [73785]"}
      (forall s_1: Ref, s_1_1: Ref ::
      
      (((s_1 != s_1_1 && S[s_1]) && S[s_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> s_1 != s_1_1
    );
    
    // -- Define Inverse Function
      assume (forall s_1: Ref ::
        { Heap[s_1, k_47] } { QPMask[s_1, k_47] } { S[s_1] }
        S[s_1] && NoPerm < FullPerm ==> qpRange3(s_1) && invRecv3(s_1) == s_1
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        (S[invRecv3(o_4)] && NoPerm < FullPerm) && qpRange3(o_4) ==> invRecv3(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall s_1: Ref ::
        { Heap[s_1, k_47] } { QPMask[s_1, k_47] } { S[s_1] }
        S[s_1] ==> s_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, k_47] }
        ((S[invRecv3(o_4)] && NoPerm < FullPerm) && qpRange3(o_4) ==> (NoPerm < FullPerm ==> invRecv3(o_4) == o_4) && QPMask[o_4, k_47] == Mask[o_4, k_47] + FullPerm) && (!((S[invRecv3(o_4)] && NoPerm < FullPerm) && qpRange3(o_4)) ==> QPMask[o_4, k_47] == Mask[o_4, k_47])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != k_47 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall s: Ref :: { (s in S) } (s in S) ==> s.k > none)
      if (*) {
        if (S[s_8]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access s.k (issue_0067.vpr@20.12--20.50) [73786]"}
            HasDirectPerm(Mask, s_8, k_47);
        }
        assume false;
      }
    assume (forall s_3: Ref ::
      { S[s_3] }
      S[s_3] ==> NoPerm < Heap[s_3, k_47]
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall s: Ref :: { (s in S) } (s in S) && s != null ==> acc(s.f, s.k))
      if (*) {
        if (S[s_9] && s_9 != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access s.k (issue_0067.vpr@21.12--21.66) [73787]"}
            HasDirectPerm(Mask, s_9, k_47);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource s.f might not be injective. (issue_0067.vpr@21.12--21.66) [73788]"}
      (forall s_5_1: Ref, s_5_2: Ref ::
      
      (((s_5_1 != s_5_2 && (S[s_5_1] && s_5_1 != null)) && (S[s_5_2] && s_5_2 != null)) && NoPerm < Heap[s_5_1, k_47]) && NoPerm < Heap[s_5_2, k_47] ==> s_5_1 != s_5_2
    );
    
    // -- Define Inverse Function
      assume (forall s_5_1: Ref ::
        { Heap[s_5_1, f_7] } { QPMask[s_5_1, f_7] } { S[s_5_1] }
        (S[s_5_1] && s_5_1 != null) && NoPerm < Heap[s_5_1, k_47] ==> qpRange4(s_5_1) && invRecv4(s_5_1) == s_5_1
      );
      assume (forall o_4: Ref ::
        { invRecv4(o_4) }
        ((S[invRecv4(o_4)] && invRecv4(o_4) != null) && NoPerm < Heap[invRecv4(o_4), k_47]) && qpRange4(o_4) ==> invRecv4(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction s.k might be negative. (issue_0067.vpr@21.12--21.66) [73789]"}
      (forall s_5_1: Ref ::
      { Heap[s_5_1, f_7] } { QPMask[s_5_1, f_7] } { S[s_5_1] }
      S[s_5_1] && s_5_1 != null ==> Heap[s_5_1, k_47] >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall s_5_1: Ref ::
        { Heap[s_5_1, f_7] } { QPMask[s_5_1, f_7] } { S[s_5_1] }
        (S[s_5_1] && s_5_1 != null) && Heap[s_5_1, k_47] > NoPerm ==> s_5_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((S[invRecv4(o_4)] && invRecv4(o_4) != null) && NoPerm < Heap[invRecv4(o_4), k_47]) && qpRange4(o_4) ==> (NoPerm < Heap[invRecv4(o_4), k_47] ==> invRecv4(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + Heap[invRecv4(o_4), k_47]) && (!(((S[invRecv4(o_4)] && invRecv4(o_4) != null) && NoPerm < Heap[invRecv4(o_4), k_47]) && qpRange4(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume S[a_2];
    assume S[b_24];
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: exhale acc(a.f, a.k) -- issue_0067.vpr@24.3--24.23
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of acc(a.f, a.k)
      assert {:msg "  Exhale might fail. There might be insufficient permission to access a.k (issue_0067.vpr@24.10--24.23) [73790]"}
        HasDirectPerm(ExhaleWellDef0Mask, a_2, k_47);
    perm := Heap[a_2, k_47];
    assert {:msg "  Exhale might fail. Fraction a.k might be negative. (issue_0067.vpr@24.10--24.23) [73791]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access a.f (issue_0067.vpr@24.10--24.23) [73792]"}
        perm <= Mask[a_2, f_7];
    }
    Mask := Mask[a_2, f_7:=Mask[a_2, f_7] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(b.f, a.k) -- issue_0067.vpr@26.3--26.23
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of acc(b.f, a.k)
      assert {:msg "  Exhale might fail. There might be insufficient permission to access a.k (issue_0067.vpr@26.10--26.23) [73793]"}
        HasDirectPerm(ExhaleWellDef0Mask, a_2, k_47);
    perm := Heap[a_2, k_47];
    assert {:msg "  Exhale might fail. Fraction a.k might be negative. (issue_0067.vpr@26.10--26.23) [73794]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access b.f (issue_0067.vpr@26.10--26.23) [73795]"}
        perm <= Mask[b_24, f_7];
    }
    Mask := Mask[b_24, f_7:=Mask[b_24, f_7] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03
// ==================================================

procedure test03(S: (Set Ref), a_2: Ref, b_24: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var s_10: Ref;
  var s_11: Ref;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[a_2, $allocated];
    assume Heap[b_24, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall s: Ref :: { (s in S) } (s in S) ==> acc(s.k, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource s.k might not be injective. (issue_0067.vpr@30.12--30.48) [73796]"}
      (forall s_1: Ref, s_1_1: Ref ::
      
      (((s_1 != s_1_1 && S[s_1]) && S[s_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> s_1 != s_1_1
    );
    
    // -- Define Inverse Function
      assume (forall s_1: Ref ::
        { Heap[s_1, k_47] } { QPMask[s_1, k_47] } { S[s_1] }
        S[s_1] && NoPerm < FullPerm ==> qpRange5(s_1) && invRecv5(s_1) == s_1
      );
      assume (forall o_4: Ref ::
        { invRecv5(o_4) }
        (S[invRecv5(o_4)] && NoPerm < FullPerm) && qpRange5(o_4) ==> invRecv5(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall s_1: Ref ::
        { Heap[s_1, k_47] } { QPMask[s_1, k_47] } { S[s_1] }
        S[s_1] ==> s_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, k_47] }
        ((S[invRecv5(o_4)] && NoPerm < FullPerm) && qpRange5(o_4) ==> (NoPerm < FullPerm ==> invRecv5(o_4) == o_4) && QPMask[o_4, k_47] == Mask[o_4, k_47] + FullPerm) && (!((S[invRecv5(o_4)] && NoPerm < FullPerm) && qpRange5(o_4)) ==> QPMask[o_4, k_47] == Mask[o_4, k_47])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != k_47 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall s: Ref :: { (s in S) } (s in S) ==> s.k > none)
      if (*) {
        if (S[s_10]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access s.k (issue_0067.vpr@31.12--31.50) [73797]"}
            HasDirectPerm(Mask, s_10, k_47);
        }
        assume false;
      }
    assume (forall s_3: Ref ::
      { S[s_3] }
      S[s_3] ==> NoPerm < Heap[s_3, k_47]
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall s: Ref :: { (s in S) } (s in S) && s != null ==> acc(s.f, s.k))
      if (*) {
        if (S[s_11] && s_11 != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access s.k (issue_0067.vpr@32.12--32.66) [73798]"}
            HasDirectPerm(Mask, s_11, k_47);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource s.f might not be injective. (issue_0067.vpr@32.12--32.66) [73799]"}
      (forall s_5_1: Ref, s_5_2: Ref ::
      
      (((s_5_1 != s_5_2 && (S[s_5_1] && s_5_1 != null)) && (S[s_5_2] && s_5_2 != null)) && NoPerm < Heap[s_5_1, k_47]) && NoPerm < Heap[s_5_2, k_47] ==> s_5_1 != s_5_2
    );
    
    // -- Define Inverse Function
      assume (forall s_5_1: Ref ::
        { Heap[s_5_1, f_7] } { QPMask[s_5_1, f_7] } { S[s_5_1] }
        (S[s_5_1] && s_5_1 != null) && NoPerm < Heap[s_5_1, k_47] ==> qpRange6(s_5_1) && invRecv6(s_5_1) == s_5_1
      );
      assume (forall o_4: Ref ::
        { invRecv6(o_4) }
        ((S[invRecv6(o_4)] && invRecv6(o_4) != null) && NoPerm < Heap[invRecv6(o_4), k_47]) && qpRange6(o_4) ==> invRecv6(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction s.k might be negative. (issue_0067.vpr@32.12--32.66) [73800]"}
      (forall s_5_1: Ref ::
      { Heap[s_5_1, f_7] } { QPMask[s_5_1, f_7] } { S[s_5_1] }
      S[s_5_1] && s_5_1 != null ==> Heap[s_5_1, k_47] >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall s_5_1: Ref ::
        { Heap[s_5_1, f_7] } { QPMask[s_5_1, f_7] } { S[s_5_1] }
        (S[s_5_1] && s_5_1 != null) && Heap[s_5_1, k_47] > NoPerm ==> s_5_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((S[invRecv6(o_4)] && invRecv6(o_4) != null) && NoPerm < Heap[invRecv6(o_4), k_47]) && qpRange6(o_4) ==> (NoPerm < Heap[invRecv6(o_4), k_47] ==> invRecv6(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + Heap[invRecv6(o_4), k_47]) && (!(((S[invRecv6(o_4)] && invRecv6(o_4) != null) && NoPerm < Heap[invRecv6(o_4), k_47]) && qpRange6(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume S[a_2];
    assume S[b_24];
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: exhale acc(a.f, a.k) -- issue_0067.vpr@35.3--35.23
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of acc(a.f, a.k)
      assert {:msg "  Exhale might fail. There might be insufficient permission to access a.k (issue_0067.vpr@35.10--35.23) [73801]"}
        HasDirectPerm(ExhaleWellDef0Mask, a_2, k_47);
    perm := Heap[a_2, k_47];
    assert {:msg "  Exhale might fail. Fraction a.k might be negative. (issue_0067.vpr@35.10--35.23) [73802]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access a.f (issue_0067.vpr@35.10--35.23) [73803]"}
        perm <= Mask[a_2, f_7];
    }
    Mask := Mask[a_2, f_7:=Mask[a_2, f_7] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(b.f, b.k) -- issue_0067.vpr@37.3--37.23
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of acc(b.f, b.k)
      assert {:msg "  Exhale might fail. There might be insufficient permission to access b.k (issue_0067.vpr@37.10--37.23) [73804]"}
        HasDirectPerm(ExhaleWellDef0Mask, b_24, k_47);
    perm := Heap[b_24, k_47];
    assert {:msg "  Exhale might fail. Fraction b.k might be negative. (issue_0067.vpr@37.10--37.23) [73805]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access b.f (issue_0067.vpr@37.10--37.23) [73806]"}
        perm <= Mask[b_24, f_7];
    }
    Mask := Mask[b_24, f_7:=Mask[b_24, f_7] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test04
// ==================================================

procedure test04(S: (Set Ref), a_2: Ref, b_24: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var s_12: Ref;
  var s_13: Ref;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[a_2, $allocated];
    assume Heap[b_24, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall s: Ref :: { (s in S) } (s in S) ==> acc(s.k, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource s.k might not be injective. (issue_0067.vpr@41.12--41.48) [73807]"}
      (forall s_1: Ref, s_1_1: Ref ::
      
      (((s_1 != s_1_1 && S[s_1]) && S[s_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> s_1 != s_1_1
    );
    
    // -- Define Inverse Function
      assume (forall s_1: Ref ::
        { Heap[s_1, k_47] } { QPMask[s_1, k_47] } { S[s_1] }
        S[s_1] && NoPerm < FullPerm ==> qpRange7(s_1) && invRecv7(s_1) == s_1
      );
      assume (forall o_4: Ref ::
        { invRecv7(o_4) }
        (S[invRecv7(o_4)] && NoPerm < FullPerm) && qpRange7(o_4) ==> invRecv7(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall s_1: Ref ::
        { Heap[s_1, k_47] } { QPMask[s_1, k_47] } { S[s_1] }
        S[s_1] ==> s_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, k_47] }
        ((S[invRecv7(o_4)] && NoPerm < FullPerm) && qpRange7(o_4) ==> (NoPerm < FullPerm ==> invRecv7(o_4) == o_4) && QPMask[o_4, k_47] == Mask[o_4, k_47] + FullPerm) && (!((S[invRecv7(o_4)] && NoPerm < FullPerm) && qpRange7(o_4)) ==> QPMask[o_4, k_47] == Mask[o_4, k_47])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != k_47 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall s: Ref :: { (s in S) } (s in S) ==> s.k > none)
      if (*) {
        if (S[s_12]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access s.k (issue_0067.vpr@42.12--42.50) [73808]"}
            HasDirectPerm(Mask, s_12, k_47);
        }
        assume false;
      }
    assume (forall s_3: Ref ::
      { S[s_3] }
      S[s_3] ==> NoPerm < Heap[s_3, k_47]
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall s: Ref :: { (s in S) } (s in S) && s != null ==> acc(s.f, s.k))
      if (*) {
        if (S[s_13] && s_13 != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access s.k (issue_0067.vpr@43.12--43.66) [73809]"}
            HasDirectPerm(Mask, s_13, k_47);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource s.f might not be injective. (issue_0067.vpr@43.12--43.66) [73810]"}
      (forall s_5_1: Ref, s_5_2: Ref ::
      
      (((s_5_1 != s_5_2 && (S[s_5_1] && s_5_1 != null)) && (S[s_5_2] && s_5_2 != null)) && NoPerm < Heap[s_5_1, k_47]) && NoPerm < Heap[s_5_2, k_47] ==> s_5_1 != s_5_2
    );
    
    // -- Define Inverse Function
      assume (forall s_5_1: Ref ::
        { Heap[s_5_1, f_7] } { QPMask[s_5_1, f_7] } { S[s_5_1] }
        (S[s_5_1] && s_5_1 != null) && NoPerm < Heap[s_5_1, k_47] ==> qpRange8(s_5_1) && invRecv8(s_5_1) == s_5_1
      );
      assume (forall o_4: Ref ::
        { invRecv8(o_4) }
        ((S[invRecv8(o_4)] && invRecv8(o_4) != null) && NoPerm < Heap[invRecv8(o_4), k_47]) && qpRange8(o_4) ==> invRecv8(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction s.k might be negative. (issue_0067.vpr@43.12--43.66) [73811]"}
      (forall s_5_1: Ref ::
      { Heap[s_5_1, f_7] } { QPMask[s_5_1, f_7] } { S[s_5_1] }
      S[s_5_1] && s_5_1 != null ==> Heap[s_5_1, k_47] >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall s_5_1: Ref ::
        { Heap[s_5_1, f_7] } { QPMask[s_5_1, f_7] } { S[s_5_1] }
        (S[s_5_1] && s_5_1 != null) && Heap[s_5_1, k_47] > NoPerm ==> s_5_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((S[invRecv8(o_4)] && invRecv8(o_4) != null) && NoPerm < Heap[invRecv8(o_4), k_47]) && qpRange8(o_4) ==> (NoPerm < Heap[invRecv8(o_4), k_47] ==> invRecv8(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + Heap[invRecv8(o_4), k_47]) && (!(((S[invRecv8(o_4)] && invRecv8(o_4) != null) && NoPerm < Heap[invRecv8(o_4), k_47]) && qpRange8(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume S[a_2];
    assume S[b_24];
    assume state(Heap, Mask);
    assume a_2 != b_24;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: exhale acc(a.f, a.k) -- issue_0067.vpr@47.3--47.23
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of acc(a.f, a.k)
      assert {:msg "  Exhale might fail. There might be insufficient permission to access a.k (issue_0067.vpr@47.10--47.23) [73812]"}
        HasDirectPerm(ExhaleWellDef0Mask, a_2, k_47);
    perm := Heap[a_2, k_47];
    assert {:msg "  Exhale might fail. Fraction a.k might be negative. (issue_0067.vpr@47.10--47.23) [73813]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access a.f (issue_0067.vpr@47.10--47.23) [73814]"}
        perm <= Mask[a_2, f_7];
    }
    Mask := Mask[a_2, f_7:=Mask[a_2, f_7] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(b.f, b.k) -- issue_0067.vpr@48.3--48.23
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of acc(b.f, b.k)
      assert {:msg "  Exhale might fail. There might be insufficient permission to access b.k (issue_0067.vpr@48.10--48.23) [73815]"}
        HasDirectPerm(ExhaleWellDef0Mask, b_24, k_47);
    perm := Heap[b_24, k_47];
    assert {:msg "  Exhale might fail. Fraction b.k might be negative. (issue_0067.vpr@48.10--48.23) [73816]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access b.f (issue_0067.vpr@48.10--48.23) [73817]"}
        perm <= Mask[b_24, f_7];
    }
    Mask := Mask[b_24, f_7:=Mask[b_24, f_7] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- issue_0067.vpr@50.3--50.15
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion false might not hold. (issue_0067.vpr@50.10--50.15) [73818]"}
      false;
    assume state(Heap, Mask);
}