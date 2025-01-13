// 
// Translation of Viper program.
// 
// Date:         2025-01-13 18:25:06
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/unofficial004.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/unofficial004-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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

const unique joinable$: Field NormalField bool;
axiom !IsPredicateField(joinable$);
axiom !IsWandField(joinable$);
const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);
const unique parX: Field NormalField Ref;
axiom !IsPredicateField(parX);
axiom !IsWandField(parX);
const unique parK: Field NormalField Perm;
axiom !IsPredicateField(parK);
axiom !IsWandField(parK);

// ==================================================
// Translation of predicate P
// ==================================================

type PredicateType_P;
function  P(this: Ref): Field PredicateType_P FrameType;
function  P#sm(this: Ref): Field PredicateType_P PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(P(this)) }
  PredicateMaskField(P(this)) == P#sm(this)
);
axiom (forall this: Ref ::
  { P(this) }
  IsPredicateField(P(this))
);
axiom (forall this: Ref ::
  { P(this) }
  getPredWandId(P(this)) == 0
);
function  P#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  P#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { P(this), P(this2) }
  P(this) == P(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { P#sm(this), P#sm(this2) }
  P#sm(this) == P#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { P#trigger(Heap, P(this)) }
  P#everUsed(P(this))
);

procedure P#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of P
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, f_7:=Mask[this, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method TestunfoldVRd$
// ==================================================

procedure TestunfoldVRd$(this: Ref, k: Perm) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var tk1: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  var freshObj: Ref;
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
    assume NoPerm < k;
    assume state(Heap, Mask);
    assume k < FullPerm;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, P(this):=Mask[null, P(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[tk1, $allocated];
  
  // -- Translating statement: unfold acc(P(this), k) -- unofficial004.vpr@32.3--32.25
    assert {:msg "  Unfolding P(this) might fail. Fraction k might not be positive. (unofficial004.vpr@32.3--32.25) [201164]"}
      k > NoPerm;
    assume P#trigger(Heap, P(this));
    assume Heap[null, P(this)] == FrameFragment(Heap[this, f_7]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := k;
    assert {:msg "  Unfolding P(this) might fail. Fraction k might be negative. (unofficial004.vpr@32.3--32.25) [201165]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding P(this) might fail. There might be insufficient permission to access P(this) (unofficial004.vpr@32.3--32.25) [201166]"}
        perm <= Mask[null, P(this)];
    }
    Mask := Mask[null, P(this):=Mask[null, P(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, P(this))) {
        havoc newVersion;
        Heap := Heap[null, P(this):=newVersion];
      }
    perm := FullPerm * k;
    assert {:msg "  Unfolding P(this) might fail. Fraction write * k might be negative. (unofficial004.vpr@32.3--32.25) [201167]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, f_7:=Mask[this, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tk1 := new(joinable$, f, parX, parK) -- unofficial004.vpr@34.3--34.39
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    tk1 := freshObj;
    Mask := Mask[tk1, joinable$:=Mask[tk1, joinable$] + FullPerm];
    Mask := Mask[tk1, f_7:=Mask[tk1, f_7] + FullPerm];
    Mask := Mask[tk1, parX:=Mask[tk1, parX] + FullPerm];
    Mask := Mask[tk1, parK:=Mask[tk1, parK] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: tk1.joinable$ := true -- unofficial004.vpr@35.3--35.24
    assert {:msg "  Assignment might fail. There might be insufficient permission to access tk1.joinable$ (unofficial004.vpr@35.3--35.24) [201168]"}
      FullPerm == Mask[tk1, joinable$];
    Heap := Heap[tk1, joinable$:=true];
    assume state(Heap, Mask);
  
  // -- Translating statement: tk1.parX := this -- unofficial004.vpr@36.3--36.19
    assert {:msg "  Assignment might fail. There might be insufficient permission to access tk1.parX (unofficial004.vpr@36.3--36.19) [201169]"}
      FullPerm == Mask[tk1, parX];
    Heap := Heap[tk1, parX:=this];
    assume state(Heap, Mask);
  
  // -- Translating statement: tk1.parK := k -- unofficial004.vpr@37.3--37.16
    assert {:msg "  Assignment might fail. There might be insufficient permission to access tk1.parK (unofficial004.vpr@37.3--37.16) [201170]"}
      FullPerm == Mask[tk1, parK];
    Heap := Heap[tk1, parK:=k];
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(tk1.parX.f, tk1.parK) -- unofficial004.vpr@39.3--39.35
    
    // -- Check definedness of acc(tk1.parX.f, tk1.parK)
      assert {:msg "  Inhale might fail. There might be insufficient permission to access tk1.parX (unofficial004.vpr@39.10--39.35) [201171]"}
        HasDirectPerm(Mask, tk1, parX);
      assert {:msg "  Inhale might fail. There might be insufficient permission to access tk1.parK (unofficial004.vpr@39.10--39.35) [201172]"}
        HasDirectPerm(Mask, tk1, parK);
    perm := Heap[tk1, parK];
    assert {:msg "  Inhale might fail. Fraction tk1.parK might be negative. (unofficial004.vpr@39.10--39.35) [201173]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[tk1, parX] != null;
    Mask := Mask[Heap[tk1, parX], f_7:=Mask[Heap[tk1, parX], f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tk1.joinable$ := false -- unofficial004.vpr@41.3--41.25
    assert {:msg "  Assignment might fail. There might be insufficient permission to access tk1.joinable$ (unofficial004.vpr@41.3--41.25) [201174]"}
      FullPerm == Mask[tk1, joinable$];
    Heap := Heap[tk1, joinable$:=false];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(P(this), k) -- unofficial004.vpr@43.3--43.23
    assert {:msg "  Folding P(this) might fail. Fraction k might not be positive. (unofficial004.vpr@43.3--43.23) [201175]"}
      k > NoPerm;
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm * k;
    assert {:msg "  Folding P(this) might fail. Fraction write * k might be negative. (unofficial004.vpr@43.3--43.23) [201176]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding P(this) might fail. There might be insufficient permission to access this.f (unofficial004.vpr@43.3--43.23) [201177]"}
        perm <= Mask[this, f_7];
    }
    Mask := Mask[this, f_7:=Mask[this, f_7] - perm];
    perm := k;
    assert {:msg "  Folding P(this) might fail. Fraction k might be negative. (unofficial004.vpr@43.3--43.23) [201178]"}
      perm >= NoPerm;
    Mask := Mask[null, P(this):=Mask[null, P(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume P#trigger(Heap, P(this));
    assume Heap[null, P(this)] == FrameFragment(Heap[this, f_7]);
    if (!HasDirectPerm(Mask, null, P(this))) {
      Heap := Heap[null, P#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, P(this):=freshVersion];
    }
    Heap := Heap[null, P#sm(this):=Heap[null, P#sm(this)][this, f_7:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}