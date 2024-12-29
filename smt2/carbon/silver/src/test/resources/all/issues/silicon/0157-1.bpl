// 
// Translation of Viper program.
// 
// Date:         2024-12-29 20:46:23
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0157-1.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0157-1-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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

const unique old$methodPermission: Field NormalField Perm;
axiom !IsPredicateField(old$methodPermission);
axiom !IsWandField(old$methodPermission);
const unique joinable$: Field NormalField bool;
axiom !IsPredicateField(joinable$);
axiom !IsWandField(joinable$);
const unique Testx$: Field NormalField int;
axiom !IsPredicateField(Testx$);
axiom !IsWandField(Testx$);
const unique Testtk$: Field NormalField Ref;
axiom !IsPredicateField(Testtk$);
axiom !IsWandField(Testtk$);
const unique par$Testfoo$this$_2: Field NormalField Ref;
axiom !IsPredicateField(par$Testfoo$this$_2);
axiom !IsWandField(par$Testfoo$this$_2);
const unique par$Testfoo$k$: Field NormalField Perm;
axiom !IsPredicateField(par$Testfoo$k$);
axiom !IsWandField(par$Testfoo$k$);
const unique par$TestjoinTk$this$_3: Field NormalField Ref;
axiom !IsPredicateField(par$TestjoinTk$this$_3);
axiom !IsWandField(par$TestjoinTk$this$_3);
const unique par$TestjoinTk$k$_1: Field NormalField Perm;
axiom !IsPredicateField(par$TestjoinTk$k$_1);
axiom !IsWandField(par$TestjoinTk$k$_1);
const unique par$Testtest$this$_4: Field NormalField Ref;
axiom !IsPredicateField(par$Testtest$this$_4);
axiom !IsWandField(par$Testtest$this$_4);
const unique par$Testtest$k$_2: Field NormalField Perm;
axiom !IsPredicateField(par$Testtest$k$_2);
axiom !IsWandField(par$Testtest$k$_2);

// ==================================================
// Translation of predicate TestV$
// ==================================================

