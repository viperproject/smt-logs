// 
// Translation of Viper program.
// 
// Date:         2024-12-27 02:04:25
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/sets/constraining_permissions.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/sets/constraining_permissions-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
function  neverTriggered3(x_4: Ref): bool;
function  neverTriggered4(x_1: Ref): bool;
function  neverTriggered5(x_3: Ref): bool;
function  neverTriggered6(x_5: Ref): bool;
function  neverTriggered7(x_6: Ref): bool;
function  neverTriggered8(x_1: Ref): bool;
function  neverTriggered9(x_3: Ref): bool;
function  neverTriggered10(x_5: Ref): bool;
function  neverTriggered11(x_7: Ref): bool;
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
// Translation of domain Foo
// ==================================================

// The type for domain Foo
type FooDomainType;

// Translation of domain function foo
function  foo(x_8: Ref): Perm;

// Translation of domain axiom foo_not_none
axiom (forall x: Ref ::
  { (foo(x): Perm) }
  NoPerm < (foo(x): Perm)
);

// ==================================================
// Translation of all fields
// ==================================================

const unique f_7: Field NormalField Ref;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);

// ==================================================
// Translation of method test00
// ==================================================

procedure test00(xs: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, wildcard))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (constraining_permissions.vpr@7.12--7.59) [3398]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && xs[x_1]) && xs[x_1_1]) && NoPerm < wildcard) && NoPerm < wildcard ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { xs[x_1] }
        xs[x_1] ==> qpRange1(x_1) && invRecv1(x_1) == x_1
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        xs[invRecv1(o_4)] && qpRange1(o_4) ==> invRecv1(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { xs[x_1] }
        xs[x_1] ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (xs[invRecv1(o_4)] && qpRange1(o_4) ==> invRecv1(o_4) == o_4 && Mask[o_4, f_7] < QPMask[o_4, f_7]) && (!(xs[invRecv1(o_4)] && qpRange1(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
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
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, wildcard))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (constraining_permissions.vpr@8.12--8.59) [3399]"}
      (forall x_3: Ref, x_3_1: Ref ::
      
      (((x_3 != x_3_1 && xs[x_3]) && xs[x_3_1]) && NoPerm < wildcard) && NoPerm < wildcard ==> x_3 != x_3_1
    );
    
    // -- Define Inverse Function
      assume (forall x_3: Ref ::
        { PostHeap[x_3, f_7] } { QPMask[x_3, f_7] } { xs[x_3] }
        xs[x_3] ==> qpRange2(x_3) && invRecv2(x_3) == x_3
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        xs[invRecv2(o_4)] && qpRange2(o_4) ==> invRecv2(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_3: Ref ::
        { PostHeap[x_3, f_7] } { QPMask[x_3, f_7] } { xs[x_3] }
        xs[x_3] ==> x_3 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (xs[invRecv2(o_4)] && qpRange2(o_4) ==> invRecv2(o_4) == o_4 && PostMask[o_4, f_7] < QPMask[o_4, f_7]) && (!(xs[invRecv2(o_4)] && qpRange2(o_4)) ==> QPMask[o_4, f_7] == PostMask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    // wild card assumptions
    havoc wildcard;
    assert {:msg "  Postcondition of test00 might not hold. There might be insufficient permission to access x.f (constraining_permissions.vpr@8.12--8.59) [3400]"}
      (forall x_4: Ref ::
      
      xs[x_4] ==> Mask[x_4, f_7] > NoPerm
    );
    assume (forall x_4: Ref ::
      
      xs[x_4] ==> wildcard < Mask[x_4, f_7]
    );
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of test00 might not hold. Fraction wildcard might be negative. (constraining_permissions.vpr@8.12--8.59) [3401]"}
        (forall x_4: Ref ::
        { Heap[x_4, f_7] } { QPMask[x_4, f_7] } { xs[x_4] }
        xs[x_4] && dummyFunction(Heap[x_4, f_7]) ==> wildcard >= NoPerm
      );
    
    // -- check if receiver x is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (constraining_permissions.vpr@8.12--8.59) [3402]"}
        (forall x_4: Ref, x_4_1: Ref ::
        { neverTriggered3(x_4), neverTriggered3(x_4_1) }
        (((x_4 != x_4_1 && xs[x_4]) && xs[x_4_1]) && NoPerm < wildcard) && NoPerm < wildcard ==> x_4 != x_4_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test00 might not hold. There might be insufficient permission to access x.f (constraining_permissions.vpr@8.12--8.59) [3403]"}
        (forall x_4: Ref ::
        { Heap[x_4, f_7] } { QPMask[x_4, f_7] } { xs[x_4] }
        xs[x_4] ==> Mask[x_4, f_7] > NoPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_4: Ref ::
        { Heap[x_4, f_7] } { QPMask[x_4, f_7] } { xs[x_4] }
        xs[x_4] && NoPerm < wildcard ==> qpRange3(x_4) && invRecv3(x_4) == x_4
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        xs[invRecv3(o_4)] && (NoPerm < wildcard && qpRange3(o_4)) ==> invRecv3(o_4) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (xs[invRecv3(o_4)] && (NoPerm < wildcard && qpRange3(o_4)) ==> invRecv3(o_4) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - wildcard) && (!(xs[invRecv3(o_4)] && (NoPerm < wildcard && qpRange3(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(xs: (Set Ref), ys: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, wildcard))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (constraining_permissions.vpr@12.12--12.59) [3404]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && xs[x_1]) && xs[x_1_1]) && NoPerm < wildcard) && NoPerm < wildcard ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { xs[x_1] }
        xs[x_1] ==> qpRange4(x_1) && invRecv4(x_1) == x_1
      );
      assume (forall o_4: Ref ::
        { invRecv4(o_4) }
        xs[invRecv4(o_4)] && qpRange4(o_4) ==> invRecv4(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { xs[x_1] }
        xs[x_1] ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (xs[invRecv4(o_4)] && qpRange4(o_4) ==> invRecv4(o_4) == o_4 && Mask[o_4, f_7] < QPMask[o_4, f_7]) && (!(xs[invRecv4(o_4)] && qpRange4(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in ys) } (x in ys) ==> acc(x.f, wildcard))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (constraining_permissions.vpr@13.12--13.59) [3405]"}
      (forall x_3: Ref, x_3_1: Ref ::
      
      (((x_3 != x_3_1 && ys[x_3]) && ys[x_3_1]) && NoPerm < wildcard) && NoPerm < wildcard ==> x_3 != x_3_1
    );
    
    // -- Define Inverse Function
      assume (forall x_3: Ref ::
        { Heap[x_3, f_7] } { QPMask[x_3, f_7] } { ys[x_3] }
        ys[x_3] ==> qpRange5(x_3) && invRecv5(x_3) == x_3
      );
      assume (forall o_4: Ref ::
        { invRecv5(o_4) }
        ys[invRecv5(o_4)] && qpRange5(o_4) ==> invRecv5(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_3: Ref ::
        { Heap[x_3, f_7] } { QPMask[x_3, f_7] } { ys[x_3] }
        ys[x_3] ==> x_3 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (ys[invRecv5(o_4)] && qpRange5(o_4) ==> invRecv5(o_4) == o_4 && Mask[o_4, f_7] < QPMask[o_4, f_7]) && (!(ys[invRecv5(o_4)] && qpRange5(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
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
    
    // -- Check definedness of (forall x: Ref :: { (x in (xs union ys)) } (x in (xs union ys)) ==> acc(x.f, wildcard))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (constraining_permissions.vpr@14.12--14.70) [3406]"}
      (forall x_5: Ref, x_5_1: Ref ::
      
      (((x_5 != x_5_1 && Set#Union(xs, ys)[x_5]) && Set#Union(xs, ys)[x_5_1]) && NoPerm < wildcard) && NoPerm < wildcard ==> x_5 != x_5_1
    );
    
    // -- Define Inverse Function
      assume (forall x_5: Ref ::
        { PostHeap[x_5, f_7] } { QPMask[x_5, f_7] } { Set#Union(xs, ys)[x_5] }
        Set#Union(xs, ys)[x_5] ==> qpRange6(x_5) && invRecv6(x_5) == x_5
      );
      assume (forall o_4: Ref ::
        { invRecv6(o_4) }
        Set#Union(xs, ys)[invRecv6(o_4)] && qpRange6(o_4) ==> invRecv6(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_5: Ref ::
        { PostHeap[x_5, f_7] } { QPMask[x_5, f_7] } { Set#Union(xs, ys)[x_5] }
        Set#Union(xs, ys)[x_5] ==> x_5 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Set#Union(xs, ys)[invRecv6(o_4)] && qpRange6(o_4) ==> invRecv6(o_4) == o_4 && PostMask[o_4, f_7] < QPMask[o_4, f_7]) && (!(Set#Union(xs, ys)[invRecv6(o_4)] && qpRange6(o_4)) ==> QPMask[o_4, f_7] == PostMask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    // wild card assumptions
    havoc wildcard;
    assert {:msg "  Postcondition of test01 might not hold. There might be insufficient permission to access x.f (constraining_permissions.vpr@14.12--14.70) [3407]"}
      (forall x_6: Ref ::
      
      Set#Union(xs, ys)[x_6] ==> Mask[x_6, f_7] > NoPerm
    );
    assume (forall x_6: Ref ::
      
      Set#Union(xs, ys)[x_6] ==> wildcard < Mask[x_6, f_7]
    );
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of test01 might not hold. Fraction wildcard might be negative. (constraining_permissions.vpr@14.12--14.70) [3408]"}
        (forall x_6: Ref ::
        { Heap[x_6, f_7] } { QPMask[x_6, f_7] } { Set#Union(xs, ys)[x_6] }
        Set#Union(xs, ys)[x_6] && dummyFunction(Heap[x_6, f_7]) ==> wildcard >= NoPerm
      );
    
    // -- check if receiver x is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (constraining_permissions.vpr@14.12--14.70) [3409]"}
        (forall x_6: Ref, x_6_1: Ref ::
        { neverTriggered7(x_6), neverTriggered7(x_6_1) }
        (((x_6 != x_6_1 && Set#Union(xs, ys)[x_6]) && Set#Union(xs, ys)[x_6_1]) && NoPerm < wildcard) && NoPerm < wildcard ==> x_6 != x_6_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test01 might not hold. There might be insufficient permission to access x.f (constraining_permissions.vpr@14.12--14.70) [3410]"}
        (forall x_6: Ref ::
        { Heap[x_6, f_7] } { QPMask[x_6, f_7] } { Set#Union(xs, ys)[x_6] }
        Set#Union(xs, ys)[x_6] ==> Mask[x_6, f_7] > NoPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_6: Ref ::
        { Heap[x_6, f_7] } { QPMask[x_6, f_7] } { Set#Union(xs, ys)[x_6] }
        Set#Union(xs, ys)[x_6] && NoPerm < wildcard ==> qpRange7(x_6) && invRecv7(x_6) == x_6
      );
      assume (forall o_4: Ref ::
        { invRecv7(o_4) }
        Set#Union(xs, ys)[invRecv7(o_4)] && (NoPerm < wildcard && qpRange7(o_4)) ==> invRecv7(o_4) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Set#Union(xs, ys)[invRecv7(o_4)] && (NoPerm < wildcard && qpRange7(o_4)) ==> invRecv7(o_4) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - wildcard) && (!(Set#Union(xs, ys)[invRecv7(o_4)] && (NoPerm < wildcard && qpRange7(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(xs: (Set Ref), y: Ref, z: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var k0: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[y, $allocated];
    assume Heap[z, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, wildcard))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (constraining_permissions.vpr@18.12--18.59) [3411]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && xs[x_1]) && xs[x_1_1]) && NoPerm < wildcard) && NoPerm < wildcard ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { xs[x_1] }
        xs[x_1] ==> qpRange8(x_1) && invRecv8(x_1) == x_1
      );
      assume (forall o_4: Ref ::
        { invRecv8(o_4) }
        xs[invRecv8(o_4)] && qpRange8(o_4) ==> invRecv8(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { xs[x_1] }
        xs[x_1] ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (xs[invRecv8(o_4)] && qpRange8(o_4) ==> invRecv8(o_4) == o_4 && Mask[o_4, f_7] < QPMask[o_4, f_7]) && (!(xs[invRecv8(o_4)] && qpRange8(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume xs[z];
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: if ((y in xs)) -- constraining_permissions.vpr@21.3--23.4
    if (xs[y]) {
      
      // -- Translating statement: exhale acc(y.f, wildcard) -- constraining_permissions.vpr@22.5--22.30
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Exhale might fail. There might be insufficient permission to access y.f (constraining_permissions.vpr@22.12--22.30) [3412]"}
          Mask[y, f_7] > NoPerm;
        havoc wildcard;
        assume wildcard < Mask[y, f_7];
        Mask := Mask[y, f_7:=Mask[y, f_7] - wildcard];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forall x: Ref ::
  //     { (x in (xs setminus Set(y))) }
  //     (x in (xs setminus Set(y))) ==> acc(x.f, wildcard)) -- constraining_permissions.vpr@25.3--25.75
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall x: Ref :: { (x in (xs setminus Set(y))) } (x in (xs setminus Set(y))) ==> acc(x.f, wildcard))
      if (*) {
        assume false;
      }
    havoc QPMask;
    // wild card assumptions
    havoc wildcard;
    assert {:msg "  Exhale might fail. There might be insufficient permission to access x.f (constraining_permissions.vpr@25.10--25.75) [3413]"}
      (forall x_3: Ref ::
      
      Set#Difference(xs, Set#Singleton(y))[x_3] ==> Mask[x_3, f_7] > NoPerm
    );
    assume (forall x_3: Ref ::
      
      Set#Difference(xs, Set#Singleton(y))[x_3] ==> wildcard < Mask[x_3, f_7]
    );
    
    // -- check that the permission amount is positive
      assert {:msg "  Exhale might fail. Fraction wildcard might be negative. (constraining_permissions.vpr@25.10--25.75) [3414]"}
        (forall x_3: Ref ::
        { Heap[x_3, f_7] } { QPMask[x_3, f_7] } { Set#Difference(xs, Set#Singleton(y))[x_3] }
        Set#Difference(xs, Set#Singleton(y))[x_3] && dummyFunction(Heap[x_3, f_7]) ==> wildcard >= NoPerm
      );
    
    // -- check if receiver x is injective
      assert {:msg "  Exhale might fail. Quantified resource x.f might not be injective. (constraining_permissions.vpr@25.10--25.75) [3415]"}
        (forall x_3: Ref, x_3_1: Ref ::
        { neverTriggered9(x_3), neverTriggered9(x_3_1) }
        (((x_3 != x_3_1 && Set#Difference(xs, Set#Singleton(y))[x_3]) && Set#Difference(xs, Set#Singleton(y))[x_3_1]) && NoPerm < wildcard) && NoPerm < wildcard ==> x_3 != x_3_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access x.f (constraining_permissions.vpr@25.10--25.75) [3416]"}
        (forall x_3: Ref ::
        { Heap[x_3, f_7] } { QPMask[x_3, f_7] } { Set#Difference(xs, Set#Singleton(y))[x_3] }
        Set#Difference(xs, Set#Singleton(y))[x_3] ==> Mask[x_3, f_7] > NoPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_3: Ref ::
        { Heap[x_3, f_7] } { QPMask[x_3, f_7] } { Set#Difference(xs, Set#Singleton(y))[x_3] }
        Set#Difference(xs, Set#Singleton(y))[x_3] && NoPerm < wildcard ==> qpRange9(x_3) && invRecv9(x_3) == x_3
      );
      assume (forall o_4: Ref ::
        { invRecv9(o_4) }
        Set#Difference(xs, Set#Singleton(y))[invRecv9(o_4)] && (NoPerm < wildcard && qpRange9(o_4)) ==> invRecv9(o_4) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Set#Difference(xs, Set#Singleton(y))[invRecv9(o_4)] && (NoPerm < wildcard && qpRange9(o_4)) ==> invRecv9(o_4) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - wildcard) && (!(Set#Difference(xs, Set#Singleton(y))[invRecv9(o_4)] && (NoPerm < wildcard && qpRange9(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, wildcard)) -- constraining_permissions.vpr@26.3--26.57
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, wildcard))
      if (*) {
        assume false;
      }
    havoc QPMask;
    // wild card assumptions
    havoc wildcard;
    assert {:msg "  Exhale might fail. There might be insufficient permission to access x.f (constraining_permissions.vpr@26.10--26.57) [3417]"}
      (forall x_5: Ref ::
      
      xs[x_5] ==> Mask[x_5, f_7] > NoPerm
    );
    assume (forall x_5: Ref ::
      
      xs[x_5] ==> wildcard < Mask[x_5, f_7]
    );
    
    // -- check that the permission amount is positive
      assert {:msg "  Exhale might fail. Fraction wildcard might be negative. (constraining_permissions.vpr@26.10--26.57) [3418]"}
        (forall x_5: Ref ::
        { Heap[x_5, f_7] } { QPMask[x_5, f_7] } { xs[x_5] }
        xs[x_5] && dummyFunction(Heap[x_5, f_7]) ==> wildcard >= NoPerm
      );
    
    // -- check if receiver x is injective
      assert {:msg "  Exhale might fail. Quantified resource x.f might not be injective. (constraining_permissions.vpr@26.10--26.57) [3419]"}
        (forall x_5: Ref, x_5_1: Ref ::
        { neverTriggered10(x_5), neverTriggered10(x_5_1) }
        (((x_5 != x_5_1 && xs[x_5]) && xs[x_5_1]) && NoPerm < wildcard) && NoPerm < wildcard ==> x_5 != x_5_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access x.f (constraining_permissions.vpr@26.10--26.57) [3420]"}
        (forall x_5: Ref ::
        { Heap[x_5, f_7] } { QPMask[x_5, f_7] } { xs[x_5] }
        xs[x_5] ==> Mask[x_5, f_7] > NoPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_5: Ref ::
        { Heap[x_5, f_7] } { QPMask[x_5, f_7] } { xs[x_5] }
        xs[x_5] && NoPerm < wildcard ==> qpRange10(x_5) && invRecv10(x_5) == x_5
      );
      assume (forall o_4: Ref ::
        { invRecv10(o_4) }
        xs[invRecv10(o_4)] && (NoPerm < wildcard && qpRange10(o_4)) ==> invRecv10(o_4) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (xs[invRecv10(o_4)] && (NoPerm < wildcard && qpRange10(o_4)) ==> invRecv10(o_4) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - wildcard) && (!(xs[invRecv10(o_4)] && (NoPerm < wildcard && qpRange10(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale k0 >= none -- constraining_permissions.vpr@29.10--29.20
    assume NoPerm <= k0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, k0)) -- constraining_permissions.vpr@31.3--31.51
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, k0))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Exhale might fail. Fraction k0 might be negative. (constraining_permissions.vpr@31.10--31.51) [3421]"}
        (forall x_7: Ref ::
        { Heap[x_7, f_7] } { QPMask[x_7, f_7] } { xs[x_7] }
        xs[x_7] && dummyFunction(Heap[x_7, f_7]) ==> k0 >= NoPerm
      );
    
    // -- check if receiver x is injective
      assert {:msg "  Exhale might fail. Quantified resource x.f might not be injective. (constraining_permissions.vpr@31.10--31.51) [3422]"}
        (forall x_7: Ref, x_7_1: Ref ::
        { neverTriggered11(x_7), neverTriggered11(x_7_1) }
        (((x_7 != x_7_1 && xs[x_7]) && xs[x_7_1]) && NoPerm < k0) && NoPerm < k0 ==> x_7 != x_7_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access x.f (constraining_permissions.vpr@31.10--31.51) [3423]"}
        (forall x_7: Ref ::
        { Heap[x_7, f_7] } { QPMask[x_7, f_7] } { xs[x_7] }
        xs[x_7] ==> Mask[x_7, f_7] >= k0
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_7: Ref ::
        { Heap[x_7, f_7] } { QPMask[x_7, f_7] } { xs[x_7] }
        xs[x_7] && NoPerm < k0 ==> qpRange11(x_7) && invRecv11(x_7) == x_7
      );
      assume (forall o_4: Ref ::
        { invRecv11(o_4) }
        xs[invRecv11(o_4)] && (NoPerm < k0 && qpRange11(o_4)) ==> invRecv11(o_4) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (xs[invRecv11(o_4)] && (NoPerm < k0 && qpRange11(o_4)) ==> invRecv11(o_4) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - k0) && (!(xs[invRecv11(o_4)] && (NoPerm < k0 && qpRange11(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}