// 
// Translation of Viper program.
// 
// Date:         2024-12-27 02:35:35
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/inhale_exhale/wellformedness.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/inhale_exhale/wellformedness-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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

const unique x_36: Field NormalField int;
axiom !IsPredicateField(x_36);
axiom !IsWandField(x_36);

// ==================================================
// Translation of method s0
// ==================================================

procedure s0_1(this: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of this.x == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (wellformedness.vpr@20.12--20.23) [189098]"}
        HasDirectPerm(Mask, this, x_36);
    assume Heap[this, x_36] == 0;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
}

// ==================================================
// Translation of method s1
// ==================================================

procedure s1_8(this: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    
    // -- Check definedness of this.x == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (wellformedness.vpr@26.11--26.22) [189099]"}
        HasDirectPerm(PostMask, this, x_36);
    assume PostHeap[this, x_36] == 0;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale acc(this.x, write) && this.x == 0 -- wellformedness.vpr@28.3--28.36
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, x_36:=Mask[this, x_36] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.x == 0
      assert {:msg "  Inhale might fail. There might be insufficient permission to access this.x (wellformedness.vpr@28.10--28.36) [189101]"}
        HasDirectPerm(Mask, this, x_36);
    assume Heap[this, x_36] == 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of s1 might not hold. Assertion this.x == 0 might not hold. (wellformedness.vpr@26.11--26.22) [189102]"}
      Heap[this, x_36] == 0;
}

// ==================================================
// Translation of method s2
// ==================================================

procedure s2_8(this: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    assume this != null;
    
    // -- Check definedness of this.x == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (wellformedness.vpr@33.12--33.39) [189103]"}
        HasDirectPerm(Mask, this, x_36);
    assume Heap[this, x_36] == 0;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
}

// ==================================================
// Translation of method s3
// ==================================================

procedure s3_1(this: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    assume this != null;
    
    // -- Check definedness of this.x == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (wellformedness.vpr@39.11--39.38) [189104]"}
        HasDirectPerm(PostMask, this, x_36);
    assume PostHeap[this, x_36] == 0;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale acc(this.x, write) && this.x == 0 -- wellformedness.vpr@41.3--41.36
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, x_36:=Mask[this, x_36] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.x == 0
      assert {:msg "  Inhale might fail. There might be insufficient permission to access this.x (wellformedness.vpr@41.10--41.36) [189106]"}
        HasDirectPerm(Mask, this, x_36);
    assume Heap[this, x_36] == 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of s3 might not hold. Assertion this != null might not hold. (wellformedness.vpr@39.11--39.38) [189107]"}
      this != null;
    assert {:msg "  Postcondition of s3 might not hold. Assertion this.x == 0 might not hold. (wellformedness.vpr@39.11--39.38) [189108]"}
      Heap[this, x_36] == 0;
}

// ==================================================
// Translation of method i0
// ==================================================

