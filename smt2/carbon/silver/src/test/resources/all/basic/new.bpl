// 
// Translation of Viper program.
// 
// Date:         2024-12-26 20:14:53
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/basic/new.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/basic/new-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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

const unique value: Field NormalField int;
axiom !IsPredicateField(value);
axiom !IsWandField(value);
const unique Node_v: Field NormalField int;
axiom !IsPredicateField(Node_v);
axiom !IsWandField(Node_v);
const unique Node_n: Field NormalField Ref;
axiom !IsPredicateField(Node_n);
axiom !IsWandField(Node_n);

// ==================================================
// Translation of predicate Node_P
// ==================================================

type PredicateType_Node_P;
function  Node_P(this: Ref): Field PredicateType_Node_P FrameType;
function  Node_P#sm(this: Ref): Field PredicateType_Node_P PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(Node_P(this)) }
  PredicateMaskField(Node_P(this)) == Node_P#sm(this)
);
axiom (forall this: Ref ::
  { Node_P(this) }
  IsPredicateField(Node_P(this))
);
axiom (forall this: Ref ::
  { Node_P(this) }
  getPredWandId(Node_P(this)) == 0
);
function  Node_P#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Node_P#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { Node_P(this), Node_P(this2) }
  Node_P(this) == Node_P(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { Node_P#sm(this), Node_P#sm(this2) }
  Node_P#sm(this) == Node_P#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { Node_P#trigger(Heap, Node_P(this)) }
  Node_P#everUsed(Node_P(this))
);

procedure Node_P#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of Node_P
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, Node_v:=Mask[this, Node_v] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, Node_n:=Mask[this, Node_n] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.Node_n != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Node_n (new.vpr@74.1--77.2) [186606]"}
        HasDirectPerm(Mask, this, Node_n);
    if (Heap[this, Node_n] != null) {
      
      // -- Check definedness of acc(Node_P(this.Node_n), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Node_n (new.vpr@74.1--77.2) [186607]"}
          HasDirectPerm(Mask, this, Node_n);
      perm := FullPerm;
      Mask := Mask[null, Node_P(Heap[this, Node_n]):=Mask[null, Node_P(Heap[this, Node_n])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t1
// ==================================================

procedure t1(this: Ref, a_2: int, b_24: bool, g_1: Ref) returns (c: bool, d: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var f1: Ref;
  var f2: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
    assume Heap[g_1, $allocated];
  
  // -- Checked inhaling of precondition
    assume b_24;
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, value:=Mask[this, value] + perm];
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
    assume d == 1 || d == 2;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[f1, $allocated];
    assume Heap[f2, $allocated];
  
  // -- Translating statement: this.value := 1 -- new.vpr@12.5--12.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.value (new.vpr@12.5--12.20) [186608]"}
      FullPerm == Mask[this, value];
    Heap := Heap[this, value:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: f1 := new() -- new.vpr@13.5--13.16
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    f1 := freshObj;
    assume state(Heap, Mask);
  
  // -- Translating statement: f2 := new() -- new.vpr@14.5--14.16
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    f2 := freshObj;
    assume state(Heap, Mask);
  
  // -- Translating statement: if (g != null) -- new.vpr@15.5--17.6
    if (g_1 != null) {
      
      // -- Translating statement: exhale g != f1 -- new.vpr@16.9--16.23
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Exhale might fail. Assertion g != f1 might not hold. (new.vpr@16.16--16.23) [186609]"}
          g_1 != f1;
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale this.value <= 42 -- new.vpr@18.5--18.28
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of this.value <= 42
      assert {:msg "  Exhale might fail. There might be insufficient permission to access this.value (new.vpr@18.12--18.28) [186610]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, value);
    assert {:msg "  Exhale might fail. Assertion this.value <= 42 might not hold. (new.vpr@18.12--18.28) [186611]"}
      Heap[this, value] <= 42;
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale f1 != f2 -- new.vpr@19.5--19.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Exhale might fail. Assertion f1 != f2 might not hold. (new.vpr@19.12--19.20) [186612]"}
      f1 != f2;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale a == -11 -- new.vpr@20.5--20.22
    assume a_2 == -11;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale a < 0 -- new.vpr@21.5--21.17
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Exhale might fail. Assertion a < 0 might not hold. (new.vpr@21.12--21.17) [186613]"}
      a_2 < 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: d := 2 -- new.vpr@22.5--22.11
    d := 2;
    assume state(Heap, Mask);
  
  // -- Translating statement: if (b) -- new.vpr@23.5--27.6
    if (b_24) {
      
      // -- Translating statement: d := 1 -- new.vpr@24.9--24.15
        d := 1;
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: d := 3 -- new.vpr@26.9--26.15
        d := 3;
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of t1 might not hold. Assertion d == 1 || d == 2 might not hold. (new.vpr@7.13--7.33) [186614]"}
      d == 1 || d == 2;
}

// ==================================================
// Translation of method t2
// ==================================================

procedure t2(a_2: Ref, b_24: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var l1_3: Ref;
  var l2_2: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[a_2, $allocated];
    assume Heap[b_24, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[l1_3, $allocated];
    assume Heap[l2_2, $allocated];
  
  // -- Translating statement: l1 := new() -- new.vpr@37.5--37.16
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    l1_3 := freshObj;
    assume state(Heap, Mask);
  
  // -- Translating statement: l2 := new() -- new.vpr@38.5--38.16
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    l2_2 := freshObj;
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale a != l1 -- new.vpr@39.5--39.19
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Exhale might fail. Assertion a != l1 might not hold. (new.vpr@39.12--39.19) [186615]"}
      a_2 != l1_3;
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale l1 != l2 -- new.vpr@40.5--40.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Exhale might fail. Assertion l1 != l2 might not hold. (new.vpr@40.12--40.20) [186616]"}
      l1_3 != l2_2;
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale a != b -- new.vpr@42.5--42.18
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Exhale might fail. Assertion a != b might not hold. (new.vpr@42.12--42.18) [186617]"}
      a_2 != b_24;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t3
// ==================================================

procedure t3(a_2: Ref, b_24: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[a_2, $allocated];
    assume Heap[b_24, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: if (a == null) -- new.vpr@48.5--54.6
    if (a_2 == null) {
      
      // -- Translating statement: if (b != null) -- new.vpr@49.9--51.10
        if (b_24 != null) {
          
          // -- Translating statement: exhale a != b -- new.vpr@50.13--50.26
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Exhale might fail. Assertion a != b might not hold. (new.vpr@50.20--50.26) [186618]"}
              a_2 != b_24;
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
      
      // -- Translating statement: exhale a != b -- new.vpr@53.9--53.22
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Exhale might fail. Assertion a != b might not hold. (new.vpr@53.16--53.22) [186619]"}
          a_2 != b_24;
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t4
// ==================================================

procedure t4(a_2: Ref, b_24: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[a_2, $allocated];
    assume Heap[b_24, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: if (a == null) -- new.vpr@60.5--64.6
    if (a_2 == null) {
      
      // -- Translating statement: if (b != null) -- new.vpr@61.9--63.10
        if (b_24 != null) {
          
          // -- Translating statement: exhale a != b -- new.vpr@62.13--62.26
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Exhale might fail. Assertion a != b might not hold. (new.vpr@62.20--62.26) [186620]"}
              a_2 != b_24;
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test5
// ==================================================

procedure test5(n: Ref) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var m_17: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[n, $allocated];
  
  // -- Checked inhaling of precondition
    assume n != null;
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, Node_P(n):=Mask[null, Node_P(n)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[m_17, $allocated];
  
  // -- Translating statement: m := new() -- new.vpr@84.3--84.13
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    m_17 := freshObj;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert m != null -- new.vpr@85.3--85.19
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion m != null might not hold. (new.vpr@85.10--85.19) [186621]"}
      m_17 != null;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert m != n -- new.vpr@86.3--86.16
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion m != n might not hold. (new.vpr@86.10--86.16) [186622]"}
      m_17 != n;
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Node_P(n), wildcard) -- new.vpr@88.3--88.34
    assume Node_P#trigger(Heap, Node_P(n));
    assume Heap[null, Node_P(n)] == CombineFrames(FrameFragment(Heap[n, Node_v]), CombineFrames(FrameFragment(Heap[n, Node_n]), FrameFragment((if Heap[n, Node_n] != null then Heap[null, Node_P(Heap[n, Node_n])] else EmptyFrame))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Unfolding Node_P(n) might fail. There might be insufficient permission to access Node_P(n) (new.vpr@88.3--88.34) [186624]"}
      Mask[null, Node_P(n)] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[null, Node_P(n)];
    Mask := Mask[null, Node_P(n):=Mask[null, Node_P(n)] - wildcard];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Node_P(n))) {
        havoc newVersion;
        Heap := Heap[null, Node_P(n):=newVersion];
      }
    havoc wildcard;
    perm := wildcard;
    assume n != null;
    Mask := Mask[n, Node_v:=Mask[n, Node_v] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume n != null;
    Mask := Mask[n, Node_n:=Mask[n, Node_n] + perm];
    assume state(Heap, Mask);
    if (Heap[n, Node_n] != null) {
      havoc wildcard;
      perm := wildcard;
      Mask := Mask[null, Node_P(Heap[n, Node_n]):=Mask[null, Node_P(Heap[n, Node_n])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(Node_P(n), Heap[null, Node_P(n)], Node_P(Heap[n, Node_n]), Heap[null, Node_P(Heap[n, Node_n])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert m != n.Node_n -- new.vpr@90.3--90.25
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of m != n.Node_n
      assert {:msg "  Assert might fail. There might be insufficient permission to access n.Node_n (new.vpr@90.10--90.25) [186625]"}
        HasDirectPerm(ExhaleWellDef0Mask, n, Node_n);
    assert {:msg "  Assert might fail. Assertion m != n.Node_n might not hold. (new.vpr@90.10--90.25) [186626]"}
      m_17 != Heap[n, Node_n];
    assume state(Heap, Mask);
  
  // -- Translating statement: if (n.Node_n != null) -- new.vpr@92.3--95.4
    
    // -- Check definedness of n.Node_n != null
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access n.Node_n (new.vpr@92.7--92.23) [186627]"}
        HasDirectPerm(Mask, n, Node_n);
    if (Heap[n, Node_n] != null) {
      
      // -- Translating statement: unfold acc(Node_P(n.Node_n), wildcard) -- new.vpr@93.5--93.43
        
        // -- Check definedness of acc(Node_P(n.Node_n), wildcard)
          assert {:msg "  Unfolding Node_P(n.Node_n) might fail. There might be insufficient permission to access n.Node_n (new.vpr@93.5--93.43) [186628]"}
            HasDirectPerm(Mask, n, Node_n);
        assume Node_P#trigger(Heap, Node_P(Heap[n, Node_n]));
        assume Heap[null, Node_P(Heap[n, Node_n])] == CombineFrames(FrameFragment(Heap[Heap[n, Node_n], Node_v]), CombineFrames(FrameFragment(Heap[Heap[n, Node_n], Node_n]), FrameFragment((if Heap[Heap[n, Node_n], Node_n] != null then Heap[null, Node_P(Heap[Heap[n, Node_n], Node_n])] else EmptyFrame))));
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Unfolding Node_P(n.Node_n) might fail. There might be insufficient permission to access Node_P(n.Node_n) (new.vpr@93.5--93.43) [186630]"}
          Mask[null, Node_P(Heap[n, Node_n])] > NoPerm;
        havoc wildcard;
        assume wildcard < Mask[null, Node_P(Heap[n, Node_n])];
        Mask := Mask[null, Node_P(Heap[n, Node_n]):=Mask[null, Node_P(Heap[n, Node_n])] - wildcard];
        
        // -- Update version of predicate
          if (!HasDirectPerm(Mask, null, Node_P(Heap[n, Node_n]))) {
            havoc newVersion;
            Heap := Heap[null, Node_P(Heap[n, Node_n]):=newVersion];
          }
        havoc wildcard;
        perm := wildcard;
        assume Heap[n, Node_n] != null;
        Mask := Mask[Heap[n, Node_n], Node_v:=Mask[Heap[n, Node_n], Node_v] + perm];
        assume state(Heap, Mask);
        havoc wildcard;
        perm := wildcard;
        assume Heap[n, Node_n] != null;
        Mask := Mask[Heap[n, Node_n], Node_n:=Mask[Heap[n, Node_n], Node_n] + perm];
        assume state(Heap, Mask);
        if (Heap[Heap[n, Node_n], Node_n] != null) {
          havoc wildcard;
          perm := wildcard;
          Mask := Mask[null, Node_P(Heap[Heap[n, Node_n], Node_n]):=Mask[null, Node_P(Heap[Heap[n, Node_n], Node_n])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(Node_P(Heap[n, Node_n]), Heap[null, Node_P(Heap[n, Node_n])], Node_P(Heap[Heap[n, Node_n], Node_n]), Heap[null, Node_P(Heap[Heap[n, Node_n], Node_n])]);
          assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: assert m != n.Node_n.Node_n -- new.vpr@94.5--94.34
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        
        // -- Check definedness of m != n.Node_n.Node_n
          assert {:msg "  Assert might fail. There might be insufficient permission to access n.Node_n (new.vpr@94.12--94.34) [186631]"}
            HasDirectPerm(ExhaleWellDef0Mask, n, Node_n);
          assert {:msg "  Assert might fail. There might be insufficient permission to access n.Node_n.Node_n (new.vpr@94.12--94.34) [186632]"}
            HasDirectPerm(ExhaleWellDef0Mask, Heap[n, Node_n], Node_n);
        assert {:msg "  Assert might fail. Assertion m != n.Node_n.Node_n might not hold. (new.vpr@94.12--94.34) [186633]"}
          m_17 != Heap[Heap[n, Node_n], Node_n];
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test6
// ==================================================

procedure test6() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var m_17: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[m_17, $allocated];
  
  // -- Translating statement: m := new(value, Node_v, Node_n) -- new.vpr@102.3--102.14
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    m_17 := freshObj;
    Mask := Mask[m_17, value:=Mask[m_17, value] + FullPerm];
    Mask := Mask[m_17, Node_v:=Mask[m_17, Node_v] + FullPerm];
    Mask := Mask[m_17, Node_n:=Mask[m_17, Node_n] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(m.Node_v, write) -- new.vpr@104.3--104.23
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access m.Node_v (new.vpr@104.10--104.23) [186635]"}
        perm <= Mask[m_17, Node_v];
    }
    Mask := Mask[m_17, Node_v:=Mask[m_17, Node_v] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(m.Node_n, write) -- new.vpr@105.3--105.23
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access m.Node_n (new.vpr@105.10--105.23) [186637]"}
        perm <= Mask[m_17, Node_n];
    }
    Mask := Mask[m_17, Node_n:=Mask[m_17, Node_n] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(m.value, write) -- new.vpr@106.3--106.22
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access m.value (new.vpr@106.10--106.22) [186639]"}
        perm <= Mask[m_17, value];
    }
    Mask := Mask[m_17, value:=Mask[m_17, value] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}