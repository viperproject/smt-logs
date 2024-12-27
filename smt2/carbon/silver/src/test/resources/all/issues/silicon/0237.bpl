// 
// Translation of Viper program.
// 
// Date:         2024-12-27 10:50:40
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0237.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0237-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_7: Ref, f_11: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_7, f_11] }
  Heap[o_7, $allocated] ==> Heap[Heap[o_7, f_11], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_8: Ref, f_12: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_8, f_12] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_8, f_12) ==> Heap[o_8, f_12] == ExhaleHeap[o_8, f_12]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_3: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_3), ExhaleHeap[null, PredicateMaskField(pm_f_3)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_3) && IsPredicateField(pm_f_3) ==> Heap[null, PredicateMaskField(pm_f_3)] == ExhaleHeap[null, PredicateMaskField(pm_f_3)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_3: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_3) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_3) && IsPredicateField(pm_f_3) ==> (forall <A, B> o2_3: Ref, f_12: (Field A B) ::
    { ExhaleHeap[o2_3, f_12] }
    Heap[null, PredicateMaskField(pm_f_3)][o2_3, f_12] ==> Heap[o2_3, f_12] == ExhaleHeap[o2_3, f_12]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_3: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_3), ExhaleHeap[null, WandMaskField(pm_f_3)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_3) && IsWandField(pm_f_3) ==> Heap[null, WandMaskField(pm_f_3)] == ExhaleHeap[null, WandMaskField(pm_f_3)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_3: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_3) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_3) && IsWandField(pm_f_3) ==> (forall <A, B> o2_3: Ref, f_12: (Field A B) ::
    { ExhaleHeap[o2_3, f_12] }
    Heap[null, WandMaskField(pm_f_3)][o2_3, f_12] ==> Heap[o2_3, f_12] == ExhaleHeap[o2_3, f_12]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_8: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_8, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_8, $allocated] ==> ExhaleHeap[o_8, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_7: Ref, f_2: (Field A B), v: B ::
  { Heap[o_7, f_2:=v] }
  succHeap(Heap, Heap[o_7, f_2:=v])
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

function  neverTriggered1(p_1: int): bool;
function  neverTriggered2(p_1_1: int): bool;
function  neverTriggered3(p_1_1: int): bool;
function  neverTriggered4(p_3_1: int): bool;
function  neverTriggered5(p_4_1: int): bool;
function  neverTriggered6(p_1_1: int): bool;
function  neverTriggered7(p_2_1: int): bool;
function  neverTriggered8(p_1_1: int): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): int;
function  invRecv2(recv: Ref): int;
function  invRecv3(recv: Ref): int;
function  invRecv4(recv: Ref): int;
function  invRecv5(recv: Ref): int;
function  invRecv6(recv: Ref): int;
function  invRecv7(recv: Ref): int;
function  invRecv8(recv: Ref): int;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(recv: Ref): bool;
function  qpRange2(recv: Ref): bool;
function  qpRange3(recv: Ref): bool;
function  qpRange4(recv: Ref): bool;
function  qpRange5(recv: Ref): bool;
function  qpRange6(recv: Ref): bool;
function  qpRange7(recv: Ref): bool;
function  qpRange8(recv: Ref): bool;

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
// Translation of domain IArray
// ==================================================

// The type for domain IArray
type IArrayDomainType;

// Translation of domain function loc
function  loc(a_3: Ref, i_79: int): Ref;

// Translation of domain function len
function  len_1(a_3: Ref): int;

// Translation of domain function first
function  first(r_3: Ref): Ref;

// Translation of domain function second
function  second(r_3: Ref): int;

// Translation of domain axiom all_diff
axiom (forall a_2: Ref, i: int ::
  { (loc(a_2, i): Ref) }
  (first((loc(a_2, i): Ref)): Ref) == a_2 && (second((loc(a_2, i): Ref)): int) == i
);

// Translation of domain axiom length_nonneg
axiom (forall a_2: Ref ::
  { (len_1(a_2): int) }
  (len_1(a_2): int) >= 0
);

// ==================================================
// Translation of all fields
// ==================================================

