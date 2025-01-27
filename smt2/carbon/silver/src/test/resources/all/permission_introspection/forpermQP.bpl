// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:13:59
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/permission_introspection/forpermQP.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/permission_introspection/forpermQP-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_18: Ref, f_26: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_18, f_26] }
  Heap[o_18, $allocated] ==> Heap[Heap[o_18, f_26], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_19: Ref, f_27: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_19, f_27] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_19, f_27) ==> Heap[o_19, f_27] == ExhaleHeap[o_19, f_27]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_7: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_7), ExhaleHeap[null, PredicateMaskField(pm_f_7)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_7) && IsPredicateField(pm_f_7) ==> Heap[null, PredicateMaskField(pm_f_7)] == ExhaleHeap[null, PredicateMaskField(pm_f_7)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_7: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_7) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_7) && IsPredicateField(pm_f_7) ==> (forall <A, B> o2_7: Ref, f_27: (Field A B) ::
    { ExhaleHeap[o2_7, f_27] }
    Heap[null, PredicateMaskField(pm_f_7)][o2_7, f_27] ==> Heap[o2_7, f_27] == ExhaleHeap[o2_7, f_27]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_7: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_7), ExhaleHeap[null, WandMaskField(pm_f_7)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_7) && IsWandField(pm_f_7) ==> Heap[null, WandMaskField(pm_f_7)] == ExhaleHeap[null, WandMaskField(pm_f_7)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_7: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_7) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_7) && IsWandField(pm_f_7) ==> (forall <A, B> o2_7: Ref, f_27: (Field A B) ::
    { ExhaleHeap[o2_7, f_27] }
    Heap[null, WandMaskField(pm_f_7)][o2_7, f_27] ==> Heap[o2_7, f_27] == ExhaleHeap[o2_7, f_27]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_19: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_19, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_19, $allocated] ==> ExhaleHeap[o_19, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_18: Ref, f_28: (Field A B), v: B ::
  { Heap[o_18, f_28:=v] }
  succHeap(Heap, Heap[o_18, f_28:=v])
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

function  neverTriggered1(a_1_1: Ref): bool;
function  neverTriggered2(a_1_1: Ref): bool;
function  neverTriggered3(a_4: Ref): bool;
function  neverTriggered4(a_4: Ref): bool;
function  neverTriggered5(a_1_1: Ref): bool;
function  neverTriggered6(a_1_1: Ref): bool;
function  neverTriggered7(a_4: Ref): bool;
function  neverTriggered8(a_7: Ref): bool;
function  neverTriggered9(a_1_1: Ref): bool;
function  neverTriggered10(a_4: Ref): bool;
function  neverTriggered11(x_1: Ref): bool;
function  neverTriggered12(y_1: Ref): bool;
function  neverTriggered13(z_1: Ref): bool;
function  neverTriggered14(y_3_2: Ref): bool;
function  neverTriggered15(x_3: Ref): bool;
function  neverTriggered16(y_5_2: Ref): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): Ref;
function  invRecv2(x_1_1_1: Ref, i: int): Ref;
function  invRecv3(x_2_1: Ref, i_1: int): Ref;
function  invRecv4(arg_0: Ref, arg_1: Perm, arg_2: Ref, arg_3: Perm): Ref;
function  invRecv5(x_1_1_1: Ref, y_1_1_1: Ref): Ref;
function  invRecv6(x_1_1_1: Ref, i: int): Ref;
function  invRecv7(x_2_1: Ref, i_1: int): Ref;
function  invRecv8(x_3_1_1: Ref, i_2: int): Ref;
function  invRecv9(x_1_1_1: Ref, i: int): Ref;
function  invRecv10(x_2_1: Ref, i_1: int): Ref;
function  invRecv11(recv: Ref): Ref;
function  invRecv12(recv: Ref): Ref;
function  invRecv13(recv: Ref): Ref;
function  invRecv14(recv: Ref): Ref;
function  invRecv15(recv: Ref): Ref;
function  invRecv16(recv: Ref): Ref;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(recv: Ref): bool;
function  qpRange2(x_1_1_1: Ref, i: int): bool;
function  qpRange3(x_2_1: Ref, i_1: int): bool;
function  qpRange4(arg_0: Ref, arg_1: Perm, arg_2: Ref, arg_3: Perm): bool;
function  qpRange5(x_1_1_1: Ref, y_1_1_1: Ref): bool;
function  qpRange6(x_1_1_1: Ref, i: int): bool;
function  qpRange7(x_2_1: Ref, i_1: int): bool;
function  qpRange8(x_3_1_1: Ref, i_2: int): bool;
function  qpRange9(x_1_1_1: Ref, i: int): bool;
function  qpRange10(x_2_1: Ref, i_1: int): bool;
function  qpRange11(recv: Ref): bool;
function  qpRange12(recv: Ref): bool;
function  qpRange13(recv: Ref): bool;
function  qpRange14(recv: Ref): bool;
function  qpRange15(recv: Ref): bool;
function  qpRange16(recv: Ref): bool;

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
  getPredWandId(wand(arg1, arg2, arg3, arg4)) == 2
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm ::
  { wand(arg1, arg2, arg3, arg4), wand(arg1_2, arg2_2, arg3_2, arg4_2) }
  wand(arg1, arg2, arg3, arg4) == wand(arg1_2, arg2_2, arg3_2, arg4_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && arg4 == arg4_2))
);
type WandType_wand_1;
function  wand_1(arg1: (Set Ref), arg2: Perm, arg3: (Set Ref), arg4: Perm): Field WandType_wand_1 int;
function  wand_1#sm(arg1: (Set Ref), arg2: Perm, arg3: (Set Ref), arg4: Perm): Field WandType_wand_1 PMaskType;
function  wand_1#ft(arg1: (Set Ref), arg2: Perm, arg3: (Set Ref), arg4: Perm): Field WandType_wand_1 FrameType;
axiom (forall arg1: (Set Ref), arg2: Perm, arg3: (Set Ref), arg4: Perm ::
  { wand_1(arg1, arg2, arg3, arg4) }
  IsWandField(wand_1(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: (Set Ref), arg2: Perm, arg3: (Set Ref), arg4: Perm ::
  { wand_1#ft(arg1, arg2, arg3, arg4) }
  IsWandField(wand_1#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: (Set Ref), arg2: Perm, arg3: (Set Ref), arg4: Perm ::
  { wand_1(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_1(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: (Set Ref), arg2: Perm, arg3: (Set Ref), arg4: Perm ::
  { wand_1#ft(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_1#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: (Set Ref), arg2: Perm, arg3: (Set Ref), arg4: Perm ::
  { WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4)) }
  wand_1#sm(arg1, arg2, arg3, arg4) == WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: (Set Ref), arg2: Perm, arg3: (Set Ref), arg4: Perm ::
  { wand_1(arg1, arg2, arg3, arg4) }
  getPredWandId(wand_1(arg1, arg2, arg3, arg4)) == 3
);
axiom (forall arg1: (Set Ref), arg2: Perm, arg3: (Set Ref), arg4: Perm, arg1_2: (Set Ref), arg2_2: Perm, arg3_2: (Set Ref), arg4_2: Perm ::
  { wand_1(arg1, arg2, arg3, arg4), wand_1(arg1_2, arg2_2, arg3_2, arg4_2) }
  wand_1(arg1, arg2, arg3, arg4) == wand_1(arg1_2, arg2_2, arg3_2, arg4_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && arg4 == arg4_2))
);
type WandType_wand_2;
function  wand_2(arg1: (Set Ref), arg2: Perm, arg3: (Set Ref), arg4: Perm): Field WandType_wand_2 int;
function  wand_2#sm(arg1: (Set Ref), arg2: Perm, arg3: (Set Ref), arg4: Perm): Field WandType_wand_2 PMaskType;
function  wand_2#ft(arg1: (Set Ref), arg2: Perm, arg3: (Set Ref), arg4: Perm): Field WandType_wand_2 FrameType;
axiom (forall arg1: (Set Ref), arg2: Perm, arg3: (Set Ref), arg4: Perm ::
  { wand_2(arg1, arg2, arg3, arg4) }
  IsWandField(wand_2(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: (Set Ref), arg2: Perm, arg3: (Set Ref), arg4: Perm ::
  { wand_2#ft(arg1, arg2, arg3, arg4) }
  IsWandField(wand_2#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: (Set Ref), arg2: Perm, arg3: (Set Ref), arg4: Perm ::
  { wand_2(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_2(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: (Set Ref), arg2: Perm, arg3: (Set Ref), arg4: Perm ::
  { wand_2#ft(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_2#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: (Set Ref), arg2: Perm, arg3: (Set Ref), arg4: Perm ::
  { WandMaskField(wand_2#ft(arg1, arg2, arg3, arg4)) }
  wand_2#sm(arg1, arg2, arg3, arg4) == WandMaskField(wand_2#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: (Set Ref), arg2: Perm, arg3: (Set Ref), arg4: Perm ::
  { wand_2(arg1, arg2, arg3, arg4) }
  getPredWandId(wand_2(arg1, arg2, arg3, arg4)) == 4
);
axiom (forall arg1: (Set Ref), arg2: Perm, arg3: (Set Ref), arg4: Perm, arg1_2: (Set Ref), arg2_2: Perm, arg3_2: (Set Ref), arg4_2: Perm ::
  { wand_2(arg1, arg2, arg3, arg4), wand_2(arg1_2, arg2_2, arg3_2, arg4_2) }
  wand_2(arg1, arg2, arg3, arg4) == wand_2(arg1_2, arg2_2, arg3_2, arg4_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && arg4 == arg4_2))
);

// ==================================================
// Translation of all fields
// ==================================================

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);

// ==================================================
// Translation of predicate P
// ==================================================

type PredicateType_P;
function  P(x: Ref, i: int): Field PredicateType_P FrameType;
function  P#sm(x: Ref, i: int): Field PredicateType_P PMaskType;
axiom (forall x: Ref, i: int ::
  { PredicateMaskField(P(x, i)) }
  PredicateMaskField(P(x, i)) == P#sm(x, i)
);
axiom (forall x: Ref, i: int ::
  { P(x, i) }
  IsPredicateField(P(x, i))
);
axiom (forall x: Ref, i: int ::
  { P(x, i) }
  getPredWandId(P(x, i)) == 0
);
function  P#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  P#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, i: int, x2: Ref, i2: int ::
  { P(x, i), P(x2, i2) }
  P(x, i) == P(x2, i2) ==> x == x2 && i == i2
);
axiom (forall x: Ref, i: int, x2: Ref, i2: int ::
  { P#sm(x, i), P#sm(x2, i2) }
  P#sm(x, i) == P#sm(x2, i2) ==> x == x2 && i == i2
);

axiom (forall Heap: HeapType, x: Ref, i: int ::
  { P#trigger(Heap, P(x, i)) }
  P#everUsed(P(x, i))
);

procedure P#definedness(x: Ref, i: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of P
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of x.f > i
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.f (forpermQP.vpr@80.1--82.2) [52920]"}
        HasDirectPerm(Mask, x, f_7);
    assume Heap[x, f_7] > i;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate p2
// ==================================================

type PredicateType_p2;
function  p2(x: Ref, y: Ref): Field PredicateType_p2 FrameType;
function  p2#sm(x: Ref, y: Ref): Field PredicateType_p2 PMaskType;
axiom (forall x: Ref, y: Ref ::
  { PredicateMaskField(p2(x, y)) }
  PredicateMaskField(p2(x, y)) == p2#sm(x, y)
);
axiom (forall x: Ref, y: Ref ::
  { p2(x, y) }
  IsPredicateField(p2(x, y))
);
axiom (forall x: Ref, y: Ref ::
  { p2(x, y) }
  getPredWandId(p2(x, y)) == 1
);
function  p2#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  p2#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, y: Ref, x2: Ref, y2: Ref ::
  { p2(x, y), p2(x2, y2) }
  p2(x, y) == p2(x2, y2) ==> x == x2 && y == y2
);
axiom (forall x: Ref, y: Ref, x2: Ref, y2: Ref ::
  { p2#sm(x, y), p2#sm(x2, y2) }
  p2#sm(x, y) == p2#sm(x2, y2) ==> x == x2 && y == y2
);

axiom (forall Heap: HeapType, x: Ref, y: Ref ::
  { p2#trigger(Heap, p2(x, y)) }
  p2#everUsed(p2(x, y))
);

procedure p2#definedness(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of p2
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
      assume Heap[y, $allocated];
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume y != null;
    Mask := Mask[y, f_7:=Mask[y, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m1
// ==================================================

procedure m1(x: Ref, y: Ref, z: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var g_1: Ref;
  var perm: Perm;
  var QPMask: MaskType;
  var a_5: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var a_6: Ref;
  var a_8: Ref;
  var a_9: Ref;
  var a_10: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
    assume Heap[z, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[g_1, $allocated];
  
  // -- Translating statement: inhale acc(x.f, write) -- forpermQP.vpr@7.8--7.23
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(y.f, write) && acc(z.f, write) -- forpermQP.vpr@8.8--8.35
    perm := FullPerm;
    assume y != null;
    Mask := Mask[y, f_7:=Mask[y, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume z != null;
    Mask := Mask[z, f_7:=Mask[z, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale y != x -- forpermQP.vpr@9.8--9.21
    assume y != x;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale z != x -- forpermQP.vpr@10.8--10.21
    assume z != x;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(g.f, write) -- forpermQP.vpr@14.8--14.23
    perm := FullPerm;
    assume g_1 != null;
    Mask := Mask[g_1, f_7:=Mask[g_1, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall a: Ref ::a == g ==> acc(a.f, write)) &&
  //   (forall a: Ref ::a == g ==> a.f < 3) -- forpermQP.vpr@15.8--15.62
    
    // -- Check definedness of (forall a: Ref ::a == g ==> acc(a.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource a.f might not be injective. (forpermQP.vpr@15.15--15.62) [52925]"}
      (forall a_1_1: Ref, a_1_2: Ref ::
      
      (((a_1_1 != a_1_2 && a_1_1 == g_1) && a_1_2 == g_1) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_1_1 != a_1_2
    );
    
    // -- Define Inverse Function
      assume (forall a_1_1: Ref ::
        { Heap[a_1_1, f_7] } { QPMask[a_1_1, f_7] }
        a_1_1 == g_1 && NoPerm < FullPerm ==> qpRange1(a_1_1) && invRecv1(a_1_1) == a_1_1
      );
      assume (forall o_9: Ref ::
        { invRecv1(o_9) }
        (invRecv1(o_9) == g_1 && NoPerm < FullPerm) && qpRange1(o_9) ==> invRecv1(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall a_1_1: Ref ::
        { Heap[a_1_1, f_7] } { QPMask[a_1_1, f_7] }
        a_1_1 == g_1 ==> a_1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((invRecv1(o_9) == g_1 && NoPerm < FullPerm) && qpRange1(o_9) ==> (NoPerm < FullPerm ==> invRecv1(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((invRecv1(o_9) == g_1 && NoPerm < FullPerm) && qpRange1(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall a: Ref ::a == g ==> a.f < 3)
      if (*) {
        if (a_5 == g_1) {
          assert {:msg "  Inhale might fail. There might be insufficient permission to access a.f (forpermQP.vpr@15.15--15.62) [52926]"}
            HasDirectPerm(Mask, a_5, f_7);
        }
        assume false;
      }
    assume (forall a_3_1: Ref ::
      
      a_3_1 == g_1 ==> Heap[a_3_1, f_7] < 3
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert !(forperm a: Ref [a.f] :: a.f > 3) -- forpermQP.vpr@18.8--18.47
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of !(forperm a: Ref [a.f] :: a.f > 3)
      if (*) {
        if (HasDirectPerm(Mask, a_6, f_7)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access a.f (forpermQP.vpr@18.15--18.47) [52927]"}
            HasDirectPerm(ExhaleWellDef0Mask, a_6, f_7);
          assert {:msg "  Assert might fail. There might be insufficient permission to access a.f (forpermQP.vpr@18.15--18.47) [52928]"}
            HasDirectPerm(ExhaleWellDef0Mask, a_6, f_7);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion !(forperm a: Ref [a.f] :: a.f > 3) might not hold. (forpermQP.vpr@18.15--18.47) [52929]"}
      !(forall a_5_1: Ref ::
      { Mask[a_5_1, f_7] } { Heap[a_5_1, f_7] }
      HasDirectPerm(Mask, a_5_1, f_7) ==> Heap[a_5_1, f_7] > 3
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall a: Ref ::a == x || a == y ==> a.f == 4) -- forpermQP.vpr@20.8--20.61
    
    // -- Check definedness of (forall a: Ref ::a == x || a == y ==> a.f == 4)
      if (*) {
        if (a_8 == x || a_8 == y) {
          assert {:msg "  Inhale might fail. There might be insufficient permission to access a.f (forpermQP.vpr@20.15--20.61) [52930]"}
            HasDirectPerm(Mask, a_8, f_7);
        }
        assume false;
      }
    assume (forall a_7: Ref ::
      
      a_7 == x || a_7 == y ==> Heap[a_7, f_7] == 4
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall a: Ref ::a == z ==> a.f == 10) -- forpermQP.vpr@21.8--21.52
    
    // -- Check definedness of (forall a: Ref ::a == z ==> a.f == 10)
      if (*) {
        if (a_9 == z) {
          assert {:msg "  Inhale might fail. There might be insufficient permission to access a.f (forpermQP.vpr@21.15--21.52) [52931]"}
            HasDirectPerm(Mask, a_9, f_7);
        }
        assume false;
      }
    assume (forall a_9_1: Ref ::
      
      a_9_1 == z ==> Heap[a_9_1, f_7] == 10
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm a: Ref [a.f] :: a == g || a.f > 3) -- forpermQP.vpr@23.8--23.56
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forperm a: Ref [a.f] :: a == g || a.f > 3)
      if (*) {
        if (HasDirectPerm(Mask, a_10, f_7)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access a.f (forpermQP.vpr@23.15--23.56) [52932]"}
            HasDirectPerm(ExhaleWellDef0Mask, a_10, f_7);
          if (!(a_10 == g_1)) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access a.f (forpermQP.vpr@23.15--23.56) [52933]"}
              HasDirectPerm(ExhaleWellDef0Mask, a_10, f_7);
          }
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm a: Ref [a.f] :: a == g || a.f > 3) might not hold. (forpermQP.vpr@23.15--23.56) [52934]"}
      (forall a_11: Ref ::
      { Mask[a_11, f_7] } { Heap[a_11, f_7] }
      HasDirectPerm(Mask, a_11, f_7) ==> a_11 == g_1 || Heap[a_11, f_7] > 3
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m2
// ==================================================

procedure m2(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var a_12: Ref;
  var i_8: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale (forall a: Ref ::a == x ==> acc(P(x, 3), write)) -- forpermQP.vpr@27.8--27.50
    
    // -- Check definedness of (forall a: Ref ::a == x ==> acc(P(x, 3), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(P(x, 3), write) is injective
      assert {:msg "  Inhale might fail. Quantified resource P(x, 3) might not be injective. (forpermQP.vpr@27.15--27.50) [52935]"}
        (forall a_1_1: Ref, a_1_2: Ref ::
        { neverTriggered2(a_1_1), neverTriggered2(a_1_2) }
        (((a_1_1 != a_1_2 && a_1_1 == x) && a_1_2 == x) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x != x
      );
    
    // -- Define Inverse Function
      assume (forall a_1_1: Ref ::
        
        a_1_1 == x && NoPerm < FullPerm ==> invRecv2(x, 3) == a_1_1 && qpRange2(x, 3)
      );
      assume (forall x_1_1_1: Ref, i: int ::
        { invRecv2(x_1_1_1, i) }
        (invRecv2(x_1_1_1, i) == x && NoPerm < FullPerm) && qpRange2(x_1_1_1, i) ==> x == x_1_1_1 && 3 == i
      );
    
    // -- Define updated permissions
      assume (forall x_1_1_1: Ref, i: int ::
        { QPMask[null, P(x_1_1_1, i)] }
        (invRecv2(x_1_1_1, i) == x && NoPerm < FullPerm) && qpRange2(x_1_1_1, i) ==> (NoPerm < FullPerm ==> x == x_1_1_1 && 3 == i) && QPMask[null, P(x_1_1_1, i)] == Mask[null, P(x_1_1_1, i)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall x_1_1_1: Ref, i: int ::
        { QPMask[null, P(x_1_1_1, i)] }
        !((invRecv2(x_1_1_1, i) == x && NoPerm < FullPerm) && qpRange2(x_1_1_1, i)) ==> QPMask[null, P(x_1_1_1, i)] == Mask[null, P(x_1_1_1, i)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall a: Ref ::a == y ==> acc(P(y, 0), write)) -- forpermQP.vpr@28.8--28.50
    
    // -- Check definedness of (forall a: Ref ::a == y ==> acc(P(y, 0), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(P(y, 0), write) is injective
      assert {:msg "  Inhale might fail. Quantified resource P(y, 0) might not be injective. (forpermQP.vpr@28.15--28.50) [52936]"}
        (forall a_4: Ref, a_4_1: Ref ::
        { neverTriggered3(a_4), neverTriggered3(a_4_1) }
        (((a_4 != a_4_1 && a_4 == y) && a_4_1 == y) && NoPerm < FullPerm) && NoPerm < FullPerm ==> y != y
      );
    
    // -- Define Inverse Function
      assume (forall a_4: Ref ::
        
        a_4 == y && NoPerm < FullPerm ==> invRecv3(y, 0) == a_4 && qpRange3(y, 0)
      );
      assume (forall x_2_1: Ref, i_1: int ::
        { invRecv3(x_2_1, i_1) }
        (invRecv3(x_2_1, i_1) == y && NoPerm < FullPerm) && qpRange3(x_2_1, i_1) ==> y == x_2_1 && 0 == i_1
      );
    
    // -- Define updated permissions
      assume (forall x_2_1: Ref, i_1: int ::
        { QPMask[null, P(x_2_1, i_1)] }
        (invRecv3(x_2_1, i_1) == y && NoPerm < FullPerm) && qpRange3(x_2_1, i_1) ==> (NoPerm < FullPerm ==> y == x_2_1 && 0 == i_1) && QPMask[null, P(x_2_1, i_1)] == Mask[null, P(x_2_1, i_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall x_2_1: Ref, i_1: int ::
        { QPMask[null, P(x_2_1, i_1)] }
        !((invRecv3(x_2_1, i_1) == y && NoPerm < FullPerm) && qpRange3(x_2_1, i_1)) ==> QPMask[null, P(x_2_1, i_1)] == Mask[null, P(x_2_1, i_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm a: Ref, i: Int [P(a, i)] :: i >= 0) -- forpermQP.vpr@30.8--30.57
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forperm a: Ref, i: Int [P(a, i)] :: i >= 0)
      if (*) {
        if (HasDirectPerm(Mask, null, P(a_12, i_8))) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access P(a, i) (forpermQP.vpr@30.15--30.57) [52937]"}
            HasDirectPerm(ExhaleWellDef0Mask, null, P(a_12, i_8));
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm a: Ref, i: Int [P(a, i)] :: i >= 0) might not hold. (forpermQP.vpr@30.15--30.57) [52938]"}
      (forall a_7: Ref, i_3_2: int ::
      { Mask[null, P(a_7, i_3_2)] } { Heap[null, P(a_7, i_3_2)] }
      HasDirectPerm(Mask, null, P(a_7, i_3_2)) ==> i_3_2 >= 0
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m3
// ==================================================

procedure m3(x: Ref, y: Ref, z: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var a_1_1: Ref;
  var a_13: Ref;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs1Mask: MaskType;
  var Labellhs1Heap: HeapType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var QPMask: MaskType;
  var a_14: Ref;
  var a_15: Ref;
  var Labellhs2Mask: MaskType;
  var Labellhs2Heap: HeapType;
  var a_16: Ref;
  var b_25: Ref;
  var Labellhs3Mask: MaskType;
  var Labellhs3Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
    assume Heap[z, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(x.f, write) -- forpermQP.vpr@34.5--34.20
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(z.f, write) -- forpermQP.vpr@35.5--35.20
    perm := FullPerm;
    assume z != null;
    Mask := Mask[z, f_7:=Mask[z, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale x.f == 5 -- forpermQP.vpr@36.5--36.20
    
    // -- Check definedness of x.f == 5
      assert {:msg "  Inhale might fail. There might be insufficient permission to access x.f (forpermQP.vpr@36.12--36.20) [52941]"}
        HasDirectPerm(Mask, x, f_7);
    assume Heap[x, f_7] == 5;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale z.f == 10 -- forpermQP.vpr@37.5--37.21
    
    // -- Check definedness of z.f == 10
      assert {:msg "  Inhale might fail. There might be insufficient permission to access z.f (forpermQP.vpr@37.12--37.21) [52942]"}
        HasDirectPerm(Mask, z, f_7);
    assume Heap[z, f_7] == 10;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale x != y -- forpermQP.vpr@38.5--38.18
    assume x != y;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale z != y -- forpermQP.vpr@39.5--39.18
    assume z != y;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall a: Ref ::perm(a.f) == write ==> a == x || a == z) -- forpermQP.vpr@40.5--40.68
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall a: Ref ::perm(a.f) == write ==> a == x || a == z)
      if (*) {
        assume false;
      }
    if (*) {
      if (Mask[a_1_1, f_7] == FullPerm) {
        assert {:msg "  Assert might fail. Assertion a == x || a == z might not hold. (forpermQP.vpr@40.12--40.68) [52943]"}
          a_1_1 == x || a_1_1 == z;
      }
      assume false;
    }
    assume (forall a_2_1: Ref ::
      
      Mask[a_2_1, f_7] == FullPerm ==> a_2_1 == x || a_2_1 == z
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall a: Ref ::a == x || a == z ==>
  //     acc(a.f, write) --* acc(y.f, write)) -- forpermQP.vpr@41.5--41.71
    
    // -- Check definedness of (forall a: Ref ::a == x || a == z ==> acc(a.f, write) --* acc(y.f, write))
      if (*) {
        if (a_13 == x || a_13 == z) {
          if (*) {
            havoc WandDefLHSHeap;
            WandDefLHSMask := ZeroMask;
            perm := FullPerm;
            assume a_13 != null;
            WandDefLHSMask := WandDefLHSMask[a_13, f_7:=WandDefLHSMask[a_13, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            assume state(WandDefLHSHeap, WandDefLHSMask);
            
            // -- Translating statement: label lhs1 -- forpermQP.vpr@41.50--41.71
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
    
    // -- check if receiver acc(a.f, write) --* acc(y.f, write) is injective
      assert {:msg "  Inhale might fail. Quantified resource acc(a.f, write) --* acc(y.f, write) might not be injective. (forpermQP.vpr@41.12--41.71) [52944]"}
        (forall a_4: Ref, a_4_1: Ref ::
        { neverTriggered4(a_4), neverTriggered4(a_4_1) }
        (((a_4 != a_4_1 && (a_4 == x || a_4 == z)) && (a_4_1 == x || a_4_1 == z)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> ((a_4 != a_4_1 || FullPerm != FullPerm) || y != y) || FullPerm != FullPerm
      );
    
    // -- Define Inverse Function
      assume (forall a_4: Ref ::
        { Heap[null, wand(a_4, FullPerm, y, FullPerm)] } { Mask[null, wand(a_4, FullPerm, y, FullPerm)] }
        (a_4 == x || a_4 == z) && NoPerm < FullPerm ==> invRecv4(a_4, FullPerm, y, FullPerm) == a_4 && qpRange4(a_4, FullPerm, y, FullPerm)
      );
      assume (forall arg_0: Ref, arg_1: Perm, arg_2: Ref, arg_3: Perm ::
        { invRecv4(arg_0, arg_1, arg_2, arg_3) }
        ((invRecv4(arg_0, arg_1, arg_2, arg_3) == x || invRecv4(arg_0, arg_1, arg_2, arg_3) == z) && NoPerm < FullPerm) && qpRange4(arg_0, arg_1, arg_2, arg_3) ==> ((invRecv4(arg_0, arg_1, arg_2, arg_3) == arg_0 && FullPerm == arg_1) && y == arg_2) && FullPerm == arg_3
      );
    
    // -- Define updated permissions
      assume (forall arg_0: Ref, arg_1: Perm, arg_2: Ref, arg_3: Perm ::
        { QPMask[null, wand(arg_0, arg_1, arg_2, arg_3)] }
        ((invRecv4(arg_0, arg_1, arg_2, arg_3) == x || invRecv4(arg_0, arg_1, arg_2, arg_3) == z) && NoPerm < FullPerm) && qpRange4(arg_0, arg_1, arg_2, arg_3) ==> (NoPerm < FullPerm ==> ((invRecv4(arg_0, arg_1, arg_2, arg_3) == arg_0 && FullPerm == arg_1) && y == arg_2) && FullPerm == arg_3) && QPMask[null, wand(arg_0, arg_1, arg_2, arg_3)] == Mask[null, wand(arg_0, arg_1, arg_2, arg_3)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsWandField(f_5)) || getPredWandId(f_5) != 2 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall arg_0: Ref, arg_1: Perm, arg_2: Ref, arg_3: Perm ::
        { QPMask[null, wand(arg_0, arg_1, arg_2, arg_3)] }
        !(((invRecv4(arg_0, arg_1, arg_2, arg_3) == x || invRecv4(arg_0, arg_1, arg_2, arg_3) == z) && NoPerm < FullPerm) && qpRange4(arg_0, arg_1, arg_2, arg_3)) ==> QPMask[null, wand(arg_0, arg_1, arg_2, arg_3)] == Mask[null, wand(arg_0, arg_1, arg_2, arg_3)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm a: Ref [a.f] :: a.f > 0) -- forpermQP.vpr@43.5--43.43
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forperm a: Ref [a.f] :: a.f > 0)
      if (*) {
        if (HasDirectPerm(Mask, a_14, f_7)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access a.f (forpermQP.vpr@43.12--43.43) [52945]"}
            HasDirectPerm(ExhaleWellDef0Mask, a_14, f_7);
          assert {:msg "  Assert might fail. There might be insufficient permission to access a.f (forpermQP.vpr@43.12--43.43) [52946]"}
            HasDirectPerm(ExhaleWellDef0Mask, a_14, f_7);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm a: Ref [a.f] :: a.f > 0) might not hold. (forpermQP.vpr@43.12--43.43) [52947]"}
      (forall a_7: Ref ::
      { Mask[a_7, f_7] } { Heap[a_7, f_7] }
      HasDirectPerm(Mask, a_7, f_7) ==> Heap[a_7, f_7] > 0
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm
  //     a: Ref [acc(a.f, write) --* acc(y.f, write)] :: a == x || a == z) -- forpermQP.vpr@45.5--45.70
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forperm a: Ref [acc(a.f, write) --* acc(y.f, write)] :: a == x || a == z)
      if (*) {
        if (HasDirectPerm(Mask, null, wand(a_15, FullPerm, y, FullPerm))) {
          if (*) {
            havoc WandDefLHSHeap;
            WandDefLHSMask := ZeroMask;
            perm := FullPerm;
            assume a_15 != null;
            WandDefLHSMask := WandDefLHSMask[a_15, f_7:=WandDefLHSMask[a_15, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            assume state(WandDefLHSHeap, WandDefLHSMask);
            
            // -- Translating statement: label lhs2 -- forpermQP.vpr@45.28--45.49
              lhs2:
              Labellhs2Mask := WandDefLHSMask;
              Labellhs2Heap := WandDefLHSHeap;
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
    assert {:msg "  Assert might fail. Assertion (forperm a: Ref [acc(a.f, write) --* acc(y.f, write)] :: a == x || a == z) might not hold. (forpermQP.vpr@45.12--45.70) [52948]"}
      (forall a_9_1: Ref ::
      { Mask[null, wand(a_9_1, FullPerm, y, FullPerm)] } { Heap[null, wand(a_9_1, FullPerm, y, FullPerm)] }
      HasDirectPerm(Mask, null, wand(a_9_1, FullPerm, y, FullPerm)) ==> a_9_1 == x || a_9_1 == z
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm
  //     a: Ref, b: Ref [acc(a.f, write) --* acc(b.f, write)] :: b == y) -- forpermQP.vpr@46.5--46.68
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forperm a: Ref, b: Ref [acc(a.f, write) --* acc(b.f, write)] :: b == y)
      if (*) {
        if (HasDirectPerm(Mask, null, wand(a_16, FullPerm, b_25, FullPerm))) {
          if (*) {
            havoc WandDefLHSHeap;
            WandDefLHSMask := ZeroMask;
            perm := FullPerm;
            assume a_16 != null;
            WandDefLHSMask := WandDefLHSMask[a_16, f_7:=WandDefLHSMask[a_16, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            assume state(WandDefLHSHeap, WandDefLHSMask);
            
            // -- Translating statement: label lhs3 -- forpermQP.vpr@46.36--46.57
              lhs3:
              Labellhs3Mask := WandDefLHSMask;
              Labellhs3Heap := WandDefLHSHeap;
              assume state(WandDefLHSHeap, WandDefLHSMask);
            havoc WandDefRHSHeap;
            WandDefRHSMask := ZeroMask;
            perm := FullPerm;
            assume b_25 != null;
            WandDefRHSMask := WandDefRHSMask[b_25, f_7:=WandDefRHSMask[b_25, f_7] + perm];
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume false;
          }
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm a: Ref, b: Ref [acc(a.f, write) --* acc(b.f, write)] :: b == y) might not hold. (forpermQP.vpr@46.12--46.68) [52949]"}
      (forall a_11: Ref, b_1_2: Ref ::
      { Mask[null, wand(a_11, FullPerm, b_1_2, FullPerm)] } { Heap[null, wand(a_11, FullPerm, b_1_2, FullPerm)] }
      HasDirectPerm(Mask, null, wand(a_11, FullPerm, b_1_2, FullPerm)) ==> b_1_2 == y
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m4
// ==================================================

procedure m4(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var a_17: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale (forall a: Ref ::a == x || a == y ==> acc(p2(a, x), write)) -- forpermQP.vpr@50.5--50.59
    
    // -- Check definedness of (forall a: Ref ::a == x || a == y ==> acc(p2(a, x), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p2(a, x), write) is injective
      assert {:msg "  Inhale might fail. Quantified resource p2(a, x) might not be injective. (forpermQP.vpr@50.12--50.59) [52950]"}
        (forall a_1_1: Ref, a_1_2: Ref ::
        { neverTriggered5(a_1_1), neverTriggered5(a_1_2) }
        (((a_1_1 != a_1_2 && (a_1_1 == x || a_1_1 == y)) && (a_1_2 == x || a_1_2 == y)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_1_1 != a_1_2 || x != x
      );
    
    // -- Define Inverse Function
      assume (forall a_1_1: Ref ::
        { Heap[null, p2(a_1_1, x)] } { Mask[null, p2(a_1_1, x)] }
        (a_1_1 == x || a_1_1 == y) && NoPerm < FullPerm ==> invRecv5(a_1_1, x) == a_1_1 && qpRange5(a_1_1, x)
      );
      assume (forall x_1_1_1: Ref, y_1_1_1: Ref ::
        { invRecv5(x_1_1_1, y_1_1_1) }
        ((invRecv5(x_1_1_1, y_1_1_1) == x || invRecv5(x_1_1_1, y_1_1_1) == y) && NoPerm < FullPerm) && qpRange5(x_1_1_1, y_1_1_1) ==> invRecv5(x_1_1_1, y_1_1_1) == x_1_1_1 && x == y_1_1_1
      );
    
    // -- Define updated permissions
      assume (forall x_1_1_1: Ref, y_1_1_1: Ref ::
        { QPMask[null, p2(x_1_1_1, y_1_1_1)] }
        ((invRecv5(x_1_1_1, y_1_1_1) == x || invRecv5(x_1_1_1, y_1_1_1) == y) && NoPerm < FullPerm) && qpRange5(x_1_1_1, y_1_1_1) ==> (NoPerm < FullPerm ==> invRecv5(x_1_1_1, y_1_1_1) == x_1_1_1 && x == y_1_1_1) && QPMask[null, p2(x_1_1_1, y_1_1_1)] == Mask[null, p2(x_1_1_1, y_1_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall x_1_1_1: Ref, y_1_1_1: Ref ::
        { QPMask[null, p2(x_1_1_1, y_1_1_1)] }
        !(((invRecv5(x_1_1_1, y_1_1_1) == x || invRecv5(x_1_1_1, y_1_1_1) == y) && NoPerm < FullPerm) && qpRange5(x_1_1_1, y_1_1_1)) ==> QPMask[null, p2(x_1_1_1, y_1_1_1)] == Mask[null, p2(x_1_1_1, y_1_1_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale x != y -- forpermQP.vpr@51.5--51.18
    assume x != y;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm a: Ref [p2(a, a)] :: a == x) -- forpermQP.vpr@53.5--53.46
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forperm a: Ref [p2(a, a)] :: a == x)
      if (*) {
        if (HasDirectPerm(Mask, null, p2(a_17, a_17))) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access p2(a, a) (forpermQP.vpr@53.12--53.46) [52951]"}
            HasDirectPerm(ExhaleWellDef0Mask, null, p2(a_17, a_17));
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm a: Ref [p2(a, a)] :: a == x) might not hold. (forpermQP.vpr@53.12--53.46) [52952]"}
      (forall a_4: Ref ::
      { Mask[null, p2(a_4, a_4)] } { Heap[null, p2(a_4, a_4)] }
      HasDirectPerm(Mask, null, p2(a_4, a_4)) ==> a_4 == x
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m5
// ==================================================

procedure m5(x: Ref, y: Ref, z: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var a_18: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
    assume Heap[z, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale x != y -- forpermQP.vpr@57.5--57.18
    assume x != y;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale z != y -- forpermQP.vpr@58.5--58.18
    assume z != y;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall a: Ref ::a == x ==> acc(P(a, 3), write)) -- forpermQP.vpr@59.5--59.46
    
    // -- Check definedness of (forall a: Ref ::a == x ==> acc(P(a, 3), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(P(a, 3), write) is injective
      assert {:msg "  Inhale might fail. Quantified resource P(a, 3) might not be injective. (forpermQP.vpr@59.12--59.46) [52953]"}
        (forall a_1_1: Ref, a_1_2: Ref ::
        { neverTriggered6(a_1_1), neverTriggered6(a_1_2) }
        (((a_1_1 != a_1_2 && a_1_1 == x) && a_1_2 == x) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_1_1 != a_1_2
      );
    
    // -- Define Inverse Function
      assume (forall a_1_1: Ref ::
        { Heap[null, P(a_1_1, 3)] } { Mask[null, P(a_1_1, 3)] }
        a_1_1 == x && NoPerm < FullPerm ==> invRecv6(a_1_1, 3) == a_1_1 && qpRange6(a_1_1, 3)
      );
      assume (forall x_1_1_1: Ref, i: int ::
        { invRecv6(x_1_1_1, i) }
        (invRecv6(x_1_1_1, i) == x && NoPerm < FullPerm) && qpRange6(x_1_1_1, i) ==> invRecv6(x_1_1_1, i) == x_1_1_1 && 3 == i
      );
    
    // -- Define updated permissions
      assume (forall x_1_1_1: Ref, i: int ::
        { QPMask[null, P(x_1_1_1, i)] }
        (invRecv6(x_1_1_1, i) == x && NoPerm < FullPerm) && qpRange6(x_1_1_1, i) ==> (NoPerm < FullPerm ==> invRecv6(x_1_1_1, i) == x_1_1_1 && 3 == i) && QPMask[null, P(x_1_1_1, i)] == Mask[null, P(x_1_1_1, i)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall x_1_1_1: Ref, i: int ::
        { QPMask[null, P(x_1_1_1, i)] }
        !((invRecv6(x_1_1_1, i) == x && NoPerm < FullPerm) && qpRange6(x_1_1_1, i)) ==> QPMask[null, P(x_1_1_1, i)] == Mask[null, P(x_1_1_1, i)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall a: Ref ::true && a == y ==> acc(P(a, 10), write)) &&
  //   (forall a: Ref ::true && a == z ==> acc(P(a, 3), write)) -- forpermQP.vpr@60.5--60.72
    
    // -- Check definedness of (forall a: Ref ::true && a == y ==> acc(P(a, 10), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(P(a, 10), write) is injective
      assert {:msg "  Inhale might fail. Quantified resource P(a, 10) might not be injective. (forpermQP.vpr@60.12--60.72) [52954]"}
        (forall a_4: Ref, a_4_1: Ref ::
        { neverTriggered7(a_4), neverTriggered7(a_4_1) }
        (((a_4 != a_4_1 && a_4 == y) && a_4_1 == y) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_4 != a_4_1
      );
    
    // -- Define Inverse Function
      assume (forall a_4: Ref ::
        { Heap[null, P(a_4, 10)] } { Mask[null, P(a_4, 10)] }
        a_4 == y && NoPerm < FullPerm ==> invRecv7(a_4, 10) == a_4 && qpRange7(a_4, 10)
      );
      assume (forall x_2_1: Ref, i_1: int ::
        { invRecv7(x_2_1, i_1) }
        (invRecv7(x_2_1, i_1) == y && NoPerm < FullPerm) && qpRange7(x_2_1, i_1) ==> invRecv7(x_2_1, i_1) == x_2_1 && 10 == i_1
      );
    
    // -- Define updated permissions
      assume (forall x_2_1: Ref, i_1: int ::
        { QPMask[null, P(x_2_1, i_1)] }
        (invRecv7(x_2_1, i_1) == y && NoPerm < FullPerm) && qpRange7(x_2_1, i_1) ==> (NoPerm < FullPerm ==> invRecv7(x_2_1, i_1) == x_2_1 && 10 == i_1) && QPMask[null, P(x_2_1, i_1)] == Mask[null, P(x_2_1, i_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall x_2_1: Ref, i_1: int ::
        { QPMask[null, P(x_2_1, i_1)] }
        !((invRecv7(x_2_1, i_1) == y && NoPerm < FullPerm) && qpRange7(x_2_1, i_1)) ==> QPMask[null, P(x_2_1, i_1)] == Mask[null, P(x_2_1, i_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall a: Ref ::true && a == z ==> acc(P(a, 3), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(P(a, 3), write) is injective
      assert {:msg "  Inhale might fail. Quantified resource P(a, 3) might not be injective. (forpermQP.vpr@60.12--60.72) [52955]"}
        (forall a_7: Ref, a_7_1: Ref ::
        { neverTriggered8(a_7), neverTriggered8(a_7_1) }
        (((a_7 != a_7_1 && a_7 == z) && a_7_1 == z) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_7 != a_7_1
      );
    
    // -- Define Inverse Function
      assume (forall a_7: Ref ::
        { Heap[null, P(a_7, 3)] } { Mask[null, P(a_7, 3)] }
        a_7 == z && NoPerm < FullPerm ==> invRecv8(a_7, 3) == a_7 && qpRange8(a_7, 3)
      );
      assume (forall x_3_1_1: Ref, i_2: int ::
        { invRecv8(x_3_1_1, i_2) }
        (invRecv8(x_3_1_1, i_2) == z && NoPerm < FullPerm) && qpRange8(x_3_1_1, i_2) ==> invRecv8(x_3_1_1, i_2) == x_3_1_1 && 3 == i_2
      );
    
    // -- Define updated permissions
      assume (forall x_3_1_1: Ref, i_2: int ::
        { QPMask[null, P(x_3_1_1, i_2)] }
        (invRecv8(x_3_1_1, i_2) == z && NoPerm < FullPerm) && qpRange8(x_3_1_1, i_2) ==> (NoPerm < FullPerm ==> invRecv8(x_3_1_1, i_2) == x_3_1_1 && 3 == i_2) && QPMask[null, P(x_3_1_1, i_2)] == Mask[null, P(x_3_1_1, i_2)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall x_3_1_1: Ref, i_2: int ::
        { QPMask[null, P(x_3_1_1, i_2)] }
        !((invRecv8(x_3_1_1, i_2) == z && NoPerm < FullPerm) && qpRange8(x_3_1_1, i_2)) ==> QPMask[null, P(x_3_1_1, i_2)] == Mask[null, P(x_3_1_1, i_2)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm a: Ref [P(a, 3)] :: a == x || a == z) -- forpermQP.vpr@62.5--62.55
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forperm a: Ref [P(a, 3)] :: a == x || a == z)
      if (*) {
        if (HasDirectPerm(Mask, null, P(a_18, 3))) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access P(a, 3) (forpermQP.vpr@62.12--62.55) [52956]"}
            HasDirectPerm(ExhaleWellDef0Mask, null, P(a_18, 3));
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm a: Ref [P(a, 3)] :: a == x || a == z) might not hold. (forpermQP.vpr@62.12--62.55) [52957]"}
      (forall a_10_1: Ref ::
      { Mask[null, P(a_10_1, 3)] } { Heap[null, P(a_10_1, 3)] }
      HasDirectPerm(Mask, null, P(a_10_1, 3)) ==> a_10_1 == x || a_10_1 == z
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m6
// ==================================================

procedure m6(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var a_19: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale (forall a: Ref ::a == x ==> acc(P(a, 10), write)) -- forpermQP.vpr@66.5--66.47
    
    // -- Check definedness of (forall a: Ref ::a == x ==> acc(P(a, 10), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(P(a, 10), write) is injective
      assert {:msg "  Inhale might fail. Quantified resource P(a, 10) might not be injective. (forpermQP.vpr@66.12--66.47) [52958]"}
        (forall a_1_1: Ref, a_1_2: Ref ::
        { neverTriggered9(a_1_1), neverTriggered9(a_1_2) }
        (((a_1_1 != a_1_2 && a_1_1 == x) && a_1_2 == x) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_1_1 != a_1_2
      );
    
    // -- Define Inverse Function
      assume (forall a_1_1: Ref ::
        { Heap[null, P(a_1_1, 10)] } { Mask[null, P(a_1_1, 10)] }
        a_1_1 == x && NoPerm < FullPerm ==> invRecv9(a_1_1, 10) == a_1_1 && qpRange9(a_1_1, 10)
      );
      assume (forall x_1_1_1: Ref, i: int ::
        { invRecv9(x_1_1_1, i) }
        (invRecv9(x_1_1_1, i) == x && NoPerm < FullPerm) && qpRange9(x_1_1_1, i) ==> invRecv9(x_1_1_1, i) == x_1_1_1 && 10 == i
      );
    
    // -- Define updated permissions
      assume (forall x_1_1_1: Ref, i: int ::
        { QPMask[null, P(x_1_1_1, i)] }
        (invRecv9(x_1_1_1, i) == x && NoPerm < FullPerm) && qpRange9(x_1_1_1, i) ==> (NoPerm < FullPerm ==> invRecv9(x_1_1_1, i) == x_1_1_1 && 10 == i) && QPMask[null, P(x_1_1_1, i)] == Mask[null, P(x_1_1_1, i)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall x_1_1_1: Ref, i: int ::
        { QPMask[null, P(x_1_1_1, i)] }
        !((invRecv9(x_1_1_1, i) == x && NoPerm < FullPerm) && qpRange9(x_1_1_1, i)) ==> QPMask[null, P(x_1_1_1, i)] == Mask[null, P(x_1_1_1, i)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall a: Ref ::a == y ==> acc(P(a, 5), write)) -- forpermQP.vpr@67.5--67.46
    
    // -- Check definedness of (forall a: Ref ::a == y ==> acc(P(a, 5), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(P(a, 5), write) is injective
      assert {:msg "  Inhale might fail. Quantified resource P(a, 5) might not be injective. (forpermQP.vpr@67.12--67.46) [52959]"}
        (forall a_4: Ref, a_4_1: Ref ::
        { neverTriggered10(a_4), neverTriggered10(a_4_1) }
        (((a_4 != a_4_1 && a_4 == y) && a_4_1 == y) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_4 != a_4_1
      );
    
    // -- Define Inverse Function
      assume (forall a_4: Ref ::
        { Heap[null, P(a_4, 5)] } { Mask[null, P(a_4, 5)] }
        a_4 == y && NoPerm < FullPerm ==> invRecv10(a_4, 5) == a_4 && qpRange10(a_4, 5)
      );
      assume (forall x_2_1: Ref, i_1: int ::
        { invRecv10(x_2_1, i_1) }
        (invRecv10(x_2_1, i_1) == y && NoPerm < FullPerm) && qpRange10(x_2_1, i_1) ==> invRecv10(x_2_1, i_1) == x_2_1 && 5 == i_1
      );
    
    // -- Define updated permissions
      assume (forall x_2_1: Ref, i_1: int ::
        { QPMask[null, P(x_2_1, i_1)] }
        (invRecv10(x_2_1, i_1) == y && NoPerm < FullPerm) && qpRange10(x_2_1, i_1) ==> (NoPerm < FullPerm ==> invRecv10(x_2_1, i_1) == x_2_1 && 5 == i_1) && QPMask[null, P(x_2_1, i_1)] == Mask[null, P(x_2_1, i_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall x_2_1: Ref, i_1: int ::
        { QPMask[null, P(x_2_1, i_1)] }
        !((invRecv10(x_2_1, i_1) == y && NoPerm < FullPerm) && qpRange10(x_2_1, i_1)) ==> QPMask[null, P(x_2_1, i_1)] == Mask[null, P(x_2_1, i_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale x != y -- forpermQP.vpr@68.5--68.18
    assume x != y;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm a: Ref [P(a, 10)] :: a == x) -- forpermQP.vpr@70.5--70.46
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forperm a: Ref [P(a, 10)] :: a == x)
      if (*) {
        if (HasDirectPerm(Mask, null, P(a_19, 10))) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access P(a, 10) (forpermQP.vpr@70.12--70.46) [52960]"}
            HasDirectPerm(ExhaleWellDef0Mask, null, P(a_19, 10));
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm a: Ref [P(a, 10)] :: a == x) might not hold. (forpermQP.vpr@70.12--70.46) [52961]"}
      (forall a_7: Ref ::
      { Mask[null, P(a_7, 10)] } { Heap[null, P(a_7, 10)] }
      HasDirectPerm(Mask, null, P(a_7, 10)) ==> a_7 == x
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m7
// ==================================================

procedure m7(xs: (Set Ref), ys: (Set Ref), zs: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var QPMask: MaskType;
  var Labellhs4Mask: MaskType;
  var Labellhs4Heap: HeapType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var Labellhs5Mask: MaskType;
  var Labellhs5Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var a_20: Perm;
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
  
  // -- Translating statement: inhale (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write)) --*
  //   (forall y: Ref :: { (y in ys) } (y in ys) ==> acc(y.f, write)) -- forpermQP.vpr@74.5--74.95
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write)) --* (forall y: Ref :: { (y in ys) } (y in ys) ==> acc(y.f, write))
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        
        // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write))
          if (*) {
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Inhale might fail. Quantified resource x.f might not be injective. (forpermQP.vpr@74.12--74.95) [52962]"}
          (forall x_1: Ref, x_1_1: Ref ::
          
          (((x_1 != x_1_1 && xs[x_1]) && xs[x_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
        );
        
        // -- Define Inverse Function
          assume (forall x_1: Ref ::
            { WandDefLHSHeap[x_1, f_7] } { QPMask[x_1, f_7] } { xs[x_1] }
            xs[x_1] && NoPerm < FullPerm ==> qpRange11(x_1) && invRecv11(x_1) == x_1
          );
          assume (forall o_9: Ref ::
            { invRecv11(o_9) }
            (xs[invRecv11(o_9)] && NoPerm < FullPerm) && qpRange11(o_9) ==> invRecv11(o_9) == o_9
          );
        
        // -- Assume set of fields is nonNull
          assume (forall x_1: Ref ::
            { WandDefLHSHeap[x_1, f_7] } { QPMask[x_1, f_7] } { xs[x_1] }
            xs[x_1] ==> x_1 != null
          );
        
        // -- Define permissions
          assume (forall o_9: Ref ::
            { QPMask[o_9, f_7] }
            ((xs[invRecv11(o_9)] && NoPerm < FullPerm) && qpRange11(o_9) ==> (NoPerm < FullPerm ==> invRecv11(o_9) == o_9) && QPMask[o_9, f_7] == WandDefLHSMask[o_9, f_7] + FullPerm) && (!((xs[invRecv11(o_9)] && NoPerm < FullPerm) && qpRange11(o_9)) ==> QPMask[o_9, f_7] == WandDefLHSMask[o_9, f_7])
          );
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { WandDefLHSMask[o_9, f_5] } { QPMask[o_9, f_5] }
            f_5 != f_7 ==> WandDefLHSMask[o_9, f_5] == QPMask[o_9, f_5]
          );
        WandDefLHSMask := QPMask;
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs4 -- forpermQP.vpr@74.12--74.95
          lhs4:
          Labellhs4Mask := WandDefLHSMask;
          Labellhs4Heap := WandDefLHSHeap;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        
        // -- Check definedness of (forall y: Ref :: { (y in ys) } (y in ys) ==> acc(y.f, write))
          if (*) {
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Inhale might fail. Quantified resource y.f might not be injective. (forpermQP.vpr@74.12--74.95) [52963]"}
          (forall y_1: Ref, y_1_1: Ref ::
          
          (((y_1 != y_1_1 && ys[y_1]) && ys[y_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> y_1 != y_1_1
        );
        
        // -- Define Inverse Function
          assume (forall y_1: Ref ::
            { WandDefRHSHeap[y_1, f_7] } { QPMask[y_1, f_7] } { ys[y_1] }
            ys[y_1] && NoPerm < FullPerm ==> qpRange12(y_1) && invRecv12(y_1) == y_1
          );
          assume (forall o_9: Ref ::
            { invRecv12(o_9) }
            (ys[invRecv12(o_9)] && NoPerm < FullPerm) && qpRange12(o_9) ==> invRecv12(o_9) == o_9
          );
        
        // -- Assume set of fields is nonNull
          assume (forall y_1: Ref ::
            { WandDefRHSHeap[y_1, f_7] } { QPMask[y_1, f_7] } { ys[y_1] }
            ys[y_1] ==> y_1 != null
          );
        
        // -- Define permissions
          assume (forall o_9: Ref ::
            { QPMask[o_9, f_7] }
            ((ys[invRecv12(o_9)] && NoPerm < FullPerm) && qpRange12(o_9) ==> (NoPerm < FullPerm ==> invRecv12(o_9) == o_9) && QPMask[o_9, f_7] == WandDefRHSMask[o_9, f_7] + FullPerm) && (!((ys[invRecv12(o_9)] && NoPerm < FullPerm) && qpRange12(o_9)) ==> QPMask[o_9, f_7] == WandDefRHSMask[o_9, f_7])
          );
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { WandDefRHSMask[o_9, f_5] } { QPMask[o_9, f_5] }
            f_5 != f_7 ==> WandDefRHSMask[o_9, f_5] == QPMask[o_9, f_5]
          );
        WandDefRHSMask := QPMask;
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    Mask := Mask[null, wand_1(xs, FullPerm, ys, FullPerm):=Mask[null, wand_1(xs, FullPerm, ys, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall z: Ref :: { (z in zs) } (z in zs) ==> acc(z.f, write)) --*
  //   (forall y: Ref :: { (y in ys) } (y in ys) ==> acc(y.f, write)) -- forpermQP.vpr@75.5--75.95
    
    // -- Check definedness of (forall z: Ref :: { (z in zs) } (z in zs) ==> acc(z.f, write)) --* (forall y: Ref :: { (y in ys) } (y in ys) ==> acc(y.f, write))
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        
        // -- Check definedness of (forall z: Ref :: { (z in zs) } (z in zs) ==> acc(z.f, write))
          if (*) {
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Inhale might fail. Quantified resource z.f might not be injective. (forpermQP.vpr@75.12--75.95) [52964]"}
          (forall z_1: Ref, z_1_1: Ref ::
          
          (((z_1 != z_1_1 && zs[z_1]) && zs[z_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_1 != z_1_1
        );
        
        // -- Define Inverse Function
          assume (forall z_1: Ref ::
            { WandDefLHSHeap[z_1, f_7] } { QPMask[z_1, f_7] } { zs[z_1] }
            zs[z_1] && NoPerm < FullPerm ==> qpRange13(z_1) && invRecv13(z_1) == z_1
          );
          assume (forall o_9: Ref ::
            { invRecv13(o_9) }
            (zs[invRecv13(o_9)] && NoPerm < FullPerm) && qpRange13(o_9) ==> invRecv13(o_9) == o_9
          );
        
        // -- Assume set of fields is nonNull
          assume (forall z_1: Ref ::
            { WandDefLHSHeap[z_1, f_7] } { QPMask[z_1, f_7] } { zs[z_1] }
            zs[z_1] ==> z_1 != null
          );
        
        // -- Define permissions
          assume (forall o_9: Ref ::
            { QPMask[o_9, f_7] }
            ((zs[invRecv13(o_9)] && NoPerm < FullPerm) && qpRange13(o_9) ==> (NoPerm < FullPerm ==> invRecv13(o_9) == o_9) && QPMask[o_9, f_7] == WandDefLHSMask[o_9, f_7] + FullPerm) && (!((zs[invRecv13(o_9)] && NoPerm < FullPerm) && qpRange13(o_9)) ==> QPMask[o_9, f_7] == WandDefLHSMask[o_9, f_7])
          );
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { WandDefLHSMask[o_9, f_5] } { QPMask[o_9, f_5] }
            f_5 != f_7 ==> WandDefLHSMask[o_9, f_5] == QPMask[o_9, f_5]
          );
        WandDefLHSMask := QPMask;
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs5 -- forpermQP.vpr@75.12--75.95
          lhs5:
          Labellhs5Mask := WandDefLHSMask;
          Labellhs5Heap := WandDefLHSHeap;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        
        // -- Check definedness of (forall y: Ref :: { (y in ys) } (y in ys) ==> acc(y.f, write))
          if (*) {
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Inhale might fail. Quantified resource y.f might not be injective. (forpermQP.vpr@75.12--75.95) [52965]"}
          (forall y_3_2: Ref, y_3_3: Ref ::
          
          (((y_3_2 != y_3_3 && ys[y_3_2]) && ys[y_3_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> y_3_2 != y_3_3
        );
        
        // -- Define Inverse Function
          assume (forall y_3_2: Ref ::
            { WandDefRHSHeap[y_3_2, f_7] } { QPMask[y_3_2, f_7] } { ys[y_3_2] }
            ys[y_3_2] && NoPerm < FullPerm ==> qpRange14(y_3_2) && invRecv14(y_3_2) == y_3_2
          );
          assume (forall o_9: Ref ::
            { invRecv14(o_9) }
            (ys[invRecv14(o_9)] && NoPerm < FullPerm) && qpRange14(o_9) ==> invRecv14(o_9) == o_9
          );
        
        // -- Assume set of fields is nonNull
          assume (forall y_3_2: Ref ::
            { WandDefRHSHeap[y_3_2, f_7] } { QPMask[y_3_2, f_7] } { ys[y_3_2] }
            ys[y_3_2] ==> y_3_2 != null
          );
        
        // -- Define permissions
          assume (forall o_9: Ref ::
            { QPMask[o_9, f_7] }
            ((ys[invRecv14(o_9)] && NoPerm < FullPerm) && qpRange14(o_9) ==> (NoPerm < FullPerm ==> invRecv14(o_9) == o_9) && QPMask[o_9, f_7] == WandDefRHSMask[o_9, f_7] + FullPerm) && (!((ys[invRecv14(o_9)] && NoPerm < FullPerm) && qpRange14(o_9)) ==> QPMask[o_9, f_7] == WandDefRHSMask[o_9, f_7])
          );
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { WandDefRHSMask[o_9, f_5] } { QPMask[o_9, f_5] }
            f_5 != f_7 ==> WandDefRHSMask[o_9, f_5] == QPMask[o_9, f_5]
          );
        WandDefRHSMask := QPMask;
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    Mask := Mask[null, wand_1(zs, FullPerm, ys, FullPerm):=Mask[null, wand_1(zs, FullPerm, ys, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm
  //     a: Perm [(forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, a)) --*
  //     (forall y: Ref :: { (y in ys) } (y in ys) ==> acc(y.f, a))] :: a ==
  //     write) -- forpermQP.vpr@77.5--77.133
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forperm a: Perm [(forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, a)) --* (forall y: Ref :: { (y in ys) } (y in ys) ==> acc(y.f, a))] :: a == write)
      if (*) {
        if (HasDirectPerm(Mask, null, wand_2(xs, a_20, ys, a_20))) {
          if (*) {
            havoc WandDefLHSHeap;
            WandDefLHSMask := ZeroMask;
            
            // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, a))
              if (*) {
                assume false;
              }
            havoc QPMask;
            assert {:msg "  Assert might fail. Quantified resource x.f might not be injective. (forpermQP.vpr@77.12--77.133) [52966]"}
              (forall x_3: Ref, x_3_1: Ref ::
              
              (((x_3 != x_3_1 && xs[x_3]) && xs[x_3_1]) && NoPerm < a_20) && NoPerm < a_20 ==> x_3 != x_3_1
            );
            
            // -- Define Inverse Function
              assume (forall x_3: Ref ::
                { WandDefLHSHeap[x_3, f_7] } { QPMask[x_3, f_7] } { xs[x_3] }
                xs[x_3] && NoPerm < a_20 ==> qpRange15(x_3) && invRecv15(x_3) == x_3
              );
              assume (forall o_9: Ref ::
                { invRecv15(o_9) }
                (xs[invRecv15(o_9)] && NoPerm < a_20) && qpRange15(o_9) ==> invRecv15(o_9) == o_9
              );
            // Check that permission expression is non-negative for all fields
            assert {:msg "  Assert might fail. Fraction a might be negative. (forpermQP.vpr@77.12--77.133) [52967]"}
              (forall x_3: Ref ::
              { WandDefLHSHeap[x_3, f_7] } { QPMask[x_3, f_7] } { xs[x_3] }
              xs[x_3] ==> a_20 >= NoPerm
            );
            
            // -- Assume set of fields is nonNull
              assume (forall x_3: Ref ::
                { WandDefLHSHeap[x_3, f_7] } { QPMask[x_3, f_7] } { xs[x_3] }
                xs[x_3] && a_20 > NoPerm ==> x_3 != null
              );
            
            // -- Define permissions
              assume (forall o_9: Ref ::
                { QPMask[o_9, f_7] }
                ((xs[invRecv15(o_9)] && NoPerm < a_20) && qpRange15(o_9) ==> (NoPerm < a_20 ==> invRecv15(o_9) == o_9) && QPMask[o_9, f_7] == WandDefLHSMask[o_9, f_7] + a_20) && (!((xs[invRecv15(o_9)] && NoPerm < a_20) && qpRange15(o_9)) ==> QPMask[o_9, f_7] == WandDefLHSMask[o_9, f_7])
              );
              assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
                { WandDefLHSMask[o_9, f_5] } { QPMask[o_9, f_5] }
                f_5 != f_7 ==> WandDefLHSMask[o_9, f_5] == QPMask[o_9, f_5]
              );
            WandDefLHSMask := QPMask;
            assume state(WandDefLHSHeap, WandDefLHSMask);
            assume state(WandDefLHSHeap, WandDefLHSMask);
            
            // -- Translating statement: label lhs6 -- forpermQP.vpr@77.29--77.118
              lhs6:
              Labellhs6Mask := WandDefLHSMask;
              Labellhs6Heap := WandDefLHSHeap;
              assume state(WandDefLHSHeap, WandDefLHSMask);
            havoc WandDefRHSHeap;
            WandDefRHSMask := ZeroMask;
            
            // -- Check definedness of (forall y: Ref :: { (y in ys) } (y in ys) ==> acc(y.f, a))
              if (*) {
                assume false;
              }
            havoc QPMask;
            assert {:msg "  Assert might fail. Quantified resource y.f might not be injective. (forpermQP.vpr@77.12--77.133) [52968]"}
              (forall y_5_2: Ref, y_5_3: Ref ::
              
              (((y_5_2 != y_5_3 && ys[y_5_2]) && ys[y_5_3]) && NoPerm < a_20) && NoPerm < a_20 ==> y_5_2 != y_5_3
            );
            
            // -- Define Inverse Function
              assume (forall y_5_2: Ref ::
                { WandDefRHSHeap[y_5_2, f_7] } { QPMask[y_5_2, f_7] } { ys[y_5_2] }
                ys[y_5_2] && NoPerm < a_20 ==> qpRange16(y_5_2) && invRecv16(y_5_2) == y_5_2
              );
              assume (forall o_9: Ref ::
                { invRecv16(o_9) }
                (ys[invRecv16(o_9)] && NoPerm < a_20) && qpRange16(o_9) ==> invRecv16(o_9) == o_9
              );
            // Check that permission expression is non-negative for all fields
            assert {:msg "  Assert might fail. Fraction a might be negative. (forpermQP.vpr@77.12--77.133) [52969]"}
              (forall y_5_2: Ref ::
              { WandDefRHSHeap[y_5_2, f_7] } { QPMask[y_5_2, f_7] } { ys[y_5_2] }
              ys[y_5_2] ==> a_20 >= NoPerm
            );
            
            // -- Assume set of fields is nonNull
              assume (forall y_5_2: Ref ::
                { WandDefRHSHeap[y_5_2, f_7] } { QPMask[y_5_2, f_7] } { ys[y_5_2] }
                ys[y_5_2] && a_20 > NoPerm ==> y_5_2 != null
              );
            
            // -- Define permissions
              assume (forall o_9: Ref ::
                { QPMask[o_9, f_7] }
                ((ys[invRecv16(o_9)] && NoPerm < a_20) && qpRange16(o_9) ==> (NoPerm < a_20 ==> invRecv16(o_9) == o_9) && QPMask[o_9, f_7] == WandDefRHSMask[o_9, f_7] + a_20) && (!((ys[invRecv16(o_9)] && NoPerm < a_20) && qpRange16(o_9)) ==> QPMask[o_9, f_7] == WandDefRHSMask[o_9, f_7])
              );
              assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
                { WandDefRHSMask[o_9, f_5] } { QPMask[o_9, f_5] }
                f_5 != f_7 ==> WandDefRHSMask[o_9, f_5] == QPMask[o_9, f_5]
              );
            WandDefRHSMask := QPMask;
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume false;
          }
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm a: Perm [(forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, a)) --* (forall y: Ref :: { (y in ys) } (y in ys) ==> acc(y.f, a))] :: a == write) might not hold. (forpermQP.vpr@77.12--77.133) [52970]"}
      (forall a_1_1: Perm ::
      { Mask[null, wand_2(xs, a_1_1, ys, a_1_1)] } { Heap[null, wand_2(xs, a_1_1, ys, a_1_1)] }
      HasDirectPerm(Mask, null, wand_2(xs, a_1_1, ys, a_1_1)) ==> a_1_1 == FullPerm
    );
    assume state(Heap, Mask);
}