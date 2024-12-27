// 
// Translation of Viper program.
// 
// Date:         2024-12-27 10:39:43
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/predicates/arguments.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/predicates/arguments-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// Translation of all fields
// ==================================================

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);
const unique g: Field NormalField int;
axiom !IsPredicateField(g);
axiom !IsWandField(g);
const unique unrelatedField: Field NormalField int;
axiom !IsPredicateField(unrelatedField);
axiom !IsWandField(unrelatedField);

// ==================================================
// Translation of predicate valid
// ==================================================

type PredicateType_valid;
function  valid(this: Ref, b_24: bool): Field PredicateType_valid FrameType;
function  valid#sm(this: Ref, b_24: bool): Field PredicateType_valid PMaskType;
axiom (forall this: Ref, b_24: bool ::
  { PredicateMaskField(valid(this, b_24)) }
  PredicateMaskField(valid(this, b_24)) == valid#sm(this, b_24)
);
axiom (forall this: Ref, b_24: bool ::
  { valid(this, b_24) }
  IsPredicateField(valid(this, b_24))
);
axiom (forall this: Ref, b_24: bool ::
  { valid(this, b_24) }
  getPredWandId(valid(this, b_24)) == 0
);
function  valid#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  valid#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, b_24: bool, this2: Ref, b2: bool ::
  { valid(this, b_24), valid(this2, b2) }
  valid(this, b_24) == valid(this2, b2) ==> this == this2 && b_24 == b2
);
axiom (forall this: Ref, b_24: bool, this2: Ref, b2: bool ::
  { valid#sm(this, b_24), valid#sm(this2, b2) }
  valid#sm(this, b_24) == valid#sm(this2, b2) ==> this == this2 && b_24 == b2
);

axiom (forall Heap: HeapType, this: Ref, b_24: bool ::
  { valid#trigger(Heap, valid(this, b_24)) }
  valid#everUsed(valid(this, b_24))
);

procedure valid#definedness(this: Ref, b_24: bool) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of valid
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    if (b_24) {
      perm := FullPerm;
      assume this != null;
      Mask := Mask[this, f_7:=Mask[this, f_7] + perm];
      assume state(Heap, Mask);
    } else {
      perm := FullPerm;
      assume this != null;
      Mask := Mask[this, g:=Mask[this, g] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method unrelated
// ==================================================

procedure unrelated(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
    Mask := Mask[this, unrelatedField:=Mask[this, unrelatedField] + perm];
    assume state(Heap, Mask);
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
    perm := FullPerm;
    assume this != null;
    PostMask := PostMask[this, unrelatedField:=PostMask[this, unrelatedField] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of unrelated might not hold. There might be insufficient permission to access this.unrelatedField (arguments.vpr@11.13--11.44) [152190]"}
        perm <= Mask[this, unrelatedField];
    }
    Mask := Mask[this, unrelatedField:=Mask[this, unrelatedField] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method t1
// ==================================================

procedure t1(this: Ref, b_24: bool) returns ()
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
  var freshVersion: FrameType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
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
    Mask := Mask[this, unrelatedField:=Mask[this, unrelatedField] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, valid(this, b_24):=Mask[null, valid(this, b_24)] + perm];
    assume state(Heap, Mask);
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
    perm := FullPerm;
    PostMask := PostMask[null, valid(this, b_24):=PostMask[null, valid(this, b_24)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(valid(this, b), write) -- arguments.vpr@23.5--23.38
    assume valid#trigger(Heap, valid(this, b_24));
    assume Heap[null, valid(this, b_24)] == FrameFragment((if b_24 then FrameFragment(Heap[this, f_7]) else FrameFragment(Heap[this, g])));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding valid(this, b) might fail. There might be insufficient permission to access valid(this, b) (arguments.vpr@23.5--23.38) [152193]"}
        perm <= Mask[null, valid(this, b_24)];
    }
    Mask := Mask[null, valid(this, b_24):=Mask[null, valid(this, b_24)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, valid(this, b_24))) {
        havoc newVersion;
        Heap := Heap[null, valid(this, b_24):=newVersion];
      }
    if (b_24) {
      perm := FullPerm;
      assume this != null;
      Mask := Mask[this, f_7:=Mask[this, f_7] + perm];
      assume state(Heap, Mask);
    } else {
      perm := FullPerm;
      assume this != null;
      Mask := Mask[this, g:=Mask[this, g] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (b) -- arguments.vpr@24.5--28.6
    if (b_24) {
      
      // -- Translating statement: this.f := 1 -- arguments.vpr@25.9--25.20
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.f (arguments.vpr@25.9--25.20) [152196]"}
          FullPerm == Mask[this, f_7];
        Heap := Heap[this, f_7:=1];
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: this.g := 2 -- arguments.vpr@27.9--27.20
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.g (arguments.vpr@27.9--27.20) [152197]"}
          FullPerm == Mask[this, g];
        Heap := Heap[this, g:=2];
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(valid(this, b), write) -- arguments.vpr@29.5--29.36
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    if (b_24) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid(this, b) might fail. There might be insufficient permission to access this.f (arguments.vpr@29.5--29.36) [152200]"}
          perm <= Mask[this, f_7];
      }
      Mask := Mask[this, f_7:=Mask[this, f_7] - perm];
    } else {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid(this, b) might fail. There might be insufficient permission to access this.g (arguments.vpr@29.5--29.36) [152202]"}
          perm <= Mask[this, g];
      }
      Mask := Mask[this, g:=Mask[this, g] - perm];
    }
    perm := FullPerm;
    Mask := Mask[null, valid(this, b_24):=Mask[null, valid(this, b_24)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume valid#trigger(Heap, valid(this, b_24));
    assume Heap[null, valid(this, b_24)] == FrameFragment((if b_24 then FrameFragment(Heap[this, f_7]) else FrameFragment(Heap[this, g])));
    if (!HasDirectPerm(Mask, null, valid(this, b_24))) {
      Heap := Heap[null, valid#sm(this, b_24):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, valid(this, b_24):=freshVersion];
    }
    if (b_24) {
      Heap := Heap[null, valid#sm(this, b_24):=Heap[null, valid#sm(this, b_24)][this, f_7:=true]];
    } else {
      Heap := Heap[null, valid#sm(this, b_24):=Heap[null, valid#sm(this, b_24)][this, g:=true]];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unrelated(this) -- arguments.vpr@30.5--30.20
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method unrelated might not hold. There might be insufficient permission to access this.unrelatedField (arguments.vpr@30.5--30.20) [152204]"}
          perm <= Mask[this, unrelatedField];
      }
      Mask := Mask[this, unrelatedField:=Mask[this, unrelatedField] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      assume this != null;
      Mask := Mask[this, unrelatedField:=Mask[this, unrelatedField] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of t1 might not hold. There might be insufficient permission to access valid(this, b) (arguments.vpr@21.13--21.39) [152205]"}
        perm <= Mask[null, valid(this, b_24)];
    }
    Mask := Mask[null, valid(this, b_24):=Mask[null, valid(this, b_24)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method t2
// ==================================================

procedure t2(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var freshVersion: FrameType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
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
    Mask := Mask[this, unrelatedField:=Mask[this, unrelatedField] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, f_7:=Mask[this, f_7] + perm];
    assume state(Heap, Mask);
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
    perm := FullPerm;
    PostMask := PostMask[null, valid(this, true):=PostMask[null, valid(this, true)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: fold acc(valid(this, true), write) -- arguments.vpr@38.5--38.39
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(this, true) might fail. There might be insufficient permission to access this.f (arguments.vpr@38.5--38.39) [152208]"}
        perm <= Mask[this, f_7];
    }
    Mask := Mask[this, f_7:=Mask[this, f_7] - perm];
    perm := FullPerm;
    Mask := Mask[null, valid(this, true):=Mask[null, valid(this, true)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume valid#trigger(Heap, valid(this, true));
    assume Heap[null, valid(this, true)] == FrameFragment(FrameFragment(Heap[this, f_7]));
    if (!HasDirectPerm(Mask, null, valid(this, true))) {
      Heap := Heap[null, valid#sm(this, true):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, valid(this, true):=freshVersion];
    }
    Heap := Heap[null, valid#sm(this, true):=Heap[null, valid#sm(this, true)][this, f_7:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unrelated(this) -- arguments.vpr@39.5--39.20
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method unrelated might not hold. There might be insufficient permission to access this.unrelatedField (arguments.vpr@39.5--39.20) [152212]"}
          perm <= Mask[this, unrelatedField];
      }
      Mask := Mask[this, unrelatedField:=Mask[this, unrelatedField] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      assume this != null;
      Mask := Mask[this, unrelatedField:=Mask[this, unrelatedField] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of t2 might not hold. There might be insufficient permission to access valid(this, true) (arguments.vpr@36.13--36.42) [152213]"}
        perm <= Mask[null, valid(this, true)];
    }
    Mask := Mask[null, valid(this, true):=Mask[null, valid(this, true)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method t2b
// ==================================================

procedure t2b(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var freshVersion: FrameType;
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
    Mask := Mask[this, f_7:=Mask[this, f_7] + perm];
    assume state(Heap, Mask);
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
    perm := FullPerm;
    PostMask := PostMask[null, valid(this, true):=PostMask[null, valid(this, true)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: fold acc(valid(this, false), write) -- arguments.vpr@47.5--47.40
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(this, false) might fail. There might be insufficient permission to access this.g (arguments.vpr@47.5--47.40) [152218]"}
        perm <= Mask[this, g];
    }
    Mask := Mask[this, g:=Mask[this, g] - perm];
    perm := FullPerm;
    Mask := Mask[null, valid(this, false):=Mask[null, valid(this, false)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume valid#trigger(Heap, valid(this, false));
    assume Heap[null, valid(this, false)] == FrameFragment(FrameFragment(Heap[this, g]));
    if (!HasDirectPerm(Mask, null, valid(this, false))) {
      Heap := Heap[null, valid#sm(this, false):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, valid(this, false):=freshVersion];
    }
    Heap := Heap[null, valid#sm(this, false):=Heap[null, valid#sm(this, false)][this, g:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of t2b might not hold. There might be insufficient permission to access valid(this, true) (arguments.vpr@44.13--44.42) [152220]"}
        perm <= Mask[null, valid(this, true)];
    }
    Mask := Mask[null, valid(this, true):=Mask[null, valid(this, true)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method t3
// ==================================================

procedure t3(this: Ref, b_24: bool) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
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
    Mask := Mask[this, unrelatedField:=Mask[this, unrelatedField] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, valid(this, b_24):=Mask[null, valid(this, b_24)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, valid(this, !b_24):=Mask[null, valid(this, !b_24)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (unfolding acc(valid(this, false), write) in this.g == 2)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume valid#trigger(UnfoldingHeap, valid(this, false));
      assume UnfoldingHeap[null, valid(this, false)] == FrameFragment(FrameFragment(UnfoldingHeap[this, g]));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access valid(this, false) (arguments.vpr@55.15--55.74) [152221]"}
          perm <= UnfoldingMask[null, valid(this, false)];
      }
      UnfoldingMask := UnfoldingMask[null, valid(this, false):=UnfoldingMask[null, valid(this, false)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, g:=UnfoldingMask[this, g] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.g (arguments.vpr@55.15--55.74) [152222]"}
        HasDirectPerm(UnfoldingMask, this, g);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, valid#sm(this, false):=Heap[null, valid#sm(this, false)][this, g:=true]];
        assume state(Heap, Mask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume valid#trigger(UnfoldingHeap, valid(this, false));
      assume UnfoldingHeap[null, valid(this, false)] == FrameFragment(FrameFragment(UnfoldingHeap[this, g]));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, valid(this, false):=UnfoldingMask[null, valid(this, false)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, g:=UnfoldingMask[this, g] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    assume Heap[this, g] == 2;
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
    perm := FullPerm;
    PostMask := PostMask[null, valid(this, b_24):=PostMask[null, valid(this, b_24)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    PostMask := PostMask[null, valid(this, !b_24):=PostMask[null, valid(this, !b_24)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (unfolding acc(valid(this, false), write) in this.g == 2)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume valid#trigger(UnfoldingHeap, valid(this, false));
      assume UnfoldingHeap[null, valid(this, false)] == FrameFragment(FrameFragment(UnfoldingHeap[this, g]));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access valid(this, false) (arguments.vpr@58.14--58.73) [152223]"}
          perm <= UnfoldingMask[null, valid(this, false)];
      }
      UnfoldingMask := UnfoldingMask[null, valid(this, false):=UnfoldingMask[null, valid(this, false)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, g:=UnfoldingMask[this, g] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.g (arguments.vpr@58.14--58.73) [152224]"}
        HasDirectPerm(UnfoldingMask, this, g);
      
      // -- Free assumptions (exp module)
        PostHeap := PostHeap[null, valid#sm(this, false):=PostHeap[null, valid#sm(this, false)][this, g:=true]];
        assume state(PostHeap, PostMask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume valid#trigger(UnfoldingHeap, valid(this, false));
      assume UnfoldingHeap[null, valid(this, false)] == FrameFragment(FrameFragment(UnfoldingHeap[this, g]));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, valid(this, false):=UnfoldingMask[null, valid(this, false)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, g:=UnfoldingMask[this, g] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    assume PostHeap[this, g] == 2;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(valid(this, true), write) -- arguments.vpr@60.5--60.41
    assume valid#trigger(Heap, valid(this, true));
    assume Heap[null, valid(this, true)] == FrameFragment(FrameFragment(Heap[this, f_7]));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding valid(this, true) might fail. There might be insufficient permission to access valid(this, true) (arguments.vpr@60.5--60.41) [152227]"}
        perm <= Mask[null, valid(this, true)];
    }
    Mask := Mask[null, valid(this, true):=Mask[null, valid(this, true)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, valid(this, true))) {
        havoc newVersion;
        Heap := Heap[null, valid(this, true):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, f_7:=Mask[this, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.f := 1 -- arguments.vpr@61.5--61.16
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.f (arguments.vpr@61.5--61.16) [152230]"}
      FullPerm == Mask[this, f_7];
    Heap := Heap[this, f_7:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(valid(this, true), write) -- arguments.vpr@62.5--62.39
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(this, true) might fail. There might be insufficient permission to access this.f (arguments.vpr@62.5--62.39) [152233]"}
        perm <= Mask[this, f_7];
    }
    Mask := Mask[this, f_7:=Mask[this, f_7] - perm];
    perm := FullPerm;
    Mask := Mask[null, valid(this, true):=Mask[null, valid(this, true)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume valid#trigger(Heap, valid(this, true));
    assume Heap[null, valid(this, true)] == FrameFragment(FrameFragment(Heap[this, f_7]));
    if (!HasDirectPerm(Mask, null, valid(this, true))) {
      Heap := Heap[null, valid#sm(this, true):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, valid(this, true):=freshVersion];
    }
    Heap := Heap[null, valid#sm(this, true):=Heap[null, valid#sm(this, true)][this, f_7:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of t3 might not hold. There might be insufficient permission to access valid(this, b) (arguments.vpr@56.13--56.39) [152237]"}
        perm <= Mask[null, valid(this, b_24)];
    }
    Mask := Mask[null, valid(this, b_24):=Mask[null, valid(this, b_24)] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of t3 might not hold. There might be insufficient permission to access valid(this, !b) (arguments.vpr@57.13--57.40) [152238]"}
        perm <= Mask[null, valid(this, !b_24)];
    }
    Mask := Mask[null, valid(this, !b_24):=Mask[null, valid(this, !b_24)] - perm];
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume valid#trigger(UnfoldingHeap, valid(this, false));
      assume UnfoldingHeap[null, valid(this, false)] == FrameFragment(FrameFragment(UnfoldingHeap[this, g]));
      ExhaleWellDef1Heap := UnfoldingHeap;
      ExhaleWellDef1Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of t3 might not hold. There might be insufficient permission to access valid(this, false) (arguments.vpr@58.14--58.73) [152239]"}
          perm <= UnfoldingMask[null, valid(this, false)];
      }
      UnfoldingMask := UnfoldingMask[null, valid(this, false):=UnfoldingMask[null, valid(this, false)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, g:=UnfoldingMask[this, g] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    assert {:msg "  Postcondition of t3 might not hold. Assertion this.g == 2 might not hold. (arguments.vpr@58.14--58.73) [152240]"}
      Heap[this, g] == 2;
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, valid#sm(this, false):=Heap[null, valid#sm(this, false)][this, g:=true]];
      assume state(Heap, Mask);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method t3a
// ==================================================

procedure t3a(this: Ref, b_24: bool) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleHeap: HeapType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, unrelatedField:=Mask[this, unrelatedField] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, valid(this, b_24):=Mask[null, valid(this, b_24)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, valid(this, !b_24):=Mask[null, valid(this, !b_24)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (unfolding acc(valid(this, false), write) in this.g == 2)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume valid#trigger(UnfoldingHeap, valid(this, false));
      assume UnfoldingHeap[null, valid(this, false)] == FrameFragment(FrameFragment(UnfoldingHeap[this, g]));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access valid(this, false) (arguments.vpr@70.15--70.74) [152241]"}
          perm <= UnfoldingMask[null, valid(this, false)];
      }
      UnfoldingMask := UnfoldingMask[null, valid(this, false):=UnfoldingMask[null, valid(this, false)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, g:=UnfoldingMask[this, g] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.g (arguments.vpr@70.15--70.74) [152242]"}
        HasDirectPerm(UnfoldingMask, this, g);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, valid#sm(this, false):=Heap[null, valid#sm(this, false)][this, g:=true]];
        assume state(Heap, Mask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume valid#trigger(UnfoldingHeap, valid(this, false));
      assume UnfoldingHeap[null, valid(this, false)] == FrameFragment(FrameFragment(UnfoldingHeap[this, g]));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, valid(this, false):=UnfoldingMask[null, valid(this, false)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, g:=UnfoldingMask[this, g] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    assume Heap[this, g] == 2;
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
    perm := FullPerm;
    PostMask := PostMask[null, valid(this, b_24):=PostMask[null, valid(this, b_24)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    PostMask := PostMask[null, valid(this, !b_24):=PostMask[null, valid(this, !b_24)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (unfolding acc(valid(this, false), write) in this.g == 2)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume valid#trigger(UnfoldingHeap, valid(this, false));
      assume UnfoldingHeap[null, valid(this, false)] == FrameFragment(FrameFragment(UnfoldingHeap[this, g]));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access valid(this, false) (arguments.vpr@73.14--73.73) [152243]"}
          perm <= UnfoldingMask[null, valid(this, false)];
      }
      UnfoldingMask := UnfoldingMask[null, valid(this, false):=UnfoldingMask[null, valid(this, false)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, g:=UnfoldingMask[this, g] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.g (arguments.vpr@73.14--73.73) [152244]"}
        HasDirectPerm(UnfoldingMask, this, g);
      
      // -- Free assumptions (exp module)
        PostHeap := PostHeap[null, valid#sm(this, false):=PostHeap[null, valid#sm(this, false)][this, g:=true]];
        assume state(PostHeap, PostMask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume valid#trigger(UnfoldingHeap, valid(this, false));
      assume UnfoldingHeap[null, valid(this, false)] == FrameFragment(FrameFragment(UnfoldingHeap[this, g]));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, valid(this, false):=UnfoldingMask[null, valid(this, false)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, g:=UnfoldingMask[this, g] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    assume PostHeap[this, g] == 2;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(valid(this, true), write) -- arguments.vpr@75.5--75.41
    assume valid#trigger(Heap, valid(this, true));
    assume Heap[null, valid(this, true)] == FrameFragment(FrameFragment(Heap[this, f_7]));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding valid(this, true) might fail. There might be insufficient permission to access valid(this, true) (arguments.vpr@75.5--75.41) [152247]"}
        perm <= Mask[null, valid(this, true)];
    }
    Mask := Mask[null, valid(this, true):=Mask[null, valid(this, true)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, valid(this, true))) {
        havoc newVersion;
        Heap := Heap[null, valid(this, true):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, f_7:=Mask[this, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.f := 1 -- arguments.vpr@76.5--76.16
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.f (arguments.vpr@76.5--76.16) [152250]"}
      FullPerm == Mask[this, f_7];
    Heap := Heap[this, f_7:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(valid(this, true), write) -- arguments.vpr@77.5--77.39
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(this, true) might fail. There might be insufficient permission to access this.f (arguments.vpr@77.5--77.39) [152253]"}
        perm <= Mask[this, f_7];
    }
    Mask := Mask[this, f_7:=Mask[this, f_7] - perm];
    perm := FullPerm;
    Mask := Mask[null, valid(this, true):=Mask[null, valid(this, true)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume valid#trigger(Heap, valid(this, true));
    assume Heap[null, valid(this, true)] == FrameFragment(FrameFragment(Heap[this, f_7]));
    if (!HasDirectPerm(Mask, null, valid(this, true))) {
      Heap := Heap[null, valid#sm(this, true):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, valid(this, true):=freshVersion];
    }
    Heap := Heap[null, valid#sm(this, true):=Heap[null, valid#sm(this, true)][this, f_7:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unrelated(this) -- arguments.vpr@78.5--78.20
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method unrelated might not hold. There might be insufficient permission to access this.unrelatedField (arguments.vpr@78.5--78.20) [152257]"}
          perm <= Mask[this, unrelatedField];
      }
      Mask := Mask[this, unrelatedField:=Mask[this, unrelatedField] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      assume this != null;
      Mask := Mask[this, unrelatedField:=Mask[this, unrelatedField] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of t3a might not hold. There might be insufficient permission to access valid(this, b) (arguments.vpr@71.13--71.39) [152258]"}
        perm <= Mask[null, valid(this, b_24)];
    }
    Mask := Mask[null, valid(this, b_24):=Mask[null, valid(this, b_24)] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of t3a might not hold. There might be insufficient permission to access valid(this, !b) (arguments.vpr@72.13--72.40) [152259]"}
        perm <= Mask[null, valid(this, !b_24)];
    }
    Mask := Mask[null, valid(this, !b_24):=Mask[null, valid(this, !b_24)] - perm];
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume valid#trigger(UnfoldingHeap, valid(this, false));
      assume UnfoldingHeap[null, valid(this, false)] == FrameFragment(FrameFragment(UnfoldingHeap[this, g]));
      ExhaleWellDef1Heap := UnfoldingHeap;
      ExhaleWellDef1Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of t3a might not hold. There might be insufficient permission to access valid(this, false) (arguments.vpr@73.14--73.73) [152260]"}
          perm <= UnfoldingMask[null, valid(this, false)];
      }
      UnfoldingMask := UnfoldingMask[null, valid(this, false):=UnfoldingMask[null, valid(this, false)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, g:=UnfoldingMask[this, g] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    assert {:msg "  Postcondition of t3a might not hold. Assertion this.g == 2 might not hold. (arguments.vpr@73.14--73.73) [152261]"}
      Heap[this, g] == 2;
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, valid#sm(this, false):=Heap[null, valid#sm(this, false)][this, g:=true]];
      assume state(Heap, Mask);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method t3b
// ==================================================

procedure t3b(this: Ref, b_24: bool) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, valid(this, b_24):=Mask[null, valid(this, b_24)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, valid(this, !b_24):=Mask[null, valid(this, !b_24)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: unfold acc(valid(this, true), write) -- arguments.vpr@86.5--86.41
    assume valid#trigger(Heap, valid(this, true));
    assume Heap[null, valid(this, true)] == FrameFragment(FrameFragment(Heap[this, f_7]));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding valid(this, true) might fail. There might be insufficient permission to access valid(this, true) (arguments.vpr@86.5--86.41) [152264]"}
        perm <= Mask[null, valid(this, true)];
    }
    Mask := Mask[null, valid(this, true):=Mask[null, valid(this, true)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, valid(this, true))) {
        havoc newVersion;
        Heap := Heap[null, valid(this, true):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, f_7:=Mask[this, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.g := 1 -- arguments.vpr@89.5--89.16
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.g (arguments.vpr@89.5--89.16) [152267]"}
      FullPerm == Mask[this, g];
    Heap := Heap[this, g:=1];
    assume state(Heap, Mask);
}