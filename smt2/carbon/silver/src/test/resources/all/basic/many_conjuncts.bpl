// 
// Translation of Viper program.
// 
// Date:         2024-12-26 15:16:58
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/basic/many_conjuncts.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/basic/many_conjuncts-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// Translation of domain parallelHeaps
// ==================================================

// The type for domain parallelHeaps
type parallelHeapsDomainType;

// Translation of domain function heap
function  heap(x_8: Ref): int;

// Translation of domain function is_ghost
function  is_ghost(x_8: Ref): bool;

// ==================================================
// Translation of domain reads
// ==================================================

// The type for domain reads
type readsDomainType;

// Translation of domain function rd
function  rd(): Perm;

// Translation of domain axiom rdPositive
axiom NoPerm < (rd(): Perm);

// ==================================================
// Translation of all fields
// ==================================================

const unique val: Field NormalField int;
axiom !IsPredicateField(val);
axiom !IsWandField(val);
const unique init_1: Field NormalField bool;
axiom !IsPredicateField(init_1);
axiom !IsWandField(init_1);
const unique rel: Field NormalField int;
axiom !IsPredicateField(rel);
axiom !IsWandField(rel);
const unique acq_1: Field NormalField bool;
axiom !IsPredicateField(acq_1);
axiom !IsWandField(acq_1);

// ==================================================
// Translation of predicate AcqConjunct
// ==================================================

