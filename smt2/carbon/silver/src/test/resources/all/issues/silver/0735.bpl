// 
// Translation of Viper program.
// 
// Date:         2024-12-29 15:45:45
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silver/0735.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silver/0735-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_12: Ref, f_16: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_12, f_16] }
  Heap[o_12, $allocated] ==> Heap[Heap[o_12, f_16], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IdenticalOnKnownLocationsLiberal(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
function  SumHeap(Heap: HeapType, Heap1: HeapType, mask1: MaskType, Heap2: HeapType, mask2: MaskType): bool;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_46: Ref, f_37: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_46, f_37] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_46, f_37) ==> Heap[o_46, f_37] == ExhaleHeap[o_46, f_37]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_22), ExhaleHeap[null, PredicateMaskField(pm_f_22)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsPredicateField(pm_f_22) ==> Heap[null, PredicateMaskField(pm_f_22)] == ExhaleHeap[null, PredicateMaskField(pm_f_22)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_22) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsPredicateField(pm_f_22) ==> (forall <A, B> o2_22: Ref, f_37: (Field A B) ::
    { ExhaleHeap[o2_22, f_37] }
    Heap[null, PredicateMaskField(pm_f_22)][o2_22, f_37] ==> Heap[o2_22, f_37] == ExhaleHeap[o2_22, f_37]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_22), ExhaleHeap[null, WandMaskField(pm_f_22)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsWandField(pm_f_22) ==> Heap[null, WandMaskField(pm_f_22)] == ExhaleHeap[null, WandMaskField(pm_f_22)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_22) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsWandField(pm_f_22) ==> (forall <A, B> o2_22: Ref, f_37: (Field A B) ::
    { ExhaleHeap[o2_22, f_37] }
    Heap[null, WandMaskField(pm_f_22)][o2_22, f_37] ==> Heap[o2_22, f_37] == ExhaleHeap[o2_22, f_37]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_46: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_46, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_46, $allocated] ==> ExhaleHeap[o_46, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_12: Ref, f_24: (Field A B), v: B ::
  { Heap[o_12, f_24:=v] }
  succHeap(Heap, Heap[o_12, f_24:=v])
);
// IdenticalOnKnownLocations Heaps are Successor Heaps
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> succHeap(Heap, ExhaleHeap)
);
// IdenticalOnKnownLiberalLocations Heaps are Successor Heaps
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType ::
  { IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask) }
  IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask) ==> succHeap(Heap, ExhaleHeap)
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
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_34: Ref, f_40: (Field A B) ::
  { IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask), ExhaleHeap[o_34, f_40] }
  IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_34, f_40) ==> Heap[o_34, f_40] == ExhaleHeap[o_34, f_40]
);
// Frame all predicate mask locations of predicates with direct permission. But don't propagate information  of locations that are not known-folded to allow for equating with multiple different (but compatible) heaps
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_16: (Field C FrameType) ::
  { IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_16), ExhaleHeap[null, PredicateMaskField(pm_f_16)] }
  IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_16) && IsPredicateField(pm_f_16) ==> (forall <A, B> o2_16: Ref, f_40: (Field A B) ::
    { ExhaleHeap[null, PredicateMaskField(pm_f_16)][o2_16, f_40] }
    Heap[null, PredicateMaskField(pm_f_16)][o2_16, f_40] ==> ExhaleHeap[null, PredicateMaskField(pm_f_16)][o2_16, f_40]
  )
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_16: (Field C FrameType) ::
  { IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_16) }
  IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_16) && IsPredicateField(pm_f_16) ==> (forall <A, B> o2_16: Ref, f_40: (Field A B) ::
    { ExhaleHeap[o2_16, f_40] }
    Heap[null, PredicateMaskField(pm_f_16)][o2_16, f_40] ==> Heap[o2_16, f_40] == ExhaleHeap[o2_16, f_40]
  )
);
// Frame all wand mask locations of wands with direct permission (but don't propagate information about locations that are not known-folded)
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_16: (Field C FrameType) ::
  { IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask), IsWandField(pm_f_16), ExhaleHeap[null, WandMaskField(pm_f_16)] }
  IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_16) && IsWandField(pm_f_16) ==> (forall <A, B> o2_16: Ref, f_40: (Field A B) ::
    { ExhaleHeap[null, WandMaskField(pm_f_16)][o2_16, f_40] }
    Heap[null, WandMaskField(pm_f_16)][o2_16, f_40] ==> ExhaleHeap[null, WandMaskField(pm_f_16)][o2_16, f_40]
  )
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_16: (Field C FrameType) ::
  { IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask), IsWandField(pm_f_16) }
  IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_16) && IsWandField(pm_f_16) ==> (forall <A, B> o2_16: Ref, f_40: (Field A B) ::
    { ExhaleHeap[o2_16, f_40] }
    Heap[null, WandMaskField(pm_f_16)][o2_16, f_40] ==> Heap[o2_16, f_40] == ExhaleHeap[o2_16, f_40]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_34: Ref ::
  { IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask), ExhaleHeap[o_34, $allocated] }
  IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask) ==> Heap[o_34, $allocated] ==> ExhaleHeap[o_34, $allocated]
);
// ==================================================
// Sum of heaps
// ==================================================

