// 
// Translation of Viper program.
// 
// Date:         2024-12-29 15:10:54
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/issues/issue_0078.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/issues/issue_0078-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_22: Ref, f_30: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_22, f_30] }
  Heap[o_22, $allocated] ==> Heap[Heap[o_22, f_30], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_41: Ref, f_27: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_41, f_27] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_41, f_27) ==> Heap[o_41, f_27] == ExhaleHeap[o_41, f_27]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_28: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_28), ExhaleHeap[null, PredicateMaskField(pm_f_28)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_28) && IsPredicateField(pm_f_28) ==> Heap[null, PredicateMaskField(pm_f_28)] == ExhaleHeap[null, PredicateMaskField(pm_f_28)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_28: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_28) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_28) && IsPredicateField(pm_f_28) ==> (forall <A, B> o2_28: Ref, f_27: (Field A B) ::
    { ExhaleHeap[o2_28, f_27] }
    Heap[null, PredicateMaskField(pm_f_28)][o2_28, f_27] ==> Heap[o2_28, f_27] == ExhaleHeap[o2_28, f_27]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_28: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_28), ExhaleHeap[null, WandMaskField(pm_f_28)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_28) && IsWandField(pm_f_28) ==> Heap[null, WandMaskField(pm_f_28)] == ExhaleHeap[null, WandMaskField(pm_f_28)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_28: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_28) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_28) && IsWandField(pm_f_28) ==> (forall <A, B> o2_28: Ref, f_27: (Field A B) ::
    { ExhaleHeap[o2_28, f_27] }
    Heap[null, WandMaskField(pm_f_28)][o2_28, f_27] ==> Heap[o2_28, f_27] == ExhaleHeap[o2_28, f_27]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_41: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_41, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_41, $allocated] ==> ExhaleHeap[o_41, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_22: Ref, f_12: (Field A B), v: B ::
  { Heap[o_22, f_12:=v] }
  succHeap(Heap, Heap[o_22, f_12:=v])
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

function  neverTriggered1(q_2_2: Ref): bool;
function  neverTriggered2(x_2_2: Ref): bool;
function  neverTriggered3(x_1: Ref): bool;
function  neverTriggered4(x_3: Ref): bool;
function  neverTriggered5(x_1: Ref): bool;
function  neverTriggered6(x_3: Ref): bool;
function  neverTriggered7(q_1: Ref): bool;
function  neverTriggered8(x$0: Ref): bool;
function  neverTriggered9(q_1: Ref): bool;
function  neverTriggered10(x$0: Ref): bool;
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

const unique p_14: Field NormalField Ref;
axiom !IsPredicateField(p_14);
axiom !IsWandField(p_14);
const unique s_4: Field NormalField (Set Ref);
axiom !IsPredicateField(s_4);
axiom !IsWandField(s_4);
const unique left: Field NormalField Ref;
axiom !IsPredicateField(left);
axiom !IsWandField(left);
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
  (Heap2Heap[this, all][sk_inv#condqp1(inv#condqp1(Heap2Heap, this), inv#condqp1(Heap1Heap, this))] && NoPerm < 1 / 2 <==> Heap1Heap[this, all][sk_inv#condqp1(inv#condqp1(Heap2Heap, this), inv#condqp1(Heap1Heap, this))] && NoPerm < 1 / 2) && (Heap2Heap[this, all][sk_inv#condqp1(inv#condqp1(Heap2Heap, this), inv#condqp1(Heap1Heap, this))] && NoPerm < 1 / 2 ==> Heap2Heap[sk_inv#condqp1(inv#condqp1(Heap2Heap, this), inv#condqp1(Heap1Heap, this)), left] == Heap1Heap[sk_inv#condqp1(inv#condqp1(Heap2Heap, this), inv#condqp1(Heap1Heap, this)), left]) ==> inv#condqp1(Heap2Heap, this) == inv#condqp1(Heap1Heap, this)
);

// ==================================================
// Function used for framing of quantified permission (forall x: Ref :: { (x in this.all) } (x in this.all) && x.left == null ==> acc(x.left, 1 / 2)) in predicate inv
// ==================================================

function  inv#condqp2(Heap: HeapType, this_1_1: Ref): int;
function  sk_inv#condqp2(fnAppH1_1: int, fnAppH2_1: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, this: Ref ::
  { inv#condqp2(Heap2Heap, this), inv#condqp2(Heap1Heap, this), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((Heap2Heap[this, all][sk_inv#condqp2(inv#condqp2(Heap2Heap, this), inv#condqp2(Heap1Heap, this))] && Heap2Heap[sk_inv#condqp2(inv#condqp2(Heap2Heap, this), inv#condqp2(Heap1Heap, this)), left] == null) && NoPerm < 1 / 2 <==> (Heap1Heap[this, all][sk_inv#condqp2(inv#condqp2(Heap2Heap, this), inv#condqp2(Heap1Heap, this))] && Heap1Heap[sk_inv#condqp2(inv#condqp2(Heap2Heap, this), inv#condqp2(Heap1Heap, this)), left] == null) && NoPerm < 1 / 2) && ((Heap2Heap[this, all][sk_inv#condqp2(inv#condqp2(Heap2Heap, this), inv#condqp2(Heap1Heap, this))] && Heap2Heap[sk_inv#condqp2(inv#condqp2(Heap2Heap, this), inv#condqp2(Heap1Heap, this)), left] == null) && NoPerm < 1 / 2 ==> Heap2Heap[sk_inv#condqp2(inv#condqp2(Heap2Heap, this), inv#condqp2(Heap1Heap, this)), left] == Heap1Heap[sk_inv#condqp2(inv#condqp2(Heap2Heap, this), inv#condqp2(Heap1Heap, this)), left]) ==> inv#condqp2(Heap2Heap, this) == inv#condqp2(Heap1Heap, this)
);

procedure inv#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var QPMask: MaskType;
  var x_10: Ref;
  
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
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.all (issue_0078.vpr@37.1--41.2) [76700]"}
          HasDirectPerm(Mask, this, all);
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Predicate might not be well-formed. Quantified resource q.left might not be injective. (issue_0078.vpr@37.1--41.2) [76701]"}
      (forall q_2_2: Ref, q_2_3: Ref ::
      
      (((q_2_2 != q_2_3 && Heap[this, all][q_2_2]) && Heap[this, all][q_2_3]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> q_2_2 != q_2_3
    );
    
    // -- Define Inverse Function
      assume (forall q_2_2: Ref ::
        { Heap[q_2_2, left] } { QPMask[q_2_2, left] } { Heap[this, all][q_2_2] }
        Heap[this, all][q_2_2] && NoPerm < 1 / 2 ==> qpRange1(q_2_2) && invRecv1(q_2_2) == q_2_2
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        (Heap[this, all][invRecv1(o_4)] && NoPerm < 1 / 2) && qpRange1(o_4) ==> invRecv1(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (issue_0078.vpr@37.1--41.2) [76702]"}
      (forall q_2_2: Ref ::
      { Heap[q_2_2, left] } { QPMask[q_2_2, left] } { Heap[this, all][q_2_2] }
      Heap[this, all][q_2_2] ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall q_2_2: Ref ::
        { Heap[q_2_2, left] } { QPMask[q_2_2, left] } { Heap[this, all][q_2_2] }
        Heap[this, all][q_2_2] && 1 / 2 > NoPerm ==> q_2_2 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, left] }
        ((Heap[this, all][invRecv1(o_4)] && NoPerm < 1 / 2) && qpRange1(o_4) ==> (NoPerm < 1 / 2 ==> invRecv1(o_4) == o_4) && QPMask[o_4, left] == Mask[o_4, left] + 1 / 2) && (!((Heap[this, all][invRecv1(o_4)] && NoPerm < 1 / 2) && qpRange1(o_4)) ==> QPMask[o_4, left] == Mask[o_4, left])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != left ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in this.all) } (x in this.all) && x.left == null ==> acc(x.left, 1 / 2))
      if (*) {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.all (issue_0078.vpr@37.1--41.2) [76703]"}
          HasDirectPerm(Mask, this, all);
        if (Heap[this, all][x_10]) {
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.left (issue_0078.vpr@37.1--41.2) [76704]"}
            HasDirectPerm(Mask, x_10, left);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Predicate might not be well-formed. Quantified resource x.left might not be injective. (issue_0078.vpr@37.1--41.2) [76705]"}
      (forall x_2_2: Ref, x_2_3: Ref ::
      
      (((x_2_2 != x_2_3 && (Heap[this, all][x_2_2] && Heap[x_2_2, left] == null)) && (Heap[this, all][x_2_3] && Heap[x_2_3, left] == null)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> x_2_2 != x_2_3
    );
    
    // -- Define Inverse Function
      assume (forall x_2_2: Ref ::
        { Heap[x_2_2, left] } { QPMask[x_2_2, left] } { Heap[this, all][x_2_2] }
        (Heap[this, all][x_2_2] && Heap[x_2_2, left] == null) && NoPerm < 1 / 2 ==> qpRange2(x_2_2) && invRecv2(x_2_2) == x_2_2
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        ((Heap[this, all][invRecv2(o_4)] && Heap[invRecv2(o_4), left] == null) && NoPerm < 1 / 2) && qpRange2(o_4) ==> invRecv2(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (issue_0078.vpr@37.1--41.2) [76706]"}
      (forall x_2_2: Ref ::
      { Heap[x_2_2, left] } { QPMask[x_2_2, left] } { Heap[this, all][x_2_2] }
      Heap[this, all][x_2_2] && Heap[x_2_2, left] == null ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall x_2_2: Ref ::
        { Heap[x_2_2, left] } { QPMask[x_2_2, left] } { Heap[this, all][x_2_2] }
        (Heap[this, all][x_2_2] && Heap[x_2_2, left] == null) && 1 / 2 > NoPerm ==> x_2_2 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, left] }
        (((Heap[this, all][invRecv2(o_4)] && Heap[invRecv2(o_4), left] == null) && NoPerm < 1 / 2) && qpRange2(o_4) ==> (NoPerm < 1 / 2 ==> invRecv2(o_4) == o_4) && QPMask[o_4, left] == Mask[o_4, left] + 1 / 2) && (!(((Heap[this, all][invRecv2(o_4)] && Heap[invRecv2(o_4), left] == null) && NoPerm < 1 / 2) && qpRange2(o_4)) ==> QPMask[o_4, left] == Mask[o_4, left])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != left ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method Dmm
// ==================================================

procedure Dmm(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var QPMask: MaskType;
  var x_11: Ref;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, p_14:=Mask[this, p_14] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, s_4:=Mask[this, s_4] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of this.s == Set(this)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.s (issue_0078.vpr@14.12--14.31) [76707]"}
        HasDirectPerm(Mask, this, s_4);
    assume Set#Equal(Heap[this, s_4], Set#Singleton(this));
    assume state(Heap, Mask);
    
    // -- Check definedness of this.p == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.p (issue_0078.vpr@15.12--15.26) [76708]"}
        HasDirectPerm(Mask, this, p_14);
    assume Heap[this, p_14] == null;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: exhale acc(this.s, write) &&
  //   ((forall x: Ref :: { (x in this.s) } (x in this.s) ==> acc(x.p, 1 / 2)) &&
  //   (forall x: Ref ::
  //     { (x in this.s) }
  //     (x in this.s) && x.p == null ==> acc(x.p, 1 / 2))) -- issue_0078.vpr@17.3--19.76
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access this.s (issue_0078.vpr@17.13--19.76) [76710]"}
        perm <= Mask[this, s_4];
    }
    Mask := Mask[this, s_4:=Mask[this, s_4] - perm];
    
    // -- Check definedness of (forall x: Ref :: { (x in this.s) } (x in this.s) ==> acc(x.p, 1 / 2))
      if (*) {
        assert {:msg "  Exhale might fail. There might be insufficient permission to access this.s (issue_0078.vpr@17.13--19.76) [76711]"}
          HasDirectPerm(ExhaleWellDef0Mask, this, s_4);
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Exhale might fail. Fraction 1 / 2 might be negative. (issue_0078.vpr@17.13--19.76) [76712]"}
        (forall x_1: Ref ::
        { Heap[x_1, p_14] } { QPMask[x_1, p_14] } { Heap[this, s_4][x_1] }
        Heap[this, s_4][x_1] && dummyFunction(Heap[x_1, p_14]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver x is injective
      assert {:msg "  Exhale might fail. Quantified resource x.p might not be injective. (issue_0078.vpr@17.13--19.76) [76713]"}
        (forall x_1: Ref, x_1_1: Ref ::
        { neverTriggered3(x_1), neverTriggered3(x_1_1) }
        (((x_1 != x_1_1 && Heap[this, s_4][x_1]) && Heap[this, s_4][x_1_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> x_1 != x_1_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access x.p (issue_0078.vpr@17.13--19.76) [76714]"}
        (forall x_1: Ref ::
        { Heap[x_1, p_14] } { QPMask[x_1, p_14] } { Heap[this, s_4][x_1] }
        Heap[this, s_4][x_1] ==> Mask[x_1, p_14] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_1: Ref ::
        { Heap[x_1, p_14] } { QPMask[x_1, p_14] } { Heap[this, s_4][x_1] }
        Heap[this, s_4][x_1] && NoPerm < 1 / 2 ==> qpRange3(x_1) && invRecv3(x_1) == x_1
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        Heap[this, s_4][invRecv3(o_4)] && (NoPerm < 1 / 2 && qpRange3(o_4)) ==> invRecv3(o_4) == o_4
      );
    
    // -- assume permission updates for field p
      assume (forall o_4: Ref ::
        { QPMask[o_4, p_14] }
        (Heap[this, s_4][invRecv3(o_4)] && (NoPerm < 1 / 2 && qpRange3(o_4)) ==> invRecv3(o_4) == o_4 && QPMask[o_4, p_14] == Mask[o_4, p_14] - 1 / 2) && (!(Heap[this, s_4][invRecv3(o_4)] && (NoPerm < 1 / 2 && qpRange3(o_4))) ==> QPMask[o_4, p_14] == Mask[o_4, p_14])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != p_14 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    
    // -- Check definedness of (forall x: Ref :: { (x in this.s) } (x in this.s) && x.p == null ==> acc(x.p, 1 / 2))
      if (*) {
        assert {:msg "  Exhale might fail. There might be insufficient permission to access this.s (issue_0078.vpr@17.13--19.76) [76715]"}
          HasDirectPerm(ExhaleWellDef0Mask, this, s_4);
        if (Heap[this, s_4][x_11]) {
          assert {:msg "  Exhale might fail. There might be insufficient permission to access x.p (issue_0078.vpr@17.13--19.76) [76716]"}
            HasDirectPerm(ExhaleWellDef0Mask, x_11, p_14);
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Exhale might fail. Fraction 1 / 2 might be negative. (issue_0078.vpr@17.13--19.76) [76717]"}
        (forall x_3: Ref ::
        { Heap[x_3, p_14] } { QPMask[x_3, p_14] } { Heap[this, s_4][x_3] }
        (Heap[this, s_4][x_3] && Heap[x_3, p_14] == null) && dummyFunction(Heap[x_3, p_14]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver x is injective
      assert {:msg "  Exhale might fail. Quantified resource x.p might not be injective. (issue_0078.vpr@17.13--19.76) [76718]"}
        (forall x_3: Ref, x_3_1: Ref ::
        { neverTriggered4(x_3), neverTriggered4(x_3_1) }
        (((x_3 != x_3_1 && (Heap[this, s_4][x_3] && Heap[x_3, p_14] == null)) && (Heap[this, s_4][x_3_1] && Heap[x_3_1, p_14] == null)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> x_3 != x_3_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access x.p (issue_0078.vpr@17.13--19.76) [76719]"}
        (forall x_3: Ref ::
        { Heap[x_3, p_14] } { QPMask[x_3, p_14] } { Heap[this, s_4][x_3] }
        Heap[this, s_4][x_3] && Heap[x_3, p_14] == null ==> Mask[x_3, p_14] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_3: Ref ::
        { Heap[x_3, p_14] } { QPMask[x_3, p_14] } { Heap[this, s_4][x_3] }
        (Heap[this, s_4][x_3] && Heap[x_3, p_14] == null) && NoPerm < 1 / 2 ==> qpRange4(x_3) && invRecv4(x_3) == x_3
      );
      assume (forall o_4: Ref ::
        { invRecv4(o_4) }
        (Heap[this, s_4][invRecv4(o_4)] && Heap[invRecv4(o_4), p_14] == null) && (NoPerm < 1 / 2 && qpRange4(o_4)) ==> invRecv4(o_4) == o_4
      );
    
    // -- assume permission updates for field p
      assume (forall o_4: Ref ::
        { QPMask[o_4, p_14] }
        ((Heap[this, s_4][invRecv4(o_4)] && Heap[invRecv4(o_4), p_14] == null) && (NoPerm < 1 / 2 && qpRange4(o_4)) ==> invRecv4(o_4) == o_4 && QPMask[o_4, p_14] == Mask[o_4, p_14] - 1 / 2) && (!((Heap[this, s_4][invRecv4(o_4)] && Heap[invRecv4(o_4), p_14] == null) && (NoPerm < 1 / 2 && qpRange4(o_4))) ==> QPMask[o_4, p_14] == Mask[o_4, p_14])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != p_14 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method Dmm2
// ==================================================

procedure Dmm2(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var QPMask: MaskType;
  var x_32: Ref;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, p_14:=Mask[this, p_14] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, s_4:=Mask[this, s_4] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (this in this.s)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.s (issue_0078.vpr@24.12--24.26) [76720]"}
        HasDirectPerm(Mask, this, s_4);
    assume Heap[this, s_4][this];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.p == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.p (issue_0078.vpr@25.12--25.26) [76721]"}
        HasDirectPerm(Mask, this, p_14);
    assume Heap[this, p_14] == null;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: exhale acc(this.s, write) &&
  //   ((forall x: Ref :: { (x in this.s) } (x in this.s) ==> acc(x.p, 1 / 2)) &&
  //   (forall x: Ref ::
  //     { (x in this.s) }
  //     (x in this.s) && x.p == null ==> acc(x.p, 1 / 2))) -- issue_0078.vpr@28.3--31.76
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access this.s (issue_0078.vpr@28.13--31.76) [76723]"}
        perm <= Mask[this, s_4];
    }
    Mask := Mask[this, s_4:=Mask[this, s_4] - perm];
    
    // -- Check definedness of (forall x: Ref :: { (x in this.s) } (x in this.s) ==> acc(x.p, 1 / 2))
      if (*) {
        assert {:msg "  Exhale might fail. There might be insufficient permission to access this.s (issue_0078.vpr@28.13--31.76) [76724]"}
          HasDirectPerm(ExhaleWellDef0Mask, this, s_4);
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Exhale might fail. Fraction 1 / 2 might be negative. (issue_0078.vpr@28.13--31.76) [76725]"}
        (forall x_1: Ref ::
        { Heap[x_1, p_14] } { QPMask[x_1, p_14] } { Heap[this, s_4][x_1] }
        Heap[this, s_4][x_1] && dummyFunction(Heap[x_1, p_14]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver x is injective
      assert {:msg "  Exhale might fail. Quantified resource x.p might not be injective. (issue_0078.vpr@28.13--31.76) [76726]"}
        (forall x_1: Ref, x_1_1: Ref ::
        { neverTriggered5(x_1), neverTriggered5(x_1_1) }
        (((x_1 != x_1_1 && Heap[this, s_4][x_1]) && Heap[this, s_4][x_1_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> x_1 != x_1_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access x.p (issue_0078.vpr@28.13--31.76) [76727]"}
        (forall x_1: Ref ::
        { Heap[x_1, p_14] } { QPMask[x_1, p_14] } { Heap[this, s_4][x_1] }
        Heap[this, s_4][x_1] ==> Mask[x_1, p_14] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_1: Ref ::
        { Heap[x_1, p_14] } { QPMask[x_1, p_14] } { Heap[this, s_4][x_1] }
        Heap[this, s_4][x_1] && NoPerm < 1 / 2 ==> qpRange5(x_1) && invRecv5(x_1) == x_1
      );
      assume (forall o_4: Ref ::
        { invRecv5(o_4) }
        Heap[this, s_4][invRecv5(o_4)] && (NoPerm < 1 / 2 && qpRange5(o_4)) ==> invRecv5(o_4) == o_4
      );
    
    // -- assume permission updates for field p
      assume (forall o_4: Ref ::
        { QPMask[o_4, p_14] }
        (Heap[this, s_4][invRecv5(o_4)] && (NoPerm < 1 / 2 && qpRange5(o_4)) ==> invRecv5(o_4) == o_4 && QPMask[o_4, p_14] == Mask[o_4, p_14] - 1 / 2) && (!(Heap[this, s_4][invRecv5(o_4)] && (NoPerm < 1 / 2 && qpRange5(o_4))) ==> QPMask[o_4, p_14] == Mask[o_4, p_14])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != p_14 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    
    // -- Check definedness of (forall x: Ref :: { (x in this.s) } (x in this.s) && x.p == null ==> acc(x.p, 1 / 2))
      if (*) {
        assert {:msg "  Exhale might fail. There might be insufficient permission to access this.s (issue_0078.vpr@28.13--31.76) [76728]"}
          HasDirectPerm(ExhaleWellDef0Mask, this, s_4);
        if (Heap[this, s_4][x_32]) {
          assert {:msg "  Exhale might fail. There might be insufficient permission to access x.p (issue_0078.vpr@28.13--31.76) [76729]"}
            HasDirectPerm(ExhaleWellDef0Mask, x_32, p_14);
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Exhale might fail. Fraction 1 / 2 might be negative. (issue_0078.vpr@28.13--31.76) [76730]"}
        (forall x_3: Ref ::
        { Heap[x_3, p_14] } { QPMask[x_3, p_14] } { Heap[this, s_4][x_3] }
        (Heap[this, s_4][x_3] && Heap[x_3, p_14] == null) && dummyFunction(Heap[x_3, p_14]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver x is injective
      assert {:msg "  Exhale might fail. Quantified resource x.p might not be injective. (issue_0078.vpr@28.13--31.76) [76731]"}
        (forall x_3: Ref, x_3_1: Ref ::
        { neverTriggered6(x_3), neverTriggered6(x_3_1) }
        (((x_3 != x_3_1 && (Heap[this, s_4][x_3] && Heap[x_3, p_14] == null)) && (Heap[this, s_4][x_3_1] && Heap[x_3_1, p_14] == null)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> x_3 != x_3_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access x.p (issue_0078.vpr@28.13--31.76) [76732]"}
        (forall x_3: Ref ::
        { Heap[x_3, p_14] } { QPMask[x_3, p_14] } { Heap[this, s_4][x_3] }
        Heap[this, s_4][x_3] && Heap[x_3, p_14] == null ==> Mask[x_3, p_14] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_3: Ref ::
        { Heap[x_3, p_14] } { QPMask[x_3, p_14] } { Heap[this, s_4][x_3] }
        (Heap[this, s_4][x_3] && Heap[x_3, p_14] == null) && NoPerm < 1 / 2 ==> qpRange6(x_3) && invRecv6(x_3) == x_3
      );
      assume (forall o_4: Ref ::
        { invRecv6(o_4) }
        (Heap[this, s_4][invRecv6(o_4)] && Heap[invRecv6(o_4), p_14] == null) && (NoPerm < 1 / 2 && qpRange6(o_4)) ==> invRecv6(o_4) == o_4
      );
    
    // -- assume permission updates for field p
      assume (forall o_4: Ref ::
        { QPMask[o_4, p_14] }
        ((Heap[this, s_4][invRecv6(o_4)] && Heap[invRecv6(o_4), p_14] == null) && (NoPerm < 1 / 2 && qpRange6(o_4)) ==> invRecv6(o_4) == o_4 && QPMask[o_4, p_14] == Mask[o_4, p_14] - 1 / 2) && (!((Heap[this, s_4][invRecv6(o_4)] && Heap[invRecv6(o_4), p_14] == null) && (NoPerm < 1 / 2 && qpRange6(o_4))) ==> QPMask[o_4, p_14] == Mask[o_4, p_14])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != p_14 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method foo
// ==================================================

procedure foo_1() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var x: Ref;
  var t_2: Ref;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var QPMask: MaskType;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[x, $allocated];
    assume Heap[t_2, $allocated];
  
  // -- Translating statement: inhale acc(x.left, write) && x.left == null -- issue_0078.vpr@47.3--47.39
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, left:=Mask[x, left] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of x.left == null
      assert {:msg "  Inhale might fail. There might be insufficient permission to access x.left (issue_0078.vpr@47.10--47.39) [76734]"}
        HasDirectPerm(Mask, x, left);
    assume Heap[x, left] == null;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(t.all, write) && t.all == Set(x) -- issue_0078.vpr@48.3--48.39
    perm := FullPerm;
    assume t_2 != null;
    Mask := Mask[t_2, all:=Mask[t_2, all] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of t.all == Set(x)
      assert {:msg "  Inhale might fail. There might be insufficient permission to access t.all (issue_0078.vpr@48.10--48.39) [76736]"}
        HasDirectPerm(Mask, t_2, all);
    assume Set#Equal(Heap[t_2, all], Set#Singleton(x));
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(inv(t), write) -- issue_0078.vpr@50.3--50.19
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding inv(t) might fail. There might be insufficient permission to access t.all (issue_0078.vpr@50.3--50.19) [76739]"}
        perm <= Mask[t_2, all];
    }
    Mask := Mask[t_2, all:=Mask[t_2, all] - perm];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Folding inv(t) might fail. Fraction 1 / 2 might be negative. (issue_0078.vpr@50.3--50.19) [76740]"}
        (forall q_1: Ref ::
        { Heap[q_1, left] } { QPMask[q_1, left] } { Heap[t_2, all][q_1] }
        Heap[t_2, all][q_1] && dummyFunction(Heap[q_1, left]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver q is injective
      assert {:msg "  Folding inv(t) might fail. Quantified resource q.left might not be injective. (issue_0078.vpr@50.3--50.19) [76741]"}
        (forall q_1: Ref, q_17: Ref ::
        { neverTriggered7(q_1), neverTriggered7(q_17) }
        (((q_1 != q_17 && Heap[t_2, all][q_1]) && Heap[t_2, all][q_17]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> q_1 != q_17
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding inv(t) might fail. There might be insufficient permission to access q.left (issue_0078.vpr@50.3--50.19) [76742]"}
        (forall q_1: Ref ::
        { Heap[q_1, left] } { QPMask[q_1, left] } { Heap[t_2, all][q_1] }
        Heap[t_2, all][q_1] ==> Mask[q_1, left] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver q
      assume (forall q_1: Ref ::
        { Heap[q_1, left] } { QPMask[q_1, left] } { Heap[t_2, all][q_1] }
        Heap[t_2, all][q_1] && NoPerm < 1 / 2 ==> qpRange7(q_1) && invRecv7(q_1) == q_1
      );
      assume (forall o_4: Ref ::
        { invRecv7(o_4) }
        Heap[t_2, all][invRecv7(o_4)] && (NoPerm < 1 / 2 && qpRange7(o_4)) ==> invRecv7(o_4) == o_4
      );
    
    // -- assume permission updates for field left
      assume (forall o_4: Ref ::
        { QPMask[o_4, left] }
        (Heap[t_2, all][invRecv7(o_4)] && (NoPerm < 1 / 2 && qpRange7(o_4)) ==> invRecv7(o_4) == o_4 && QPMask[o_4, left] == Mask[o_4, left] - 1 / 2) && (!(Heap[t_2, all][invRecv7(o_4)] && (NoPerm < 1 / 2 && qpRange7(o_4))) ==> QPMask[o_4, left] == Mask[o_4, left])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != left ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Folding inv(t) might fail. Fraction 1 / 2 might be negative. (issue_0078.vpr@50.3--50.19) [76743]"}
        (forall x$0: Ref ::
        { Heap[x$0, left] } { QPMask[x$0, left] } { Heap[t_2, all][x$0] }
        (Heap[t_2, all][x$0] && Heap[x$0, left] == null) && dummyFunction(Heap[x$0, left]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver x$0 is injective
      assert {:msg "  Folding inv(t) might fail. Quantified resource x$0.left might not be injective. (issue_0078.vpr@50.3--50.19) [76744]"}
        (forall x$0: Ref, x$0_3: Ref ::
        { neverTriggered8(x$0), neverTriggered8(x$0_3) }
        (((x$0 != x$0_3 && (Heap[t_2, all][x$0] && Heap[x$0, left] == null)) && (Heap[t_2, all][x$0_3] && Heap[x$0_3, left] == null)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> x$0 != x$0_3
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding inv(t) might fail. There might be insufficient permission to access x$0.left (issue_0078.vpr@50.3--50.19) [76745]"}
        (forall x$0: Ref ::
        { Heap[x$0, left] } { QPMask[x$0, left] } { Heap[t_2, all][x$0] }
        Heap[t_2, all][x$0] && Heap[x$0, left] == null ==> Mask[x$0, left] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver x$0
      assume (forall x$0: Ref ::
        { Heap[x$0, left] } { QPMask[x$0, left] } { Heap[t_2, all][x$0] }
        (Heap[t_2, all][x$0] && Heap[x$0, left] == null) && NoPerm < 1 / 2 ==> qpRange8(x$0) && invRecv8(x$0) == x$0
      );
      assume (forall o_4: Ref ::
        { invRecv8(o_4) }
        (Heap[t_2, all][invRecv8(o_4)] && Heap[invRecv8(o_4), left] == null) && (NoPerm < 1 / 2 && qpRange8(o_4)) ==> invRecv8(o_4) == o_4
      );
    
    // -- assume permission updates for field left
      assume (forall o_4: Ref ::
        { QPMask[o_4, left] }
        ((Heap[t_2, all][invRecv8(o_4)] && Heap[invRecv8(o_4), left] == null) && (NoPerm < 1 / 2 && qpRange8(o_4)) ==> invRecv8(o_4) == o_4 && QPMask[o_4, left] == Mask[o_4, left] - 1 / 2) && (!((Heap[t_2, all][invRecv8(o_4)] && Heap[invRecv8(o_4), left] == null) && (NoPerm < 1 / 2 && qpRange8(o_4))) ==> QPMask[o_4, left] == Mask[o_4, left])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != left ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    perm := FullPerm;
    Mask := Mask[null, inv(t_2):=Mask[null, inv(t_2)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume inv#trigger(Heap, inv(t_2));
    assume Heap[null, inv(t_2)] == CombineFrames(FrameFragment(Heap[t_2, all]), CombineFrames(FrameFragment(inv#condqp1(Heap, t_2)), FrameFragment(inv#condqp2(Heap, t_2))));
    if (!HasDirectPerm(Mask, null, inv(t_2))) {
      Heap := Heap[null, inv#sm(t_2):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, inv(t_2):=freshVersion];
    }
    Heap := Heap[null, inv#sm(t_2):=Heap[null, inv#sm(t_2)][t_2, all:=true]];
    // register all known folded permissions guarded by predicate inv
    havoc newPMask;
    assume (forall <A, B> o_53: Ref, f_56: (Field A B) ::
      { newPMask[o_53, f_56] }
      Heap[null, inv#sm(t_2)][o_53, f_56] ==> newPMask[o_53, f_56]
    );
    assume (forall q_1_1: Ref ::
      
      Heap[t_2, all][q_1_1] ==> newPMask[q_1_1, left]
    );
    Heap := Heap[null, inv#sm(t_2):=newPMask];
    // register all known folded permissions guarded by predicate inv
    havoc newPMask;
    assume (forall <A, B> o_26: Ref, f_29: (Field A B) ::
      { newPMask[o_26, f_29] }
      Heap[null, inv#sm(t_2)][o_26, f_29] ==> newPMask[o_26, f_29]
    );
    assume (forall x$0_1: Ref ::
      
      Heap[t_2, all][x$0_1] && Heap[x$0_1, left] == null ==> newPMask[x$0_1, left]
    );
    Heap := Heap[null, inv#sm(t_2):=newPMask];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method goo
// ==================================================

procedure goo() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var x: Ref;
  var t_2: Ref;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newVersion: FrameType;
  var QPMask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[x, $allocated];
    assume Heap[t_2, $allocated];
  
  // -- Translating statement: inhale acc(inv(t), write) -- issue_0078.vpr@57.3--57.21
    perm := FullPerm;
    Mask := Mask[null, inv(t_2):=Mask[null, inv(t_2)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(inv(t), write) -- issue_0078.vpr@58.3--58.21
    assume inv#trigger(Heap, inv(t_2));
    assume Heap[null, inv(t_2)] == CombineFrames(FrameFragment(Heap[t_2, all]), CombineFrames(FrameFragment(inv#condqp1(Heap, t_2)), FrameFragment(inv#condqp2(Heap, t_2))));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding inv(t) might fail. There might be insufficient permission to access inv(t) (issue_0078.vpr@58.3--58.21) [76750]"}
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
    assert {:msg "  Unfolding inv(t) might fail. Quantified resource q.left might not be injective. (issue_0078.vpr@58.3--58.21) [76752]"}
      (forall q_1: Ref, q_17: Ref ::
      
      (((q_1 != q_17 && Heap[t_2, all][q_1]) && Heap[t_2, all][q_17]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> q_1 != q_17
    );
    
    // -- Define Inverse Function
      assume (forall q_1: Ref ::
        { Heap[q_1, left] } { QPMask[q_1, left] } { Heap[t_2, all][q_1] }
        Heap[t_2, all][q_1] && NoPerm < 1 / 2 ==> qpRange9(q_1) && invRecv9(q_1) == q_1
      );
      assume (forall o_4: Ref ::
        { invRecv9(o_4) }
        (Heap[t_2, all][invRecv9(o_4)] && NoPerm < 1 / 2) && qpRange9(o_4) ==> invRecv9(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Unfolding inv(t) might fail. Fraction 1 / 2 might be negative. (issue_0078.vpr@58.3--58.21) [76753]"}
      (forall q_1: Ref ::
      { Heap[q_1, left] } { QPMask[q_1, left] } { Heap[t_2, all][q_1] }
      Heap[t_2, all][q_1] ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall q_1: Ref ::
        { Heap[q_1, left] } { QPMask[q_1, left] } { Heap[t_2, all][q_1] }
        Heap[t_2, all][q_1] && 1 / 2 > NoPerm ==> q_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, left] }
        ((Heap[t_2, all][invRecv9(o_4)] && NoPerm < 1 / 2) && qpRange9(o_4) ==> (NoPerm < 1 / 2 ==> invRecv9(o_4) == o_4) && QPMask[o_4, left] == Mask[o_4, left] + 1 / 2) && (!((Heap[t_2, all][invRecv9(o_4)] && NoPerm < 1 / 2) && qpRange9(o_4)) ==> QPMask[o_4, left] == Mask[o_4, left])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != left ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    havoc QPMask;
    assert {:msg "  Unfolding inv(t) might fail. Quantified resource x$0.left might not be injective. (issue_0078.vpr@58.3--58.21) [76754]"}
      (forall x$0: Ref, x$0_3: Ref ::
      
      (((x$0 != x$0_3 && (Heap[t_2, all][x$0] && Heap[x$0, left] == null)) && (Heap[t_2, all][x$0_3] && Heap[x$0_3, left] == null)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> x$0 != x$0_3
    );
    
    // -- Define Inverse Function
      assume (forall x$0: Ref ::
        { Heap[x$0, left] } { QPMask[x$0, left] } { Heap[t_2, all][x$0] }
        (Heap[t_2, all][x$0] && Heap[x$0, left] == null) && NoPerm < 1 / 2 ==> qpRange10(x$0) && invRecv10(x$0) == x$0
      );
      assume (forall o_4: Ref ::
        { invRecv10(o_4) }
        ((Heap[t_2, all][invRecv10(o_4)] && Heap[invRecv10(o_4), left] == null) && NoPerm < 1 / 2) && qpRange10(o_4) ==> invRecv10(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Unfolding inv(t) might fail. Fraction 1 / 2 might be negative. (issue_0078.vpr@58.3--58.21) [76755]"}
      (forall x$0: Ref ::
      { Heap[x$0, left] } { QPMask[x$0, left] } { Heap[t_2, all][x$0] }
      Heap[t_2, all][x$0] && Heap[x$0, left] == null ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall x$0: Ref ::
        { Heap[x$0, left] } { QPMask[x$0, left] } { Heap[t_2, all][x$0] }
        (Heap[t_2, all][x$0] && Heap[x$0, left] == null) && 1 / 2 > NoPerm ==> x$0 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, left] }
        (((Heap[t_2, all][invRecv10(o_4)] && Heap[invRecv10(o_4), left] == null) && NoPerm < 1 / 2) && qpRange10(o_4) ==> (NoPerm < 1 / 2 ==> invRecv10(o_4) == o_4) && QPMask[o_4, left] == Mask[o_4, left] + 1 / 2) && (!(((Heap[t_2, all][invRecv10(o_4)] && Heap[invRecv10(o_4), left] == null) && NoPerm < 1 / 2) && qpRange10(o_4)) ==> QPMask[o_4, left] == Mask[o_4, left])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != left ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (x in t.all) && x.left == null -- issue_0078.vpr@59.3--59.38
    
    // -- Check definedness of (x in t.all)
      assert {:msg "  Inhale might fail. There might be insufficient permission to access t.all (issue_0078.vpr@59.10--59.38) [76756]"}
        HasDirectPerm(Mask, t_2, all);
    assume Heap[t_2, all][x];
    
    // -- Check definedness of x.left == null
      assert {:msg "  Inhale might fail. There might be insufficient permission to access x.left (issue_0078.vpr@59.10--59.38) [76757]"}
        HasDirectPerm(Mask, x, left);
    assume Heap[x, left] == null;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(x.left, write) -- issue_0078.vpr@60.3--60.21
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access x.left (issue_0078.vpr@60.10--60.21) [76759]"}
        perm <= Mask[x, left];
    }
    Mask := Mask[x, left:=Mask[x, left] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}