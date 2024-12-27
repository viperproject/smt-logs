// 
// Translation of Viper program.
// 
// Date:         2024-12-27 10:38:02
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/chalice/framing-fields.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/chalice/framing-fields-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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

const unique value: Field NormalField int;
axiom !IsPredicateField(value);
axiom !IsWandField(value);
const unique next: Field NormalField Ref;
axiom !IsPredicateField(next);
axiom !IsWandField(next);

// ==================================================
// Translation of predicate valid
// ==================================================

type PredicateType_valid;
function  valid(this: Ref): Field PredicateType_valid FrameType;
function  valid#sm(this: Ref): Field PredicateType_valid PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(valid(this)) }
  PredicateMaskField(valid(this)) == valid#sm(this)
);
axiom (forall this: Ref ::
  { valid(this) }
  IsPredicateField(valid(this))
);
axiom (forall this: Ref ::
  { valid(this) }
  getPredWandId(valid(this)) == 0
);
function  valid#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  valid#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { valid(this), valid(this2) }
  valid(this) == valid(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { valid#sm(this), valid#sm(this2) }
  valid#sm(this) == valid#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { valid#trigger(Heap, valid(this)) }
  valid#everUsed(valid(this))
);

procedure valid#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of valid
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, value:=Mask[this, value] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, next:=Mask[this, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (framing-fields.vpr@6.3--6.143) [143350]"}
        HasDirectPerm(Mask, this, next);
    if (Heap[this, next] != null) {
      
      // -- Check definedness of acc(valid(this.next), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (framing-fields.vpr@6.3--6.143) [143351]"}
          HasDirectPerm(Mask, this, next);
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[this, next]):=Mask[null, valid(Heap[this, next])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method set
// ==================================================

procedure set(this: Ref, x: int, y: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
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
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, valid(this):=Mask[null, valid(this)] + perm];
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
    perm := FullPerm;
    PostMask := PostMask[null, valid(this):=PostMask[null, valid(this)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of set might not hold. There might be insufficient permission to access valid(this) (framing-fields.vpr@9.13--9.36) [143352]"}
        perm <= Mask[null, valid(this)];
    }
    Mask := Mask[null, valid(this):=Mask[null, valid(this)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method M
// ==================================================

procedure M_3(this: Ref, x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newPMask: PMaskType;
  var i: int;
  var j_9: int;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleHeap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Checked inhaling of precondition
    assume x != null;
    assume y != null;
    assume x != y;
    perm := FullPerm;
    Mask := Mask[null, valid(x):=Mask[null, valid(x)] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, valid(y):=Mask[null, valid(y)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: i := (unfolding acc(valid(x), write) in x.value) -- framing-fields.vpr@15.5--15.62
    
    // -- Check definedness of (unfolding acc(valid(x), write) in x.value)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume valid#trigger(UnfoldingHeap, valid(x));
      assume UnfoldingHeap[null, valid(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, value]), CombineFrames(FrameFragment(UnfoldingHeap[x, next]), FrameFragment((if UnfoldingHeap[x, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[x, next])] else EmptyFrame))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access valid(x) (framing-fields.vpr@15.5--15.62) [143353]"}
          perm <= UnfoldingMask[null, valid(x)];
      }
      UnfoldingMask := UnfoldingMask[null, valid(x):=UnfoldingMask[null, valid(x)] - perm];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, value:=UnfoldingMask[x, value] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, next:=UnfoldingMask[x, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[x, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[x, next]):=UnfoldingMask[null, valid(UnfoldingHeap[x, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(x), UnfoldingHeap[null, valid(x)], valid(UnfoldingHeap[x, next]), UnfoldingHeap[null, valid(UnfoldingHeap[x, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.value (framing-fields.vpr@15.5--15.62) [143354]"}
        HasDirectPerm(UnfoldingMask, x, value);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, valid#sm(x):=Heap[null, valid#sm(x)][x, value:=true]];
        Heap := Heap[null, valid#sm(x):=Heap[null, valid#sm(x)][x, next:=true]];
        if (Heap[x, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
            { newPMask[o_15, f_20] }
            Heap[null, valid#sm(x)][o_15, f_20] || Heap[null, valid#sm(Heap[x, next])][o_15, f_20] ==> newPMask[o_15, f_20]
          );
          Heap := Heap[null, valid#sm(x):=newPMask];
        }
        assume state(Heap, Mask);
    i := Heap[x, value];
    assume state(Heap, Mask);
  
  // -- Translating statement: j := (unfolding acc(valid(y), write) in y.value) -- framing-fields.vpr@16.5--16.62
    
    // -- Check definedness of (unfolding acc(valid(y), write) in y.value)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume valid#trigger(UnfoldingHeap, valid(y));
      assume UnfoldingHeap[null, valid(y)] == CombineFrames(FrameFragment(UnfoldingHeap[y, value]), CombineFrames(FrameFragment(UnfoldingHeap[y, next]), FrameFragment((if UnfoldingHeap[y, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[y, next])] else EmptyFrame))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access valid(y) (framing-fields.vpr@16.5--16.62) [143355]"}
          perm <= UnfoldingMask[null, valid(y)];
      }
      UnfoldingMask := UnfoldingMask[null, valid(y):=UnfoldingMask[null, valid(y)] - perm];
      perm := FullPerm;
      assume y != null;
      UnfoldingMask := UnfoldingMask[y, value:=UnfoldingMask[y, value] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume y != null;
      UnfoldingMask := UnfoldingMask[y, next:=UnfoldingMask[y, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[y, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[y, next]):=UnfoldingMask[null, valid(UnfoldingHeap[y, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(y), UnfoldingHeap[null, valid(y)], valid(UnfoldingHeap[y, next]), UnfoldingHeap[null, valid(UnfoldingHeap[y, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access y.value (framing-fields.vpr@16.5--16.62) [143356]"}
        HasDirectPerm(UnfoldingMask, y, value);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, valid#sm(y):=Heap[null, valid#sm(y)][y, value:=true]];
        Heap := Heap[null, valid#sm(y):=Heap[null, valid#sm(y)][y, next:=true]];
        if (Heap[y, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
            { newPMask[o_16, f_21] }
            Heap[null, valid#sm(y)][o_16, f_21] || Heap[null, valid#sm(Heap[y, next])][o_16, f_21] ==> newPMask[o_16, f_21]
          );
          Heap := Heap[null, valid#sm(y):=newPMask];
        }
        assume state(Heap, Mask);
    j_9 := Heap[y, value];
    assume state(Heap, Mask);
  
  // -- Translating statement: set(y, 0, 10) -- framing-fields.vpr@17.5--17.18
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method set might not hold. There might be insufficient permission to access valid(y) (framing-fields.vpr@17.5--17.18) [143357]"}
          perm <= Mask[null, valid(y)];
      }
      Mask := Mask[null, valid(y):=Mask[null, valid(y)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, valid(y):=Mask[null, valid(y)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (unfolding acc(valid(x), write) in i == x.value) -- framing-fields.vpr@18.5--18.66
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (unfolding acc(valid(x), write) in i == x.value)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume valid#trigger(UnfoldingHeap, valid(x));
      assume UnfoldingHeap[null, valid(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, value]), CombineFrames(FrameFragment(UnfoldingHeap[x, next]), FrameFragment((if UnfoldingHeap[x, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[x, next])] else EmptyFrame))));
      ExhaleWellDef1Mask := UnfoldingMask;
      ExhaleWellDef1Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access valid(x) (framing-fields.vpr@18.13--18.65) [143358]"}
          perm <= UnfoldingMask[null, valid(x)];
      }
      UnfoldingMask := UnfoldingMask[null, valid(x):=UnfoldingMask[null, valid(x)] - perm];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, value:=UnfoldingMask[x, value] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, next:=UnfoldingMask[x, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[x, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[x, next]):=UnfoldingMask[null, valid(UnfoldingHeap[x, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(x), UnfoldingHeap[null, valid(x)], valid(UnfoldingHeap[x, next]), UnfoldingHeap[null, valid(UnfoldingHeap[x, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.value (framing-fields.vpr@18.13--18.65) [143359]"}
        HasDirectPerm(UnfoldingMask, x, value);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, valid#sm(x):=Heap[null, valid#sm(x)][x, value:=true]];
        Heap := Heap[null, valid#sm(x):=Heap[null, valid#sm(x)][x, next:=true]];
        if (Heap[x, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_52: Ref, f_55: (Field A B) ::
            { newPMask[o_52, f_55] }
            Heap[null, valid#sm(x)][o_52, f_55] || Heap[null, valid#sm(Heap[x, next])][o_52, f_55] ==> newPMask[o_52, f_55]
          );
          Heap := Heap[null, valid#sm(x):=newPMask];
        }
        assume state(Heap, Mask);
    assert {:msg "  Assert might fail. Assertion i == x.value might not hold. (framing-fields.vpr@18.13--18.65) [143360]"}
      i == Heap[x, value];
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, valid#sm(x):=Heap[null, valid#sm(x)][x, value:=true]];
      Heap := Heap[null, valid#sm(x):=Heap[null, valid#sm(x)][x, next:=true]];
      if (Heap[x, next] != null) {
        havoc newPMask;
        assume (forall <A, B> o_53: Ref, f_56: (Field A B) ::
          { newPMask[o_53, f_56] }
          Heap[null, valid#sm(x)][o_53, f_56] || Heap[null, valid#sm(Heap[x, next])][o_53, f_56] ==> newPMask[o_53, f_56]
        );
        Heap := Heap[null, valid#sm(x):=newPMask];
      }
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (unfolding acc(valid(y), write) in j == y.value) -- framing-fields.vpr@20.5--20.66
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (unfolding acc(valid(y), write) in j == y.value)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume valid#trigger(UnfoldingHeap, valid(y));
      assume UnfoldingHeap[null, valid(y)] == CombineFrames(FrameFragment(UnfoldingHeap[y, value]), CombineFrames(FrameFragment(UnfoldingHeap[y, next]), FrameFragment((if UnfoldingHeap[y, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[y, next])] else EmptyFrame))));
      ExhaleWellDef1Mask := UnfoldingMask;
      ExhaleWellDef1Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access valid(y) (framing-fields.vpr@20.13--20.65) [143361]"}
          perm <= UnfoldingMask[null, valid(y)];
      }
      UnfoldingMask := UnfoldingMask[null, valid(y):=UnfoldingMask[null, valid(y)] - perm];
      perm := FullPerm;
      assume y != null;
      UnfoldingMask := UnfoldingMask[y, value:=UnfoldingMask[y, value] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume y != null;
      UnfoldingMask := UnfoldingMask[y, next:=UnfoldingMask[y, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[y, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[y, next]):=UnfoldingMask[null, valid(UnfoldingHeap[y, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(y), UnfoldingHeap[null, valid(y)], valid(UnfoldingHeap[y, next]), UnfoldingHeap[null, valid(UnfoldingHeap[y, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Assert might fail. There might be insufficient permission to access y.value (framing-fields.vpr@20.13--20.65) [143362]"}
        HasDirectPerm(UnfoldingMask, y, value);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, valid#sm(y):=Heap[null, valid#sm(y)][y, value:=true]];
        Heap := Heap[null, valid#sm(y):=Heap[null, valid#sm(y)][y, next:=true]];
        if (Heap[y, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_26: Ref, f_29: (Field A B) ::
            { newPMask[o_26, f_29] }
            Heap[null, valid#sm(y)][o_26, f_29] || Heap[null, valid#sm(Heap[y, next])][o_26, f_29] ==> newPMask[o_26, f_29]
          );
          Heap := Heap[null, valid#sm(y):=newPMask];
        }
        assume state(Heap, Mask);
    assert {:msg "  Assert might fail. Assertion j == y.value might not hold. (framing-fields.vpr@20.13--20.65) [143363]"}
      j_9 == Heap[y, value];
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, valid#sm(y):=Heap[null, valid#sm(y)][y, value:=true]];
      Heap := Heap[null, valid#sm(y):=Heap[null, valid#sm(y)][y, next:=true]];
      if (Heap[y, next] != null) {
        havoc newPMask;
        assume (forall <A, B> o: Ref, f_85: (Field A B) ::
          { newPMask[o, f_85] }
          Heap[null, valid#sm(y)][o, f_85] || Heap[null, valid#sm(Heap[y, next])][o, f_85] ==> newPMask[o, f_85]
        );
        Heap := Heap[null, valid#sm(y):=newPMask];
      }
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}