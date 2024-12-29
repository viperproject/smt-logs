// 
// Translation of Viper program.
// 
// Date:         2024-12-29 20:36:34
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/predicates/non-aliasing.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/predicates/non-aliasing-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  
  // -- Check definedness of predicate body of valid
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, next:=Mask[this, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (non-aliasing.vpr@8.1--11.2) [152317]"}
        HasDirectPerm(Mask, this, next);
    if (Heap[this, next] != null) {
      
      // -- Check definedness of acc(valid(this.next), wildcard)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (non-aliasing.vpr@8.1--11.2) [152318]"}
          HasDirectPerm(Mask, this, next);
      havoc wildcard;
      perm := wildcard;
      Mask := Mask[null, valid(Heap[this, next]):=Mask[null, valid(Heap[this, next])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate valid2
// ==================================================

type PredicateType_valid2;
function  valid2(this: Ref): Field PredicateType_valid2 FrameType;
function  valid2#sm(this: Ref): Field PredicateType_valid2 PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(valid2(this)) }
  PredicateMaskField(valid2(this)) == valid2#sm(this)
);
axiom (forall this: Ref ::
  { valid2(this) }
  IsPredicateField(valid2(this))
);
axiom (forall this: Ref ::
  { valid2(this) }
  getPredWandId(valid2(this)) == 1
);
function  valid2#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  valid2#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { valid2(this), valid2(this2) }
  valid2(this) == valid2(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { valid2#sm(this), valid2#sm(this2) }
  valid2#sm(this) == valid2#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { valid2#trigger(Heap, valid2(this)) }
  valid2#everUsed(valid2(this))
);

procedure valid2#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of valid2
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, next:=Mask[this, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (non-aliasing.vpr@27.1--30.2) [152319]"}
        HasDirectPerm(Mask, this, next);
    if (Heap[this, next] != null) {
      
      // -- Check definedness of acc(valid2(this.next), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (non-aliasing.vpr@27.1--30.2) [152320]"}
          HasDirectPerm(Mask, this, next);
      perm := FullPerm;
      Mask := Mask[null, valid2(Heap[this, next]):=Mask[null, valid2(Heap[this, next])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method testNestingUnfold
// ==================================================

procedure testNestingUnfold(this: Ref) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
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
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, valid(this):=Mask[null, valid(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: unfold acc(valid(this), wildcard) -- non-aliasing.vpr@16.3--16.36
    assume valid#trigger(Heap, valid(this));
    assume Heap[null, valid(this)] == CombineFrames(FrameFragment(Heap[this, next]), FrameFragment((if Heap[this, next] != null then Heap[null, valid(Heap[this, next])] else EmptyFrame)));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Unfolding valid(this) might fail. There might be insufficient permission to access valid(this) (non-aliasing.vpr@16.3--16.36) [152322]"}
      Mask[null, valid(this)] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[null, valid(this)];
    Mask := Mask[null, valid(this):=Mask[null, valid(this)] - wildcard];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, valid(this))) {
        havoc newVersion;
        Heap := Heap[null, valid(this):=newVersion];
      }
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, next:=Mask[this, next] + perm];
    assume state(Heap, Mask);
    if (Heap[this, next] != null) {
      havoc wildcard;
      perm := wildcard;
      Mask := Mask[null, valid(Heap[this, next]):=Mask[null, valid(Heap[this, next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(valid(this), Heap[null, valid(this)], valid(Heap[this, next]), Heap[null, valid(Heap[this, next])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this != this.next -- non-aliasing.vpr@17.3--17.33
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of this != this.next
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (non-aliasing.vpr@17.11--17.32) [152323]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, next);
    assert {:msg "  Assert might fail. Assertion this != this.next might not hold. (non-aliasing.vpr@17.11--17.32) [152324]"}
      this != Heap[this, next];
    assume state(Heap, Mask);
  
  // -- Translating statement: if (this.next != null) -- non-aliasing.vpr@19.3--23.4
    
    // -- Check definedness of this.next != null
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.next (non-aliasing.vpr@19.8--19.29) [152325]"}
        HasDirectPerm(Mask, this, next);
    if (Heap[this, next] != null) {
      
      // -- Translating statement: unfold acc(valid(this.next), wildcard) -- non-aliasing.vpr@20.5--20.43
        
        // -- Check definedness of acc(valid(this.next), wildcard)
          assert {:msg "  Unfolding valid(this.next) might fail. There might be insufficient permission to access this.next (non-aliasing.vpr@20.5--20.43) [152326]"}
            HasDirectPerm(Mask, this, next);
        assume valid#trigger(Heap, valid(Heap[this, next]));
        assume Heap[null, valid(Heap[this, next])] == CombineFrames(FrameFragment(Heap[Heap[this, next], next]), FrameFragment((if Heap[Heap[this, next], next] != null then Heap[null, valid(Heap[Heap[this, next], next])] else EmptyFrame)));
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Unfolding valid(this.next) might fail. There might be insufficient permission to access valid(this.next) (non-aliasing.vpr@20.5--20.43) [152328]"}
          Mask[null, valid(Heap[this, next])] > NoPerm;
        havoc wildcard;
        assume wildcard < Mask[null, valid(Heap[this, next])];
        Mask := Mask[null, valid(Heap[this, next]):=Mask[null, valid(Heap[this, next])] - wildcard];
        
        // -- Update version of predicate
          if (!HasDirectPerm(Mask, null, valid(Heap[this, next]))) {
            havoc newVersion;
            Heap := Heap[null, valid(Heap[this, next]):=newVersion];
          }
        havoc wildcard;
        perm := wildcard;
        assume Heap[this, next] != null;
        Mask := Mask[Heap[this, next], next:=Mask[Heap[this, next], next] + perm];
        assume state(Heap, Mask);
        if (Heap[Heap[this, next], next] != null) {
          havoc wildcard;
          perm := wildcard;
          Mask := Mask[null, valid(Heap[Heap[this, next], next]):=Mask[null, valid(Heap[Heap[this, next], next])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(valid(Heap[this, next]), Heap[null, valid(Heap[this, next])], valid(Heap[Heap[this, next], next]), Heap[null, valid(Heap[Heap[this, next], next])]);
          assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: assert this.next != this.next.next -- non-aliasing.vpr@21.5--21.45
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        
        // -- Check definedness of this.next != this.next.next
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (non-aliasing.vpr@21.13--21.44) [152329]"}
            HasDirectPerm(ExhaleWellDef0Mask, this, next);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (non-aliasing.vpr@21.13--21.44) [152330]"}
            HasDirectPerm(ExhaleWellDef0Mask, this, next);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next.next (non-aliasing.vpr@21.13--21.44) [152331]"}
            HasDirectPerm(ExhaleWellDef0Mask, Heap[this, next], next);
        assert {:msg "  Assert might fail. Assertion this.next != this.next.next might not hold. (non-aliasing.vpr@21.13--21.44) [152332]"}
          Heap[this, next] != Heap[Heap[this, next], next];
        assume state(Heap, Mask);
      
      // -- Translating statement: assert this != this.next.next -- non-aliasing.vpr@22.5--22.40
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        
        // -- Check definedness of this != this.next.next
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (non-aliasing.vpr@22.13--22.39) [152333]"}
            HasDirectPerm(ExhaleWellDef0Mask, this, next);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next.next (non-aliasing.vpr@22.13--22.39) [152334]"}
            HasDirectPerm(ExhaleWellDef0Mask, Heap[this, next], next);
        assert {:msg "  Assert might fail. Assertion this != this.next.next might not hold. (non-aliasing.vpr@22.13--22.39) [152335]"}
          this != Heap[Heap[this, next], next];
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method testNestingUnfold2
// ==================================================

procedure testNestingUnfold2(this: Ref) returns ()
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
    Mask := Mask[null, valid2(this):=Mask[null, valid2(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: unfold acc(valid2(this), write) -- non-aliasing.vpr@35.3--35.27
    assume valid2#trigger(Heap, valid2(this));
    assume Heap[null, valid2(this)] == CombineFrames(FrameFragment(Heap[this, next]), FrameFragment((if Heap[this, next] != null then Heap[null, valid2(Heap[this, next])] else EmptyFrame)));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding valid2(this) might fail. There might be insufficient permission to access valid2(this) (non-aliasing.vpr@35.3--35.27) [152338]"}
        perm <= Mask[null, valid2(this)];
    }
    Mask := Mask[null, valid2(this):=Mask[null, valid2(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, valid2(this))) {
        havoc newVersion;
        Heap := Heap[null, valid2(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, next:=Mask[this, next] + perm];
    assume state(Heap, Mask);
    if (Heap[this, next] != null) {
      perm := FullPerm;
      Mask := Mask[null, valid2(Heap[this, next]):=Mask[null, valid2(Heap[this, next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(valid2(this), Heap[null, valid2(this)], valid2(Heap[this, next]), Heap[null, valid2(Heap[this, next])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this != this.next -- non-aliasing.vpr@36.3--36.33
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of this != this.next
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (non-aliasing.vpr@36.11--36.32) [152341]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, next);
    assert {:msg "  Assert might fail. Assertion this != this.next might not hold. (non-aliasing.vpr@36.11--36.32) [152342]"}
      this != Heap[this, next];
    assume state(Heap, Mask);
}