type PredicateType_TestV$;
function  TestV$(this$_1: Ref): Field PredicateType_TestV$ FrameType;
function  TestV$#sm(this$_1: Ref): Field PredicateType_TestV$ PMaskType;
axiom (forall this$_1: Ref ::
  { PredicateMaskField(TestV$(this$_1)) }
  PredicateMaskField(TestV$(this$_1)) == TestV$#sm(this$_1)
);
axiom (forall this$_1: Ref ::
  { TestV$(this$_1) }
  IsPredicateField(TestV$(this$_1))
);
axiom (forall this$_1: Ref ::
  { TestV$(this$_1) }
  getPredWandId(TestV$(this$_1)) == 0
);
function  TestV$#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  TestV$#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this$_1: Ref, this$_12: Ref ::
  { TestV$(this$_1), TestV$(this$_12) }
  TestV$(this$_1) == TestV$(this$_12) ==> this$_1 == this$_12
);
axiom (forall this$_1: Ref, this$_12: Ref ::
  { TestV$#sm(this$_1), TestV$#sm(this$_12) }
  TestV$#sm(this$_1) == TestV$#sm(this$_12) ==> this$_1 == this$_12
);

axiom (forall Heap: HeapType, this$_1: Ref ::
  { TestV$#trigger(Heap, TestV$(this$_1)) }
  TestV$#everUsed(TestV$(this$_1))
);

procedure TestV$#definedness(this$_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of TestV$
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[this$_1, $allocated];
    perm := FullPerm;
    assume this$_1 != null;
    Mask := Mask[this$_1, Testx$:=Mask[this$_1, Testx$] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method Testfoo$
// ==================================================

procedure Testfoo$(this: Ref, k$: Perm) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    assume this != null;
    assume state(Heap, Mask);
    assume NoPerm < k$;
    assume state(Heap, Mask);
    assume k$ < FullPerm;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, TestV$(this):=Mask[null, TestV$(this)] + perm];
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
    PostMask := PostMask[null, TestV$(this):=PostMask[null, TestV$(this)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(TestV$(this), write) -- 0157-1.vpr@36.3--36.34
    assume TestV$#trigger(Heap, TestV$(this));
    assume Heap[null, TestV$(this)] == FrameFragment(Heap[this, Testx$]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding TestV$(this) might fail. There might be insufficient permission to access TestV$(this) (0157-1.vpr@36.3--36.34) [204560]"}
        perm <= Mask[null, TestV$(this)];
    }
    Mask := Mask[null, TestV$(this):=Mask[null, TestV$(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, TestV$(this))) {
        havoc newVersion;
        Heap := Heap[null, TestV$(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, Testx$:=Mask[this, Testx$] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.Testx$ := this.Testx$ + 1 -- 0157-1.vpr@37.3--37.33
    
    // -- Check definedness of this.Testx$ + 1
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.Testx$ (0157-1.vpr@37.3--37.33) [204562]"}
        HasDirectPerm(Mask, this, Testx$);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.Testx$ (0157-1.vpr@37.3--37.33) [204563]"}
      FullPerm == Mask[this, Testx$];
    Heap := Heap[this, Testx$:=Heap[this, Testx$] + 1];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(TestV$(this), write) -- 0157-1.vpr@38.3--38.32
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding TestV$(this) might fail. There might be insufficient permission to access this.Testx$ (0157-1.vpr@38.3--38.32) [204566]"}
        perm <= Mask[this, Testx$];
    }
    Mask := Mask[this, Testx$:=Mask[this, Testx$] - perm];
    perm := FullPerm;
    Mask := Mask[null, TestV$(this):=Mask[null, TestV$(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume TestV$#trigger(Heap, TestV$(this));
    assume Heap[null, TestV$(this)] == FrameFragment(Heap[this, Testx$]);
    if (!HasDirectPerm(Mask, null, TestV$(this))) {
      Heap := Heap[null, TestV$#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, TestV$(this):=freshVersion];
    }
    Heap := Heap[null, TestV$#sm(this):=Heap[null, TestV$#sm(this)][this, Testx$:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Testfoo$ might not hold. There might be insufficient permission to access TestV$(this) (0157-1.vpr@34.11--34.35) [204568]"}
        perm <= Mask[null, TestV$(this)];
    }
    Mask := Mask[null, TestV$(this):=Mask[null, TestV$(this)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method TestBug
// ==================================================

procedure TestBug(this: Ref, k$_1: Perm) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, Testtk$:=Mask[this, Testtk$] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.Testtk$ != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Testtk$ (0157-1.vpr@42.12--42.126) [204569]"}
        HasDirectPerm(Mask, this, Testtk$);
    assume Heap[this, Testtk$] != null;
    
    // -- Check definedness of acc(this.Testtk$.joinable$, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Testtk$ (0157-1.vpr@42.12--42.126) [204570]"}
        HasDirectPerm(Mask, this, Testtk$);
    perm := FullPerm;
    assume Heap[this, Testtk$] != null;
    Mask := Mask[Heap[this, Testtk$], joinable$:=Mask[Heap[this, Testtk$], joinable$] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.Testtk$.joinable$
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Testtk$ (0157-1.vpr@42.12--42.126) [204571]"}
        HasDirectPerm(Mask, this, Testtk$);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Testtk$.joinable$ (0157-1.vpr@42.12--42.126) [204572]"}
        HasDirectPerm(Mask, Heap[this, Testtk$], joinable$);
    assume Heap[Heap[this, Testtk$], joinable$];
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert false -- 0157-1.vpr@45.3--45.15
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion false might not hold. (0157-1.vpr@45.10--45.15) [204573]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method TestBug1
// ==================================================

procedure TestBug1(this: Ref, k$_1: Perm) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, Testtk$:=Mask[this, Testtk$] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.Testtk$ != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Testtk$ (0157-1.vpr@49.12--49.62) [204574]"}
        HasDirectPerm(Mask, this, Testtk$);
    assume Heap[this, Testtk$] != null;
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(this.Testtk$.joinable$, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Testtk$ (0157-1.vpr@50.12--50.72) [204575]"}
        HasDirectPerm(Mask, this, Testtk$);
    perm := FullPerm;
    assume Heap[this, Testtk$] != null;
    Mask := Mask[Heap[this, Testtk$], joinable$:=Mask[Heap[this, Testtk$], joinable$] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.Testtk$.joinable$
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Testtk$ (0157-1.vpr@50.12--50.72) [204576]"}
        HasDirectPerm(Mask, this, Testtk$);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Testtk$.joinable$ (0157-1.vpr@50.12--50.72) [204577]"}
        HasDirectPerm(Mask, Heap[this, Testtk$], joinable$);
    assume Heap[Heap[this, Testtk$], joinable$];
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert false -- 0157-1.vpr@53.3--53.15
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion false might not hold. (0157-1.vpr@53.10--53.15) [204578]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method TestjoinTk$
// ==================================================

procedure TestjoinTk$(this: Ref, k$_1: Perm) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    assume this != null;
    assume state(Heap, Mask);
    assume NoPerm < k$_1;
    assume state(Heap, Mask);
    assume k$_1 < FullPerm;
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, Testtk$:=Mask[this, Testtk$] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.Testtk$ != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Testtk$ (0157-1.vpr@60.12--60.126) [204579]"}
        HasDirectPerm(Mask, this, Testtk$);
    assume Heap[this, Testtk$] != null;
    
    // -- Check definedness of acc(this.Testtk$.joinable$, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Testtk$ (0157-1.vpr@60.12--60.126) [204580]"}
        HasDirectPerm(Mask, this, Testtk$);
    perm := FullPerm;
    assume Heap[this, Testtk$] != null;
    Mask := Mask[Heap[this, Testtk$], joinable$:=Mask[Heap[this, Testtk$], joinable$] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.Testtk$.joinable$
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Testtk$ (0157-1.vpr@60.12--60.126) [204581]"}
        HasDirectPerm(Mask, this, Testtk$);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.Testtk$.joinable$ (0157-1.vpr@60.12--60.126) [204582]"}
        HasDirectPerm(Mask, Heap[this, Testtk$], joinable$);
    assume Heap[Heap[this, Testtk$], joinable$];
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
    PostMask := PostMask[null, TestV$(this):=PostMask[null, TestV$(this)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: assert this.Testtk$.joinable$ -- 0157-1.vpr@63.3--63.32
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of this.Testtk$.joinable$
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.Testtk$ (0157-1.vpr@63.10--63.32) [204583]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, Testtk$);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.Testtk$.joinable$ (0157-1.vpr@63.10--63.32) [204584]"}
        HasDirectPerm(ExhaleWellDef0Mask, Heap[this, Testtk$], joinable$);
    assert {:msg "  Assert might fail. Assertion this.Testtk$.joinable$ might not hold. (0157-1.vpr@63.10--63.32) [204585]"}
      Heap[Heap[this, Testtk$], joinable$];
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale true && acc(TestV$(this.Testtk$.par$Testfoo$this$_2), write) -- 0157-1.vpr@65.3--65.70
    
    // -- Check definedness of acc(TestV$(this.Testtk$.par$Testfoo$this$_2), write)
      assert {:msg "  Inhale might fail. There might be insufficient permission to access this.Testtk$ (0157-1.vpr@65.10--65.70) [204586]"}
        HasDirectPerm(Mask, this, Testtk$);
      assert {:msg "  Inhale might fail. There might be insufficient permission to access this.Testtk$.par$Testfoo$this$_2 (0157-1.vpr@65.10--65.70) [204587]"}
        HasDirectPerm(Mask, Heap[this, Testtk$], par$Testfoo$this$_2);
    perm := FullPerm;
    Mask := Mask[null, TestV$(Heap[Heap[this, Testtk$], par$Testfoo$this$_2]):=Mask[null, TestV$(Heap[Heap[this, Testtk$], par$Testfoo$this$_2])] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.Testtk$.joinable$ := false -- 0157-1.vpr@66.3--66.34
    
    // -- Check definedness of this.Testtk$
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.Testtk$ (0157-1.vpr@66.3--66.34) [204589]"}
        HasDirectPerm(Mask, this, Testtk$);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.Testtk$.joinable$ (0157-1.vpr@66.3--66.34) [204590]"}
      FullPerm == Mask[Heap[this, Testtk$], joinable$];
    Heap := Heap[Heap[this, Testtk$], joinable$:=false];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(TestV$(this), write) -- 0157-1.vpr@67.3--67.34
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access TestV$(this) (0157-1.vpr@67.10--67.34) [204592]"}
        perm <= AssertMask[null, TestV$(this)];
    }
    AssertMask := AssertMask[null, TestV$(this):=AssertMask[null, TestV$(this)] - perm];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of TestjoinTk$ might not hold. There might be insufficient permission to access TestV$(this) (0157-1.vpr@61.11--61.35) [204593]"}
        perm <= Mask[null, TestV$(this)];
    }
    Mask := Mask[null, TestV$(this):=Mask[null, TestV$(this)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}