procedure i0_2(this: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Do welldefinedness check of the exhale part.
      if (*) {
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally inhale the inhale part.
      
      // -- Check definedness of this.x == 0
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (wellformedness.vpr@54.12--54.31) [189109]"}
          HasDirectPerm(Mask, this, x_36);
      assume Heap[this, x_36] == 0;
      assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
}

// ==================================================
// Translation of method i1
// ==================================================

procedure i1_36(this: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    
    // -- Do welldefinedness check of the inhale part.
      if (*) {
        
        // -- Check definedness of this.x == 0
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (wellformedness.vpr@60.11--60.30) [189110]"}
            HasDirectPerm(PostMask, this, x_36);
        assume PostHeap[this, x_36] == 0;
        assume state(PostHeap, PostMask);
        assume false;
      }
    
    // -- Normally inhale the exhale part.
      assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale acc(this.x, write) && this.x == 0 -- wellformedness.vpr@62.3--62.36
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, x_36:=Mask[this, x_36] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.x == 0
      assert {:msg "  Inhale might fail. There might be insufficient permission to access this.x (wellformedness.vpr@62.10--62.36) [189112]"}
        HasDirectPerm(Mask, this, x_36);
    assume Heap[this, x_36] == 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
}

// ==================================================
// Translation of method i2
// ==================================================

procedure i2_33(this: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Do welldefinedness check of the exhale part.
      if (*) {
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally inhale the inhale part.
      assume this != null;
      
      // -- Check definedness of this.x == 0
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (wellformedness.vpr@67.12--67.47) [189113]"}
          HasDirectPerm(Mask, this, x_36);
      assume Heap[this, x_36] == 0;
      assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
}

// ==================================================
// Translation of method i3
// ==================================================

procedure i3_15(this: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    
    // -- Do welldefinedness check of the inhale part.
      if (*) {
        assume this != null;
        
        // -- Check definedness of this.x == 0
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (wellformedness.vpr@73.11--73.46) [189114]"}
            HasDirectPerm(PostMask, this, x_36);
        assume PostHeap[this, x_36] == 0;
        assume state(PostHeap, PostMask);
        assume false;
      }
    
    // -- Normally inhale the exhale part.
      assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale acc(this.x, write) && this.x == 0 -- wellformedness.vpr@75.3--75.36
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, x_36:=Mask[this, x_36] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.x == 0
      assert {:msg "  Inhale might fail. There might be insufficient permission to access this.x (wellformedness.vpr@75.10--75.36) [189116]"}
        HasDirectPerm(Mask, this, x_36);
    assume Heap[this, x_36] == 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
}

// ==================================================
// Translation of method e0
// ==================================================

procedure e0_1(this: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Do welldefinedness check of the exhale part.
      if (*) {
        
        // -- Check definedness of this.x == 0
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (wellformedness.vpr@85.12--85.31) [189117]"}
            HasDirectPerm(Mask, this, x_36);
        assume Heap[this, x_36] == 0;
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally inhale the inhale part.
      assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
}

// ==================================================
// Translation of method e1
// ==================================================

procedure e1_1(this: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    
    // -- Do welldefinedness check of the inhale part.
      if (*) {
        assume state(PostHeap, PostMask);
        assume false;
      }
    
    // -- Normally inhale the exhale part.
      
      // -- Check definedness of this.x == 0
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (wellformedness.vpr@92.11--92.30) [189118]"}
          HasDirectPerm(PostMask, this, x_36);
      assume PostHeap[this, x_36] == 0;
      assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale acc(this.x, write) && this.x == 0 -- wellformedness.vpr@94.3--94.36
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, x_36:=Mask[this, x_36] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.x == 0
      assert {:msg "  Inhale might fail. There might be insufficient permission to access this.x (wellformedness.vpr@94.10--94.36) [189120]"}
        HasDirectPerm(Mask, this, x_36);
    assume Heap[this, x_36] == 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of e1 might not hold. Assertion this.x == 0 might not hold. (wellformedness.vpr@92.11--92.30) [189121]"}
      Heap[this, x_36] == 0;
}

// ==================================================
// Translation of method e2
// ==================================================

procedure e2(this: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Do welldefinedness check of the exhale part.
      if (*) {
        assume this != null;
        
        // -- Check definedness of this.x == 0
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (wellformedness.vpr@100.12--100.47) [189122]"}
            HasDirectPerm(Mask, this, x_36);
        assume Heap[this, x_36] == 0;
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally inhale the inhale part.
      assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
}

// ==================================================
// Translation of method e3
// ==================================================

procedure e3(this: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    
    // -- Do welldefinedness check of the inhale part.
      if (*) {
        assume state(PostHeap, PostMask);
        assume false;
      }
    
    // -- Normally inhale the exhale part.
      assume this != null;
      
      // -- Check definedness of this.x == 0
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (wellformedness.vpr@107.11--107.46) [189123]"}
          HasDirectPerm(PostMask, this, x_36);
      assume PostHeap[this, x_36] == 0;
      assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale acc(this.x, write) && this.x == 0 -- wellformedness.vpr@109.3--109.36
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, x_36:=Mask[this, x_36] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.x == 0
      assert {:msg "  Inhale might fail. There might be insufficient permission to access this.x (wellformedness.vpr@109.10--109.36) [189125]"}
        HasDirectPerm(Mask, this, x_36);
    assume Heap[this, x_36] == 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of e3 might not hold. Assertion this != null might not hold. (wellformedness.vpr@107.11--107.46) [189126]"}
      this != null;
    assert {:msg "  Postcondition of e3 might not hold. Assertion this.x == 0 might not hold. (wellformedness.vpr@107.11--107.46) [189127]"}
      Heap[this, x_36] == 0;
}

// ==================================================
// Translation of method ie0
// ==================================================

procedure ie0_1(this: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Do welldefinedness check of the exhale part.
      if (*) {
        
        // -- Check definedness of this.x == 0
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (wellformedness.vpr@118.12--118.38) [189128]"}
            HasDirectPerm(Mask, this, x_36);
        assume Heap[this, x_36] == 0;
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally inhale the inhale part.
      
      // -- Check definedness of this.x == 0
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (wellformedness.vpr@118.12--118.38) [189129]"}
          HasDirectPerm(Mask, this, x_36);
      assume Heap[this, x_36] == 0;
      assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
}

// ==================================================
// Translation of method ie1
// ==================================================

procedure ie1_1(this: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    
    // -- Do welldefinedness check of the inhale part.
      if (*) {
        
        // -- Check definedness of this.x == 0
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (wellformedness.vpr@124.11--124.37) [189130]"}
            HasDirectPerm(PostMask, this, x_36);
        assume PostHeap[this, x_36] == 0;
        assume state(PostHeap, PostMask);
        assume false;
      }
    
    // -- Normally inhale the exhale part.
      
      // -- Check definedness of this.x == 0
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (wellformedness.vpr@124.11--124.37) [189131]"}
          HasDirectPerm(PostMask, this, x_36);
      assume PostHeap[this, x_36] == 0;
      assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale acc(this.x, write) && this.x == 0 -- wellformedness.vpr@126.3--126.36
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, x_36:=Mask[this, x_36] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.x == 0
      assert {:msg "  Inhale might fail. There might be insufficient permission to access this.x (wellformedness.vpr@126.10--126.36) [189133]"}
        HasDirectPerm(Mask, this, x_36);
    assume Heap[this, x_36] == 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of ie1 might not hold. Assertion this.x == 0 might not hold. (wellformedness.vpr@124.11--124.37) [189134]"}
      Heap[this, x_36] == 0;
}

// ==================================================
// Translation of method ie2
// ==================================================

procedure ie2(this: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Do welldefinedness check of the exhale part.
      if (*) {
        assume this != null;
        
        // -- Check definedness of this.x == 0
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (wellformedness.vpr@131.12--131.70) [189135]"}
            HasDirectPerm(Mask, this, x_36);
        assume Heap[this, x_36] == 0;
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally inhale the inhale part.
      assume this != null;
      
      // -- Check definedness of this.x == 0
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (wellformedness.vpr@131.12--131.70) [189136]"}
          HasDirectPerm(Mask, this, x_36);
      assume Heap[this, x_36] == 0;
      assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
}

// ==================================================
// Translation of method ie3
// ==================================================

procedure ie3(this: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    
    // -- Do welldefinedness check of the inhale part.
      if (*) {
        assume this != null;
        
        // -- Check definedness of this.x == 0
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (wellformedness.vpr@137.11--137.69) [189137]"}
            HasDirectPerm(PostMask, this, x_36);
        assume PostHeap[this, x_36] == 0;
        assume state(PostHeap, PostMask);
        assume false;
      }
    
    // -- Normally inhale the exhale part.
      assume this != null;
      
      // -- Check definedness of this.x == 0
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (wellformedness.vpr@137.11--137.69) [189138]"}
          HasDirectPerm(PostMask, this, x_36);
      assume PostHeap[this, x_36] == 0;
      assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale acc(this.x, write) && this.x == 0 -- wellformedness.vpr@139.3--139.36
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, x_36:=Mask[this, x_36] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.x == 0
      assert {:msg "  Inhale might fail. There might be insufficient permission to access this.x (wellformedness.vpr@139.10--139.36) [189140]"}
        HasDirectPerm(Mask, this, x_36);
    assume Heap[this, x_36] == 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of ie3 might not hold. Assertion this != null might not hold. (wellformedness.vpr@137.11--137.69) [189141]"}
      this != null;
    assert {:msg "  Postcondition of ie3 might not hold. Assertion this.x == 0 might not hold. (wellformedness.vpr@137.11--137.69) [189142]"}
      Heap[this, x_36] == 0;
}

// ==================================================
// Translation of method t1
// ==================================================

procedure t1(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Do welldefinedness check of the exhale part.
      if (*) {
        assume state(Heap, Mask);
        assume this != null;
        
        // -- Check definedness of this.x == 0
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (wellformedness.vpr@156.12--156.47) [189143]"}
            HasDirectPerm(Mask, this, x_36);
        assume Heap[this, x_36] == 0;
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally inhale the inhale part.
      perm := FullPerm;
      assume this != null;
      Mask := Mask[this, x_36:=Mask[this, x_36] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
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
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Do welldefinedness check of the exhale part.
      if (*) {
        perm := FullPerm;
        assume this != null;
        Mask := Mask[this, x_36:=Mask[this, x_36] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally inhale the inhale part.
      assume state(Heap, Mask);
      assume this != null;
      
      // -- Check definedness of this.x == 0
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (wellformedness.vpr@169.12--169.47) [189144]"}
          HasDirectPerm(Mask, this, x_36);
      assume Heap[this, x_36] == 0;
      assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
}

// ==================================================
// Translation of method t3
// ==================================================

procedure t3(this: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    
    // -- Do welldefinedness check of the inhale part.
      if (*) {
        perm := FullPerm;
        assume this != null;
        PostMask := PostMask[this, x_36:=PostMask[this, x_36] + perm];
        assume state(PostHeap, PostMask);
        assume state(PostHeap, PostMask);
        assume state(PostHeap, PostMask);
        assume false;
      }
    
    // -- Normally inhale the exhale part.
      assume state(PostHeap, PostMask);
      assume this != null;
      
      // -- Check definedness of this.x == 0
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (wellformedness.vpr@183.11--183.46) [189145]"}
          HasDirectPerm(PostMask, this, x_36);
      assume PostHeap[this, x_36] == 0;
      assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale acc(this.x, write) && this.x == 0 -- wellformedness.vpr@185.3--185.36
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, x_36:=Mask[this, x_36] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.x == 0
      assert {:msg "  Inhale might fail. There might be insufficient permission to access this.x (wellformedness.vpr@185.10--185.36) [189147]"}
        HasDirectPerm(Mask, this, x_36);
    assume Heap[this, x_36] == 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of t3 might not hold. Assertion this != null might not hold. (wellformedness.vpr@183.11--183.46) [189148]"}
      this != null;
    assert {:msg "  Postcondition of t3 might not hold. Assertion this.x == 0 might not hold. (wellformedness.vpr@183.11--183.46) [189149]"}
      Heap[this, x_36] == 0;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method t4
// ==================================================

procedure t4(this: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    
    // -- Do welldefinedness check of the inhale part.
      if (*) {
        assume state(PostHeap, PostMask);
        assume this != null;
        
        // -- Check definedness of this.x == 0
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (wellformedness.vpr@197.11--197.46) [189150]"}
            HasDirectPerm(PostMask, this, x_36);
        assume PostHeap[this, x_36] == 0;
        assume state(PostHeap, PostMask);
        assume false;
      }
    
    // -- Normally inhale the exhale part.
      perm := FullPerm;
      assume this != null;
      PostMask := PostMask[this, x_36:=PostMask[this, x_36] + perm];
      assume state(PostHeap, PostMask);
      assume state(PostHeap, PostMask);
      assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale acc(this.x, write) && this.x == 0 -- wellformedness.vpr@199.3--199.36
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, x_36:=Mask[this, x_36] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.x == 0
      assert {:msg "  Inhale might fail. There might be insufficient permission to access this.x (wellformedness.vpr@199.10--199.36) [189152]"}
        HasDirectPerm(Mask, this, x_36);
    assume Heap[this, x_36] == 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of t4 might not hold. There might be insufficient permission to access this.x (wellformedness.vpr@195.11--195.30) [189153]"}
        perm <= Mask[this, x_36];
    }
    Mask := Mask[this, x_36:=Mask[this, x_36] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}