type PredicateType_AcqConjunct;
function  AcqConjunct(x: Ref, idx_1: int): Field PredicateType_AcqConjunct FrameType;
function  AcqConjunct#sm(x: Ref, idx_1: int): Field PredicateType_AcqConjunct PMaskType;
axiom (forall x: Ref, idx_1: int ::
  { PredicateMaskField(AcqConjunct(x, idx_1)) }
  PredicateMaskField(AcqConjunct(x, idx_1)) == AcqConjunct#sm(x, idx_1)
);
axiom (forall x: Ref, idx_1: int ::
  { AcqConjunct(x, idx_1) }
  IsPredicateField(AcqConjunct(x, idx_1))
);
axiom (forall x: Ref, idx_1: int ::
  { AcqConjunct(x, idx_1) }
  getPredWandId(AcqConjunct(x, idx_1)) == 0
);
function  AcqConjunct#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  AcqConjunct#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, idx_1: int, x2: Ref, idx2: int ::
  { AcqConjunct(x, idx_1), AcqConjunct(x2, idx2) }
  AcqConjunct(x, idx_1) == AcqConjunct(x2, idx2) ==> x == x2 && idx_1 == idx2
);
axiom (forall x: Ref, idx_1: int, x2: Ref, idx2: int ::
  { AcqConjunct#sm(x, idx_1), AcqConjunct#sm(x2, idx2) }
  AcqConjunct#sm(x, idx_1) == AcqConjunct#sm(x2, idx2) ==> x == x2 && idx_1 == idx2
);

axiom (forall Heap: HeapType, x: Ref, idx_1: int ::
  { AcqConjunct#trigger(Heap, AcqConjunct(x, idx_1)) }
  AcqConjunct#everUsed(AcqConjunct(x, idx_1))
);

// ==================================================
// Translation of method read
// ==================================================

procedure read(data_1: Ref, count_1: Ref, ghost: Ref) returns (v_2: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var wildcard: real where wildcard > NoPerm;
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
    assume Heap[data_1, $allocated];
    assume Heap[count_1, $allocated];
    assume Heap[ghost, $allocated];
  
  // -- Checked inhaling of precondition
    assume (heap(data_1): int) == 0;
    assume (heap(count_1): int) == 0;
    assume (heap(ghost): int) == 0;
    assume (is_ghost(ghost): bool);
    perm := (rd(): Perm);
    assert {:msg "  Contract might not be well-formed. Fraction rd() might be negative. (many_conjuncts.vpr@31.12--31.312) [187033]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> data_1 != null;
    Mask := Mask[data_1, val:=Mask[data_1, val] + perm];
    assume state(Heap, Mask);
    perm := (rd(): Perm);
    assert {:msg "  Contract might not be well-formed. Fraction rd() might be negative. (many_conjuncts.vpr@31.12--31.312) [187034]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> ghost != null;
    Mask := Mask[ghost, val:=Mask[ghost, val] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume count_1 != null;
    Mask := Mask[count_1, acq_1:=Mask[count_1, acq_1] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of count.acq == false
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access count.acq (many_conjuncts.vpr@31.12--31.312) [187035]"}
        HasDirectPerm(Mask, count_1, acq_1);
    assume !Heap[count_1, acq_1];
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, AcqConjunct(count_1, 0):=Mask[null, AcqConjunct(count_1, 0)] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume count_1 != null;
    Mask := Mask[count_1, rel:=Mask[count_1, rel] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of count.rel == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access count.rel (many_conjuncts.vpr@31.12--31.312) [187036]"}
        HasDirectPerm(Mask, count_1, rel);
    assume Heap[count_1, rel] == 0;
    havoc wildcard;
    perm := wildcard;
    assume count_1 != null;
    Mask := Mask[count_1, init_1:=Mask[count_1, init_1] + perm];
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
    
    // -- Do welldefinedness check of the inhale part.
      if (*) {
        assume (heap(data_1): int) == 0;
        assume (heap(count_1): int) == 0;
        assume (heap(ghost): int) == 0;
        assume (is_ghost(ghost): bool);
        perm := (rd(): Perm);
        assert {:msg "  Contract might not be well-formed. Fraction rd() might be negative. (many_conjuncts.vpr@32.11--32.364) [187037]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> data_1 != null;
        PostMask := PostMask[data_1, val:=PostMask[data_1, val] + perm];
        assume state(PostHeap, PostMask);
        perm := (rd(): Perm);
        assert {:msg "  Contract might not be well-formed. Fraction rd() might be negative. (many_conjuncts.vpr@32.11--32.364) [187038]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> ghost != null;
        PostMask := PostMask[ghost, val:=PostMask[ghost, val] + perm];
        assume state(PostHeap, PostMask);
        havoc wildcard;
        perm := wildcard;
        assume count_1 != null;
        PostMask := PostMask[count_1, acq_1:=PostMask[count_1, acq_1] + perm];
        assume state(PostHeap, PostMask);
        
        // -- Check definedness of count.acq == false
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access count.acq (many_conjuncts.vpr@32.11--32.364) [187039]"}
            HasDirectPerm(PostMask, count_1, acq_1);
        assume !PostHeap[count_1, acq_1];
        havoc wildcard;
        perm := wildcard;
        PostMask := PostMask[null, AcqConjunct(count_1, 0):=PostMask[null, AcqConjunct(count_1, 0)] + perm];
        assume state(PostHeap, PostMask);
        havoc wildcard;
        perm := wildcard;
        assume count_1 != null;
        PostMask := PostMask[count_1, rel:=PostMask[count_1, rel] + perm];
        assume state(PostHeap, PostMask);
        
        // -- Check definedness of count.rel == 0
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access count.rel (many_conjuncts.vpr@32.11--32.364) [187040]"}
            HasDirectPerm(PostMask, count_1, rel);
        assume PostHeap[count_1, rel] == 0;
        havoc wildcard;
        perm := wildcard;
        assume count_1 != null;
        PostMask := PostMask[count_1, init_1:=PostMask[count_1, init_1] + perm];
        assume state(PostHeap, PostMask);
        
        // -- Check definedness of data.val == v
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access data.val (many_conjuncts.vpr@32.11--32.364) [187041]"}
            HasDirectPerm(PostMask, data_1, val);
        assume PostHeap[data_1, val] == v_2;
        assume state(PostHeap, PostMask);
        assume false;
      }
    
    // -- Normally inhale the exhale part.
      assume (heap(data_1): int) == 0;
      assume (heap(count_1): int) == 0;
      assume (heap(ghost): int) == 0;
      assume (is_ghost(ghost): bool);
      perm := (rd(): Perm);
      assert {:msg "  Contract might not be well-formed. Fraction rd() might be negative. (many_conjuncts.vpr@32.11--32.364) [187042]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> data_1 != null;
      PostMask := PostMask[data_1, val:=PostMask[data_1, val] + perm];
      assume state(PostHeap, PostMask);
      perm := (rd(): Perm);
      assert {:msg "  Contract might not be well-formed. Fraction rd() might be negative. (many_conjuncts.vpr@32.11--32.364) [187043]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> ghost != null;
      PostMask := PostMask[ghost, val:=PostMask[ghost, val] + perm];
      assume state(PostHeap, PostMask);
      havoc wildcard;
      perm := wildcard;
      assume count_1 != null;
      PostMask := PostMask[count_1, acq_1:=PostMask[count_1, acq_1] + perm];
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of count.acq == false
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access count.acq (many_conjuncts.vpr@32.11--32.364) [187044]"}
          HasDirectPerm(PostMask, count_1, acq_1);
      assume !PostHeap[count_1, acq_1];
      havoc wildcard;
      perm := wildcard;
      PostMask := PostMask[null, AcqConjunct(count_1, 0):=PostMask[null, AcqConjunct(count_1, 0)] + perm];
      assume state(PostHeap, PostMask);
      havoc wildcard;
      perm := wildcard;
      assume count_1 != null;
      PostMask := PostMask[count_1, rel:=PostMask[count_1, rel] + perm];
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of count.rel == 0
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access count.rel (many_conjuncts.vpr@32.11--32.364) [187045]"}
          HasDirectPerm(PostMask, count_1, rel);
      assume PostHeap[count_1, rel] == 0;
      havoc wildcard;
      perm := wildcard;
      assume count_1 != null;
      PostMask := PostMask[count_1, init_1:=PostMask[count_1, init_1] + perm];
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of data.val == v
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access data.val (many_conjuncts.vpr@32.11--32.364) [187046]"}
          HasDirectPerm(PostMask, data_1, val);
      assume PostHeap[data_1, val] == v_2;
      assume PostMask[data_1, val] == NoPerm;
      assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: v := data.val -- many_conjuncts.vpr@34.3--34.16
    
    // -- Check definedness of data.val
      assert {:msg "  Assignment might fail. There might be insufficient permission to access data.val (many_conjuncts.vpr@34.3--34.16) [187047]"}
        HasDirectPerm(Mask, data_1, val);
    v_2 := Heap[data_1, val];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of read might not hold. Assertion heap(data) == 0 might not hold. (many_conjuncts.vpr@32.11--32.364) [187048]"}
      (heap(data_1): int) == 0;
    assert {:msg "  Postcondition of read might not hold. Assertion heap(count) == 0 might not hold. (many_conjuncts.vpr@32.11--32.364) [187049]"}
      (heap(count_1): int) == 0;
    assert {:msg "  Postcondition of read might not hold. Assertion heap(ghost) == 0 might not hold. (many_conjuncts.vpr@32.11--32.364) [187050]"}
      (heap(ghost): int) == 0;
    assert {:msg "  Postcondition of read might not hold. Assertion is_ghost(ghost) might not hold. (many_conjuncts.vpr@32.11--32.364) [187051]"}
      (is_ghost(ghost): bool);
    perm := (rd(): Perm);
    assert {:msg "  Postcondition of read might not hold. Fraction rd() might be negative. (many_conjuncts.vpr@32.11--32.364) [187052]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of read might not hold. There might be insufficient permission to access data.val (many_conjuncts.vpr@32.11--32.364) [187053]"}
        perm <= Mask[data_1, val];
    }
    Mask := Mask[data_1, val:=Mask[data_1, val] - perm];
    perm := (rd(): Perm);
    assert {:msg "  Postcondition of read might not hold. Fraction rd() might be negative. (many_conjuncts.vpr@32.11--32.364) [187054]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of read might not hold. There might be insufficient permission to access ghost.val (many_conjuncts.vpr@32.11--32.364) [187055]"}
        perm <= Mask[ghost, val];
    }
    Mask := Mask[ghost, val:=Mask[ghost, val] - perm];
    assert {:msg "  Postcondition of read might not hold. There might be insufficient permission to access count.acq (many_conjuncts.vpr@32.11--32.364) [187056]"}
      Mask[count_1, acq_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[count_1, acq_1];
    Mask := Mask[count_1, acq_1:=Mask[count_1, acq_1] - wildcard];
    assert {:msg "  Postcondition of read might not hold. Assertion count.acq == false might not hold. (many_conjuncts.vpr@32.11--32.364) [187057]"}
      !Heap[count_1, acq_1];
    assert {:msg "  Postcondition of read might not hold. There might be insufficient permission to access AcqConjunct(count, 0) (many_conjuncts.vpr@32.11--32.364) [187058]"}
      Mask[null, AcqConjunct(count_1, 0)] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[null, AcqConjunct(count_1, 0)];
    Mask := Mask[null, AcqConjunct(count_1, 0):=Mask[null, AcqConjunct(count_1, 0)] - wildcard];
    assert {:msg "  Postcondition of read might not hold. There might be insufficient permission to access count.rel (many_conjuncts.vpr@32.11--32.364) [187059]"}
      Mask[count_1, rel] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[count_1, rel];
    Mask := Mask[count_1, rel:=Mask[count_1, rel] - wildcard];
    assert {:msg "  Postcondition of read might not hold. Assertion count.rel == 0 might not hold. (many_conjuncts.vpr@32.11--32.364) [187060]"}
      Heap[count_1, rel] == 0;
    assert {:msg "  Postcondition of read might not hold. There might be insufficient permission to access count.init (many_conjuncts.vpr@32.11--32.364) [187061]"}
      Mask[count_1, init_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[count_1, init_1];
    Mask := Mask[count_1, init_1:=Mask[count_1, init_1] - wildcard];
    assert {:msg "  Postcondition of read might not hold. Assertion data.val == v might not hold. (many_conjuncts.vpr@32.11--32.364) [187062]"}
      Heap[data_1, val] == v_2;
    assert {:msg "  Postcondition of read might not hold. Assertion perm(data.val) == none might not hold. (many_conjuncts.vpr@32.11--32.364) [187063]"}
      Mask[data_1, val] == NoPerm;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method read_erroneous
// ==================================================

procedure read_erroneous(data_1: Ref, count_1: Ref, ghost: Ref) returns (v_2: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var wildcard: real where wildcard > NoPerm;
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
    assume Heap[data_1, $allocated];
    assume Heap[count_1, $allocated];
    assume Heap[ghost, $allocated];
  
  // -- Checked inhaling of precondition
    assume (heap(data_1): int) == 0;
    assume (heap(count_1): int) == 0;
    assume (heap(ghost): int) == 0;
    assume (is_ghost(ghost): bool);
    perm := (rd(): Perm);
    assert {:msg "  Contract might not be well-formed. Fraction rd() might be negative. (many_conjuncts.vpr@38.12--38.312) [187064]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> data_1 != null;
    Mask := Mask[data_1, val:=Mask[data_1, val] + perm];
    assume state(Heap, Mask);
    perm := (rd(): Perm);
    assert {:msg "  Contract might not be well-formed. Fraction rd() might be negative. (many_conjuncts.vpr@38.12--38.312) [187065]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> ghost != null;
    Mask := Mask[ghost, val:=Mask[ghost, val] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume count_1 != null;
    Mask := Mask[count_1, acq_1:=Mask[count_1, acq_1] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of count.acq == false
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access count.acq (many_conjuncts.vpr@38.12--38.312) [187066]"}
        HasDirectPerm(Mask, count_1, acq_1);
    assume !Heap[count_1, acq_1];
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, AcqConjunct(count_1, 0):=Mask[null, AcqConjunct(count_1, 0)] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume count_1 != null;
    Mask := Mask[count_1, rel:=Mask[count_1, rel] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of count.rel == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access count.rel (many_conjuncts.vpr@38.12--38.312) [187067]"}
        HasDirectPerm(Mask, count_1, rel);
    assume Heap[count_1, rel] == 0;
    havoc wildcard;
    perm := wildcard;
    assume count_1 != null;
    Mask := Mask[count_1, init_1:=Mask[count_1, init_1] + perm];
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
    
    // -- Do welldefinedness check of the inhale part.
      if (*) {
        assume (heap(data_1): int) == 0;
        assume (heap(count_1): int) == 0;
        assume (heap(ghost): int) == 0;
        assume (is_ghost(ghost): bool);
        perm := (rd(): Perm);
        assert {:msg "  Contract might not be well-formed. Fraction rd() might be negative. (many_conjuncts.vpr@40.11--40.373) [187068]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> data_1 != null;
        PostMask := PostMask[data_1, val:=PostMask[data_1, val] + perm];
        assume state(PostHeap, PostMask);
        perm := (rd(): Perm);
        assert {:msg "  Contract might not be well-formed. Fraction rd() might be negative. (many_conjuncts.vpr@40.11--40.373) [187069]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> ghost != null;
        PostMask := PostMask[ghost, val:=PostMask[ghost, val] + perm];
        assume state(PostHeap, PostMask);
        havoc wildcard;
        perm := wildcard;
        assume count_1 != null;
        PostMask := PostMask[count_1, acq_1:=PostMask[count_1, acq_1] + perm];
        assume state(PostHeap, PostMask);
        
        // -- Check definedness of count.acq == false
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access count.acq (many_conjuncts.vpr@40.11--40.373) [187070]"}
            HasDirectPerm(PostMask, count_1, acq_1);
        assume !PostHeap[count_1, acq_1];
        havoc wildcard;
        perm := wildcard;
        PostMask := PostMask[null, AcqConjunct(count_1, 0):=PostMask[null, AcqConjunct(count_1, 0)] + perm];
        assume state(PostHeap, PostMask);
        havoc wildcard;
        perm := wildcard;
        assume count_1 != null;
        PostMask := PostMask[count_1, rel:=PostMask[count_1, rel] + perm];
        assume state(PostHeap, PostMask);
        
        // -- Check definedness of count.rel == 0
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access count.rel (many_conjuncts.vpr@40.11--40.373) [187071]"}
            HasDirectPerm(PostMask, count_1, rel);
        assume PostHeap[count_1, rel] == 0;
        havoc wildcard;
        perm := wildcard;
        assume count_1 != null;
        PostMask := PostMask[count_1, init_1:=PostMask[count_1, init_1] + perm];
        assume state(PostHeap, PostMask);
        
        // -- Check definedness of data.val == v
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access data.val (many_conjuncts.vpr@40.11--40.373) [187072]"}
            HasDirectPerm(PostMask, data_1, val);
        assume PostHeap[data_1, val] == v_2;
        assume false;
        assume state(PostHeap, PostMask);
        assume false;
      }
    
    // -- Normally inhale the exhale part.
      assume (heap(data_1): int) == 0;
      assume (heap(count_1): int) == 0;
      assume (heap(ghost): int) == 0;
      assume (is_ghost(ghost): bool);
      perm := (rd(): Perm);
      assert {:msg "  Contract might not be well-formed. Fraction rd() might be negative. (many_conjuncts.vpr@40.11--40.373) [187073]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> data_1 != null;
      PostMask := PostMask[data_1, val:=PostMask[data_1, val] + perm];
      assume state(PostHeap, PostMask);
      perm := (rd(): Perm);
      assert {:msg "  Contract might not be well-formed. Fraction rd() might be negative. (many_conjuncts.vpr@40.11--40.373) [187074]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> ghost != null;
      PostMask := PostMask[ghost, val:=PostMask[ghost, val] + perm];
      assume state(PostHeap, PostMask);
      havoc wildcard;
      perm := wildcard;
      assume count_1 != null;
      PostMask := PostMask[count_1, acq_1:=PostMask[count_1, acq_1] + perm];
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of count.acq == false
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access count.acq (many_conjuncts.vpr@40.11--40.373) [187075]"}
          HasDirectPerm(PostMask, count_1, acq_1);
      assume !PostHeap[count_1, acq_1];
      havoc wildcard;
      perm := wildcard;
      PostMask := PostMask[null, AcqConjunct(count_1, 0):=PostMask[null, AcqConjunct(count_1, 0)] + perm];
      assume state(PostHeap, PostMask);
      havoc wildcard;
      perm := wildcard;
      assume count_1 != null;
      PostMask := PostMask[count_1, rel:=PostMask[count_1, rel] + perm];
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of count.rel == 0
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access count.rel (many_conjuncts.vpr@40.11--40.373) [187076]"}
          HasDirectPerm(PostMask, count_1, rel);
      assume PostHeap[count_1, rel] == 0;
      havoc wildcard;
      perm := wildcard;
      assume count_1 != null;
      PostMask := PostMask[count_1, init_1:=PostMask[count_1, init_1] + perm];
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of data.val == v
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access data.val (many_conjuncts.vpr@40.11--40.373) [187077]"}
          HasDirectPerm(PostMask, data_1, val);
      assume PostHeap[data_1, val] == v_2;
      assume PostMask[data_1, val] == NoPerm;
      assume false;
      assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: v := data.val -- many_conjuncts.vpr@42.3--42.16
    
    // -- Check definedness of data.val
      assert {:msg "  Assignment might fail. There might be insufficient permission to access data.val (many_conjuncts.vpr@42.3--42.16) [187078]"}
        HasDirectPerm(Mask, data_1, val);
    v_2 := Heap[data_1, val];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of read_erroneous might not hold. Assertion heap(data) == 0 might not hold. (many_conjuncts.vpr@40.11--40.373) [187079]"}
      (heap(data_1): int) == 0;
    assert {:msg "  Postcondition of read_erroneous might not hold. Assertion heap(count) == 0 might not hold. (many_conjuncts.vpr@40.11--40.373) [187080]"}
      (heap(count_1): int) == 0;
    assert {:msg "  Postcondition of read_erroneous might not hold. Assertion heap(ghost) == 0 might not hold. (many_conjuncts.vpr@40.11--40.373) [187081]"}
      (heap(ghost): int) == 0;
    assert {:msg "  Postcondition of read_erroneous might not hold. Assertion is_ghost(ghost) might not hold. (many_conjuncts.vpr@40.11--40.373) [187082]"}
      (is_ghost(ghost): bool);
    perm := (rd(): Perm);
    assert {:msg "  Postcondition of read_erroneous might not hold. Fraction rd() might be negative. (many_conjuncts.vpr@40.11--40.373) [187083]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of read_erroneous might not hold. There might be insufficient permission to access data.val (many_conjuncts.vpr@40.11--40.373) [187084]"}
        perm <= Mask[data_1, val];
    }
    Mask := Mask[data_1, val:=Mask[data_1, val] - perm];
    perm := (rd(): Perm);
    assert {:msg "  Postcondition of read_erroneous might not hold. Fraction rd() might be negative. (many_conjuncts.vpr@40.11--40.373) [187085]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of read_erroneous might not hold. There might be insufficient permission to access ghost.val (many_conjuncts.vpr@40.11--40.373) [187086]"}
        perm <= Mask[ghost, val];
    }
    Mask := Mask[ghost, val:=Mask[ghost, val] - perm];
    assert {:msg "  Postcondition of read_erroneous might not hold. There might be insufficient permission to access count.acq (many_conjuncts.vpr@40.11--40.373) [187087]"}
      Mask[count_1, acq_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[count_1, acq_1];
    Mask := Mask[count_1, acq_1:=Mask[count_1, acq_1] - wildcard];
    assert {:msg "  Postcondition of read_erroneous might not hold. Assertion count.acq == false might not hold. (many_conjuncts.vpr@40.11--40.373) [187088]"}
      !Heap[count_1, acq_1];
    assert {:msg "  Postcondition of read_erroneous might not hold. There might be insufficient permission to access AcqConjunct(count, 0) (many_conjuncts.vpr@40.11--40.373) [187089]"}
      Mask[null, AcqConjunct(count_1, 0)] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[null, AcqConjunct(count_1, 0)];
    Mask := Mask[null, AcqConjunct(count_1, 0):=Mask[null, AcqConjunct(count_1, 0)] - wildcard];
    assert {:msg "  Postcondition of read_erroneous might not hold. There might be insufficient permission to access count.rel (many_conjuncts.vpr@40.11--40.373) [187090]"}
      Mask[count_1, rel] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[count_1, rel];
    Mask := Mask[count_1, rel:=Mask[count_1, rel] - wildcard];
    assert {:msg "  Postcondition of read_erroneous might not hold. Assertion count.rel == 0 might not hold. (many_conjuncts.vpr@40.11--40.373) [187091]"}
      Heap[count_1, rel] == 0;
    assert {:msg "  Postcondition of read_erroneous might not hold. There might be insufficient permission to access count.init (many_conjuncts.vpr@40.11--40.373) [187092]"}
      Mask[count_1, init_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[count_1, init_1];
    Mask := Mask[count_1, init_1:=Mask[count_1, init_1] - wildcard];
    assert {:msg "  Postcondition of read_erroneous might not hold. Assertion data.val == v might not hold. (many_conjuncts.vpr@40.11--40.373) [187093]"}
      Heap[data_1, val] == v_2;
    assert {:msg "  Postcondition of read_erroneous might not hold. Assertion perm(data.val) == none might not hold. (many_conjuncts.vpr@40.11--40.373) [187094]"}
      Mask[data_1, val] == NoPerm;
    assert {:msg "  Postcondition of read_erroneous might not hold. Assertion false might not hold. (many_conjuncts.vpr@40.11--40.373) [187095]"}
      false;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method read2
// ==================================================

procedure read2(data_1: Ref, count_1: Ref, ghost: Ref) returns (v_2: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var wildcard: real where wildcard > NoPerm;
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
    assume Heap[data_1, $allocated];
    assume Heap[count_1, $allocated];
    assume Heap[ghost, $allocated];
  
  // -- Checked inhaling of precondition
    assume (heap(data_1): int) == 0;
    assume (heap(count_1): int) == 0;
    assume (heap(ghost): int) == 0;
    assume (is_ghost(ghost): bool);
    perm := (rd(): Perm);
    assert {:msg "  Contract might not be well-formed. Fraction rd() might be negative. (many_conjuncts.vpr@47.5--58.30) [187096]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> data_1 != null;
    Mask := Mask[data_1, val:=Mask[data_1, val] + perm];
    assume state(Heap, Mask);
    perm := (rd(): Perm);
    assert {:msg "  Contract might not be well-formed. Fraction rd() might be negative. (many_conjuncts.vpr@47.5--58.30) [187097]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> ghost != null;
    Mask := Mask[ghost, val:=Mask[ghost, val] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume count_1 != null;
    Mask := Mask[count_1, acq_1:=Mask[count_1, acq_1] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of count.acq == false
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access count.acq (many_conjuncts.vpr@47.5--58.30) [187098]"}
        HasDirectPerm(Mask, count_1, acq_1);
    assume !Heap[count_1, acq_1];
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, AcqConjunct(count_1, 0):=Mask[null, AcqConjunct(count_1, 0)] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume count_1 != null;
    Mask := Mask[count_1, rel:=Mask[count_1, rel] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of count.rel == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access count.rel (many_conjuncts.vpr@47.5--58.30) [187099]"}
        HasDirectPerm(Mask, count_1, rel);
    assume Heap[count_1, rel] == 0;
    havoc wildcard;
    perm := wildcard;
    assume count_1 != null;
    Mask := Mask[count_1, init_1:=Mask[count_1, init_1] + perm];
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
    
    // -- Do welldefinedness check of the inhale part.
      if (*) {
        assume (heap(data_1): int) == 0;
        assume (heap(count_1): int) == 0;
        assume (heap(ghost): int) == 0;
        assume (is_ghost(ghost): bool);
        perm := (rd(): Perm);
        assert {:msg "  Contract might not be well-formed. Fraction rd() might be negative. (many_conjuncts.vpr@61.5--74.35) [187100]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> data_1 != null;
        PostMask := PostMask[data_1, val:=PostMask[data_1, val] + perm];
        assume state(PostHeap, PostMask);
        perm := (rd(): Perm);
        assert {:msg "  Contract might not be well-formed. Fraction rd() might be negative. (many_conjuncts.vpr@61.5--74.35) [187101]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> ghost != null;
        PostMask := PostMask[ghost, val:=PostMask[ghost, val] + perm];
        assume state(PostHeap, PostMask);
        havoc wildcard;
        perm := wildcard;
        assume count_1 != null;
        PostMask := PostMask[count_1, acq_1:=PostMask[count_1, acq_1] + perm];
        assume state(PostHeap, PostMask);
        
        // -- Check definedness of count.acq == false
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access count.acq (many_conjuncts.vpr@61.5--74.35) [187102]"}
            HasDirectPerm(PostMask, count_1, acq_1);
        assume !PostHeap[count_1, acq_1];
        havoc wildcard;
        perm := wildcard;
        PostMask := PostMask[null, AcqConjunct(count_1, 0):=PostMask[null, AcqConjunct(count_1, 0)] + perm];
        assume state(PostHeap, PostMask);
        havoc wildcard;
        perm := wildcard;
        assume count_1 != null;
        PostMask := PostMask[count_1, rel:=PostMask[count_1, rel] + perm];
        assume state(PostHeap, PostMask);
        
        // -- Check definedness of count.rel == 0
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access count.rel (many_conjuncts.vpr@61.5--74.35) [187103]"}
            HasDirectPerm(PostMask, count_1, rel);
        assume PostHeap[count_1, rel] == 0;
        havoc wildcard;
        perm := wildcard;
        assume count_1 != null;
        PostMask := PostMask[count_1, init_1:=PostMask[count_1, init_1] + perm];
        assume state(PostHeap, PostMask);
        
        // -- Check definedness of data.val == v
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access data.val (many_conjuncts.vpr@61.5--74.35) [187104]"}
            HasDirectPerm(PostMask, data_1, val);
        assume PostHeap[data_1, val] == v_2;
        assume state(PostHeap, PostMask);
        assume false;
      }
    
    // -- Normally inhale the exhale part.
      assume (heap(data_1): int) == 0;
      assume (heap(count_1): int) == 0;
      assume (heap(ghost): int) == 0;
      assume (is_ghost(ghost): bool);
      perm := (rd(): Perm);
      assert {:msg "  Contract might not be well-formed. Fraction rd() might be negative. (many_conjuncts.vpr@61.5--74.35) [187105]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> data_1 != null;
      PostMask := PostMask[data_1, val:=PostMask[data_1, val] + perm];
      assume state(PostHeap, PostMask);
      perm := (rd(): Perm);
      assert {:msg "  Contract might not be well-formed. Fraction rd() might be negative. (many_conjuncts.vpr@61.5--74.35) [187106]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> ghost != null;
      PostMask := PostMask[ghost, val:=PostMask[ghost, val] + perm];
      assume state(PostHeap, PostMask);
      havoc wildcard;
      perm := wildcard;
      assume count_1 != null;
      PostMask := PostMask[count_1, acq_1:=PostMask[count_1, acq_1] + perm];
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of count.acq == false
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access count.acq (many_conjuncts.vpr@61.5--74.35) [187107]"}
          HasDirectPerm(PostMask, count_1, acq_1);
      assume !PostHeap[count_1, acq_1];
      havoc wildcard;
      perm := wildcard;
      PostMask := PostMask[null, AcqConjunct(count_1, 0):=PostMask[null, AcqConjunct(count_1, 0)] + perm];
      assume state(PostHeap, PostMask);
      havoc wildcard;
      perm := wildcard;
      assume count_1 != null;
      PostMask := PostMask[count_1, rel:=PostMask[count_1, rel] + perm];
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of count.rel == 0
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access count.rel (many_conjuncts.vpr@61.5--74.35) [187108]"}
          HasDirectPerm(PostMask, count_1, rel);
      assume PostHeap[count_1, rel] == 0;
      havoc wildcard;
      perm := wildcard;
      assume count_1 != null;
      PostMask := PostMask[count_1, init_1:=PostMask[count_1, init_1] + perm];
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of data.val == v
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access data.val (many_conjuncts.vpr@61.5--74.35) [187109]"}
          HasDirectPerm(PostMask, data_1, val);
      assume PostHeap[data_1, val] == v_2;
      assume PostMask[data_1, val] == NoPerm;
      assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: v := data.val -- many_conjuncts.vpr@76.3--76.16
    
    // -- Check definedness of data.val
      assert {:msg "  Assignment might fail. There might be insufficient permission to access data.val (many_conjuncts.vpr@76.3--76.16) [187110]"}
        HasDirectPerm(Mask, data_1, val);
    v_2 := Heap[data_1, val];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of read2 might not hold. Assertion heap(data) == 0 might not hold. (many_conjuncts.vpr@61.5--74.35) [187111]"}
      (heap(data_1): int) == 0;
    assert {:msg "  Postcondition of read2 might not hold. Assertion heap(count) == 0 might not hold. (many_conjuncts.vpr@61.5--74.35) [187112]"}
      (heap(count_1): int) == 0;
    assert {:msg "  Postcondition of read2 might not hold. Assertion heap(ghost) == 0 might not hold. (many_conjuncts.vpr@61.5--74.35) [187113]"}
      (heap(ghost): int) == 0;
    assert {:msg "  Postcondition of read2 might not hold. Assertion is_ghost(ghost) might not hold. (many_conjuncts.vpr@61.5--74.35) [187114]"}
      (is_ghost(ghost): bool);
    perm := (rd(): Perm);
    assert {:msg "  Postcondition of read2 might not hold. Fraction rd() might be negative. (many_conjuncts.vpr@61.5--74.35) [187115]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of read2 might not hold. There might be insufficient permission to access data.val (many_conjuncts.vpr@61.5--74.35) [187116]"}
        perm <= Mask[data_1, val];
    }
    Mask := Mask[data_1, val:=Mask[data_1, val] - perm];
    perm := (rd(): Perm);
    assert {:msg "  Postcondition of read2 might not hold. Fraction rd() might be negative. (many_conjuncts.vpr@61.5--74.35) [187117]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of read2 might not hold. There might be insufficient permission to access ghost.val (many_conjuncts.vpr@61.5--74.35) [187118]"}
        perm <= Mask[ghost, val];
    }
    Mask := Mask[ghost, val:=Mask[ghost, val] - perm];
    assert {:msg "  Postcondition of read2 might not hold. There might be insufficient permission to access count.acq (many_conjuncts.vpr@61.5--74.35) [187119]"}
      Mask[count_1, acq_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[count_1, acq_1];
    Mask := Mask[count_1, acq_1:=Mask[count_1, acq_1] - wildcard];
    assert {:msg "  Postcondition of read2 might not hold. Assertion count.acq == false might not hold. (many_conjuncts.vpr@61.5--74.35) [187120]"}
      !Heap[count_1, acq_1];
    assert {:msg "  Postcondition of read2 might not hold. There might be insufficient permission to access AcqConjunct(count, 0) (many_conjuncts.vpr@61.5--74.35) [187121]"}
      Mask[null, AcqConjunct(count_1, 0)] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[null, AcqConjunct(count_1, 0)];
    Mask := Mask[null, AcqConjunct(count_1, 0):=Mask[null, AcqConjunct(count_1, 0)] - wildcard];
    assert {:msg "  Postcondition of read2 might not hold. There might be insufficient permission to access count.rel (many_conjuncts.vpr@61.5--74.35) [187122]"}
      Mask[count_1, rel] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[count_1, rel];
    Mask := Mask[count_1, rel:=Mask[count_1, rel] - wildcard];
    assert {:msg "  Postcondition of read2 might not hold. Assertion count.rel == 0 might not hold. (many_conjuncts.vpr@61.5--74.35) [187123]"}
      Heap[count_1, rel] == 0;
    assert {:msg "  Postcondition of read2 might not hold. There might be insufficient permission to access count.init (many_conjuncts.vpr@61.5--74.35) [187124]"}
      Mask[count_1, init_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[count_1, init_1];
    Mask := Mask[count_1, init_1:=Mask[count_1, init_1] - wildcard];
    assert {:msg "  Postcondition of read2 might not hold. Assertion data.val == v might not hold. (many_conjuncts.vpr@61.5--74.35) [187125]"}
      Heap[data_1, val] == v_2;
    assert {:msg "  Postcondition of read2 might not hold. Assertion perm(data.val) == none might not hold. (many_conjuncts.vpr@61.5--74.35) [187126]"}
      Mask[data_1, val] == NoPerm;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method read2_erroneous
// ==================================================

procedure read2_erroneous(data_1: Ref, count_1: Ref, ghost: Ref) returns (v_2: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var wildcard: real where wildcard > NoPerm;
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
    assume Heap[data_1, $allocated];
    assume Heap[count_1, $allocated];
    assume Heap[ghost, $allocated];
  
  // -- Checked inhaling of precondition
    assume (heap(data_1): int) == 0;
    assume (heap(count_1): int) == 0;
    assume (heap(ghost): int) == 0;
    assume (is_ghost(ghost): bool);
    perm := (rd(): Perm);
    assert {:msg "  Contract might not be well-formed. Fraction rd() might be negative. (many_conjuncts.vpr@81.5--92.30) [187127]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> data_1 != null;
    Mask := Mask[data_1, val:=Mask[data_1, val] + perm];
    assume state(Heap, Mask);
    perm := (rd(): Perm);
    assert {:msg "  Contract might not be well-formed. Fraction rd() might be negative. (many_conjuncts.vpr@81.5--92.30) [187128]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> ghost != null;
    Mask := Mask[ghost, val:=Mask[ghost, val] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume count_1 != null;
    Mask := Mask[count_1, acq_1:=Mask[count_1, acq_1] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of count.acq == false
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access count.acq (many_conjuncts.vpr@81.5--92.30) [187129]"}
        HasDirectPerm(Mask, count_1, acq_1);
    assume !Heap[count_1, acq_1];
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, AcqConjunct(count_1, 0):=Mask[null, AcqConjunct(count_1, 0)] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume count_1 != null;
    Mask := Mask[count_1, rel:=Mask[count_1, rel] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of count.rel == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access count.rel (many_conjuncts.vpr@81.5--92.30) [187130]"}
        HasDirectPerm(Mask, count_1, rel);
    assume Heap[count_1, rel] == 0;
    havoc wildcard;
    perm := wildcard;
    assume count_1 != null;
    Mask := Mask[count_1, init_1:=Mask[count_1, init_1] + perm];
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
    
    // -- Do welldefinedness check of the inhale part.
      if (*) {
        assume (heap(data_1): int) == 0;
        assume (heap(count_1): int) == 0;
        assume (heap(ghost): int) == 0;
        assume (is_ghost(ghost): bool);
        perm := (rd(): Perm);
        assert {:msg "  Contract might not be well-formed. Fraction rd() might be negative. (many_conjuncts.vpr@96.5--110.10) [187131]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> data_1 != null;
        PostMask := PostMask[data_1, val:=PostMask[data_1, val] + perm];
        assume state(PostHeap, PostMask);
        perm := (rd(): Perm);
        assert {:msg "  Contract might not be well-formed. Fraction rd() might be negative. (many_conjuncts.vpr@96.5--110.10) [187132]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> ghost != null;
        PostMask := PostMask[ghost, val:=PostMask[ghost, val] + perm];
        assume state(PostHeap, PostMask);
        havoc wildcard;
        perm := wildcard;
        assume count_1 != null;
        PostMask := PostMask[count_1, acq_1:=PostMask[count_1, acq_1] + perm];
        assume state(PostHeap, PostMask);
        
        // -- Check definedness of count.acq == false
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access count.acq (many_conjuncts.vpr@96.5--110.10) [187133]"}
            HasDirectPerm(PostMask, count_1, acq_1);
        assume !PostHeap[count_1, acq_1];
        havoc wildcard;
        perm := wildcard;
        PostMask := PostMask[null, AcqConjunct(count_1, 0):=PostMask[null, AcqConjunct(count_1, 0)] + perm];
        assume state(PostHeap, PostMask);
        havoc wildcard;
        perm := wildcard;
        assume count_1 != null;
        PostMask := PostMask[count_1, rel:=PostMask[count_1, rel] + perm];
        assume state(PostHeap, PostMask);
        
        // -- Check definedness of count.rel == 0
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access count.rel (many_conjuncts.vpr@96.5--110.10) [187134]"}
            HasDirectPerm(PostMask, count_1, rel);
        assume PostHeap[count_1, rel] == 0;
        havoc wildcard;
        perm := wildcard;
        assume count_1 != null;
        PostMask := PostMask[count_1, init_1:=PostMask[count_1, init_1] + perm];
        assume state(PostHeap, PostMask);
        
        // -- Check definedness of data.val == v
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access data.val (many_conjuncts.vpr@96.5--110.10) [187135]"}
            HasDirectPerm(PostMask, data_1, val);
        assume PostHeap[data_1, val] == v_2;
        assume false;
        assume state(PostHeap, PostMask);
        assume false;
      }
    
    // -- Normally inhale the exhale part.
      assume (heap(data_1): int) == 0;
      assume (heap(count_1): int) == 0;
      assume (heap(ghost): int) == 0;
      assume (is_ghost(ghost): bool);
      perm := (rd(): Perm);
      assert {:msg "  Contract might not be well-formed. Fraction rd() might be negative. (many_conjuncts.vpr@96.5--110.10) [187136]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> data_1 != null;
      PostMask := PostMask[data_1, val:=PostMask[data_1, val] + perm];
      assume state(PostHeap, PostMask);
      perm := (rd(): Perm);
      assert {:msg "  Contract might not be well-formed. Fraction rd() might be negative. (many_conjuncts.vpr@96.5--110.10) [187137]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> ghost != null;
      PostMask := PostMask[ghost, val:=PostMask[ghost, val] + perm];
      assume state(PostHeap, PostMask);
      havoc wildcard;
      perm := wildcard;
      assume count_1 != null;
      PostMask := PostMask[count_1, acq_1:=PostMask[count_1, acq_1] + perm];
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of count.acq == false
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access count.acq (many_conjuncts.vpr@96.5--110.10) [187138]"}
          HasDirectPerm(PostMask, count_1, acq_1);
      assume !PostHeap[count_1, acq_1];
      havoc wildcard;
      perm := wildcard;
      PostMask := PostMask[null, AcqConjunct(count_1, 0):=PostMask[null, AcqConjunct(count_1, 0)] + perm];
      assume state(PostHeap, PostMask);
      havoc wildcard;
      perm := wildcard;
      assume count_1 != null;
      PostMask := PostMask[count_1, rel:=PostMask[count_1, rel] + perm];
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of count.rel == 0
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access count.rel (many_conjuncts.vpr@96.5--110.10) [187139]"}
          HasDirectPerm(PostMask, count_1, rel);
      assume PostHeap[count_1, rel] == 0;
      havoc wildcard;
      perm := wildcard;
      assume count_1 != null;
      PostMask := PostMask[count_1, init_1:=PostMask[count_1, init_1] + perm];
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of data.val == v
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access data.val (many_conjuncts.vpr@96.5--110.10) [187140]"}
          HasDirectPerm(PostMask, data_1, val);
      assume PostHeap[data_1, val] == v_2;
      assume PostMask[data_1, val] == NoPerm;
      assume false;
      assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: v := data.val -- many_conjuncts.vpr@112.3--112.16
    
    // -- Check definedness of data.val
      assert {:msg "  Assignment might fail. There might be insufficient permission to access data.val (many_conjuncts.vpr@112.3--112.16) [187141]"}
        HasDirectPerm(Mask, data_1, val);
    v_2 := Heap[data_1, val];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of read2_erroneous might not hold. Assertion heap(data) == 0 might not hold. (many_conjuncts.vpr@96.5--110.10) [187142]"}
      (heap(data_1): int) == 0;
    assert {:msg "  Postcondition of read2_erroneous might not hold. Assertion heap(count) == 0 might not hold. (many_conjuncts.vpr@96.5--110.10) [187143]"}
      (heap(count_1): int) == 0;
    assert {:msg "  Postcondition of read2_erroneous might not hold. Assertion heap(ghost) == 0 might not hold. (many_conjuncts.vpr@96.5--110.10) [187144]"}
      (heap(ghost): int) == 0;
    assert {:msg "  Postcondition of read2_erroneous might not hold. Assertion is_ghost(ghost) might not hold. (many_conjuncts.vpr@96.5--110.10) [187145]"}
      (is_ghost(ghost): bool);
    perm := (rd(): Perm);
    assert {:msg "  Postcondition of read2_erroneous might not hold. Fraction rd() might be negative. (many_conjuncts.vpr@96.5--110.10) [187146]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of read2_erroneous might not hold. There might be insufficient permission to access data.val (many_conjuncts.vpr@96.5--110.10) [187147]"}
        perm <= Mask[data_1, val];
    }
    Mask := Mask[data_1, val:=Mask[data_1, val] - perm];
    perm := (rd(): Perm);
    assert {:msg "  Postcondition of read2_erroneous might not hold. Fraction rd() might be negative. (many_conjuncts.vpr@96.5--110.10) [187148]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of read2_erroneous might not hold. There might be insufficient permission to access ghost.val (many_conjuncts.vpr@96.5--110.10) [187149]"}
        perm <= Mask[ghost, val];
    }
    Mask := Mask[ghost, val:=Mask[ghost, val] - perm];
    assert {:msg "  Postcondition of read2_erroneous might not hold. There might be insufficient permission to access count.acq (many_conjuncts.vpr@96.5--110.10) [187150]"}
      Mask[count_1, acq_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[count_1, acq_1];
    Mask := Mask[count_1, acq_1:=Mask[count_1, acq_1] - wildcard];
    assert {:msg "  Postcondition of read2_erroneous might not hold. Assertion count.acq == false might not hold. (many_conjuncts.vpr@96.5--110.10) [187151]"}
      !Heap[count_1, acq_1];
    assert {:msg "  Postcondition of read2_erroneous might not hold. There might be insufficient permission to access AcqConjunct(count, 0) (many_conjuncts.vpr@96.5--110.10) [187152]"}
      Mask[null, AcqConjunct(count_1, 0)] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[null, AcqConjunct(count_1, 0)];
    Mask := Mask[null, AcqConjunct(count_1, 0):=Mask[null, AcqConjunct(count_1, 0)] - wildcard];
    assert {:msg "  Postcondition of read2_erroneous might not hold. There might be insufficient permission to access count.rel (many_conjuncts.vpr@96.5--110.10) [187153]"}
      Mask[count_1, rel] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[count_1, rel];
    Mask := Mask[count_1, rel:=Mask[count_1, rel] - wildcard];
    assert {:msg "  Postcondition of read2_erroneous might not hold. Assertion count.rel == 0 might not hold. (many_conjuncts.vpr@96.5--110.10) [187154]"}
      Heap[count_1, rel] == 0;
    assert {:msg "  Postcondition of read2_erroneous might not hold. There might be insufficient permission to access count.init (many_conjuncts.vpr@96.5--110.10) [187155]"}
      Mask[count_1, init_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[count_1, init_1];
    Mask := Mask[count_1, init_1:=Mask[count_1, init_1] - wildcard];
    assert {:msg "  Postcondition of read2_erroneous might not hold. Assertion data.val == v might not hold. (many_conjuncts.vpr@96.5--110.10) [187156]"}
      Heap[data_1, val] == v_2;
    assert {:msg "  Postcondition of read2_erroneous might not hold. Assertion perm(data.val) == none might not hold. (many_conjuncts.vpr@96.5--110.10) [187157]"}
      Mask[data_1, val] == NoPerm;
    assert {:msg "  Postcondition of read2_erroneous might not hold. Assertion false might not hold. (many_conjuncts.vpr@96.5--110.10) [187158]"}
      false;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}