const unique val: Field NormalField int;
axiom !IsPredicateField(val);
axiom !IsWandField(val);

// ==================================================
// Translation of method client
// ==================================================

procedure client(arr: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var QPMask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[arr, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: test01(arr) -- 0237.vpr@5.2--5.13
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      havoc QPMask;
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method test01 might not hold. Fraction none might be negative. (0237.vpr@5.2--5.13) [208805]"}
          (forall p_1: int ::
          { (loc(arr, p_1): Ref) } { (loc(arr, p_1): Ref) }
          dummyFunction(Heap[(loc(arr, p_1): Ref), val]) ==> NoPerm >= NoPerm
        );
      
      // -- check if receiver loc(arr, p) is injective
        assert {:msg "  The precondition of method test01 might not hold. Quantified resource loc(arr, p).val might not be injective. (0237.vpr@5.2--5.13) [208806]"}
          (forall p_1: int, p_19: int ::
          { neverTriggered1(p_1), neverTriggered1(p_19) }
          (p_1 != p_19 && NoPerm < NoPerm) && NoPerm < NoPerm ==> (loc(arr, p_1): Ref) != (loc(arr, p_19): Ref)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method test01 might not hold. There might be insufficient permission to access loc(arr, p).val (0237.vpr@5.2--5.13) [208807]"}
          (forall p_1: int ::
          { (loc(arr, p_1): Ref) } { (loc(arr, p_1): Ref) }
          Mask[(loc(arr, p_1): Ref), val] >= NoPerm
        );
      
      // -- assumptions for inverse of receiver loc(arr, p)
        assume (forall p_1: int ::
          { (loc(arr, p_1): Ref) } { (loc(arr, p_1): Ref) }
          NoPerm < NoPerm ==> qpRange1((loc(arr, p_1): Ref)) && invRecv1((loc(arr, p_1): Ref)) == p_1
        );
        assume (forall o_4: Ref ::
          { invRecv1(o_4) }
          NoPerm < NoPerm && qpRange1(o_4) ==> (loc(arr, invRecv1(o_4)): Ref) == o_4
        );
      
      // -- assume permission updates for field val
        assume (forall o_4: Ref ::
          { QPMask[o_4, val] }
          (NoPerm < NoPerm && qpRange1(o_4) ==> (loc(arr, invRecv1(o_4)): Ref) == o_4 && QPMask[o_4, val] == Mask[o_4, val] - NoPerm) && (!(NoPerm < NoPerm && qpRange1(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { QPMask[o_4, f_5] }
          f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource loc(arr, p).val might not be injective. (0237.vpr@5.2--5.13) [208808]"}
        (forall p_1_1: int, p_1_2: int ::
        
        (p_1_1 != p_1_2 && NoPerm < NoPerm) && NoPerm < NoPerm ==> (loc(arr, p_1_1): Ref) != (loc(arr, p_1_2): Ref)
      );
      
      // -- Define Inverse Function
        assume (forall p_1_1: int ::
          { (loc(arr, p_1_1): Ref) } { (loc(arr, p_1_1): Ref) }
          NoPerm < NoPerm ==> qpRange2((loc(arr, p_1_1): Ref)) && invRecv2((loc(arr, p_1_1): Ref)) == p_1_1
        );
        assume (forall o_4: Ref ::
          { invRecv2(o_4) }
          NoPerm < NoPerm && qpRange2(o_4) ==> (loc(arr, invRecv2(o_4)): Ref) == o_4
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Method call might fail. Fraction none might be negative. (0237.vpr@5.2--5.13) [208809]"}
        (forall p_1_1: int ::
        { (loc(arr, p_1_1): Ref) } { (loc(arr, p_1_1): Ref) }
        NoPerm >= NoPerm
      );
      
      // -- Assume set of fields is nonNull
        
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, val] }
          (NoPerm < NoPerm && qpRange2(o_4) ==> (NoPerm < NoPerm ==> (loc(arr, invRecv2(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + NoPerm) && (!(NoPerm < NoPerm && qpRange2(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(arr: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
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
    assume Heap[arr, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall p: Int :: { loc(arr, p) } true ==> acc(loc(arr, p).val, none))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(arr, p).val might not be injective. (0237.vpr@9.11--9.63) [208810]"}
      (forall p_1_1: int, p_1_2: int ::
      
      (p_1_1 != p_1_2 && NoPerm < NoPerm) && NoPerm < NoPerm ==> (loc(arr, p_1_1): Ref) != (loc(arr, p_1_2): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall p_1_1: int ::
        { (loc(arr, p_1_1): Ref) } { (loc(arr, p_1_1): Ref) }
        NoPerm < NoPerm ==> qpRange3((loc(arr, p_1_1): Ref)) && invRecv3((loc(arr, p_1_1): Ref)) == p_1_1
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        NoPerm < NoPerm && qpRange3(o_4) ==> (loc(arr, invRecv3(o_4)): Ref) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction none might be negative. (0237.vpr@9.11--9.63) [208811]"}
      (forall p_1_1: int ::
      { (loc(arr, p_1_1): Ref) } { (loc(arr, p_1_1): Ref) }
      NoPerm >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (NoPerm < NoPerm && qpRange3(o_4) ==> (NoPerm < NoPerm ==> (loc(arr, invRecv3(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + NoPerm) && (!(NoPerm < NoPerm && qpRange3(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
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
    
    // -- Check definedness of (forall p: Int :: { loc(arr, p) } true ==> acc(loc(arr, p).val, none))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(arr, p).val might not be injective. (0237.vpr@10.11--10.63) [208812]"}
      (forall p_3_1: int, p_3_3: int ::
      
      (p_3_1 != p_3_3 && NoPerm < NoPerm) && NoPerm < NoPerm ==> (loc(arr, p_3_1): Ref) != (loc(arr, p_3_3): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall p_3_1: int ::
        { (loc(arr, p_3_1): Ref) } { (loc(arr, p_3_1): Ref) }
        NoPerm < NoPerm ==> qpRange4((loc(arr, p_3_1): Ref)) && invRecv4((loc(arr, p_3_1): Ref)) == p_3_1
      );
      assume (forall o_4: Ref ::
        { invRecv4(o_4) }
        NoPerm < NoPerm && qpRange4(o_4) ==> (loc(arr, invRecv4(o_4)): Ref) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction none might be negative. (0237.vpr@10.11--10.63) [208813]"}
      (forall p_3_1: int ::
      { (loc(arr, p_3_1): Ref) } { (loc(arr, p_3_1): Ref) }
      NoPerm >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (NoPerm < NoPerm && qpRange4(o_4) ==> (NoPerm < NoPerm ==> (loc(arr, invRecv4(o_4)): Ref) == o_4) && QPMask[o_4, val] == PostMask[o_4, val] + NoPerm) && (!(NoPerm < NoPerm && qpRange4(o_4)) ==> QPMask[o_4, val] == PostMask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of test01 might not hold. Fraction none might be negative. (0237.vpr@10.11--10.63) [208814]"}
        (forall p_4_1: int ::
        { (loc(arr, p_4_1): Ref) } { (loc(arr, p_4_1): Ref) }
        dummyFunction(Heap[(loc(arr, p_4_1): Ref), val]) ==> NoPerm >= NoPerm
      );
    
    // -- check if receiver loc(arr, p) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource loc(arr, p).val might not be injective. (0237.vpr@10.11--10.63) [208815]"}
        (forall p_4_1: int, p_4_3: int ::
        { neverTriggered5(p_4_1), neverTriggered5(p_4_3) }
        (p_4_1 != p_4_3 && NoPerm < NoPerm) && NoPerm < NoPerm ==> (loc(arr, p_4_1): Ref) != (loc(arr, p_4_3): Ref)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test01 might not hold. There might be insufficient permission to access loc(arr, p).val (0237.vpr@10.11--10.63) [208816]"}
        (forall p_4_1: int ::
        { (loc(arr, p_4_1): Ref) } { (loc(arr, p_4_1): Ref) }
        Mask[(loc(arr, p_4_1): Ref), val] >= NoPerm
      );
    
    // -- assumptions for inverse of receiver loc(arr, p)
      assume (forall p_4_1: int ::
        { (loc(arr, p_4_1): Ref) } { (loc(arr, p_4_1): Ref) }
        NoPerm < NoPerm ==> qpRange5((loc(arr, p_4_1): Ref)) && invRecv5((loc(arr, p_4_1): Ref)) == p_4_1
      );
      assume (forall o_4: Ref ::
        { invRecv5(o_4) }
        NoPerm < NoPerm && qpRange5(o_4) ==> (loc(arr, invRecv5(o_4)): Ref) == o_4
      );
    
    // -- assume permission updates for field val
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (NoPerm < NoPerm && qpRange5(o_4) ==> (loc(arr, invRecv5(o_4)): Ref) == o_4 && QPMask[o_4, val] == Mask[o_4, val] - NoPerm) && (!(NoPerm < NoPerm && qpRange5(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(arr: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var QPMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[arr, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    
    // -- Check definedness of (forall p: Int :: { loc(arr, p) } true ==> acc(loc(arr, p).val, none))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(arr, p).val might not be injective. (0237.vpr@14.10--14.62) [208817]"}
      (forall p_1_1: int, p_1_2: int ::
      
      (p_1_1 != p_1_2 && NoPerm < NoPerm) && NoPerm < NoPerm ==> (loc(arr, p_1_1): Ref) != (loc(arr, p_1_2): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall p_1_1: int ::
        { (loc(arr, p_1_1): Ref) } { (loc(arr, p_1_1): Ref) }
        NoPerm < NoPerm ==> qpRange6((loc(arr, p_1_1): Ref)) && invRecv6((loc(arr, p_1_1): Ref)) == p_1_1
      );
      assume (forall o_4: Ref ::
        { invRecv6(o_4) }
        NoPerm < NoPerm && qpRange6(o_4) ==> (loc(arr, invRecv6(o_4)): Ref) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction none might be negative. (0237.vpr@14.10--14.62) [208818]"}
      (forall p_1_1: int ::
      { (loc(arr, p_1_1): Ref) } { (loc(arr, p_1_1): Ref) }
      NoPerm >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (NoPerm < NoPerm && qpRange6(o_4) ==> (NoPerm < NoPerm ==> (loc(arr, invRecv6(o_4)): Ref) == o_4) && QPMask[o_4, val] == PostMask[o_4, val] + NoPerm) && (!(NoPerm < NoPerm && qpRange6(o_4)) ==> QPMask[o_4, val] == PostMask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of test02 might not hold. Fraction none might be negative. (0237.vpr@14.10--14.62) [208819]"}
        (forall p_2_1: int ::
        { (loc(arr, p_2_1): Ref) } { (loc(arr, p_2_1): Ref) }
        dummyFunction(Heap[(loc(arr, p_2_1): Ref), val]) ==> NoPerm >= NoPerm
      );
    
    // -- check if receiver loc(arr, p) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource loc(arr, p).val might not be injective. (0237.vpr@14.10--14.62) [208820]"}
        (forall p_2_1: int, p_2_3: int ::
        { neverTriggered7(p_2_1), neverTriggered7(p_2_3) }
        (p_2_1 != p_2_3 && NoPerm < NoPerm) && NoPerm < NoPerm ==> (loc(arr, p_2_1): Ref) != (loc(arr, p_2_3): Ref)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test02 might not hold. There might be insufficient permission to access loc(arr, p).val (0237.vpr@14.10--14.62) [208821]"}
        (forall p_2_1: int ::
        { (loc(arr, p_2_1): Ref) } { (loc(arr, p_2_1): Ref) }
        Mask[(loc(arr, p_2_1): Ref), val] >= NoPerm
      );
    
    // -- assumptions for inverse of receiver loc(arr, p)
      assume (forall p_2_1: int ::
        { (loc(arr, p_2_1): Ref) } { (loc(arr, p_2_1): Ref) }
        NoPerm < NoPerm ==> qpRange7((loc(arr, p_2_1): Ref)) && invRecv7((loc(arr, p_2_1): Ref)) == p_2_1
      );
      assume (forall o_4: Ref ::
        { invRecv7(o_4) }
        NoPerm < NoPerm && qpRange7(o_4) ==> (loc(arr, invRecv7(o_4)): Ref) == o_4
      );
    
    // -- assume permission updates for field val
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (NoPerm < NoPerm && qpRange7(o_4) ==> (loc(arr, invRecv7(o_4)): Ref) == o_4 && QPMask[o_4, val] == Mask[o_4, val] - NoPerm) && (!(NoPerm < NoPerm && qpRange7(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test03
// ==================================================

procedure test03(arr: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var p_4_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[arr, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall p: Int :: { loc(arr, p) } true ==> acc(loc(arr, p).val, none))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(arr, p).val might not be injective. (0237.vpr@18.11--18.63) [208822]"}
      (forall p_1_1: int, p_1_2: int ::
      
      (p_1_1 != p_1_2 && NoPerm < NoPerm) && NoPerm < NoPerm ==> (loc(arr, p_1_1): Ref) != (loc(arr, p_1_2): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall p_1_1: int ::
        { (loc(arr, p_1_1): Ref) } { (loc(arr, p_1_1): Ref) }
        NoPerm < NoPerm ==> qpRange8((loc(arr, p_1_1): Ref)) && invRecv8((loc(arr, p_1_1): Ref)) == p_1_1
      );
      assume (forall o_4: Ref ::
        { invRecv8(o_4) }
        NoPerm < NoPerm && qpRange8(o_4) ==> (loc(arr, invRecv8(o_4)): Ref) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction none might be negative. (0237.vpr@18.11--18.63) [208823]"}
      (forall p_1_1: int ::
      { (loc(arr, p_1_1): Ref) } { (loc(arr, p_1_1): Ref) }
      NoPerm >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (NoPerm < NoPerm && qpRange8(o_4) ==> (NoPerm < NoPerm ==> (loc(arr, invRecv8(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + NoPerm) && (!(NoPerm < NoPerm && qpRange8(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
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
    
    // -- Check definedness of (forall p: Int :: { loc(arr, p) } true ==> loc(arr, p) != null)
      if (*) {
        assume false;
      }
    assume (forall p_3_1: int ::
      { (loc(arr, p_3_1): Ref) }
      (loc(arr, p_3_1): Ref) != null
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    if (*) {
      assert {:msg "  Postcondition of test03 might not hold. Assertion loc(arr, p) != null might not hold. (0237.vpr@20.11--20.56) [208824]"}
        (loc(arr, p_4_1): Ref) != null;
      assume false;
    }
    assume (forall p_5_1_1: int ::
      { (loc(arr, p_5_1_1): Ref) }
      (loc(arr, p_5_1_1): Ref) != null
    );
}

// ==================================================
// Translation of method test04
// ==================================================

procedure test04(arr: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[arr, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale acc(arr.val, none) -- 0237.vpr@33.2--33.27
    perm := NoPerm;
    Mask := Mask[arr, val:=Mask[arr, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert arr != null -- 0237.vpr@35.2--35.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion arr != null might not hold. (0237.vpr@35.9--35.20) [208826]"}
      arr != null;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test05
// ==================================================

procedure test05(arr: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[arr, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: exhale acc(arr.val, none) -- 0237.vpr@39.2--39.27
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access arr.val (0237.vpr@39.9--39.27) [208828]"}
        perm <= Mask[arr, val];
    }
    Mask := Mask[arr, val:=Mask[arr, val] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test06
// ==================================================

procedure test06(arr: Ref) returns ()
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
    assume Heap[arr, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert perm(arr.val) == none -- 0237.vpr@43.2--43.30
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion perm(arr.val) == none might not hold. (0237.vpr@43.9--43.30) [208829]"}
      Mask[arr, val] == NoPerm;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test07
// ==================================================

procedure test07(arr: Ref) returns ()
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
    assume Heap[arr, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert perm(null.val) == none -- 0237.vpr@47.3--47.32
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion perm(null.val) == none might not hold. (0237.vpr@47.10--47.32) [208830]"}
      Mask[null, val] == NoPerm;
    assume state(Heap, Mask);
}