// 
// Translation of Viper program.
// 
// Date:         2024-12-27 10:45:40
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0049.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0049-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o: Ref, f: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o, f] }
  Heap[o, $allocated] ==> Heap[Heap[o, f], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_1: Ref, f_2: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_1, f_2] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_1, f_2) ==> Heap[o_1, f_2] == ExhaleHeap[o_1, f_2]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f), ExhaleHeap[null, PredicateMaskField(pm_f)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsPredicateField(pm_f) ==> Heap[null, PredicateMaskField(pm_f)] == ExhaleHeap[null, PredicateMaskField(pm_f)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsPredicateField(pm_f) ==> (forall <A, B> o2: Ref, f_2: (Field A B) ::
    { ExhaleHeap[o2, f_2] }
    Heap[null, PredicateMaskField(pm_f)][o2, f_2] ==> Heap[o2, f_2] == ExhaleHeap[o2, f_2]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f), ExhaleHeap[null, WandMaskField(pm_f)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsWandField(pm_f) ==> Heap[null, WandMaskField(pm_f)] == ExhaleHeap[null, WandMaskField(pm_f)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsWandField(pm_f) ==> (forall <A, B> o2: Ref, f_2: (Field A B) ::
    { ExhaleHeap[o2, f_2] }
    Heap[null, WandMaskField(pm_f)][o2, f_2] ==> Heap[o2, f_2] == ExhaleHeap[o2, f_2]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_1: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_1, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_1, $allocated] ==> ExhaleHeap[o_1, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o: Ref, f_3: (Field A B), v: B ::
  { Heap[o, f_3:=v] }
  succHeap(Heap, Heap[o, f_3:=v])
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
// Translation of domain GlobalKPermission
// ==================================================

// The type for domain GlobalKPermission
type GlobalKPermissionDomainType;

// Translation of domain unique function globalK$
const unique globalK$: Perm;

// Translation of domain axiom globalKReadOnly
axiom NoPerm < globalK$ && globalK$ < FullPerm;

// ==================================================
// Translation of all fields
// ==================================================

const unique old$methodPermission: Field NormalField Perm;
axiom !IsPredicateField(old$methodPermission);
axiom !IsWandField(old$methodPermission);
const unique Cellx$: Field NormalField int;
axiom !IsPredicateField(Cellx$);
axiom !IsWandField(Cellx$);

// ==================================================
// Translation of predicate Cellwrite1$
// ==================================================

type PredicateType_Cellwrite1$;
function  Cellwrite1$(this$_1: Ref): Field PredicateType_Cellwrite1$ FrameType;
function  Cellwrite1$#sm(this$_1: Ref): Field PredicateType_Cellwrite1$ PMaskType;
axiom (forall this$_1: Ref ::
  { PredicateMaskField(Cellwrite1$(this$_1)) }
  PredicateMaskField(Cellwrite1$(this$_1)) == Cellwrite1$#sm(this$_1)
);
axiom (forall this$_1: Ref ::
  { Cellwrite1$(this$_1) }
  IsPredicateField(Cellwrite1$(this$_1))
);
axiom (forall this$_1: Ref ::
  { Cellwrite1$(this$_1) }
  getPredWandId(Cellwrite1$(this$_1)) == 0
);
function  Cellwrite1$#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Cellwrite1$#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this$_1: Ref, this$_12: Ref ::
  { Cellwrite1$(this$_1), Cellwrite1$(this$_12) }
  Cellwrite1$(this$_1) == Cellwrite1$(this$_12) ==> this$_1 == this$_12
);
axiom (forall this$_1: Ref, this$_12: Ref ::
  { Cellwrite1$#sm(this$_1), Cellwrite1$#sm(this$_12) }
  Cellwrite1$#sm(this$_1) == Cellwrite1$#sm(this$_12) ==> this$_1 == this$_12
);

axiom (forall Heap: HeapType, this$_1: Ref ::
  { Cellwrite1$#trigger(Heap, Cellwrite1$(this$_1)) }
  Cellwrite1$#everUsed(Cellwrite1$(this$_1))
);

procedure Cellwrite1$#definedness(this$_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of Cellwrite1$
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[this$_1, $allocated];
    perm := FullPerm;
    assume this$_1 != null;
    Mask := Mask[this$_1, Cellx$:=Mask[this$_1, Cellx$] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate Cellread1$
// ==================================================

type PredicateType_Cellread1$;
function  Cellread1$(this$_2: Ref): Field PredicateType_Cellread1$ FrameType;
function  Cellread1$#sm(this$_2: Ref): Field PredicateType_Cellread1$ PMaskType;
axiom (forall this$_2: Ref ::
  { PredicateMaskField(Cellread1$(this$_2)) }
  PredicateMaskField(Cellread1$(this$_2)) == Cellread1$#sm(this$_2)
);
axiom (forall this$_2: Ref ::
  { Cellread1$(this$_2) }
  IsPredicateField(Cellread1$(this$_2))
);
axiom (forall this$_2: Ref ::
  { Cellread1$(this$_2) }
  getPredWandId(Cellread1$(this$_2)) == 1
);
function  Cellread1$#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Cellread1$#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this$_2: Ref, this$_22: Ref ::
  { Cellread1$(this$_2), Cellread1$(this$_22) }
  Cellread1$(this$_2) == Cellread1$(this$_22) ==> this$_2 == this$_22
);
axiom (forall this$_2: Ref, this$_22: Ref ::
  { Cellread1$#sm(this$_2), Cellread1$#sm(this$_22) }
  Cellread1$#sm(this$_2) == Cellread1$#sm(this$_22) ==> this$_2 == this$_22
);

axiom (forall Heap: HeapType, this$_2: Ref ::
  { Cellread1$#trigger(Heap, Cellread1$(this$_2)) }
  Cellread1$#everUsed(Cellread1$(this$_2))
);

procedure Cellread1$#definedness(this$_2: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of Cellread1$
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[this$_2, $allocated];
    perm := globalK$;
    assert {:msg "  Predicate might not be well-formed. Fraction globalK$() might be negative. (0049.vpr@22.1--24.2) [192647]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this$_2 != null;
    Mask := Mask[this$_2, Cellx$:=Mask[this$_2, Cellx$] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate Cellread2$
// ==================================================

type PredicateType_Cellread2$;
function  Cellread2$(this$_3: Ref): Field PredicateType_Cellread2$ FrameType;
function  Cellread2$#sm(this$_3: Ref): Field PredicateType_Cellread2$ PMaskType;
axiom (forall this$_3: Ref ::
  { PredicateMaskField(Cellread2$(this$_3)) }
  PredicateMaskField(Cellread2$(this$_3)) == Cellread2$#sm(this$_3)
);
axiom (forall this$_3: Ref ::
  { Cellread2$(this$_3) }
  IsPredicateField(Cellread2$(this$_3))
);
axiom (forall this$_3: Ref ::
  { Cellread2$(this$_3) }
  getPredWandId(Cellread2$(this$_3)) == 2
);
function  Cellread2$#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Cellread2$#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this$_3: Ref, this$_32: Ref ::
  { Cellread2$(this$_3), Cellread2$(this$_32) }
  Cellread2$(this$_3) == Cellread2$(this$_32) ==> this$_3 == this$_32
);
axiom (forall this$_3: Ref, this$_32: Ref ::
  { Cellread2$#sm(this$_3), Cellread2$#sm(this$_32) }
  Cellread2$#sm(this$_3) == Cellread2$#sm(this$_32) ==> this$_3 == this$_32
);

axiom (forall Heap: HeapType, this$_3: Ref ::
  { Cellread2$#trigger(Heap, Cellread2$(this$_3)) }
  Cellread2$#everUsed(Cellread2$(this$_3))
);

procedure Cellread2$#definedness(this$_3: Ref) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  
  // -- Check definedness of predicate body of Cellread2$
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[this$_3, $allocated];
    havoc wildcard;
    perm := wildcard;
    assume this$_3 != null;
    Mask := Mask[this$_3, Cellx$:=Mask[this$_3, Cellx$] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method Cellb3$
// ==================================================

procedure Cellb3$(this: Ref, k$: Perm) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newVersion: FrameType;
  var wildcard: real where wildcard > NoPerm;
  var freshVersion: FrameType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    assume this != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Cellread1$(this):=Mask[null, Cellread1$(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: unfold acc(Cellread1$(this), write) -- 0049.vpr@34.3--34.38
    assume Cellread1$#trigger(Heap, Cellread1$(this));
    assume Heap[null, Cellread1$(this)] == ConditionalFrame(globalK$, FrameFragment(Heap[this, Cellx$]));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Cellread1$(this) might fail. There might be insufficient permission to access Cellread1$(this) (0049.vpr@34.3--34.38) [192650]"}
        perm <= Mask[null, Cellread1$(this)];
    }
    Mask := Mask[null, Cellread1$(this):=Mask[null, Cellread1$(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Cellread1$(this))) {
        havoc newVersion;
        Heap := Heap[null, Cellread1$(this):=newVersion];
      }
    perm := globalK$;
    assert {:msg "  Unfolding Cellread1$(this) might fail. Fraction globalK$() might be negative. (0049.vpr@34.3--34.38) [192651]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, Cellx$:=Mask[this, Cellx$] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Cellread2$(this), write) -- 0049.vpr@35.3--35.36
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Folding Cellread2$(this) might fail. There might be insufficient permission to access this.Cellx$ (0049.vpr@35.3--35.36) [192653]"}
      Mask[this, Cellx$] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[this, Cellx$];
    Mask := Mask[this, Cellx$:=Mask[this, Cellx$] - wildcard];
    perm := FullPerm;
    Mask := Mask[null, Cellread2$(this):=Mask[null, Cellread2$(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Cellread2$#trigger(Heap, Cellread2$(this));
    assume Heap[null, Cellread2$(this)] == FrameFragment(Heap[this, Cellx$]);
    if (!HasDirectPerm(Mask, null, Cellread2$(this))) {
      Heap := Heap[null, Cellread2$#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Cellread2$(this):=freshVersion];
    }
    Heap := Heap[null, Cellread2$#sm(this):=Heap[null, Cellread2$#sm(this)][this, Cellx$:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Cellread2$(this), write) -- 0049.vpr@36.3--36.36
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Folding Cellread2$(this) might fail. There might be insufficient permission to access this.Cellx$ (0049.vpr@36.3--36.36) [192656]"}
      Mask[this, Cellx$] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[this, Cellx$];
    Mask := Mask[this, Cellx$:=Mask[this, Cellx$] - wildcard];
    perm := FullPerm;
    Mask := Mask[null, Cellread2$(this):=Mask[null, Cellread2$(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Cellread2$#trigger(Heap, Cellread2$(this));
    assume Heap[null, Cellread2$(this)] == FrameFragment(Heap[this, Cellx$]);
    if (!HasDirectPerm(Mask, null, Cellread2$(this))) {
      Heap := Heap[null, Cellread2$#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Cellread2$(this):=freshVersion];
    }
    Heap := Heap[null, Cellread2$#sm(this):=Heap[null, Cellread2$#sm(this)][this, Cellx$:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Cellwrite1$(this), write) -- 0049.vpr@38.3--38.37
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Cellwrite1$(this) might fail. There might be insufficient permission to access this.Cellx$ (0049.vpr@38.3--38.37) [192660]"}
        perm <= Mask[this, Cellx$];
    }
    Mask := Mask[this, Cellx$:=Mask[this, Cellx$] - perm];
    perm := FullPerm;
    Mask := Mask[null, Cellwrite1$(this):=Mask[null, Cellwrite1$(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Cellwrite1$#trigger(Heap, Cellwrite1$(this));
    assume Heap[null, Cellwrite1$(this)] == FrameFragment(Heap[this, Cellx$]);
    if (!HasDirectPerm(Mask, null, Cellwrite1$(this))) {
      Heap := Heap[null, Cellwrite1$#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Cellwrite1$(this):=freshVersion];
    }
    Heap := Heap[null, Cellwrite1$#sm(this):=Heap[null, Cellwrite1$#sm(this)][this, Cellx$:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}