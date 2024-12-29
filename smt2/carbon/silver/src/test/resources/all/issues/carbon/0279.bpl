// 
// Translation of Viper program.
// 
// Date:         2024-12-29 20:43:39
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0279.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0279-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_35: Ref, f_31: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_35, f_31] }
  Heap[o_35, $allocated] ==> Heap[Heap[o_35, f_31], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_22: Ref, f_30: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_22, f_30] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_22, f_30) ==> Heap[o_22, f_30] == ExhaleHeap[o_22, f_30]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_13: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_13), ExhaleHeap[null, PredicateMaskField(pm_f_13)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_13) && IsPredicateField(pm_f_13) ==> Heap[null, PredicateMaskField(pm_f_13)] == ExhaleHeap[null, PredicateMaskField(pm_f_13)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_13: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_13) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_13) && IsPredicateField(pm_f_13) ==> (forall <A, B> o2_13: Ref, f_30: (Field A B) ::
    { ExhaleHeap[o2_13, f_30] }
    Heap[null, PredicateMaskField(pm_f_13)][o2_13, f_30] ==> Heap[o2_13, f_30] == ExhaleHeap[o2_13, f_30]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_13: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_13), ExhaleHeap[null, WandMaskField(pm_f_13)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_13) && IsWandField(pm_f_13) ==> Heap[null, WandMaskField(pm_f_13)] == ExhaleHeap[null, WandMaskField(pm_f_13)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_13: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_13) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_13) && IsWandField(pm_f_13) ==> (forall <A, B> o2_13: Ref, f_30: (Field A B) ::
    { ExhaleHeap[o2_13, f_30] }
    Heap[null, WandMaskField(pm_f_13)][o2_13, f_30] ==> Heap[o2_13, f_30] == ExhaleHeap[o2_13, f_30]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_22: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_22, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_22, $allocated] ==> ExhaleHeap[o_22, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_35: Ref, f_11: (Field A B), v: B ::
  { Heap[o_35, f_11:=v] }
  succHeap(Heap, Heap[o_35, f_11:=v])
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

function  neverTriggered1(i_1: int): bool;
function  neverTriggered2(i_1: int): bool;
function  neverTriggered3(i_1: int): bool;
function  neverTriggered4(i_3: int): bool;
function  neverTriggered5(i_1: int): bool;
function  neverTriggered6(i_3: int): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(): int;
function  invRecv2(): int;
function  invRecv3(): int;
function  invRecv4(): int;
function  invRecv5(): int;
function  invRecv6(): int;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(): bool;
function  qpRange2(): bool;
function  qpRange3(): bool;
function  qpRange4(): bool;
function  qpRange5(): bool;
function  qpRange6(): bool;

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
// Translation of predicate p
// ==================================================

type PredicateType_p;
function  p_14(): Field PredicateType_p FrameType;
function  p#sm(): Field PredicateType_p PMaskType;
axiom PredicateMaskField(p_14()) == p#sm();
axiom IsPredicateField(p_14());
axiom getPredWandId(p_14()) == 0;
function  p#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  p#everUsed<A>(pred: (Field A FrameType)): bool;

axiom (forall Heap: HeapType ::
  { p#trigger(Heap, p_14()) }
  p#everUsed(p_14())
);

// ==================================================
// Translation of method m1
// ==================================================

procedure m1() returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall i: Int ::i == 0 ==> acc(p(), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p(), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p() might not be injective. (0279.vpr@10.12--10.48) [195337]"}
        (forall i_1: int, i_1_1: int ::
        { neverTriggered1(i_1), neverTriggered1(i_1_1) }
        (((i_1 != i_1_1 && i_1 == 0) && i_1_1 == 0) && NoPerm < FullPerm) && NoPerm < FullPerm ==> false
      );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        
        i_1 == 0 && NoPerm < FullPerm ==> invRecv1() == i_1 && qpRange1()
      );
    
    // -- Define updated permissions
      assume (invRecv1() == 0 && NoPerm < FullPerm) && qpRange1() ==> QPMask[null, p_14()] == Mask[null, p_14()] + FullPerm;
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume !((invRecv1() == 0 && NoPerm < FullPerm) && qpRange1()) ==> QPMask[null, p_14()] == Mask[null, p_14()];
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale false -- <no position>
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m2
// ==================================================

procedure m2() returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall i: Int ::acc(p(), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p(), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p() might not be injective. (0279.vpr@13.12--13.32) [195338]"}
        (forall i_1: int, i_1_1: int ::
        { neverTriggered2(i_1), neverTriggered2(i_1_1) }
        (i_1 != i_1_1 && NoPerm < FullPerm) && NoPerm < FullPerm ==> false
      );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        
        NoPerm < FullPerm ==> invRecv2() == i_1 && qpRange2()
      );
    
    // -- Define updated permissions
      assume NoPerm < FullPerm && qpRange2() ==> QPMask[null, p_14()] == Mask[null, p_14()] + FullPerm;
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume !(NoPerm < FullPerm && qpRange2()) ==> QPMask[null, p_14()] == Mask[null, p_14()];
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale false -- <no position>
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m3
// ==================================================

procedure m3() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    
    // -- Check definedness of (forall i: Int ::i == 0 ==> acc(p(), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p(), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p() might not be injective. (0279.vpr@16.11--16.47) [195339]"}
        (forall i_1: int, i_1_1: int ::
        { neverTriggered3(i_1), neverTriggered3(i_1_1) }
        (((i_1 != i_1_1 && i_1 == 0) && i_1_1 == 0) && NoPerm < FullPerm) && NoPerm < FullPerm ==> false
      );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        
        i_1 == 0 && NoPerm < FullPerm ==> invRecv3() == i_1 && qpRange3()
      );
    
    // -- Define updated permissions
      assume (invRecv3() == 0 && NoPerm < FullPerm) && qpRange3() ==> QPMask[null, p_14()] == PostMask[null, p_14()] + FullPerm;
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume !((invRecv3() == 0 && NoPerm < FullPerm) && qpRange3()) ==> QPMask[null, p_14()] == PostMask[null, p_14()];
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- <no position>
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(p(), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p() might not be injective. (0279.vpr@16.11--16.47) [195340]"}
        (forall i_3: int, i_3_1: int ::
        { neverTriggered4(i_3), neverTriggered4(i_3_1) }
        (((i_3 != i_3_1 && i_3 == 0) && i_3_1 == 0) && NoPerm < FullPerm) && NoPerm < FullPerm ==> false
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m3 might not hold. There might be insufficient permission to access p() (0279.vpr@16.11--16.47) [195341]"}
        (forall i_3: int ::
        
        i_3 == 0 ==> Mask[null, p_14()] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(p(), write)
      assume (forall i_3: int ::
        
        i_3 == 0 && NoPerm < FullPerm ==> invRecv4() == i_3 && qpRange4()
      );
    
    // -- assume permission updates
      assume (forall  ::
        { QPMask[null, p_14()] }
        (invRecv4() == 0 && NoPerm < FullPerm) && qpRange4() ==> QPMask[null, p_14()] == Mask[null, p_14()] - FullPerm
      );
      assume (forall  ::
        { QPMask[null, p_14()] }
        !((invRecv4() == 0 && NoPerm < FullPerm) && qpRange4()) ==> QPMask[null, p_14()] == Mask[null, p_14()]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method m4
// ==================================================

procedure m4() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    
    // -- Check definedness of (forall i: Int ::acc(p(), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p(), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p() might not be injective. (0279.vpr@19.11--20.1) [195342]"}
        (forall i_1: int, i_1_1: int ::
        { neverTriggered5(i_1), neverTriggered5(i_1_1) }
        (i_1 != i_1_1 && NoPerm < FullPerm) && NoPerm < FullPerm ==> false
      );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        
        NoPerm < FullPerm ==> invRecv5() == i_1 && qpRange5()
      );
    
    // -- Define updated permissions
      assume NoPerm < FullPerm && qpRange5() ==> QPMask[null, p_14()] == PostMask[null, p_14()] + FullPerm;
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume !(NoPerm < FullPerm && qpRange5()) ==> QPMask[null, p_14()] == PostMask[null, p_14()];
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- <no position>
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(p(), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p() might not be injective. (0279.vpr@19.11--20.1) [195343]"}
        (forall i_3: int, i_3_1: int ::
        { neverTriggered6(i_3), neverTriggered6(i_3_1) }
        (i_3 != i_3_1 && NoPerm < FullPerm) && NoPerm < FullPerm ==> false
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m4 might not hold. There might be insufficient permission to access p() (0279.vpr@19.11--20.1) [195344]"}
        (forall i_3: int ::
        
        Mask[null, p_14()] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(p(), write)
      assume (forall i_3: int ::
        
        NoPerm < FullPerm ==> invRecv6() == i_3 && qpRange6()
      );
    
    // -- assume permission updates
      assume (forall  ::
        { QPMask[null, p_14()] }
        NoPerm < FullPerm && qpRange6() ==> QPMask[null, p_14()] == Mask[null, p_14()] - FullPerm
      );
      assume (forall  ::
        { QPMask[null, p_14()] }
        !(NoPerm < FullPerm && qpRange6()) ==> QPMask[null, p_14()] == Mask[null, p_14()]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}