axiom (forall Heap: HeapType, Heap1: HeapType, Mask1: MaskType, Heap2: HeapType, Mask2: MaskType ::
  { SumHeap(Heap, Heap1, Mask1, Heap2, Mask2) }
  SumHeap(Heap, Heap1, Mask1, Heap2, Mask2) <==> IdenticalOnKnownLocationsLiberal(Heap1, Heap, Mask1) && IdenticalOnKnownLocationsLiberal(Heap2, Heap, Mask2)
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
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 3: Level
// - height 2: int___gt__
// - height 1: _isDefined
// - height 0: __prim__bool___box__, bool___unbox__, __prim__int___box__, int___unbox__
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
// Preamble of Sequence module.
// ==================================================

 // diff 0 implemented (no difference)
 // diff 1 implemented (fixes test5 in sequences.sil)
 // diff 2 implemented (fixes m01 and m03 in quantifiedpermissions/issues/issue_0064)
 // diff 3 implemented (no difference)
 // diff 4 implemented (no difference)
 // diff 5 implemented (fixes colourings0 in sequence-incompletenesses test case)
 // diff 6 implemented (no difference)
 // diff 7 implemented
 // diff 8 implemented (allows for contains triggering, without destroying performance of e.g. functions/linkedlists test case)
 // diff 11 implemented
 // diff 13 implemented, for now (may reduce completeness, but there's a known matching loop when the first drop amount is 0); another option would be to add !=0 as an explicit condition
 // diff 14 implemented: eliminate index over take/drop for trivial cases (to avoid matching loops when e.g. s[i..] == s is known)
 // diff 16 implemented: remove general cases of equality-learning between take/drop/append subsequences; only allow when take/drop are at top level (this affects linkedlists test case)
 // diff 17: removing a potential matching loop where more than one axiom applies to a Seq#Take(Seq#Append(s,t),n) term
// START BASICS
type Seq T;

function Seq#Length<T>(Seq T): int;
axiom (forall<T> s: Seq T :: { Seq#Length(s) } 0 <= Seq#Length(s));

function Seq#Empty<T>(): Seq T;
axiom (forall<T> :: Seq#Length(Seq#Empty(): Seq T) == 0);
axiom (forall<T> s: Seq T :: { Seq#Length(s) } Seq#Length(s) == 0 ==> s == Seq#Empty());

function Seq#Singleton<T>(T): Seq T;
//axiom (forall<T> t: T :: { Seq#Length(Seq#Singleton(t)) } Seq#Length(Seq#Singleton(t)) == 1);// (diff 2 (old))
axiom (forall<T> t: T :: { Seq#Singleton(t) } Seq#Length(Seq#Singleton(t)) == 1);// (diff 2: changed trigger)

function Seq#Append<T>(Seq T, Seq T): Seq T;
axiom (forall<T> s0: Seq T, s1: Seq T :: { Seq#Length(Seq#Append(s0,s1)) }
s0 != Seq#Empty() && s1 != Seq#Empty() ==> //diff 11: consider removing constraints
  Seq#Length(Seq#Append(s0,s1)) == Seq#Length(s0) + Seq#Length(s1));

//axiom (forall<T> s: Seq T :: { Seq#Append(Seq#Empty(),s) } Seq#Append(Seq#Empty(),s) == s); // (diff 11: switched to double-quantified version)
//axiom (forall<T> s: Seq T :: { Seq#Append(s,Seq#Empty()) } Seq#Append(s,Seq#Empty()) == s); // (diff 11: switched to double-quantified version)
axiom (forall<T> s0: Seq T, s1: Seq T :: { Seq#Append(s0,s1) } (s0 == Seq#Empty() ==> Seq#Append(s0,s1) == s1) && (s1 == Seq#Empty() ==> Seq#Append(s0,s1) == s0)); // diff 11: switched to double-quantified version

function Seq#Index<T>(Seq T, int): T;
//axiom (forall<T> t: T :: { Seq#Index(Seq#Singleton(t), 0) } Seq#Index(Seq#Singleton(t), 0) == t); // (diff 2 (old))
axiom (forall<T> t: T :: { Seq#Singleton(t) } Seq#Index(Seq#Singleton(t), 0) == t); // (diff 2: changed trigger)

// END BASICS

// START INDEX-APPEND-UPDATE

// extra addition function used to force equalities into the e-graph
function Seq#Add(int, int) : int;
axiom (forall i: int, j: int :: {Seq#Add(i,j)} Seq#Add(i,j) == i + j);
function Seq#Sub(int, int) : int;
axiom (forall i: int, j: int :: {Seq#Sub(i,j)} Seq#Sub(i,j) == i - j);

// (diff 3 (old))
//axiom (forall<T> s0: Seq T, s1: Seq T, n: int :: { Seq#Index(Seq#Append(s0,s1), n) } // {:weight 25} // AS: dropped weight
//  s0 != Seq#Empty() && s1 != Seq#Empty() ==>
//  ((n < Seq#Length(s0) ==> Seq#Index(Seq#Append(s0,s1), n) == Seq#Index(s0, n)) &&
//  (Seq#Length(s0) <= n ==> Seq#Index(Seq#Append(s0,s1), n) == Seq#Index(s1, n - Seq#Length(s0)))));

// (diff 3: split axiom, added constraints, replace arithmetic) // diff 11: consider removing constraints
axiom (forall<T> s0: Seq T, s1: Seq T, n: int :: { Seq#Index(Seq#Append(s0,s1), n) } { Seq#Index(s0, n), Seq#Append(s0,s1) } // AS: added alternative trigger
  (s0 != Seq#Empty() && s1 != Seq#Empty() && 0 <= n && n < Seq#Length(s0) ==> Seq#Index(Seq#Append(s0,s1), n) == Seq#Index(s0, n)));
axiom (forall<T> s0: Seq T, s1: Seq T, n: int :: { Seq#Index(Seq#Append(s0,s1), n) } // term below breaks loops
  s0 != Seq#Empty() && s1 != Seq#Empty() && Seq#Length(s0) <= n && n < Seq#Length(Seq#Append(s0,s1)) ==> Seq#Add(Seq#Sub(n,Seq#Length(s0)),Seq#Length(s0)) == n && Seq#Index(Seq#Append(s0,s1), n) == Seq#Index(s1, Seq#Sub(n,Seq#Length(s0))));
// AS: added "reverse triggering" versions of the axioms
axiom (forall<T> s0: Seq T, s1: Seq T, m: int :: { Seq#Index(s1, m), Seq#Append(s0,s1)}  // m == n-|s0|, n == m + |s0|
  s0 != Seq#Empty() && s1 != Seq#Empty() && 0 <= m && m < Seq#Length(s1) ==> Seq#Sub(Seq#Add(m,Seq#Length(s0)),Seq#Length(s0)) == m && Seq#Index(Seq#Append(s0,s1), Seq#Add(m,Seq#Length(s0))) == Seq#Index(s1, m));

function Seq#Update<T>(Seq T, int, T): Seq T;
axiom (forall<T> s: Seq T, i: int, v: T :: { Seq#Length(Seq#Update(s,i,v)) } {Seq#Length(s),Seq#Update(s,i,v)} // (diff 4: added trigger)
  0 <= i && i < Seq#Length(s) ==> Seq#Length(Seq#Update(s,i,v)) == Seq#Length(s));
axiom (forall<T> s: Seq T, i: int, v: T, n: int :: { Seq#Index(Seq#Update(s,i,v),n) } { Seq#Index(s,n), Seq#Update(s,i,v) }  // (diff 4: added trigger)
  0 <= n && n < Seq#Length(s) ==>
    (i == n ==> Seq#Index(Seq#Update(s,i,v),n) == v) &&
    (i != n ==> Seq#Index(Seq#Update(s,i,v),n) == Seq#Index(s,n)));

// END INDEX-APPEND-UPDATE

// START TAKE/DROP

function Seq#Take<T>(s: Seq T, howMany: int): Seq T;
// AS: added triggers
axiom (forall<T> s: Seq T, n: int :: { Seq#Length(Seq#Take(s,n)) } { Seq#Take(s,n), Seq#Length(s)} // (diff 7: add trigger)
  (0 <= n ==>
    (n <= Seq#Length(s) ==> Seq#Length(Seq#Take(s,n)) == n) &&
    (Seq#Length(s) < n ==> Seq#Length(Seq#Take(s,n)) == Seq#Length(s)))
    &&
   (n < 0 ==> Seq#Length(Seq#Take(s,n)) == 0)); // (diff 7: added case for n < 0)

// ** AS: 2nd of 3 axioms which get instantiated very often in certain problems involving take/drop/append
axiom (forall<T> s: Seq T, n: int, j: int :: { Seq#Index(Seq#Take(s,n), j) } {Seq#Index(s,j), Seq#Take(s,n)} // (diff 0: (was already done)) : add trigger // {:weight 25} // AS: dropped weight
  0 <= j && j < n && j < Seq#Length(s) ==>
    Seq#Index(Seq#Take(s,n), j) == Seq#Index(s, j));

function Seq#Drop<T>(s: Seq T, howMany: int): Seq T;
axiom (forall<T> s: Seq T, n: int :: { Seq#Length(Seq#Drop(s,n)) } {Seq#Length(s), Seq#Drop(s,n)} // (diff 5: added trigger, exchange arithmetic)
  (0 <= n ==>
    (n <= Seq#Length(s) ==> Seq#Length(Seq#Drop(s,n)) == Seq#Length(s) - n) &&
    (Seq#Length(s) < n ==> Seq#Length(Seq#Drop(s,n)) == 0))
    &&
  (n < 0 ==> Seq#Length(Seq#Drop(s,n)) == Seq#Length(s)) // (diff 7: added cases for n < 0)
    );

// ** AS: 3rd of 3 axioms which get instantiated very often in certain problems involving take/drop/append
// diff 5 (old)
//axiom (forall<T> s: Seq T, n: int, j: int :: { Seq#Index(Seq#Drop(s,n), j) } // {:weight 25} // AS: dropped weight
//  0 <= n && 0 <= j && j < Seq#Length(s)-n ==>
//    Seq#Index(Seq#Drop(s,n), j) == Seq#Index(s, j+n));
//
// diff already added // diff -1: try removing this axiom and checking effect
//axiom (forall<T> s: Seq T, n: int, k: int :: { Seq#Drop(s,n), Seq#Index(s,k) } // AS: alternative triggering for above axiom
//  0 <= n && n <= k && k < Seq#Length(s) ==>
//    Seq#Index(Seq#Drop(s,n), k-n) == Seq#Index(s, k));

// diff 5: split axiom, added triggering case, exhanged arithmetic

axiom (forall<T> s: Seq T, n: int, j: int :: { Seq#Index(Seq#Drop(s,n), j) } // {:weight 25} // AS: dropped weight
  0 < n && 0 <= j && j < Seq#Length(s)-n ==> // diff 14: change 0 <= n to 0 < n
   Seq#Sub(Seq#Add(j,n),n) == j && Seq#Index(Seq#Drop(s,n), j) == Seq#Index(s, Seq#Add(j,n)));

axiom (forall<T> s: Seq T, n: int, i: int :: { Seq#Drop(s,n), Seq#Index(s,i) }
  0 < n && n <= i && i < Seq#Length(s) ==> // diff 14: change 0 <= n to 0 < n
  Seq#Add(Seq#Sub(i,n),n) == i && Seq#Index(Seq#Drop(s,n), Seq#Sub(i,n)) == Seq#Index(s, i)); // i = j + n, j = i - n

// (diff 6a: add axioms for the 0 > n case)
//axiom (forall<T> s: Seq T, n: int, j: int :: { Seq#Index(Seq#Drop(s,n), j) } // {:weight 25} // AS: dropped weight
//  n <= 0 && 0 <= j && j < Seq#Length(s) ==> // diff 14: change n < 0 to n <= 0
//    Seq#Index(Seq#Drop(s,n), j) == Seq#Index(s, j));

// (diff 6a: add axioms for the 0 > n case)
//axiom (forall<T> s: Seq T, n: int, i: int :: { Seq#Drop(s,n), Seq#Index(s,i) }
//  n <= 0 && 0 <= i && i < Seq#Length(s) ==> // diff 14: change n < 0 to n <= 0
//  Seq#Index(Seq#Drop(s,n), i) == Seq#Index(s, i)); // i = j + n, j = i - n

// ** AS: We dropped the weak trigger on this axiom. One option is to strengthen the triggers:
//axiom (forall<T> s, t: Seq T ::
// // { Seq#Append(s, t) }
//  {Seq#Take(Seq#Append(s, t), Seq#Length(s))}{Seq#Drop(Seq#Append(s, t), Seq#Length(s))}
//  Seq#Take(Seq#Append(s, t), Seq#Length(s)) == s &&
//  Seq#Drop(Seq#Append(s, t), Seq#Length(s)) == t);

// ** AS: another option is to split the axiom (for some reason, this seems in some cases to perform slightly less well (but this could be random):
//axiom (forall<T> s, t: Seq T ::
// { Seq#Take(Seq#Append(s, t), Seq#Length(s)) }
//  Seq#Take(Seq#Append(s, t), Seq#Length(s)) == s);

//axiom (forall<T> s, t: Seq T ::
// { Seq#Drop(Seq#Append(s, t), Seq#Length(s)) }
//  Seq#Drop(Seq#Append(s, t), Seq#Length(s)) == t);

// (diff 6b: remove these?)
/* Removed: at present, Carbon doesn't generate Seq#Update (but desugars via take/drop/append)
// Commutability of Take and Drop with Update.
axiom (forall<T> s: Seq T, i: int, v: T, n: int ::
        { Seq#Take(Seq#Update(s, i, v), n) }
//        0 <= i && i < n && n < Seq#Length(s) ==> Seq#Take(Seq#Update(s, i, v), n) == Seq#Update(Seq#Take(s, n), i, v) );
        0 <= i && i < n && i < Seq#Length(s) ==> Seq#Take(Seq#Update(s, i, v), n) == Seq#Update(Seq#Take(s, n), i, v) );
axiom (forall<T> s: Seq T, i: int, v: T, n: int ::
        { Seq#Take(Seq#Update(s, i, v), n) }
        n <= i && i < Seq#Length(s) ==> Seq#Take(Seq#Update(s, i, v), n) == Seq#Take(s, n));
axiom (forall<T> s: Seq T, i: int, v: T, n: int ::
        { Seq#Drop(Seq#Update(s, i, v), n) }
//        0 <= n && n <= i && i < Seq#Length(s) ==> Seq#Drop(Seq#Update(s, i, v), n) == Seq#Update(Seq#Drop(s, n), i-n, v) );
        0 <= i && n <=i && i < Seq#Length(s) ==> Seq#Drop(Seq#Update(s, i, v), n) == Seq#Update(Seq#Drop(s, n), i-n, v) );
axiom (forall<T> s: Seq T, i: int, v: T, n: int ::
        { Seq#Drop(Seq#Update(s, i, v), n) }
//        0 <= i && i < n && n < Seq#Length(s) ==> Seq#Drop(Seq#Update(s, i, v), n) == Seq#Drop(s, n));
        0 <= i && i < n && i < Seq#Length(s) ==> Seq#Drop(Seq#Update(s, i, v), n) == Seq#Drop(s, n));
*/

axiom (forall<T> s: Seq T, t: Seq T, n:int ::
  { Seq#Take(Seq#Append(s,t),n) } //{Seq#Append(s,t), Seq#Take(s,n)} // diff 16: temporarily dropped general case of these
  0 < n && n <= Seq#Length(s) ==> Seq#Take(Seq#Append(s,t),n) == Seq#Take(s,n));

// diff 17: added a conjunct on the lhs of the implication
axiom (forall<T> s: Seq T, t: Seq T, n:int ::
  { Seq#Take(Seq#Append(s,t),n) }
  n > 0 && n > Seq#Length(s) && n < Seq#Length(Seq#Append(s,t)) ==> Seq#Add(Seq#Sub(n,Seq#Length(s)),Seq#Length(s)) == n && Seq#Take(Seq#Append(s,t),n) == Seq#Append(s,Seq#Take(t,Seq#Sub(n,Seq#Length(s)))));

// diff 16: temporarily dropped general case of these
//axiom (forall<T> s: Seq T, t: Seq T, m:int ::
//  { Seq#Append(s,Seq#Take(t,m)) } //{Seq#Append(s,t), Seq#Take(t,m)} // diff 16: temporarily dropped general case of these // reverse triggering version of above: m = n - |s|, n = m + |s|
//  m > 0 ==> Seq#Sub(Seq#Add(m,Seq#Length(s)),Seq#Length(s)) == m && Seq#Take(Seq#Append(s,t),Seq#Add(m,Seq#Length(s))) == Seq#Append(s,Seq#Take(t,m)));

axiom (forall<T> s: Seq T, t: Seq T, n:int ::
  { Seq#Drop(Seq#Append(s,t),n) } //{Seq#Append(s,t), Seq#Drop(s,n)} // diff 16: temporarily dropped general case of these
  0<n && n <= Seq#Length(s) ==> Seq#Drop(Seq#Append(s,t),n) == Seq#Append(Seq#Drop(s,n),t));

axiom (forall<T> s: Seq T, t: Seq T, n:int ::
  { Seq#Drop(Seq#Append(s,t),n) }
 n > 0 && n > Seq#Length(s) ==> Seq#Add(Seq#Sub(n,Seq#Length(s)),Seq#Length(s)) == n && Seq#Drop(Seq#Append(s,t),n) == Seq#Drop(t,Seq#Sub(n,Seq#Length(s))));

// diff 16: temporarily dropped general case of these
//axiom (forall<T> s: Seq T, t: Seq T, m:int ::
//  { Seq#Append(s,t),Seq#Drop(t,m) } // reverse triggering version of above: m = n - |s|, n = m + |s|
//  m > 0 ==> Seq#Sub(Seq#Add(m,Seq#Length(s)),Seq#Length(s)) == m && Seq#Drop(Seq#Append(s,t),Seq#Add(m,Seq#Length(s))) == Seq#Drop(t,m));

// Additional axioms about common things
axiom (forall<T> s: Seq T, n: int :: { Seq#Drop(s, n) } // ** NEW
        n <= 0 ==> Seq#Drop(s, n) == s); // (diff 1: try changing n==0 to n<=0 (should be ok))
axiom (forall<T> s: Seq T, n: int :: { Seq#Take(s, n) } // ** NEW
        n <= 0 ==> Seq#Take(s, n) == Seq#Empty());  // (diff 1: try changing n==0 to n<=0 (should be ok))
// diff 13: remove this?
//axiom (forall<T> s: Seq T, m, n: int :: { Seq#Drop(Seq#Drop(s, m), n) } // ** NEW - AS: could have bad triggering behaviour?
//        0 <= m && 0 <= n && m+n <= Seq#Length(s) ==>
//        Seq#Sub(Seq#Add(m,n),n) == m && Seq#Drop(Seq#Drop(s, m), n) == Seq#Drop(s, Seq#Add(m,n)));

// END TAKE/DROP

// START CONTAINS
// diff 8: skolemisation (old)
function Seq#Contains<T>(Seq T, T): bool;
function Seq#ContainsTrigger<T>(Seq T, T): bool; // usages of Contains inside quantifier triggers are replaced with this
function Seq#Skolem<T>(Seq T, T) : int; // skolem function for Seq#Contains // (diff 8: added)
axiom (forall<T> s: Seq T, x: T :: { Seq#Contains(s,x) }
  Seq#Contains(s,x) ==>
    (0 <= Seq#Skolem(s,x) && Seq#Skolem(s,x) < Seq#Length(s) && Seq#Index(s,Seq#Skolem(s,x)) == x)); // (diff 8: skolem function)
axiom (forall<T> s: Seq T, x: T, i:int :: { Seq#Contains(s,x), Seq#Index(s,i) } // only trigger if interested in the Contains term
    (0 <= i && i < Seq#Length(s) && Seq#Index(s,i) == x ==> Seq#Contains(s,x)));
axiom (forall<T> s: Seq T, i:int :: { Seq#Index(s,i) }
  (0 <= i && i < Seq#Length(s) ==> Seq#ContainsTrigger(s,Seq#Index(s,i))));
// ** AS: made one change here - changed type of x from ref to T
/*axiom (forall<T> x: T ::
  { Seq#Contains(Seq#Empty(), x) }
  !Seq#Contains(Seq#Empty(), x));
axiom (forall<T> s0: Seq T, s1: Seq T, x: T ::
  { Seq#Contains(Seq#Append(s0, s1), x) }
  Seq#Contains(Seq#Append(s0, s1), x) <==>
    Seq#Contains(s0, x) || Seq#Contains(s1, x));

axiom (forall<T> s: Seq T, n: int, x: T ::
  { Seq#Contains(Seq#Take(s, n), x) }
  Seq#Contains(Seq#Take(s, n), x) <==>
    (exists i: int :: { Seq#Index(s, i) }
      0 <= i && i < n && i < Seq#Length(s) && Seq#Index(s, i) == x));
axiom (forall<T> s: Seq T, n: int, x: T ::
  { Seq#Contains(Seq#Drop(s, n), x) }
  Seq#Contains(Seq#Drop(s, n), x) <==>
    (exists i: int :: { Seq#Index(s, i) }
      0 <= n && n <= i && i < Seq#Length(s) && Seq#Index(s, i) == x));
*/
// diff 8: skolemisation (new)
/*
function Seq#Skolem<T>(Seq T, T) : int; // skolem function for Seq#Contains
function Seq#SkolemContainsDrop<T>(Seq T, int, T) : int; // skolem function for Seq#Contains over drop
function Seq#SkolemContainsTake<T>(Seq T, int, T) : int; // skolem function for Seq#Contains over take

function Seq#Contains<T>(Seq T, T): bool;
axiom (forall<T> s: Seq T, x: T :: { Seq#Contains(s,x) }
  Seq#Contains(s,x) ==> s != Seq#Empty() && Seq#Length(s) > 0 && 0 <= Seq#Skolem(s,x) &&
    Seq#Skolem(s,x) < Seq#Length(s) && Seq#Index(s,Seq#Skolem(s,x)) == x);

// AS: note: this is an unusual axiom, but is basically the original
// Consider writing a version without the (precise) first trigger? Also see later versions
axiom (forall<T> s: Seq T, x: T, i:int :: { Seq#Contains(s,x), Seq#Index(s,i) }
  0 <= i && i < Seq#Length(s) && Seq#Index(s,i) == x ==> Seq#Contains(s,x));

// ** AS: made one change here - changed type of x from ref to T
axiom (forall<T> x: T ::
  { Seq#Contains(Seq#Empty(), x) }
  !Seq#Contains(Seq#Empty(), x));

// AS: Consider dropping this axiom?
axiom (forall<T> s0: Seq T, s1: Seq T, x: T ::
  { Seq#Contains(Seq#Append(s0, s1), x) } { Seq#Contains(s0,x), Seq#Append(s0,s1)} { Seq#Contains(s1,x), Seq#Append(s0,s1)} // AS: added triggers
  Seq#Contains(Seq#Append(s0, s1), x) <==>
    Seq#Contains(s0, x) || Seq#Contains(s1, x));

// AS: split axioms
axiom (forall<T> s: Seq T, n: int, x: T ::
  { Seq#Contains(Seq#Take(s, n), x) }
  Seq#Contains(Seq#Take(s, n), x) ==>
    (Seq#Take(s, n) != Seq#Empty() && Seq#Length(Seq#Take(s, n)) > 0 &&
     0 <= Seq#SkolemContainsTake(s, n, x) && Seq#SkolemContainsTake(s, n, x) < n &&
      Seq#SkolemContainsTake(s, n, x) < Seq#Length(s) &&
      Seq#Index(s, Seq#SkolemContainsTake(s, n, x)) == x));

axiom (forall<T> s: Seq T, n: int, x: T, i:int ::
  { Seq#Contains(Seq#Take(s, n), x), Seq#Index(s, i) }
    0 <= i && i < n && i < Seq#Length(s) && Seq#Index(s, i) == x ==>
     Seq#Contains(Seq#Take(s, n), x));

// AS: split axioms
axiom (forall<T> s: Seq T, n: int, x: T ::
  { Seq#Contains(Seq#Drop(s, n), x) }
  Seq#Contains(Seq#Drop(s, n), x) ==>
    ( 0 <= Seq#SkolemContainsDrop(s, n, x) && n <= Seq#SkolemContainsDrop(s, n, x) &&
      Seq#SkolemContainsDrop(s, n, x) < Seq#Length(s) &&
      Seq#Index(s, Seq#SkolemContainsDrop(s, n, x)) == x));

axiom (forall<T> s: Seq T, n: int, x: T, i:int ::
  { Seq#Contains(Seq#Drop(s, n), x), Seq#Index(s, i) }
  0 <= n && n <= i && i < Seq#Length(s) && Seq#Index(s, i) == x ==>
  Seq#Contains(Seq#Drop(s, n), x));
*/

// END CONTAINS

// START EQUALS

// diff 9 : skolemise equals (old)
function Seq#Equal<T>(Seq T, Seq T): bool;
/*axiom (forall<T> s0: Seq T, s1: Seq T :: { Seq#Equal(s0,s1) }
  Seq#Equal(s0,s1) <==>
    Seq#Length(s0) == Seq#Length(s1) &&
    (forall j: int :: { Seq#Index(s0,j) } { Seq#Index(s1,j) }
        0 <= j && j < Seq#Length(s0) ==> Seq#Index(s0,j) == Seq#Index(s1,j)));

axiom (forall<T> a: Seq T, b: Seq T :: { Seq#Equal(a,b) }  // extensionality axiom for sequences
  Seq#Equal(a,b) ==> a == b);
*/
// diff 9: skolemise equals (new)
// AS: split axiom
axiom (forall<T> s0: Seq T, s1: Seq T :: { Seq#Equal(s0,s1) }
  Seq#Equal(s0,s1) ==>
    Seq#Length(s0) == Seq#Length(s1) &&
    (forall j: int :: { Seq#Index(s0,j) } { Seq#Index(s1,j) }
        0 <= j && j < Seq#Length(s0) ==> Seq#Index(s0,j) == Seq#Index(s1,j)));

function Seq#SkolemDiff<T>(Seq T, Seq T) : int; // skolem function for Seq#Equals

axiom (forall<T> s0: Seq T, s1: Seq T :: { Seq#Equal(s0,s1) }
  (s0==s1 && Seq#Equal(s0,s1)) || (s0!=s1 && !Seq#Equal(s0,s1) && Seq#Length(s0) != Seq#Length(s1)) ||
        (s0 != s1 && !Seq#Equal(s0,s1) && Seq#Length(s0) == Seq#Length(s1) && Seq#SkolemDiff(s0,s1) == Seq#SkolemDiff(s1,s0) && 0 <= Seq#SkolemDiff(s0,s1) && Seq#SkolemDiff(s0,s1) < Seq#Length(s0) &&
         Seq#Index(s0,Seq#SkolemDiff(s0,s1)) != Seq#Index(s1,Seq#SkolemDiff(s0,s1))));

axiom (forall<T> a: Seq T, b: Seq T :: { Seq#Equal(a,b) }  // extensionality axiom for sequences
  Seq#Equal(a,b) ==> a == b);


// END EQUALS


// START EXTRAS

// extra stuff not in current Dafny Prelude

// diff 10: variant of trigger (maybe drop these?)
// old:
axiom (forall<T> x, y: T ::
  { Seq#Contains(Seq#Singleton(x),y) }
    Seq#Contains(Seq#Singleton(x),y) <==> x==y);
// new:
/*axiom (forall<T> x, y: T ::
  { Seq#Contains(Seq#Singleton(x),y) }
    Seq#Contains(Seq#Singleton(x),y) ==> x==y);

axiom (forall<T> x: T ::
  { Seq#Singleton(x) }
    Seq#Contains(Seq#Singleton(x),x));
*/

function Seq#Range(min: int, max: int) returns (Seq int);
axiom (forall min: int, max: int :: { Seq#Length(Seq#Range(min, max)) } (min < max ==> Seq#Length(Seq#Range(min, max)) == max-min) && (max <= min ==> Seq#Length(Seq#Range(min, max)) == 0));
axiom (forall min: int, max: int, j: int :: { Seq#Index(Seq#Range(min, max), j) } 0<=j && j<max-min ==> Seq#Index(Seq#Range(min, max), j) == min + j);

axiom (forall min: int, max: int, v: int :: {Seq#Contains(Seq#Range(min, max),v)}
  (Seq#Contains(Seq#Range(min, max),v) <==> min <= v && v < max));

// END EXTRAS


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
// Preamble of Map module.
// ==================================================


type Map U V;

// A Map is defined by three functions, Map#Domain, Map#Elements, and #Map#Card.

function Map#Domain<U,V>(Map U V) : Set U;

function Map#Elements<U,V>(Map U V) : [U]V;

function Map#Card<U,V>(Map U V) : int;

axiom (forall<U,V> m: Map U V :: { Map#Card(m) } 0 <= Map#Card(m));

// The set of Keys of a Map are available by Map#Domain, and the cardinality of that
// set is given by Map#Card.

  /* added second trigger set */

axiom (forall<U,V> m: Map U V :: { Set#Card(Map#Domain(m)) } { Map#Card(m) }
  Set#Card(Map#Domain(m)) == Map#Card(m));

// The set of Values of a Map can be obtained by the function Map#Values, which is
// defined as follows.  Remember, a Set is defined by membership (using Boogie's
// square brackets) and Map#Card, so we need to define what these mean for the Set
// returned by Map#Values.

function Map#Values<U,V>(Map U V) : Set V;

  /* split axiom into each direction */

axiom (forall<U,V> m: Map U V, v: V :: { Map#Values(m)[v] }
  Map#Values(m)[v] ==>
	(exists u: U :: { Map#Domain(m)[u] } { Map#Elements(m)[u] }
	  Map#Domain(m)[u] &&
    v == Map#Elements(m)[u]));

axiom (forall<U,V> m: Map U V, u: U ::  { Map#Elements(m)[u] } // { Map#Domain(m)[u] } // REMOVED this trigger due to a potential for matching loops
	  Map#Domain(m)[u]
    ==> Map#Values(m)[Map#Elements(m)[u]]);
// There's a potential for matching loops with the extra trigger if two maps have equal domains:
// v in range(m1); some k in dom(m1) = dom(m2) s.t. m1[k] = v; m2[k] in range(m2); some k' in dom(m2) s.t. m2[k'] = m2[k]

axiom (forall<U,V> m: Map U V, u: U ::  { Map#Domain(m)[u] } { Map#Elements(m)[u] }
	  Map#Domain(m)[u]
    ==> Set#Card(Map#Values(m)) > 0); // weaker property than above, with weaker triggers

 // Here are the operations that produce Map values.

function Map#Empty<U, V>(): Map U V;
axiom (forall<U, V> u: U ::
        { Map#Domain(Map#Empty(): Map U V)[u] }
        !Map#Domain(Map#Empty(): Map U V)[u]);

axiom (forall<U, V> m: Map U V :: { Map#Card(m) }
 (Map#Card(m) == 0 <==> m == Map#Empty()) &&
 (Map#Card(m) != 0 ==> (exists x: U :: Map#Domain(m)[x])) &&
 ((forall x: U :: {Map#Domain(m)[x]} Map#Domain(m)[x] ==> Map#Card(m) != 0)));

//Build is used in displays, and for map updates
function Map#Build<U, V>(Map U V, U, V): Map U V;

/* added second trigger set (cf. example3 test case, test3) */
axiom (forall<U, V> m: Map U V, u: U, u': U, v: V ::
  { Map#Domain(Map#Build(m, u, v))[u'] } { Map#Domain(m)[u'],Map#Build(m, u, v) } { Map#Elements(Map#Build(m, u, v))[u'] }
  (u' == u ==> Map#Domain(Map#Build(m, u, v))[u'] &&
               Map#Elements(Map#Build(m, u, v))[u'] == v) &&
  (u' != u ==> Map#Domain(Map#Build(m, u, v))[u'] == Map#Domain(m)[u'] &&
               Map#Elements(Map#Build(m, u, v))[u'] == Map#Elements(m)[u']));
/* added second trigger set (not sure of a test case needing it, though) */
axiom (forall<U, V> m: Map U V, u: U, v: V :: { Map#Card(Map#Build(m, u, v)) }{ Map#Card(m),Map#Build(m, u, v) }
  Map#Domain(m)[u] ==> Map#Card(Map#Build(m, u, v)) == Map#Card(m));
/* added second trigger set (not sure of a test case needing it, though) */
axiom (forall<U, V> m: Map U V, u: U, v: V :: { Map#Card(Map#Build(m, u, v)) }{ Map#Card(m),Map#Build(m, u, v) }
  !Map#Domain(m)[u] ==> Map#Card(Map#Build(m, u, v)) == Map#Card(m) + 1);

//equality for maps
  // this axiom is only needed in one direction; the other is implied by the next axiom

function Map#Equal<U, V>(Map U V, Map U V): bool;
axiom (forall<U, V> m: Map U V, m': Map U V::
  { Map#Equal(m, m') }
   (forall u : U :: Map#Domain(m)[u] == Map#Domain(m')[u]) &&
     (forall u : U :: Map#Domain(m)[u] ==> Map#Elements(m)[u] == Map#Elements(m')[u]) ==> Map#Equal(m, m'));
// extensionality
axiom (forall<U, V> m: Map U V, m': Map U V::
  { Map#Equal(m, m') }
    Map#Equal(m, m') ==> m == m');

function Map#Disjoint<U, V>(Map U V, Map U V): bool;
// split in both directions
axiom (forall<U, V> m: Map U V, m': Map U V ::
  { Map#Disjoint(m, m') }
    Map#Disjoint(m, m') ==> (forall o: U :: {Map#Domain(m)[o]} {Map#Domain(m')[o]} !Map#Domain(m)[o] || !Map#Domain(m')[o]));
axiom (forall<U, V> m: Map U V, m': Map U V ::
  { Map#Disjoint(m, m') }
    !Map#Disjoint(m, m') ==> (exists o: U :: {Map#Domain(m)[o]} {Map#Domain(m')[o]} Map#Domain(m)[o] && Map#Domain(m')[o]));



// ==================================================
// Translation of domain PyType
// ==================================================

// The type for domain PyType
type PyTypeDomainType;

// Translation of domain function extends_
function  extends_(sub: PyTypeDomainType, super: PyTypeDomainType): bool;

// Translation of domain function issubtype
function  issubtype(sub: PyTypeDomainType, super: PyTypeDomainType): bool;

// Translation of domain function isnotsubtype
function  isnotsubtype(sub: PyTypeDomainType, super: PyTypeDomainType): bool;

// Translation of domain function tuple_args
function  tuple_args(t_9: PyTypeDomainType): Seq PyTypeDomainType;

// Translation of domain function typeof
function  typeof(obj: Ref): PyTypeDomainType;

// Translation of domain function get_basic
function  get_basic(t_9: PyTypeDomainType): PyTypeDomainType;

// Translation of domain function union_type_1
function  union_type_1(arg_1_12: PyTypeDomainType): PyTypeDomainType;

// Translation of domain function union_type_2
function  union_type_2(arg_1_12: PyTypeDomainType, arg_2_12: PyTypeDomainType): PyTypeDomainType;

// Translation of domain function union_type_3
function  union_type_3(arg_1_12: PyTypeDomainType, arg_2_12: PyTypeDomainType, arg_3_12: PyTypeDomainType): PyTypeDomainType;

// Translation of domain function union_type_4
function  union_type_4(arg_1_12: PyTypeDomainType, arg_2_12: PyTypeDomainType, arg_3_12: PyTypeDomainType, arg_4_12: PyTypeDomainType): PyTypeDomainType;

// Translation of domain unique function object
const unique object: PyTypeDomainType;

// Translation of domain unique function list_basic
const unique list_basic: PyTypeDomainType;

// Translation of domain function list
function  list_1(arg0: PyTypeDomainType): PyTypeDomainType;

// Translation of domain function list_arg
function  list_arg(typ: PyTypeDomainType, index_1: int): PyTypeDomainType;

// Translation of domain unique function set_basic
const unique set_basic: PyTypeDomainType;

// Translation of domain function set
function  set_1(arg0: PyTypeDomainType): PyTypeDomainType;

// Translation of domain function set_arg
function  set_arg(typ: PyTypeDomainType, index_1: int): PyTypeDomainType;

// Translation of domain unique function dict_basic
const unique dict_basic: PyTypeDomainType;

// Translation of domain function dict
function  dict(arg0: PyTypeDomainType, arg1_1: PyTypeDomainType): PyTypeDomainType;

// Translation of domain function dict_arg
function  dict_arg(typ: PyTypeDomainType, index_1: int): PyTypeDomainType;

// Translation of domain unique function int
const unique vint: PyTypeDomainType;

// Translation of domain unique function float
const unique float: PyTypeDomainType;

// Translation of domain unique function bool
const unique vbool: PyTypeDomainType;

// Translation of domain unique function NoneType
const unique NoneType: PyTypeDomainType;

// Translation of domain unique function Exception
const unique Exception: PyTypeDomainType;

// Translation of domain unique function ConnectionRefusedError
const unique ConnectionRefusedError: PyTypeDomainType;

// Translation of domain unique function traceback
const unique traceback: PyTypeDomainType;

// Translation of domain unique function str
const unique str: PyTypeDomainType;

// Translation of domain unique function bytes
const unique bytes: PyTypeDomainType;

// Translation of domain unique function tuple_basic
const unique tuple_basic: PyTypeDomainType;

// Translation of domain function tuple
function  tuple(args_1: (Seq PyTypeDomainType)): PyTypeDomainType;

// Translation of domain function tuple_arg
function  tuple_arg(typ: PyTypeDomainType, index_1: int): PyTypeDomainType;

// Translation of domain unique function PSeq_basic
const unique PSeq_basic: PyTypeDomainType;

// Translation of domain function PSeq
function  PSeq(arg0: PyTypeDomainType): PyTypeDomainType;

// Translation of domain function PSeq_arg
function  PSeq_arg(typ: PyTypeDomainType, index_1: int): PyTypeDomainType;

// Translation of domain unique function PSet_basic
const unique PSet_basic: PyTypeDomainType;

// Translation of domain function PSet
function  PSet(arg0: PyTypeDomainType): PyTypeDomainType;

// Translation of domain function PSet_arg
function  PSet_arg(typ: PyTypeDomainType, index_1: int): PyTypeDomainType;

// Translation of domain unique function PMultiset_basic
const unique PMultiset_basic: PyTypeDomainType;

// Translation of domain function PMultiset
function  PMultiset(arg0: PyTypeDomainType): PyTypeDomainType;

// Translation of domain function PMultiset_arg
function  PMultiset_arg(typ: PyTypeDomainType, index_1: int): PyTypeDomainType;

// Translation of domain unique function slice
const unique slice: PyTypeDomainType;

// Translation of domain unique function range_0
const unique range_0: PyTypeDomainType;

// Translation of domain unique function Iterator_basic
const unique Iterator_basic: PyTypeDomainType;

// Translation of domain function Iterator
function  Iterator(arg0: PyTypeDomainType): PyTypeDomainType;

// Translation of domain function Iterator_arg
function  Iterator_arg(typ: PyTypeDomainType, index_1: int): PyTypeDomainType;

// Translation of domain unique function Thread_0
const unique Thread_0: PyTypeDomainType;

// Translation of domain unique function LevelType
const unique LevelType: PyTypeDomainType;

// Translation of domain unique function type
const unique vtype: PyTypeDomainType;

// Translation of domain unique function Place
const unique Place: PyTypeDomainType;

// Translation of domain unique function __prim__Seq_type
const unique __prim__Seq_type: PyTypeDomainType;

// Translation of domain axiom issubtype_transitivity
axiom (forall sub_1: PyTypeDomainType, middle: PyTypeDomainType, super_1: PyTypeDomainType ::
  { (issubtype(sub_1, middle): bool), (issubtype(middle, super_1): bool) }
  (issubtype(sub_1, middle): bool) && (issubtype(middle, super_1): bool) ==> (issubtype(sub_1, super_1): bool)
);

// Translation of domain axiom issubtype_reflexivity
axiom (forall type_: PyTypeDomainType ::
  { (issubtype(type_, type_): bool) }
  (issubtype(type_, type_): bool)
);

// Translation of domain axiom extends_implies_subtype
axiom (forall sub_1: PyTypeDomainType, sub2: PyTypeDomainType ::
  { (extends_(sub_1, sub2): bool) }
  (extends_(sub_1, sub2): bool) ==> (issubtype(sub_1, sub2): bool)
);

// Translation of domain axiom null_nonetype
axiom (forall r_1: Ref ::
  { (typeof(r_1): PyTypeDomainType) }
  (issubtype((typeof(r_1): PyTypeDomainType), NoneType): bool) == (r_1 == null)
);

// Translation of domain axiom issubtype_object
axiom (forall type_: PyTypeDomainType ::
  { (issubtype(type_, object): bool) }
  (issubtype(type_, object): bool)
);

// Translation of domain axiom issubtype_exclusion
axiom (forall sub_1: PyTypeDomainType, sub2: PyTypeDomainType, super_1: PyTypeDomainType ::
  { (extends_(sub_1, super_1): bool), (extends_(sub2, super_1): bool) }
  (extends_(sub_1, super_1): bool) && ((extends_(sub2, super_1): bool) && sub_1 != sub2) ==> (isnotsubtype(sub_1, sub2): bool) && (isnotsubtype(sub2, sub_1): bool)
);

// Translation of domain axiom issubtype_exclusion_2
axiom (forall sub_1: PyTypeDomainType, super_1: PyTypeDomainType ::
  { (issubtype(sub_1, super_1): bool) } { (issubtype(super_1, sub_1): bool) }
  (issubtype(sub_1, super_1): bool) && sub_1 != super_1 ==> !(issubtype(super_1, sub_1): bool)
);

// Translation of domain axiom issubtype_exclusion_propagation
axiom (forall sub_1: PyTypeDomainType, middle: PyTypeDomainType, super_1: PyTypeDomainType ::
  { (issubtype(sub_1, middle): bool), (isnotsubtype(middle, super_1): bool) }
  (issubtype(sub_1, middle): bool) && (isnotsubtype(middle, super_1): bool) ==> !(issubtype(sub_1, super_1): bool)
);

// Translation of domain axiom tuple_arg_def
axiom (forall seq_1: (Seq PyTypeDomainType), i: int, Z_1: PyTypeDomainType ::
  { (tuple(seq_1): PyTypeDomainType), (tuple_arg(Z_1, i): PyTypeDomainType) }
  (issubtype(Z_1, (tuple(seq_1): PyTypeDomainType)): bool) ==> (issubtype((tuple_arg(Z_1, i): PyTypeDomainType), Seq#Index(seq_1, i)): bool)
);

// Translation of domain axiom tuple_args_def
axiom (forall seq_1: (Seq PyTypeDomainType), Z_1: PyTypeDomainType ::
  { (issubtype(Z_1, (tuple(seq_1): PyTypeDomainType)): bool) }
  (issubtype(Z_1, (tuple(seq_1): PyTypeDomainType)): bool) ==> Seq#Length((tuple_args(Z_1): Seq PyTypeDomainType)) == Seq#Length(seq_1)
);

// Translation of domain axiom tuple_self_subtype
axiom (forall seq1: (Seq PyTypeDomainType), seq2: (Seq PyTypeDomainType) ::
  { Seq#Length(seq1), Seq#Length(seq2) } { Seq#Length(seq1), (tuple(seq2): PyTypeDomainType) } { Seq#Length(seq1), (issubtype((tuple(seq1): PyTypeDomainType), (tuple(seq2): PyTypeDomainType)): bool) } { Seq#Length(seq2), Seq#Length(seq1) } { Seq#Length(seq2), (tuple(seq1): PyTypeDomainType) } { Seq#Length(seq2), (issubtype((tuple(seq1): PyTypeDomainType), (tuple(seq2): PyTypeDomainType)): bool) } { (issubtype((tuple(seq1): PyTypeDomainType), (tuple(seq2): PyTypeDomainType)): bool) }
  !Seq#Equal(seq1, seq2) && (Seq#Length(seq1) == Seq#Length(seq2) && (forall i: int ::
    { (issubtype(Seq#Index(seq1, i), Seq#Index(seq2, i)): bool) }
    i >= 0 && i < Seq#Length(seq1) ==> (issubtype(Seq#Index(seq1, i), Seq#Index(seq2, i)): bool)
  )) ==> (issubtype((tuple(seq1): PyTypeDomainType), (tuple(seq2): PyTypeDomainType)): bool)
);

// Translation of domain axiom union_subtype_1
axiom (forall arg_1_2: PyTypeDomainType, X_1: PyTypeDomainType ::
  { (issubtype(X_1, (union_type_1(arg_1_2): PyTypeDomainType)): bool) }
  (issubtype(X_1, (union_type_1(arg_1_2): PyTypeDomainType)): bool) == (issubtype(X_1, arg_1_2): bool)
);

// Translation of domain axiom union_subtype_2
axiom (forall arg_1_2: PyTypeDomainType, arg_2_1: PyTypeDomainType, X_1: PyTypeDomainType ::
  { (issubtype(X_1, (union_type_2(arg_1_2, arg_2_1): PyTypeDomainType)): bool) }
  (issubtype(X_1, (union_type_2(arg_1_2, arg_2_1): PyTypeDomainType)): bool) == ((issubtype(X_1, arg_1_2): bool) || (issubtype(X_1, arg_2_1): bool))
);

// Translation of domain axiom union_subtype_3
axiom (forall arg_1_2: PyTypeDomainType, arg_2_1: PyTypeDomainType, arg_3_1: PyTypeDomainType, X_1: PyTypeDomainType ::
  { (issubtype(X_1, (union_type_3(arg_1_2, arg_2_1, arg_3_1): PyTypeDomainType)): bool) }
  (issubtype(X_1, (union_type_3(arg_1_2, arg_2_1, arg_3_1): PyTypeDomainType)): bool) == ((issubtype(X_1, arg_1_2): bool) || ((issubtype(X_1, arg_2_1): bool) || (issubtype(X_1, arg_3_1): bool)))
);

// Translation of domain axiom union_subtype_4
axiom (forall arg_1_2: PyTypeDomainType, arg_2_1: PyTypeDomainType, arg_3_1: PyTypeDomainType, arg_4_1: PyTypeDomainType, X_1: PyTypeDomainType ::
  { (issubtype(X_1, (union_type_4(arg_1_2, arg_2_1, arg_3_1, arg_4_1): PyTypeDomainType)): bool) }
  (issubtype(X_1, (union_type_4(arg_1_2, arg_2_1, arg_3_1, arg_4_1): PyTypeDomainType)): bool) == ((issubtype(X_1, arg_1_2): bool) || ((issubtype(X_1, arg_2_1): bool) || ((issubtype(X_1, arg_3_1): bool) || (issubtype(X_1, arg_4_1): bool))))
);

// Translation of domain axiom subtype_union_1
axiom (forall arg_1_2: PyTypeDomainType, X_1: PyTypeDomainType ::
  { (issubtype((union_type_1(arg_1_2): PyTypeDomainType), X_1): bool) }
  (issubtype((union_type_1(arg_1_2): PyTypeDomainType), X_1): bool) == (issubtype(arg_1_2, X_1): bool)
);

// Translation of domain axiom subtype_union_2
axiom (forall arg_1_2: PyTypeDomainType, arg_2_1: PyTypeDomainType, X_1: PyTypeDomainType ::
  { (issubtype((union_type_2(arg_1_2, arg_2_1): PyTypeDomainType), X_1): bool) }
  (issubtype((union_type_2(arg_1_2, arg_2_1): PyTypeDomainType), X_1): bool) == ((issubtype(arg_1_2, X_1): bool) && (issubtype(arg_2_1, X_1): bool))
);

// Translation of domain axiom subtype_union_3
axiom (forall arg_1_2: PyTypeDomainType, arg_2_1: PyTypeDomainType, arg_3_1: PyTypeDomainType, X_1: PyTypeDomainType ::
  { (issubtype((union_type_3(arg_1_2, arg_2_1, arg_3_1): PyTypeDomainType), X_1): bool) }
  (issubtype((union_type_3(arg_1_2, arg_2_1, arg_3_1): PyTypeDomainType), X_1): bool) == ((issubtype(arg_1_2, X_1): bool) && ((issubtype(arg_2_1, X_1): bool) && (issubtype(arg_3_1, X_1): bool)))
);

// Translation of domain axiom subtype_union_4
axiom (forall arg_1_2: PyTypeDomainType, arg_2_1: PyTypeDomainType, arg_3_1: PyTypeDomainType, arg_4_1: PyTypeDomainType, X_1: PyTypeDomainType ::
  { (issubtype((union_type_4(arg_1_2, arg_2_1, arg_3_1, arg_4_1): PyTypeDomainType), X_1): bool) }
  (issubtype((union_type_4(arg_1_2, arg_2_1, arg_3_1, arg_4_1): PyTypeDomainType), X_1): bool) == ((issubtype(arg_1_2, X_1): bool) && ((issubtype(arg_2_1, X_1): bool) && ((issubtype(arg_3_1, X_1): bool) && (issubtype(arg_4_1, X_1): bool))))
);

// Translation of domain axiom subtype_list
axiom (forall var0: PyTypeDomainType ::
  { (list_1(var0): PyTypeDomainType) }
  (extends_((list_1(var0): PyTypeDomainType), object): bool) && (get_basic((list_1(var0): PyTypeDomainType)): PyTypeDomainType) == list_basic
);

// Translation of domain axiom list_args0
axiom (forall Z_1: PyTypeDomainType, arg0_1: PyTypeDomainType ::
  { (list_1(arg0_1): PyTypeDomainType), (list_arg(Z_1, 0): PyTypeDomainType) }
  (issubtype(Z_1, (list_1(arg0_1): PyTypeDomainType)): bool) ==> (list_arg(Z_1, 0): PyTypeDomainType) == arg0_1
);

// Translation of domain axiom subtype_set
axiom (forall var0: PyTypeDomainType ::
  { (set_1(var0): PyTypeDomainType) }
  (extends_((set_1(var0): PyTypeDomainType), object): bool) && (get_basic((set_1(var0): PyTypeDomainType)): PyTypeDomainType) == set_basic
);

// Translation of domain axiom set_args0
axiom (forall Z_1: PyTypeDomainType, arg0_1: PyTypeDomainType ::
  { (set_1(arg0_1): PyTypeDomainType), (set_arg(Z_1, 0): PyTypeDomainType) }
  (issubtype(Z_1, (set_1(arg0_1): PyTypeDomainType)): bool) ==> (set_arg(Z_1, 0): PyTypeDomainType) == arg0_1
);

// Translation of domain axiom subtype_dict
axiom (forall var0: PyTypeDomainType, var1: PyTypeDomainType ::
  { (dict(var0, var1): PyTypeDomainType) }
  (extends_((dict(var0, var1): PyTypeDomainType), object): bool) && (get_basic((dict(var0, var1): PyTypeDomainType)): PyTypeDomainType) == dict_basic
);

// Translation of domain axiom dict_args0
axiom (forall Z_1: PyTypeDomainType, arg0_1: PyTypeDomainType, arg1_3: PyTypeDomainType ::
  { (dict(arg0_1, arg1_3): PyTypeDomainType), (dict_arg(Z_1, 0): PyTypeDomainType) }
  (issubtype(Z_1, (dict(arg0_1, arg1_3): PyTypeDomainType)): bool) ==> (dict_arg(Z_1, 0): PyTypeDomainType) == arg0_1
);

// Translation of domain axiom dict_args1
axiom (forall Z_1: PyTypeDomainType, arg0_1: PyTypeDomainType, arg1_3: PyTypeDomainType ::
  { (dict(arg0_1, arg1_3): PyTypeDomainType), (dict_arg(Z_1, 1): PyTypeDomainType) }
  (issubtype(Z_1, (dict(arg0_1, arg1_3): PyTypeDomainType)): bool) ==> (dict_arg(Z_1, 1): PyTypeDomainType) == arg1_3
);

// Translation of domain axiom subtype_int
axiom (extends_(vint, float): bool) && (get_basic(vint): PyTypeDomainType) == vint;

// Translation of domain axiom subtype_float
axiom (extends_(float, object): bool) && (get_basic(float): PyTypeDomainType) == float;

// Translation of domain axiom subtype_bool
axiom (extends_(vbool, vint): bool) && (get_basic(vbool): PyTypeDomainType) == vbool;

// Translation of domain axiom subtype_NoneType
axiom (extends_(NoneType, object): bool) && (get_basic(NoneType): PyTypeDomainType) == NoneType;

// Translation of domain axiom subtype_Exception
axiom (extends_(Exception, object): bool) && (get_basic(Exception): PyTypeDomainType) == Exception;

// Translation of domain axiom subtype_ConnectionRefusedError
axiom (extends_(ConnectionRefusedError, Exception): bool) && (get_basic(ConnectionRefusedError): PyTypeDomainType) == ConnectionRefusedError;

// Translation of domain axiom subtype_traceback
axiom (extends_(traceback, object): bool) && (get_basic(traceback): PyTypeDomainType) == traceback;

// Translation of domain axiom subtype_str
axiom (extends_(str, object): bool) && (get_basic(str): PyTypeDomainType) == str;

// Translation of domain axiom subtype_bytes
axiom (extends_(bytes, object): bool) && (get_basic(bytes): PyTypeDomainType) == bytes;

// Translation of domain axiom subtype_tuple
axiom (forall args: (Seq PyTypeDomainType) ::
  { (tuple(args): PyTypeDomainType) }
  ((forall e_1: PyTypeDomainType ::
    { Seq#ContainsTrigger(args, e_1) } { Seq#Contains(args, e_1) }
    Seq#Contains(args, e_1) ==> e_1 == object
  ) ==> (extends_((tuple(args): PyTypeDomainType), object): bool)) && (get_basic((tuple(args): PyTypeDomainType)): PyTypeDomainType) == tuple_basic
);

// Translation of domain axiom subtype_PSeq
axiom (forall var0: PyTypeDomainType ::
  { (PSeq(var0): PyTypeDomainType) }
  (extends_((PSeq(var0): PyTypeDomainType), object): bool) && (get_basic((PSeq(var0): PyTypeDomainType)): PyTypeDomainType) == PSeq_basic
);

// Translation of domain axiom PSeq_args0
axiom (forall Z_1: PyTypeDomainType, arg0_1: PyTypeDomainType ::
  { (PSeq(arg0_1): PyTypeDomainType), (PSeq_arg(Z_1, 0): PyTypeDomainType) }
  (issubtype(Z_1, (PSeq(arg0_1): PyTypeDomainType)): bool) ==> (PSeq_arg(Z_1, 0): PyTypeDomainType) == arg0_1
);

// Translation of domain axiom subtype_PSet
axiom (forall var0: PyTypeDomainType ::
  { (PSet(var0): PyTypeDomainType) }
  (extends_((PSet(var0): PyTypeDomainType), object): bool) && (get_basic((PSet(var0): PyTypeDomainType)): PyTypeDomainType) == PSet_basic
);

// Translation of domain axiom PSet_args0
axiom (forall Z_1: PyTypeDomainType, arg0_1: PyTypeDomainType ::
  { (PSet(arg0_1): PyTypeDomainType), (PSet_arg(Z_1, 0): PyTypeDomainType) }
  (issubtype(Z_1, (PSet(arg0_1): PyTypeDomainType)): bool) ==> (PSet_arg(Z_1, 0): PyTypeDomainType) == arg0_1
);

// Translation of domain axiom subtype_PMultiset
axiom (forall var0: PyTypeDomainType ::
  { (PMultiset(var0): PyTypeDomainType) }
  (extends_((PMultiset(var0): PyTypeDomainType), object): bool) && (get_basic((PMultiset(var0): PyTypeDomainType)): PyTypeDomainType) == PMultiset_basic
);

// Translation of domain axiom PMultiset_args0
axiom (forall Z_1: PyTypeDomainType, arg0_1: PyTypeDomainType ::
  { (PMultiset(arg0_1): PyTypeDomainType), (PMultiset_arg(Z_1, 0): PyTypeDomainType) }
  (issubtype(Z_1, (PMultiset(arg0_1): PyTypeDomainType)): bool) ==> (PMultiset_arg(Z_1, 0): PyTypeDomainType) == arg0_1
);

// Translation of domain axiom subtype_slice
axiom (extends_(slice, object): bool) && (get_basic(slice): PyTypeDomainType) == slice;

// Translation of domain axiom subtype_range_0
axiom (extends_(range_0, object): bool) && (get_basic(range_0): PyTypeDomainType) == range_0;

// Translation of domain axiom subtype_Iterator
axiom (forall var0: PyTypeDomainType ::
  { (Iterator(var0): PyTypeDomainType) }
  (extends_((Iterator(var0): PyTypeDomainType), object): bool) && (get_basic((Iterator(var0): PyTypeDomainType)): PyTypeDomainType) == Iterator_basic
);

// Translation of domain axiom Iterator_args0
axiom (forall Z_1: PyTypeDomainType, arg0_1: PyTypeDomainType ::
  { (Iterator(arg0_1): PyTypeDomainType), (Iterator_arg(Z_1, 0): PyTypeDomainType) }
  (issubtype(Z_1, (Iterator(arg0_1): PyTypeDomainType)): bool) ==> (Iterator_arg(Z_1, 0): PyTypeDomainType) == arg0_1
);

// Translation of domain axiom subtype_Thread_0
axiom (extends_(Thread_0, object): bool) && (get_basic(Thread_0): PyTypeDomainType) == Thread_0;

// Translation of domain axiom subtype_LevelType
axiom (extends_(LevelType, object): bool) && (get_basic(LevelType): PyTypeDomainType) == LevelType;

// Translation of domain axiom subtype_type
axiom (extends_(vtype, object): bool) && (get_basic(vtype): PyTypeDomainType) == vtype;

// Translation of domain axiom subtype_Place
axiom (extends_(Place, object): bool) && (get_basic(Place): PyTypeDomainType) == Place;

// Translation of domain axiom subtype___prim__Seq_type
axiom (extends_(__prim__Seq_type, object): bool) && (get_basic(__prim__Seq_type): PyTypeDomainType) == __prim__Seq_type;

// ==================================================
// Translation of domain SIFDomain
// ==================================================

// The type for domain SIFDomain
type SIFDomainDomainType T;

// Translation of domain function Low
function  Low<T>(x_8: T): bool;

// Translation of domain axiom low_true
axiom (forall <T> x: T ::
  { (Low(x): bool) }
  (Low(x): bool)
);

// ==================================================
// Translation of domain _list_ce_helper
// ==================================================

// The type for domain _list_ce_helper
type _list_ce_helperDomainType;

// Translation of domain function seq_ref_length
function  seq_ref_length(___s: (Seq Ref)): int;

// Translation of domain function seq_ref_index
function  seq_ref_index(___s: (Seq Ref), i_79: int): Ref;

// Translation of domain axiom relate_length
axiom (forall ___s_1: (Seq Ref) ::
  { Seq#Length(___s_1) }
  Seq#Length(___s_1) == (seq_ref_length(___s_1): int)
);

// Translation of domain axiom relate_index
axiom (forall ___s_1: (Seq Ref), ___i: int ::
  { Seq#Index(___s_1, ___i) }
  Seq#Index(___s_1, ___i) == (seq_ref_index(___s_1, ___i): Ref)
);

// ==================================================
// Translation of domain Measure$
// ==================================================

// The type for domain Measure$
type Measure$DomainType;

// Translation of domain function Measure$create
function  Measure$create(guard: bool, key_6: Ref, value_2: int): Measure$DomainType;

// Translation of domain function Measure$guard
function  Measure$guard(m_18: Measure$DomainType): bool;

// Translation of domain function Measure$key
function  Measure$key(m_18: Measure$DomainType): Ref;

// Translation of domain function Measure$value
function  Measure$value(m_18: Measure$DomainType): int;

// Translation of domain axiom Measure$A0
axiom (forall g_1: bool, k: Ref, v_2: int ::
  { (Measure$guard((Measure$create(g_1, k, v_2): Measure$DomainType)): bool) }
  (Measure$guard((Measure$create(g_1, k, v_2): Measure$DomainType)): bool) == g_1
);

// Translation of domain axiom Measure$A1
axiom (forall g_1: bool, k: Ref, v_2: int ::
  { (Measure$key((Measure$create(g_1, k, v_2): Measure$DomainType)): Ref) }
  (Measure$key((Measure$create(g_1, k, v_2): Measure$DomainType)): Ref) == k
);

// Translation of domain axiom Measure$A2
axiom (forall g_1: bool, k: Ref, v_2: int ::
  { (Measure$value((Measure$create(g_1, k, v_2): Measure$DomainType)): int) }
  (Measure$value((Measure$create(g_1, k, v_2): Measure$DomainType)): int) == v_2
);

// ==================================================
// Translation of domain __MSHelper
// ==================================================

// The type for domain __MSHelper
type __MSHelperDomainType T$;

// Translation of domain function __toMS
function  __toMS<T$>(s_17: (Seq T$)): MultiSet T$;

// Translation of domain axiom __toMS_def_1
axiom (forall <T$>  ::
  
  MultiSet#Equal((__toMS((Seq#Empty(): Seq T$)): MultiSet T$), (MultiSet#Empty(): MultiSet T$))
);

// Translation of domain axiom __toMS_def_2
axiom (forall <T$> __t: T$ ::
  { (__toMS((Seq#Singleton(__t): Seq T$)): MultiSet T$) }
  MultiSet#Equal((__toMS((Seq#Singleton(__t): Seq T$)): MultiSet T$), (MultiSet#Singleton(__t): MultiSet T$))
);

// Translation of domain axiom __toMS_def_3
axiom (forall <T$> __ss1: (Seq T$), __ss2: (Seq T$) ::
  { (__toMS((Seq#Append(__ss1, __ss2): Seq T$)): MultiSet T$) }
  MultiSet#Equal((__toMS((Seq#Append(__ss1, __ss2): Seq T$)): MultiSet T$), (MultiSet#Union((__toMS(__ss1): MultiSet T$), (__toMS(__ss2): MultiSet T$)): MultiSet T$))
);

// Translation of domain axiom __toMS_def_4
axiom (forall <T$> __ss1: (Seq T$) ::
  { (__toMS(__ss1): MultiSet T$) }
  MultiSet#Card((__toMS(__ss1): MultiSet T$)) == Seq#Length(__ss1)
);

// ==================================================
// Translation of domain _Name
// ==================================================

// The type for domain _Name
type _NameDomainType;

// Translation of domain function _combine
function  _combine(n1_12: _NameDomainType, n2_8: _NameDomainType): _NameDomainType;

// Translation of domain function _single
function  _single(n_84: int): _NameDomainType;

// Translation of domain function _get_combined_prefix
function  _get_combined_prefix(n_84: _NameDomainType): _NameDomainType;

// Translation of domain function _get_combined_name
function  _get_combined_name(n_84: _NameDomainType): _NameDomainType;

// Translation of domain function _get_value
function  _get_value(n_84: _NameDomainType): int;

// Translation of domain function _name_type
function  _name_type(n_84: _NameDomainType): bool;

// Translation of domain function _is_single
function  _is_single(n_84: _NameDomainType): bool;

// Translation of domain function _is_combined
function  _is_combined(n_84: _NameDomainType): bool;

// Translation of domain axiom decompose_single
axiom (forall i: int ::
  { (_single(i): _NameDomainType) }
  (_get_value((_single(i): _NameDomainType)): int) == i
);

// Translation of domain axiom compose_single
axiom (forall n: _NameDomainType ::
  { (_get_value(n): int) }
  (_is_single(n): bool) ==> n == (_single((_get_value(n): int)): _NameDomainType)
);

// Translation of domain axiom type_of_single
axiom (forall i: int ::
  { (_single(i): _NameDomainType) }
  (_name_type((_single(i): _NameDomainType)): bool)
);

// Translation of domain axiom decompose_combined
axiom (forall n1_1: _NameDomainType, n2: _NameDomainType ::
  { (_combine(n1_1, n2): _NameDomainType) }
  (_get_combined_prefix((_combine(n1_1, n2): _NameDomainType)): _NameDomainType) == n1_1 && (_get_combined_name((_combine(n1_1, n2): _NameDomainType)): _NameDomainType) == n2
);

// Translation of domain axiom compose_combined
axiom (forall n: _NameDomainType ::
  { (_get_combined_prefix(n): _NameDomainType) } { (_get_combined_name(n): _NameDomainType) }
  (_is_combined(n): bool) ==> n == (_combine((_get_combined_prefix(n): _NameDomainType), (_get_combined_name(n): _NameDomainType)): _NameDomainType)
);

// Translation of domain axiom type_of_composed
axiom (forall n1_1: _NameDomainType, n2: _NameDomainType ::
  { (_combine(n1_1, n2): _NameDomainType) }
  !(_name_type((_combine(n1_1, n2): _NameDomainType)): bool)
);

// Translation of domain axiom type_is_single
axiom (forall n: _NameDomainType ::
  { (_name_type(n): bool) }
  (_name_type(n): bool) == (_is_single(n): bool)
);

// Translation of domain axiom type_is_combined
axiom (forall n: _NameDomainType ::
  { (_name_type(n): bool) }
  !(_name_type(n): bool) == (_is_combined(n): bool)
);

// ==================================================
// Translation of domain IntWellFoundedOrder
// ==================================================

// The type for domain IntWellFoundedOrder
type IntWellFoundedOrderDomainType;

// Translation of domain axiom integer_ax_dec
axiom (forall int1: int, int2: int ::
  { (decreasing(int1, int2): bool) }
  int1 < int2 ==> (decreasing(int1, int2): bool)
);

// Translation of domain axiom integer_ax_bound
axiom (forall int1: int ::
  { (bounded(int1): bool) }
  int1 >= 0 ==> (bounded(int1): bool)
);

// ==================================================
// Translation of domain WellFoundedOrder
// ==================================================

// The type for domain WellFoundedOrder
type WellFoundedOrderDomainType T;

// Translation of domain function decreasing
function  decreasing<T>(arg1_1: T, arg2_1: T): bool;

// Translation of domain function bounded
function  bounded<T>(arg1_1: T): bool;

// ==================================================
// Translation of all fields
// ==================================================

const unique _val: Field NormalField Ref;
axiom !IsPredicateField(_val);
axiom !IsWandField(_val);
const unique __container: Field NormalField Ref;
axiom !IsPredicateField(__container);
axiom !IsWandField(__container);
const unique __iter_index: Field NormalField int;
axiom !IsPredicateField(__iter_index);
axiom !IsWandField(__iter_index);
const unique __previous: Field NormalField (Seq Ref);
axiom !IsPredicateField(__previous);
axiom !IsWandField(__previous);
const unique list_acc: Field NormalField (Seq Ref);
axiom !IsPredicateField(list_acc);
axiom !IsWandField(list_acc);
const unique set_acc: Field NormalField (Set Ref);
axiom !IsPredicateField(set_acc);
axiom !IsWandField(set_acc);
const unique dict_acc: Field NormalField (Map Ref Ref);
axiom !IsPredicateField(dict_acc);
axiom !IsWandField(dict_acc);
const unique Measure$acc: Field NormalField (Seq Ref);
axiom !IsPredicateField(Measure$acc);
axiom !IsWandField(Measure$acc);
const unique MustReleaseBounded: Field NormalField int;
axiom !IsPredicateField(MustReleaseBounded);
axiom !IsWandField(MustReleaseBounded);
const unique MustReleaseUnbounded: Field NormalField int;
axiom !IsPredicateField(MustReleaseUnbounded);
axiom !IsWandField(MustReleaseUnbounded);

// ==================================================
// Translation of function _isDefined
// ==================================================

// Uninterpreted function definitions
function  _isDefined(Heap: HeapType, id_2: int): bool;
function  _isDefined'(Heap: HeapType, id_2: int): bool;
axiom (forall Heap: HeapType, id_2: int ::
  { _isDefined(Heap, id_2) }
  _isDefined(Heap, id_2) == _isDefined'(Heap, id_2) && dummyFunction(_isDefined#triggerStateless(id_2))
);
axiom (forall Heap: HeapType, id_2: int ::
  { _isDefined'(Heap, id_2) }
  dummyFunction(_isDefined#triggerStateless(id_2))
);

// Framing axioms
function  _isDefined#frame(frame: FrameType, id_2: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, id_2: int ::
  { state(Heap, Mask), _isDefined'(Heap, id_2) }
  state(Heap, Mask) ==> _isDefined'(Heap, id_2) == _isDefined#frame(EmptyFrame, id_2)
);

// Trigger function (controlling recursive postconditions)
function  _isDefined#trigger(frame: FrameType, id_2: int): bool;

// State-independent trigger function
function  _isDefined#triggerStateless(id_2: int): bool;

// Check contract well-formedness and postcondition
procedure _isDefined#definedness(id_2: int) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
}

// ==================================================
// Translation of function __prim__int___box__
// ==================================================

// Uninterpreted function definitions
function  __prim__int___box__(Heap: HeapType, prim: int): Ref;
function  __prim__int___box__'(Heap: HeapType, prim: int): Ref;
axiom (forall Heap: HeapType, prim: int ::
  { __prim__int___box__(Heap, prim) }
  __prim__int___box__(Heap, prim) == __prim__int___box__'(Heap, prim) && dummyFunction(__prim__int___box__#triggerStateless(prim))
);
axiom (forall Heap: HeapType, prim: int ::
  { __prim__int___box__'(Heap, prim) }
  dummyFunction(__prim__int___box__#triggerStateless(prim))
);

// Framing axioms
function  __prim__int___box__#frame(frame: FrameType, prim: int): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, prim: int ::
  { state(Heap, Mask), __prim__int___box__'(Heap, prim) }
  state(Heap, Mask) ==> __prim__int___box__'(Heap, prim) == __prim__int___box__#frame(EmptyFrame, prim)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, prim: int ::
  { state(Heap, Mask), __prim__int___box__'(Heap, prim) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || __prim__int___box__#trigger(EmptyFrame, prim)) ==> (typeof(__prim__int___box__'(Heap, prim)): PyTypeDomainType) == vint
);
axiom (forall Heap: HeapType, Mask: MaskType, prim: int ::
  { state(Heap, Mask), __prim__int___box__'(Heap, prim) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || __prim__int___box__#trigger(EmptyFrame, prim)) ==> int___unbox__'(Heap, __prim__int___box__'(Heap, prim)) == prim
);

// Trigger function (controlling recursive postconditions)
function  __prim__int___box__#trigger(frame: FrameType, prim: int): bool;

// State-independent trigger function
function  __prim__int___box__#triggerStateless(prim: int): Ref;

// Check contract well-formedness and postcondition
procedure __prim__int___box__#definedness(prim: int) returns (Result: Ref)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Checking definedness of postcondition (no body)
    assume (typeof(Result): PyTypeDomainType) == vint;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of int___unbox__(result) == prim
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function int___unbox__ might not hold. Assertion issubtype(typeof(result), int()) might not hold. (0735.vpr@609.11--609.32) [221456]"}
          (issubtype((typeof(Result): PyTypeDomainType), vint): bool);
        // Stop execution
        assume false;
      }
    assume int___unbox__(Heap, Result) == prim;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function int___unbox__
// ==================================================

// Uninterpreted function definitions
function  int___unbox__(Heap: HeapType, box_1: Ref): int;
function  int___unbox__'(Heap: HeapType, box_1: Ref): int;
axiom (forall Heap: HeapType, box_1: Ref ::
  { int___unbox__(Heap, box_1) }
  int___unbox__(Heap, box_1) == int___unbox__'(Heap, box_1) && dummyFunction(int___unbox__#triggerStateless(box_1))
);
axiom (forall Heap: HeapType, box_1: Ref ::
  { int___unbox__'(Heap, box_1) }
  dummyFunction(int___unbox__#triggerStateless(box_1))
);

// Framing axioms
function  int___unbox__#frame(frame: FrameType, box_1: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, box_1: Ref ::
  { state(Heap, Mask), int___unbox__'(Heap, box_1) }
  state(Heap, Mask) ==> int___unbox__'(Heap, box_1) == int___unbox__#frame(EmptyFrame, box_1)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, box_1: Ref ::
  { state(Heap, Mask), int___unbox__'(Heap, box_1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || int___unbox__#trigger(EmptyFrame, box_1)) ==> (issubtype((typeof(box_1): PyTypeDomainType), vint): bool) ==> !(issubtype((typeof(box_1): PyTypeDomainType), vbool): bool) ==> __prim__int___box__'(Heap, int___unbox__'(Heap, box_1)) == box_1
);
axiom (forall Heap: HeapType, Mask: MaskType, box_1: Ref ::
  { state(Heap, Mask), int___unbox__'(Heap, box_1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || int___unbox__#trigger(EmptyFrame, box_1)) ==> (issubtype((typeof(box_1): PyTypeDomainType), vint): bool) ==> (issubtype((typeof(box_1): PyTypeDomainType), vbool): bool) ==> __prim__bool___box__'(Heap, int___unbox__'(Heap, box_1) != 0) == box_1
);

// Trigger function (controlling recursive postconditions)
function  int___unbox__#trigger(frame: FrameType, box_1: Ref): bool;

// State-independent trigger function
function  int___unbox__#triggerStateless(box_1: Ref): int;

// Check contract well-formedness and postcondition
procedure int___unbox__#definedness(box_1: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[box_1, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    assume (issubtype((typeof(box_1): PyTypeDomainType), vint): bool);
    assume state(Heap, Mask);
  
  // -- Checking definedness of postcondition (no body)
    if (!(issubtype((typeof(box_1): PyTypeDomainType), vbool): bool)) {
      assume state(Heap, Mask);
      
      // -- Check definedness of __prim__int___box__(result) == box
        if (*) {
          // Stop execution
          assume false;
        }
      assume __prim__int___box__(Heap, Result) == box_1;
    }
    assume state(Heap, Mask);
    if ((issubtype((typeof(box_1): PyTypeDomainType), vbool): bool)) {
      assume state(Heap, Mask);
      
      // -- Check definedness of __prim__bool___box__(result != 0) == box
        if (*) {
          // Stop execution
          assume false;
        }
      assume __prim__bool___box__(Heap, Result != 0) == box_1;
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function __prim__bool___box__
// ==================================================

// Uninterpreted function definitions
function  __prim__bool___box__(Heap: HeapType, prim: bool): Ref;
function  __prim__bool___box__'(Heap: HeapType, prim: bool): Ref;
axiom (forall Heap: HeapType, prim: bool ::
  { __prim__bool___box__(Heap, prim) }
  __prim__bool___box__(Heap, prim) == __prim__bool___box__'(Heap, prim) && dummyFunction(__prim__bool___box__#triggerStateless(prim))
);
axiom (forall Heap: HeapType, prim: bool ::
  { __prim__bool___box__'(Heap, prim) }
  dummyFunction(__prim__bool___box__#triggerStateless(prim))
);

// Framing axioms
function  __prim__bool___box__#frame(frame: FrameType, prim: bool): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, prim: bool ::
  { state(Heap, Mask), __prim__bool___box__'(Heap, prim) }
  state(Heap, Mask) ==> __prim__bool___box__'(Heap, prim) == __prim__bool___box__#frame(EmptyFrame, prim)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, prim: bool ::
  { state(Heap, Mask), __prim__bool___box__'(Heap, prim) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || __prim__bool___box__#trigger(EmptyFrame, prim)) ==> (typeof(__prim__bool___box__'(Heap, prim)): PyTypeDomainType) == vbool
);
axiom (forall Heap: HeapType, Mask: MaskType, prim: bool ::
  { state(Heap, Mask), __prim__bool___box__'(Heap, prim) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || __prim__bool___box__#trigger(EmptyFrame, prim)) ==> bool___unbox__'(Heap, __prim__bool___box__'(Heap, prim)) == prim
);
axiom (forall Heap: HeapType, Mask: MaskType, prim: bool ::
  { state(Heap, Mask), __prim__bool___box__'(Heap, prim) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || __prim__bool___box__#trigger(EmptyFrame, prim)) ==> int___unbox__'(Heap, __prim__bool___box__'(Heap, prim)) == (if prim then 1 else 0)
);

// Trigger function (controlling recursive postconditions)
function  __prim__bool___box__#trigger(frame: FrameType, prim: bool): bool;

// State-independent trigger function
function  __prim__bool___box__#triggerStateless(prim: bool): Ref;

// Check contract well-formedness and postcondition
procedure __prim__bool___box__#definedness(prim: bool) returns (Result: Ref)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Checking definedness of postcondition (no body)
    assume (typeof(Result): PyTypeDomainType) == vbool;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of bool___unbox__(result) == prim
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function bool___unbox__ might not hold. Assertion issubtype(typeof(result), bool()) might not hold. (0735.vpr@624.11--624.33) [221457]"}
          (issubtype((typeof(Result): PyTypeDomainType), vbool): bool);
        // Stop execution
        assume false;
      }
    assume bool___unbox__(Heap, Result) == prim;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of int___unbox__(result) == (prim ? 1 : 0)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function int___unbox__ might not hold. Assertion issubtype(typeof(result), int()) might not hold. (0735.vpr@625.11--625.32) [221458]"}
          (issubtype((typeof(Result): PyTypeDomainType), vint): bool);
        // Stop execution
        assume false;
      }
    assume int___unbox__(Heap, Result) == (if prim then 1 else 0);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function bool___unbox__
// ==================================================

// Uninterpreted function definitions
function  bool___unbox__(Heap: HeapType, box_1: Ref): bool;
function  bool___unbox__'(Heap: HeapType, box_1: Ref): bool;
axiom (forall Heap: HeapType, box_1: Ref ::
  { bool___unbox__(Heap, box_1) }
  bool___unbox__(Heap, box_1) == bool___unbox__'(Heap, box_1) && dummyFunction(bool___unbox__#triggerStateless(box_1))
);
axiom (forall Heap: HeapType, box_1: Ref ::
  { bool___unbox__'(Heap, box_1) }
  dummyFunction(bool___unbox__#triggerStateless(box_1))
);

// Framing axioms
function  bool___unbox__#frame(frame: FrameType, box_1: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, box_1: Ref ::
  { state(Heap, Mask), bool___unbox__'(Heap, box_1) }
  state(Heap, Mask) ==> bool___unbox__'(Heap, box_1) == bool___unbox__#frame(EmptyFrame, box_1)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, box_1: Ref ::
  { state(Heap, Mask), bool___unbox__'(Heap, box_1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || bool___unbox__#trigger(EmptyFrame, box_1)) ==> (issubtype((typeof(box_1): PyTypeDomainType), vbool): bool) ==> __prim__bool___box__'(Heap, bool___unbox__'(Heap, box_1)) == box_1
);

// Trigger function (controlling recursive postconditions)
function  bool___unbox__#trigger(frame: FrameType, box_1: Ref): bool;

// State-independent trigger function
function  bool___unbox__#triggerStateless(box_1: Ref): bool;

// Check contract well-formedness and postcondition
procedure bool___unbox__#definedness(box_1: Ref) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[box_1, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    assume (issubtype((typeof(box_1): PyTypeDomainType), vbool): bool);
    assume state(Heap, Mask);
  
  // -- Checking definedness of postcondition (no body)
    assume state(Heap, Mask);
    
    // -- Check definedness of __prim__bool___box__(result) == box
      if (*) {
        // Stop execution
        assume false;
      }
    assume __prim__bool___box__(Heap, Result) == box_1;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function int___gt__
// ==================================================

// Uninterpreted function definitions
function  int___gt__(Heap: HeapType, self: int, other: int): bool;
function  int___gt__'(Heap: HeapType, self: int, other: int): bool;
axiom (forall Heap: HeapType, self: int, other: int ::
  { int___gt__(Heap, self, other) }
  int___gt__(Heap, self, other) == int___gt__'(Heap, self, other) && dummyFunction(int___gt__#triggerStateless(self, other))
);
axiom (forall Heap: HeapType, self: int, other: int ::
  { int___gt__'(Heap, self, other) }
  dummyFunction(int___gt__#triggerStateless(self, other))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, self: int, other: int ::
  { state(Heap, Mask), int___gt__(Heap, self, other) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> int___gt__(Heap, self, other) == (self > other)
);

// Framing axioms
function  int___gt__#frame(frame: FrameType, self: int, other: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, self: int, other: int ::
  { state(Heap, Mask), int___gt__'(Heap, self, other) }
  state(Heap, Mask) ==> int___gt__'(Heap, self, other) == int___gt__#frame(EmptyFrame, self, other)
);

// Trigger function (controlling recursive postconditions)
function  int___gt__#trigger(frame: FrameType, self: int, other: int): bool;

// State-independent trigger function
function  int___gt__#triggerStateless(self: int, other: int): bool;

// Check contract well-formedness and postcondition
procedure int___gt__#definedness(self: int, other: int) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 2;
  
  // -- Translate function body
    Result := self > other;
}

// ==================================================
// Translation of function Level
// ==================================================

// Uninterpreted function definitions
function  Level(Heap: HeapType, r_1: Ref): Perm;
function  Level'(Heap: HeapType, r_1: Ref): Perm;
axiom (forall Heap: HeapType, r_1: Ref ::
  { Level(Heap, r_1) }
  Level(Heap, r_1) == Level'(Heap, r_1) && dummyFunction(Level#triggerStateless(r_1))
);
axiom (forall Heap: HeapType, r_1: Ref ::
  { Level'(Heap, r_1) }
  dummyFunction(Level#triggerStateless(r_1))
);

// Framing axioms
function  Level#frame(frame: FrameType, r_1: Ref): Perm;
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), Level'(Heap, r_1) }
  state(Heap, Mask) ==> Level'(Heap, r_1) == Level#frame(EmptyFrame, r_1)
);

// Trigger function (controlling recursive postconditions)
function  Level#trigger(frame: FrameType, r_1: Ref): bool;

// State-independent trigger function
function  Level#triggerStateless(r_1: Ref): Perm;

// Check contract well-formedness and postcondition
procedure Level#definedness(r_1: Ref) returns (Result: Perm)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[r_1, $allocated];
    assume AssumeFunctionsAbove == 3;
}

// ==================================================
// Translation of predicate MustTerminate
// ==================================================

type PredicateType_MustTerminate;
function  MustTerminate(r_1: Ref): Field PredicateType_MustTerminate FrameType;
function  MustTerminate#sm(r_1: Ref): Field PredicateType_MustTerminate PMaskType;
axiom (forall r_1: Ref ::
  { PredicateMaskField(MustTerminate(r_1)) }
  PredicateMaskField(MustTerminate(r_1)) == MustTerminate#sm(r_1)
);
axiom (forall r_1: Ref ::
  { MustTerminate(r_1) }
  IsPredicateField(MustTerminate(r_1))
);
axiom (forall r_1: Ref ::
  { MustTerminate(r_1) }
  getPredWandId(MustTerminate(r_1)) == 0
);
function  MustTerminate#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  MustTerminate#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall r_1: Ref, r2: Ref ::
  { MustTerminate(r_1), MustTerminate(r2) }
  MustTerminate(r_1) == MustTerminate(r2) ==> r_1 == r2
);
axiom (forall r_1: Ref, r2: Ref ::
  { MustTerminate#sm(r_1), MustTerminate#sm(r2) }
  MustTerminate#sm(r_1) == MustTerminate#sm(r2) ==> r_1 == r2
);

axiom (forall Heap: HeapType, r_1: Ref ::
  { MustTerminate#trigger(Heap, MustTerminate(r_1)) }
  MustTerminate#everUsed(MustTerminate(r_1))
);

// ==================================================
// Translation of predicate MustInvokeBounded
// ==================================================

type PredicateType_MustInvokeBounded;
function  MustInvokeBounded(r_1: Ref): Field PredicateType_MustInvokeBounded FrameType;
function  MustInvokeBounded#sm(r_1: Ref): Field PredicateType_MustInvokeBounded PMaskType;
axiom (forall r_1: Ref ::
  { PredicateMaskField(MustInvokeBounded(r_1)) }
  PredicateMaskField(MustInvokeBounded(r_1)) == MustInvokeBounded#sm(r_1)
);
axiom (forall r_1: Ref ::
  { MustInvokeBounded(r_1) }
  IsPredicateField(MustInvokeBounded(r_1))
);
axiom (forall r_1: Ref ::
  { MustInvokeBounded(r_1) }
  getPredWandId(MustInvokeBounded(r_1)) == 1
);
function  MustInvokeBounded#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  MustInvokeBounded#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall r_1: Ref, r2: Ref ::
  { MustInvokeBounded(r_1), MustInvokeBounded(r2) }
  MustInvokeBounded(r_1) == MustInvokeBounded(r2) ==> r_1 == r2
);
axiom (forall r_1: Ref, r2: Ref ::
  { MustInvokeBounded#sm(r_1), MustInvokeBounded#sm(r2) }
  MustInvokeBounded#sm(r_1) == MustInvokeBounded#sm(r2) ==> r_1 == r2
);

axiom (forall Heap: HeapType, r_1: Ref ::
  { MustInvokeBounded#trigger(Heap, MustInvokeBounded(r_1)) }
  MustInvokeBounded#everUsed(MustInvokeBounded(r_1))
);

// ==================================================
// Translation of predicate MustInvokeUnbounded
// ==================================================

type PredicateType_MustInvokeUnbounded;
function  MustInvokeUnbounded(r_1: Ref): Field PredicateType_MustInvokeUnbounded FrameType;
function  MustInvokeUnbounded#sm(r_1: Ref): Field PredicateType_MustInvokeUnbounded PMaskType;
axiom (forall r_1: Ref ::
  { PredicateMaskField(MustInvokeUnbounded(r_1)) }
  PredicateMaskField(MustInvokeUnbounded(r_1)) == MustInvokeUnbounded#sm(r_1)
);
axiom (forall r_1: Ref ::
  { MustInvokeUnbounded(r_1) }
  IsPredicateField(MustInvokeUnbounded(r_1))
);
axiom (forall r_1: Ref ::
  { MustInvokeUnbounded(r_1) }
  getPredWandId(MustInvokeUnbounded(r_1)) == 2
);
function  MustInvokeUnbounded#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  MustInvokeUnbounded#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall r_1: Ref, r2: Ref ::
  { MustInvokeUnbounded(r_1), MustInvokeUnbounded(r2) }
  MustInvokeUnbounded(r_1) == MustInvokeUnbounded(r2) ==> r_1 == r2
);
axiom (forall r_1: Ref, r2: Ref ::
  { MustInvokeUnbounded#sm(r_1), MustInvokeUnbounded#sm(r2) }
  MustInvokeUnbounded#sm(r_1) == MustInvokeUnbounded#sm(r2) ==> r_1 == r2
);

axiom (forall Heap: HeapType, r_1: Ref ::
  { MustInvokeUnbounded#trigger(Heap, MustInvokeUnbounded(r_1)) }
  MustInvokeUnbounded#everUsed(MustInvokeUnbounded(r_1))
);

// ==================================================
// Translation of predicate _MaySet
// ==================================================

type PredicateType__MaySet;
function  _MaySet(rec: Ref, id_2: int): Field PredicateType__MaySet FrameType;
function  _MaySet#sm(rec: Ref, id_2: int): Field PredicateType__MaySet PMaskType;
axiom (forall rec: Ref, id_2: int ::
  { PredicateMaskField(_MaySet(rec, id_2)) }
  PredicateMaskField(_MaySet(rec, id_2)) == _MaySet#sm(rec, id_2)
);
axiom (forall rec: Ref, id_2: int ::
  { _MaySet(rec, id_2) }
  IsPredicateField(_MaySet(rec, id_2))
);
axiom (forall rec: Ref, id_2: int ::
  { _MaySet(rec, id_2) }
  getPredWandId(_MaySet(rec, id_2)) == 3
);
function  _MaySet#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  _MaySet#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall rec: Ref, id_2: int, rec2: Ref, id2: int ::
  { _MaySet(rec, id_2), _MaySet(rec2, id2) }
  _MaySet(rec, id_2) == _MaySet(rec2, id2) ==> rec == rec2 && id_2 == id2
);
axiom (forall rec: Ref, id_2: int, rec2: Ref, id2: int ::
  { _MaySet#sm(rec, id_2), _MaySet#sm(rec2, id2) }
  _MaySet#sm(rec, id_2) == _MaySet#sm(rec2, id2) ==> rec == rec2 && id_2 == id2
);

axiom (forall Heap: HeapType, rec: Ref, id_2: int ::
  { _MaySet#trigger(Heap, _MaySet(rec, id_2)) }
  _MaySet#everUsed(_MaySet(rec, id_2))
);

// ==================================================
// Translation of method main
// ==================================================

procedure main(_cthread_155: Ref, _caller_measures_155: (Seq Measure$DomainType), _residue_155: Perm, x_0: Ref) returns (_current_wait_level_155: Perm)
  modifies Heap, Mask;
{
  var __end_lblGuard: bool;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var _r_1: Ref;
  var _r_1_2: Ref;
  var _r_1_4: Ref;
  var _r_1_6: Ref;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var _err: Ref;
  var r_1: Ref;
  var x_1: Ref;
  var _method_measures_155: (Seq Measure$DomainType);
  var huh_1: int;
  var __plugin_refute_nondet1: bool;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var __plugin_refute_nondet2: bool;
  var __plugin_refute_nondet3: bool;
  var __plugin_refute_nondet4: bool;
  var __plugin_refute_nondet5: bool;
  var __plugin_refute_nondet6: bool;
  var Label__endHeap: HeapType;
  var Label__endMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
    __end_lblGuard := false;
  
  // -- Assumptions about method arguments
    assume Heap[_cthread_155, $allocated];
    assume Heap[x_0, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Do welldefinedness check of the exhale part.
      if (*) {
        assume _cthread_155 != null;
        assume state(Heap, Mask);
        assume (issubtype((typeof(_cthread_155): PyTypeDomainType), Thread_0): bool);
        assume state(Heap, Mask);
        assume (issubtype((typeof(x_0): PyTypeDomainType), vint): bool);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of int___gt__(int___unbox__(x_0), 10)
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Precondition of function int___unbox__ might not hold. Assertion issubtype(typeof(x_0), int()) might not hold. (0735.vpr@658.23--658.41) [221459]"}
              (issubtype((typeof(x_0): PyTypeDomainType), vint): bool);
            // Stop execution
            assume false;
          }
          if (*) {
            // Stop execution
            assume false;
          }
        assume int___gt__(Heap, int___unbox__(Heap, x_0), 10);
        assume state(Heap, Mask);
        assume Mask[null, MustTerminate(_cthread_155)] == NoPerm;
        
        // -- Check definedness of (forperm _r_1: Ref [MustInvokeBounded(_r_1)] :: false)
          if (*) {
            if (HasDirectPerm(Mask, null, MustInvokeBounded(_r_1))) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access MustInvokeBounded(_r_1) (0735.vpr@659.12--664.65) [221460]"}
                HasDirectPerm(Mask, null, MustInvokeBounded(_r_1));
            }
            assume false;
          }
        assume (forall _r_1_1: Ref ::
          { Mask[null, MustInvokeBounded(_r_1_1)] } { Heap[null, MustInvokeBounded(_r_1_1)] }
          HasDirectPerm(Mask, null, MustInvokeBounded(_r_1_1)) ==> false
        );
        
        // -- Check definedness of (forperm _r_1: Ref [MustInvokeUnbounded(_r_1)] :: false)
          if (*) {
            if (HasDirectPerm(Mask, null, MustInvokeUnbounded(_r_1_2))) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access MustInvokeUnbounded(_r_1) (0735.vpr@659.12--664.65) [221461]"}
                HasDirectPerm(Mask, null, MustInvokeUnbounded(_r_1_2));
            }
            assume false;
          }
        assume (forall _r_1_3: Ref ::
          { Mask[null, MustInvokeUnbounded(_r_1_3)] } { Heap[null, MustInvokeUnbounded(_r_1_3)] }
          HasDirectPerm(Mask, null, MustInvokeUnbounded(_r_1_3)) ==> false
        );
        
        // -- Check definedness of (forperm _r_1: Ref [_r_1.MustReleaseBounded] :: false)
          if (*) {
            if (HasDirectPerm(Mask, _r_1_4, MustReleaseBounded)) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access _r_1.MustReleaseBounded (0735.vpr@659.12--664.65) [221462]"}
                HasDirectPerm(Mask, _r_1_4, MustReleaseBounded);
            }
            assume false;
          }
        assume (forall _r_1_5: Ref ::
          { Mask[_r_1_5, MustReleaseBounded] } { Heap[_r_1_5, MustReleaseBounded] }
          HasDirectPerm(Mask, _r_1_5, MustReleaseBounded) ==> false
        );
        
        // -- Check definedness of (forperm _r_1: Ref [_r_1.MustReleaseUnbounded] :: false)
          if (*) {
            if (HasDirectPerm(Mask, _r_1_6, MustReleaseUnbounded)) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access _r_1.MustReleaseUnbounded (0735.vpr@659.12--664.65) [221463]"}
                HasDirectPerm(Mask, _r_1_6, MustReleaseUnbounded);
            }
            assume false;
          }
        assume (forall _r_1_7: Ref ::
          { Mask[_r_1_7, MustReleaseUnbounded] } { Heap[_r_1_7, MustReleaseUnbounded] }
          HasDirectPerm(Mask, _r_1_7, MustReleaseUnbounded) ==> false
        );
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally inhale the inhale part.
      assume _cthread_155 != null;
      assume state(Heap, Mask);
      assume (issubtype((typeof(_cthread_155): PyTypeDomainType), Thread_0): bool);
      assume state(Heap, Mask);
      assume (issubtype((typeof(x_0): PyTypeDomainType), vint): bool);
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      
      // -- Check definedness of int___gt__(int___unbox__(x_0), 10)
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function int___unbox__ might not hold. Assertion issubtype(typeof(x_0), int()) might not hold. (0735.vpr@658.23--658.41) [221464]"}
            (issubtype((typeof(x_0): PyTypeDomainType), vint): bool);
          // Stop execution
          assume false;
        }
        if (*) {
          // Stop execution
          assume false;
        }
      assume int___gt__(Heap, int___unbox__(Heap, x_0), 10);
      assume state(Heap, Mask);
      assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[_err, $allocated];
    assume Heap[r_1, $allocated];
    assume Heap[x_1, $allocated];
  
  // -- Translating statement: // id = 1
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 2
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 3
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 4
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 5
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 6
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 7
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 8
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 9
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 10
  // _method_measures_155 := Seq[Measure$]() -- 0735.vpr@671.3--671.42
    _method_measures_155 := (Seq#Empty(): Seq Measure$DomainType);
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 11
  // _err := null -- 0735.vpr@672.3--672.15
    _err := null;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 12
  // x_1 := x_0 -- 0735.vpr@673.3--673.13
    x_1 := x_0;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 13
  // huh := 9 -- 0735.vpr@674.3--674.20
    huh_1 := 9;
    assume state(Heap, Mask);
  
  // -- Translating statement: if (__plugin_refute_nondet1) -- 0735.vpr@675.3--675.44
    if (__plugin_refute_nondet1) {
      
      // -- Translating statement: // id = 14
  // assert !int___gt__(int___unbox__(x_1), 0) -- 0735.vpr@675.3--675.44
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        
        // -- Check definedness of !int___gt__(int___unbox__(x_1), 0)
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            assert {:msg "  Precondition of function int___unbox__ might not hold. Assertion issubtype(typeof(x_1), int()) might not hold. (0735.vpr@675.22--675.40) [221465]"}
              (issubtype((typeof(x_1): PyTypeDomainType), vint): bool);
            // Stop execution
            assume false;
          }
          if (*) {
            // Stop execution
            assume false;
          }
        assert {:msg "  Assert might fail. Assertion !int___gt__(int___unbox__(x_1), 0) might not hold. (0735.vpr@675.10--675.44) [221466]"}
          !int___gt__(Heap, int___unbox__(Heap, x_1), 0);
        assume state(Heap, Mask);
      
      // -- Translating statement: // id = 15
  // inhale false -- 0735.vpr@675.3--675.44
        assume false;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: // id = 16
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 17
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
    assume state(Heap, Mask);
  
  // -- Translating statement: if (__plugin_refute_nondet2) -- 0735.vpr@677.3--677.43
    if (__plugin_refute_nondet2) {
      
      // -- Translating statement: // id = 18
  // assert int___gt__(int___unbox__(x_1), 0) -- 0735.vpr@677.3--677.43
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        
        // -- Check definedness of int___gt__(int___unbox__(x_1), 0)
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            assert {:msg "  Precondition of function int___unbox__ might not hold. Assertion issubtype(typeof(x_1), int()) might not hold. (0735.vpr@677.21--677.39) [221467]"}
              (issubtype((typeof(x_1): PyTypeDomainType), vint): bool);
            // Stop execution
            assume false;
          }
          if (*) {
            // Stop execution
            assume false;
          }
        assert {:msg "  Assert might fail. Assertion int___gt__(int___unbox__(x_1), 0) might not hold. (0735.vpr@677.10--677.43) [221468]"}
          int___gt__(Heap, int___unbox__(Heap, x_1), 0);
        assume state(Heap, Mask);
      
      // -- Translating statement: // id = 19
  // inhale false -- 0735.vpr@677.3--677.43
        assume false;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: // id = 20
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 21
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
    assume state(Heap, Mask);
  
  // -- Translating statement: if (__plugin_refute_nondet3) -- 0735.vpr@678.3--678.15
    if (__plugin_refute_nondet3) {
      
      // -- Translating statement: // id = 22
  // assert false -- 0735.vpr@678.3--678.15
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion false might not hold. (0735.vpr@678.10--678.15) [221469]"}
          false;
        assume state(Heap, Mask);
      
      // -- Translating statement: // id = 23
  // inhale false -- 0735.vpr@678.3--678.15
        assume false;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: // id = 24
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 25
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
    assume state(Heap, Mask);
  
  // -- Translating statement: if (__plugin_refute_nondet4) -- 0735.vpr@680.3--680.14
    if (__plugin_refute_nondet4) {
      
      // -- Translating statement: // id = 26
  // assert true -- 0735.vpr@680.3--680.14
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assume state(Heap, Mask);
      
      // -- Translating statement: // id = 27
  // inhale false -- 0735.vpr@680.3--680.14
        assume false;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: // id = 28
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 29
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
    assume state(Heap, Mask);
  
  // -- Translating statement: if (__plugin_refute_nondet5) -- 0735.vpr@681.3--681.15
    if (__plugin_refute_nondet5) {
      
      // -- Translating statement: // id = 30
  // assert false -- 0735.vpr@681.3--681.15
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion false might not hold. (0735.vpr@681.10--681.15) [221471]"}
          false;
        assume state(Heap, Mask);
      
      // -- Translating statement: // id = 31
  // inhale false -- 0735.vpr@681.3--681.15
        assume false;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: // id = 32
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 33
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
    assume state(Heap, Mask);
  
  // -- Translating statement: if (int___gt__(int___unbox__(x_1), 0)) -- 0735.vpr@682.3--690.4
    
    // -- Check definedness of int___gt__(int___unbox__(x_1), 0)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function int___unbox__ might not hold. Assertion issubtype(typeof(x_1), int()) might not hold. (0735.vpr@682.18--682.36) [221472]"}
          (issubtype((typeof(x_1): PyTypeDomainType), vint): bool);
        // Stop execution
        assume false;
      }
      if (*) {
        // Stop execution
        assume false;
      }
    if (int___gt__(Heap, int___unbox__(Heap, x_1), 0)) {
      
      // -- Translating statement: // id = 34
  // r := x_1 -- 0735.vpr@683.5--683.13
        r_1 := x_1;
        assume state(Heap, Mask);
      
      // -- Translating statement: // id = 35
  // inhale _isDefined(114) -- 0735.vpr@684.5--684.27
        assume state(Heap, Mask);
        
        // -- Check definedness of _isDefined(114)
          if (*) {
            // Stop execution
            assume false;
          }
        assume _isDefined(Heap, 114);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: // id = 36
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
        assume state(Heap, Mask);
      
      // -- Translating statement: if (__plugin_refute_nondet6) -- 0735.vpr@687.5--687.17
        if (__plugin_refute_nondet6) {
          
          // -- Translating statement: // id = 37
  // assert false -- 0735.vpr@687.5--687.17
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Assert might fail. Assertion false might not hold. (0735.vpr@687.12--687.17) [221473]"}
              false;
            assume state(Heap, Mask);
          
          // -- Translating statement: // id = 38
  // inhale false -- 0735.vpr@687.5--687.17
            assume false;
            assume state(Heap, Mask);
            assume state(Heap, Mask);
        } else {
          
          // -- Translating statement: // id = 39
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
      
      // -- Translating statement: // id = 40
  // r := __prim__int___box__(0) -- 0735.vpr@688.5--688.32
        
        // -- Check definedness of __prim__int___box__(0)
          if (*) {
            // Stop execution
            assume false;
          }
        r_1 := __prim__int___box__(Heap, 0);
        assume state(Heap, Mask);
      
      // -- Translating statement: // id = 41
  // inhale _isDefined(114) -- 0735.vpr@689.5--689.27
        assume state(Heap, Mask);
        
        // -- Check definedness of _isDefined(114)
          if (*) {
            // Stop execution
            assume false;
          }
        assume _isDefined(Heap, 114);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 42
  // goto __end -- 0735.vpr@691.3--691.13
    goto __end;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 43
  // label __end -- 0735.vpr@692.3--692.14
    __end:
    Label__endHeap := Heap;
    Label__endMask := Mask;
    __end_lblGuard := true;
    assume state(Heap, Mask);
}