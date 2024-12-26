// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect-@PROC@.smt2 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy

const $$Language$Dafny: bool
uses {
axiom $$Language$Dafny;
}

type Ty;

type Bv0 = int;

const unique TBool: Ty
uses {
axiom Tag(TBool) == TagBool;
}

const unique TChar: Ty
uses {
axiom Tag(TChar) == TagChar;
}

const unique TInt: Ty
uses {
axiom Tag(TInt) == TagInt;
}

const unique TReal: Ty
uses {
axiom Tag(TReal) == TagReal;
}

const unique TORDINAL: Ty
uses {
axiom Tag(TORDINAL) == TagORDINAL;
}

revealed function TBitvector(int) : Ty;

axiom (forall w: int :: { TBitvector(w) } Inv0_TBitvector(TBitvector(w)) == w);

revealed function TSet(Ty) : Ty;

axiom (forall t: Ty :: { TSet(t) } Inv0_TSet(TSet(t)) == t);

axiom (forall t: Ty :: { TSet(t) } Tag(TSet(t)) == TagSet);

revealed function TISet(Ty) : Ty;

axiom (forall t: Ty :: { TISet(t) } Inv0_TISet(TISet(t)) == t);

axiom (forall t: Ty :: { TISet(t) } Tag(TISet(t)) == TagISet);

revealed function TMultiSet(Ty) : Ty;

axiom (forall t: Ty :: { TMultiSet(t) } Inv0_TMultiSet(TMultiSet(t)) == t);

axiom (forall t: Ty :: { TMultiSet(t) } Tag(TMultiSet(t)) == TagMultiSet);

revealed function TSeq(Ty) : Ty;

axiom (forall t: Ty :: { TSeq(t) } Inv0_TSeq(TSeq(t)) == t);

axiom (forall t: Ty :: { TSeq(t) } Tag(TSeq(t)) == TagSeq);

revealed function TMap(Ty, Ty) : Ty;

axiom (forall t: Ty, u: Ty :: { TMap(t, u) } Inv0_TMap(TMap(t, u)) == t);

axiom (forall t: Ty, u: Ty :: { TMap(t, u) } Inv1_TMap(TMap(t, u)) == u);

axiom (forall t: Ty, u: Ty :: { TMap(t, u) } Tag(TMap(t, u)) == TagMap);

revealed function TIMap(Ty, Ty) : Ty;

axiom (forall t: Ty, u: Ty :: { TIMap(t, u) } Inv0_TIMap(TIMap(t, u)) == t);

axiom (forall t: Ty, u: Ty :: { TIMap(t, u) } Inv1_TIMap(TIMap(t, u)) == u);

axiom (forall t: Ty, u: Ty :: { TIMap(t, u) } Tag(TIMap(t, u)) == TagIMap);

revealed function Inv0_TBitvector(Ty) : int;

revealed function Inv0_TSet(Ty) : Ty;

revealed function Inv0_TISet(Ty) : Ty;

revealed function Inv0_TSeq(Ty) : Ty;

revealed function Inv0_TMultiSet(Ty) : Ty;

revealed function Inv0_TMap(Ty) : Ty;

revealed function Inv1_TMap(Ty) : Ty;

revealed function Inv0_TIMap(Ty) : Ty;

revealed function Inv1_TIMap(Ty) : Ty;

type TyTag;

revealed function Tag(Ty) : TyTag;

const unique TagBool: TyTag;

const unique TagChar: TyTag;

const unique TagInt: TyTag;

const unique TagReal: TyTag;

const unique TagORDINAL: TyTag;

const unique TagSet: TyTag;

const unique TagISet: TyTag;

const unique TagMultiSet: TyTag;

const unique TagSeq: TyTag;

const unique TagMap: TyTag;

const unique TagIMap: TyTag;

const unique TagClass: TyTag;

type TyTagFamily;

revealed function TagFamily(Ty) : TyTagFamily;

revealed function {:identity} Lit<T>(x: T) : T
uses {
axiom (forall<T> x: T :: {:identity} { Lit(x): T } Lit(x): T == x);
}

axiom (forall<T> x: T :: { $Box(Lit(x)) } $Box(Lit(x)) == Lit($Box(x)));

revealed function {:identity} LitInt(x: int) : int
uses {
axiom (forall x: int :: {:identity} { LitInt(x): int } LitInt(x): int == x);
}

axiom (forall x: int :: { $Box(LitInt(x)) } $Box(LitInt(x)) == Lit($Box(x)));

revealed function {:identity} LitReal(x: real) : real
uses {
axiom (forall x: real :: {:identity} { LitReal(x): real } LitReal(x): real == x);
}

axiom (forall x: real :: { $Box(LitReal(x)) } $Box(LitReal(x)) == Lit($Box(x)));

revealed function {:inline} char#IsChar(n: int) : bool
{
  (0 <= n && n < 55296) || (57344 <= n && n < 1114112)
}

type char;

revealed function char#FromInt(int) : char;

axiom (forall n: int :: 
  { char#FromInt(n) } 
  char#IsChar(n) ==> char#ToInt(char#FromInt(n)) == n);

revealed function char#ToInt(char) : int;

axiom (forall ch: char :: 
  { char#ToInt(ch) } 
  char#FromInt(char#ToInt(ch)) == ch && char#IsChar(char#ToInt(ch)));

revealed function char#Plus(char, char) : char;

axiom (forall a: char, b: char :: 
  { char#Plus(a, b) } 
  char#Plus(a, b) == char#FromInt(char#ToInt(a) + char#ToInt(b)));

revealed function char#Minus(char, char) : char;

axiom (forall a: char, b: char :: 
  { char#Minus(a, b) } 
  char#Minus(a, b) == char#FromInt(char#ToInt(a) - char#ToInt(b)));

type ref;

const null: ref;

type Box;

const $ArbitraryBoxValue: Box;

revealed function $Box<T>(T) : Box;

revealed function $Unbox<T>(Box) : T;

axiom (forall<T> x: T :: { $Box(x) } $Unbox($Box(x)) == x);

axiom (forall<T> x: Box :: { $Unbox(x): T } $Box($Unbox(x): T) == x);

revealed function $IsBox(Box, Ty) : bool;

revealed function $IsAllocBox(Box, Ty, Heap) : bool;

axiom (forall bx: Box :: 
  { $IsBox(bx, TInt) } 
  $IsBox(bx, TInt) ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, TInt));

axiom (forall bx: Box :: 
  { $IsBox(bx, TReal) } 
  $IsBox(bx, TReal)
     ==> $Box($Unbox(bx): real) == bx && $Is($Unbox(bx): real, TReal));

axiom (forall bx: Box :: 
  { $IsBox(bx, TBool) } 
  $IsBox(bx, TBool)
     ==> $Box($Unbox(bx): bool) == bx && $Is($Unbox(bx): bool, TBool));

axiom (forall bx: Box :: 
  { $IsBox(bx, TChar) } 
  $IsBox(bx, TChar)
     ==> $Box($Unbox(bx): char) == bx && $Is($Unbox(bx): char, TChar));

axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(0)) } 
  $IsBox(bx, TBitvector(0))
     ==> $Box($Unbox(bx): Bv0) == bx && $Is($Unbox(bx): Bv0, TBitvector(0)));

axiom (forall bx: Box, t: Ty :: 
  { $IsBox(bx, TSet(t)) } 
  $IsBox(bx, TSet(t))
     ==> $Box($Unbox(bx): Set) == bx && $Is($Unbox(bx): Set, TSet(t)));

axiom (forall bx: Box, t: Ty :: 
  { $IsBox(bx, TISet(t)) } 
  $IsBox(bx, TISet(t))
     ==> $Box($Unbox(bx): ISet) == bx && $Is($Unbox(bx): ISet, TISet(t)));

axiom (forall bx: Box, t: Ty :: 
  { $IsBox(bx, TMultiSet(t)) } 
  $IsBox(bx, TMultiSet(t))
     ==> $Box($Unbox(bx): MultiSet) == bx && $Is($Unbox(bx): MultiSet, TMultiSet(t)));

axiom (forall bx: Box, t: Ty :: 
  { $IsBox(bx, TSeq(t)) } 
  $IsBox(bx, TSeq(t))
     ==> $Box($Unbox(bx): Seq) == bx && $Is($Unbox(bx): Seq, TSeq(t)));

axiom (forall bx: Box, s: Ty, t: Ty :: 
  { $IsBox(bx, TMap(s, t)) } 
  $IsBox(bx, TMap(s, t))
     ==> $Box($Unbox(bx): Map) == bx && $Is($Unbox(bx): Map, TMap(s, t)));

axiom (forall bx: Box, s: Ty, t: Ty :: 
  { $IsBox(bx, TIMap(s, t)) } 
  $IsBox(bx, TIMap(s, t))
     ==> $Box($Unbox(bx): IMap) == bx && $Is($Unbox(bx): IMap, TIMap(s, t)));

axiom (forall<T> v: T, t: Ty :: 
  { $IsBox($Box(v), t) } 
  $IsBox($Box(v), t) <==> $Is(v, t));

axiom (forall<T> v: T, t: Ty, h: Heap :: 
  { $IsAllocBox($Box(v), t, h) } 
  $IsAllocBox($Box(v), t, h) <==> $IsAlloc(v, t, h));

revealed function $Is<T>(T, Ty) : bool;

axiom (forall v: int :: { $Is(v, TInt) } $Is(v, TInt));

axiom (forall v: real :: { $Is(v, TReal) } $Is(v, TReal));

axiom (forall v: bool :: { $Is(v, TBool) } $Is(v, TBool));

axiom (forall v: char :: { $Is(v, TChar) } $Is(v, TChar));

axiom (forall v: ORDINAL :: { $Is(v, TORDINAL) } $Is(v, TORDINAL));

axiom (forall v: Bv0 :: { $Is(v, TBitvector(0)) } $Is(v, TBitvector(0)));

axiom (forall v: Set, t0: Ty :: 
  { $Is(v, TSet(t0)) } 
  $Is(v, TSet(t0))
     <==> (forall bx: Box :: 
      { Set#IsMember(v, bx) } 
      Set#IsMember(v, bx) ==> $IsBox(bx, t0)));

axiom (forall v: ISet, t0: Ty :: 
  { $Is(v, TISet(t0)) } 
  $Is(v, TISet(t0)) <==> (forall bx: Box :: { v[bx] } v[bx] ==> $IsBox(bx, t0)));

axiom (forall v: MultiSet, t0: Ty :: 
  { $Is(v, TMultiSet(t0)) } 
  $Is(v, TMultiSet(t0))
     <==> (forall bx: Box :: 
      { MultiSet#Multiplicity(v, bx) } 
      0 < MultiSet#Multiplicity(v, bx) ==> $IsBox(bx, t0)));

axiom (forall v: MultiSet, t0: Ty :: 
  { $Is(v, TMultiSet(t0)) } 
  $Is(v, TMultiSet(t0)) ==> $IsGoodMultiSet(v));

axiom (forall v: Seq, t0: Ty :: 
  { $Is(v, TSeq(t0)) } 
  $Is(v, TSeq(t0))
     <==> (forall i: int :: 
      { Seq#Index(v, i) } 
      0 <= i && i < Seq#Length(v) ==> $IsBox(Seq#Index(v, i), t0)));

axiom (forall v: Map, t0: Ty, t1: Ty :: 
  { $Is(v, TMap(t0, t1)) } 
  $Is(v, TMap(t0, t1))
     <==> (forall bx: Box :: 
      { Map#Elements(v)[bx] } { Set#IsMember(Map#Domain(v), bx) } 
      Set#IsMember(Map#Domain(v), bx)
         ==> $IsBox(Map#Elements(v)[bx], t1) && $IsBox(bx, t0)));

axiom (forall v: Map, t0: Ty, t1: Ty :: 
  { $Is(v, TMap(t0, t1)) } 
  $Is(v, TMap(t0, t1))
     ==> $Is(Map#Domain(v), TSet(t0))
       && $Is(Map#Values(v), TSet(t1))
       && $Is(Map#Items(v), TSet(Tclass._System.Tuple2(t0, t1))));

axiom (forall v: IMap, t0: Ty, t1: Ty :: 
  { $Is(v, TIMap(t0, t1)) } 
  $Is(v, TIMap(t0, t1))
     <==> (forall bx: Box :: 
      { IMap#Elements(v)[bx] } { IMap#Domain(v)[bx] } 
      IMap#Domain(v)[bx] ==> $IsBox(IMap#Elements(v)[bx], t1) && $IsBox(bx, t0)));

axiom (forall v: IMap, t0: Ty, t1: Ty :: 
  { $Is(v, TIMap(t0, t1)) } 
  $Is(v, TIMap(t0, t1))
     ==> $Is(IMap#Domain(v), TISet(t0))
       && $Is(IMap#Values(v), TISet(t1))
       && $Is(IMap#Items(v), TISet(Tclass._System.Tuple2(t0, t1))));

revealed function $IsAlloc<T>(T, Ty, Heap) : bool;

axiom (forall h: Heap, v: int :: { $IsAlloc(v, TInt, h) } $IsAlloc(v, TInt, h));

axiom (forall h: Heap, v: real :: { $IsAlloc(v, TReal, h) } $IsAlloc(v, TReal, h));

axiom (forall h: Heap, v: bool :: { $IsAlloc(v, TBool, h) } $IsAlloc(v, TBool, h));

axiom (forall h: Heap, v: char :: { $IsAlloc(v, TChar, h) } $IsAlloc(v, TChar, h));

axiom (forall h: Heap, v: ORDINAL :: 
  { $IsAlloc(v, TORDINAL, h) } 
  $IsAlloc(v, TORDINAL, h));

axiom (forall v: Bv0, h: Heap :: 
  { $IsAlloc(v, TBitvector(0), h) } 
  $IsAlloc(v, TBitvector(0), h));

axiom (forall v: Set, t0: Ty, h: Heap :: 
  { $IsAlloc(v, TSet(t0), h) } 
  $IsAlloc(v, TSet(t0), h)
     <==> (forall bx: Box :: 
      { Set#IsMember(v, bx) } 
      Set#IsMember(v, bx) ==> $IsAllocBox(bx, t0, h)));

axiom (forall v: ISet, t0: Ty, h: Heap :: 
  { $IsAlloc(v, TISet(t0), h) } 
  $IsAlloc(v, TISet(t0), h)
     <==> (forall bx: Box :: { v[bx] } v[bx] ==> $IsAllocBox(bx, t0, h)));

axiom (forall v: MultiSet, t0: Ty, h: Heap :: 
  { $IsAlloc(v, TMultiSet(t0), h) } 
  $IsAlloc(v, TMultiSet(t0), h)
     <==> (forall bx: Box :: 
      { MultiSet#Multiplicity(v, bx) } 
      0 < MultiSet#Multiplicity(v, bx) ==> $IsAllocBox(bx, t0, h)));

axiom (forall v: Seq, t0: Ty, h: Heap :: 
  { $IsAlloc(v, TSeq(t0), h) } 
  $IsAlloc(v, TSeq(t0), h)
     <==> (forall i: int :: 
      { Seq#Index(v, i) } 
      0 <= i && i < Seq#Length(v) ==> $IsAllocBox(Seq#Index(v, i), t0, h)));

axiom (forall v: Map, t0: Ty, t1: Ty, h: Heap :: 
  { $IsAlloc(v, TMap(t0, t1), h) } 
  $IsAlloc(v, TMap(t0, t1), h)
     <==> (forall bx: Box :: 
      { Map#Elements(v)[bx] } { Set#IsMember(Map#Domain(v), bx) } 
      Set#IsMember(Map#Domain(v), bx)
         ==> $IsAllocBox(Map#Elements(v)[bx], t1, h) && $IsAllocBox(bx, t0, h)));

axiom (forall v: IMap, t0: Ty, t1: Ty, h: Heap :: 
  { $IsAlloc(v, TIMap(t0, t1), h) } 
  $IsAlloc(v, TIMap(t0, t1), h)
     <==> (forall bx: Box :: 
      { IMap#Elements(v)[bx] } { IMap#Domain(v)[bx] } 
      IMap#Domain(v)[bx]
         ==> $IsAllocBox(IMap#Elements(v)[bx], t1, h) && $IsAllocBox(bx, t0, h)));

revealed function $AlwaysAllocated(Ty) : bool;

axiom (forall ty: Ty :: 
  { $AlwaysAllocated(ty) } 
  $AlwaysAllocated(ty)
     ==> (forall h: Heap, v: Box :: 
      { $IsAllocBox(v, ty, h) } 
      $IsBox(v, ty) ==> $IsAllocBox(v, ty, h)));

revealed function $OlderTag(Heap) : bool;

type ClassName;

const unique class._System.int: ClassName;

const unique class._System.bool: ClassName;

const unique class._System.set: ClassName;

const unique class._System.seq: ClassName;

const unique class._System.multiset: ClassName;

revealed function Tclass._System.object?() : Ty
uses {
// Tclass._System.object? Tag
axiom Tag(Tclass._System.object?()) == Tagclass._System.object?
   && TagFamily(Tclass._System.object?()) == tytagFamily$object;
}

revealed function Tclass._System.Tuple2(Ty, Ty) : Ty;

revealed function dtype(ref) : Ty;

revealed function TypeTuple(a: ClassName, b: ClassName) : ClassName;

revealed function TypeTupleCar(ClassName) : ClassName;

revealed function TypeTupleCdr(ClassName) : ClassName;

axiom (forall a: ClassName, b: ClassName :: 
  { TypeTuple(a, b) } 
  TypeTupleCar(TypeTuple(a, b)) == a && TypeTupleCdr(TypeTuple(a, b)) == b);

type HandleType;

revealed function SetRef_to_SetBox(s: [ref]bool) : Set;

axiom (forall s: [ref]bool, bx: Box :: 
  { Set#IsMember(SetRef_to_SetBox(s), bx) } 
  Set#IsMember(SetRef_to_SetBox(s), bx) == s[$Unbox(bx): ref]);

axiom (forall s: [ref]bool :: 
  { SetRef_to_SetBox(s) } 
  $Is(SetRef_to_SetBox(s), TSet(Tclass._System.object?())));

revealed function Apply1(Ty, Ty, Heap, HandleType, Box) : Box;

type DatatypeType;

type DtCtorId;

revealed function DatatypeCtorId(DatatypeType) : DtCtorId;

revealed function DtRank(DatatypeType) : int;

revealed function BoxRank(Box) : int;

axiom (forall d: DatatypeType :: { BoxRank($Box(d)) } BoxRank($Box(d)) == DtRank(d));

type ORDINAL = Box;

revealed function ORD#IsNat(ORDINAL) : bool;

revealed function ORD#Offset(ORDINAL) : int;

axiom (forall o: ORDINAL :: { ORD#Offset(o) } 0 <= ORD#Offset(o));

revealed function {:inline} ORD#IsLimit(o: ORDINAL) : bool
{
  ORD#Offset(o) == 0
}

revealed function {:inline} ORD#IsSucc(o: ORDINAL) : bool
{
  0 < ORD#Offset(o)
}

revealed function ORD#FromNat(int) : ORDINAL;

axiom (forall n: int :: 
  { ORD#FromNat(n) } 
  0 <= n ==> ORD#IsNat(ORD#FromNat(n)) && ORD#Offset(ORD#FromNat(n)) == n);

axiom (forall o: ORDINAL :: 
  { ORD#Offset(o) } { ORD#IsNat(o) } 
  ORD#IsNat(o) ==> o == ORD#FromNat(ORD#Offset(o)));

revealed function ORD#Less(ORDINAL, ORDINAL) : bool;

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#Less(o, p) } 
  (ORD#Less(o, p) ==> o != p)
     && (ORD#IsNat(o) && !ORD#IsNat(p) ==> ORD#Less(o, p))
     && (ORD#IsNat(o) && ORD#IsNat(p)
       ==> ORD#Less(o, p) == (ORD#Offset(o) < ORD#Offset(p)))
     && (ORD#Less(o, p) && ORD#IsNat(p) ==> ORD#IsNat(o)));

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#Less(o, p), ORD#Less(p, o) } 
  ORD#Less(o, p) || o == p || ORD#Less(p, o));

axiom (forall o: ORDINAL, p: ORDINAL, r: ORDINAL :: 
  { ORD#Less(o, p), ORD#Less(p, r) } { ORD#Less(o, p), ORD#Less(o, r) } 
  ORD#Less(o, p) && ORD#Less(p, r) ==> ORD#Less(o, r));

revealed function ORD#LessThanLimit(ORDINAL, ORDINAL) : bool;

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#LessThanLimit(o, p) } 
  ORD#LessThanLimit(o, p) == ORD#Less(o, p));

revealed function ORD#Plus(ORDINAL, ORDINAL) : ORDINAL;

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#Plus(o, p) } 
  (ORD#IsNat(ORD#Plus(o, p)) ==> ORD#IsNat(o) && ORD#IsNat(p))
     && (ORD#IsNat(p)
       ==> ORD#IsNat(ORD#Plus(o, p)) == ORD#IsNat(o)
         && ORD#Offset(ORD#Plus(o, p)) == ORD#Offset(o) + ORD#Offset(p)));

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#Plus(o, p) } 
  (o == ORD#Plus(o, p) || ORD#Less(o, ORD#Plus(o, p)))
     && (p == ORD#Plus(o, p) || ORD#Less(p, ORD#Plus(o, p))));

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#Plus(o, p) } 
  (o == ORD#FromNat(0) ==> ORD#Plus(o, p) == p)
     && (p == ORD#FromNat(0) ==> ORD#Plus(o, p) == o));

revealed function ORD#Minus(ORDINAL, ORDINAL) : ORDINAL;

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#Minus(o, p) } 
  ORD#IsNat(p) && ORD#Offset(p) <= ORD#Offset(o)
     ==> ORD#IsNat(ORD#Minus(o, p)) == ORD#IsNat(o)
       && ORD#Offset(ORD#Minus(o, p)) == ORD#Offset(o) - ORD#Offset(p));

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#Minus(o, p) } 
  ORD#IsNat(p) && ORD#Offset(p) <= ORD#Offset(o)
     ==> (p == ORD#FromNat(0) && ORD#Minus(o, p) == o)
       || (p != ORD#FromNat(0) && ORD#Less(ORD#Minus(o, p), o)));

axiom (forall o: ORDINAL, m: int, n: int :: 
  { ORD#Plus(ORD#Plus(o, ORD#FromNat(m)), ORD#FromNat(n)) } 
  0 <= m && 0 <= n
     ==> ORD#Plus(ORD#Plus(o, ORD#FromNat(m)), ORD#FromNat(n))
       == ORD#Plus(o, ORD#FromNat(m + n)));

axiom (forall o: ORDINAL, m: int, n: int :: 
  { ORD#Minus(ORD#Minus(o, ORD#FromNat(m)), ORD#FromNat(n)) } 
  0 <= m && 0 <= n && m + n <= ORD#Offset(o)
     ==> ORD#Minus(ORD#Minus(o, ORD#FromNat(m)), ORD#FromNat(n))
       == ORD#Minus(o, ORD#FromNat(m + n)));

axiom (forall o: ORDINAL, m: int, n: int :: 
  { ORD#Minus(ORD#Plus(o, ORD#FromNat(m)), ORD#FromNat(n)) } 
  0 <= m && 0 <= n && n <= ORD#Offset(o) + m
     ==> (0 <= m - n
         ==> ORD#Minus(ORD#Plus(o, ORD#FromNat(m)), ORD#FromNat(n))
           == ORD#Plus(o, ORD#FromNat(m - n)))
       && (m - n <= 0
         ==> ORD#Minus(ORD#Plus(o, ORD#FromNat(m)), ORD#FromNat(n))
           == ORD#Minus(o, ORD#FromNat(n - m))));

axiom (forall o: ORDINAL, m: int, n: int :: 
  { ORD#Plus(ORD#Minus(o, ORD#FromNat(m)), ORD#FromNat(n)) } 
  0 <= m && 0 <= n && n <= ORD#Offset(o) + m
     ==> (0 <= m - n
         ==> ORD#Plus(ORD#Minus(o, ORD#FromNat(m)), ORD#FromNat(n))
           == ORD#Minus(o, ORD#FromNat(m - n)))
       && (m - n <= 0
         ==> ORD#Plus(ORD#Minus(o, ORD#FromNat(m)), ORD#FromNat(n))
           == ORD#Plus(o, ORD#FromNat(n - m))));

const $ModuleContextHeight: int;

const $FunctionContextHeight: int;

type LayerType;

const $LZ: LayerType;

revealed function $LS(LayerType) : LayerType;

revealed function AsFuelBottom(LayerType) : LayerType;

revealed function AtLayer<A>([LayerType]A, LayerType) : A;

axiom (forall<A> f: [LayerType]A, ly: LayerType :: 
  { AtLayer(f, ly) } 
  AtLayer(f, ly) == f[ly]);

axiom (forall<A> f: [LayerType]A, ly: LayerType :: 
  { AtLayer(f, $LS(ly)) } 
  AtLayer(f, $LS(ly)) == AtLayer(f, ly));

type Field;

revealed function FDim(Field) : int
uses {
axiom FDim(alloc) == 0;
}

revealed function IndexField(int) : Field;

axiom (forall i: int :: { IndexField(i) } FDim(IndexField(i)) == 1);

revealed function IndexField_Inverse(Field) : int;

axiom (forall i: int :: { IndexField(i) } IndexField_Inverse(IndexField(i)) == i);

revealed function MultiIndexField(Field, int) : Field;

axiom (forall f: Field, i: int :: 
  { MultiIndexField(f, i) } 
  FDim(MultiIndexField(f, i)) == FDim(f) + 1);

revealed function MultiIndexField_Inverse0(Field) : Field;

revealed function MultiIndexField_Inverse1(Field) : int;

axiom (forall f: Field, i: int :: 
  { MultiIndexField(f, i) } 
  MultiIndexField_Inverse0(MultiIndexField(f, i)) == f
     && MultiIndexField_Inverse1(MultiIndexField(f, i)) == i);

revealed function DeclType(Field) : ClassName;

type NameFamily;

revealed function DeclName(Field) : NameFamily
uses {
axiom DeclName(alloc) == allocName;
}

revealed function FieldOfDecl(ClassName, NameFamily) : Field;

axiom (forall cl: ClassName, nm: NameFamily :: 
  { FieldOfDecl(cl, nm): Field } 
  DeclType(FieldOfDecl(cl, nm): Field) == cl
     && DeclName(FieldOfDecl(cl, nm): Field) == nm);

revealed function $IsGhostField(Field) : bool
uses {
axiom $IsGhostField(alloc);
}

axiom (forall h: Heap, k: Heap :: 
  { $HeapSuccGhost(h, k) } 
  $HeapSuccGhost(h, k)
     ==> $HeapSucc(h, k)
       && (forall o: ref, f: Field :: 
        { read(k, o, f) } 
        !$IsGhostField(f) ==> read(h, o, f) == read(k, o, f)));

axiom (forall<T> h: Heap, k: Heap, v: T, t: Ty :: 
  { $HeapSucc(h, k), $IsAlloc(v, t, h) } 
  $HeapSucc(h, k) ==> $IsAlloc(v, t, h) ==> $IsAlloc(v, t, k));

axiom (forall h: Heap, k: Heap, bx: Box, t: Ty :: 
  { $HeapSucc(h, k), $IsAllocBox(bx, t, h) } 
  $HeapSucc(h, k) ==> $IsAllocBox(bx, t, h) ==> $IsAllocBox(bx, t, k));

const unique alloc: Field;

const unique allocName: NameFamily;

revealed function _System.array.Length(a: ref) : int;

axiom (forall o: ref :: { _System.array.Length(o) } 0 <= _System.array.Length(o));

revealed function Int(x: real) : int
uses {
axiom (forall x: real :: { Int(x): int } Int(x): int == int(x));
}

revealed function Real(x: int) : real
uses {
axiom (forall x: int :: { Real(x): real } Real(x): real == real(x));
}

axiom (forall i: int :: { Int(Real(i)) } Int(Real(i)) == i);

revealed function {:inline} _System.real.Floor(x: real) : int
{
  Int(x)
}

type Heap = [ref][Field]Box;

revealed function {:inline} read(H: Heap, r: ref, f: Field) : Box
{
  H[r][f]
}

revealed function {:inline} update(H: Heap, r: ref, f: Field, v: Box) : Heap
{
  H[r := H[r][f := v]]
}

revealed function $IsGoodHeap(Heap) : bool;

revealed function $IsHeapAnchor(Heap) : bool;

var $Heap: Heap where $IsGoodHeap($Heap) && $IsHeapAnchor($Heap);

const $OneHeap: Heap
uses {
axiom $IsGoodHeap($OneHeap);
}

revealed function $HeapSucc(Heap, Heap) : bool;

axiom (forall h: Heap, r: ref, f: Field, x: Box :: 
  { update(h, r, f, x) } 
  $IsGoodHeap(update(h, r, f, x)) ==> $HeapSucc(h, update(h, r, f, x)));

axiom (forall a: Heap, b: Heap, c: Heap :: 
  { $HeapSucc(a, b), $HeapSucc(b, c) } 
  a != c ==> $HeapSucc(a, b) && $HeapSucc(b, c) ==> $HeapSucc(a, c));

axiom (forall h: Heap, k: Heap :: 
  { $HeapSucc(h, k) } 
  $HeapSucc(h, k)
     ==> (forall o: ref :: 
      { read(k, o, alloc) } 
      $Unbox(read(h, o, alloc)) ==> $Unbox(read(k, o, alloc))));

revealed function $HeapSuccGhost(Heap, Heap) : bool;

procedure $YieldHavoc(this: ref, rds: Set, nw: Set);
  modifies $Heap;
  ensures (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null && $Unbox(read(old($Heap), $o, alloc))
       ==> 
      $o == this || Set#IsMember(rds, $Box($o)) || Set#IsMember(nw, $Box($o))
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
  ensures $HeapSucc(old($Heap), $Heap);



procedure $IterHavoc0(this: ref, rds: Set, modi: Set);
  modifies $Heap;
  ensures (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null && $Unbox(read(old($Heap), $o, alloc))
       ==> 
      Set#IsMember(rds, $Box($o)) && !Set#IsMember(modi, $Box($o)) && $o != this
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
  ensures $HeapSucc(old($Heap), $Heap);



procedure $IterHavoc1(this: ref, modi: Set, nw: Set);
  modifies $Heap;
  ensures (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null && $Unbox(read(old($Heap), $o, alloc))
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)
         || $o == this
         || Set#IsMember(modi, $Box($o))
         || Set#IsMember(nw, $Box($o)));
  ensures $HeapSucc(old($Heap), $Heap);



procedure $IterCollectNewObjects(prevHeap: Heap, newHeap: Heap, this: ref, NW: Field) returns (s: Set);
  ensures (forall bx: Box :: 
    { Set#IsMember(s, bx) } 
    Set#IsMember(s, bx)
       <==> Set#IsMember($Unbox(read(newHeap, this, NW)): Set, bx)
         || (
          $Unbox(bx) != null
           && !$Unbox(read(prevHeap, $Unbox(bx): ref, alloc))
           && $Unbox(read(newHeap, $Unbox(bx): ref, alloc))));



type Set;

revealed function Set#Card(s: Set) : int;

axiom (forall s: Set :: { Set#Card(s) } 0 <= Set#Card(s));

revealed function Set#Empty() : Set;

revealed function Set#IsMember(s: Set, o: Box) : bool;

axiom (forall o: Box :: 
  { Set#IsMember(Set#Empty(), o) } 
  !Set#IsMember(Set#Empty(), o));

axiom (forall s: Set :: 
  { Set#Card(s) } 
  (Set#Card(s) == 0 <==> s == Set#Empty())
     && (Set#Card(s) != 0
       ==> (exists x: Box :: { Set#IsMember(s, x) } Set#IsMember(s, x))));

revealed function Set#UnionOne(s: Set, o: Box) : Set;

axiom (forall a: Set, x: Box, o: Box :: 
  { Set#IsMember(Set#UnionOne(a, x), o) } 
  Set#IsMember(Set#UnionOne(a, x), o) <==> o == x || Set#IsMember(a, o));

axiom (forall a: Set, x: Box :: 
  { Set#UnionOne(a, x) } 
  Set#IsMember(Set#UnionOne(a, x), x));

axiom (forall a: Set, x: Box, y: Box :: 
  { Set#UnionOne(a, x), Set#IsMember(a, y) } 
  Set#IsMember(a, y) ==> Set#IsMember(Set#UnionOne(a, x), y));

axiom (forall a: Set, x: Box :: 
  { Set#Card(Set#UnionOne(a, x)) } 
  Set#IsMember(a, x) ==> Set#Card(Set#UnionOne(a, x)) == Set#Card(a));

axiom (forall a: Set, x: Box :: 
  { Set#Card(Set#UnionOne(a, x)) } 
  !Set#IsMember(a, x) ==> Set#Card(Set#UnionOne(a, x)) == Set#Card(a) + 1);

revealed function Set#Union(a: Set, b: Set) : Set;

axiom (forall a: Set, b: Set, o: Box :: 
  { Set#IsMember(Set#Union(a, b), o) } 
  Set#IsMember(Set#Union(a, b), o) <==> Set#IsMember(a, o) || Set#IsMember(b, o));

axiom (forall a: Set, b: Set, y: Box :: 
  { Set#Union(a, b), Set#IsMember(a, y) } 
  Set#IsMember(a, y) ==> Set#IsMember(Set#Union(a, b), y));

axiom (forall a: Set, b: Set, y: Box :: 
  { Set#Union(a, b), Set#IsMember(b, y) } 
  Set#IsMember(b, y) ==> Set#IsMember(Set#Union(a, b), y));

axiom (forall a: Set, b: Set :: 
  { Set#Union(a, b) } 
  Set#Disjoint(a, b)
     ==> Set#Difference(Set#Union(a, b), a) == b
       && Set#Difference(Set#Union(a, b), b) == a);

revealed function Set#Intersection(a: Set, b: Set) : Set;

axiom (forall a: Set, b: Set, o: Box :: 
  { Set#IsMember(Set#Intersection(a, b), o) } 
  Set#IsMember(Set#Intersection(a, b), o)
     <==> Set#IsMember(a, o) && Set#IsMember(b, o));

axiom (forall a: Set, b: Set :: 
  { Set#Union(Set#Union(a, b), b) } 
  Set#Union(Set#Union(a, b), b) == Set#Union(a, b));

axiom (forall a: Set, b: Set :: 
  { Set#Union(a, Set#Union(a, b)) } 
  Set#Union(a, Set#Union(a, b)) == Set#Union(a, b));

axiom (forall a: Set, b: Set :: 
  { Set#Intersection(Set#Intersection(a, b), b) } 
  Set#Intersection(Set#Intersection(a, b), b) == Set#Intersection(a, b));

axiom (forall a: Set, b: Set :: 
  { Set#Intersection(a, Set#Intersection(a, b)) } 
  Set#Intersection(a, Set#Intersection(a, b)) == Set#Intersection(a, b));

axiom (forall a: Set, b: Set :: 
  { Set#Card(Set#Union(a, b)) } { Set#Card(Set#Intersection(a, b)) } 
  Set#Card(Set#Union(a, b)) + Set#Card(Set#Intersection(a, b))
     == Set#Card(a) + Set#Card(b));

revealed function Set#Difference(a: Set, b: Set) : Set;

axiom (forall a: Set, b: Set, o: Box :: 
  { Set#IsMember(Set#Difference(a, b), o) } 
  Set#IsMember(Set#Difference(a, b), o)
     <==> Set#IsMember(a, o) && !Set#IsMember(b, o));

axiom (forall a: Set, b: Set, y: Box :: 
  { Set#Difference(a, b), Set#IsMember(b, y) } 
  Set#IsMember(b, y) ==> !Set#IsMember(Set#Difference(a, b), y));

axiom (forall a: Set, b: Set :: 
  { Set#Card(Set#Difference(a, b)) } 
  Set#Card(Set#Difference(a, b))
         + Set#Card(Set#Difference(b, a))
         + Set#Card(Set#Intersection(a, b))
       == Set#Card(Set#Union(a, b))
     && Set#Card(Set#Difference(a, b)) == Set#Card(a) - Set#Card(Set#Intersection(a, b)));

revealed function Set#Subset(a: Set, b: Set) : bool;

axiom (forall a: Set, b: Set :: 
  { Set#Subset(a, b) } 
  Set#Subset(a, b)
     <==> (forall o: Box :: 
      { Set#IsMember(a, o) } { Set#IsMember(b, o) } 
      Set#IsMember(a, o) ==> Set#IsMember(b, o)));

revealed function Set#Equal(a: Set, b: Set) : bool;

axiom (forall a: Set, b: Set :: 
  { Set#Equal(a, b) } 
  Set#Equal(a, b)
     <==> (forall o: Box :: 
      { Set#IsMember(a, o) } { Set#IsMember(b, o) } 
      Set#IsMember(a, o) <==> Set#IsMember(b, o)));

axiom (forall a: Set, b: Set :: { Set#Equal(a, b) } Set#Equal(a, b) ==> a == b);

revealed function Set#Disjoint(a: Set, b: Set) : bool;

axiom (forall a: Set, b: Set :: 
  { Set#Disjoint(a, b) } 
  Set#Disjoint(a, b)
     <==> (forall o: Box :: 
      { Set#IsMember(a, o) } { Set#IsMember(b, o) } 
      !Set#IsMember(a, o) || !Set#IsMember(b, o)));

revealed function Set#FromBoogieMap([Box]bool) : Set;

axiom (forall m: [Box]bool, bx: Box :: 
  { Set#IsMember(Set#FromBoogieMap(m), bx) } 
  Set#IsMember(Set#FromBoogieMap(m), bx) == m[bx]);

type ISet = [Box]bool;

revealed function ISet#Empty() : ISet;

axiom (forall o: Box :: { ISet#Empty()[o] } !ISet#Empty()[o]);

revealed function ISet#FromSet(Set) : ISet;

axiom (forall s: Set, bx: Box :: 
  { ISet#FromSet(s)[bx] } 
  ISet#FromSet(s)[bx] == Set#IsMember(s, bx));

revealed function ISet#UnionOne(ISet, Box) : ISet;

axiom (forall a: ISet, x: Box, o: Box :: 
  { ISet#UnionOne(a, x)[o] } 
  ISet#UnionOne(a, x)[o] <==> o == x || a[o]);

axiom (forall a: ISet, x: Box :: { ISet#UnionOne(a, x) } ISet#UnionOne(a, x)[x]);

axiom (forall a: ISet, x: Box, y: Box :: 
  { ISet#UnionOne(a, x), a[y] } 
  a[y] ==> ISet#UnionOne(a, x)[y]);

revealed function ISet#Union(ISet, ISet) : ISet;

axiom (forall a: ISet, b: ISet, o: Box :: 
  { ISet#Union(a, b)[o] } 
  ISet#Union(a, b)[o] <==> a[o] || b[o]);

axiom (forall a: ISet, b: ISet, y: Box :: 
  { ISet#Union(a, b), a[y] } 
  a[y] ==> ISet#Union(a, b)[y]);

axiom (forall a: ISet, b: ISet, y: Box :: 
  { ISet#Union(a, b), b[y] } 
  b[y] ==> ISet#Union(a, b)[y]);

axiom (forall a: ISet, b: ISet :: 
  { ISet#Union(a, b) } 
  ISet#Disjoint(a, b)
     ==> ISet#Difference(ISet#Union(a, b), a) == b
       && ISet#Difference(ISet#Union(a, b), b) == a);

revealed function ISet#Intersection(ISet, ISet) : ISet;

axiom (forall a: ISet, b: ISet, o: Box :: 
  { ISet#Intersection(a, b)[o] } 
  ISet#Intersection(a, b)[o] <==> a[o] && b[o]);

axiom (forall a: ISet, b: ISet :: 
  { ISet#Union(ISet#Union(a, b), b) } 
  ISet#Union(ISet#Union(a, b), b) == ISet#Union(a, b));

axiom (forall a: ISet, b: ISet :: 
  { ISet#Union(a, ISet#Union(a, b)) } 
  ISet#Union(a, ISet#Union(a, b)) == ISet#Union(a, b));

axiom (forall a: ISet, b: ISet :: 
  { ISet#Intersection(ISet#Intersection(a, b), b) } 
  ISet#Intersection(ISet#Intersection(a, b), b) == ISet#Intersection(a, b));

axiom (forall a: ISet, b: ISet :: 
  { ISet#Intersection(a, ISet#Intersection(a, b)) } 
  ISet#Intersection(a, ISet#Intersection(a, b)) == ISet#Intersection(a, b));

revealed function ISet#Difference(ISet, ISet) : ISet;

axiom (forall a: ISet, b: ISet, o: Box :: 
  { ISet#Difference(a, b)[o] } 
  ISet#Difference(a, b)[o] <==> a[o] && !b[o]);

axiom (forall a: ISet, b: ISet, y: Box :: 
  { ISet#Difference(a, b), b[y] } 
  b[y] ==> !ISet#Difference(a, b)[y]);

revealed function ISet#Subset(ISet, ISet) : bool;

axiom (forall a: ISet, b: ISet :: 
  { ISet#Subset(a, b) } 
  ISet#Subset(a, b) <==> (forall o: Box :: { a[o] } { b[o] } a[o] ==> b[o]));

revealed function ISet#Equal(ISet, ISet) : bool;

axiom (forall a: ISet, b: ISet :: 
  { ISet#Equal(a, b) } 
  ISet#Equal(a, b) <==> (forall o: Box :: { a[o] } { b[o] } a[o] <==> b[o]));

axiom (forall a: ISet, b: ISet :: { ISet#Equal(a, b) } ISet#Equal(a, b) ==> a == b);

revealed function ISet#Disjoint(ISet, ISet) : bool;

axiom (forall a: ISet, b: ISet :: 
  { ISet#Disjoint(a, b) } 
  ISet#Disjoint(a, b) <==> (forall o: Box :: { a[o] } { b[o] } !a[o] || !b[o]));

revealed function Math#min(a: int, b: int) : int;

axiom (forall a: int, b: int :: { Math#min(a, b) } a <= b <==> Math#min(a, b) == a);

axiom (forall a: int, b: int :: { Math#min(a, b) } b <= a <==> Math#min(a, b) == b);

axiom (forall a: int, b: int :: 
  { Math#min(a, b) } 
  Math#min(a, b) == a || Math#min(a, b) == b);

revealed function Math#clip(a: int) : int;

axiom (forall a: int :: { Math#clip(a) } 0 <= a ==> Math#clip(a) == a);

axiom (forall a: int :: { Math#clip(a) } a < 0 ==> Math#clip(a) == 0);

type MultiSet;

revealed function MultiSet#Multiplicity(m: MultiSet, o: Box) : int;

revealed function MultiSet#UpdateMultiplicity(m: MultiSet, o: Box, n: int) : MultiSet;

axiom (forall m: MultiSet, o: Box, n: int, p: Box :: 
  { MultiSet#Multiplicity(MultiSet#UpdateMultiplicity(m, o, n), p) } 
  0 <= n
     ==> (o == p ==> MultiSet#Multiplicity(MultiSet#UpdateMultiplicity(m, o, n), p) == n)
       && (o != p
         ==> MultiSet#Multiplicity(MultiSet#UpdateMultiplicity(m, o, n), p)
           == MultiSet#Multiplicity(m, p)));

revealed function $IsGoodMultiSet(ms: MultiSet) : bool;

axiom (forall ms: MultiSet :: 
  { $IsGoodMultiSet(ms) } 
  $IsGoodMultiSet(ms)
     <==> (forall bx: Box :: 
      { MultiSet#Multiplicity(ms, bx) } 
      0 <= MultiSet#Multiplicity(ms, bx)
         && MultiSet#Multiplicity(ms, bx) <= MultiSet#Card(ms)));

revealed function MultiSet#Card(m: MultiSet) : int;

axiom (forall s: MultiSet :: { MultiSet#Card(s) } 0 <= MultiSet#Card(s));

axiom (forall s: MultiSet, x: Box, n: int :: 
  { MultiSet#Card(MultiSet#UpdateMultiplicity(s, x, n)) } 
  0 <= n
     ==> MultiSet#Card(MultiSet#UpdateMultiplicity(s, x, n))
       == MultiSet#Card(s) - MultiSet#Multiplicity(s, x) + n);

revealed function MultiSet#Empty() : MultiSet;

axiom (forall o: Box :: 
  { MultiSet#Multiplicity(MultiSet#Empty(), o) } 
  MultiSet#Multiplicity(MultiSet#Empty(), o) == 0);

axiom (forall s: MultiSet :: 
  { MultiSet#Card(s) } 
  (MultiSet#Card(s) == 0 <==> s == MultiSet#Empty())
     && (MultiSet#Card(s) != 0
       ==> (exists x: Box :: 
        { MultiSet#Multiplicity(s, x) } 
        0 < MultiSet#Multiplicity(s, x))));

revealed function MultiSet#Singleton(o: Box) : MultiSet;

axiom (forall r: Box, o: Box :: 
  { MultiSet#Multiplicity(MultiSet#Singleton(r), o) } 
  (MultiSet#Multiplicity(MultiSet#Singleton(r), o) == 1 <==> r == o)
     && (MultiSet#Multiplicity(MultiSet#Singleton(r), o) == 0 <==> r != o));

axiom (forall r: Box :: 
  { MultiSet#Singleton(r) } 
  MultiSet#Singleton(r) == MultiSet#UnionOne(MultiSet#Empty(), r));

revealed function MultiSet#UnionOne(m: MultiSet, o: Box) : MultiSet;

axiom (forall a: MultiSet, x: Box, o: Box :: 
  { MultiSet#Multiplicity(MultiSet#UnionOne(a, x), o) } 
  0 < MultiSet#Multiplicity(MultiSet#UnionOne(a, x), o)
     <==> o == x || 0 < MultiSet#Multiplicity(a, o));

axiom (forall a: MultiSet, x: Box :: 
  { MultiSet#UnionOne(a, x) } 
  MultiSet#Multiplicity(MultiSet#UnionOne(a, x), x)
     == MultiSet#Multiplicity(a, x) + 1);

axiom (forall a: MultiSet, x: Box, y: Box :: 
  { MultiSet#UnionOne(a, x), MultiSet#Multiplicity(a, y) } 
  0 < MultiSet#Multiplicity(a, y)
     ==> 0 < MultiSet#Multiplicity(MultiSet#UnionOne(a, x), y));

axiom (forall a: MultiSet, x: Box, y: Box :: 
  { MultiSet#UnionOne(a, x), MultiSet#Multiplicity(a, y) } 
  x != y
     ==> MultiSet#Multiplicity(a, y) == MultiSet#Multiplicity(MultiSet#UnionOne(a, x), y));

axiom (forall a: MultiSet, x: Box :: 
  { MultiSet#Card(MultiSet#UnionOne(a, x)) } 
  MultiSet#Card(MultiSet#UnionOne(a, x)) == MultiSet#Card(a) + 1);

revealed function MultiSet#Union(a: MultiSet, b: MultiSet) : MultiSet;

axiom (forall a: MultiSet, b: MultiSet, o: Box :: 
  { MultiSet#Multiplicity(MultiSet#Union(a, b), o) } 
  MultiSet#Multiplicity(MultiSet#Union(a, b), o)
     == MultiSet#Multiplicity(a, o) + MultiSet#Multiplicity(b, o));

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Card(MultiSet#Union(a, b)) } 
  MultiSet#Card(MultiSet#Union(a, b)) == MultiSet#Card(a) + MultiSet#Card(b));

revealed function MultiSet#Intersection(a: MultiSet, b: MultiSet) : MultiSet;

axiom (forall a: MultiSet, b: MultiSet, o: Box :: 
  { MultiSet#Multiplicity(MultiSet#Intersection(a, b), o) } 
  MultiSet#Multiplicity(MultiSet#Intersection(a, b), o)
     == Math#min(MultiSet#Multiplicity(a, o), MultiSet#Multiplicity(b, o)));

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Intersection(MultiSet#Intersection(a, b), b) } 
  MultiSet#Intersection(MultiSet#Intersection(a, b), b)
     == MultiSet#Intersection(a, b));

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Intersection(a, MultiSet#Intersection(a, b)) } 
  MultiSet#Intersection(a, MultiSet#Intersection(a, b))
     == MultiSet#Intersection(a, b));

revealed function MultiSet#Difference(a: MultiSet, b: MultiSet) : MultiSet;

axiom (forall a: MultiSet, b: MultiSet, o: Box :: 
  { MultiSet#Multiplicity(MultiSet#Difference(a, b), o) } 
  MultiSet#Multiplicity(MultiSet#Difference(a, b), o)
     == Math#clip(MultiSet#Multiplicity(a, o) - MultiSet#Multiplicity(b, o)));

axiom (forall a: MultiSet, b: MultiSet, y: Box :: 
  { MultiSet#Difference(a, b), MultiSet#Multiplicity(b, y), MultiSet#Multiplicity(a, y) } 
  MultiSet#Multiplicity(a, y) <= MultiSet#Multiplicity(b, y)
     ==> MultiSet#Multiplicity(MultiSet#Difference(a, b), y) == 0);

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Card(MultiSet#Difference(a, b)) } 
  MultiSet#Card(MultiSet#Difference(a, b))
         + MultiSet#Card(MultiSet#Difference(b, a))
         + 2 * MultiSet#Card(MultiSet#Intersection(a, b))
       == MultiSet#Card(MultiSet#Union(a, b))
     && MultiSet#Card(MultiSet#Difference(a, b))
       == MultiSet#Card(a) - MultiSet#Card(MultiSet#Intersection(a, b)));

revealed function MultiSet#Subset(a: MultiSet, b: MultiSet) : bool;

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Subset(a, b) } 
  MultiSet#Subset(a, b)
     <==> (forall o: Box :: 
      { MultiSet#Multiplicity(a, o) } { MultiSet#Multiplicity(b, o) } 
      MultiSet#Multiplicity(a, o) <= MultiSet#Multiplicity(b, o)));

revealed function MultiSet#Equal(a: MultiSet, b: MultiSet) : bool;

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Equal(a, b) } 
  MultiSet#Equal(a, b)
     <==> (forall o: Box :: 
      { MultiSet#Multiplicity(a, o) } { MultiSet#Multiplicity(b, o) } 
      MultiSet#Multiplicity(a, o) == MultiSet#Multiplicity(b, o)));

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Equal(a, b) } 
  MultiSet#Equal(a, b) ==> a == b);

revealed function MultiSet#Disjoint(a: MultiSet, b: MultiSet) : bool;

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Disjoint(a, b) } 
  MultiSet#Disjoint(a, b)
     <==> (forall o: Box :: 
      { MultiSet#Multiplicity(a, o) } { MultiSet#Multiplicity(b, o) } 
      MultiSet#Multiplicity(a, o) == 0 || MultiSet#Multiplicity(b, o) == 0));

revealed function MultiSet#FromSet(s: Set) : MultiSet;

axiom (forall s: Set, a: Box :: 
  { MultiSet#Multiplicity(MultiSet#FromSet(s), a) } 
  (MultiSet#Multiplicity(MultiSet#FromSet(s), a) == 0 <==> !Set#IsMember(s, a))
     && (MultiSet#Multiplicity(MultiSet#FromSet(s), a) == 1 <==> Set#IsMember(s, a)));

axiom (forall s: Set :: 
  { MultiSet#Card(MultiSet#FromSet(s)) } 
  MultiSet#Card(MultiSet#FromSet(s)) == Set#Card(s));

revealed function MultiSet#FromSeq(s: Seq) : MultiSet
uses {
axiom MultiSet#FromSeq(Seq#Empty()) == MultiSet#Empty();
}

axiom (forall s: Seq :: { MultiSet#FromSeq(s) } $IsGoodMultiSet(MultiSet#FromSeq(s)));

axiom (forall s: Seq :: 
  { MultiSet#Card(MultiSet#FromSeq(s)) } 
  MultiSet#Card(MultiSet#FromSeq(s)) == Seq#Length(s));

axiom (forall s: Seq, v: Box :: 
  { MultiSet#FromSeq(Seq#Build(s, v)) } 
  MultiSet#FromSeq(Seq#Build(s, v)) == MultiSet#UnionOne(MultiSet#FromSeq(s), v));

axiom (forall a: Seq, b: Seq :: 
  { MultiSet#FromSeq(Seq#Append(a, b)) } 
  MultiSet#FromSeq(Seq#Append(a, b))
     == MultiSet#Union(MultiSet#FromSeq(a), MultiSet#FromSeq(b)));

axiom (forall s: Seq, i: int, v: Box, x: Box :: 
  { MultiSet#Multiplicity(MultiSet#FromSeq(Seq#Update(s, i, v)), x) } 
  0 <= i && i < Seq#Length(s)
     ==> MultiSet#Multiplicity(MultiSet#FromSeq(Seq#Update(s, i, v)), x)
       == MultiSet#Multiplicity(MultiSet#Union(MultiSet#Difference(MultiSet#FromSeq(s), MultiSet#Singleton(Seq#Index(s, i))), 
          MultiSet#Singleton(v)), 
        x));

axiom (forall s: Seq, x: Box :: 
  { MultiSet#Multiplicity(MultiSet#FromSeq(s), x) } 
  (exists i: int :: 
      { Seq#Index(s, i) } 
      0 <= i && i < Seq#Length(s) && x == Seq#Index(s, i))
     <==> 0 < MultiSet#Multiplicity(MultiSet#FromSeq(s), x));

type Seq;

revealed function Seq#Length(s: Seq) : int;

axiom (forall s: Seq :: { Seq#Length(s) } 0 <= Seq#Length(s));

revealed function Seq#Empty() : Seq
uses {
axiom Seq#Length(Seq#Empty()) == 0;
}

axiom (forall s: Seq :: { Seq#Length(s) } Seq#Length(s) == 0 ==> s == Seq#Empty());

revealed function Seq#Build(s: Seq, val: Box) : Seq;

revealed function Seq#Build_inv0(s: Seq) : Seq;

revealed function Seq#Build_inv1(s: Seq) : Box;

axiom (forall s: Seq, val: Box :: 
  { Seq#Build(s, val) } 
  Seq#Build_inv0(Seq#Build(s, val)) == s
     && Seq#Build_inv1(Seq#Build(s, val)) == val);

axiom (forall s: Seq, v: Box :: 
  { Seq#Build(s, v) } 
  Seq#Length(Seq#Build(s, v)) == 1 + Seq#Length(s));

axiom (forall s: Seq, i: int, v: Box :: 
  { Seq#Index(Seq#Build(s, v), i) } 
  (i == Seq#Length(s) ==> Seq#Index(Seq#Build(s, v), i) == v)
     && (i != Seq#Length(s) ==> Seq#Index(Seq#Build(s, v), i) == Seq#Index(s, i)));

axiom (forall s0: Seq, s1: Seq :: 
  { Seq#Length(Seq#Append(s0, s1)) } 
  Seq#Length(Seq#Append(s0, s1)) == Seq#Length(s0) + Seq#Length(s1));

revealed function Seq#Index(s: Seq, i: int) : Box;

axiom (forall s0: Seq, s1: Seq, n: int :: 
  { Seq#Index(Seq#Append(s0, s1), n) } 
  (n < Seq#Length(s0) ==> Seq#Index(Seq#Append(s0, s1), n) == Seq#Index(s0, n))
     && (Seq#Length(s0) <= n
       ==> Seq#Index(Seq#Append(s0, s1), n) == Seq#Index(s1, n - Seq#Length(s0))));

revealed function Seq#Update(s: Seq, i: int, val: Box) : Seq;

axiom (forall s: Seq, i: int, v: Box :: 
  { Seq#Length(Seq#Update(s, i, v)) } 
  0 <= i && i < Seq#Length(s) ==> Seq#Length(Seq#Update(s, i, v)) == Seq#Length(s));

axiom (forall s: Seq, i: int, v: Box, n: int :: 
  { Seq#Index(Seq#Update(s, i, v), n) } 
  0 <= n && n < Seq#Length(s)
     ==> (i == n ==> Seq#Index(Seq#Update(s, i, v), n) == v)
       && (i != n ==> Seq#Index(Seq#Update(s, i, v), n) == Seq#Index(s, n)));

revealed function Seq#Append(s0: Seq, s1: Seq) : Seq;

revealed function Seq#Contains(s: Seq, val: Box) : bool;

axiom (forall s: Seq, x: Box :: 
  { Seq#Contains(s, x) } 
  Seq#Contains(s, x)
     <==> (exists i: int :: 
      { Seq#Index(s, i) } 
      0 <= i && i < Seq#Length(s) && Seq#Index(s, i) == x));

axiom (forall x: Box :: 
  { Seq#Contains(Seq#Empty(), x) } 
  !Seq#Contains(Seq#Empty(), x));

axiom (forall s0: Seq, s1: Seq, x: Box :: 
  { Seq#Contains(Seq#Append(s0, s1), x) } 
  Seq#Contains(Seq#Append(s0, s1), x)
     <==> Seq#Contains(s0, x) || Seq#Contains(s1, x));

axiom (forall s: Seq, v: Box, x: Box :: 
  { Seq#Contains(Seq#Build(s, v), x) } 
  Seq#Contains(Seq#Build(s, v), x) <==> v == x || Seq#Contains(s, x));

axiom (forall s: Seq, n: int, x: Box :: 
  { Seq#Contains(Seq#Take(s, n), x) } 
  Seq#Contains(Seq#Take(s, n), x)
     <==> (exists i: int :: 
      { Seq#Index(s, i) } 
      0 <= i && i < n && i < Seq#Length(s) && Seq#Index(s, i) == x));

axiom (forall s: Seq, n: int, x: Box :: 
  { Seq#Contains(Seq#Drop(s, n), x) } 
  Seq#Contains(Seq#Drop(s, n), x)
     <==> (exists i: int :: 
      { Seq#Index(s, i) } 
      0 <= n && n <= i && i < Seq#Length(s) && Seq#Index(s, i) == x));

revealed function Seq#Equal(s0: Seq, s1: Seq) : bool;

axiom (forall s0: Seq, s1: Seq :: 
  { Seq#Equal(s0, s1) } 
  Seq#Equal(s0, s1)
     <==> Seq#Length(s0) == Seq#Length(s1)
       && (forall j: int :: 
        { Seq#Index(s0, j) } { Seq#Index(s1, j) } 
        0 <= j && j < Seq#Length(s0) ==> Seq#Index(s0, j) == Seq#Index(s1, j)));

axiom (forall a: Seq, b: Seq :: { Seq#Equal(a, b) } Seq#Equal(a, b) ==> a == b);

revealed function Seq#SameUntil(s0: Seq, s1: Seq, n: int) : bool;

axiom (forall s0: Seq, s1: Seq, n: int :: 
  { Seq#SameUntil(s0, s1, n) } 
  Seq#SameUntil(s0, s1, n)
     <==> (forall j: int :: 
      { Seq#Index(s0, j) } { Seq#Index(s1, j) } 
      0 <= j && j < n ==> Seq#Index(s0, j) == Seq#Index(s1, j)));

revealed function Seq#Take(s: Seq, howMany: int) : Seq;

axiom (forall s: Seq, n: int :: 
  { Seq#Length(Seq#Take(s, n)) } 
  0 <= n && n <= Seq#Length(s) ==> Seq#Length(Seq#Take(s, n)) == n);

axiom (forall s: Seq, n: int, j: int :: 
  {:weight 25} { Seq#Index(Seq#Take(s, n), j) } { Seq#Index(s, j), Seq#Take(s, n) } 
  0 <= j && j < n && j < Seq#Length(s)
     ==> Seq#Index(Seq#Take(s, n), j) == Seq#Index(s, j));

revealed function Seq#Drop(s: Seq, howMany: int) : Seq;

axiom (forall s: Seq, n: int :: 
  { Seq#Length(Seq#Drop(s, n)) } 
  0 <= n && n <= Seq#Length(s) ==> Seq#Length(Seq#Drop(s, n)) == Seq#Length(s) - n);

axiom (forall s: Seq, n: int, j: int :: 
  {:weight 25} { Seq#Index(Seq#Drop(s, n), j) } 
  0 <= n && 0 <= j && j < Seq#Length(s) - n
     ==> Seq#Index(Seq#Drop(s, n), j) == Seq#Index(s, j + n));

axiom (forall s: Seq, n: int, k: int :: 
  {:weight 25} { Seq#Index(s, k), Seq#Drop(s, n) } 
  0 <= n && n <= k && k < Seq#Length(s)
     ==> Seq#Index(Seq#Drop(s, n), k - n) == Seq#Index(s, k));

axiom (forall s: Seq, t: Seq, n: int :: 
  { Seq#Take(Seq#Append(s, t), n) } { Seq#Drop(Seq#Append(s, t), n) } 
  n == Seq#Length(s)
     ==> Seq#Take(Seq#Append(s, t), n) == s && Seq#Drop(Seq#Append(s, t), n) == t);

axiom (forall s: Seq, i: int, v: Box, n: int :: 
  { Seq#Take(Seq#Update(s, i, v), n) } 
  0 <= i && i < n && n <= Seq#Length(s)
     ==> Seq#Take(Seq#Update(s, i, v), n) == Seq#Update(Seq#Take(s, n), i, v));

axiom (forall s: Seq, i: int, v: Box, n: int :: 
  { Seq#Take(Seq#Update(s, i, v), n) } 
  n <= i && i < Seq#Length(s)
     ==> Seq#Take(Seq#Update(s, i, v), n) == Seq#Take(s, n));

axiom (forall s: Seq, i: int, v: Box, n: int :: 
  { Seq#Drop(Seq#Update(s, i, v), n) } 
  0 <= n && n <= i && i < Seq#Length(s)
     ==> Seq#Drop(Seq#Update(s, i, v), n) == Seq#Update(Seq#Drop(s, n), i - n, v));

axiom (forall s: Seq, i: int, v: Box, n: int :: 
  { Seq#Drop(Seq#Update(s, i, v), n) } 
  0 <= i && i < n && n <= Seq#Length(s)
     ==> Seq#Drop(Seq#Update(s, i, v), n) == Seq#Drop(s, n));

axiom (forall s: Seq, v: Box, n: int :: 
  { Seq#Drop(Seq#Build(s, v), n) } 
  0 <= n && n <= Seq#Length(s)
     ==> Seq#Drop(Seq#Build(s, v), n) == Seq#Build(Seq#Drop(s, n), v));

axiom (forall s: Seq, n: int :: { Seq#Drop(s, n) } n == 0 ==> Seq#Drop(s, n) == s);

axiom (forall s: Seq, n: int :: 
  { Seq#Take(s, n) } 
  n == 0 ==> Seq#Take(s, n) == Seq#Empty());

axiom (forall s: Seq, m: int, n: int :: 
  { Seq#Drop(Seq#Drop(s, m), n) } 
  0 <= m && 0 <= n && m + n <= Seq#Length(s)
     ==> Seq#Drop(Seq#Drop(s, m), n) == Seq#Drop(s, m + n));

axiom (forall s: Seq, bx: Box, t: Ty :: 
  { $Is(Seq#Build(s, bx), TSeq(t)) } 
  $Is(s, TSeq(t)) && $IsBox(bx, t) ==> $Is(Seq#Build(s, bx), TSeq(t)));

revealed function Seq#Create(ty: Ty, heap: Heap, len: int, init: HandleType) : Seq;

axiom (forall ty: Ty, heap: Heap, len: int, init: HandleType :: 
  { Seq#Length(Seq#Create(ty, heap, len, init): Seq) } 
  $IsGoodHeap(heap) && 0 <= len
     ==> Seq#Length(Seq#Create(ty, heap, len, init): Seq) == len);

axiom (forall ty: Ty, heap: Heap, len: int, init: HandleType, i: int :: 
  { Seq#Index(Seq#Create(ty, heap, len, init), i) } 
  $IsGoodHeap(heap) && 0 <= i && i < len
     ==> Seq#Index(Seq#Create(ty, heap, len, init), i)
       == Apply1(TInt, ty, heap, init, $Box(i)));

revealed function Seq#FromArray(h: Heap, a: ref) : Seq;

axiom (forall h: Heap, a: ref :: 
  { Seq#Length(Seq#FromArray(h, a)) } 
  Seq#Length(Seq#FromArray(h, a)) == _System.array.Length(a));

axiom (forall h: Heap, a: ref :: 
  { Seq#FromArray(h, a) } 
  (forall i: int :: 
    { read(h, a, IndexField(i)) } { Seq#Index(Seq#FromArray(h, a): Seq, i) } 
    0 <= i && i < Seq#Length(Seq#FromArray(h, a))
       ==> Seq#Index(Seq#FromArray(h, a), i) == read(h, a, IndexField(i))));

axiom (forall h0: Heap, h1: Heap, a: ref :: 
  { Seq#FromArray(h1, a), $HeapSucc(h0, h1) } 
  $IsGoodHeap(h0) && $IsGoodHeap(h1) && $HeapSucc(h0, h1) && h0[a] == h1[a]
     ==> Seq#FromArray(h0, a) == Seq#FromArray(h1, a));

axiom (forall h: Heap, i: int, v: Box, a: ref :: 
  { Seq#FromArray(update(h, a, IndexField(i), v), a) } 
  0 <= i && i < _System.array.Length(a)
     ==> Seq#FromArray(update(h, a, IndexField(i), v), a)
       == Seq#Update(Seq#FromArray(h, a), i, v));

axiom (forall h: Heap, a: ref, n0: int, n1: int :: 
  { Seq#Take(Seq#FromArray(h, a), n0), Seq#Take(Seq#FromArray(h, a), n1) } 
  n0 + 1 == n1 && 0 <= n0 && n1 <= _System.array.Length(a)
     ==> Seq#Take(Seq#FromArray(h, a), n1)
       == Seq#Build(Seq#Take(Seq#FromArray(h, a), n0), read(h, a, IndexField(n0): Field)));

revealed function Seq#Rank(Seq) : int;

axiom (forall s: Seq, i: int :: 
  { DtRank($Unbox(Seq#Index(s, i)): DatatypeType) } 
  0 <= i && i < Seq#Length(s)
     ==> DtRank($Unbox(Seq#Index(s, i)): DatatypeType) < Seq#Rank(s));

axiom (forall s: Seq, i: int :: 
  { Seq#Rank(Seq#Drop(s, i)) } 
  0 < i && i <= Seq#Length(s) ==> Seq#Rank(Seq#Drop(s, i)) < Seq#Rank(s));

axiom (forall s: Seq, i: int :: 
  { Seq#Rank(Seq#Take(s, i)) } 
  0 <= i && i < Seq#Length(s) ==> Seq#Rank(Seq#Take(s, i)) < Seq#Rank(s));

axiom (forall s: Seq, i: int, j: int :: 
  { Seq#Rank(Seq#Append(Seq#Take(s, i), Seq#Drop(s, j))) } 
  0 <= i && i < j && j <= Seq#Length(s)
     ==> Seq#Rank(Seq#Append(Seq#Take(s, i), Seq#Drop(s, j))) < Seq#Rank(s));

type Map;

revealed function Map#Domain(Map) : Set;

revealed function Map#Elements(Map) : [Box]Box;

revealed function Map#Card(Map) : int;

axiom (forall m: Map :: { Map#Card(m) } 0 <= Map#Card(m));

axiom (forall m: Map :: { Map#Card(m) } Map#Card(m) == 0 <==> m == Map#Empty());

axiom (forall m: Map :: 
  { Map#Domain(m) } 
  m == Map#Empty() || (exists k: Box :: Set#IsMember(Map#Domain(m), k)));

axiom (forall m: Map :: 
  { Map#Values(m) } 
  m == Map#Empty() || (exists v: Box :: Set#IsMember(Map#Values(m), v)));

axiom (forall m: Map :: 
  { Map#Items(m) } 
  m == Map#Empty()
     || (exists k: Box, v: Box :: 
      Set#IsMember(Map#Items(m), $Box(#_System._tuple#2._#Make2(k, v)))));

axiom (forall m: Map :: 
  { Set#Card(Map#Domain(m)) } { Map#Card(m) } 
  Set#Card(Map#Domain(m)) == Map#Card(m));

axiom (forall m: Map :: 
  { Set#Card(Map#Values(m)) } { Map#Card(m) } 
  Set#Card(Map#Values(m)) <= Map#Card(m));

axiom (forall m: Map :: 
  { Set#Card(Map#Items(m)) } { Map#Card(m) } 
  Set#Card(Map#Items(m)) == Map#Card(m));

revealed function Map#Values(Map) : Set;

axiom (forall m: Map, v: Box :: 
  { Set#IsMember(Map#Values(m), v) } 
  Set#IsMember(Map#Values(m), v)
     == (exists u: Box :: 
      { Set#IsMember(Map#Domain(m), u) } { Map#Elements(m)[u] } 
      Set#IsMember(Map#Domain(m), u) && v == Map#Elements(m)[u]));

revealed function Map#Items(Map) : Set;

revealed function #_System._tuple#2._#Make2(Box, Box) : DatatypeType;

revealed function _System.Tuple2._0(DatatypeType) : Box;

revealed function _System.Tuple2._1(DatatypeType) : Box;

axiom (forall m: Map, item: Box :: 
  { Set#IsMember(Map#Items(m), item) } 
  Set#IsMember(Map#Items(m), item)
     <==> Set#IsMember(Map#Domain(m), _System.Tuple2._0($Unbox(item)))
       && Map#Elements(m)[_System.Tuple2._0($Unbox(item))]
         == _System.Tuple2._1($Unbox(item)));

revealed function Map#Empty() : Map;

axiom (forall u: Box :: 
  { Set#IsMember(Map#Domain(Map#Empty(): Map), u) } 
  !Set#IsMember(Map#Domain(Map#Empty(): Map), u));

revealed function Map#Glue(Set, [Box]Box, Ty) : Map;

axiom (forall a: Set, b: [Box]Box, t: Ty :: 
  { Map#Domain(Map#Glue(a, b, t)) } 
  Map#Domain(Map#Glue(a, b, t)) == a);

axiom (forall a: Set, b: [Box]Box, t: Ty :: 
  { Map#Elements(Map#Glue(a, b, t)) } 
  Map#Elements(Map#Glue(a, b, t)) == b);

axiom (forall a: Set, b: [Box]Box, t0: Ty, t1: Ty :: 
  { Map#Glue(a, b, TMap(t0, t1)) } 
  (forall bx: Box :: Set#IsMember(a, bx) ==> $IsBox(bx, t0) && $IsBox(b[bx], t1))
     ==> $Is(Map#Glue(a, b, TMap(t0, t1)), TMap(t0, t1)));

revealed function Map#Build(Map, Box, Box) : Map;

axiom (forall m: Map, u: Box, u': Box, v: Box :: 
  { Set#IsMember(Map#Domain(Map#Build(m, u, v)), u') } 
    { Map#Elements(Map#Build(m, u, v))[u'] } 
  (u' == u
       ==> Set#IsMember(Map#Domain(Map#Build(m, u, v)), u')
         && Map#Elements(Map#Build(m, u, v))[u'] == v)
     && (u' != u
       ==> Set#IsMember(Map#Domain(Map#Build(m, u, v)), u')
           == Set#IsMember(Map#Domain(m), u')
         && Map#Elements(Map#Build(m, u, v))[u'] == Map#Elements(m)[u']));

axiom (forall m: Map, u: Box, v: Box :: 
  { Map#Card(Map#Build(m, u, v)) } 
  Set#IsMember(Map#Domain(m), u) ==> Map#Card(Map#Build(m, u, v)) == Map#Card(m));

axiom (forall m: Map, u: Box, v: Box :: 
  { Map#Card(Map#Build(m, u, v)) } 
  !Set#IsMember(Map#Domain(m), u)
     ==> Map#Card(Map#Build(m, u, v)) == Map#Card(m) + 1);

revealed function Map#Merge(Map, Map) : Map;

axiom (forall m: Map, n: Map :: 
  { Map#Domain(Map#Merge(m, n)) } 
  Map#Domain(Map#Merge(m, n)) == Set#Union(Map#Domain(m), Map#Domain(n)));

axiom (forall m: Map, n: Map, u: Box :: 
  { Map#Elements(Map#Merge(m, n))[u] } 
  Set#IsMember(Map#Domain(Map#Merge(m, n)), u)
     ==> (!Set#IsMember(Map#Domain(n), u)
         ==> Map#Elements(Map#Merge(m, n))[u] == Map#Elements(m)[u])
       && (Set#IsMember(Map#Domain(n), u)
         ==> Map#Elements(Map#Merge(m, n))[u] == Map#Elements(n)[u]));

revealed function Map#Subtract(Map, Set) : Map;

axiom (forall m: Map, s: Set :: 
  { Map#Domain(Map#Subtract(m, s)) } 
  Map#Domain(Map#Subtract(m, s)) == Set#Difference(Map#Domain(m), s));

axiom (forall m: Map, s: Set, u: Box :: 
  { Map#Elements(Map#Subtract(m, s))[u] } 
  Set#IsMember(Map#Domain(Map#Subtract(m, s)), u)
     ==> Map#Elements(Map#Subtract(m, s))[u] == Map#Elements(m)[u]);

revealed function Map#Equal(Map, Map) : bool;

axiom (forall m: Map, m': Map :: 
  { Map#Equal(m, m') } 
  Map#Equal(m, m')
     <==> (forall u: Box :: 
        Set#IsMember(Map#Domain(m), u) == Set#IsMember(Map#Domain(m'), u))
       && (forall u: Box :: 
        Set#IsMember(Map#Domain(m), u) ==> Map#Elements(m)[u] == Map#Elements(m')[u]));

axiom (forall m: Map, m': Map :: { Map#Equal(m, m') } Map#Equal(m, m') ==> m == m');

revealed function Map#Disjoint(Map, Map) : bool;

axiom (forall m: Map, m': Map :: 
  { Map#Disjoint(m, m') } 
  Map#Disjoint(m, m')
     <==> (forall o: Box :: 
      { Set#IsMember(Map#Domain(m), o) } { Set#IsMember(Map#Domain(m'), o) } 
      !Set#IsMember(Map#Domain(m), o) || !Set#IsMember(Map#Domain(m'), o)));

type IMap;

revealed function IMap#Domain(IMap) : ISet;

revealed function IMap#Elements(IMap) : [Box]Box;

axiom (forall m: IMap :: 
  { IMap#Domain(m) } 
  m == IMap#Empty() || (exists k: Box :: IMap#Domain(m)[k]));

axiom (forall m: IMap :: 
  { IMap#Values(m) } 
  m == IMap#Empty() || (exists v: Box :: IMap#Values(m)[v]));

axiom (forall m: IMap :: 
  { IMap#Items(m) } 
  m == IMap#Empty()
     || (exists k: Box, v: Box :: IMap#Items(m)[$Box(#_System._tuple#2._#Make2(k, v))]));

axiom (forall m: IMap :: 
  { IMap#Domain(m) } 
  m == IMap#Empty() <==> IMap#Domain(m) == ISet#Empty());

axiom (forall m: IMap :: 
  { IMap#Values(m) } 
  m == IMap#Empty() <==> IMap#Values(m) == ISet#Empty());

axiom (forall m: IMap :: 
  { IMap#Items(m) } 
  m == IMap#Empty() <==> IMap#Items(m) == ISet#Empty());

revealed function IMap#Values(IMap) : ISet;

axiom (forall m: IMap, v: Box :: 
  { IMap#Values(m)[v] } 
  IMap#Values(m)[v]
     == (exists u: Box :: 
      { IMap#Domain(m)[u] } { IMap#Elements(m)[u] } 
      IMap#Domain(m)[u] && v == IMap#Elements(m)[u]));

revealed function IMap#Items(IMap) : ISet;

axiom (forall m: IMap, item: Box :: 
  { IMap#Items(m)[item] } 
  IMap#Items(m)[item]
     <==> IMap#Domain(m)[_System.Tuple2._0($Unbox(item))]
       && IMap#Elements(m)[_System.Tuple2._0($Unbox(item))]
         == _System.Tuple2._1($Unbox(item)));

revealed function IMap#Empty() : IMap;

axiom (forall u: Box :: 
  { IMap#Domain(IMap#Empty(): IMap)[u] } 
  !IMap#Domain(IMap#Empty(): IMap)[u]);

revealed function IMap#Glue([Box]bool, [Box]Box, Ty) : IMap;

axiom (forall a: [Box]bool, b: [Box]Box, t: Ty :: 
  { IMap#Domain(IMap#Glue(a, b, t)) } 
  IMap#Domain(IMap#Glue(a, b, t)) == a);

axiom (forall a: [Box]bool, b: [Box]Box, t: Ty :: 
  { IMap#Elements(IMap#Glue(a, b, t)) } 
  IMap#Elements(IMap#Glue(a, b, t)) == b);

axiom (forall a: [Box]bool, b: [Box]Box, t0: Ty, t1: Ty :: 
  { IMap#Glue(a, b, TIMap(t0, t1)) } 
  (forall bx: Box :: a[bx] ==> $IsBox(bx, t0) && $IsBox(b[bx], t1))
     ==> $Is(IMap#Glue(a, b, TIMap(t0, t1)), TIMap(t0, t1)));

revealed function IMap#Build(IMap, Box, Box) : IMap;

axiom (forall m: IMap, u: Box, u': Box, v: Box :: 
  { IMap#Domain(IMap#Build(m, u, v))[u'] } 
    { IMap#Elements(IMap#Build(m, u, v))[u'] } 
  (u' == u
       ==> IMap#Domain(IMap#Build(m, u, v))[u']
         && IMap#Elements(IMap#Build(m, u, v))[u'] == v)
     && (u' != u
       ==> IMap#Domain(IMap#Build(m, u, v))[u'] == IMap#Domain(m)[u']
         && IMap#Elements(IMap#Build(m, u, v))[u'] == IMap#Elements(m)[u']));

revealed function IMap#Equal(IMap, IMap) : bool;

axiom (forall m: IMap, m': IMap :: 
  { IMap#Equal(m, m') } 
  IMap#Equal(m, m')
     <==> (forall u: Box :: IMap#Domain(m)[u] == IMap#Domain(m')[u])
       && (forall u: Box :: 
        IMap#Domain(m)[u] ==> IMap#Elements(m)[u] == IMap#Elements(m')[u]));

axiom (forall m: IMap, m': IMap :: 
  { IMap#Equal(m, m') } 
  IMap#Equal(m, m') ==> m == m');

revealed function IMap#Merge(IMap, IMap) : IMap;

axiom (forall m: IMap, n: IMap :: 
  { IMap#Domain(IMap#Merge(m, n)) } 
  IMap#Domain(IMap#Merge(m, n)) == ISet#Union(IMap#Domain(m), IMap#Domain(n)));

axiom (forall m: IMap, n: IMap, u: Box :: 
  { IMap#Elements(IMap#Merge(m, n))[u] } 
  IMap#Domain(IMap#Merge(m, n))[u]
     ==> (!IMap#Domain(n)[u]
         ==> IMap#Elements(IMap#Merge(m, n))[u] == IMap#Elements(m)[u])
       && (IMap#Domain(n)[u]
         ==> IMap#Elements(IMap#Merge(m, n))[u] == IMap#Elements(n)[u]));

revealed function IMap#Subtract(IMap, Set) : IMap;

axiom (forall m: IMap, s: Set :: 
  { IMap#Domain(IMap#Subtract(m, s)) } 
  IMap#Domain(IMap#Subtract(m, s))
     == ISet#Difference(IMap#Domain(m), ISet#FromSet(s)));

axiom (forall m: IMap, s: Set, u: Box :: 
  { IMap#Elements(IMap#Subtract(m, s))[u] } 
  IMap#Domain(IMap#Subtract(m, s))[u]
     ==> IMap#Elements(IMap#Subtract(m, s))[u] == IMap#Elements(m)[u]);

revealed function INTERNAL_add_boogie(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: 
  { INTERNAL_add_boogie(x, y): int } 
  INTERNAL_add_boogie(x, y): int == x + y);
}

revealed function INTERNAL_sub_boogie(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: 
  { INTERNAL_sub_boogie(x, y): int } 
  INTERNAL_sub_boogie(x, y): int == x - y);
}

revealed function INTERNAL_mul_boogie(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: 
  { INTERNAL_mul_boogie(x, y): int } 
  INTERNAL_mul_boogie(x, y): int == x * y);
}

revealed function INTERNAL_div_boogie(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: 
  { INTERNAL_div_boogie(x, y): int } 
  INTERNAL_div_boogie(x, y): int == x div y);
}

revealed function INTERNAL_mod_boogie(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: 
  { INTERNAL_mod_boogie(x, y): int } 
  INTERNAL_mod_boogie(x, y): int == x mod y);
}

revealed function {:never_pattern true} INTERNAL_lt_boogie(x: int, y: int) : bool
uses {
axiom (forall x: int, y: int :: 
  {:never_pattern true} { INTERNAL_lt_boogie(x, y): bool } 
  INTERNAL_lt_boogie(x, y): bool == (x < y));
}

revealed function {:never_pattern true} INTERNAL_le_boogie(x: int, y: int) : bool
uses {
axiom (forall x: int, y: int :: 
  {:never_pattern true} { INTERNAL_le_boogie(x, y): bool } 
  INTERNAL_le_boogie(x, y): bool == (x <= y));
}

revealed function {:never_pattern true} INTERNAL_gt_boogie(x: int, y: int) : bool
uses {
axiom (forall x: int, y: int :: 
  {:never_pattern true} { INTERNAL_gt_boogie(x, y): bool } 
  INTERNAL_gt_boogie(x, y): bool == (x > y));
}

revealed function {:never_pattern true} INTERNAL_ge_boogie(x: int, y: int) : bool
uses {
axiom (forall x: int, y: int :: 
  {:never_pattern true} { INTERNAL_ge_boogie(x, y): bool } 
  INTERNAL_ge_boogie(x, y): bool == (x >= y));
}

revealed function Mul(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: { Mul(x, y): int } Mul(x, y): int == x * y);
}

revealed function Div(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: { Div(x, y): int } Div(x, y): int == x div y);
}

revealed function Mod(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: { Mod(x, y): int } Mod(x, y): int == x mod y);
}

revealed function Add(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: { Add(x, y): int } Add(x, y): int == x + y);
}

revealed function Sub(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: { Sub(x, y): int } Sub(x, y): int == x - y);
}

function Tclass._System.nat() : Ty
uses {
// Tclass._System.nat Tag
axiom Tag(Tclass._System.nat()) == Tagclass._System.nat
   && TagFamily(Tclass._System.nat()) == tytagFamily$nat;
}

const unique Tagclass._System.nat: TyTag;

// Box/unbox axiom for Tclass._System.nat
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._System.nat()) } 
  $IsBox(bx, Tclass._System.nat())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._System.nat()));

// $Is axiom for subset type _System.nat
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._System.nat()) } 
  $Is(x#0, Tclass._System.nat()) <==> LitInt(0) <= x#0);

// $IsAlloc axiom for subset type _System.nat
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._System.nat(), $h) } 
  $IsAlloc(x#0, Tclass._System.nat(), $h));

const unique class._System.object?: ClassName;

const unique Tagclass._System.object?: TyTag;

// Box/unbox axiom for Tclass._System.object?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._System.object?()) } 
  $IsBox(bx, Tclass._System.object?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._System.object?()));

// $Is axiom for trait object
axiom (forall $o: ref :: 
  { $Is($o, Tclass._System.object?()) } 
  $Is($o, Tclass._System.object?()));

// $IsAlloc axiom for trait object
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._System.object?(), $h) } 
  $IsAlloc($o, Tclass._System.object?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$_System.object(ty: Ty) : bool;

function Tclass._System.object() : Ty
uses {
// Tclass._System.object Tag
axiom Tag(Tclass._System.object()) == Tagclass._System.object
   && TagFamily(Tclass._System.object()) == tytagFamily$object;
}

const unique Tagclass._System.object: TyTag;

// Box/unbox axiom for Tclass._System.object
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._System.object()) } 
  $IsBox(bx, Tclass._System.object())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._System.object()));

// $Is axiom for non-null type _System.object
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._System.object()) } { $Is(c#0, Tclass._System.object?()) } 
  $Is(c#0, Tclass._System.object())
     <==> $Is(c#0, Tclass._System.object?()) && c#0 != null);

// $IsAlloc axiom for non-null type _System.object
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._System.object(), $h) } 
    { $IsAlloc(c#0, Tclass._System.object?(), $h) } 
  $IsAlloc(c#0, Tclass._System.object(), $h)
     <==> $IsAlloc(c#0, Tclass._System.object?(), $h));

const unique class._System.array?: ClassName;

function Tclass._System.array?(Ty) : Ty;

const unique Tagclass._System.array?: TyTag;

// Tclass._System.array? Tag
axiom (forall _System.array$arg: Ty :: 
  { Tclass._System.array?(_System.array$arg) } 
  Tag(Tclass._System.array?(_System.array$arg)) == Tagclass._System.array?
     && TagFamily(Tclass._System.array?(_System.array$arg)) == tytagFamily$array);

function Tclass._System.array?_0(Ty) : Ty;

// Tclass._System.array? injectivity 0
axiom (forall _System.array$arg: Ty :: 
  { Tclass._System.array?(_System.array$arg) } 
  Tclass._System.array?_0(Tclass._System.array?(_System.array$arg))
     == _System.array$arg);

// Box/unbox axiom for Tclass._System.array?
axiom (forall _System.array$arg: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.array?(_System.array$arg)) } 
  $IsBox(bx, Tclass._System.array?(_System.array$arg))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._System.array?(_System.array$arg)));

// array.: Type axiom
axiom (forall _System.array$arg: Ty, $h: Heap, $o: ref, $i0: int :: 
  { read($h, $o, IndexField($i0)), Tclass._System.array?(_System.array$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array?(_System.array$arg)
       && 
      0 <= $i0
       && $i0 < _System.array.Length($o)
     ==> $IsBox(read($h, $o, IndexField($i0)), _System.array$arg));

// array.: Allocation axiom
axiom (forall _System.array$arg: Ty, $h: Heap, $o: ref, $i0: int :: 
  { read($h, $o, IndexField($i0)), Tclass._System.array?(_System.array$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array?(_System.array$arg)
       && 
      0 <= $i0
       && $i0 < _System.array.Length($o)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, IndexField($i0)), _System.array$arg, $h));

// $Is axiom for array type array
axiom (forall _System.array$arg: Ty, $o: ref :: 
  { $Is($o, Tclass._System.array?(_System.array$arg)) } 
  $Is($o, Tclass._System.array?(_System.array$arg))
     <==> $o == null || dtype($o) == Tclass._System.array?(_System.array$arg));

// $IsAlloc axiom for array type array
axiom (forall _System.array$arg: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._System.array?(_System.array$arg), $h) } 
  $IsAlloc($o, Tclass._System.array?(_System.array$arg), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

// array.Length: Type axiom
axiom (forall _System.array$arg: Ty, $o: ref :: 
  { _System.array.Length($o), Tclass._System.array?(_System.array$arg) } 
  $o != null && dtype($o) == Tclass._System.array?(_System.array$arg)
     ==> $Is(_System.array.Length($o), TInt));

// array.Length: Allocation axiom
axiom (forall _System.array$arg: Ty, $h: Heap, $o: ref :: 
  { _System.array.Length($o), $Unbox(read($h, $o, alloc)): bool, Tclass._System.array?(_System.array$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array?(_System.array$arg)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_System.array.Length($o), TInt, $h));

function Tclass._System.array(Ty) : Ty;

const unique Tagclass._System.array: TyTag;

// Tclass._System.array Tag
axiom (forall _System.array$arg: Ty :: 
  { Tclass._System.array(_System.array$arg) } 
  Tag(Tclass._System.array(_System.array$arg)) == Tagclass._System.array
     && TagFamily(Tclass._System.array(_System.array$arg)) == tytagFamily$array);

function Tclass._System.array_0(Ty) : Ty;

// Tclass._System.array injectivity 0
axiom (forall _System.array$arg: Ty :: 
  { Tclass._System.array(_System.array$arg) } 
  Tclass._System.array_0(Tclass._System.array(_System.array$arg))
     == _System.array$arg);

// Box/unbox axiom for Tclass._System.array
axiom (forall _System.array$arg: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.array(_System.array$arg)) } 
  $IsBox(bx, Tclass._System.array(_System.array$arg))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._System.array(_System.array$arg)));

// $Is axiom for non-null type _System.array
axiom (forall _System.array$arg: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._System.array(_System.array$arg)) } 
    { $Is(c#0, Tclass._System.array?(_System.array$arg)) } 
  $Is(c#0, Tclass._System.array(_System.array$arg))
     <==> $Is(c#0, Tclass._System.array?(_System.array$arg)) && c#0 != null);

// $IsAlloc axiom for non-null type _System.array
axiom (forall _System.array$arg: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._System.array(_System.array$arg), $h) } 
    { $IsAlloc(c#0, Tclass._System.array?(_System.array$arg), $h) } 
  $IsAlloc(c#0, Tclass._System.array(_System.array$arg), $h)
     <==> $IsAlloc(c#0, Tclass._System.array?(_System.array$arg), $h));

function Tclass._System.___hFunc1(Ty, Ty) : Ty;

const unique Tagclass._System.___hFunc1: TyTag;

// Tclass._System.___hFunc1 Tag
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc1(#$T0, #$R) } 
  Tag(Tclass._System.___hFunc1(#$T0, #$R)) == Tagclass._System.___hFunc1
     && TagFamily(Tclass._System.___hFunc1(#$T0, #$R)) == tytagFamily$_#Func1);

function Tclass._System.___hFunc1_0(Ty) : Ty;

// Tclass._System.___hFunc1 injectivity 0
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc1(#$T0, #$R) } 
  Tclass._System.___hFunc1_0(Tclass._System.___hFunc1(#$T0, #$R)) == #$T0);

function Tclass._System.___hFunc1_1(Ty) : Ty;

// Tclass._System.___hFunc1 injectivity 1
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc1(#$T0, #$R) } 
  Tclass._System.___hFunc1_1(Tclass._System.___hFunc1(#$T0, #$R)) == #$R);

// Box/unbox axiom for Tclass._System.___hFunc1
axiom (forall #$T0: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hFunc1(#$T0, #$R)) } 
  $IsBox(bx, Tclass._System.___hFunc1(#$T0, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hFunc1(#$T0, #$R)));

function Handle1([Heap,Box]Box, [Heap,Box]bool, [Heap,Box]Set) : HandleType;

function Requires1(Ty, Ty, Heap, HandleType, Box) : bool;

function Reads1(Ty, Ty, Heap, HandleType, Box) : Set;

axiom (forall t0: Ty, 
    t1: Ty, 
    heap: Heap, 
    h: [Heap,Box]Box, 
    r: [Heap,Box]bool, 
    rd: [Heap,Box]Set, 
    bx0: Box :: 
  { Apply1(t0, t1, heap, Handle1(h, r, rd), bx0) } 
  Apply1(t0, t1, heap, Handle1(h, r, rd), bx0) == h[heap, bx0]);

axiom (forall t0: Ty, 
    t1: Ty, 
    heap: Heap, 
    h: [Heap,Box]Box, 
    r: [Heap,Box]bool, 
    rd: [Heap,Box]Set, 
    bx0: Box :: 
  { Requires1(t0, t1, heap, Handle1(h, r, rd), bx0) } 
  r[heap, bx0] ==> Requires1(t0, t1, heap, Handle1(h, r, rd), bx0));

axiom (forall t0: Ty, 
    t1: Ty, 
    heap: Heap, 
    h: [Heap,Box]Box, 
    r: [Heap,Box]bool, 
    rd: [Heap,Box]Set, 
    bx0: Box, 
    bx: Box :: 
  { Set#IsMember(Reads1(t0, t1, heap, Handle1(h, r, rd), bx0), bx) } 
  Set#IsMember(Reads1(t0, t1, heap, Handle1(h, r, rd), bx0), bx)
     == Set#IsMember(rd[heap, bx0], bx));

function {:inline} Requires1#canCall(t0: Ty, t1: Ty, heap: Heap, f: HandleType, bx0: Box) : bool
{
  true
}

function {:inline} Reads1#canCall(t0: Ty, t1: Ty, heap: Heap, f: HandleType, bx0: Box) : bool
{
  true
}

// frame axiom for Reads1
axiom (forall t0: Ty, t1: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box :: 
  { $HeapSucc(h0, h1), Reads1(t0, t1, h1, f, bx0) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $Is(f, Tclass._System.___hFunc1(t0, t1))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads1(t0, t1, h0, f, bx0), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads1(t0, t1, h0, f, bx0) == Reads1(t0, t1, h1, f, bx0));

// frame axiom for Reads1
axiom (forall t0: Ty, t1: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box :: 
  { $HeapSucc(h0, h1), Reads1(t0, t1, h1, f, bx0) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $Is(f, Tclass._System.___hFunc1(t0, t1))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads1(t0, t1, h1, f, bx0), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads1(t0, t1, h0, f, bx0) == Reads1(t0, t1, h1, f, bx0));

// frame axiom for Requires1
axiom (forall t0: Ty, t1: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box :: 
  { $HeapSucc(h0, h1), Requires1(t0, t1, h1, f, bx0) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $Is(f, Tclass._System.___hFunc1(t0, t1))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads1(t0, t1, h0, f, bx0), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires1(t0, t1, h0, f, bx0) == Requires1(t0, t1, h1, f, bx0));

// frame axiom for Requires1
axiom (forall t0: Ty, t1: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box :: 
  { $HeapSucc(h0, h1), Requires1(t0, t1, h1, f, bx0) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $Is(f, Tclass._System.___hFunc1(t0, t1))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads1(t0, t1, h1, f, bx0), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires1(t0, t1, h0, f, bx0) == Requires1(t0, t1, h1, f, bx0));

// frame axiom for Apply1
axiom (forall t0: Ty, t1: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box :: 
  { $HeapSucc(h0, h1), Apply1(t0, t1, h1, f, bx0) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $Is(f, Tclass._System.___hFunc1(t0, t1))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads1(t0, t1, h0, f, bx0), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply1(t0, t1, h0, f, bx0) == Apply1(t0, t1, h1, f, bx0));

// frame axiom for Apply1
axiom (forall t0: Ty, t1: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box :: 
  { $HeapSucc(h0, h1), Apply1(t0, t1, h1, f, bx0) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $Is(f, Tclass._System.___hFunc1(t0, t1))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads1(t0, t1, h1, f, bx0), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply1(t0, t1, h0, f, bx0) == Apply1(t0, t1, h1, f, bx0));

// empty-reads property for Reads1 
axiom (forall t0: Ty, t1: Ty, heap: Heap, f: HandleType, bx0: Box :: 
  { Reads1(t0, t1, $OneHeap, f, bx0), $IsGoodHeap(heap) } 
    { Reads1(t0, t1, heap, f, bx0) } 
  $IsGoodHeap(heap) && $IsBox(bx0, t0) && $Is(f, Tclass._System.___hFunc1(t0, t1))
     ==> (Set#Equal(Reads1(t0, t1, $OneHeap, f, bx0), Set#Empty(): Set)
       <==> Set#Equal(Reads1(t0, t1, heap, f, bx0), Set#Empty(): Set)));

// empty-reads property for Requires1
axiom (forall t0: Ty, t1: Ty, heap: Heap, f: HandleType, bx0: Box :: 
  { Requires1(t0, t1, $OneHeap, f, bx0), $IsGoodHeap(heap) } 
    { Requires1(t0, t1, heap, f, bx0) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $Is(f, Tclass._System.___hFunc1(t0, t1))
       && Set#Equal(Reads1(t0, t1, $OneHeap, f, bx0), Set#Empty(): Set)
     ==> Requires1(t0, t1, $OneHeap, f, bx0) == Requires1(t0, t1, heap, f, bx0));

axiom (forall f: HandleType, t0: Ty, t1: Ty :: 
  { $Is(f, Tclass._System.___hFunc1(t0, t1)) } 
  $Is(f, Tclass._System.___hFunc1(t0, t1))
     <==> (forall h: Heap, bx0: Box :: 
      { Apply1(t0, t1, h, f, bx0) } 
      $IsGoodHeap(h) && $IsBox(bx0, t0) && Requires1(t0, t1, h, f, bx0)
         ==> $IsBox(Apply1(t0, t1, h, f, bx0), t1)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, u0: Ty, u1: Ty :: 
  { $Is(f, Tclass._System.___hFunc1(t0, t1)), $Is(f, Tclass._System.___hFunc1(u0, u1)) } 
  $Is(f, Tclass._System.___hFunc1(t0, t1))
       && (forall bx: Box :: 
        { $IsBox(bx, u0) } { $IsBox(bx, t0) } 
        $IsBox(bx, u0) ==> $IsBox(bx, t0))
       && (forall bx: Box :: 
        { $IsBox(bx, t1) } { $IsBox(bx, u1) } 
        $IsBox(bx, t1) ==> $IsBox(bx, u1))
     ==> $Is(f, Tclass._System.___hFunc1(u0, u1)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc1(t0, t1), h) } 
  $IsGoodHeap(h)
     ==> ($IsAlloc(f, Tclass._System.___hFunc1(t0, t1), h)
       <==> (forall bx0: Box :: 
        { Apply1(t0, t1, h, f, bx0) } { Reads1(t0, t1, h, f, bx0) } 
        $IsBox(bx0, t0) && $IsAllocBox(bx0, t0, h) && Requires1(t0, t1, h, f, bx0)
           ==> (forall r: ref :: 
            { Set#IsMember(Reads1(t0, t1, h, f, bx0), $Box(r)) } 
            r != null && Set#IsMember(Reads1(t0, t1, h, f, bx0), $Box(r))
               ==> $Unbox(read(h, r, alloc)): bool))));

axiom (forall f: HandleType, t0: Ty, t1: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc1(t0, t1), h) } 
  $IsGoodHeap(h) && $IsAlloc(f, Tclass._System.___hFunc1(t0, t1), h)
     ==> (forall bx0: Box :: 
      { Apply1(t0, t1, h, f, bx0) } 
      $IsAllocBox(bx0, t0, h) && Requires1(t0, t1, h, f, bx0)
         ==> $IsAllocBox(Apply1(t0, t1, h, f, bx0), t1, h)));

function Tclass._System.___hPartialFunc1(Ty, Ty) : Ty;

const unique Tagclass._System.___hPartialFunc1: TyTag;

// Tclass._System.___hPartialFunc1 Tag
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc1(#$T0, #$R) } 
  Tag(Tclass._System.___hPartialFunc1(#$T0, #$R))
       == Tagclass._System.___hPartialFunc1
     && TagFamily(Tclass._System.___hPartialFunc1(#$T0, #$R))
       == tytagFamily$_#PartialFunc1);

function Tclass._System.___hPartialFunc1_0(Ty) : Ty;

// Tclass._System.___hPartialFunc1 injectivity 0
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc1(#$T0, #$R) } 
  Tclass._System.___hPartialFunc1_0(Tclass._System.___hPartialFunc1(#$T0, #$R))
     == #$T0);

function Tclass._System.___hPartialFunc1_1(Ty) : Ty;

// Tclass._System.___hPartialFunc1 injectivity 1
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc1(#$T0, #$R) } 
  Tclass._System.___hPartialFunc1_1(Tclass._System.___hPartialFunc1(#$T0, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hPartialFunc1
axiom (forall #$T0: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hPartialFunc1(#$T0, #$R)) } 
  $IsBox(bx, Tclass._System.___hPartialFunc1(#$T0, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hPartialFunc1(#$T0, #$R)));

// $Is axiom for subset type _System._#PartialFunc1
axiom (forall #$T0: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hPartialFunc1(#$T0, #$R)) } 
  $Is(f#0, Tclass._System.___hPartialFunc1(#$T0, #$R))
     <==> $Is(f#0, Tclass._System.___hFunc1(#$T0, #$R))
       && (forall x0#0: Box :: 
        $IsBox(x0#0, #$T0)
           ==> Set#Equal(Reads1(#$T0, #$R, $OneHeap, f#0, x0#0), Set#Empty(): Set)));

// $IsAlloc axiom for subset type _System._#PartialFunc1
axiom (forall #$T0: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hPartialFunc1(#$T0, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hPartialFunc1(#$T0, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hFunc1(#$T0, #$R), $h));

function Tclass._System.___hTotalFunc1(Ty, Ty) : Ty;

const unique Tagclass._System.___hTotalFunc1: TyTag;

// Tclass._System.___hTotalFunc1 Tag
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc1(#$T0, #$R) } 
  Tag(Tclass._System.___hTotalFunc1(#$T0, #$R)) == Tagclass._System.___hTotalFunc1
     && TagFamily(Tclass._System.___hTotalFunc1(#$T0, #$R)) == tytagFamily$_#TotalFunc1);

function Tclass._System.___hTotalFunc1_0(Ty) : Ty;

// Tclass._System.___hTotalFunc1 injectivity 0
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc1(#$T0, #$R) } 
  Tclass._System.___hTotalFunc1_0(Tclass._System.___hTotalFunc1(#$T0, #$R))
     == #$T0);

function Tclass._System.___hTotalFunc1_1(Ty) : Ty;

// Tclass._System.___hTotalFunc1 injectivity 1
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc1(#$T0, #$R) } 
  Tclass._System.___hTotalFunc1_1(Tclass._System.___hTotalFunc1(#$T0, #$R)) == #$R);

// Box/unbox axiom for Tclass._System.___hTotalFunc1
axiom (forall #$T0: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hTotalFunc1(#$T0, #$R)) } 
  $IsBox(bx, Tclass._System.___hTotalFunc1(#$T0, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hTotalFunc1(#$T0, #$R)));

// $Is axiom for subset type _System._#TotalFunc1
axiom (forall #$T0: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hTotalFunc1(#$T0, #$R)) } 
  $Is(f#0, Tclass._System.___hTotalFunc1(#$T0, #$R))
     <==> $Is(f#0, Tclass._System.___hPartialFunc1(#$T0, #$R))
       && (forall x0#0: Box :: 
        $IsBox(x0#0, #$T0) ==> Requires1(#$T0, #$R, $OneHeap, f#0, x0#0)));

// $IsAlloc axiom for subset type _System._#TotalFunc1
axiom (forall #$T0: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hTotalFunc1(#$T0, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hTotalFunc1(#$T0, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hPartialFunc1(#$T0, #$R), $h));

function Tclass._System.___hFunc0(Ty) : Ty;

const unique Tagclass._System.___hFunc0: TyTag;

// Tclass._System.___hFunc0 Tag
axiom (forall #$R: Ty :: 
  { Tclass._System.___hFunc0(#$R) } 
  Tag(Tclass._System.___hFunc0(#$R)) == Tagclass._System.___hFunc0
     && TagFamily(Tclass._System.___hFunc0(#$R)) == tytagFamily$_#Func0);

function Tclass._System.___hFunc0_0(Ty) : Ty;

// Tclass._System.___hFunc0 injectivity 0
axiom (forall #$R: Ty :: 
  { Tclass._System.___hFunc0(#$R) } 
  Tclass._System.___hFunc0_0(Tclass._System.___hFunc0(#$R)) == #$R);

// Box/unbox axiom for Tclass._System.___hFunc0
axiom (forall #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hFunc0(#$R)) } 
  $IsBox(bx, Tclass._System.___hFunc0(#$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hFunc0(#$R)));

function Handle0([Heap]Box, [Heap]bool, [Heap]Set) : HandleType;

function Apply0(Ty, Heap, HandleType) : Box;

function Requires0(Ty, Heap, HandleType) : bool;

function Reads0(Ty, Heap, HandleType) : Set;

axiom (forall t0: Ty, heap: Heap, h: [Heap]Box, r: [Heap]bool, rd: [Heap]Set :: 
  { Apply0(t0, heap, Handle0(h, r, rd)) } 
  Apply0(t0, heap, Handle0(h, r, rd)) == h[heap]);

axiom (forall t0: Ty, heap: Heap, h: [Heap]Box, r: [Heap]bool, rd: [Heap]Set :: 
  { Requires0(t0, heap, Handle0(h, r, rd)) } 
  r[heap] ==> Requires0(t0, heap, Handle0(h, r, rd)));

axiom (forall t0: Ty, heap: Heap, h: [Heap]Box, r: [Heap]bool, rd: [Heap]Set, bx: Box :: 
  { Set#IsMember(Reads0(t0, heap, Handle0(h, r, rd)), bx) } 
  Set#IsMember(Reads0(t0, heap, Handle0(h, r, rd)), bx)
     == Set#IsMember(rd[heap], bx));

function {:inline} Requires0#canCall(t0: Ty, heap: Heap, f: HandleType) : bool
{
  true
}

function {:inline} Reads0#canCall(t0: Ty, heap: Heap, f: HandleType) : bool
{
  true
}

// frame axiom for Reads0
axiom (forall t0: Ty, h0: Heap, h1: Heap, f: HandleType :: 
  { $HeapSucc(h0, h1), Reads0(t0, h1, f) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && $Is(f, Tclass._System.___hFunc0(t0))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads0(t0, h0, f), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads0(t0, h0, f) == Reads0(t0, h1, f));

// frame axiom for Reads0
axiom (forall t0: Ty, h0: Heap, h1: Heap, f: HandleType :: 
  { $HeapSucc(h0, h1), Reads0(t0, h1, f) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && $Is(f, Tclass._System.___hFunc0(t0))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads0(t0, h1, f), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads0(t0, h0, f) == Reads0(t0, h1, f));

// frame axiom for Requires0
axiom (forall t0: Ty, h0: Heap, h1: Heap, f: HandleType :: 
  { $HeapSucc(h0, h1), Requires0(t0, h1, f) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && $Is(f, Tclass._System.___hFunc0(t0))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads0(t0, h0, f), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires0(t0, h0, f) == Requires0(t0, h1, f));

// frame axiom for Requires0
axiom (forall t0: Ty, h0: Heap, h1: Heap, f: HandleType :: 
  { $HeapSucc(h0, h1), Requires0(t0, h1, f) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && $Is(f, Tclass._System.___hFunc0(t0))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads0(t0, h1, f), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires0(t0, h0, f) == Requires0(t0, h1, f));

// frame axiom for Apply0
axiom (forall t0: Ty, h0: Heap, h1: Heap, f: HandleType :: 
  { $HeapSucc(h0, h1), Apply0(t0, h1, f) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && $Is(f, Tclass._System.___hFunc0(t0))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads0(t0, h0, f), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply0(t0, h0, f) == Apply0(t0, h1, f));

// frame axiom for Apply0
axiom (forall t0: Ty, h0: Heap, h1: Heap, f: HandleType :: 
  { $HeapSucc(h0, h1), Apply0(t0, h1, f) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && $Is(f, Tclass._System.___hFunc0(t0))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads0(t0, h1, f), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply0(t0, h0, f) == Apply0(t0, h1, f));

// empty-reads property for Reads0 
axiom (forall t0: Ty, heap: Heap, f: HandleType :: 
  { Reads0(t0, $OneHeap, f), $IsGoodHeap(heap) } { Reads0(t0, heap, f) } 
  $IsGoodHeap(heap) && $Is(f, Tclass._System.___hFunc0(t0))
     ==> (Set#Equal(Reads0(t0, $OneHeap, f), Set#Empty(): Set)
       <==> Set#Equal(Reads0(t0, heap, f), Set#Empty(): Set)));

// empty-reads property for Requires0
axiom (forall t0: Ty, heap: Heap, f: HandleType :: 
  { Requires0(t0, $OneHeap, f), $IsGoodHeap(heap) } { Requires0(t0, heap, f) } 
  $IsGoodHeap(heap)
       && $Is(f, Tclass._System.___hFunc0(t0))
       && Set#Equal(Reads0(t0, $OneHeap, f), Set#Empty(): Set)
     ==> Requires0(t0, $OneHeap, f) == Requires0(t0, heap, f));

axiom (forall f: HandleType, t0: Ty :: 
  { $Is(f, Tclass._System.___hFunc0(t0)) } 
  $Is(f, Tclass._System.___hFunc0(t0))
     <==> (forall h: Heap :: 
      { Apply0(t0, h, f) } 
      $IsGoodHeap(h) && Requires0(t0, h, f) ==> $IsBox(Apply0(t0, h, f), t0)));

axiom (forall f: HandleType, t0: Ty, u0: Ty :: 
  { $Is(f, Tclass._System.___hFunc0(t0)), $Is(f, Tclass._System.___hFunc0(u0)) } 
  $Is(f, Tclass._System.___hFunc0(t0))
       && (forall bx: Box :: 
        { $IsBox(bx, t0) } { $IsBox(bx, u0) } 
        $IsBox(bx, t0) ==> $IsBox(bx, u0))
     ==> $Is(f, Tclass._System.___hFunc0(u0)));

axiom (forall f: HandleType, t0: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc0(t0), h) } 
  $IsGoodHeap(h)
     ==> ($IsAlloc(f, Tclass._System.___hFunc0(t0), h)
       <==> Requires0(t0, h, f)
         ==> (forall r: ref :: 
          { Set#IsMember(Reads0(t0, h, f), $Box(r)) } 
          r != null && Set#IsMember(Reads0(t0, h, f), $Box(r))
             ==> $Unbox(read(h, r, alloc)): bool)));

axiom (forall f: HandleType, t0: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc0(t0), h) } 
  $IsGoodHeap(h) && $IsAlloc(f, Tclass._System.___hFunc0(t0), h)
     ==> 
    Requires0(t0, h, f)
     ==> $IsAllocBox(Apply0(t0, h, f), t0, h));

function Tclass._System.___hPartialFunc0(Ty) : Ty;

const unique Tagclass._System.___hPartialFunc0: TyTag;

// Tclass._System.___hPartialFunc0 Tag
axiom (forall #$R: Ty :: 
  { Tclass._System.___hPartialFunc0(#$R) } 
  Tag(Tclass._System.___hPartialFunc0(#$R)) == Tagclass._System.___hPartialFunc0
     && TagFamily(Tclass._System.___hPartialFunc0(#$R)) == tytagFamily$_#PartialFunc0);

function Tclass._System.___hPartialFunc0_0(Ty) : Ty;

// Tclass._System.___hPartialFunc0 injectivity 0
axiom (forall #$R: Ty :: 
  { Tclass._System.___hPartialFunc0(#$R) } 
  Tclass._System.___hPartialFunc0_0(Tclass._System.___hPartialFunc0(#$R)) == #$R);

// Box/unbox axiom for Tclass._System.___hPartialFunc0
axiom (forall #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hPartialFunc0(#$R)) } 
  $IsBox(bx, Tclass._System.___hPartialFunc0(#$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hPartialFunc0(#$R)));

// $Is axiom for subset type _System._#PartialFunc0
axiom (forall #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hPartialFunc0(#$R)) } 
  $Is(f#0, Tclass._System.___hPartialFunc0(#$R))
     <==> $Is(f#0, Tclass._System.___hFunc0(#$R))
       && Set#Equal(Reads0(#$R, $OneHeap, f#0), Set#Empty(): Set));

// $IsAlloc axiom for subset type _System._#PartialFunc0
axiom (forall #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hPartialFunc0(#$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hPartialFunc0(#$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hFunc0(#$R), $h));

function Tclass._System.___hTotalFunc0(Ty) : Ty;

const unique Tagclass._System.___hTotalFunc0: TyTag;

// Tclass._System.___hTotalFunc0 Tag
axiom (forall #$R: Ty :: 
  { Tclass._System.___hTotalFunc0(#$R) } 
  Tag(Tclass._System.___hTotalFunc0(#$R)) == Tagclass._System.___hTotalFunc0
     && TagFamily(Tclass._System.___hTotalFunc0(#$R)) == tytagFamily$_#TotalFunc0);

function Tclass._System.___hTotalFunc0_0(Ty) : Ty;

// Tclass._System.___hTotalFunc0 injectivity 0
axiom (forall #$R: Ty :: 
  { Tclass._System.___hTotalFunc0(#$R) } 
  Tclass._System.___hTotalFunc0_0(Tclass._System.___hTotalFunc0(#$R)) == #$R);

// Box/unbox axiom for Tclass._System.___hTotalFunc0
axiom (forall #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hTotalFunc0(#$R)) } 
  $IsBox(bx, Tclass._System.___hTotalFunc0(#$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hTotalFunc0(#$R)));

// $Is axiom for subset type _System._#TotalFunc0
axiom (forall #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hTotalFunc0(#$R)) } 
  $Is(f#0, Tclass._System.___hTotalFunc0(#$R))
     <==> $Is(f#0, Tclass._System.___hPartialFunc0(#$R)) && Requires0(#$R, $OneHeap, f#0));

// $IsAlloc axiom for subset type _System._#TotalFunc0
axiom (forall #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hTotalFunc0(#$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hTotalFunc0(#$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hPartialFunc0(#$R), $h));

const unique ##_System._tuple#2._#Make2: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: Box, a#0#1#0: Box :: 
  { #_System._tuple#2._#Make2(a#0#0#0, a#0#1#0) } 
  DatatypeCtorId(#_System._tuple#2._#Make2(a#0#0#0, a#0#1#0))
     == ##_System._tuple#2._#Make2);
}

function _System.Tuple2.___hMake2_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _System.Tuple2.___hMake2_q(d) } 
  _System.Tuple2.___hMake2_q(d)
     <==> DatatypeCtorId(d) == ##_System._tuple#2._#Make2);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _System.Tuple2.___hMake2_q(d) } 
  _System.Tuple2.___hMake2_q(d)
     ==> (exists a#1#0#0: Box, a#1#1#0: Box :: 
      d == #_System._tuple#2._#Make2(a#1#0#0, a#1#1#0)));

const unique Tagclass._System.Tuple2: TyTag;

// Tclass._System.Tuple2 Tag
axiom (forall _System._tuple#2$T0: Ty, _System._tuple#2$T1: Ty :: 
  { Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1) } 
  Tag(Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1))
       == Tagclass._System.Tuple2
     && TagFamily(Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1))
       == tytagFamily$_tuple#2);

function Tclass._System.Tuple2_0(Ty) : Ty;

// Tclass._System.Tuple2 injectivity 0
axiom (forall _System._tuple#2$T0: Ty, _System._tuple#2$T1: Ty :: 
  { Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1) } 
  Tclass._System.Tuple2_0(Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1))
     == _System._tuple#2$T0);

function Tclass._System.Tuple2_1(Ty) : Ty;

// Tclass._System.Tuple2 injectivity 1
axiom (forall _System._tuple#2$T0: Ty, _System._tuple#2$T1: Ty :: 
  { Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1) } 
  Tclass._System.Tuple2_1(Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1))
     == _System._tuple#2$T1);

// Box/unbox axiom for Tclass._System.Tuple2
axiom (forall _System._tuple#2$T0: Ty, _System._tuple#2$T1: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1)) } 
  $IsBox(bx, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1)));

// Constructor $Is
axiom (forall _System._tuple#2$T0: Ty, _System._tuple#2$T1: Ty, a#2#0#0: Box, a#2#1#0: Box :: 
  { $Is(#_System._tuple#2._#Make2(a#2#0#0, a#2#1#0), 
      Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1)) } 
  $Is(#_System._tuple#2._#Make2(a#2#0#0, a#2#1#0), 
      Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1))
     <==> $IsBox(a#2#0#0, _System._tuple#2$T0) && $IsBox(a#2#1#0, _System._tuple#2$T1));

// Constructor $IsAlloc
axiom (forall _System._tuple#2$T0: Ty, 
    _System._tuple#2$T1: Ty, 
    a#2#0#0: Box, 
    a#2#1#0: Box, 
    $h: Heap :: 
  { $IsAlloc(#_System._tuple#2._#Make2(a#2#0#0, a#2#1#0), 
      Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_System._tuple#2._#Make2(a#2#0#0, a#2#1#0), 
        Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1), 
        $h)
       <==> $IsAllocBox(a#2#0#0, _System._tuple#2$T0, $h)
         && $IsAllocBox(a#2#1#0, _System._tuple#2$T1, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#2$T0: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple2._0(d), _System._tuple#2$T0, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple2.___hMake2_q(d)
       && (exists _System._tuple#2$T1: Ty :: 
        { $IsAlloc(d, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1), $h) } 
        $IsAlloc(d, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1), $h))
     ==> $IsAllocBox(_System.Tuple2._0(d), _System._tuple#2$T0, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#2$T1: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple2._1(d), _System._tuple#2$T1, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple2.___hMake2_q(d)
       && (exists _System._tuple#2$T0: Ty :: 
        { $IsAlloc(d, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1), $h) } 
        $IsAlloc(d, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1), $h))
     ==> $IsAllocBox(_System.Tuple2._1(d), _System._tuple#2$T1, $h));

// Constructor literal
axiom (forall a#3#0#0: Box, a#3#1#0: Box :: 
  { #_System._tuple#2._#Make2(Lit(a#3#0#0), Lit(a#3#1#0)) } 
  #_System._tuple#2._#Make2(Lit(a#3#0#0), Lit(a#3#1#0))
     == Lit(#_System._tuple#2._#Make2(a#3#0#0, a#3#1#0)));

// Constructor injectivity
axiom (forall a#4#0#0: Box, a#4#1#0: Box :: 
  { #_System._tuple#2._#Make2(a#4#0#0, a#4#1#0) } 
  _System.Tuple2._0(#_System._tuple#2._#Make2(a#4#0#0, a#4#1#0)) == a#4#0#0);

// Inductive rank
axiom (forall a#5#0#0: Box, a#5#1#0: Box :: 
  { #_System._tuple#2._#Make2(a#5#0#0, a#5#1#0) } 
  BoxRank(a#5#0#0) < DtRank(#_System._tuple#2._#Make2(a#5#0#0, a#5#1#0)));

// Constructor injectivity
axiom (forall a#6#0#0: Box, a#6#1#0: Box :: 
  { #_System._tuple#2._#Make2(a#6#0#0, a#6#1#0) } 
  _System.Tuple2._1(#_System._tuple#2._#Make2(a#6#0#0, a#6#1#0)) == a#6#1#0);

// Inductive rank
axiom (forall a#7#0#0: Box, a#7#1#0: Box :: 
  { #_System._tuple#2._#Make2(a#7#0#0, a#7#1#0) } 
  BoxRank(a#7#1#0) < DtRank(#_System._tuple#2._#Make2(a#7#0#0, a#7#1#0)));

// Depth-one case-split function
function $IsA#_System.Tuple2(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_System.Tuple2(d) } 
  $IsA#_System.Tuple2(d) ==> _System.Tuple2.___hMake2_q(d));

// Questionmark data type disjunctivity
axiom (forall _System._tuple#2$T0: Ty, _System._tuple#2$T1: Ty, d: DatatypeType :: 
  { _System.Tuple2.___hMake2_q(d), $Is(d, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1)) } 
  $Is(d, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1))
     ==> _System.Tuple2.___hMake2_q(d));

// Datatype extensional equality declaration
function _System.Tuple2#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_System._tuple#2._#Make2
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple2#Equal(a, b) } 
  _System.Tuple2#Equal(a, b)
     <==> _System.Tuple2._0(a) == _System.Tuple2._0(b)
       && _System.Tuple2._1(a) == _System.Tuple2._1(b));

// Datatype extensionality axiom: _System._tuple#2
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple2#Equal(a, b) } 
  _System.Tuple2#Equal(a, b) <==> a == b);

const unique class._System.Tuple2: ClassName;

// Constructor function declaration
function #_System._tuple#0._#Make0() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_System._tuple#0._#Make0()) == ##_System._tuple#0._#Make0;
// Constructor $Is
axiom $Is(#_System._tuple#0._#Make0(), Tclass._System.Tuple0());
// Constructor literal
axiom #_System._tuple#0._#Make0() == Lit(#_System._tuple#0._#Make0());
}

const unique ##_System._tuple#0._#Make0: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_System._tuple#0._#Make0()) == ##_System._tuple#0._#Make0;
}

function _System.Tuple0.___hMake0_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _System.Tuple0.___hMake0_q(d) } 
  _System.Tuple0.___hMake0_q(d)
     <==> DatatypeCtorId(d) == ##_System._tuple#0._#Make0);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _System.Tuple0.___hMake0_q(d) } 
  _System.Tuple0.___hMake0_q(d) ==> d == #_System._tuple#0._#Make0());

function Tclass._System.Tuple0() : Ty
uses {
// Tclass._System.Tuple0 Tag
axiom Tag(Tclass._System.Tuple0()) == Tagclass._System.Tuple0
   && TagFamily(Tclass._System.Tuple0()) == tytagFamily$_tuple#0;
}

const unique Tagclass._System.Tuple0: TyTag;

// Box/unbox axiom for Tclass._System.Tuple0
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._System.Tuple0()) } 
  $IsBox(bx, Tclass._System.Tuple0())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._System.Tuple0()));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._System.Tuple0(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._System.Tuple0())
     ==> $IsAlloc(d, Tclass._System.Tuple0(), $h));

// Depth-one case-split function
function $IsA#_System.Tuple0(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_System.Tuple0(d) } 
  $IsA#_System.Tuple0(d) ==> _System.Tuple0.___hMake0_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _System.Tuple0.___hMake0_q(d), $Is(d, Tclass._System.Tuple0()) } 
  $Is(d, Tclass._System.Tuple0()) ==> _System.Tuple0.___hMake0_q(d));

// Datatype extensional equality declaration
function _System.Tuple0#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_System._tuple#0._#Make0
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple0#Equal(a, b) } 
  _System.Tuple0#Equal(a, b));

// Datatype extensionality axiom: _System._tuple#0
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple0#Equal(a, b) } 
  _System.Tuple0#Equal(a, b) <==> a == b);

const unique class._System.Tuple0: ClassName;

function Tclass._System.___hFunc2(Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hFunc2: TyTag;

// Tclass._System.___hFunc2 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc2(#$T0, #$T1, #$R) } 
  Tag(Tclass._System.___hFunc2(#$T0, #$T1, #$R)) == Tagclass._System.___hFunc2
     && TagFamily(Tclass._System.___hFunc2(#$T0, #$T1, #$R)) == tytagFamily$_#Func2);

function Tclass._System.___hFunc2_0(Ty) : Ty;

// Tclass._System.___hFunc2 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hFunc2_0(Tclass._System.___hFunc2(#$T0, #$T1, #$R)) == #$T0);

function Tclass._System.___hFunc2_1(Ty) : Ty;

// Tclass._System.___hFunc2 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hFunc2_1(Tclass._System.___hFunc2(#$T0, #$T1, #$R)) == #$T1);

function Tclass._System.___hFunc2_2(Ty) : Ty;

// Tclass._System.___hFunc2 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hFunc2_2(Tclass._System.___hFunc2(#$T0, #$T1, #$R)) == #$R);

// Box/unbox axiom for Tclass._System.___hFunc2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hFunc2(#$T0, #$T1, #$R)) } 
  $IsBox(bx, Tclass._System.___hFunc2(#$T0, #$T1, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hFunc2(#$T0, #$T1, #$R)));

function Handle2([Heap,Box,Box]Box, [Heap,Box,Box]bool, [Heap,Box,Box]Set) : HandleType;

function Apply2(Ty, Ty, Ty, Heap, HandleType, Box, Box) : Box;

function Requires2(Ty, Ty, Ty, Heap, HandleType, Box, Box) : bool;

function Reads2(Ty, Ty, Ty, Heap, HandleType, Box, Box) : Set;

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box]Box, 
    r: [Heap,Box,Box]bool, 
    rd: [Heap,Box,Box]Set, 
    bx0: Box, 
    bx1: Box :: 
  { Apply2(t0, t1, t2, heap, Handle2(h, r, rd), bx0, bx1) } 
  Apply2(t0, t1, t2, heap, Handle2(h, r, rd), bx0, bx1) == h[heap, bx0, bx1]);

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box]Box, 
    r: [Heap,Box,Box]bool, 
    rd: [Heap,Box,Box]Set, 
    bx0: Box, 
    bx1: Box :: 
  { Requires2(t0, t1, t2, heap, Handle2(h, r, rd), bx0, bx1) } 
  r[heap, bx0, bx1] ==> Requires2(t0, t1, t2, heap, Handle2(h, r, rd), bx0, bx1));

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box]Box, 
    r: [Heap,Box,Box]bool, 
    rd: [Heap,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx: Box :: 
  { Set#IsMember(Reads2(t0, t1, t2, heap, Handle2(h, r, rd), bx0, bx1), bx) } 
  Set#IsMember(Reads2(t0, t1, t2, heap, Handle2(h, r, rd), bx0, bx1), bx)
     == Set#IsMember(rd[heap, bx0, bx1], bx));

function {:inline} Requires2#canCall(t0: Ty, t1: Ty, t2: Ty, heap: Heap, f: HandleType, bx0: Box, bx1: Box) : bool
{
  true
}

function {:inline} Reads2#canCall(t0: Ty, t1: Ty, t2: Ty, heap: Heap, f: HandleType, bx0: Box, bx1: Box) : bool
{
  true
}

// frame axiom for Reads2
axiom (forall t0: Ty, t1: Ty, t2: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { $HeapSucc(h0, h1), Reads2(t0, t1, t2, h1, f, bx0, bx1) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads2(t0, t1, t2, h0, f, bx0, bx1), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads2(t0, t1, t2, h0, f, bx0, bx1) == Reads2(t0, t1, t2, h1, f, bx0, bx1));

// frame axiom for Reads2
axiom (forall t0: Ty, t1: Ty, t2: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { $HeapSucc(h0, h1), Reads2(t0, t1, t2, h1, f, bx0, bx1) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads2(t0, t1, t2, h1, f, bx0, bx1), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads2(t0, t1, t2, h0, f, bx0, bx1) == Reads2(t0, t1, t2, h1, f, bx0, bx1));

// frame axiom for Requires2
axiom (forall t0: Ty, t1: Ty, t2: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { $HeapSucc(h0, h1), Requires2(t0, t1, t2, h1, f, bx0, bx1) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads2(t0, t1, t2, h0, f, bx0, bx1), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires2(t0, t1, t2, h0, f, bx0, bx1) == Requires2(t0, t1, t2, h1, f, bx0, bx1));

// frame axiom for Requires2
axiom (forall t0: Ty, t1: Ty, t2: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { $HeapSucc(h0, h1), Requires2(t0, t1, t2, h1, f, bx0, bx1) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads2(t0, t1, t2, h1, f, bx0, bx1), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires2(t0, t1, t2, h0, f, bx0, bx1) == Requires2(t0, t1, t2, h1, f, bx0, bx1));

// frame axiom for Apply2
axiom (forall t0: Ty, t1: Ty, t2: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { $HeapSucc(h0, h1), Apply2(t0, t1, t2, h1, f, bx0, bx1) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads2(t0, t1, t2, h0, f, bx0, bx1), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply2(t0, t1, t2, h0, f, bx0, bx1) == Apply2(t0, t1, t2, h1, f, bx0, bx1));

// frame axiom for Apply2
axiom (forall t0: Ty, t1: Ty, t2: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { $HeapSucc(h0, h1), Apply2(t0, t1, t2, h1, f, bx0, bx1) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads2(t0, t1, t2, h1, f, bx0, bx1), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply2(t0, t1, t2, h0, f, bx0, bx1) == Apply2(t0, t1, t2, h1, f, bx0, bx1));

// empty-reads property for Reads2 
axiom (forall t0: Ty, t1: Ty, t2: Ty, heap: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { Reads2(t0, t1, t2, $OneHeap, f, bx0, bx1), $IsGoodHeap(heap) } 
    { Reads2(t0, t1, t2, heap, f, bx0, bx1) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
     ==> (Set#Equal(Reads2(t0, t1, t2, $OneHeap, f, bx0, bx1), Set#Empty(): Set)
       <==> Set#Equal(Reads2(t0, t1, t2, heap, f, bx0, bx1), Set#Empty(): Set)));

// empty-reads property for Requires2
axiom (forall t0: Ty, t1: Ty, t2: Ty, heap: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { Requires2(t0, t1, t2, $OneHeap, f, bx0, bx1), $IsGoodHeap(heap) } 
    { Requires2(t0, t1, t2, heap, f, bx0, bx1) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && Set#Equal(Reads2(t0, t1, t2, $OneHeap, f, bx0, bx1), Set#Empty(): Set)
     ==> Requires2(t0, t1, t2, $OneHeap, f, bx0, bx1)
       == Requires2(t0, t1, t2, heap, f, bx0, bx1));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty :: 
  { $Is(f, Tclass._System.___hFunc2(t0, t1, t2)) } 
  $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
     <==> (forall h: Heap, bx0: Box, bx1: Box :: 
      { Apply2(t0, t1, t2, h, f, bx0, bx1) } 
      $IsGoodHeap(h)
           && 
          $IsBox(bx0, t0)
           && $IsBox(bx1, t1)
           && Requires2(t0, t1, t2, h, f, bx0, bx1)
         ==> $IsBox(Apply2(t0, t1, t2, h, f, bx0, bx1), t2)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, u0: Ty, u1: Ty, u2: Ty :: 
  { $Is(f, Tclass._System.___hFunc2(t0, t1, t2)), $Is(f, Tclass._System.___hFunc2(u0, u1, u2)) } 
  $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && (forall bx: Box :: 
        { $IsBox(bx, u0) } { $IsBox(bx, t0) } 
        $IsBox(bx, u0) ==> $IsBox(bx, t0))
       && (forall bx: Box :: 
        { $IsBox(bx, u1) } { $IsBox(bx, t1) } 
        $IsBox(bx, u1) ==> $IsBox(bx, t1))
       && (forall bx: Box :: 
        { $IsBox(bx, t2) } { $IsBox(bx, u2) } 
        $IsBox(bx, t2) ==> $IsBox(bx, u2))
     ==> $Is(f, Tclass._System.___hFunc2(u0, u1, u2)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc2(t0, t1, t2), h) } 
  $IsGoodHeap(h)
     ==> ($IsAlloc(f, Tclass._System.___hFunc2(t0, t1, t2), h)
       <==> (forall bx0: Box, bx1: Box :: 
        { Apply2(t0, t1, t2, h, f, bx0, bx1) } { Reads2(t0, t1, t2, h, f, bx0, bx1) } 
        $IsBox(bx0, t0)
             && $IsAllocBox(bx0, t0, h)
             && 
            $IsBox(bx1, t1)
             && $IsAllocBox(bx1, t1, h)
             && Requires2(t0, t1, t2, h, f, bx0, bx1)
           ==> (forall r: ref :: 
            { Set#IsMember(Reads2(t0, t1, t2, h, f, bx0, bx1), $Box(r)) } 
            r != null && Set#IsMember(Reads2(t0, t1, t2, h, f, bx0, bx1), $Box(r))
               ==> $Unbox(read(h, r, alloc)): bool))));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc2(t0, t1, t2), h) } 
  $IsGoodHeap(h) && $IsAlloc(f, Tclass._System.___hFunc2(t0, t1, t2), h)
     ==> (forall bx0: Box, bx1: Box :: 
      { Apply2(t0, t1, t2, h, f, bx0, bx1) } 
      $IsAllocBox(bx0, t0, h)
           && $IsAllocBox(bx1, t1, h)
           && Requires2(t0, t1, t2, h, f, bx0, bx1)
         ==> $IsAllocBox(Apply2(t0, t1, t2, h, f, bx0, bx1), t2, h)));

function Tclass._System.___hPartialFunc2(Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hPartialFunc2: TyTag;

// Tclass._System.___hPartialFunc2 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R) } 
  Tag(Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
       == Tagclass._System.___hPartialFunc2
     && TagFamily(Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
       == tytagFamily$_#PartialFunc2);

function Tclass._System.___hPartialFunc2_0(Ty) : Ty;

// Tclass._System.___hPartialFunc2 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hPartialFunc2_0(Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
     == #$T0);

function Tclass._System.___hPartialFunc2_1(Ty) : Ty;

// Tclass._System.___hPartialFunc2 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hPartialFunc2_1(Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
     == #$T1);

function Tclass._System.___hPartialFunc2_2(Ty) : Ty;

// Tclass._System.___hPartialFunc2 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hPartialFunc2_2(Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hPartialFunc2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R)) } 
  $IsBox(bx, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R)));

// $Is axiom for subset type _System._#PartialFunc2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R)) } 
  $Is(f#0, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
     <==> $Is(f#0, Tclass._System.___hFunc2(#$T0, #$T1, #$R))
       && (forall x0#0: Box, x1#0: Box :: 
        $IsBox(x0#0, #$T0) && $IsBox(x1#0, #$T1)
           ==> Set#Equal(Reads2(#$T0, #$T1, #$R, $OneHeap, f#0, x0#0, x1#0), Set#Empty(): Set)));

// $IsAlloc axiom for subset type _System._#PartialFunc2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hFunc2(#$T0, #$T1, #$R), $h));

function Tclass._System.___hTotalFunc2(Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hTotalFunc2: TyTag;

// Tclass._System.___hTotalFunc2 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R) } 
  Tag(Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R))
       == Tagclass._System.___hTotalFunc2
     && TagFamily(Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R))
       == tytagFamily$_#TotalFunc2);

function Tclass._System.___hTotalFunc2_0(Ty) : Ty;

// Tclass._System.___hTotalFunc2 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hTotalFunc2_0(Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R))
     == #$T0);

function Tclass._System.___hTotalFunc2_1(Ty) : Ty;

// Tclass._System.___hTotalFunc2 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hTotalFunc2_1(Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R))
     == #$T1);

function Tclass._System.___hTotalFunc2_2(Ty) : Ty;

// Tclass._System.___hTotalFunc2 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hTotalFunc2_2(Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hTotalFunc2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R)) } 
  $IsBox(bx, Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R)));

// $Is axiom for subset type _System._#TotalFunc2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R)) } 
  $Is(f#0, Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R))
     <==> $Is(f#0, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
       && (forall x0#0: Box, x1#0: Box :: 
        $IsBox(x0#0, #$T0) && $IsBox(x1#0, #$T1)
           ==> Requires2(#$T0, #$T1, #$R, $OneHeap, f#0, x0#0, x1#0)));

// $IsAlloc axiom for subset type _System._#TotalFunc2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R), $h));

const unique class._module.__default: ClassName;

const unique class._module.Node?: ClassName;

function Tclass._module.Node?() : Ty
uses {
// Tclass._module.Node? Tag
axiom Tag(Tclass._module.Node?()) == Tagclass._module.Node?
   && TagFamily(Tclass._module.Node?()) == tytagFamily$Node;
}

const unique Tagclass._module.Node?: TyTag;

// Box/unbox axiom for Tclass._module.Node?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Node?()) } 
  $IsBox(bx, Tclass._module.Node?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Node?()));

// $Is axiom for class Node
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Node?()) } 
  $Is($o, Tclass._module.Node?())
     <==> $o == null || dtype($o) == Tclass._module.Node?());

// $IsAlloc axiom for class Node
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Node?(), $h) } 
  $IsAlloc($o, Tclass._module.Node?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.Node.next: Field
uses {
axiom FDim(_module.Node.next) == 0
   && FieldOfDecl(class._module.Node?, field$next) == _module.Node.next
   && !$IsGhostField(_module.Node.next);
}

// Node.next: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Node.next)): ref } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Node?()
     ==> $Is($Unbox(read($h, $o, _module.Node.next)): ref, Tclass._module.Node?()));

// Node.next: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Node.next)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Node?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Node.next)): ref, Tclass._module.Node?(), $h));

// function declaration for _module.Node.IsClosed
function _module.Node.IsClosed($heap: Heap, this: ref, S#0: Set) : bool
uses {
// definition axiom for _module.Node.IsClosed (revealed)
axiom {:id "id0"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, S#0: Set :: 
    { _module.Node.IsClosed($Heap, this, S#0), $IsGoodHeap($Heap) } 
    _module.Node.IsClosed#canCall($Heap, this, S#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Node())
           && $IsAlloc(this, Tclass._module.Node(), $Heap)
           && $Is(S#0, TSet(Tclass._module.Node?())))
       ==> _module.Node.IsClosed($Heap, this, S#0)
         == (
          Set#IsMember(S#0, $Box(this))
           && Set#IsMember(S#0, $Box(null))
           && (forall n#0: ref :: 
            { $Unbox(read($Heap, n#0, _module.Node.next)): ref } 
            $Is(n#0, Tclass._module.Node?())
               ==> 
              Set#IsMember(S#0, $Box(n#0))
                 && n#0 != null
                 && $Unbox(read($Heap, n#0, _module.Node.next)): ref != null
               ==> Set#IsMember(S#0, read($Heap, n#0, _module.Node.next)))));
}

function _module.Node.IsClosed#canCall($heap: Heap, this: ref, S#0: Set) : bool;

function Tclass._module.Node() : Ty
uses {
// Tclass._module.Node Tag
axiom Tag(Tclass._module.Node()) == Tagclass._module.Node
   && TagFamily(Tclass._module.Node()) == tytagFamily$Node;
}

const unique Tagclass._module.Node: TyTag;

// Box/unbox axiom for Tclass._module.Node
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Node()) } 
  $IsBox(bx, Tclass._module.Node())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Node()));

// frame axiom for _module.Node.IsClosed
axiom (forall $h0: Heap, $h1: Heap, this: ref, S#0: Set :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Node.IsClosed($h1, this, S#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Node())
       && (_module.Node.IsClosed#canCall($h0, this, S#0)
         || $Is(S#0, TSet(Tclass._module.Node?())))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && Set#IsMember(S#0, $Box($o))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Node.IsClosed($h0, this, S#0) == _module.Node.IsClosed($h1, this, S#0));

function _module.Node.IsClosed#requires(Heap, ref, Set) : bool;

// #requires axiom for _module.Node.IsClosed
axiom (forall $Heap: Heap, this: ref, S#0: Set :: 
  { _module.Node.IsClosed#requires($Heap, this, S#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Node())
       && $IsAlloc(this, Tclass._module.Node(), $Heap)
       && $Is(S#0, TSet(Tclass._module.Node?()))
     ==> _module.Node.IsClosed#requires($Heap, this, S#0) == true);

procedure {:verboseName "Node.IsClosed (well-formedness)"} CheckWellformed$$_module.Node.IsClosed(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    S#0: Set where $Is(S#0, TSet(Tclass._module.Node?())));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.IsClosed (well-formedness)"} CheckWellformed$$_module.Node.IsClosed(this: ref, S#0: Set)
{
  var $_ReadsFrame: [ref,Field]bool;
  var newtype$check#0: ref;
  var n#1: ref;
  var newtype$check#1: ref;
  var newtype$check#2: ref;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember(S#0, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (Set#IsMember(S#0, $Box(this)))
        {
            newtype$check#0 := null;
        }

        if (Set#IsMember(S#0, $Box(this)) && Set#IsMember(S#0, $Box(null)))
        {
            // Begin Comprehension WF check
            havoc n#1;
            if ($Is(n#1, Tclass._module.Node?()) && $IsAlloc(n#1, Tclass._module.Node?(), $Heap))
            {
                if (Set#IsMember(S#0, $Box(n#1)))
                {
                    newtype$check#1 := null;
                }

                if (Set#IsMember(S#0, $Box(n#1)) && n#1 != null)
                {
                    assert {:id "id1"} n#1 != null;
                    b$reqreads#0 := $_ReadsFrame[n#1, _module.Node.next];
                    newtype$check#2 := null;
                }

                if (Set#IsMember(S#0, $Box(n#1))
                   && n#1 != null
                   && $Unbox(read($Heap, n#1, _module.Node.next)): ref != null)
                {
                    assert {:id "id2"} n#1 != null;
                    b$reqreads#1 := $_ReadsFrame[n#1, _module.Node.next];
                }
            }

            // End Comprehension WF check
        }

        assume {:id "id3"} _module.Node.IsClosed($Heap, this, S#0)
           == (
            Set#IsMember(S#0, $Box(this))
             && Set#IsMember(S#0, $Box(null))
             && (forall n#2: ref :: 
              { $Unbox(read($Heap, n#2, _module.Node.next)): ref } 
              $Is(n#2, Tclass._module.Node?())
                 ==> 
                Set#IsMember(S#0, $Box(n#2))
                   && n#2 != null
                   && $Unbox(read($Heap, n#2, _module.Node.next)): ref != null
                 ==> Set#IsMember(S#0, read($Heap, n#2, _module.Node.next))));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Node.IsClosed($Heap, this, S#0), TBool);
        assert {:id "id4"} b$reqreads#0;
        assert {:id "id5"} b$reqreads#1;
        return;

        assume false;
    }
}



// function declaration for _module.Node.Nexxxt
function _module.Node.Nexxxt($ly: LayerType, $heap: Heap, this: ref, k#0: int, S#0: Set) : ref
uses {
// consequence axiom for _module.Node.Nexxxt
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, $Heap: Heap, this: ref, k#0: int, S#0: Set :: 
    { _module.Node.Nexxxt($ly, $Heap, this, k#0, S#0) } 
    _module.Node.Nexxxt#canCall($Heap, this, k#0, S#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Node())
           && $IsAlloc(this, Tclass._module.Node(), $Heap)
           && 
          $Is(S#0, TSet(Tclass._module.Node?()))
           && $IsAlloc(S#0, TSet(Tclass._module.Node?()), $Heap)
           && 
          _module.Node.IsClosed($Heap, this, S#0)
           && LitInt(0) <= k#0)
       ==> Set#IsMember(S#0, $Box(_module.Node.Nexxxt($ly, $Heap, this, k#0, S#0)))
         && $Is(_module.Node.Nexxxt($ly, $Heap, this, k#0, S#0), Tclass._module.Node?()));
// alloc consequence axiom for _module.Node.Nexxxt
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, $Heap: Heap, this: ref, k#0: int, S#0: Set :: 
    { $IsAlloc(_module.Node.Nexxxt($ly, $Heap, this, k#0, S#0), Tclass._module.Node?(), $Heap) } 
    _module.Node.Nexxxt#canCall($Heap, this, k#0, S#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && this != null
           && $IsAlloc(this, Tclass._module.Node(), $Heap)
           && 
          $Is(S#0, TSet(Tclass._module.Node?()))
           && $IsAlloc(S#0, TSet(Tclass._module.Node?()), $Heap)
           && 
          _module.Node.IsClosed($Heap, this, S#0)
           && LitInt(0) <= k#0)
       ==> $IsAlloc(_module.Node.Nexxxt($ly, $Heap, this, k#0, S#0), Tclass._module.Node?(), $Heap));
// definition axiom for _module.Node.Nexxxt (revealed)
axiom {:id "id6"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, $Heap: Heap, this: ref, k#0: int, S#0: Set :: 
    { _module.Node.Nexxxt($LS($ly), $Heap, this, k#0, S#0), $IsGoodHeap($Heap) } 
    _module.Node.Nexxxt#canCall($Heap, this, k#0, S#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Node())
           && $IsAlloc(this, Tclass._module.Node(), $Heap)
           && $Is(S#0, TSet(Tclass._module.Node?()))
           && 
          _module.Node.IsClosed($Heap, this, S#0)
           && LitInt(0) <= k#0)
       ==> (k#0 != LitInt(0)
           ==> _module.Node.Nexxxt#canCall($Heap, this, k#0 - 1, S#0)
             && (_module.Node.Nexxxt($ly, $Heap, this, k#0 - 1, S#0) != null
               ==> _module.Node.Nexxxt#canCall($Heap, this, k#0 - 1, S#0)))
         && _module.Node.Nexxxt($LS($ly), $Heap, this, k#0, S#0)
           == (if k#0 == LitInt(0)
             then this
             else (if _module.Node.Nexxxt($ly, $Heap, this, k#0 - 1, S#0) == null
               then null
               else $Unbox(read($Heap, _module.Node.Nexxxt($ly, $Heap, this, k#0 - 1, S#0), _module.Node.next)): ref)));
}

function _module.Node.Nexxxt#canCall($heap: Heap, this: ref, k#0: int, S#0: Set) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, $Heap: Heap, this: ref, k#0: int, S#0: Set :: 
  { _module.Node.Nexxxt($LS($ly), $Heap, this, k#0, S#0) } 
  _module.Node.Nexxxt($LS($ly), $Heap, this, k#0, S#0)
     == _module.Node.Nexxxt($ly, $Heap, this, k#0, S#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, $Heap: Heap, this: ref, k#0: int, S#0: Set :: 
  { _module.Node.Nexxxt(AsFuelBottom($ly), $Heap, this, k#0, S#0) } 
  _module.Node.Nexxxt($ly, $Heap, this, k#0, S#0)
     == _module.Node.Nexxxt($LZ, $Heap, this, k#0, S#0));

// frame axiom for _module.Node.Nexxxt
axiom (forall $ly: LayerType, $h0: Heap, $h1: Heap, this: ref, k#0: int, S#0: Set :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Node.Nexxxt($ly, $h1, this, k#0, S#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Node())
       && (_module.Node.Nexxxt#canCall($h0, this, k#0, S#0)
         || $Is(S#0, TSet(Tclass._module.Node?())))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && Set#IsMember(S#0, $Box($o))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Node.Nexxxt($ly, $h0, this, k#0, S#0)
       == _module.Node.Nexxxt($ly, $h1, this, k#0, S#0));

function _module.Node.Nexxxt#requires(LayerType, Heap, ref, int, Set) : bool;

// #requires axiom for _module.Node.Nexxxt
axiom (forall $ly: LayerType, $Heap: Heap, this: ref, k#0: int, S#0: Set :: 
  { _module.Node.Nexxxt#requires($ly, $Heap, this, k#0, S#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Node())
       && $IsAlloc(this, Tclass._module.Node(), $Heap)
       && $Is(S#0, TSet(Tclass._module.Node?()))
     ==> _module.Node.Nexxxt#requires($ly, $Heap, this, k#0, S#0)
       == (_module.Node.IsClosed($Heap, this, S#0) && LitInt(0) <= k#0));

procedure {:verboseName "Node.Nexxxt (well-formedness)"} CheckWellformed$$_module.Node.Nexxxt(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    k#0: int, 
    S#0: Set where $Is(S#0, TSet(Tclass._module.Node?())));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id7"} Set#IsMember(S#0, $Box(_module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#0, S#0)));



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.Nexxxt (well-formedness)"} CheckWellformed$$_module.Node.Nexxxt(this: ref, k#0: int, S#0: Set)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##S#0: Set;
  var b$reqreads#0: bool;
  var ##k#0: int;
  var ##S#1: Set;
  var ##k#1: int;
  var ##S#2: Set;
  var newtype$check#0: ref;
  var newtype$check#1: ref;
  var ##k#2: int;
  var ##S#3: Set;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember(S#0, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
    ##S#0 := S#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##S#0, TSet(Tclass._module.Node?()), $Heap);
    b$reqreads#0 := (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && Set#IsMember(##S#0, $Box($o))
         ==> $_ReadsFrame[$o, $f]);
    assume _module.Node.IsClosed#canCall($Heap, this, S#0);
    assume {:id "id8"} _module.Node.IsClosed($Heap, this, S#0);
    assume {:id "id9"} LitInt(0) <= k#0;
    assert {:id "id10"} b$reqreads#0;
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), Tclass._module.Node?());
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
        ##k#0 := k#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##k#0, TInt, $Heap);
        ##S#1 := S#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##S#1, TSet(Tclass._module.Node?()), $Heap);
        assert {:id "id11"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1)
           ==> _module.Node.IsClosed($Heap, this, ##S#1) || Set#IsMember(##S#1, $Box(this));
        assert {:id "id12"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1)
           ==> _module.Node.IsClosed($Heap, this, ##S#1) || Set#IsMember(##S#1, $Box(null));
        assert {:id "id13"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1)
           ==> _module.Node.IsClosed($Heap, this, ##S#1)
             || (forall n#0: ref :: 
              { $Unbox(read($Heap, n#0, _module.Node.next)): ref } 
              $Is(n#0, Tclass._module.Node?())
                 ==> 
                Set#IsMember(##S#1, $Box(n#0))
                   && n#0 != null
                   && $Unbox(read($Heap, n#0, _module.Node.next)): ref != null
                 ==> Set#IsMember(##S#1, read($Heap, n#0, _module.Node.next)));
        assert {:id "id14"} {:subsumption 0} LitInt(0) <= ##k#0;
        assume _module.Node.IsClosed($Heap, this, ##S#1) && LitInt(0) <= ##k#0;
        assert {:id "id15"} 0 <= k#0 || (Set#Subset(##S#1, S#0) && !Set#Subset(S#0, ##S#1)) || ##k#0 == k#0;
        assert {:id "id16"} (this == this && k#0 == k#0 && Set#Equal(S#0, S#0))
           || 
          (Set#Subset(##S#1, S#0) && !Set#Subset(S#0, ##S#1))
           || (Set#Equal(##S#1, S#0)
             && (##k#0 < k#0
               || (##k#0 == k#0 && Set#Subset(##S#1, S#0) && !Set#Subset(S#0, ##S#1))));
        assume (this == this && k#0 == k#0 && Set#Equal(S#0, S#0))
           || _module.Node.Nexxxt#canCall($Heap, this, k#0, S#0);
        assume {:id "id17"} Set#IsMember(S#0, $Box(_module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0)));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (k#0 == LitInt(0))
        {
            assume {:id "id18"} _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0) == this;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), Tclass._module.Node?());
            return;
        }
        else
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
            ##k#1 := k#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##k#1, TInt, $Heap);
            ##S#2 := S#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##S#2, TSet(Tclass._module.Node?()), $Heap);
            assert {:id "id19"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#2)
               ==> _module.Node.IsClosed($Heap, this, ##S#2) || Set#IsMember(##S#2, $Box(this));
            assert {:id "id20"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#2)
               ==> _module.Node.IsClosed($Heap, this, ##S#2) || Set#IsMember(##S#2, $Box(null));
            assert {:id "id21"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#2)
               ==> _module.Node.IsClosed($Heap, this, ##S#2)
                 || (forall n#1: ref :: 
                  { $Unbox(read($Heap, n#1, _module.Node.next)): ref } 
                  $Is(n#1, Tclass._module.Node?())
                     ==> 
                    Set#IsMember(##S#2, $Box(n#1))
                       && n#1 != null
                       && $Unbox(read($Heap, n#1, _module.Node.next)): ref != null
                     ==> Set#IsMember(##S#2, read($Heap, n#1, _module.Node.next)));
            assert {:id "id22"} {:subsumption 0} LitInt(0) <= ##k#1;
            assume _module.Node.IsClosed($Heap, this, ##S#2) && LitInt(0) <= ##k#1;
            b$reqreads#1 := (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && Set#IsMember(##S#2, $Box($o))
                 ==> $_ReadsFrame[$o, $f]);
            assert {:id "id23"} 0 <= k#0 || (Set#Subset(##S#2, S#0) && !Set#Subset(S#0, ##S#2)) || ##k#1 == k#0;
            assert {:id "id24"} (Set#Subset(##S#2, S#0) && !Set#Subset(S#0, ##S#2))
               || (Set#Equal(##S#2, S#0)
                 && (##k#1 < k#0
                   || (##k#1 == k#0 && Set#Subset(##S#2, S#0) && !Set#Subset(S#0, ##S#2))));
            assume _module.Node.Nexxxt#canCall($Heap, this, k#0 - 1, S#0);
            newtype$check#0 := null;
            if (_module.Node.Nexxxt($LS($LZ), $Heap, this, k#0 - 1, S#0) == null)
            {
                newtype$check#1 := null;
                assume {:id "id25"} _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0) == null;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), Tclass._module.Node?());
                assert {:id "id26"} b$reqreads#1;
                return;
            }
            else
            {
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                ##k#2 := k#0 - 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##k#2, TInt, $Heap);
                ##S#3 := S#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##S#3, TSet(Tclass._module.Node?()), $Heap);
                assert {:id "id27"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#3)
                   ==> _module.Node.IsClosed($Heap, this, ##S#3) || Set#IsMember(##S#3, $Box(this));
                assert {:id "id28"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#3)
                   ==> _module.Node.IsClosed($Heap, this, ##S#3) || Set#IsMember(##S#3, $Box(null));
                assert {:id "id29"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#3)
                   ==> _module.Node.IsClosed($Heap, this, ##S#3)
                     || (forall n#2: ref :: 
                      { $Unbox(read($Heap, n#2, _module.Node.next)): ref } 
                      $Is(n#2, Tclass._module.Node?())
                         ==> 
                        Set#IsMember(##S#3, $Box(n#2))
                           && n#2 != null
                           && $Unbox(read($Heap, n#2, _module.Node.next)): ref != null
                         ==> Set#IsMember(##S#3, read($Heap, n#2, _module.Node.next)));
                assert {:id "id30"} {:subsumption 0} LitInt(0) <= ##k#2;
                assume _module.Node.IsClosed($Heap, this, ##S#3) && LitInt(0) <= ##k#2;
                b$reqreads#2 := (forall $o: ref, $f: Field :: 
                  $o != null
                       && $Unbox(read($Heap, $o, alloc)): bool
                       && Set#IsMember(##S#3, $Box($o))
                     ==> $_ReadsFrame[$o, $f]);
                assert {:id "id31"} 0 <= k#0 || (Set#Subset(##S#3, S#0) && !Set#Subset(S#0, ##S#3)) || ##k#2 == k#0;
                assert {:id "id32"} (Set#Subset(##S#3, S#0) && !Set#Subset(S#0, ##S#3))
                   || (Set#Equal(##S#3, S#0)
                     && (##k#2 < k#0
                       || (##k#2 == k#0 && Set#Subset(##S#3, S#0) && !Set#Subset(S#0, ##S#3))));
                assume _module.Node.Nexxxt#canCall($Heap, this, k#0 - 1, S#0);
                assert {:id "id33"} _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0 - 1, S#0) != null;
                b$reqreads#3 := $_ReadsFrame[_module.Node.Nexxxt($LS($LZ), $Heap, this, k#0 - 1, S#0), _module.Node.next];
                assume {:id "id34"} _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0)
                   == $Unbox(read($Heap, 
                      _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0 - 1, S#0), 
                      _module.Node.next)): ref;
                assume _module.Node.Nexxxt#canCall($Heap, this, k#0 - 1, S#0);
                // CheckWellformedWithResult: any expression
                assume $Is(_module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), Tclass._module.Node?());
                assert {:id "id35"} b$reqreads#1;
                assert {:id "id36"} b$reqreads#2;
                assert {:id "id37"} b$reqreads#3;
                return;
            }
        }

        assume false;
    }
}



// function declaration for _module.Node.Reaches
function _module.Node.Reaches($heap: Heap, this: ref, sink#0: ref, S#0: Set) : bool
uses {
// consequence axiom for _module.Node.Reaches
axiom 2 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, sink#0: ref, S#0: Set :: 
    { _module.Node.Reaches($Heap, this, sink#0, S#0) } 
    _module.Node.Reaches#canCall($Heap, this, sink#0, S#0)
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Node())
           && $IsAlloc(this, Tclass._module.Node(), $Heap)
           && 
          $Is(sink#0, Tclass._module.Node())
           && $IsAlloc(sink#0, Tclass._module.Node(), $Heap)
           && 
          $Is(S#0, TSet(Tclass._module.Node?()))
           && $IsAlloc(S#0, TSet(Tclass._module.Node?()), $Heap)
           && _module.Node.IsClosed($Heap, this, S#0))
       ==> 
      _module.Node.Reaches($Heap, this, sink#0, S#0)
       ==> Set#IsMember(S#0, $Box(sink#0)));
// definition axiom for _module.Node.Reaches (revealed)
axiom {:id "id38"} 2 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, sink#0: ref, S#0: Set :: 
    { _module.Node.Reaches($Heap, this, sink#0, S#0), $IsGoodHeap($Heap) } 
    _module.Node.Reaches#canCall($Heap, this, sink#0, S#0)
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Node())
           && $IsAlloc(this, Tclass._module.Node(), $Heap)
           && $Is(sink#0, Tclass._module.Node())
           && $Is(S#0, TSet(Tclass._module.Node?()))
           && _module.Node.IsClosed($Heap, this, S#0))
       ==> (forall k#0: int :: 
          { _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0) } 
          LitInt(0) <= k#0 ==> _module.Node.Nexxxt#canCall($Heap, this, k#0, S#0))
         && _module.Node.Reaches($Heap, this, sink#0, S#0)
           == (exists k#0: int :: 
            { _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0) } 
            LitInt(0) <= k#0
               && _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0) == sink#0));
}

function _module.Node.Reaches#canCall($heap: Heap, this: ref, sink#0: ref, S#0: Set) : bool;

// frame axiom for _module.Node.Reaches
axiom (forall $h0: Heap, $h1: Heap, this: ref, sink#0: ref, S#0: Set :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Node.Reaches($h1, this, sink#0, S#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Node())
       && (_module.Node.Reaches#canCall($h0, this, sink#0, S#0)
         || ($Is(sink#0, Tclass._module.Node()) && $Is(S#0, TSet(Tclass._module.Node?()))))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && Set#IsMember(S#0, $Box($o))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Node.Reaches($h0, this, sink#0, S#0)
       == _module.Node.Reaches($h1, this, sink#0, S#0));

function _module.Node.Reaches#requires(Heap, ref, ref, Set) : bool;

// #requires axiom for _module.Node.Reaches
axiom (forall $Heap: Heap, this: ref, sink#0: ref, S#0: Set :: 
  { _module.Node.Reaches#requires($Heap, this, sink#0, S#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Node())
       && $IsAlloc(this, Tclass._module.Node(), $Heap)
       && $Is(sink#0, Tclass._module.Node())
       && $Is(S#0, TSet(Tclass._module.Node?()))
     ==> _module.Node.Reaches#requires($Heap, this, sink#0, S#0)
       == _module.Node.IsClosed($Heap, this, S#0));

procedure {:verboseName "Node.Reaches (well-formedness)"} CheckWellformed$$_module.Node.Reaches(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    sink#0: ref where $Is(sink#0, Tclass._module.Node()), 
    S#0: Set where $Is(S#0, TSet(Tclass._module.Node?())));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id39"} _module.Node.Reaches($Heap, this, sink#0, S#0)
     ==> Set#IsMember(S#0, $Box(sink#0));



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.Reaches (well-formedness)"} CheckWellformed$$_module.Node.Reaches(this: ref, sink#0: ref, S#0: Set)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##S#0: Set;
  var b$reqreads#0: bool;
  var ##sink#0: ref;
  var ##S#1: Set;
  var k#1: int;
  var ##k#0: int;
  var ##S#2: Set;
  var b$reqreads#1: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember(S#0, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
    ##S#0 := S#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##S#0, TSet(Tclass._module.Node?()), $Heap);
    b$reqreads#0 := (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && Set#IsMember(##S#0, $Box($o))
         ==> $_ReadsFrame[$o, $f]);
    assume _module.Node.IsClosed#canCall($Heap, this, S#0);
    assume {:id "id40"} _module.Node.IsClosed($Heap, this, S#0);
    assert {:id "id41"} b$reqreads#0;
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        if (*)
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
            ##sink#0 := sink#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##sink#0, Tclass._module.Node(), $Heap);
            ##S#1 := S#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##S#1, TSet(Tclass._module.Node?()), $Heap);
            assert {:id "id42"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1)
               ==> _module.Node.IsClosed($Heap, this, ##S#1) || Set#IsMember(##S#1, $Box(this));
            assert {:id "id43"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1)
               ==> _module.Node.IsClosed($Heap, this, ##S#1) || Set#IsMember(##S#1, $Box(null));
            assert {:id "id44"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1)
               ==> _module.Node.IsClosed($Heap, this, ##S#1)
                 || (forall n#0: ref :: 
                  { $Unbox(read($Heap, n#0, _module.Node.next)): ref } 
                  $Is(n#0, Tclass._module.Node?())
                     ==> 
                    Set#IsMember(##S#1, $Box(n#0))
                       && n#0 != null
                       && $Unbox(read($Heap, n#0, _module.Node.next)): ref != null
                     ==> Set#IsMember(##S#1, read($Heap, n#0, _module.Node.next)));
            assume _module.Node.IsClosed($Heap, this, ##S#1);
            assert {:id "id45"} (this == this && sink#0 == sink#0 && Set#Equal(S#0, S#0))
               || 
              (Set#Subset(##S#1, S#0) && !Set#Subset(S#0, ##S#1))
               || (Set#Equal(##S#1, S#0)
                 && ((##sink#0 == null && sink#0 != null)
                   || ((##sink#0 != null <==> sink#0 != null)
                     && 
                    Set#Subset(##S#1, S#0)
                     && !Set#Subset(S#0, ##S#1))));
            assume (this == this && sink#0 == sink#0 && Set#Equal(S#0, S#0))
               || _module.Node.Reaches#canCall($Heap, this, sink#0, S#0);
            assume {:id "id46"} _module.Node.Reaches($Heap, this, sink#0, S#0);
            assume {:id "id47"} Set#IsMember(S#0, $Box(sink#0));
        }
        else
        {
            assume {:id "id48"} _module.Node.Reaches($Heap, this, sink#0, S#0)
               ==> Set#IsMember(S#0, $Box(sink#0));
        }

        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        // Begin Comprehension WF check
        havoc k#1;
        if (true)
        {
            if (LitInt(0) <= k#1)
            {
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                ##k#0 := k#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##k#0, TInt, $Heap);
                ##S#2 := S#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##S#2, TSet(Tclass._module.Node?()), $Heap);
                assert {:id "id49"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#2)
                   ==> _module.Node.IsClosed($Heap, this, ##S#2) || Set#IsMember(##S#2, $Box(this));
                assert {:id "id50"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#2)
                   ==> _module.Node.IsClosed($Heap, this, ##S#2) || Set#IsMember(##S#2, $Box(null));
                assert {:id "id51"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#2)
                   ==> _module.Node.IsClosed($Heap, this, ##S#2)
                     || (forall n#1: ref :: 
                      { $Unbox(read($Heap, n#1, _module.Node.next)): ref } 
                      $Is(n#1, Tclass._module.Node?())
                         ==> 
                        Set#IsMember(##S#2, $Box(n#1))
                           && n#1 != null
                           && $Unbox(read($Heap, n#1, _module.Node.next)): ref != null
                         ==> Set#IsMember(##S#2, read($Heap, n#1, _module.Node.next)));
                assert {:id "id52"} {:subsumption 0} LitInt(0) <= ##k#0;
                assume _module.Node.IsClosed($Heap, this, ##S#2) && LitInt(0) <= ##k#0;
                b$reqreads#1 := (forall $o: ref, $f: Field :: 
                  $o != null
                       && $Unbox(read($Heap, $o, alloc)): bool
                       && Set#IsMember(##S#2, $Box($o))
                     ==> $_ReadsFrame[$o, $f]);
                assume _module.Node.Nexxxt#canCall($Heap, this, k#1, S#0);
            }
        }

        // End Comprehension WF check
        assume {:id "id53"} _module.Node.Reaches($Heap, this, sink#0, S#0)
           == (exists k#2: int :: 
            { _module.Node.Nexxxt($LS($LZ), $Heap, this, k#2, S#0) } 
            LitInt(0) <= k#2
               && _module.Node.Nexxxt($LS($LZ), $Heap, this, k#2, S#0) == sink#0);
        assume (forall k#2: int :: 
          { _module.Node.Nexxxt($LS($LZ), $Heap, this, k#2, S#0) } 
          LitInt(0) <= k#2 ==> _module.Node.Nexxxt#canCall($Heap, this, k#2, S#0));
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Node.Reaches($Heap, this, sink#0, S#0), TBool);
        assert {:id "id54"} b$reqreads#1;
        return;

        assume false;
    }
}



procedure {:verboseName "Node.Cyclic (well-formedness)"} CheckWellFormed$$_module.Node.Cyclic(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    S#0: Set
       where $Is(S#0, TSet(Tclass._module.Node?()))
         && $IsAlloc(S#0, TSet(Tclass._module.Node?()), $Heap))
   returns (reachesCycle#0: bool);
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.Cyclic (well-formedness)"} CheckWellFormed$$_module.Node.Cyclic(this: ref, S#0: Set) returns (reachesCycle#0: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##S#0: Set;
  var n#0: ref;
  var ##sink#0: ref;
  var ##S#1: Set;
  var newtype$check#0: ref;
  var ##sink#1: ref;
  var ##S#2: Set;


    // AddMethodImpl: Cyclic, CheckWellFormed$$_module.Node.Cyclic
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
    ##S#0 := S#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##S#0, TSet(Tclass._module.Node?()), $Heap);
    assume _module.Node.IsClosed#canCall($Heap, this, S#0);
    assume {:id "id55"} _module.Node.IsClosed($Heap, this, S#0);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc reachesCycle#0;
    // Begin Comprehension WF check
    havoc n#0;
    if ($Is(n#0, Tclass._module.Node()) && $IsAlloc(n#0, Tclass._module.Node(), $Heap))
    {
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
        ##sink#0 := n#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##sink#0, Tclass._module.Node(), $Heap);
        ##S#1 := S#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##S#1, TSet(Tclass._module.Node?()), $Heap);
        assert {:id "id56"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1)
           ==> _module.Node.IsClosed($Heap, this, ##S#1) || Set#IsMember(##S#1, $Box(this));
        assert {:id "id57"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1)
           ==> _module.Node.IsClosed($Heap, this, ##S#1) || Set#IsMember(##S#1, $Box(null));
        assert {:id "id58"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1)
           ==> _module.Node.IsClosed($Heap, this, ##S#1)
             || (forall n#1: ref :: 
              { $Unbox(read($Heap, n#1, _module.Node.next)): ref } 
              $Is(n#1, Tclass._module.Node?())
                 ==> 
                Set#IsMember(##S#1, $Box(n#1))
                   && n#1 != null
                   && $Unbox(read($Heap, n#1, _module.Node.next)): ref != null
                 ==> Set#IsMember(##S#1, read($Heap, n#1, _module.Node.next)));
        assume _module.Node.IsClosed($Heap, this, ##S#1);
        assume _module.Node.Reaches#canCall($Heap, this, n#0, S#0);
        if (_module.Node.Reaches($Heap, this, n#0, S#0))
        {
            assert {:id "id59"} n#0 != null;
            newtype$check#0 := null;
        }

        if (_module.Node.Reaches($Heap, this, n#0, S#0)
           && $Unbox(read($Heap, n#0, _module.Node.next)): ref != null)
        {
            assert {:id "id60"} n#0 != null;
            assert {:id "id61"} $Unbox(read($Heap, n#0, _module.Node.next)): ref != null;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox(read($Heap, n#0, _module.Node.next), Tclass._module.Node?(), $Heap);
            ##sink#1 := n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##sink#1, Tclass._module.Node(), $Heap);
            ##S#2 := S#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##S#2, TSet(Tclass._module.Node?()), $Heap);
            assert {:id "id62"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, $Unbox(read($Heap, n#0, _module.Node.next)): ref, ##S#2)
               ==> _module.Node.IsClosed($Heap, $Unbox(read($Heap, n#0, _module.Node.next)): ref, ##S#2)
                 || Set#IsMember(##S#2, read($Heap, n#0, _module.Node.next));
            assert {:id "id63"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, $Unbox(read($Heap, n#0, _module.Node.next)): ref, ##S#2)
               ==> _module.Node.IsClosed($Heap, $Unbox(read($Heap, n#0, _module.Node.next)): ref, ##S#2)
                 || Set#IsMember(##S#2, $Box(null));
            assert {:id "id64"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, $Unbox(read($Heap, n#0, _module.Node.next)): ref, ##S#2)
               ==> _module.Node.IsClosed($Heap, $Unbox(read($Heap, n#0, _module.Node.next)): ref, ##S#2)
                 || (forall n#2: ref :: 
                  { $Unbox(read($Heap, n#2, _module.Node.next)): ref } 
                  $Is(n#2, Tclass._module.Node?())
                     ==> 
                    Set#IsMember(##S#2, $Box(n#2))
                       && n#2 != null
                       && $Unbox(read($Heap, n#2, _module.Node.next)): ref != null
                     ==> Set#IsMember(##S#2, read($Heap, n#2, _module.Node.next)));
            assume _module.Node.IsClosed($Heap, $Unbox(read($Heap, n#0, _module.Node.next)): ref, ##S#2);
            assume _module.Node.Reaches#canCall($Heap, $Unbox(read($Heap, n#0, _module.Node.next)): ref, n#0, S#0);
        }
    }

    // End Comprehension WF check
    assume {:id "id65"} reachesCycle#0
       <==> (exists n#3: ref :: 
        { $Unbox(read($Heap, n#3, _module.Node.next)): ref } 
          { _module.Node.Reaches($Heap, this, n#3, S#0) } 
        $Is(n#3, Tclass._module.Node())
           && $IsAlloc(n#3, Tclass._module.Node(), $Heap)
           && 
          _module.Node.Reaches($Heap, this, n#3, S#0)
           && $Unbox(read($Heap, n#3, _module.Node.next)): ref != null
           && _module.Node.Reaches($Heap, $Unbox(read($Heap, n#3, _module.Node.next)): ref, n#3, S#0));
}



procedure {:verboseName "Node.Cyclic (call)"} Call$$_module.Node.Cyclic(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    S#0: Set
       where $Is(S#0, TSet(Tclass._module.Node?()))
         && $IsAlloc(S#0, TSet(Tclass._module.Node?()), $Heap))
   returns (reachesCycle#0: bool);
  // user-defined preconditions
  requires {:id "id66"} _module.Node.IsClosed#canCall($Heap, this, S#0)
     ==> _module.Node.IsClosed($Heap, this, S#0) || Set#IsMember(S#0, $Box(this));
  requires {:id "id67"} _module.Node.IsClosed#canCall($Heap, this, S#0)
     ==> _module.Node.IsClosed($Heap, this, S#0) || Set#IsMember(S#0, $Box(null));
  requires {:id "id68"} _module.Node.IsClosed#canCall($Heap, this, S#0)
     ==> _module.Node.IsClosed($Heap, this, S#0)
       || (forall n#4: ref :: 
        { $Unbox(read($Heap, n#4, _module.Node.next)): ref } 
        $Is(n#4, Tclass._module.Node?())
           ==> 
          Set#IsMember(S#0, $Box(n#4))
             && n#4 != null
             && $Unbox(read($Heap, n#4, _module.Node.next)): ref != null
           ==> Set#IsMember(S#0, read($Heap, n#4, _module.Node.next)));
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall n#3: ref :: 
    { $Unbox(read($Heap, n#3, _module.Node.next)): ref } 
      { _module.Node.Reaches($Heap, this, n#3, S#0) } 
    $Is(n#3, Tclass._module.Node())
       ==> _module.Node.Reaches#canCall($Heap, this, n#3, S#0)
         && (_module.Node.Reaches($Heap, this, n#3, S#0)
           ==> 
          $Unbox(read($Heap, n#3, _module.Node.next)): ref != null
           ==> _module.Node.Reaches#canCall($Heap, $Unbox(read($Heap, n#3, _module.Node.next)): ref, n#3, S#0)));
  ensures {:id "id69"} reachesCycle#0
     <==> (exists n#3: ref :: 
      { $Unbox(read($Heap, n#3, _module.Node.next)): ref } 
        { _module.Node.Reaches($Heap, this, n#3, S#0) } 
      $Is(n#3, Tclass._module.Node())
         && $IsAlloc(n#3, Tclass._module.Node(), $Heap)
         && 
        _module.Node.Reaches($Heap, this, n#3, S#0)
         && $Unbox(read($Heap, n#3, _module.Node.next)): ref != null
         && _module.Node.Reaches($Heap, $Unbox(read($Heap, n#3, _module.Node.next)): ref, n#3, S#0));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Node.Cyclic (correctness)"} Impl$$_module.Node.Cyclic(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    S#0: Set
       where $Is(S#0, TSet(Tclass._module.Node?()))
         && $IsAlloc(S#0, TSet(Tclass._module.Node?()), $Heap))
   returns (reachesCycle#0: bool, $_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id70"} _module.Node.IsClosed#canCall($Heap, this, S#0)
     && 
    _module.Node.IsClosed($Heap, this, S#0)
     && 
    Set#IsMember(S#0, $Box(this))
     && Set#IsMember(S#0, $Box(null))
     && (forall n#5: ref :: 
      { $Unbox(read($Heap, n#5, _module.Node.next)): ref } 
      $Is(n#5, Tclass._module.Node?())
         ==> 
        Set#IsMember(S#0, $Box(n#5))
           && n#5 != null
           && $Unbox(read($Heap, n#5, _module.Node.next)): ref != null
         ==> Set#IsMember(S#0, read($Heap, n#5, _module.Node.next)));
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall n#3: ref :: 
    { $Unbox(read($Heap, n#3, _module.Node.next)): ref } 
      { _module.Node.Reaches($Heap, this, n#3, S#0) } 
    $Is(n#3, Tclass._module.Node())
       ==> _module.Node.Reaches#canCall($Heap, this, n#3, S#0)
         && (_module.Node.Reaches($Heap, this, n#3, S#0)
           ==> 
          $Unbox(read($Heap, n#3, _module.Node.next)): ref != null
           ==> _module.Node.Reaches#canCall($Heap, $Unbox(read($Heap, n#3, _module.Node.next)): ref, n#3, S#0)));
  ensures {:id "id71"} reachesCycle#0
     <==> (exists n#3: ref :: 
      { $Unbox(read($Heap, n#3, _module.Node.next)): ref } 
        { _module.Node.Reaches($Heap, this, n#3, S#0) } 
      $Is(n#3, Tclass._module.Node())
         && $IsAlloc(n#3, Tclass._module.Node(), $Heap)
         && 
        _module.Node.Reaches($Heap, this, n#3, S#0)
         && $Unbox(read($Heap, n#3, _module.Node.next)): ref != null
         && _module.Node.Reaches($Heap, $Unbox(read($Heap, n#3, _module.Node.next)): ref, n#3, S#0));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.Cyclic (correctness)"} Impl$$_module.Node.Cyclic(this: ref, S#0: Set) returns (reachesCycle#0: bool, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var A#0: int;
  var B#0: int;
  var $rhs##0: int;
  var $rhs##1: int;
  var S##0: Set;
  var tortoise#0: ref
     where $Is(tortoise#0, Tclass._module.Node?())
       && $IsAlloc(tortoise#0, Tclass._module.Node?(), $Heap);
  var hare#0: ref
     where $Is(hare#0, Tclass._module.Node?())
       && $IsAlloc(hare#0, Tclass._module.Node?(), $Heap);
  var $rhs#0: ref;
  var $rhs#1: ref;
  var t#0: int;
  var h#0: int;
  var $rhs#2: int;
  var $rhs#3: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var newtype$check#1: ref;
  var ##k#0: int;
  var ##S#3: Set;
  var ##k#1: int;
  var ##S#4: Set;
  var k#0: int;
  var ##k#2: int;
  var ##S#5: Set;
  var ##k#3: int;
  var ##S#6: Set;
  var $decr$loop#00: int;
  var newtype$check#0_0: ref;
  var newtype$check#0_1: ref;
  var distanceToNull#0_0_0: int;
  var newtype$check#0_0_0: ref;
  var n##0_0_0: int;
  var S##0_0_0: Set;
  var k#0_0_0: int;
  var l#0_0_0: int;
  var ##k#0_0_0: int;
  var ##S#0_0_0: Set;
  var newtype$check#0_0_1: ref;
  var ##k#0_0_1: int;
  var ##S#0_0_1: Set;
  var newtype$check#0_0_2: ref;
  var ##k#0_0_2: int;
  var ##S#0_0_2: Set;
  var ##k#0_0_3: int;
  var ##S#0_0_3: Set;
  var ##k#0_0_4: int;
  var ##S#0_0_4: Set;
  var d##0_0: int;
  var S##0_0: Set;
  var ##k#0_0: int;
  var ##S#0_0: Set;
  var newtype$check#0_2: ref;
  var $rhs#0_0: ref;
  var $rhs#0_1: int;
  var $rhs#0_2: ref;
  var $rhs#0_3: int;
  var a##0_0: int;
  var b##0_0: int;
  var S##0_1: Set;
  var d##0: int;
  var S##1: Set;
  var x##0: int;
  var y##0: int;
  var S##2: Set;
  var ##sink#2: ref;
  var ##S#7: Set;

    // AddMethodImpl: Cyclic, Impl$$_module.Node.Cyclic
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(158,34)
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    S##0 := S#0;
    call {:id "id72"} $rhs##0, $rhs##1 := Call$$_module.Node.AnalyzeList(this, S##0);
    // TrCallStmt: After ProcessCallStmt
    A#0 := $rhs##0;
    B#0 := $rhs##1;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(159,23)
    assume true;
    assume true;
    assume true;
    $rhs#0 := this;
    assume true;
    $rhs#1 := $Unbox(read($Heap, this, _module.Node.next)): ref;
    tortoise#0 := $rhs#0;
    hare#0 := $rhs#1;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(160,20)
    assume true;
    assume true;
    assume true;
    $rhs#2 := LitInt(0);
    assume true;
    $rhs#3 := LitInt(1);
    t#0 := $rhs#2;
    h#0 := $rhs#3;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(161,5)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := A#0 + B#0 - t#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id84"} $w$loop#0 ==> tortoise#0 != null;
      invariant {:id "id85"} $w$loop#0 ==> Set#IsMember(S#0, $Box(tortoise#0));
      invariant {:id "id86"} $w$loop#0 ==> Set#IsMember(S#0, $Box(hare#0));
      free invariant $w$loop#0
         ==> 
        LitInt(0) <= t#0 && t#0 < h#0
         ==> _module.Node.Nexxxt#canCall($Heap, this, t#0, S#0)
           && (_module.Node.Nexxxt($LS($LZ), $Heap, this, t#0, S#0) == tortoise#0
             ==> _module.Node.Nexxxt#canCall($Heap, this, h#0, S#0));
      invariant {:id "id96"} $w$loop#0 ==> LitInt(0) <= t#0;
      invariant {:id "id97"} $w$loop#0 ==> t#0 < h#0;
      invariant {:id "id98"} $w$loop#0
         ==> _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, t#0, S#0) == tortoise#0;
      invariant {:id "id99"} $w$loop#0
         ==> _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, h#0, S#0) == hare#0;
      free invariant true;
      invariant {:id "id101"} $w$loop#0 ==> h#0 == 1 + Mul(LitInt(2), t#0);
      invariant {:id "id102"} $w$loop#0 ==> t#0 <= A#0 + B#0;
      free invariant $w$loop#0
         ==> (forall k#1: int, _t#0#0: int :: 
          { _module.Node.Nexxxt($LS($LZ), $Heap, this, _t#0#0, S#0), _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0) } 
            { _module.Node.Nexxxt($LS($LZ), $Heap, this, _t#0#0, S#0), Mul(2, k#1) } 
          _t#0#0 == 1 + Mul(LitInt(2), k#1)
             ==> 
            LitInt(0) <= k#1
             ==> 
            k#1 < t#0
             ==> _module.Node.Nexxxt#canCall($Heap, this, k#1, S#0)
               && _module.Node.Nexxxt#canCall($Heap, this, _t#0#0, S#0));
      invariant {:id "id112"} $w$loop#0
         ==> (forall k#1: int, _t#0#0: int :: 
          { _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, _t#0#0, S#0), _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#1, S#0) } 
            { _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, _t#0#0, S#0), Mul(2, k#1) } 
          _t#0#0 == 1 + Mul(LitInt(2), k#1)
             ==> 
            LitInt(0) <= k#1 && k#1 < t#0
             ==> _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#1, S#0)
               != _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, _t#0#0, S#0));
      free invariant {:id "id113"} $w$loop#0
         ==> (forall k#1: int, _t#0#0: int :: 
          { _module.Node.Nexxxt($LS($LZ), $Heap, this, _t#0#0, S#0), _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0) } 
            { _module.Node.Nexxxt($LS($LZ), $Heap, this, _t#0#0, S#0), Mul(2, k#1) } 
          _t#0#0 == 1 + Mul(LitInt(2), k#1)
             ==> 
            LitInt(0) <= k#1 && k#1 < t#0
             ==> _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0)
               != _module.Node.Nexxxt($LS($LZ), $Heap, this, _t#0#0, S#0));
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o]);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant A#0 + B#0 - t#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            newtype$check#1 := null;
            if (tortoise#0 != null)
            {
            }

            if (tortoise#0 != null && Set#IsMember(S#0, $Box(tortoise#0)))
            {
            }

            assume true;
            assume {:id "id83"} tortoise#0 != null
               && Set#IsMember(S#0, $Box(tortoise#0))
               && Set#IsMember(S#0, $Box(hare#0));
            if (LitInt(0) <= t#0)
            {
            }

            if (LitInt(0) <= t#0 && t#0 < h#0)
            {
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                ##k#0 := t#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##k#0, TInt, $Heap);
                ##S#3 := S#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##S#3, TSet(Tclass._module.Node?()), $Heap);
                assert {:id "id87"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#3)
                   ==> _module.Node.IsClosed($Heap, this, ##S#3) || Set#IsMember(##S#3, $Box(this));
                assert {:id "id88"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#3)
                   ==> _module.Node.IsClosed($Heap, this, ##S#3) || Set#IsMember(##S#3, $Box(null));
                assert {:id "id89"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#3)
                   ==> _module.Node.IsClosed($Heap, this, ##S#3)
                     || (forall n#6: ref :: 
                      { $Unbox(read($Heap, n#6, _module.Node.next)): ref } 
                      $Is(n#6, Tclass._module.Node?())
                         ==> 
                        Set#IsMember(##S#3, $Box(n#6))
                           && n#6 != null
                           && $Unbox(read($Heap, n#6, _module.Node.next)): ref != null
                         ==> Set#IsMember(##S#3, read($Heap, n#6, _module.Node.next)));
                assert {:id "id90"} {:subsumption 0} LitInt(0) <= ##k#0;
                assume _module.Node.Nexxxt#canCall($Heap, this, t#0, S#0);
            }

            if (LitInt(0) <= t#0
               && t#0 < h#0
               && _module.Node.Nexxxt($LS($LZ), $Heap, this, t#0, S#0) == tortoise#0)
            {
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                ##k#1 := h#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##k#1, TInt, $Heap);
                ##S#4 := S#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##S#4, TSet(Tclass._module.Node?()), $Heap);
                assert {:id "id91"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#4)
                   ==> _module.Node.IsClosed($Heap, this, ##S#4) || Set#IsMember(##S#4, $Box(this));
                assert {:id "id92"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#4)
                   ==> _module.Node.IsClosed($Heap, this, ##S#4) || Set#IsMember(##S#4, $Box(null));
                assert {:id "id93"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#4)
                   ==> _module.Node.IsClosed($Heap, this, ##S#4)
                     || (forall n#7: ref :: 
                      { $Unbox(read($Heap, n#7, _module.Node.next)): ref } 
                      $Is(n#7, Tclass._module.Node?())
                         ==> 
                        Set#IsMember(##S#4, $Box(n#7))
                           && n#7 != null
                           && $Unbox(read($Heap, n#7, _module.Node.next)): ref != null
                         ==> Set#IsMember(##S#4, read($Heap, n#7, _module.Node.next)));
                assert {:id "id94"} {:subsumption 0} LitInt(0) <= ##k#1;
                assume _module.Node.Nexxxt#canCall($Heap, this, h#0, S#0);
            }

            assume LitInt(0) <= t#0 && t#0 < h#0
               ==> _module.Node.Nexxxt#canCall($Heap, this, t#0, S#0)
                 && (_module.Node.Nexxxt($LS($LZ), $Heap, this, t#0, S#0) == tortoise#0
                   ==> _module.Node.Nexxxt#canCall($Heap, this, h#0, S#0));
            assume {:id "id95"} LitInt(0) <= t#0
               && t#0 < h#0
               && _module.Node.Nexxxt($LS($LZ), $Heap, this, t#0, S#0) == tortoise#0
               && _module.Node.Nexxxt($LS($LZ), $Heap, this, h#0, S#0) == hare#0;
            if (h#0 == 1 + Mul(LitInt(2), t#0))
            {
            }

            assume true;
            assume {:id "id100"} h#0 == 1 + Mul(LitInt(2), t#0) && t#0 <= A#0 + B#0;
            // Begin Comprehension WF check
            havoc k#0;
            if (true)
            {
                if (LitInt(0) <= k#0)
                {
                }

                if (LitInt(0) <= k#0 && k#0 < t#0)
                {
                    // assume allocatedness for receiver argument to function
                    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                    ##k#2 := k#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##k#2, TInt, $Heap);
                    ##S#5 := S#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##S#5, TSet(Tclass._module.Node?()), $Heap);
                    assert {:id "id103"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#5)
                       ==> _module.Node.IsClosed($Heap, this, ##S#5) || Set#IsMember(##S#5, $Box(this));
                    assert {:id "id104"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#5)
                       ==> _module.Node.IsClosed($Heap, this, ##S#5) || Set#IsMember(##S#5, $Box(null));
                    assert {:id "id105"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#5)
                       ==> _module.Node.IsClosed($Heap, this, ##S#5)
                         || (forall n#8: ref :: 
                          { $Unbox(read($Heap, n#8, _module.Node.next)): ref } 
                          $Is(n#8, Tclass._module.Node?())
                             ==> 
                            Set#IsMember(##S#5, $Box(n#8))
                               && n#8 != null
                               && $Unbox(read($Heap, n#8, _module.Node.next)): ref != null
                             ==> Set#IsMember(##S#5, read($Heap, n#8, _module.Node.next)));
                    assert {:id "id106"} {:subsumption 0} LitInt(0) <= ##k#2;
                    assume _module.Node.Nexxxt#canCall($Heap, this, k#0, S#0);
                    // assume allocatedness for receiver argument to function
                    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                    ##k#3 := 1 + Mul(LitInt(2), k#0);
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##k#3, TInt, $Heap);
                    ##S#6 := S#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##S#6, TSet(Tclass._module.Node?()), $Heap);
                    assert {:id "id107"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#6)
                       ==> _module.Node.IsClosed($Heap, this, ##S#6) || Set#IsMember(##S#6, $Box(this));
                    assert {:id "id108"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#6)
                       ==> _module.Node.IsClosed($Heap, this, ##S#6) || Set#IsMember(##S#6, $Box(null));
                    assert {:id "id109"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#6)
                       ==> _module.Node.IsClosed($Heap, this, ##S#6)
                         || (forall n#9: ref :: 
                          { $Unbox(read($Heap, n#9, _module.Node.next)): ref } 
                          $Is(n#9, Tclass._module.Node?())
                             ==> 
                            Set#IsMember(##S#6, $Box(n#9))
                               && n#9 != null
                               && $Unbox(read($Heap, n#9, _module.Node.next)): ref != null
                             ==> Set#IsMember(##S#6, read($Heap, n#9, _module.Node.next)));
                    assert {:id "id110"} {:subsumption 0} LitInt(0) <= ##k#3;
                    assume _module.Node.Nexxxt#canCall($Heap, this, 1 + Mul(LitInt(2), k#0), S#0);
                }
            }

            // End Comprehension WF check
            assume (forall k#1: int, _t#0#0: int :: 
              { _module.Node.Nexxxt($LS($LZ), $Heap, this, _t#0#0, S#0), _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0) } 
                { _module.Node.Nexxxt($LS($LZ), $Heap, this, _t#0#0, S#0), Mul(2, k#1) } 
              _t#0#0 == 1 + Mul(LitInt(2), k#1)
                 ==> 
                LitInt(0) <= k#1
                 ==> 
                k#1 < t#0
                 ==> _module.Node.Nexxxt#canCall($Heap, this, k#1, S#0)
                   && _module.Node.Nexxxt#canCall($Heap, this, _t#0#0, S#0));
            assume {:id "id111"} (forall k#1: int, _t#0#0: int :: 
              { _module.Node.Nexxxt($LS($LZ), $Heap, this, _t#0#0, S#0), _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0) } 
                { _module.Node.Nexxxt($LS($LZ), $Heap, this, _t#0#0, S#0), Mul(2, k#1) } 
              _t#0#0 == 1 + Mul(LitInt(2), k#1)
                 ==> 
                LitInt(0) <= k#1 && k#1 < t#0
                 ==> _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0)
                   != _module.Node.Nexxxt($LS($LZ), $Heap, this, _t#0#0, S#0));
            assume true;
            assume false;
        }

        assume true;
        if (hare#0 == tortoise#0)
        {
            break;
        }

        $decr$loop#00 := A#0 + B#0 - t#0;
        push;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(169,7)
        newtype$check#0_0 := null;
        if (hare#0 != null)
        {
            assert {:id "id114"} hare#0 != null;
            newtype$check#0_1 := null;
        }

        assume true;
        if (hare#0 == null || $Unbox(read($Heap, hare#0, _module.Node.next)): ref == null)
        {
            push;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(170,34)
            assume true;
            newtype$check#0_0_0 := null;
            if (hare#0 == null)
            {
            }
            else
            {
            }

            assume true;
            distanceToNull#0_0_0 := (if hare#0 == null then h#0 else h#0 + 1);
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(171,34)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            assume true;
            // ProcessCallStmt: CheckSubrange
            n##0_0_0 := distanceToNull#0_0_0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            S##0_0_0 := S#0;
            call {:id "id116"} Call$$_module.Node.Lemma__NullImpliesNoCycles(this, n##0_0_0, S##0_0_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(172,9)
            // Begin Comprehension WF check
            havoc k#0_0_0;
            havoc l#0_0_0;
            if (true)
            {
                if (LitInt(0) <= k#0_0_0)
                {
                }

                if (LitInt(0) <= k#0_0_0 && LitInt(0) <= l#0_0_0)
                {
                    // assume allocatedness for receiver argument to function
                    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                    ##k#0_0_0 := k#0_0_0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##k#0_0_0, TInt, $Heap);
                    ##S#0_0_0 := S#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##S#0_0_0, TSet(Tclass._module.Node?()), $Heap);
                    assert {:id "id117"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0)
                       ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0)
                         || Set#IsMember(##S#0_0_0, $Box(this));
                    assert {:id "id118"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0)
                       ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0)
                         || Set#IsMember(##S#0_0_0, $Box(null));
                    assert {:id "id119"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0)
                       ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0)
                         || (forall n#0_0_0: ref :: 
                          { $Unbox(read($Heap, n#0_0_0, _module.Node.next)): ref } 
                          $Is(n#0_0_0, Tclass._module.Node?())
                             ==> 
                            Set#IsMember(##S#0_0_0, $Box(n#0_0_0))
                               && n#0_0_0 != null
                               && $Unbox(read($Heap, n#0_0_0, _module.Node.next)): ref != null
                             ==> Set#IsMember(##S#0_0_0, read($Heap, n#0_0_0, _module.Node.next)));
                    assert {:id "id120"} {:subsumption 0} LitInt(0) <= ##k#0_0_0;
                    assume _module.Node.Nexxxt#canCall($Heap, this, k#0_0_0, S#0);
                    newtype$check#0_0_1 := null;
                }

                if (LitInt(0) <= k#0_0_0
                   && LitInt(0) <= l#0_0_0
                   && _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_0_0, S#0) != null)
                {
                    // assume allocatedness for receiver argument to function
                    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                    ##k#0_0_1 := k#0_0_0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##k#0_0_1, TInt, $Heap);
                    ##S#0_0_1 := S#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##S#0_0_1, TSet(Tclass._module.Node?()), $Heap);
                    assert {:id "id121"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_1)
                       ==> _module.Node.IsClosed($Heap, this, ##S#0_0_1)
                         || Set#IsMember(##S#0_0_1, $Box(this));
                    assert {:id "id122"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_1)
                       ==> _module.Node.IsClosed($Heap, this, ##S#0_0_1)
                         || Set#IsMember(##S#0_0_1, $Box(null));
                    assert {:id "id123"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_1)
                       ==> _module.Node.IsClosed($Heap, this, ##S#0_0_1)
                         || (forall n#0_0_1: ref :: 
                          { $Unbox(read($Heap, n#0_0_1, _module.Node.next)): ref } 
                          $Is(n#0_0_1, Tclass._module.Node?())
                             ==> 
                            Set#IsMember(##S#0_0_1, $Box(n#0_0_1))
                               && n#0_0_1 != null
                               && $Unbox(read($Heap, n#0_0_1, _module.Node.next)): ref != null
                             ==> Set#IsMember(##S#0_0_1, read($Heap, n#0_0_1, _module.Node.next)));
                    assert {:id "id124"} {:subsumption 0} LitInt(0) <= ##k#0_0_1;
                    assume _module.Node.Nexxxt#canCall($Heap, this, k#0_0_0, S#0);
                    assert {:id "id125"} {:subsumption 0} _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_0_0, S#0) != null;
                    newtype$check#0_0_2 := null;
                }

                if (LitInt(0) <= k#0_0_0
                   && LitInt(0) <= l#0_0_0
                   && _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_0_0, S#0) != null
                   && $Unbox(read($Heap, 
                        _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_0_0, S#0), 
                        _module.Node.next)): ref
                     != null)
                {
                    // assume allocatedness for receiver argument to function
                    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                    ##k#0_0_2 := k#0_0_0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##k#0_0_2, TInt, $Heap);
                    ##S#0_0_2 := S#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##S#0_0_2, TSet(Tclass._module.Node?()), $Heap);
                    assert {:id "id126"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_2)
                       ==> _module.Node.IsClosed($Heap, this, ##S#0_0_2)
                         || Set#IsMember(##S#0_0_2, $Box(this));
                    assert {:id "id127"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_2)
                       ==> _module.Node.IsClosed($Heap, this, ##S#0_0_2)
                         || Set#IsMember(##S#0_0_2, $Box(null));
                    assert {:id "id128"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_2)
                       ==> _module.Node.IsClosed($Heap, this, ##S#0_0_2)
                         || (forall n#0_0_2: ref :: 
                          { $Unbox(read($Heap, n#0_0_2, _module.Node.next)): ref } 
                          $Is(n#0_0_2, Tclass._module.Node?())
                             ==> 
                            Set#IsMember(##S#0_0_2, $Box(n#0_0_2))
                               && n#0_0_2 != null
                               && $Unbox(read($Heap, n#0_0_2, _module.Node.next)): ref != null
                             ==> Set#IsMember(##S#0_0_2, read($Heap, n#0_0_2, _module.Node.next)));
                    assert {:id "id129"} {:subsumption 0} LitInt(0) <= ##k#0_0_2;
                    assume _module.Node.Nexxxt#canCall($Heap, this, k#0_0_0, S#0);
                    assert {:id "id130"} {:subsumption 0} _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_0_0, S#0) != null;
                    assert {:id "id131"} {:subsumption 0} $Unbox(read($Heap, 
                          _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_0_0, S#0), 
                          _module.Node.next)): ref
                       != null;
                    // assume allocatedness for receiver argument to function
                    assume $IsAllocBox(read($Heap, 
                        _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_0_0, S#0), 
                        _module.Node.next), 
                      Tclass._module.Node?(), 
                      $Heap);
                    ##k#0_0_3 := l#0_0_0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##k#0_0_3, TInt, $Heap);
                    ##S#0_0_3 := S#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##S#0_0_3, TSet(Tclass._module.Node?()), $Heap);
                    assert {:id "id132"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, 
                        $Unbox(read($Heap, 
                            _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_0_0, S#0), 
                            _module.Node.next)): ref, 
                        ##S#0_0_3)
                       ==> _module.Node.IsClosed($Heap, 
                          $Unbox(read($Heap, 
                              _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_0_0, S#0), 
                              _module.Node.next)): ref, 
                          ##S#0_0_3)
                         || Set#IsMember(##S#0_0_3, 
                          read($Heap, 
                            _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#0_0_0, S#0), 
                            _module.Node.next));
                    assert {:id "id133"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, 
                        $Unbox(read($Heap, 
                            _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_0_0, S#0), 
                            _module.Node.next)): ref, 
                        ##S#0_0_3)
                       ==> _module.Node.IsClosed($Heap, 
                          $Unbox(read($Heap, 
                              _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_0_0, S#0), 
                              _module.Node.next)): ref, 
                          ##S#0_0_3)
                         || Set#IsMember(##S#0_0_3, $Box(null));
                    assert {:id "id134"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, 
                        $Unbox(read($Heap, 
                            _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_0_0, S#0), 
                            _module.Node.next)): ref, 
                        ##S#0_0_3)
                       ==> _module.Node.IsClosed($Heap, 
                          $Unbox(read($Heap, 
                              _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_0_0, S#0), 
                              _module.Node.next)): ref, 
                          ##S#0_0_3)
                         || (forall n#0_0_3: ref :: 
                          { $Unbox(read($Heap, n#0_0_3, _module.Node.next)): ref } 
                          $Is(n#0_0_3, Tclass._module.Node?())
                             ==> 
                            Set#IsMember(##S#0_0_3, $Box(n#0_0_3))
                               && n#0_0_3 != null
                               && $Unbox(read($Heap, n#0_0_3, _module.Node.next)): ref != null
                             ==> Set#IsMember(##S#0_0_3, read($Heap, n#0_0_3, _module.Node.next)));
                    assert {:id "id135"} {:subsumption 0} LitInt(0) <= ##k#0_0_3;
                    assume _module.Node.Nexxxt#canCall($Heap, 
                      $Unbox(read($Heap, 
                          _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_0_0, S#0), 
                          _module.Node.next)): ref, 
                      l#0_0_0, 
                      S#0);
                    // assume allocatedness for receiver argument to function
                    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                    ##k#0_0_4 := k#0_0_0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##k#0_0_4, TInt, $Heap);
                    ##S#0_0_4 := S#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##S#0_0_4, TSet(Tclass._module.Node?()), $Heap);
                    assert {:id "id136"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_4)
                       ==> _module.Node.IsClosed($Heap, this, ##S#0_0_4)
                         || Set#IsMember(##S#0_0_4, $Box(this));
                    assert {:id "id137"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_4)
                       ==> _module.Node.IsClosed($Heap, this, ##S#0_0_4)
                         || Set#IsMember(##S#0_0_4, $Box(null));
                    assert {:id "id138"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_4)
                       ==> _module.Node.IsClosed($Heap, this, ##S#0_0_4)
                         || (forall n#0_0_4: ref :: 
                          { $Unbox(read($Heap, n#0_0_4, _module.Node.next)): ref } 
                          $Is(n#0_0_4, Tclass._module.Node?())
                             ==> 
                            Set#IsMember(##S#0_0_4, $Box(n#0_0_4))
                               && n#0_0_4 != null
                               && $Unbox(read($Heap, n#0_0_4, _module.Node.next)): ref != null
                             ==> Set#IsMember(##S#0_0_4, read($Heap, n#0_0_4, _module.Node.next)));
                    assert {:id "id139"} {:subsumption 0} LitInt(0) <= ##k#0_0_4;
                    assume _module.Node.Nexxxt#canCall($Heap, this, k#0_0_0, S#0);
                }
            }

            // End Comprehension WF check
            assume (forall k#0_0_1: int, l#0_0_1: int :: 
              { _module.Node.Nexxxt($LS($LZ), 
                  $Heap, 
                  $Unbox(read($Heap, 
                      _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_0_1, S#0), 
                      _module.Node.next)): ref, 
                  l#0_0_1, 
                  S#0) } 
              LitInt(0) <= k#0_0_1
                 ==> 
                LitInt(0) <= l#0_0_1
                 ==> _module.Node.Nexxxt#canCall($Heap, this, k#0_0_1, S#0)
                   && (_module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_0_1, S#0) != null
                     ==> _module.Node.Nexxxt#canCall($Heap, this, k#0_0_1, S#0)
                       && ($Unbox(read($Heap, 
                              _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_0_1, S#0), 
                              _module.Node.next)): ref
                           != null
                         ==> _module.Node.Nexxxt#canCall($Heap, this, k#0_0_1, S#0)
                           && _module.Node.Nexxxt#canCall($Heap, 
                            $Unbox(read($Heap, 
                                _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_0_1, S#0), 
                                _module.Node.next)): ref, 
                            l#0_0_1, 
                            S#0)
                           && _module.Node.Nexxxt#canCall($Heap, this, k#0_0_1, S#0))));
            assert {:id "id140"} {:subsumption 0} !(exists k#0_0_1: int, l#0_0_1: int :: 
              { _module.Node.Nexxxt($LS($LS($LZ)), 
                  $Heap, 
                  $Unbox(read($Heap, 
                      _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#0_0_1, S#0), 
                      _module.Node.next)): ref, 
                  l#0_0_1, 
                  S#0) } 
              LitInt(0) <= k#0_0_1
                 && LitInt(0) <= l#0_0_1
                 && _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#0_0_1, S#0) != null
                 && $Unbox(read($Heap, 
                      _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#0_0_1, S#0), 
                      _module.Node.next)): ref
                   != null
                 && _module.Node.Nexxxt($LS($LS($LZ)), 
                    $Heap, 
                    $Unbox(read($Heap, 
                        _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#0_0_1, S#0), 
                        _module.Node.next)): ref, 
                    l#0_0_1, 
                    S#0)
                   == _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#0_0_1, S#0));
            assume {:id "id141"} !(exists k#0_0_1: int, l#0_0_1: int :: 
              { _module.Node.Nexxxt($LS($LS($LZ)), 
                  $Heap, 
                  $Unbox(read($Heap, 
                      _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#0_0_1, S#0), 
                      _module.Node.next)): ref, 
                  l#0_0_1, 
                  S#0) } 
              LitInt(0) <= k#0_0_1
                 && LitInt(0) <= l#0_0_1
                 && _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#0_0_1, S#0) != null
                 && $Unbox(read($Heap, 
                      _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#0_0_1, S#0), 
                      _module.Node.next)): ref
                   != null
                 && _module.Node.Nexxxt($LS($LS($LZ)), 
                    $Heap, 
                    $Unbox(read($Heap, 
                        _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#0_0_1, S#0), 
                        _module.Node.next)): ref, 
                    l#0_0_1, 
                    S#0)
                   == _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#0_0_1, S#0));
            // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(173,9)
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(173,9)
            assume true;
            assume true;
            reachesCycle#0 := Lit(false);
            pop;
            pop;
            return;

            pop;
        }
        else
        {
        }

        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(175,27)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assume true;
        // ProcessCallStmt: CheckSubrange
        d##0_0 := h#0 + 1;
        assume true;
        // ProcessCallStmt: CheckSubrange
        S##0_0 := S#0;
        call {:id "id143"} Call$$_module.Node.Lemma__NullIsTerminal(this, d##0_0, S##0_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(176,7)
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
        ##k#0_0 := t#0 + 1;
        // assume allocatedness for argument to function
        assume $IsAlloc(##k#0_0, TInt, $Heap);
        ##S#0_0 := S#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##S#0_0, TSet(Tclass._module.Node?()), $Heap);
        assert {:id "id144"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0)
           ==> _module.Node.IsClosed($Heap, this, ##S#0_0) || Set#IsMember(##S#0_0, $Box(this));
        assert {:id "id145"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0)
           ==> _module.Node.IsClosed($Heap, this, ##S#0_0) || Set#IsMember(##S#0_0, $Box(null));
        assert {:id "id146"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0)
           ==> _module.Node.IsClosed($Heap, this, ##S#0_0)
             || (forall n#0_0: ref :: 
              { $Unbox(read($Heap, n#0_0, _module.Node.next)): ref } 
              $Is(n#0_0, Tclass._module.Node?())
                 ==> 
                Set#IsMember(##S#0_0, $Box(n#0_0))
                   && n#0_0 != null
                   && $Unbox(read($Heap, n#0_0, _module.Node.next)): ref != null
                 ==> Set#IsMember(##S#0_0, read($Heap, n#0_0, _module.Node.next)));
        assert {:id "id147"} {:subsumption 0} LitInt(0) <= ##k#0_0;
        assume _module.Node.Nexxxt#canCall($Heap, this, t#0 + 1, S#0);
        newtype$check#0_2 := null;
        assume _module.Node.Nexxxt#canCall($Heap, this, t#0 + 1, S#0);
        assert {:id "id148"} {:subsumption 0} _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, t#0 + 1, S#0) != null;
        assume {:id "id149"} _module.Node.Nexxxt($LS($LZ), $Heap, this, t#0 + 1, S#0) != null;
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(177,28)
        assume true;
        assume true;
        assume true;
        assume true;
        assert {:id "id150"} tortoise#0 != null;
        assume true;
        $rhs#0_0 := $Unbox(read($Heap, tortoise#0, _module.Node.next)): ref;
        assume true;
        $rhs#0_1 := t#0 + 1;
        assert {:id "id153"} hare#0 != null;
        assert {:id "id154"} $Unbox(read($Heap, hare#0, _module.Node.next)): ref != null;
        assume true;
        $rhs#0_2 := $Unbox(read($Heap, $Unbox(read($Heap, hare#0, _module.Node.next)): ref, _module.Node.next)): ref;
        assume true;
        $rhs#0_3 := h#0 + 2;
        tortoise#0 := $rhs#0_0;
        t#0 := $rhs#0_1;
        hare#0 := $rhs#0_2;
        h#0 := $rhs#0_3;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(178,19)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assume true;
        // ProcessCallStmt: CheckSubrange
        a##0_0 := A#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        b##0_0 := B#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        S##0_1 := S#0;
        call {:id "id161"} Call$$_module.Node.CrucialLemma(this, a##0_0, b##0_0, S##0_1);
        // TrCallStmt: After ProcessCallStmt
        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(161,5)
        assert {:id "id162"} 0 <= $decr$loop#00 || A#0 + B#0 - t#0 == $decr$loop#00;
        assert {:id "id163"} A#0 + B#0 - t#0 < $decr$loop#00;
        assume tortoise#0 != null
           ==> 
          Set#IsMember(S#0, $Box(tortoise#0))
           ==> 
          Set#IsMember(S#0, $Box(hare#0))
           ==> 
          LitInt(0) <= t#0 && t#0 < h#0
           ==> _module.Node.Nexxxt#canCall($Heap, this, t#0, S#0)
             && (_module.Node.Nexxxt($LS($LZ), $Heap, this, t#0, S#0) == tortoise#0
               ==> _module.Node.Nexxxt#canCall($Heap, this, h#0, S#0)
                 && (_module.Node.Nexxxt($LS($LZ), $Heap, this, h#0, S#0) == hare#0
                   ==> 
                  h#0 == 1 + Mul(LitInt(2), t#0)
                   ==> 
                  t#0 <= A#0 + B#0
                   ==> (forall k#1: int, _t#0#0: int :: 
                    { _module.Node.Nexxxt($LS($LZ), $Heap, this, _t#0#0, S#0), _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0) } 
                      { _module.Node.Nexxxt($LS($LZ), $Heap, this, _t#0#0, S#0), Mul(2, k#1) } 
                    _t#0#0 == 1 + Mul(LitInt(2), k#1)
                       ==> 
                      LitInt(0) <= k#1
                       ==> 
                      k#1 < t#0
                       ==> _module.Node.Nexxxt#canCall($Heap, this, k#1, S#0)
                         && _module.Node.Nexxxt#canCall($Heap, this, _t#0#0, S#0))));
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(180,25)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    d##0 := h#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    S##1 := S#0;
    call {:id "id164"} Call$$_module.Node.Lemma__NullIsTerminal(this, d##0, S##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(181,29)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := t#0 + 1;
    assume true;
    // ProcessCallStmt: CheckSubrange
    y##0 := h#0 - (t#0 + 1);
    assume true;
    // ProcessCallStmt: CheckSubrange
    S##2 := S#0;
    call {:id "id165"} Call$$_module.Node.Lemma__NexxxtIsTransitive(this, x##0, y##0, S##2);
    // TrCallStmt: After ProcessCallStmt
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(182,5)
    assert {:id "id166"} {:subsumption 0} tortoise#0 != null;
    assert {:id "id167"} {:subsumption 0} $Unbox(read($Heap, tortoise#0, _module.Node.next)): ref != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox(read($Heap, tortoise#0, _module.Node.next), Tclass._module.Node?(), $Heap);
    assert {:id "id168"} $Is(tortoise#0, Tclass._module.Node());
    ##sink#2 := tortoise#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##sink#2, Tclass._module.Node(), $Heap);
    ##S#7 := S#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##S#7, TSet(Tclass._module.Node?()), $Heap);
    assert {:id "id169"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, $Unbox(read($Heap, tortoise#0, _module.Node.next)): ref, ##S#7)
       ==> _module.Node.IsClosed($Heap, $Unbox(read($Heap, tortoise#0, _module.Node.next)): ref, ##S#7)
         || Set#IsMember(##S#7, read($Heap, tortoise#0, _module.Node.next));
    assert {:id "id170"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, $Unbox(read($Heap, tortoise#0, _module.Node.next)): ref, ##S#7)
       ==> _module.Node.IsClosed($Heap, $Unbox(read($Heap, tortoise#0, _module.Node.next)): ref, ##S#7)
         || Set#IsMember(##S#7, $Box(null));
    assert {:id "id171"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, $Unbox(read($Heap, tortoise#0, _module.Node.next)): ref, ##S#7)
       ==> _module.Node.IsClosed($Heap, $Unbox(read($Heap, tortoise#0, _module.Node.next)): ref, ##S#7)
         || (forall n#10: ref :: 
          { $Unbox(read($Heap, n#10, _module.Node.next)): ref } 
          $Is(n#10, Tclass._module.Node?())
             ==> 
            Set#IsMember(##S#7, $Box(n#10))
               && n#10 != null
               && $Unbox(read($Heap, n#10, _module.Node.next)): ref != null
             ==> Set#IsMember(##S#7, read($Heap, n#10, _module.Node.next)));
    assume _module.Node.Reaches#canCall($Heap, $Unbox(read($Heap, tortoise#0, _module.Node.next)): ref, tortoise#0, S#0);
    assume _module.Node.Reaches#canCall($Heap, $Unbox(read($Heap, tortoise#0, _module.Node.next)): ref, tortoise#0, S#0);
    assert {:id "id172"} {:subsumption 0} _module.Node.Reaches#canCall($Heap, $Unbox(read($Heap, tortoise#0, _module.Node.next)): ref, tortoise#0, S#0)
       ==> _module.Node.Reaches($Heap, $Unbox(read($Heap, tortoise#0, _module.Node.next)): ref, tortoise#0, S#0)
         || (exists k#2: int :: 
          { _module.Node.Nexxxt($LS($LZ), 
              $Heap, 
              $Unbox(read($Heap, tortoise#0, _module.Node.next)): ref, 
              k#2, 
              S#0) } 
          LitInt(0) <= k#2
             && _module.Node.Nexxxt($LS($LZ), 
                $Heap, 
                $Unbox(read($Heap, tortoise#0, _module.Node.next)): ref, 
                k#2, 
                S#0)
               == tortoise#0);
    assume {:id "id173"} _module.Node.Reaches($Heap, $Unbox(read($Heap, tortoise#0, _module.Node.next)): ref, tortoise#0, S#0);
    // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(183,5)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(183,5)
    assume true;
    assume true;
    reachesCycle#0 := Lit(true);
    return;
}



procedure {:verboseName "Node.AnalyzeList (well-formedness)"} CheckWellFormed$$_module.Node.AnalyzeList(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    S#0: Set
       where $Is(S#0, TSet(Tclass._module.Node?()))
         && $IsAlloc(S#0, TSet(Tclass._module.Node?()), $Heap))
   returns (A#0: int, B#0: int);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.AnalyzeList (well-formedness)"} CheckWellFormed$$_module.Node.AnalyzeList(this: ref, S#0: Set) returns (A#0: int, B#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##S#0: Set;
  var ##k#0: int;
  var ##S#1: Set;
  var newtype$check#0: ref;
  var ##k#1: int;
  var ##S#2: Set;
  var ##k#2: int;
  var ##S#3: Set;
  var ##k#3: int;
  var ##S#4: Set;
  var k#0: int;
  var l#0: int;
  var ##k#4: int;
  var ##S#5: Set;
  var ##k#5: int;
  var ##S#6: Set;


    // AddMethodImpl: AnalyzeList, CheckWellFormed$$_module.Node.AnalyzeList
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
    ##S#0 := S#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##S#0, TSet(Tclass._module.Node?()), $Heap);
    assume _module.Node.IsClosed#canCall($Heap, this, S#0);
    assume {:id "id175"} _module.Node.IsClosed($Heap, this, S#0);
    havoc $Heap;
    assume old($Heap) == $Heap;
    havoc A#0, B#0;
    assume {:id "id176"} LitInt(0) <= A#0;
    assume {:id "id177"} LitInt(1) <= B#0;
    if (*)
    {
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
        ##k#0 := A#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##k#0, TInt, $Heap);
        ##S#1 := S#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##S#1, TSet(Tclass._module.Node?()), $Heap);
        assert {:id "id178"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1)
           ==> _module.Node.IsClosed($Heap, this, ##S#1) || Set#IsMember(##S#1, $Box(this));
        assert {:id "id179"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1)
           ==> _module.Node.IsClosed($Heap, this, ##S#1) || Set#IsMember(##S#1, $Box(null));
        assert {:id "id180"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1)
           ==> _module.Node.IsClosed($Heap, this, ##S#1)
             || (forall n#0: ref :: 
              { $Unbox(read($Heap, n#0, _module.Node.next)): ref } 
              $Is(n#0, Tclass._module.Node?())
                 ==> 
                Set#IsMember(##S#1, $Box(n#0))
                   && n#0 != null
                   && $Unbox(read($Heap, n#0, _module.Node.next)): ref != null
                 ==> Set#IsMember(##S#1, read($Heap, n#0, _module.Node.next)));
        assert {:id "id181"} {:subsumption 0} LitInt(0) <= ##k#0;
        assume _module.Node.IsClosed($Heap, this, ##S#1) && LitInt(0) <= ##k#0;
        assume _module.Node.Nexxxt#canCall($Heap, this, A#0, S#0);
        newtype$check#0 := null;
        assume {:id "id182"} _module.Node.Nexxxt($LS($LZ), $Heap, this, A#0, S#0) != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
        ##k#1 := A#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##k#1, TInt, $Heap);
        ##S#2 := S#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##S#2, TSet(Tclass._module.Node?()), $Heap);
        assert {:id "id183"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#2)
           ==> _module.Node.IsClosed($Heap, this, ##S#2) || Set#IsMember(##S#2, $Box(this));
        assert {:id "id184"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#2)
           ==> _module.Node.IsClosed($Heap, this, ##S#2) || Set#IsMember(##S#2, $Box(null));
        assert {:id "id185"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#2)
           ==> _module.Node.IsClosed($Heap, this, ##S#2)
             || (forall n#1: ref :: 
              { $Unbox(read($Heap, n#1, _module.Node.next)): ref } 
              $Is(n#1, Tclass._module.Node?())
                 ==> 
                Set#IsMember(##S#2, $Box(n#1))
                   && n#1 != null
                   && $Unbox(read($Heap, n#1, _module.Node.next)): ref != null
                 ==> Set#IsMember(##S#2, read($Heap, n#1, _module.Node.next)));
        assert {:id "id186"} {:subsumption 0} LitInt(0) <= ##k#1;
        assume _module.Node.IsClosed($Heap, this, ##S#2) && LitInt(0) <= ##k#1;
        assume _module.Node.Nexxxt#canCall($Heap, this, A#0, S#0);
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
        ##k#2 := A#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##k#2, TInt, $Heap);
        ##S#3 := S#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##S#3, TSet(Tclass._module.Node?()), $Heap);
        assert {:id "id187"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#3)
           ==> _module.Node.IsClosed($Heap, this, ##S#3) || Set#IsMember(##S#3, $Box(this));
        assert {:id "id188"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#3)
           ==> _module.Node.IsClosed($Heap, this, ##S#3) || Set#IsMember(##S#3, $Box(null));
        assert {:id "id189"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#3)
           ==> _module.Node.IsClosed($Heap, this, ##S#3)
             || (forall n#2: ref :: 
              { $Unbox(read($Heap, n#2, _module.Node.next)): ref } 
              $Is(n#2, Tclass._module.Node?())
                 ==> 
                Set#IsMember(##S#3, $Box(n#2))
                   && n#2 != null
                   && $Unbox(read($Heap, n#2, _module.Node.next)): ref != null
                 ==> Set#IsMember(##S#3, read($Heap, n#2, _module.Node.next)));
        assert {:id "id190"} {:subsumption 0} LitInt(0) <= ##k#2;
        assume _module.Node.IsClosed($Heap, this, ##S#3) && LitInt(0) <= ##k#2;
        assume _module.Node.Nexxxt#canCall($Heap, this, A#0, S#0);
        assert {:id "id191"} _module.Node.Nexxxt($LS($LZ), $Heap, this, A#0, S#0) != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(_module.Node.Nexxxt($LS($LZ), $Heap, this, A#0, S#0)), 
          Tclass._module.Node?(), 
          $Heap);
        ##k#3 := B#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##k#3, TInt, $Heap);
        ##S#4 := S#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##S#4, TSet(Tclass._module.Node?()), $Heap);
        assert {:id "id192"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, A#0, S#0), ##S#4)
           ==> _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, A#0, S#0), ##S#4)
             || Set#IsMember(##S#4, $Box(_module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, A#0, S#0)));
        assert {:id "id193"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, A#0, S#0), ##S#4)
           ==> _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, A#0, S#0), ##S#4)
             || Set#IsMember(##S#4, $Box(null));
        assert {:id "id194"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, A#0, S#0), ##S#4)
           ==> _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, A#0, S#0), ##S#4)
             || (forall n#3: ref :: 
              { $Unbox(read($Heap, n#3, _module.Node.next)): ref } 
              $Is(n#3, Tclass._module.Node?())
                 ==> 
                Set#IsMember(##S#4, $Box(n#3))
                   && n#3 != null
                   && $Unbox(read($Heap, n#3, _module.Node.next)): ref != null
                 ==> Set#IsMember(##S#4, read($Heap, n#3, _module.Node.next)));
        assert {:id "id195"} {:subsumption 0} LitInt(0) <= ##k#3;
        assume _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, A#0, S#0), ##S#4)
           && LitInt(0) <= ##k#3;
        assume _module.Node.Nexxxt#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, A#0, S#0), B#0, S#0);
        assume {:id "id196"} _module.Node.Nexxxt($LS($LZ), $Heap, this, A#0, S#0)
           == _module.Node.Nexxxt($LS($LZ), $Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, A#0, S#0), B#0, S#0);
    }
    else
    {
        assume {:id "id197"} _module.Node.Nexxxt($LS($LZ), $Heap, this, A#0, S#0) != null
           ==> _module.Node.Nexxxt($LS($LZ), $Heap, this, A#0, S#0)
             == _module.Node.Nexxxt($LS($LZ), $Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, A#0, S#0), B#0, S#0);
    }

    havoc k#0;
    havoc l#0;
    assume true;
    if (*)
    {
        if (LitInt(0) <= k#0)
        {
        }

        if (LitInt(0) <= k#0 && k#0 < l#0)
        {
        }

        assume {:id "id198"} LitInt(0) <= k#0 && k#0 < l#0 && l#0 < A#0;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
        ##k#4 := k#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##k#4, TInt, $Heap);
        ##S#5 := S#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##S#5, TSet(Tclass._module.Node?()), $Heap);
        assert {:id "id199"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#5)
           ==> _module.Node.IsClosed($Heap, this, ##S#5) || Set#IsMember(##S#5, $Box(this));
        assert {:id "id200"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#5)
           ==> _module.Node.IsClosed($Heap, this, ##S#5) || Set#IsMember(##S#5, $Box(null));
        assert {:id "id201"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#5)
           ==> _module.Node.IsClosed($Heap, this, ##S#5)
             || (forall n#4: ref :: 
              { $Unbox(read($Heap, n#4, _module.Node.next)): ref } 
              $Is(n#4, Tclass._module.Node?())
                 ==> 
                Set#IsMember(##S#5, $Box(n#4))
                   && n#4 != null
                   && $Unbox(read($Heap, n#4, _module.Node.next)): ref != null
                 ==> Set#IsMember(##S#5, read($Heap, n#4, _module.Node.next)));
        assert {:id "id202"} {:subsumption 0} LitInt(0) <= ##k#4;
        assume _module.Node.IsClosed($Heap, this, ##S#5) && LitInt(0) <= ##k#4;
        assume _module.Node.Nexxxt#canCall($Heap, this, k#0, S#0);
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
        ##k#5 := l#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##k#5, TInt, $Heap);
        ##S#6 := S#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##S#6, TSet(Tclass._module.Node?()), $Heap);
        assert {:id "id203"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#6)
           ==> _module.Node.IsClosed($Heap, this, ##S#6) || Set#IsMember(##S#6, $Box(this));
        assert {:id "id204"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#6)
           ==> _module.Node.IsClosed($Heap, this, ##S#6) || Set#IsMember(##S#6, $Box(null));
        assert {:id "id205"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#6)
           ==> _module.Node.IsClosed($Heap, this, ##S#6)
             || (forall n#5: ref :: 
              { $Unbox(read($Heap, n#5, _module.Node.next)): ref } 
              $Is(n#5, Tclass._module.Node?())
                 ==> 
                Set#IsMember(##S#6, $Box(n#5))
                   && n#5 != null
                   && $Unbox(read($Heap, n#5, _module.Node.next)): ref != null
                 ==> Set#IsMember(##S#6, read($Heap, n#5, _module.Node.next)));
        assert {:id "id206"} {:subsumption 0} LitInt(0) <= ##k#5;
        assume _module.Node.IsClosed($Heap, this, ##S#6) && LitInt(0) <= ##k#5;
        assume _module.Node.Nexxxt#canCall($Heap, this, l#0, S#0);
        assume {:id "id207"} _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0)
           != _module.Node.Nexxxt($LS($LZ), $Heap, this, l#0, S#0);
    }
    else
    {
        assume {:id "id208"} LitInt(0) <= k#0 && k#0 < l#0 && l#0 < A#0
           ==> _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0)
             != _module.Node.Nexxxt($LS($LZ), $Heap, this, l#0, S#0);
    }

    assume {:id "id209"} (forall k#1: int, l#1: int :: 
      { _module.Node.Nexxxt($LS($LZ), $Heap, this, l#1, S#0), _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0) } 
      LitInt(0) <= k#1 && k#1 < l#1 && l#1 < A#0
         ==> _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0)
           != _module.Node.Nexxxt($LS($LZ), $Heap, this, l#1, S#0));
}



procedure {:verboseName "Node.AnalyzeList (call)"} Call$$_module.Node.AnalyzeList(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    S#0: Set
       where $Is(S#0, TSet(Tclass._module.Node?()))
         && $IsAlloc(S#0, TSet(Tclass._module.Node?()), $Heap))
   returns (A#0: int, B#0: int);
  // user-defined preconditions
  requires {:id "id210"} _module.Node.IsClosed#canCall($Heap, this, S#0)
     ==> _module.Node.IsClosed($Heap, this, S#0) || Set#IsMember(S#0, $Box(this));
  requires {:id "id211"} _module.Node.IsClosed#canCall($Heap, this, S#0)
     ==> _module.Node.IsClosed($Heap, this, S#0) || Set#IsMember(S#0, $Box(null));
  requires {:id "id212"} _module.Node.IsClosed#canCall($Heap, this, S#0)
     ==> _module.Node.IsClosed($Heap, this, S#0)
       || (forall n#6: ref :: 
        { $Unbox(read($Heap, n#6, _module.Node.next)): ref } 
        $Is(n#6, Tclass._module.Node?())
           ==> 
          Set#IsMember(S#0, $Box(n#6))
             && n#6 != null
             && $Unbox(read($Heap, n#6, _module.Node.next)): ref != null
           ==> Set#IsMember(S#0, read($Heap, n#6, _module.Node.next)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id213"} LitInt(0) <= A#0;
  ensures {:id "id214"} LitInt(1) <= B#0;
  free ensures _module.Node.Nexxxt#canCall($Heap, this, A#0, S#0)
     && (_module.Node.Nexxxt($LS($LZ), $Heap, this, A#0, S#0) != null
       ==> _module.Node.Nexxxt#canCall($Heap, this, A#0, S#0)
         && 
        _module.Node.Nexxxt#canCall($Heap, this, A#0, S#0)
         && _module.Node.Nexxxt#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, A#0, S#0), B#0, S#0));
  ensures {:id "id215"} _module.Node.Nexxxt($LS($LZ), $Heap, this, A#0, S#0) != null
     ==> _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, A#0, S#0)
       == _module.Node.Nexxxt($LS($LS($LZ)), 
        $Heap, 
        _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, A#0, S#0), 
        B#0, 
        S#0);
  free ensures (forall k#1: int, l#1: int :: 
    { _module.Node.Nexxxt($LS($LZ), $Heap, this, l#1, S#0), _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0) } 
    LitInt(0) <= k#1 && k#1 < l#1 && l#1 < A#0
       ==> _module.Node.Nexxxt#canCall($Heap, this, k#1, S#0)
         && _module.Node.Nexxxt#canCall($Heap, this, l#1, S#0));
  free ensures {:id "id216"} (forall k#1: int, l#1: int :: 
    { _module.Node.Nexxxt($LS($LZ), $Heap, this, l#1, S#0), _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0) } 
    LitInt(0) <= k#1 && k#1 < l#1 && l#1 < A#0
       ==> _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0)
         != _module.Node.Nexxxt($LS($LZ), $Heap, this, l#1, S#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Node.AnalyzeList (correctness)"} Impl$$_module.Node.AnalyzeList(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    S#0: Set
       where $Is(S#0, TSet(Tclass._module.Node?()))
         && $IsAlloc(S#0, TSet(Tclass._module.Node?()), $Heap))
   returns (A#0: int, B#0: int, $_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id217"} _module.Node.IsClosed#canCall($Heap, this, S#0)
     && 
    _module.Node.IsClosed($Heap, this, S#0)
     && 
    Set#IsMember(S#0, $Box(this))
     && Set#IsMember(S#0, $Box(null))
     && (forall n#7: ref :: 
      { $Unbox(read($Heap, n#7, _module.Node.next)): ref } 
      $Is(n#7, Tclass._module.Node?())
         ==> 
        Set#IsMember(S#0, $Box(n#7))
           && n#7 != null
           && $Unbox(read($Heap, n#7, _module.Node.next)): ref != null
         ==> Set#IsMember(S#0, read($Heap, n#7, _module.Node.next)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id218"} LitInt(0) <= A#0;
  ensures {:id "id219"} LitInt(1) <= B#0;
  free ensures _module.Node.Nexxxt#canCall($Heap, this, A#0, S#0)
     && (_module.Node.Nexxxt($LS($LZ), $Heap, this, A#0, S#0) != null
       ==> _module.Node.Nexxxt#canCall($Heap, this, A#0, S#0)
         && 
        _module.Node.Nexxxt#canCall($Heap, this, A#0, S#0)
         && _module.Node.Nexxxt#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, A#0, S#0), B#0, S#0));
  ensures {:id "id220"} _module.Node.Nexxxt($LS($LZ), $Heap, this, A#0, S#0) != null
     ==> _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, A#0, S#0)
       == _module.Node.Nexxxt($LS($LS($LZ)), 
        $Heap, 
        _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, A#0, S#0), 
        B#0, 
        S#0);
  free ensures (forall k#1: int, l#1: int :: 
    { _module.Node.Nexxxt($LS($LZ), $Heap, this, l#1, S#0), _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0) } 
    LitInt(0) <= k#1 && k#1 < l#1 && l#1 < A#0
       ==> _module.Node.Nexxxt#canCall($Heap, this, k#1, S#0)
         && _module.Node.Nexxxt#canCall($Heap, this, l#1, S#0));
  ensures {:id "id221"} (forall k#1: int, l#1: int :: 
    { _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, l#1, S#0), _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#1, S#0) } 
    LitInt(0) <= k#1 && k#1 < l#1 && l#1 < A#0
       ==> _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#1, S#0)
         != _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, l#1, S#0));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.AnalyzeList (correctness)"} Impl$$_module.Node.AnalyzeList(this: ref, S#0: Set) returns (A#0: int, B#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var p#0: ref
     where $Is(p#0, Tclass._module.Node?()) && $IsAlloc(p#0, Tclass._module.Node?(), $Heap);
  var steps#0: int;
  var Visited#0: Set
     where $Is(Visited#0, TSet(Tclass._module.Node?()))
       && $IsAlloc(Visited#0, TSet(Tclass._module.Node?()), $Heap);
  var NexxxtInverse#0: Map
     where $Is(NexxxtInverse#0, TMap(Tclass._module.Node?(), TInt))
       && $IsAlloc(NexxxtInverse#0, TMap(Tclass._module.Node?(), TInt), $Heap);
  var $rhs#0: ref;
  var $rhs#1: int;
  var $rhs#2: Set;
  var newtype$check#1: ref;
  var $rhs#3: Map;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: Set;
  var $w$loop#0: bool;
  var ##k#6: int;
  var ##S#7: Set;
  var newtype$check#2: ref;
  var t#0: int;
  var ##k#7: int;
  var ##S#8: Set;
  var ##k#8: int;
  var ##S#9: Set;
  var ##k#9: int;
  var ##S#10: Set;
  var q#0: ref;
  var newtype$check#3: ref;
  var ##k#10: int;
  var ##S#11: Set;
  var $decr$loop#00: Set;
  var $rhs#0_0: ref;
  var $rhs#0_1: int;
  var $rhs#0_2: Set;
  var $rhs#0_3: Map;
  var newtype$check#4: ref;
  var $rhs#1_0: int;
  var $rhs#1_1: int;
  var x##2_0: int;
  var y##2_0: int;
  var S##2_0: Set;

    // AddMethodImpl: AnalyzeList, Impl$$_module.Node.AnalyzeList
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(201,58)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    $rhs#0 := this;
    assume true;
    $rhs#1 := LitInt(0);
    newtype$check#1 := null;
    assume true;
    $rhs#2 := Set#UnionOne(Set#Empty(): Set, $Box(null));
    assume true;
    $rhs#3 := Lit(Map#Empty(): Map);
    p#0 := $rhs#0;
    steps#0 := $rhs#1;
    Visited#0 := $rhs#2;
    NexxxtInverse#0 := $rhs#3;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(202,5)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := Set#Difference(S#0, Visited#0);
    havoc $w$loop#0;
    while (true)
      free invariant $w$loop#0
         ==> 
        LitInt(0) <= steps#0
         ==> _module.Node.Nexxxt#canCall($Heap, this, steps#0, S#0);
      invariant {:id "id235"} $w$loop#0 ==> LitInt(0) <= steps#0;
      invariant {:id "id236"} $w$loop#0
         ==> p#0 == _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, steps#0, S#0);
      invariant {:id "id237"} $w$loop#0 ==> Set#IsMember(S#0, $Box(p#0));
      invariant {:id "id238"} $w$loop#0 ==> Set#IsMember(Visited#0, $Box(null));
      invariant {:id "id239"} $w$loop#0 ==> Set#Subset(Visited#0, S#0);
      free invariant $w$loop#0
         ==> (forall t#1: int :: 
          { _module.Node.Nexxxt($LS($LZ), $Heap, this, t#1, S#0) } 
          (LitInt(0) <= t#1 && t#1 < steps#0
               ==> _module.Node.Nexxxt#canCall($Heap, this, t#1, S#0))
             && (
              (LitInt(0) <= t#1 && t#1 < steps#0
               ==> Set#IsMember(Visited#0, $Box(_module.Node.Nexxxt($LS($LZ), $Heap, this, t#1, S#0))))
               ==> (LitInt(0) <= t#1 && t#1 < steps#0
                   ==> _module.Node.Nexxxt#canCall($Heap, this, t#1, S#0))
                 && (
                  (LitInt(0) <= t#1 && t#1 < steps#0
                   ==> Set#IsMember(Map#Domain(NexxxtInverse#0), 
                    $Box(_module.Node.Nexxxt($LS($LZ), $Heap, this, t#1, S#0))))
                   ==> 
                  LitInt(0) <= t#1 && t#1 < steps#0
                   ==> _module.Node.Nexxxt#canCall($Heap, this, t#1, S#0))));
      invariant {:id "id254"} $w$loop#0
         ==> (forall t#1: int :: 
          { _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, t#1, S#0) } 
          (LitInt(0) <= t#1 && t#1 < steps#0
               ==> Set#IsMember(Visited#0, $Box(_module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, t#1, S#0))))
             && (LitInt(0) <= t#1 && t#1 < steps#0
               ==> Set#IsMember(Map#Domain(NexxxtInverse#0), 
                $Box(_module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, t#1, S#0))))
             && (LitInt(0) <= t#1 && t#1 < steps#0
               ==> $Unbox(Map#Elements(NexxxtInverse#0)[$Box(_module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, t#1, S#0))]): int
                 == t#1));
      free invariant {:id "id255"} $w$loop#0
         ==> (forall t#1: int :: 
          { _module.Node.Nexxxt($LS($LZ), $Heap, this, t#1, S#0) } 
          (LitInt(0) <= t#1 && t#1 < steps#0
               ==> Set#IsMember(Visited#0, $Box(_module.Node.Nexxxt($LS($LZ), $Heap, this, t#1, S#0))))
             && (LitInt(0) <= t#1 && t#1 < steps#0
               ==> Set#IsMember(Map#Domain(NexxxtInverse#0), 
                $Box(_module.Node.Nexxxt($LS($LZ), $Heap, this, t#1, S#0))))
             && (LitInt(0) <= t#1 && t#1 < steps#0
               ==> $Unbox(Map#Elements(NexxxtInverse#0)[$Box(_module.Node.Nexxxt($LS($LZ), $Heap, this, t#1, S#0))]): int
                 == t#1));
      free invariant $w$loop#0
         ==> (forall q#1: ref :: 
          { $Unbox(Map#Elements(NexxxtInverse#0)[$Box(q#1)]): int } 
            { Set#IsMember(Map#Domain(NexxxtInverse#0), $Box(q#1)) } 
            { Set#IsMember(Visited#0, $Box(q#1)) } 
          $Is(q#1, Tclass._module.Node?())
             ==> 
            (Set#IsMember(Visited#0, $Box(q#1)) && q#1 != null
             ==> Set#IsMember(Map#Domain(NexxxtInverse#0), $Box(q#1)))
             ==> 
            (Set#IsMember(Visited#0, $Box(q#1)) && q#1 != null
             ==> LitInt(0) <= $Unbox(Map#Elements(NexxxtInverse#0)[$Box(q#1)]): int)
             ==> 
            (Set#IsMember(Visited#0, $Box(q#1)) && q#1 != null
             ==> $Unbox(Map#Elements(NexxxtInverse#0)[$Box(q#1)]): int < steps#0)
             ==> 
            Set#IsMember(Visited#0, $Box(q#1))
             ==> 
            q#1 != null
             ==> _module.Node.Nexxxt#canCall($Heap, this, $Unbox(Map#Elements(NexxxtInverse#0)[$Box(q#1)]): int, S#0));
      invariant {:id "id264"} $w$loop#0
         ==> (forall q#1: ref :: 
          { $Unbox(Map#Elements(NexxxtInverse#0)[$Box(q#1)]): int } 
            { Set#IsMember(Map#Domain(NexxxtInverse#0), $Box(q#1)) } 
            { Set#IsMember(Visited#0, $Box(q#1)) } 
          $Is(q#1, Tclass._module.Node?())
             ==> (Set#IsMember(Visited#0, $Box(q#1)) && q#1 != null
                 ==> Set#IsMember(Map#Domain(NexxxtInverse#0), $Box(q#1)))
               && (Set#IsMember(Visited#0, $Box(q#1)) && q#1 != null
                 ==> LitInt(0) <= $Unbox(Map#Elements(NexxxtInverse#0)[$Box(q#1)]): int)
               && (Set#IsMember(Visited#0, $Box(q#1)) && q#1 != null
                 ==> $Unbox(Map#Elements(NexxxtInverse#0)[$Box(q#1)]): int < steps#0)
               && (Set#IsMember(Visited#0, $Box(q#1)) && q#1 != null
                 ==> _module.Node.Nexxxt($LS($LS($LZ)), 
                    $Heap, 
                    this, 
                    $Unbox(Map#Elements(NexxxtInverse#0)[$Box(q#1)]): int, 
                    S#0)
                   == q#1));
      free invariant {:id "id265"} $w$loop#0
         ==> (forall q#1: ref :: 
          { $Unbox(Map#Elements(NexxxtInverse#0)[$Box(q#1)]): int } 
            { Set#IsMember(Map#Domain(NexxxtInverse#0), $Box(q#1)) } 
            { Set#IsMember(Visited#0, $Box(q#1)) } 
          $Is(q#1, Tclass._module.Node?())
             ==> (Set#IsMember(Visited#0, $Box(q#1)) && q#1 != null
                 ==> Set#IsMember(Map#Domain(NexxxtInverse#0), $Box(q#1)))
               && (Set#IsMember(Visited#0, $Box(q#1)) && q#1 != null
                 ==> LitInt(0) <= $Unbox(Map#Elements(NexxxtInverse#0)[$Box(q#1)]): int)
               && (Set#IsMember(Visited#0, $Box(q#1)) && q#1 != null
                 ==> $Unbox(Map#Elements(NexxxtInverse#0)[$Box(q#1)]): int < steps#0)
               && (Set#IsMember(Visited#0, $Box(q#1)) && q#1 != null
                 ==> _module.Node.Nexxxt($LS($LZ), 
                    $Heap, 
                    this, 
                    $Unbox(Map#Elements(NexxxtInverse#0)[$Box(q#1)]): int, 
                    S#0)
                   == q#1));
      free invariant $PreLoopHeap$loop#0 == $Heap;
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant Set#Subset(Set#Difference(S#0, Visited#0), $decr_init$loop#00);
    {
        if (!$w$loop#0)
        {
            if (LitInt(0) <= steps#0)
            {
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                ##k#6 := steps#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##k#6, TInt, $Heap);
                ##S#7 := S#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##S#7, TSet(Tclass._module.Node?()), $Heap);
                assert {:id "id230"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#7)
                   ==> _module.Node.IsClosed($Heap, this, ##S#7) || Set#IsMember(##S#7, $Box(this));
                assert {:id "id231"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#7)
                   ==> _module.Node.IsClosed($Heap, this, ##S#7) || Set#IsMember(##S#7, $Box(null));
                assert {:id "id232"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#7)
                   ==> _module.Node.IsClosed($Heap, this, ##S#7)
                     || (forall n#8: ref :: 
                      { $Unbox(read($Heap, n#8, _module.Node.next)): ref } 
                      $Is(n#8, Tclass._module.Node?())
                         ==> 
                        Set#IsMember(##S#7, $Box(n#8))
                           && n#8 != null
                           && $Unbox(read($Heap, n#8, _module.Node.next)): ref != null
                         ==> Set#IsMember(##S#7, read($Heap, n#8, _module.Node.next)));
                assert {:id "id233"} {:subsumption 0} LitInt(0) <= ##k#6;
                assume _module.Node.Nexxxt#canCall($Heap, this, steps#0, S#0);
            }

            if (LitInt(0) <= steps#0
               && p#0 == _module.Node.Nexxxt($LS($LZ), $Heap, this, steps#0, S#0))
            {
            }

            if (LitInt(0) <= steps#0
               && p#0 == _module.Node.Nexxxt($LS($LZ), $Heap, this, steps#0, S#0)
               && Set#IsMember(S#0, $Box(p#0)))
            {
                newtype$check#2 := null;
            }

            if (LitInt(0) <= steps#0
               && p#0 == _module.Node.Nexxxt($LS($LZ), $Heap, this, steps#0, S#0)
               && Set#IsMember(S#0, $Box(p#0))
               && Set#IsMember(Visited#0, $Box(null)))
            {
            }

            assume LitInt(0) <= steps#0 ==> _module.Node.Nexxxt#canCall($Heap, this, steps#0, S#0);
            assume {:id "id234"} LitInt(0) <= steps#0
               && p#0 == _module.Node.Nexxxt($LS($LZ), $Heap, this, steps#0, S#0)
               && Set#IsMember(S#0, $Box(p#0))
               && Set#IsMember(Visited#0, $Box(null))
               && Set#Subset(Visited#0, S#0);
            // Begin Comprehension WF check
            havoc t#0;
            if (true)
            {
                if (LitInt(0) <= t#0)
                {
                }

                if (LitInt(0) <= t#0 && t#0 < steps#0)
                {
                    // assume allocatedness for receiver argument to function
                    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                    ##k#7 := t#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##k#7, TInt, $Heap);
                    ##S#8 := S#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##S#8, TSet(Tclass._module.Node?()), $Heap);
                    assert {:id "id240"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#8)
                       ==> _module.Node.IsClosed($Heap, this, ##S#8) || Set#IsMember(##S#8, $Box(this));
                    assert {:id "id241"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#8)
                       ==> _module.Node.IsClosed($Heap, this, ##S#8) || Set#IsMember(##S#8, $Box(null));
                    assert {:id "id242"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#8)
                       ==> _module.Node.IsClosed($Heap, this, ##S#8)
                         || (forall n#9: ref :: 
                          { $Unbox(read($Heap, n#9, _module.Node.next)): ref } 
                          $Is(n#9, Tclass._module.Node?())
                             ==> 
                            Set#IsMember(##S#8, $Box(n#9))
                               && n#9 != null
                               && $Unbox(read($Heap, n#9, _module.Node.next)): ref != null
                             ==> Set#IsMember(##S#8, read($Heap, n#9, _module.Node.next)));
                    assert {:id "id243"} {:subsumption 0} LitInt(0) <= ##k#7;
                    assume _module.Node.Nexxxt#canCall($Heap, this, t#0, S#0);
                    if (Set#IsMember(Visited#0, $Box(_module.Node.Nexxxt($LS($LZ), $Heap, this, t#0, S#0))))
                    {
                        // assume allocatedness for receiver argument to function
                        assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                        ##k#8 := t#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##k#8, TInt, $Heap);
                        ##S#9 := S#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##S#9, TSet(Tclass._module.Node?()), $Heap);
                        assert {:id "id244"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#9)
                           ==> _module.Node.IsClosed($Heap, this, ##S#9) || Set#IsMember(##S#9, $Box(this));
                        assert {:id "id245"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#9)
                           ==> _module.Node.IsClosed($Heap, this, ##S#9) || Set#IsMember(##S#9, $Box(null));
                        assert {:id "id246"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#9)
                           ==> _module.Node.IsClosed($Heap, this, ##S#9)
                             || (forall n#10: ref :: 
                              { $Unbox(read($Heap, n#10, _module.Node.next)): ref } 
                              $Is(n#10, Tclass._module.Node?())
                                 ==> 
                                Set#IsMember(##S#9, $Box(n#10))
                                   && n#10 != null
                                   && $Unbox(read($Heap, n#10, _module.Node.next)): ref != null
                                 ==> Set#IsMember(##S#9, read($Heap, n#10, _module.Node.next)));
                        assert {:id "id247"} {:subsumption 0} LitInt(0) <= ##k#8;
                        assume _module.Node.Nexxxt#canCall($Heap, this, t#0, S#0);
                    }

                    if (Set#IsMember(Visited#0, $Box(_module.Node.Nexxxt($LS($LZ), $Heap, this, t#0, S#0)))
                       && Set#IsMember(Map#Domain(NexxxtInverse#0), 
                        $Box(_module.Node.Nexxxt($LS($LZ), $Heap, this, t#0, S#0))))
                    {
                        // assume allocatedness for receiver argument to function
                        assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                        ##k#9 := t#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##k#9, TInt, $Heap);
                        ##S#10 := S#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##S#10, TSet(Tclass._module.Node?()), $Heap);
                        assert {:id "id248"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#10)
                           ==> _module.Node.IsClosed($Heap, this, ##S#10) || Set#IsMember(##S#10, $Box(this));
                        assert {:id "id249"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#10)
                           ==> _module.Node.IsClosed($Heap, this, ##S#10) || Set#IsMember(##S#10, $Box(null));
                        assert {:id "id250"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#10)
                           ==> _module.Node.IsClosed($Heap, this, ##S#10)
                             || (forall n#11: ref :: 
                              { $Unbox(read($Heap, n#11, _module.Node.next)): ref } 
                              $Is(n#11, Tclass._module.Node?())
                                 ==> 
                                Set#IsMember(##S#10, $Box(n#11))
                                   && n#11 != null
                                   && $Unbox(read($Heap, n#11, _module.Node.next)): ref != null
                                 ==> Set#IsMember(##S#10, read($Heap, n#11, _module.Node.next)));
                        assert {:id "id251"} {:subsumption 0} LitInt(0) <= ##k#9;
                        assume _module.Node.Nexxxt#canCall($Heap, this, t#0, S#0);
                        assert {:id "id252"} {:subsumption 0} Set#IsMember(Map#Domain(NexxxtInverse#0), 
                          $Box(_module.Node.Nexxxt($LS($LZ), $Heap, this, t#0, S#0)));
                    }
                }
            }

            // End Comprehension WF check
            assume (forall t#1: int :: 
              { _module.Node.Nexxxt($LS($LZ), $Heap, this, t#1, S#0) } 
              (LitInt(0) <= t#1 && t#1 < steps#0
                   ==> _module.Node.Nexxxt#canCall($Heap, this, t#1, S#0))
                 && (
                  (LitInt(0) <= t#1 && t#1 < steps#0
                   ==> Set#IsMember(Visited#0, $Box(_module.Node.Nexxxt($LS($LZ), $Heap, this, t#1, S#0))))
                   ==> (LitInt(0) <= t#1 && t#1 < steps#0
                       ==> _module.Node.Nexxxt#canCall($Heap, this, t#1, S#0))
                     && (
                      (LitInt(0) <= t#1 && t#1 < steps#0
                       ==> Set#IsMember(Map#Domain(NexxxtInverse#0), 
                        $Box(_module.Node.Nexxxt($LS($LZ), $Heap, this, t#1, S#0))))
                       ==> 
                      LitInt(0) <= t#1 && t#1 < steps#0
                       ==> _module.Node.Nexxxt#canCall($Heap, this, t#1, S#0))));
            assume {:id "id253"} (forall t#1: int :: 
              { _module.Node.Nexxxt($LS($LZ), $Heap, this, t#1, S#0) } 
              (LitInt(0) <= t#1 && t#1 < steps#0
                   ==> Set#IsMember(Visited#0, $Box(_module.Node.Nexxxt($LS($LZ), $Heap, this, t#1, S#0))))
                 && (LitInt(0) <= t#1 && t#1 < steps#0
                   ==> Set#IsMember(Map#Domain(NexxxtInverse#0), 
                    $Box(_module.Node.Nexxxt($LS($LZ), $Heap, this, t#1, S#0))))
                 && (LitInt(0) <= t#1 && t#1 < steps#0
                   ==> $Unbox(Map#Elements(NexxxtInverse#0)[$Box(_module.Node.Nexxxt($LS($LZ), $Heap, this, t#1, S#0))]): int
                     == t#1));
            // Begin Comprehension WF check
            havoc q#0;
            if ($Is(q#0, Tclass._module.Node?()) && $IsAlloc(q#0, Tclass._module.Node?(), $Heap))
            {
                if (Set#IsMember(Visited#0, $Box(q#0)))
                {
                    newtype$check#3 := null;
                }

                if (Set#IsMember(Visited#0, $Box(q#0)) && q#0 != null)
                {
                    if (Set#IsMember(Map#Domain(NexxxtInverse#0), $Box(q#0)))
                    {
                        assert {:id "id256"} {:subsumption 0} Set#IsMember(Map#Domain(NexxxtInverse#0), $Box(q#0));
                        if (LitInt(0) <= $Unbox(Map#Elements(NexxxtInverse#0)[$Box(q#0)]): int)
                        {
                            assert {:id "id257"} {:subsumption 0} Set#IsMember(Map#Domain(NexxxtInverse#0), $Box(q#0));
                        }
                    }

                    if (Set#IsMember(Map#Domain(NexxxtInverse#0), $Box(q#0))
                       && 
                      LitInt(0) <= $Unbox(Map#Elements(NexxxtInverse#0)[$Box(q#0)]): int
                       && $Unbox(Map#Elements(NexxxtInverse#0)[$Box(q#0)]): int < steps#0)
                    {
                        // assume allocatedness for receiver argument to function
                        assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                        assert {:id "id258"} {:subsumption 0} Set#IsMember(Map#Domain(NexxxtInverse#0), $Box(q#0));
                        ##k#10 := $Unbox(Map#Elements(NexxxtInverse#0)[$Box(q#0)]): int;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##k#10, TInt, $Heap);
                        ##S#11 := S#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##S#11, TSet(Tclass._module.Node?()), $Heap);
                        assert {:id "id259"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#11)
                           ==> _module.Node.IsClosed($Heap, this, ##S#11) || Set#IsMember(##S#11, $Box(this));
                        assert {:id "id260"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#11)
                           ==> _module.Node.IsClosed($Heap, this, ##S#11) || Set#IsMember(##S#11, $Box(null));
                        assert {:id "id261"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#11)
                           ==> _module.Node.IsClosed($Heap, this, ##S#11)
                             || (forall n#12: ref :: 
                              { $Unbox(read($Heap, n#12, _module.Node.next)): ref } 
                              $Is(n#12, Tclass._module.Node?())
                                 ==> 
                                Set#IsMember(##S#11, $Box(n#12))
                                   && n#12 != null
                                   && $Unbox(read($Heap, n#12, _module.Node.next)): ref != null
                                 ==> Set#IsMember(##S#11, read($Heap, n#12, _module.Node.next)));
                        assert {:id "id262"} {:subsumption 0} LitInt(0) <= ##k#10;
                        assume _module.Node.Nexxxt#canCall($Heap, this, $Unbox(Map#Elements(NexxxtInverse#0)[$Box(q#0)]): int, S#0);
                    }
                }
            }

            // End Comprehension WF check
            assume (forall q#1: ref :: 
              { $Unbox(Map#Elements(NexxxtInverse#0)[$Box(q#1)]): int } 
                { Set#IsMember(Map#Domain(NexxxtInverse#0), $Box(q#1)) } 
                { Set#IsMember(Visited#0, $Box(q#1)) } 
              $Is(q#1, Tclass._module.Node?())
                 ==> 
                (Set#IsMember(Visited#0, $Box(q#1)) && q#1 != null
                 ==> Set#IsMember(Map#Domain(NexxxtInverse#0), $Box(q#1)))
                 ==> 
                (Set#IsMember(Visited#0, $Box(q#1)) && q#1 != null
                 ==> LitInt(0) <= $Unbox(Map#Elements(NexxxtInverse#0)[$Box(q#1)]): int)
                 ==> 
                (Set#IsMember(Visited#0, $Box(q#1)) && q#1 != null
                 ==> $Unbox(Map#Elements(NexxxtInverse#0)[$Box(q#1)]): int < steps#0)
                 ==> 
                Set#IsMember(Visited#0, $Box(q#1))
                 ==> 
                q#1 != null
                 ==> _module.Node.Nexxxt#canCall($Heap, this, $Unbox(Map#Elements(NexxxtInverse#0)[$Box(q#1)]): int, S#0));
            assume {:id "id263"} (forall q#1: ref :: 
              { $Unbox(Map#Elements(NexxxtInverse#0)[$Box(q#1)]): int } 
                { Set#IsMember(Map#Domain(NexxxtInverse#0), $Box(q#1)) } 
                { Set#IsMember(Visited#0, $Box(q#1)) } 
              $Is(q#1, Tclass._module.Node?())
                 ==> (Set#IsMember(Visited#0, $Box(q#1)) && q#1 != null
                     ==> Set#IsMember(Map#Domain(NexxxtInverse#0), $Box(q#1)))
                   && (Set#IsMember(Visited#0, $Box(q#1)) && q#1 != null
                     ==> LitInt(0) <= $Unbox(Map#Elements(NexxxtInverse#0)[$Box(q#1)]): int)
                   && (Set#IsMember(Visited#0, $Box(q#1)) && q#1 != null
                     ==> $Unbox(Map#Elements(NexxxtInverse#0)[$Box(q#1)]): int < steps#0)
                   && (Set#IsMember(Visited#0, $Box(q#1)) && q#1 != null
                     ==> _module.Node.Nexxxt($LS($LZ), 
                        $Heap, 
                        this, 
                        $Unbox(Map#Elements(NexxxtInverse#0)[$Box(q#1)]): int, 
                        S#0)
                       == q#1));
            assume true;
            assume false;
        }

        assume true;
        if (Set#IsMember(Visited#0, $Box(p#0)))
        {
            break;
        }

        $decr$loop#00 := Set#Difference(S#0, Visited#0);
        push;
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(211,40)
        assume true;
        assume true;
        assume true;
        assume true;
        assert {:id "id266"} p#0 != null;
        assume true;
        $rhs#0_0 := $Unbox(read($Heap, p#0, _module.Node.next)): ref;
        assume true;
        $rhs#0_1 := steps#0 + 1;
        assume true;
        $rhs#0_2 := Set#Union(Visited#0, Set#UnionOne(Set#Empty(): Set, $Box(p#0)));
        assume true;
        $rhs#0_3 := Map#Build(NexxxtInverse#0, $Box(p#0), $Box(steps#0));
        p#0 := $rhs#0_0;
        steps#0 := $rhs#0_1;
        Visited#0 := $rhs#0_2;
        NexxxtInverse#0 := $rhs#0_3;
        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(202,5)
        assert {:id "id275"} Set#Subset(Set#Difference(S#0, Visited#0), $decr$loop#00)
           && !Set#Subset($decr$loop#00, Set#Difference(S#0, Visited#0));
        assume LitInt(0) <= steps#0
           ==> _module.Node.Nexxxt#canCall($Heap, this, steps#0, S#0)
             && (p#0 == _module.Node.Nexxxt($LS($LZ), $Heap, this, steps#0, S#0)
               ==> 
              Set#IsMember(S#0, $Box(p#0))
               ==> 
              Set#IsMember(Visited#0, $Box(null))
               ==> 
              Set#Subset(Visited#0, S#0)
               ==> (forall t#1: int :: 
                  { _module.Node.Nexxxt($LS($LZ), $Heap, this, t#1, S#0) } 
                  (LitInt(0) <= t#1 && t#1 < steps#0
                       ==> _module.Node.Nexxxt#canCall($Heap, this, t#1, S#0))
                     && (
                      (LitInt(0) <= t#1 && t#1 < steps#0
                       ==> Set#IsMember(Visited#0, $Box(_module.Node.Nexxxt($LS($LZ), $Heap, this, t#1, S#0))))
                       ==> (LitInt(0) <= t#1 && t#1 < steps#0
                           ==> _module.Node.Nexxxt#canCall($Heap, this, t#1, S#0))
                         && (
                          (LitInt(0) <= t#1 && t#1 < steps#0
                           ==> Set#IsMember(Map#Domain(NexxxtInverse#0), 
                            $Box(_module.Node.Nexxxt($LS($LZ), $Heap, this, t#1, S#0))))
                           ==> 
                          LitInt(0) <= t#1 && t#1 < steps#0
                           ==> _module.Node.Nexxxt#canCall($Heap, this, t#1, S#0))))
                 && ((forall t#1: int :: 
                    { _module.Node.Nexxxt($LS($LZ), $Heap, this, t#1, S#0) } 
                    (LitInt(0) <= t#1 && t#1 < steps#0
                         ==> Set#IsMember(Visited#0, $Box(_module.Node.Nexxxt($LS($LZ), $Heap, this, t#1, S#0))))
                       && (LitInt(0) <= t#1 && t#1 < steps#0
                         ==> Set#IsMember(Map#Domain(NexxxtInverse#0), 
                          $Box(_module.Node.Nexxxt($LS($LZ), $Heap, this, t#1, S#0))))
                       && (LitInt(0) <= t#1 && t#1 < steps#0
                         ==> $Unbox(Map#Elements(NexxxtInverse#0)[$Box(_module.Node.Nexxxt($LS($LZ), $Heap, this, t#1, S#0))]): int
                           == t#1))
                   ==> (forall q#1: ref :: 
                    { $Unbox(Map#Elements(NexxxtInverse#0)[$Box(q#1)]): int } 
                      { Set#IsMember(Map#Domain(NexxxtInverse#0), $Box(q#1)) } 
                      { Set#IsMember(Visited#0, $Box(q#1)) } 
                    $Is(q#1, Tclass._module.Node?())
                       ==> 
                      (Set#IsMember(Visited#0, $Box(q#1)) && q#1 != null
                       ==> Set#IsMember(Map#Domain(NexxxtInverse#0), $Box(q#1)))
                       ==> 
                      (Set#IsMember(Visited#0, $Box(q#1)) && q#1 != null
                       ==> LitInt(0) <= $Unbox(Map#Elements(NexxxtInverse#0)[$Box(q#1)]): int)
                       ==> 
                      (Set#IsMember(Visited#0, $Box(q#1)) && q#1 != null
                       ==> $Unbox(Map#Elements(NexxxtInverse#0)[$Box(q#1)]): int < steps#0)
                       ==> 
                      Set#IsMember(Visited#0, $Box(q#1))
                       ==> 
                      q#1 != null
                       ==> _module.Node.Nexxxt#canCall($Heap, this, $Unbox(Map#Elements(NexxxtInverse#0)[$Box(q#1)]): int, S#0))));
    }

    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(213,5)
    newtype$check#4 := null;
    assume true;
    if (p#0 == null)
    {
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(214,12)
        assume true;
        assume true;
        assume true;
        $rhs#1_0 := steps#0;
        assume true;
        $rhs#1_1 := LitInt(1);
        A#0 := $rhs#1_0;
        B#0 := $rhs#1_1;
    }
    else
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(216,9)
        assume true;
        assert {:id "id280"} Set#IsMember(Map#Domain(NexxxtInverse#0), $Box(p#0));
        assume true;
        A#0 := $Unbox(Map#Elements(NexxxtInverse#0)[$Box(p#0)]): int;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(217,9)
        assume true;
        assume true;
        B#0 := steps#0 - A#0;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(218,31)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assume true;
        // ProcessCallStmt: CheckSubrange
        x##2_0 := A#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        y##2_0 := B#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        S##2_0 := S#0;
        call {:id "id283"} Call$$_module.Node.Lemma__NexxxtIsTransitive(this, x##2_0, y##2_0, S##2_0);
        // TrCallStmt: After ProcessCallStmt
    }
}



procedure {:verboseName "Node.CrucialLemma (well-formedness)"} CheckWellFormed$$_module.Node.CrucialLemma(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    a#0: int, 
    b#0: int, 
    S#0: Set
       where $Is(S#0, TSet(Tclass._module.Node?()))
         && $IsAlloc(S#0, TSet(Tclass._module.Node?()), $Heap));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.CrucialLemma (well-formedness)"} CheckWellFormed$$_module.Node.CrucialLemma(this: ref, a#0: int, b#0: int, S#0: Set)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##S#0: Set;
  var k#0: int;
  var l#0: int;
  var ##k#0: int;
  var ##S#1: Set;
  var ##k#1: int;
  var ##S#2: Set;
  var ##k#2: int;
  var ##S#3: Set;
  var newtype$check#0: ref;
  var ##k#3: int;
  var ##S#4: Set;
  var ##k#4: int;
  var ##S#5: Set;
  var ##k#5: int;
  var ##S#6: Set;
  var T#0: int;
  var ##k#6: int;
  var ##S#7: Set;
  var ##k#7: int;
  var ##S#8: Set;


    // AddMethodImpl: CrucialLemma, CheckWellFormed$$_module.Node.CrucialLemma
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
    ##S#0 := S#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##S#0, TSet(Tclass._module.Node?()), $Heap);
    assume _module.Node.IsClosed#canCall($Heap, this, S#0);
    assume {:id "id284"} _module.Node.IsClosed($Heap, this, S#0);
    assume {:id "id285"} LitInt(0) <= a#0;
    assume {:id "id286"} LitInt(1) <= b#0;
    havoc k#0;
    havoc l#0;
    assume true;
    if (*)
    {
        if (LitInt(0) <= k#0)
        {
        }

        if (LitInt(0) <= k#0 && k#0 < l#0)
        {
        }

        assume {:id "id287"} LitInt(0) <= k#0 && k#0 < l#0 && l#0 < a#0;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
        ##k#0 := k#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##k#0, TInt, $Heap);
        ##S#1 := S#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##S#1, TSet(Tclass._module.Node?()), $Heap);
        assert {:id "id288"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1)
           ==> _module.Node.IsClosed($Heap, this, ##S#1) || Set#IsMember(##S#1, $Box(this));
        assert {:id "id289"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1)
           ==> _module.Node.IsClosed($Heap, this, ##S#1) || Set#IsMember(##S#1, $Box(null));
        assert {:id "id290"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1)
           ==> _module.Node.IsClosed($Heap, this, ##S#1)
             || (forall n#0: ref :: 
              { $Unbox(read($Heap, n#0, _module.Node.next)): ref } 
              $Is(n#0, Tclass._module.Node?())
                 ==> 
                Set#IsMember(##S#1, $Box(n#0))
                   && n#0 != null
                   && $Unbox(read($Heap, n#0, _module.Node.next)): ref != null
                 ==> Set#IsMember(##S#1, read($Heap, n#0, _module.Node.next)));
        assert {:id "id291"} {:subsumption 0} LitInt(0) <= ##k#0;
        assume _module.Node.IsClosed($Heap, this, ##S#1) && LitInt(0) <= ##k#0;
        assume _module.Node.Nexxxt#canCall($Heap, this, k#0, S#0);
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
        ##k#1 := l#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##k#1, TInt, $Heap);
        ##S#2 := S#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##S#2, TSet(Tclass._module.Node?()), $Heap);
        assert {:id "id292"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#2)
           ==> _module.Node.IsClosed($Heap, this, ##S#2) || Set#IsMember(##S#2, $Box(this));
        assert {:id "id293"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#2)
           ==> _module.Node.IsClosed($Heap, this, ##S#2) || Set#IsMember(##S#2, $Box(null));
        assert {:id "id294"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#2)
           ==> _module.Node.IsClosed($Heap, this, ##S#2)
             || (forall n#1: ref :: 
              { $Unbox(read($Heap, n#1, _module.Node.next)): ref } 
              $Is(n#1, Tclass._module.Node?())
                 ==> 
                Set#IsMember(##S#2, $Box(n#1))
                   && n#1 != null
                   && $Unbox(read($Heap, n#1, _module.Node.next)): ref != null
                 ==> Set#IsMember(##S#2, read($Heap, n#1, _module.Node.next)));
        assert {:id "id295"} {:subsumption 0} LitInt(0) <= ##k#1;
        assume _module.Node.IsClosed($Heap, this, ##S#2) && LitInt(0) <= ##k#1;
        assume _module.Node.Nexxxt#canCall($Heap, this, l#0, S#0);
        assume {:id "id296"} _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0)
           != _module.Node.Nexxxt($LS($LZ), $Heap, this, l#0, S#0);
    }
    else
    {
        assume {:id "id297"} LitInt(0) <= k#0 && k#0 < l#0 && l#0 < a#0
           ==> _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0)
             != _module.Node.Nexxxt($LS($LZ), $Heap, this, l#0, S#0);
    }

    assume {:id "id298"} (forall k#1: int, l#1: int :: 
      { _module.Node.Nexxxt($LS($LZ), $Heap, this, l#1, S#0), _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0) } 
      LitInt(0) <= k#1 && k#1 < l#1 && l#1 < a#0
         ==> _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0)
           != _module.Node.Nexxxt($LS($LZ), $Heap, this, l#1, S#0));
    if (*)
    {
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
        ##k#2 := a#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##k#2, TInt, $Heap);
        ##S#3 := S#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##S#3, TSet(Tclass._module.Node?()), $Heap);
        assert {:id "id299"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#3)
           ==> _module.Node.IsClosed($Heap, this, ##S#3) || Set#IsMember(##S#3, $Box(this));
        assert {:id "id300"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#3)
           ==> _module.Node.IsClosed($Heap, this, ##S#3) || Set#IsMember(##S#3, $Box(null));
        assert {:id "id301"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#3)
           ==> _module.Node.IsClosed($Heap, this, ##S#3)
             || (forall n#2: ref :: 
              { $Unbox(read($Heap, n#2, _module.Node.next)): ref } 
              $Is(n#2, Tclass._module.Node?())
                 ==> 
                Set#IsMember(##S#3, $Box(n#2))
                   && n#2 != null
                   && $Unbox(read($Heap, n#2, _module.Node.next)): ref != null
                 ==> Set#IsMember(##S#3, read($Heap, n#2, _module.Node.next)));
        assert {:id "id302"} {:subsumption 0} LitInt(0) <= ##k#2;
        assume _module.Node.IsClosed($Heap, this, ##S#3) && LitInt(0) <= ##k#2;
        assume _module.Node.Nexxxt#canCall($Heap, this, a#0, S#0);
        newtype$check#0 := null;
        assume {:id "id303"} _module.Node.Nexxxt($LS($LZ), $Heap, this, a#0, S#0) == null;
    }
    else
    {
        assume {:id "id304"} _module.Node.Nexxxt($LS($LZ), $Heap, this, a#0, S#0) != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
        ##k#3 := a#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##k#3, TInt, $Heap);
        ##S#4 := S#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##S#4, TSet(Tclass._module.Node?()), $Heap);
        assert {:id "id305"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#4)
           ==> _module.Node.IsClosed($Heap, this, ##S#4) || Set#IsMember(##S#4, $Box(this));
        assert {:id "id306"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#4)
           ==> _module.Node.IsClosed($Heap, this, ##S#4) || Set#IsMember(##S#4, $Box(null));
        assert {:id "id307"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#4)
           ==> _module.Node.IsClosed($Heap, this, ##S#4)
             || (forall n#3: ref :: 
              { $Unbox(read($Heap, n#3, _module.Node.next)): ref } 
              $Is(n#3, Tclass._module.Node?())
                 ==> 
                Set#IsMember(##S#4, $Box(n#3))
                   && n#3 != null
                   && $Unbox(read($Heap, n#3, _module.Node.next)): ref != null
                 ==> Set#IsMember(##S#4, read($Heap, n#3, _module.Node.next)));
        assert {:id "id308"} {:subsumption 0} LitInt(0) <= ##k#3;
        assume _module.Node.IsClosed($Heap, this, ##S#4) && LitInt(0) <= ##k#3;
        assume _module.Node.Nexxxt#canCall($Heap, this, a#0, S#0);
        assert {:id "id309"} _module.Node.Nexxxt($LS($LZ), $Heap, this, a#0, S#0) != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(_module.Node.Nexxxt($LS($LZ), $Heap, this, a#0, S#0)), 
          Tclass._module.Node?(), 
          $Heap);
        ##k#4 := b#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##k#4, TInt, $Heap);
        ##S#5 := S#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##S#5, TSet(Tclass._module.Node?()), $Heap);
        assert {:id "id310"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, a#0, S#0), ##S#5)
           ==> _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, a#0, S#0), ##S#5)
             || Set#IsMember(##S#5, $Box(_module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, a#0, S#0)));
        assert {:id "id311"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, a#0, S#0), ##S#5)
           ==> _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, a#0, S#0), ##S#5)
             || Set#IsMember(##S#5, $Box(null));
        assert {:id "id312"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, a#0, S#0), ##S#5)
           ==> _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, a#0, S#0), ##S#5)
             || (forall n#4: ref :: 
              { $Unbox(read($Heap, n#4, _module.Node.next)): ref } 
              $Is(n#4, Tclass._module.Node?())
                 ==> 
                Set#IsMember(##S#5, $Box(n#4))
                   && n#4 != null
                   && $Unbox(read($Heap, n#4, _module.Node.next)): ref != null
                 ==> Set#IsMember(##S#5, read($Heap, n#4, _module.Node.next)));
        assert {:id "id313"} {:subsumption 0} LitInt(0) <= ##k#4;
        assume _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, a#0, S#0), ##S#5)
           && LitInt(0) <= ##k#4;
        assume _module.Node.Nexxxt#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, a#0, S#0), b#0, S#0);
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
        ##k#5 := a#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##k#5, TInt, $Heap);
        ##S#6 := S#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##S#6, TSet(Tclass._module.Node?()), $Heap);
        assert {:id "id314"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#6)
           ==> _module.Node.IsClosed($Heap, this, ##S#6) || Set#IsMember(##S#6, $Box(this));
        assert {:id "id315"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#6)
           ==> _module.Node.IsClosed($Heap, this, ##S#6) || Set#IsMember(##S#6, $Box(null));
        assert {:id "id316"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#6)
           ==> _module.Node.IsClosed($Heap, this, ##S#6)
             || (forall n#5: ref :: 
              { $Unbox(read($Heap, n#5, _module.Node.next)): ref } 
              $Is(n#5, Tclass._module.Node?())
                 ==> 
                Set#IsMember(##S#6, $Box(n#5))
                   && n#5 != null
                   && $Unbox(read($Heap, n#5, _module.Node.next)): ref != null
                 ==> Set#IsMember(##S#6, read($Heap, n#5, _module.Node.next)));
        assert {:id "id317"} {:subsumption 0} LitInt(0) <= ##k#5;
        assume _module.Node.IsClosed($Heap, this, ##S#6) && LitInt(0) <= ##k#5;
        assume _module.Node.Nexxxt#canCall($Heap, this, a#0, S#0);
        assume {:id "id318"} _module.Node.Nexxxt($LS($LZ), $Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, a#0, S#0), b#0, S#0)
           == _module.Node.Nexxxt($LS($LZ), $Heap, this, a#0, S#0);
    }

    havoc $Heap;
    assume old($Heap) == $Heap;
    havoc T#0;
    assume true;
    if (LitInt(0) <= T#0)
    {
    }

    assume {:id "id319"} LitInt(0) <= T#0 && T#0 < a#0 + b#0;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
    ##k#6 := T#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##k#6, TInt, $Heap);
    ##S#7 := S#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##S#7, TSet(Tclass._module.Node?()), $Heap);
    assert {:id "id320"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#7)
       ==> _module.Node.IsClosed($Heap, this, ##S#7) || Set#IsMember(##S#7, $Box(this));
    assert {:id "id321"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#7)
       ==> _module.Node.IsClosed($Heap, this, ##S#7) || Set#IsMember(##S#7, $Box(null));
    assert {:id "id322"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#7)
       ==> _module.Node.IsClosed($Heap, this, ##S#7)
         || (forall n#6: ref :: 
          { $Unbox(read($Heap, n#6, _module.Node.next)): ref } 
          $Is(n#6, Tclass._module.Node?())
             ==> 
            Set#IsMember(##S#7, $Box(n#6))
               && n#6 != null
               && $Unbox(read($Heap, n#6, _module.Node.next)): ref != null
             ==> Set#IsMember(##S#7, read($Heap, n#6, _module.Node.next)));
    assert {:id "id323"} {:subsumption 0} LitInt(0) <= ##k#6;
    assume _module.Node.IsClosed($Heap, this, ##S#7) && LitInt(0) <= ##k#6;
    assume _module.Node.Nexxxt#canCall($Heap, this, T#0, S#0);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
    ##k#7 := 1 + Mul(LitInt(2), T#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##k#7, TInt, $Heap);
    ##S#8 := S#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##S#8, TSet(Tclass._module.Node?()), $Heap);
    assert {:id "id324"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#8)
       ==> _module.Node.IsClosed($Heap, this, ##S#8) || Set#IsMember(##S#8, $Box(this));
    assert {:id "id325"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#8)
       ==> _module.Node.IsClosed($Heap, this, ##S#8) || Set#IsMember(##S#8, $Box(null));
    assert {:id "id326"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#8)
       ==> _module.Node.IsClosed($Heap, this, ##S#8)
         || (forall n#7: ref :: 
          { $Unbox(read($Heap, n#7, _module.Node.next)): ref } 
          $Is(n#7, Tclass._module.Node?())
             ==> 
            Set#IsMember(##S#8, $Box(n#7))
               && n#7 != null
               && $Unbox(read($Heap, n#7, _module.Node.next)): ref != null
             ==> Set#IsMember(##S#8, read($Heap, n#7, _module.Node.next)));
    assert {:id "id327"} {:subsumption 0} LitInt(0) <= ##k#7;
    assume _module.Node.IsClosed($Heap, this, ##S#8) && LitInt(0) <= ##k#7;
    assume _module.Node.Nexxxt#canCall($Heap, this, 1 + Mul(LitInt(2), T#0), S#0);
    assume {:id "id328"} _module.Node.Nexxxt($LS($LZ), $Heap, this, T#0, S#0)
       == _module.Node.Nexxxt($LS($LZ), $Heap, this, 1 + Mul(LitInt(2), T#0), S#0);
}



procedure {:verboseName "Node.CrucialLemma (call)"} Call$$_module.Node.CrucialLemma(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    a#0: int, 
    b#0: int, 
    S#0: Set
       where $Is(S#0, TSet(Tclass._module.Node?()))
         && $IsAlloc(S#0, TSet(Tclass._module.Node?()), $Heap));
  // user-defined preconditions
  requires {:id "id329"} _module.Node.IsClosed#canCall($Heap, this, S#0)
     ==> _module.Node.IsClosed($Heap, this, S#0) || Set#IsMember(S#0, $Box(this));
  requires {:id "id330"} _module.Node.IsClosed#canCall($Heap, this, S#0)
     ==> _module.Node.IsClosed($Heap, this, S#0) || Set#IsMember(S#0, $Box(null));
  requires {:id "id331"} _module.Node.IsClosed#canCall($Heap, this, S#0)
     ==> _module.Node.IsClosed($Heap, this, S#0)
       || (forall n#8: ref :: 
        { $Unbox(read($Heap, n#8, _module.Node.next)): ref } 
        $Is(n#8, Tclass._module.Node?())
           ==> 
          Set#IsMember(S#0, $Box(n#8))
             && n#8 != null
             && $Unbox(read($Heap, n#8, _module.Node.next)): ref != null
           ==> Set#IsMember(S#0, read($Heap, n#8, _module.Node.next)));
  requires {:id "id332"} LitInt(0) <= a#0;
  requires {:id "id333"} LitInt(1) <= b#0;
  requires {:id "id334"} (forall k#1: int, l#1: int :: 
    { _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, l#1, S#0), _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#1, S#0) } 
    LitInt(0) <= k#1 && k#1 < l#1 && l#1 < a#0
       ==> _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#1, S#0)
         != _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, l#1, S#0));
  requires {:id "id335"} _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, a#0, S#0) == null
     || _module.Node.Nexxxt($LS($LS($LZ)), 
        $Heap, 
        _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, a#0, S#0), 
        b#0, 
        S#0)
       == _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, a#0, S#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall T#1: int, _t#0#0: int :: 
    { _module.Node.Nexxxt($LS($LZ), $Heap, this, _t#0#0, S#0), _module.Node.Nexxxt($LS($LZ), $Heap, this, T#1, S#0) } 
      { _module.Node.Nexxxt($LS($LZ), $Heap, this, _t#0#0, S#0), Mul(2, T#1) } 
    _t#0#0 == 1 + Mul(LitInt(2), T#1)
       ==> 
      LitInt(0) <= T#1
       ==> 
      T#1 < a#0 + b#0
       ==> _module.Node.Nexxxt#canCall($Heap, this, T#1, S#0)
         && _module.Node.Nexxxt#canCall($Heap, this, _t#0#0, S#0));
  free ensures {:id "id336"} (exists T#1: int, _t#0#0: int :: 
    { _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, _t#0#0, S#0), _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, T#1, S#0) } 
      { _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, _t#0#0, S#0), Mul(2, T#1) } 
    _t#0#0 == 1 + Mul(LitInt(2), T#1)
       && 
      LitInt(0) <= T#1
       && T#1 < a#0 + b#0
       && _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, T#1, S#0)
         == _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, _t#0#0, S#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Node.CrucialLemma (correctness)"} Impl$$_module.Node.CrucialLemma(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    a#0: int, 
    b#0: int, 
    S#0: Set
       where $Is(S#0, TSet(Tclass._module.Node?()))
         && $IsAlloc(S#0, TSet(Tclass._module.Node?()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id337"} _module.Node.IsClosed#canCall($Heap, this, S#0)
     && 
    _module.Node.IsClosed($Heap, this, S#0)
     && 
    Set#IsMember(S#0, $Box(this))
     && Set#IsMember(S#0, $Box(null))
     && (forall n#9: ref :: 
      { $Unbox(read($Heap, n#9, _module.Node.next)): ref } 
      $Is(n#9, Tclass._module.Node?())
         ==> 
        Set#IsMember(S#0, $Box(n#9))
           && n#9 != null
           && $Unbox(read($Heap, n#9, _module.Node.next)): ref != null
         ==> Set#IsMember(S#0, read($Heap, n#9, _module.Node.next)));
  requires {:id "id338"} LitInt(0) <= a#0;
  requires {:id "id339"} LitInt(1) <= b#0;
  free requires {:id "id340"} (forall k#1: int, l#1: int :: 
    { _module.Node.Nexxxt($LS($LZ), $Heap, this, l#1, S#0), _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0) } 
    LitInt(0) <= k#1 && k#1 < l#1 && l#1 < a#0
       ==> _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0)
         != _module.Node.Nexxxt($LS($LZ), $Heap, this, l#1, S#0));
  requires {:id "id341"} _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, a#0, S#0) == null
     || _module.Node.Nexxxt($LS($LS($LZ)), 
        $Heap, 
        _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, a#0, S#0), 
        b#0, 
        S#0)
       == _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, a#0, S#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall T#1: int, _t#0#0: int :: 
    { _module.Node.Nexxxt($LS($LZ), $Heap, this, _t#0#0, S#0), _module.Node.Nexxxt($LS($LZ), $Heap, this, T#1, S#0) } 
      { _module.Node.Nexxxt($LS($LZ), $Heap, this, _t#0#0, S#0), Mul(2, T#1) } 
    _t#0#0 == 1 + Mul(LitInt(2), T#1)
       ==> 
      LitInt(0) <= T#1
       ==> 
      T#1 < a#0 + b#0
       ==> _module.Node.Nexxxt#canCall($Heap, this, T#1, S#0)
         && _module.Node.Nexxxt#canCall($Heap, this, _t#0#0, S#0));
  ensures {:id "id342"} (exists T#1: int, _t#0#0: int :: 
    { _module.Node.Nexxxt($LS($LZ), $Heap, this, _t#0#0, S#0), _module.Node.Nexxxt($LS($LZ), $Heap, this, T#1, S#0) } 
      { _module.Node.Nexxxt($LS($LZ), $Heap, this, _t#0#0, S#0), Mul(2, T#1) } 
    _t#0#0 == 1 + Mul(LitInt(2), T#1)
       && 
      LitInt(0) <= T#1
       && T#1 < a#0 + b#0
       && _module.Node.Nexxxt($LS($LZ), $Heap, this, T#1, S#0)
         == _module.Node.Nexxxt($LS($LZ), $Heap, this, _t#0#0, S#0));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.CrucialLemma (correctness)"} Impl$$_module.Node.CrucialLemma(this: ref, a#0: int, b#0: int, S#0: Set) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var ##k#8: int;
  var ##S#9: Set;
  var newtype$check#1: ref;
  var d##0_0: int;
  var S##0_0: Set;
  var ##k#0_0: int;
  var ##S#0_0: Set;
  var newtype$check#0_0: ref;
  var ##k#0_1: int;
  var ##S#0_1: Set;
  var newtype$check#0_1: ref;
  var ##k#1_0: int;
  var ##S#1_0: Set;
  var newtype$check#1_0: ref;
  var ##k#1_1: int;
  var ##S#1_1: Set;
  var ##k#1_2: int;
  var ##S#1_2: Set;
  var ##k#1_3: int;
  var ##S#1_3: Set;
  var x##1_0: int;
  var y##1_0: int;
  var S##1_0: Set;
  var ##k#1_4: int;
  var ##S#1_4: Set;
  var ##k#1_5: int;
  var ##S#1_5: Set;
  var t#1_0: int;
  var h#1_0: int;
  var $rhs#1_0: int;
  var $rhs#1_1: int;
  var vt#1_0: int;
  var $PreLoopHeap$loop#1_0: Heap;
  var $decr_init$loop#1_00: int;
  var $w$loop#1_0: bool;
  var ##k#1_6: int;
  var ##S#1_6: Set;
  var ##k#1_7: int;
  var ##S#1_7: Set;
  var $decr$loop#1_00: int;
  var a##1_0_0: int;
  var b##1_0_0: int;
  var k##1_0_0: int;
  var S##1_0_0: Set;
  var catchup#1_0: int;
  var i#1_0: int;
  var $PreLoopHeap$loop#1_1: Heap;
  var $decr_init$loop#1_10: int;
  var $w$loop#1_1: bool;
  var ##k#1_8: int;
  var ##S#1_8: Set;
  var ##k#1_9: int;
  var ##S#1_9: Set;
  var ##k#1_10: int;
  var ##S#1_10: Set;
  var ##k#1_11: int;
  var ##S#1_11: Set;
  var $decr$loop#1_10: int;
  var $rhs#1_1_0: int;
  var $rhs#1_1_1: int;
  var $rhs#1_1_2: int;
  var $rhs#1_1_3: int;
  var ##k#1_12: int;
  var ##S#1_12: Set;
  var ##k#1_13: int;
  var ##S#1_13: Set;

    // AddMethodImpl: CrucialLemma, Impl$$_module.Node.CrucialLemma
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#a0#0: int, $ih#b0#0: int, $ih#S0#0: Set :: 
      { _module.Node.Nexxxt($LS($LZ), 
          $Heap, 
          _module.Node.Nexxxt($LS($LZ), $Heap, this, $ih#a0#0, $ih#S0#0), 
          $ih#b0#0, 
          $ih#S0#0) } 
      $Is($ih#S0#0, TSet(Tclass._module.Node?()))
           && 
          _module.Node.IsClosed($initHeapForallStmt#0, this, $ih#S0#0)
           && 
          LitInt(0) <= $ih#a0#0
           && LitInt(1) <= $ih#b0#0
           && (forall k#2: int, l#2: int :: 
            { _module.Node.Nexxxt($LS($LZ), $initHeapForallStmt#0, this, l#2, $ih#S0#0), _module.Node.Nexxxt($LS($LZ), $initHeapForallStmt#0, this, k#2, $ih#S0#0) } 
            LitInt(0) <= k#2 && k#2 < l#2 && l#2 < $ih#a0#0
               ==> _module.Node.Nexxxt($LS($LZ), $initHeapForallStmt#0, this, k#2, $ih#S0#0)
                 != _module.Node.Nexxxt($LS($LZ), $initHeapForallStmt#0, this, l#2, $ih#S0#0))
           && (_module.Node.Nexxxt($LS($LZ), $initHeapForallStmt#0, this, $ih#a0#0, $ih#S0#0)
               == null
             || _module.Node.Nexxxt($LS($LZ), 
                $initHeapForallStmt#0, 
                _module.Node.Nexxxt($LS($LZ), $initHeapForallStmt#0, this, $ih#a0#0, $ih#S0#0), 
                $ih#b0#0, 
                $ih#S0#0)
               == _module.Node.Nexxxt($LS($LZ), $initHeapForallStmt#0, this, $ih#a0#0, $ih#S0#0))
           && ((0 <= $ih#a0#0 && $ih#a0#0 < a#0)
             || ($ih#a0#0 == a#0
               && ((0 <= $ih#b0#0 && $ih#b0#0 < b#0)
                 || ($ih#b0#0 == b#0 && Set#Subset($ih#S0#0, S#0) && !Set#Subset(S#0, $ih#S0#0)))))
         ==> (exists T#2: int, _t#0#1: int :: 
          { _module.Node.Nexxxt($LS($LZ), $Heap, this, _t#0#1, $ih#S0#0), _module.Node.Nexxxt($LS($LZ), $Heap, this, T#2, $ih#S0#0) } 
            { _module.Node.Nexxxt($LS($LZ), $Heap, this, _t#0#1, $ih#S0#0), Mul(2, T#2) } 
          _t#0#1 == 1 + Mul(LitInt(2), T#2)
             && 
            LitInt(0) <= T#2
             && T#2 < $ih#a0#0 + $ih#b0#0
             && _module.Node.Nexxxt($LS($LZ), $Heap, this, T#2, $ih#S0#0)
               == _module.Node.Nexxxt($LS($LZ), $Heap, this, _t#0#1, $ih#S0#0)));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(229,5)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
    ##k#8 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##k#8, TInt, $Heap);
    ##S#9 := S#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##S#9, TSet(Tclass._module.Node?()), $Heap);
    assert {:id "id343"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#9)
       ==> _module.Node.IsClosed($Heap, this, ##S#9) || Set#IsMember(##S#9, $Box(this));
    assert {:id "id344"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#9)
       ==> _module.Node.IsClosed($Heap, this, ##S#9) || Set#IsMember(##S#9, $Box(null));
    assert {:id "id345"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#9)
       ==> _module.Node.IsClosed($Heap, this, ##S#9)
         || (forall n#10: ref :: 
          { $Unbox(read($Heap, n#10, _module.Node.next)): ref } 
          $Is(n#10, Tclass._module.Node?())
             ==> 
            Set#IsMember(##S#9, $Box(n#10))
               && n#10 != null
               && $Unbox(read($Heap, n#10, _module.Node.next)): ref != null
             ==> Set#IsMember(##S#9, read($Heap, n#10, _module.Node.next)));
    assert {:id "id346"} {:subsumption 0} LitInt(0) <= ##k#8;
    assume _module.Node.IsClosed($Heap, this, ##S#9) && LitInt(0) <= ##k#8;
    assume _module.Node.Nexxxt#canCall($Heap, this, a#0, S#0);
    newtype$check#1 := null;
    assume _module.Node.Nexxxt#canCall($Heap, this, a#0, S#0);
    if (_module.Node.Nexxxt($LS($LZ), $Heap, this, a#0, S#0) == null)
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(230,27)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assume true;
        // ProcessCallStmt: CheckSubrange
        d##0_0 := 1 + Mul(LitInt(2), a#0);
        assume true;
        // ProcessCallStmt: CheckSubrange
        S##0_0 := S#0;
        call {:id "id347"} Call$$_module.Node.Lemma__NullIsTerminal(this, d##0_0, S##0_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(231,7)
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
        ##k#0_0 := a#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##k#0_0, TInt, $Heap);
        ##S#0_0 := S#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##S#0_0, TSet(Tclass._module.Node?()), $Heap);
        assert {:id "id348"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0)
           ==> _module.Node.IsClosed($Heap, this, ##S#0_0) || Set#IsMember(##S#0_0, $Box(this));
        assert {:id "id349"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0)
           ==> _module.Node.IsClosed($Heap, this, ##S#0_0) || Set#IsMember(##S#0_0, $Box(null));
        assert {:id "id350"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0)
           ==> _module.Node.IsClosed($Heap, this, ##S#0_0)
             || (forall n#0_0: ref :: 
              { $Unbox(read($Heap, n#0_0, _module.Node.next)): ref } 
              $Is(n#0_0, Tclass._module.Node?())
                 ==> 
                Set#IsMember(##S#0_0, $Box(n#0_0))
                   && n#0_0 != null
                   && $Unbox(read($Heap, n#0_0, _module.Node.next)): ref != null
                 ==> Set#IsMember(##S#0_0, read($Heap, n#0_0, _module.Node.next)));
        assert {:id "id351"} {:subsumption 0} LitInt(0) <= ##k#0_0;
        assume _module.Node.Nexxxt#canCall($Heap, this, a#0, S#0);
        newtype$check#0_0 := null;
        if (_module.Node.Nexxxt($LS($LZ), $Heap, this, a#0, S#0) == null)
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
            ##k#0_1 := 1 + Mul(LitInt(2), a#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##k#0_1, TInt, $Heap);
            ##S#0_1 := S#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##S#0_1, TSet(Tclass._module.Node?()), $Heap);
            assert {:id "id352"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_1)
               ==> _module.Node.IsClosed($Heap, this, ##S#0_1) || Set#IsMember(##S#0_1, $Box(this));
            assert {:id "id353"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_1)
               ==> _module.Node.IsClosed($Heap, this, ##S#0_1) || Set#IsMember(##S#0_1, $Box(null));
            assert {:id "id354"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_1)
               ==> _module.Node.IsClosed($Heap, this, ##S#0_1)
                 || (forall n#0_1: ref :: 
                  { $Unbox(read($Heap, n#0_1, _module.Node.next)): ref } 
                  $Is(n#0_1, Tclass._module.Node?())
                     ==> 
                    Set#IsMember(##S#0_1, $Box(n#0_1))
                       && n#0_1 != null
                       && $Unbox(read($Heap, n#0_1, _module.Node.next)): ref != null
                     ==> Set#IsMember(##S#0_1, read($Heap, n#0_1, _module.Node.next)));
            assert {:id "id355"} {:subsumption 0} LitInt(0) <= ##k#0_1;
            assume _module.Node.Nexxxt#canCall($Heap, this, 1 + Mul(LitInt(2), a#0), S#0);
            newtype$check#0_1 := null;
        }

        assume _module.Node.Nexxxt#canCall($Heap, this, a#0, S#0)
           && (_module.Node.Nexxxt($LS($LZ), $Heap, this, a#0, S#0) == null
             ==> _module.Node.Nexxxt#canCall($Heap, this, 1 + Mul(LitInt(2), a#0), S#0));
        assert {:id "id356"} {:subsumption 0} _module.Node.Nexxxt($LS($LZ), $Heap, this, a#0, S#0) == null
           ==> _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, 1 + Mul(LitInt(2), a#0), S#0)
             == null;
        assume {:id "id357"} _module.Node.Nexxxt($LS($LZ), $Heap, this, a#0, S#0) == null
           ==> _module.Node.Nexxxt($LS($LZ), $Heap, this, 1 + Mul(LitInt(2), a#0), S#0) == null;
    }
    else
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(233,7)
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
        ##k#1_0 := a#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##k#1_0, TInt, $Heap);
        ##S#1_0 := S#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##S#1_0, TSet(Tclass._module.Node?()), $Heap);
        assert {:id "id358"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1_0)
           ==> _module.Node.IsClosed($Heap, this, ##S#1_0) || Set#IsMember(##S#1_0, $Box(this));
        assert {:id "id359"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1_0)
           ==> _module.Node.IsClosed($Heap, this, ##S#1_0) || Set#IsMember(##S#1_0, $Box(null));
        assert {:id "id360"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1_0)
           ==> _module.Node.IsClosed($Heap, this, ##S#1_0)
             || (forall n#1_0: ref :: 
              { $Unbox(read($Heap, n#1_0, _module.Node.next)): ref } 
              $Is(n#1_0, Tclass._module.Node?())
                 ==> 
                Set#IsMember(##S#1_0, $Box(n#1_0))
                   && n#1_0 != null
                   && $Unbox(read($Heap, n#1_0, _module.Node.next)): ref != null
                 ==> Set#IsMember(##S#1_0, read($Heap, n#1_0, _module.Node.next)));
        assert {:id "id361"} {:subsumption 0} LitInt(0) <= ##k#1_0;
        assume _module.Node.Nexxxt#canCall($Heap, this, a#0, S#0);
        newtype$check#1_0 := null;
        if (_module.Node.Nexxxt($LS($LZ), $Heap, this, a#0, S#0) != null)
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
            ##k#1_1 := a#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##k#1_1, TInt, $Heap);
            ##S#1_1 := S#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##S#1_1, TSet(Tclass._module.Node?()), $Heap);
            assert {:id "id362"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1_1)
               ==> _module.Node.IsClosed($Heap, this, ##S#1_1) || Set#IsMember(##S#1_1, $Box(this));
            assert {:id "id363"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1_1)
               ==> _module.Node.IsClosed($Heap, this, ##S#1_1) || Set#IsMember(##S#1_1, $Box(null));
            assert {:id "id364"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1_1)
               ==> _module.Node.IsClosed($Heap, this, ##S#1_1)
                 || (forall n#1_1: ref :: 
                  { $Unbox(read($Heap, n#1_1, _module.Node.next)): ref } 
                  $Is(n#1_1, Tclass._module.Node?())
                     ==> 
                    Set#IsMember(##S#1_1, $Box(n#1_1))
                       && n#1_1 != null
                       && $Unbox(read($Heap, n#1_1, _module.Node.next)): ref != null
                     ==> Set#IsMember(##S#1_1, read($Heap, n#1_1, _module.Node.next)));
            assert {:id "id365"} {:subsumption 0} LitInt(0) <= ##k#1_1;
            assume _module.Node.Nexxxt#canCall($Heap, this, a#0, S#0);
            assert {:id "id366"} {:subsumption 0} _module.Node.Nexxxt($LS($LZ), $Heap, this, a#0, S#0) != null;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(_module.Node.Nexxxt($LS($LZ), $Heap, this, a#0, S#0)), 
              Tclass._module.Node?(), 
              $Heap);
            ##k#1_2 := b#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##k#1_2, TInt, $Heap);
            ##S#1_2 := S#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##S#1_2, TSet(Tclass._module.Node?()), $Heap);
            assert {:id "id367"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, a#0, S#0), ##S#1_2)
               ==> _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, a#0, S#0), ##S#1_2)
                 || Set#IsMember(##S#1_2, $Box(_module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, a#0, S#0)));
            assert {:id "id368"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, a#0, S#0), ##S#1_2)
               ==> _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, a#0, S#0), ##S#1_2)
                 || Set#IsMember(##S#1_2, $Box(null));
            assert {:id "id369"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, a#0, S#0), ##S#1_2)
               ==> _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, a#0, S#0), ##S#1_2)
                 || (forall n#1_2: ref :: 
                  { $Unbox(read($Heap, n#1_2, _module.Node.next)): ref } 
                  $Is(n#1_2, Tclass._module.Node?())
                     ==> 
                    Set#IsMember(##S#1_2, $Box(n#1_2))
                       && n#1_2 != null
                       && $Unbox(read($Heap, n#1_2, _module.Node.next)): ref != null
                     ==> Set#IsMember(##S#1_2, read($Heap, n#1_2, _module.Node.next)));
            assert {:id "id370"} {:subsumption 0} LitInt(0) <= ##k#1_2;
            assume _module.Node.Nexxxt#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, a#0, S#0), b#0, S#0);
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
            ##k#1_3 := a#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##k#1_3, TInt, $Heap);
            ##S#1_3 := S#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##S#1_3, TSet(Tclass._module.Node?()), $Heap);
            assert {:id "id371"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1_3)
               ==> _module.Node.IsClosed($Heap, this, ##S#1_3) || Set#IsMember(##S#1_3, $Box(this));
            assert {:id "id372"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1_3)
               ==> _module.Node.IsClosed($Heap, this, ##S#1_3) || Set#IsMember(##S#1_3, $Box(null));
            assert {:id "id373"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1_3)
               ==> _module.Node.IsClosed($Heap, this, ##S#1_3)
                 || (forall n#1_3: ref :: 
                  { $Unbox(read($Heap, n#1_3, _module.Node.next)): ref } 
                  $Is(n#1_3, Tclass._module.Node?())
                     ==> 
                    Set#IsMember(##S#1_3, $Box(n#1_3))
                       && n#1_3 != null
                       && $Unbox(read($Heap, n#1_3, _module.Node.next)): ref != null
                     ==> Set#IsMember(##S#1_3, read($Heap, n#1_3, _module.Node.next)));
            assert {:id "id374"} {:subsumption 0} LitInt(0) <= ##k#1_3;
            assume _module.Node.Nexxxt#canCall($Heap, this, a#0, S#0);
        }

        assume _module.Node.Nexxxt#canCall($Heap, this, a#0, S#0)
           && (_module.Node.Nexxxt($LS($LZ), $Heap, this, a#0, S#0) != null
             ==> _module.Node.Nexxxt#canCall($Heap, this, a#0, S#0)
               && _module.Node.Nexxxt#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, a#0, S#0), b#0, S#0)
               && _module.Node.Nexxxt#canCall($Heap, this, a#0, S#0));
        assert {:id "id375"} {:subsumption 0} _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, a#0, S#0) != null;
        assert {:id "id376"} {:subsumption 0} _module.Node.Nexxxt($LS($LS($LZ)), 
            $Heap, 
            _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, a#0, S#0), 
            b#0, 
            S#0)
           == _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, a#0, S#0);
        assume {:id "id377"} _module.Node.Nexxxt($LS($LZ), $Heap, this, a#0, S#0) != null
           && _module.Node.Nexxxt($LS($LZ), $Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, a#0, S#0), b#0, S#0)
             == _module.Node.Nexxxt($LS($LZ), $Heap, this, a#0, S#0);
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(234,31)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assume true;
        // ProcessCallStmt: CheckSubrange
        x##1_0 := a#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        y##1_0 := b#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        S##1_0 := S#0;
        call {:id "id378"} Call$$_module.Node.Lemma__NexxxtIsTransitive(this, x##1_0, y##1_0, S##1_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(235,7)
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
        ##k#1_4 := a#0 + b#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##k#1_4, TInt, $Heap);
        ##S#1_4 := S#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##S#1_4, TSet(Tclass._module.Node?()), $Heap);
        assert {:id "id379"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1_4)
           ==> _module.Node.IsClosed($Heap, this, ##S#1_4) || Set#IsMember(##S#1_4, $Box(this));
        assert {:id "id380"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1_4)
           ==> _module.Node.IsClosed($Heap, this, ##S#1_4) || Set#IsMember(##S#1_4, $Box(null));
        assert {:id "id381"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1_4)
           ==> _module.Node.IsClosed($Heap, this, ##S#1_4)
             || (forall n#1_4: ref :: 
              { $Unbox(read($Heap, n#1_4, _module.Node.next)): ref } 
              $Is(n#1_4, Tclass._module.Node?())
                 ==> 
                Set#IsMember(##S#1_4, $Box(n#1_4))
                   && n#1_4 != null
                   && $Unbox(read($Heap, n#1_4, _module.Node.next)): ref != null
                 ==> Set#IsMember(##S#1_4, read($Heap, n#1_4, _module.Node.next)));
        assert {:id "id382"} {:subsumption 0} LitInt(0) <= ##k#1_4;
        assume _module.Node.Nexxxt#canCall($Heap, this, a#0 + b#0, S#0);
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
        ##k#1_5 := a#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##k#1_5, TInt, $Heap);
        ##S#1_5 := S#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##S#1_5, TSet(Tclass._module.Node?()), $Heap);
        assert {:id "id383"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1_5)
           ==> _module.Node.IsClosed($Heap, this, ##S#1_5) || Set#IsMember(##S#1_5, $Box(this));
        assert {:id "id384"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1_5)
           ==> _module.Node.IsClosed($Heap, this, ##S#1_5) || Set#IsMember(##S#1_5, $Box(null));
        assert {:id "id385"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1_5)
           ==> _module.Node.IsClosed($Heap, this, ##S#1_5)
             || (forall n#1_5: ref :: 
              { $Unbox(read($Heap, n#1_5, _module.Node.next)): ref } 
              $Is(n#1_5, Tclass._module.Node?())
                 ==> 
                Set#IsMember(##S#1_5, $Box(n#1_5))
                   && n#1_5 != null
                   && $Unbox(read($Heap, n#1_5, _module.Node.next)): ref != null
                 ==> Set#IsMember(##S#1_5, read($Heap, n#1_5, _module.Node.next)));
        assert {:id "id386"} {:subsumption 0} LitInt(0) <= ##k#1_5;
        assume _module.Node.Nexxxt#canCall($Heap, this, a#0, S#0);
        assume _module.Node.Nexxxt#canCall($Heap, this, a#0 + b#0, S#0)
           && _module.Node.Nexxxt#canCall($Heap, this, a#0, S#0);
        assert {:id "id387"} {:subsumption 0} _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, a#0 + b#0, S#0)
           == _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, a#0, S#0);
        assume {:id "id388"} _module.Node.Nexxxt($LS($LZ), $Heap, this, a#0 + b#0, S#0)
           == _module.Node.Nexxxt($LS($LZ), $Heap, this, a#0, S#0);
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(242,16)
        assume true;
        assume true;
        assume true;
        $rhs#1_0 := a#0;
        assume true;
        $rhs#1_1 := 1 + Mul(LitInt(2), a#0);
        t#1_0 := $rhs#1_0;
        h#1_0 := $rhs#1_1;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(243,14)
        assume true;
        assume true;
        vt#1_0 := a#0;
        // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(244,7)
        // Assume Fuel Constant
        $PreLoopHeap$loop#1_0 := $Heap;
        $decr_init$loop#1_00 := h#1_0 - vt#1_0;
        havoc $w$loop#1_0;
        while (true)
          free invariant true;
          invariant {:id "id395"} $w$loop#1_0 ==> t#1_0 <= vt#1_0;
          invariant {:id "id396"} $w$loop#1_0 ==> vt#1_0 < h#1_0 + b#0;
          free invariant $w$loop#1_0
             ==> _module.Node.Nexxxt#canCall($Heap, this, t#1_0, S#0)
               && _module.Node.Nexxxt#canCall($Heap, this, vt#1_0, S#0);
          invariant {:id "id406"} $w$loop#1_0
             ==> _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, t#1_0, S#0)
               == _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, vt#1_0, S#0);
          free invariant $PreLoopHeap$loop#1_0 == $Heap;
          free invariant (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null && $Unbox(read($PreLoopHeap$loop#1_0, $o, alloc)): bool
               ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#1_0, $o, $f)
                 || $_ModifiesFrame[$o, $f]);
          free invariant h#1_0 - vt#1_0 <= $decr_init$loop#1_00;
        {
            if (!$w$loop#1_0)
            {
                if (t#1_0 <= vt#1_0)
                {
                }

                assume true;
                assume {:id "id394"} t#1_0 <= vt#1_0 && vt#1_0 < h#1_0 + b#0;
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                ##k#1_6 := t#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##k#1_6, TInt, $Heap);
                ##S#1_6 := S#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##S#1_6, TSet(Tclass._module.Node?()), $Heap);
                assert {:id "id397"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1_6)
                   ==> _module.Node.IsClosed($Heap, this, ##S#1_6) || Set#IsMember(##S#1_6, $Box(this));
                assert {:id "id398"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1_6)
                   ==> _module.Node.IsClosed($Heap, this, ##S#1_6) || Set#IsMember(##S#1_6, $Box(null));
                assert {:id "id399"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1_6)
                   ==> _module.Node.IsClosed($Heap, this, ##S#1_6)
                     || (forall n#1_6: ref :: 
                      { $Unbox(read($Heap, n#1_6, _module.Node.next)): ref } 
                      $Is(n#1_6, Tclass._module.Node?())
                         ==> 
                        Set#IsMember(##S#1_6, $Box(n#1_6))
                           && n#1_6 != null
                           && $Unbox(read($Heap, n#1_6, _module.Node.next)): ref != null
                         ==> Set#IsMember(##S#1_6, read($Heap, n#1_6, _module.Node.next)));
                assert {:id "id400"} {:subsumption 0} LitInt(0) <= ##k#1_6;
                assume _module.Node.Nexxxt#canCall($Heap, this, t#1_0, S#0);
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                ##k#1_7 := vt#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##k#1_7, TInt, $Heap);
                ##S#1_7 := S#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##S#1_7, TSet(Tclass._module.Node?()), $Heap);
                assert {:id "id401"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1_7)
                   ==> _module.Node.IsClosed($Heap, this, ##S#1_7) || Set#IsMember(##S#1_7, $Box(this));
                assert {:id "id402"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1_7)
                   ==> _module.Node.IsClosed($Heap, this, ##S#1_7) || Set#IsMember(##S#1_7, $Box(null));
                assert {:id "id403"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1_7)
                   ==> _module.Node.IsClosed($Heap, this, ##S#1_7)
                     || (forall n#1_7: ref :: 
                      { $Unbox(read($Heap, n#1_7, _module.Node.next)): ref } 
                      $Is(n#1_7, Tclass._module.Node?())
                         ==> 
                        Set#IsMember(##S#1_7, $Box(n#1_7))
                           && n#1_7 != null
                           && $Unbox(read($Heap, n#1_7, _module.Node.next)): ref != null
                         ==> Set#IsMember(##S#1_7, read($Heap, n#1_7, _module.Node.next)));
                assert {:id "id404"} {:subsumption 0} LitInt(0) <= ##k#1_7;
                assume _module.Node.Nexxxt#canCall($Heap, this, vt#1_0, S#0);
                assume _module.Node.Nexxxt#canCall($Heap, this, t#1_0, S#0)
                   && _module.Node.Nexxxt#canCall($Heap, this, vt#1_0, S#0);
                assume {:id "id405"} _module.Node.Nexxxt($LS($LZ), $Heap, this, t#1_0, S#0)
                   == _module.Node.Nexxxt($LS($LZ), $Heap, this, vt#1_0, S#0);
                assume true;
                assume false;
            }

            assume true;
            if (h#1_0 <= vt#1_0)
            {
                break;
            }

            $decr$loop#1_00 := h#1_0 - vt#1_0;
            push;
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(248,26)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            assume true;
            // ProcessCallStmt: CheckSubrange
            a##1_0_0 := a#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            b##1_0_0 := b#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            k##1_0_0 := vt#1_0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            S##1_0_0 := S#0;
            call {:id "id407"} Call$$_module.Node.Lemma__AboutCycles(this, a##1_0_0, b##1_0_0, k##1_0_0, S##1_0_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(249,12)
            assume true;
            assume true;
            vt#1_0 := vt#1_0 + b#0;
            pop;
            // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(244,7)
            assert {:id "id409"} 0 <= $decr$loop#1_00 || h#1_0 - vt#1_0 == $decr$loop#1_00;
            assert {:id "id410"} h#1_0 - vt#1_0 < $decr$loop#1_00;
            assume t#1_0 <= vt#1_0 && vt#1_0 < h#1_0 + b#0
               ==> _module.Node.Nexxxt#canCall($Heap, this, t#1_0, S#0)
                 && _module.Node.Nexxxt#canCall($Heap, this, vt#1_0, S#0);
        }

        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(254,19)
        assume true;
        assume true;
        catchup#1_0 := vt#1_0 - h#1_0;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(255,7)
        if (LitInt(0) <= catchup#1_0)
        {
        }

        assume true;
        assert {:id "id412"} {:subsumption 0} LitInt(0) <= catchup#1_0;
        assert {:id "id413"} {:subsumption 0} catchup#1_0 < b#0;
        assume {:id "id414"} LitInt(0) <= catchup#1_0 && catchup#1_0 < b#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(258,13)
        assume true;
        assume true;
        i#1_0 := LitInt(0);
        // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(259,7)
        // Assume Fuel Constant
        $PreLoopHeap$loop#1_1 := $Heap;
        $decr_init$loop#1_10 := catchup#1_0 - i#1_0;
        havoc $w$loop#1_1;
        while (true)
          free invariant true;
          invariant {:id "id417"} $w$loop#1_1 ==> LitInt(0) <= i#1_0;
          invariant {:id "id418"} $w$loop#1_1 ==> i#1_0 <= catchup#1_0;
          free invariant true;
          invariant {:id "id420"} $w$loop#1_1 ==> t#1_0 == a#0 + i#1_0;
          invariant {:id "id421"} $w$loop#1_1 ==> h#1_0 == 1 + Mul(LitInt(2), t#1_0);
          invariant {:id "id422"} $w$loop#1_1 ==> t#1_0 <= vt#1_0;
          free invariant $w$loop#1_1
             ==> _module.Node.Nexxxt#canCall($Heap, this, t#1_0, S#0)
               && _module.Node.Nexxxt#canCall($Heap, this, vt#1_0, S#0)
               && (_module.Node.Nexxxt($LS($LZ), $Heap, this, t#1_0, S#0)
                   == _module.Node.Nexxxt($LS($LZ), $Heap, this, vt#1_0, S#0)
                 ==> _module.Node.Nexxxt#canCall($Heap, this, vt#1_0, S#0)
                   && _module.Node.Nexxxt#canCall($Heap, this, h#1_0 + catchup#1_0 - i#1_0, S#0));
          invariant {:id "id440"} $w$loop#1_1
             ==> _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, t#1_0, S#0)
               == _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, vt#1_0, S#0);
          invariant {:id "id441"} $w$loop#1_1
             ==> _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, vt#1_0, S#0)
               == _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, h#1_0 + catchup#1_0 - i#1_0, S#0);
          free invariant $PreLoopHeap$loop#1_1 == $Heap;
          free invariant (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null && $Unbox(read($PreLoopHeap$loop#1_1, $o, alloc)): bool
               ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#1_1, $o, $f)
                 || $_ModifiesFrame[$o, $f]);
          free invariant catchup#1_0 - i#1_0 <= $decr_init$loop#1_10;
        {
            if (!$w$loop#1_1)
            {
                if (LitInt(0) <= i#1_0)
                {
                }

                assume true;
                assume {:id "id416"} LitInt(0) <= i#1_0 && i#1_0 <= catchup#1_0;
                if (t#1_0 == a#0 + i#1_0)
                {
                }

                if (t#1_0 == a#0 + i#1_0 && h#1_0 == 1 + Mul(LitInt(2), t#1_0))
                {
                }

                assume true;
                assume {:id "id419"} t#1_0 == a#0 + i#1_0 && h#1_0 == 1 + Mul(LitInt(2), t#1_0) && t#1_0 <= vt#1_0;
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                ##k#1_8 := t#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##k#1_8, TInt, $Heap);
                ##S#1_8 := S#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##S#1_8, TSet(Tclass._module.Node?()), $Heap);
                assert {:id "id423"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1_8)
                   ==> _module.Node.IsClosed($Heap, this, ##S#1_8) || Set#IsMember(##S#1_8, $Box(this));
                assert {:id "id424"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1_8)
                   ==> _module.Node.IsClosed($Heap, this, ##S#1_8) || Set#IsMember(##S#1_8, $Box(null));
                assert {:id "id425"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1_8)
                   ==> _module.Node.IsClosed($Heap, this, ##S#1_8)
                     || (forall n#1_8: ref :: 
                      { $Unbox(read($Heap, n#1_8, _module.Node.next)): ref } 
                      $Is(n#1_8, Tclass._module.Node?())
                         ==> 
                        Set#IsMember(##S#1_8, $Box(n#1_8))
                           && n#1_8 != null
                           && $Unbox(read($Heap, n#1_8, _module.Node.next)): ref != null
                         ==> Set#IsMember(##S#1_8, read($Heap, n#1_8, _module.Node.next)));
                assert {:id "id426"} {:subsumption 0} LitInt(0) <= ##k#1_8;
                assume _module.Node.Nexxxt#canCall($Heap, this, t#1_0, S#0);
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                ##k#1_9 := vt#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##k#1_9, TInt, $Heap);
                ##S#1_9 := S#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##S#1_9, TSet(Tclass._module.Node?()), $Heap);
                assert {:id "id427"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1_9)
                   ==> _module.Node.IsClosed($Heap, this, ##S#1_9) || Set#IsMember(##S#1_9, $Box(this));
                assert {:id "id428"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1_9)
                   ==> _module.Node.IsClosed($Heap, this, ##S#1_9) || Set#IsMember(##S#1_9, $Box(null));
                assert {:id "id429"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1_9)
                   ==> _module.Node.IsClosed($Heap, this, ##S#1_9)
                     || (forall n#1_9: ref :: 
                      { $Unbox(read($Heap, n#1_9, _module.Node.next)): ref } 
                      $Is(n#1_9, Tclass._module.Node?())
                         ==> 
                        Set#IsMember(##S#1_9, $Box(n#1_9))
                           && n#1_9 != null
                           && $Unbox(read($Heap, n#1_9, _module.Node.next)): ref != null
                         ==> Set#IsMember(##S#1_9, read($Heap, n#1_9, _module.Node.next)));
                assert {:id "id430"} {:subsumption 0} LitInt(0) <= ##k#1_9;
                assume _module.Node.Nexxxt#canCall($Heap, this, vt#1_0, S#0);
                if (_module.Node.Nexxxt($LS($LZ), $Heap, this, t#1_0, S#0)
                   == _module.Node.Nexxxt($LS($LZ), $Heap, this, vt#1_0, S#0))
                {
                    // assume allocatedness for receiver argument to function
                    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                    ##k#1_10 := vt#1_0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##k#1_10, TInt, $Heap);
                    ##S#1_10 := S#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##S#1_10, TSet(Tclass._module.Node?()), $Heap);
                    assert {:id "id431"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1_10)
                       ==> _module.Node.IsClosed($Heap, this, ##S#1_10)
                         || Set#IsMember(##S#1_10, $Box(this));
                    assert {:id "id432"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1_10)
                       ==> _module.Node.IsClosed($Heap, this, ##S#1_10)
                         || Set#IsMember(##S#1_10, $Box(null));
                    assert {:id "id433"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1_10)
                       ==> _module.Node.IsClosed($Heap, this, ##S#1_10)
                         || (forall n#1_10: ref :: 
                          { $Unbox(read($Heap, n#1_10, _module.Node.next)): ref } 
                          $Is(n#1_10, Tclass._module.Node?())
                             ==> 
                            Set#IsMember(##S#1_10, $Box(n#1_10))
                               && n#1_10 != null
                               && $Unbox(read($Heap, n#1_10, _module.Node.next)): ref != null
                             ==> Set#IsMember(##S#1_10, read($Heap, n#1_10, _module.Node.next)));
                    assert {:id "id434"} {:subsumption 0} LitInt(0) <= ##k#1_10;
                    assume _module.Node.Nexxxt#canCall($Heap, this, vt#1_0, S#0);
                    // assume allocatedness for receiver argument to function
                    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                    ##k#1_11 := h#1_0 + catchup#1_0 - i#1_0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##k#1_11, TInt, $Heap);
                    ##S#1_11 := S#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##S#1_11, TSet(Tclass._module.Node?()), $Heap);
                    assert {:id "id435"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1_11)
                       ==> _module.Node.IsClosed($Heap, this, ##S#1_11)
                         || Set#IsMember(##S#1_11, $Box(this));
                    assert {:id "id436"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1_11)
                       ==> _module.Node.IsClosed($Heap, this, ##S#1_11)
                         || Set#IsMember(##S#1_11, $Box(null));
                    assert {:id "id437"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1_11)
                       ==> _module.Node.IsClosed($Heap, this, ##S#1_11)
                         || (forall n#1_11: ref :: 
                          { $Unbox(read($Heap, n#1_11, _module.Node.next)): ref } 
                          $Is(n#1_11, Tclass._module.Node?())
                             ==> 
                            Set#IsMember(##S#1_11, $Box(n#1_11))
                               && n#1_11 != null
                               && $Unbox(read($Heap, n#1_11, _module.Node.next)): ref != null
                             ==> Set#IsMember(##S#1_11, read($Heap, n#1_11, _module.Node.next)));
                    assert {:id "id438"} {:subsumption 0} LitInt(0) <= ##k#1_11;
                    assume _module.Node.Nexxxt#canCall($Heap, this, h#1_0 + catchup#1_0 - i#1_0, S#0);
                }

                assume _module.Node.Nexxxt#canCall($Heap, this, t#1_0, S#0)
                   && _module.Node.Nexxxt#canCall($Heap, this, vt#1_0, S#0)
                   && (_module.Node.Nexxxt($LS($LZ), $Heap, this, t#1_0, S#0)
                       == _module.Node.Nexxxt($LS($LZ), $Heap, this, vt#1_0, S#0)
                     ==> _module.Node.Nexxxt#canCall($Heap, this, vt#1_0, S#0)
                       && _module.Node.Nexxxt#canCall($Heap, this, h#1_0 + catchup#1_0 - i#1_0, S#0));
                assume {:id "id439"} _module.Node.Nexxxt($LS($LZ), $Heap, this, t#1_0, S#0)
                     == _module.Node.Nexxxt($LS($LZ), $Heap, this, vt#1_0, S#0)
                   && _module.Node.Nexxxt($LS($LZ), $Heap, this, vt#1_0, S#0)
                     == _module.Node.Nexxxt($LS($LZ), $Heap, this, h#1_0 + catchup#1_0 - i#1_0, S#0);
                assume true;
                assume false;
            }

            assume true;
            if (catchup#1_0 <= i#1_0)
            {
                break;
            }

            $decr$loop#1_10 := catchup#1_0 - i#1_0;
            push;
            // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(264,21)
            assume true;
            assume true;
            assume true;
            assume true;
            assume true;
            $rhs#1_1_0 := i#1_0 + 1;
            assume true;
            $rhs#1_1_1 := t#1_0 + 1;
            assume true;
            $rhs#1_1_2 := vt#1_0 + 1;
            assume true;
            $rhs#1_1_3 := h#1_0 + 2;
            i#1_0 := $rhs#1_1_0;
            t#1_0 := $rhs#1_1_1;
            vt#1_0 := $rhs#1_1_2;
            h#1_0 := $rhs#1_1_3;
            pop;
            // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(259,7)
            assert {:id "id450"} 0 <= $decr$loop#1_10 || catchup#1_0 - i#1_0 == $decr$loop#1_10;
            assert {:id "id451"} catchup#1_0 - i#1_0 < $decr$loop#1_10;
            assume LitInt(0) <= i#1_0 && i#1_0 <= catchup#1_0
               ==> 
              t#1_0 == a#0 + i#1_0
               ==> 
              h#1_0 == 1 + Mul(LitInt(2), t#1_0)
               ==> 
              t#1_0 <= vt#1_0
               ==> _module.Node.Nexxxt#canCall($Heap, this, t#1_0, S#0)
                 && _module.Node.Nexxxt#canCall($Heap, this, vt#1_0, S#0)
                 && (_module.Node.Nexxxt($LS($LZ), $Heap, this, t#1_0, S#0)
                     == _module.Node.Nexxxt($LS($LZ), $Heap, this, vt#1_0, S#0)
                   ==> _module.Node.Nexxxt#canCall($Heap, this, vt#1_0, S#0)
                     && _module.Node.Nexxxt#canCall($Heap, this, h#1_0 + catchup#1_0 - i#1_0, S#0));
        }

        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(266,7)
        if (a#0 <= t#1_0)
        {
        }

        if (a#0 <= t#1_0 && t#1_0 < a#0 + b#0)
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
            ##k#1_12 := t#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##k#1_12, TInt, $Heap);
            ##S#1_12 := S#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##S#1_12, TSet(Tclass._module.Node?()), $Heap);
            assert {:id "id452"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1_12)
               ==> _module.Node.IsClosed($Heap, this, ##S#1_12)
                 || Set#IsMember(##S#1_12, $Box(this));
            assert {:id "id453"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1_12)
               ==> _module.Node.IsClosed($Heap, this, ##S#1_12)
                 || Set#IsMember(##S#1_12, $Box(null));
            assert {:id "id454"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1_12)
               ==> _module.Node.IsClosed($Heap, this, ##S#1_12)
                 || (forall n#1_12: ref :: 
                  { $Unbox(read($Heap, n#1_12, _module.Node.next)): ref } 
                  $Is(n#1_12, Tclass._module.Node?())
                     ==> 
                    Set#IsMember(##S#1_12, $Box(n#1_12))
                       && n#1_12 != null
                       && $Unbox(read($Heap, n#1_12, _module.Node.next)): ref != null
                     ==> Set#IsMember(##S#1_12, read($Heap, n#1_12, _module.Node.next)));
            assert {:id "id455"} {:subsumption 0} LitInt(0) <= ##k#1_12;
            assume _module.Node.Nexxxt#canCall($Heap, this, t#1_0, S#0);
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
            ##k#1_13 := 1 + Mul(LitInt(2), t#1_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##k#1_13, TInt, $Heap);
            ##S#1_13 := S#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##S#1_13, TSet(Tclass._module.Node?()), $Heap);
            assert {:id "id456"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1_13)
               ==> _module.Node.IsClosed($Heap, this, ##S#1_13)
                 || Set#IsMember(##S#1_13, $Box(this));
            assert {:id "id457"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1_13)
               ==> _module.Node.IsClosed($Heap, this, ##S#1_13)
                 || Set#IsMember(##S#1_13, $Box(null));
            assert {:id "id458"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1_13)
               ==> _module.Node.IsClosed($Heap, this, ##S#1_13)
                 || (forall n#1_13: ref :: 
                  { $Unbox(read($Heap, n#1_13, _module.Node.next)): ref } 
                  $Is(n#1_13, Tclass._module.Node?())
                     ==> 
                    Set#IsMember(##S#1_13, $Box(n#1_13))
                       && n#1_13 != null
                       && $Unbox(read($Heap, n#1_13, _module.Node.next)): ref != null
                     ==> Set#IsMember(##S#1_13, read($Heap, n#1_13, _module.Node.next)));
            assert {:id "id459"} {:subsumption 0} LitInt(0) <= ##k#1_13;
            assume _module.Node.Nexxxt#canCall($Heap, this, 1 + Mul(LitInt(2), t#1_0), S#0);
        }

        assume a#0 <= t#1_0 && t#1_0 < a#0 + b#0
           ==> _module.Node.Nexxxt#canCall($Heap, this, t#1_0, S#0)
             && _module.Node.Nexxxt#canCall($Heap, this, 1 + Mul(LitInt(2), t#1_0), S#0);
        assert {:id "id460"} {:subsumption 0} a#0 <= t#1_0;
        assert {:id "id461"} {:subsumption 0} t#1_0 < a#0 + b#0;
        assert {:id "id462"} {:subsumption 0} _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, t#1_0, S#0)
           == _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, 1 + Mul(LitInt(2), t#1_0), S#0);
        assume {:id "id463"} a#0 <= t#1_0
           && t#1_0 < a#0 + b#0
           && _module.Node.Nexxxt($LS($LZ), $Heap, this, t#1_0, S#0)
             == _module.Node.Nexxxt($LS($LZ), $Heap, this, 1 + Mul(LitInt(2), t#1_0), S#0);
    }
}



procedure {:verboseName "Node.Lemma_AboutCycles (well-formedness)"} CheckWellFormed$$_module.Node.Lemma__AboutCycles(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    a#0: int, 
    b#0: int, 
    k#0: int, 
    S#0: Set
       where $Is(S#0, TSet(Tclass._module.Node?()))
         && $IsAlloc(S#0, TSet(Tclass._module.Node?()), $Heap));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.Lemma_AboutCycles (well-formedness)"} CheckWellFormed$$_module.Node.Lemma__AboutCycles(this: ref, a#0: int, b#0: int, k#0: int, S#0: Set)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##S#0: Set;
  var ##k#0: int;
  var ##S#1: Set;
  var newtype$check#0: ref;
  var ##k#1: int;
  var ##S#2: Set;
  var ##k#2: int;
  var ##S#3: Set;
  var ##k#3: int;
  var ##S#4: Set;
  var ##k#4: int;
  var ##S#5: Set;
  var ##k#5: int;
  var ##S#6: Set;


    // AddMethodImpl: Lemma_AboutCycles, CheckWellFormed$$_module.Node.Lemma__AboutCycles
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
    ##S#0 := S#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##S#0, TSet(Tclass._module.Node?()), $Heap);
    assume _module.Node.IsClosed#canCall($Heap, this, S#0);
    assume {:id "id464"} _module.Node.IsClosed($Heap, this, S#0);
    if (LitInt(0) <= a#0)
    {
    }

    assume {:id "id465"} LitInt(0) <= a#0 && a#0 <= k#0;
    assume {:id "id466"} LitInt(1) <= b#0;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
    ##k#0 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##k#0, TInt, $Heap);
    ##S#1 := S#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##S#1, TSet(Tclass._module.Node?()), $Heap);
    assert {:id "id467"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1)
       ==> _module.Node.IsClosed($Heap, this, ##S#1) || Set#IsMember(##S#1, $Box(this));
    assert {:id "id468"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1)
       ==> _module.Node.IsClosed($Heap, this, ##S#1) || Set#IsMember(##S#1, $Box(null));
    assert {:id "id469"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1)
       ==> _module.Node.IsClosed($Heap, this, ##S#1)
         || (forall n#0: ref :: 
          { $Unbox(read($Heap, n#0, _module.Node.next)): ref } 
          $Is(n#0, Tclass._module.Node?())
             ==> 
            Set#IsMember(##S#1, $Box(n#0))
               && n#0 != null
               && $Unbox(read($Heap, n#0, _module.Node.next)): ref != null
             ==> Set#IsMember(##S#1, read($Heap, n#0, _module.Node.next)));
    assert {:id "id470"} {:subsumption 0} LitInt(0) <= ##k#0;
    assume _module.Node.IsClosed($Heap, this, ##S#1) && LitInt(0) <= ##k#0;
    assume _module.Node.Nexxxt#canCall($Heap, this, a#0, S#0);
    newtype$check#0 := null;
    assume {:id "id471"} _module.Node.Nexxxt($LS($LZ), $Heap, this, a#0, S#0) != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
    ##k#1 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##k#1, TInt, $Heap);
    ##S#2 := S#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##S#2, TSet(Tclass._module.Node?()), $Heap);
    assert {:id "id472"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#2)
       ==> _module.Node.IsClosed($Heap, this, ##S#2) || Set#IsMember(##S#2, $Box(this));
    assert {:id "id473"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#2)
       ==> _module.Node.IsClosed($Heap, this, ##S#2) || Set#IsMember(##S#2, $Box(null));
    assert {:id "id474"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#2)
       ==> _module.Node.IsClosed($Heap, this, ##S#2)
         || (forall n#1: ref :: 
          { $Unbox(read($Heap, n#1, _module.Node.next)): ref } 
          $Is(n#1, Tclass._module.Node?())
             ==> 
            Set#IsMember(##S#2, $Box(n#1))
               && n#1 != null
               && $Unbox(read($Heap, n#1, _module.Node.next)): ref != null
             ==> Set#IsMember(##S#2, read($Heap, n#1, _module.Node.next)));
    assert {:id "id475"} {:subsumption 0} LitInt(0) <= ##k#1;
    assume _module.Node.IsClosed($Heap, this, ##S#2) && LitInt(0) <= ##k#1;
    assume _module.Node.Nexxxt#canCall($Heap, this, a#0, S#0);
    assert {:id "id476"} _module.Node.Nexxxt($LS($LZ), $Heap, this, a#0, S#0) != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(_module.Node.Nexxxt($LS($LZ), $Heap, this, a#0, S#0)), 
      Tclass._module.Node?(), 
      $Heap);
    ##k#2 := b#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##k#2, TInt, $Heap);
    ##S#3 := S#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##S#3, TSet(Tclass._module.Node?()), $Heap);
    assert {:id "id477"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, a#0, S#0), ##S#3)
       ==> _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, a#0, S#0), ##S#3)
         || Set#IsMember(##S#3, $Box(_module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, a#0, S#0)));
    assert {:id "id478"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, a#0, S#0), ##S#3)
       ==> _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, a#0, S#0), ##S#3)
         || Set#IsMember(##S#3, $Box(null));
    assert {:id "id479"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, a#0, S#0), ##S#3)
       ==> _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, a#0, S#0), ##S#3)
         || (forall n#2: ref :: 
          { $Unbox(read($Heap, n#2, _module.Node.next)): ref } 
          $Is(n#2, Tclass._module.Node?())
             ==> 
            Set#IsMember(##S#3, $Box(n#2))
               && n#2 != null
               && $Unbox(read($Heap, n#2, _module.Node.next)): ref != null
             ==> Set#IsMember(##S#3, read($Heap, n#2, _module.Node.next)));
    assert {:id "id480"} {:subsumption 0} LitInt(0) <= ##k#2;
    assume _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, a#0, S#0), ##S#3)
       && LitInt(0) <= ##k#2;
    assume _module.Node.Nexxxt#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, a#0, S#0), b#0, S#0);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
    ##k#3 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##k#3, TInt, $Heap);
    ##S#4 := S#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##S#4, TSet(Tclass._module.Node?()), $Heap);
    assert {:id "id481"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#4)
       ==> _module.Node.IsClosed($Heap, this, ##S#4) || Set#IsMember(##S#4, $Box(this));
    assert {:id "id482"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#4)
       ==> _module.Node.IsClosed($Heap, this, ##S#4) || Set#IsMember(##S#4, $Box(null));
    assert {:id "id483"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#4)
       ==> _module.Node.IsClosed($Heap, this, ##S#4)
         || (forall n#3: ref :: 
          { $Unbox(read($Heap, n#3, _module.Node.next)): ref } 
          $Is(n#3, Tclass._module.Node?())
             ==> 
            Set#IsMember(##S#4, $Box(n#3))
               && n#3 != null
               && $Unbox(read($Heap, n#3, _module.Node.next)): ref != null
             ==> Set#IsMember(##S#4, read($Heap, n#3, _module.Node.next)));
    assert {:id "id484"} {:subsumption 0} LitInt(0) <= ##k#3;
    assume _module.Node.IsClosed($Heap, this, ##S#4) && LitInt(0) <= ##k#3;
    assume _module.Node.Nexxxt#canCall($Heap, this, a#0, S#0);
    assume {:id "id485"} _module.Node.Nexxxt($LS($LZ), $Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, a#0, S#0), b#0, S#0)
       == _module.Node.Nexxxt($LS($LZ), $Heap, this, a#0, S#0);
    havoc $Heap;
    assume old($Heap) == $Heap;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
    ##k#4 := k#0 + b#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##k#4, TInt, $Heap);
    ##S#5 := S#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##S#5, TSet(Tclass._module.Node?()), $Heap);
    assert {:id "id486"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#5)
       ==> _module.Node.IsClosed($Heap, this, ##S#5) || Set#IsMember(##S#5, $Box(this));
    assert {:id "id487"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#5)
       ==> _module.Node.IsClosed($Heap, this, ##S#5) || Set#IsMember(##S#5, $Box(null));
    assert {:id "id488"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#5)
       ==> _module.Node.IsClosed($Heap, this, ##S#5)
         || (forall n#4: ref :: 
          { $Unbox(read($Heap, n#4, _module.Node.next)): ref } 
          $Is(n#4, Tclass._module.Node?())
             ==> 
            Set#IsMember(##S#5, $Box(n#4))
               && n#4 != null
               && $Unbox(read($Heap, n#4, _module.Node.next)): ref != null
             ==> Set#IsMember(##S#5, read($Heap, n#4, _module.Node.next)));
    assert {:id "id489"} {:subsumption 0} LitInt(0) <= ##k#4;
    assume _module.Node.IsClosed($Heap, this, ##S#5) && LitInt(0) <= ##k#4;
    assume _module.Node.Nexxxt#canCall($Heap, this, k#0 + b#0, S#0);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
    ##k#5 := k#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##k#5, TInt, $Heap);
    ##S#6 := S#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##S#6, TSet(Tclass._module.Node?()), $Heap);
    assert {:id "id490"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#6)
       ==> _module.Node.IsClosed($Heap, this, ##S#6) || Set#IsMember(##S#6, $Box(this));
    assert {:id "id491"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#6)
       ==> _module.Node.IsClosed($Heap, this, ##S#6) || Set#IsMember(##S#6, $Box(null));
    assert {:id "id492"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#6)
       ==> _module.Node.IsClosed($Heap, this, ##S#6)
         || (forall n#5: ref :: 
          { $Unbox(read($Heap, n#5, _module.Node.next)): ref } 
          $Is(n#5, Tclass._module.Node?())
             ==> 
            Set#IsMember(##S#6, $Box(n#5))
               && n#5 != null
               && $Unbox(read($Heap, n#5, _module.Node.next)): ref != null
             ==> Set#IsMember(##S#6, read($Heap, n#5, _module.Node.next)));
    assert {:id "id493"} {:subsumption 0} LitInt(0) <= ##k#5;
    assume _module.Node.IsClosed($Heap, this, ##S#6) && LitInt(0) <= ##k#5;
    assume _module.Node.Nexxxt#canCall($Heap, this, k#0, S#0);
    assume {:id "id494"} _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0 + b#0, S#0)
       == _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0);
}



procedure {:verboseName "Node.Lemma_AboutCycles (call)"} Call$$_module.Node.Lemma__AboutCycles(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    a#0: int, 
    b#0: int, 
    k#0: int, 
    S#0: Set
       where $Is(S#0, TSet(Tclass._module.Node?()))
         && $IsAlloc(S#0, TSet(Tclass._module.Node?()), $Heap));
  // user-defined preconditions
  requires {:id "id495"} _module.Node.IsClosed#canCall($Heap, this, S#0)
     ==> _module.Node.IsClosed($Heap, this, S#0) || Set#IsMember(S#0, $Box(this));
  requires {:id "id496"} _module.Node.IsClosed#canCall($Heap, this, S#0)
     ==> _module.Node.IsClosed($Heap, this, S#0) || Set#IsMember(S#0, $Box(null));
  requires {:id "id497"} _module.Node.IsClosed#canCall($Heap, this, S#0)
     ==> _module.Node.IsClosed($Heap, this, S#0)
       || (forall n#6: ref :: 
        { $Unbox(read($Heap, n#6, _module.Node.next)): ref } 
        $Is(n#6, Tclass._module.Node?())
           ==> 
          Set#IsMember(S#0, $Box(n#6))
             && n#6 != null
             && $Unbox(read($Heap, n#6, _module.Node.next)): ref != null
           ==> Set#IsMember(S#0, read($Heap, n#6, _module.Node.next)));
  requires {:id "id498"} LitInt(0) <= a#0;
  requires {:id "id499"} a#0 <= k#0;
  requires {:id "id500"} LitInt(1) <= b#0;
  requires {:id "id501"} _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, a#0, S#0) != null;
  requires {:id "id502"} _module.Node.Nexxxt($LS($LS($LZ)), 
      $Heap, 
      _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, a#0, S#0), 
      b#0, 
      S#0)
     == _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, a#0, S#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Node.Nexxxt#canCall($Heap, this, k#0 + b#0, S#0)
     && _module.Node.Nexxxt#canCall($Heap, this, k#0, S#0);
  ensures {:id "id503"} _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#0 + b#0, S#0)
     == _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#0, S#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Node.Lemma_AboutCycles (correctness)"} Impl$$_module.Node.Lemma__AboutCycles(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    a#0: int, 
    b#0: int, 
    k#0: int, 
    S#0: Set
       where $Is(S#0, TSet(Tclass._module.Node?()))
         && $IsAlloc(S#0, TSet(Tclass._module.Node?()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id504"} _module.Node.IsClosed#canCall($Heap, this, S#0)
     && 
    _module.Node.IsClosed($Heap, this, S#0)
     && 
    Set#IsMember(S#0, $Box(this))
     && Set#IsMember(S#0, $Box(null))
     && (forall n#7: ref :: 
      { $Unbox(read($Heap, n#7, _module.Node.next)): ref } 
      $Is(n#7, Tclass._module.Node?())
         ==> 
        Set#IsMember(S#0, $Box(n#7))
           && n#7 != null
           && $Unbox(read($Heap, n#7, _module.Node.next)): ref != null
         ==> Set#IsMember(S#0, read($Heap, n#7, _module.Node.next)));
  requires {:id "id505"} LitInt(0) <= a#0;
  requires {:id "id506"} a#0 <= k#0;
  requires {:id "id507"} LitInt(1) <= b#0;
  requires {:id "id508"} _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, a#0, S#0) != null;
  requires {:id "id509"} _module.Node.Nexxxt($LS($LS($LZ)), 
      $Heap, 
      _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, a#0, S#0), 
      b#0, 
      S#0)
     == _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, a#0, S#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Node.Nexxxt#canCall($Heap, this, k#0 + b#0, S#0)
     && _module.Node.Nexxxt#canCall($Heap, this, k#0, S#0);
  ensures {:id "id510"} _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#0 + b#0, S#0)
     == _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#0, S#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.Lemma_AboutCycles (correctness)"} Impl$$_module.Node.Lemma__AboutCycles(this: ref, a#0: int, b#0: int, k#0: int, S#0: Set)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var x##0: int;
  var y##0: int;
  var S##0: Set;
  var n#8: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var ##k#6: int;
  var ##S#7: Set;
  var ##k#7: int;
  var ##S#8: Set;
  var $decr$loop#00: int;

    // AddMethodImpl: Lemma_AboutCycles, Impl$$_module.Node.Lemma__AboutCycles
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(275,29)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := a#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    y##0 := b#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    S##0 := S#0;
    call {:id "id511"} Call$$_module.Node.Lemma__NexxxtIsTransitive(this, x##0, y##0, S##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(276,11)
    assume true;
    assume true;
    n#8 := a#0;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(277,5)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := k#0 - n#8;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id514"} $w$loop#0 ==> a#0 <= n#8;
      invariant {:id "id515"} $w$loop#0 ==> n#8 <= k#0;
      free invariant $w$loop#0
         ==> _module.Node.Nexxxt#canCall($Heap, this, n#8 + b#0, S#0)
           && _module.Node.Nexxxt#canCall($Heap, this, n#8, S#0);
      invariant {:id "id525"} $w$loop#0
         ==> _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, n#8 + b#0, S#0)
           == _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, n#8, S#0);
      free invariant $PreLoopHeap$loop#0 == $Heap;
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant k#0 - n#8 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            if (a#0 <= n#8)
            {
            }

            assume true;
            assume {:id "id513"} a#0 <= n#8 && n#8 <= k#0;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
            ##k#6 := n#8 + b#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##k#6, TInt, $Heap);
            ##S#7 := S#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##S#7, TSet(Tclass._module.Node?()), $Heap);
            assert {:id "id516"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#7)
               ==> _module.Node.IsClosed($Heap, this, ##S#7) || Set#IsMember(##S#7, $Box(this));
            assert {:id "id517"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#7)
               ==> _module.Node.IsClosed($Heap, this, ##S#7) || Set#IsMember(##S#7, $Box(null));
            assert {:id "id518"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#7)
               ==> _module.Node.IsClosed($Heap, this, ##S#7)
                 || (forall n#9: ref :: 
                  { $Unbox(read($Heap, n#9, _module.Node.next)): ref } 
                  $Is(n#9, Tclass._module.Node?())
                     ==> 
                    Set#IsMember(##S#7, $Box(n#9))
                       && n#9 != null
                       && $Unbox(read($Heap, n#9, _module.Node.next)): ref != null
                     ==> Set#IsMember(##S#7, read($Heap, n#9, _module.Node.next)));
            assert {:id "id519"} {:subsumption 0} LitInt(0) <= ##k#6;
            assume _module.Node.Nexxxt#canCall($Heap, this, n#8 + b#0, S#0);
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
            ##k#7 := n#8;
            // assume allocatedness for argument to function
            assume $IsAlloc(##k#7, TInt, $Heap);
            ##S#8 := S#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##S#8, TSet(Tclass._module.Node?()), $Heap);
            assert {:id "id520"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#8)
               ==> _module.Node.IsClosed($Heap, this, ##S#8) || Set#IsMember(##S#8, $Box(this));
            assert {:id "id521"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#8)
               ==> _module.Node.IsClosed($Heap, this, ##S#8) || Set#IsMember(##S#8, $Box(null));
            assert {:id "id522"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#8)
               ==> _module.Node.IsClosed($Heap, this, ##S#8)
                 || (forall n#10: ref :: 
                  { $Unbox(read($Heap, n#10, _module.Node.next)): ref } 
                  $Is(n#10, Tclass._module.Node?())
                     ==> 
                    Set#IsMember(##S#8, $Box(n#10))
                       && n#10 != null
                       && $Unbox(read($Heap, n#10, _module.Node.next)): ref != null
                     ==> Set#IsMember(##S#8, read($Heap, n#10, _module.Node.next)));
            assert {:id "id523"} {:subsumption 0} LitInt(0) <= ##k#7;
            assume _module.Node.Nexxxt#canCall($Heap, this, n#8, S#0);
            assume _module.Node.Nexxxt#canCall($Heap, this, n#8 + b#0, S#0)
               && _module.Node.Nexxxt#canCall($Heap, this, n#8, S#0);
            assume {:id "id524"} _module.Node.Nexxxt($LS($LZ), $Heap, this, n#8 + b#0, S#0)
               == _module.Node.Nexxxt($LS($LZ), $Heap, this, n#8, S#0);
            assume true;
            assume false;
        }

        assume true;
        if (k#0 <= n#8)
        {
            break;
        }

        $decr$loop#00 := k#0 - n#8;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(281,9)
        assume true;
        assume true;
        n#8 := n#8 + 1;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(277,5)
        assert {:id "id527"} 0 <= $decr$loop#00 || k#0 - n#8 == $decr$loop#00;
        assert {:id "id528"} k#0 - n#8 < $decr$loop#00;
        assume a#0 <= n#8 && n#8 <= k#0
           ==> _module.Node.Nexxxt#canCall($Heap, this, n#8 + b#0, S#0)
             && _module.Node.Nexxxt#canCall($Heap, this, n#8, S#0);
    }
}



procedure {:verboseName "Node.Lemma_NexxxtIsTransitive (well-formedness)"} CheckWellFormed$$_module.Node.Lemma__NexxxtIsTransitive(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    x#0: int, 
    y#0: int, 
    S#0: Set
       where $Is(S#0, TSet(Tclass._module.Node?()))
         && $IsAlloc(S#0, TSet(Tclass._module.Node?()), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.Lemma_NexxxtIsTransitive (well-formedness)"} CheckWellFormed$$_module.Node.Lemma__NexxxtIsTransitive(this: ref, x#0: int, y#0: int, S#0: Set)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##S#0: Set;
  var ##k#0: int;
  var ##S#1: Set;
  var newtype$check#0: ref;
  var ##k#1: int;
  var ##S#2: Set;
  var ##k#2: int;
  var ##S#3: Set;
  var ##k#3: int;
  var ##S#4: Set;


    // AddMethodImpl: Lemma_NexxxtIsTransitive, CheckWellFormed$$_module.Node.Lemma__NexxxtIsTransitive
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
    ##S#0 := S#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##S#0, TSet(Tclass._module.Node?()), $Heap);
    assume _module.Node.IsClosed#canCall($Heap, this, S#0);
    assume {:id "id529"} _module.Node.IsClosed($Heap, this, S#0);
    assume {:id "id530"} LitInt(0) <= x#0;
    assume {:id "id531"} LitInt(0) <= y#0;
    havoc $Heap;
    assume old($Heap) == $Heap;
    if (*)
    {
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
        ##k#0 := x#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##k#0, TInt, $Heap);
        ##S#1 := S#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##S#1, TSet(Tclass._module.Node?()), $Heap);
        assert {:id "id532"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1)
           ==> _module.Node.IsClosed($Heap, this, ##S#1) || Set#IsMember(##S#1, $Box(this));
        assert {:id "id533"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1)
           ==> _module.Node.IsClosed($Heap, this, ##S#1) || Set#IsMember(##S#1, $Box(null));
        assert {:id "id534"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1)
           ==> _module.Node.IsClosed($Heap, this, ##S#1)
             || (forall n#0: ref :: 
              { $Unbox(read($Heap, n#0, _module.Node.next)): ref } 
              $Is(n#0, Tclass._module.Node?())
                 ==> 
                Set#IsMember(##S#1, $Box(n#0))
                   && n#0 != null
                   && $Unbox(read($Heap, n#0, _module.Node.next)): ref != null
                 ==> Set#IsMember(##S#1, read($Heap, n#0, _module.Node.next)));
        assert {:id "id535"} {:subsumption 0} LitInt(0) <= ##k#0;
        assume _module.Node.IsClosed($Heap, this, ##S#1) && LitInt(0) <= ##k#0;
        assume _module.Node.Nexxxt#canCall($Heap, this, x#0, S#0);
        newtype$check#0 := null;
        assume {:id "id536"} _module.Node.Nexxxt($LS($LZ), $Heap, this, x#0, S#0) != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
        ##k#1 := x#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##k#1, TInt, $Heap);
        ##S#2 := S#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##S#2, TSet(Tclass._module.Node?()), $Heap);
        assert {:id "id537"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#2)
           ==> _module.Node.IsClosed($Heap, this, ##S#2) || Set#IsMember(##S#2, $Box(this));
        assert {:id "id538"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#2)
           ==> _module.Node.IsClosed($Heap, this, ##S#2) || Set#IsMember(##S#2, $Box(null));
        assert {:id "id539"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#2)
           ==> _module.Node.IsClosed($Heap, this, ##S#2)
             || (forall n#1: ref :: 
              { $Unbox(read($Heap, n#1, _module.Node.next)): ref } 
              $Is(n#1, Tclass._module.Node?())
                 ==> 
                Set#IsMember(##S#2, $Box(n#1))
                   && n#1 != null
                   && $Unbox(read($Heap, n#1, _module.Node.next)): ref != null
                 ==> Set#IsMember(##S#2, read($Heap, n#1, _module.Node.next)));
        assert {:id "id540"} {:subsumption 0} LitInt(0) <= ##k#1;
        assume _module.Node.IsClosed($Heap, this, ##S#2) && LitInt(0) <= ##k#1;
        assume _module.Node.Nexxxt#canCall($Heap, this, x#0, S#0);
        assert {:id "id541"} _module.Node.Nexxxt($LS($LZ), $Heap, this, x#0, S#0) != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(_module.Node.Nexxxt($LS($LZ), $Heap, this, x#0, S#0)), 
          Tclass._module.Node?(), 
          $Heap);
        ##k#2 := y#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##k#2, TInt, $Heap);
        ##S#3 := S#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##S#3, TSet(Tclass._module.Node?()), $Heap);
        assert {:id "id542"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, x#0, S#0), ##S#3)
           ==> _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, x#0, S#0), ##S#3)
             || Set#IsMember(##S#3, $Box(_module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, x#0, S#0)));
        assert {:id "id543"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, x#0, S#0), ##S#3)
           ==> _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, x#0, S#0), ##S#3)
             || Set#IsMember(##S#3, $Box(null));
        assert {:id "id544"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, x#0, S#0), ##S#3)
           ==> _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, x#0, S#0), ##S#3)
             || (forall n#2: ref :: 
              { $Unbox(read($Heap, n#2, _module.Node.next)): ref } 
              $Is(n#2, Tclass._module.Node?())
                 ==> 
                Set#IsMember(##S#3, $Box(n#2))
                   && n#2 != null
                   && $Unbox(read($Heap, n#2, _module.Node.next)): ref != null
                 ==> Set#IsMember(##S#3, read($Heap, n#2, _module.Node.next)));
        assert {:id "id545"} {:subsumption 0} LitInt(0) <= ##k#2;
        assume _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, x#0, S#0), ##S#3)
           && LitInt(0) <= ##k#2;
        assume _module.Node.Nexxxt#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, x#0, S#0), y#0, S#0);
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
        ##k#3 := x#0 + y#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##k#3, TInt, $Heap);
        ##S#4 := S#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##S#4, TSet(Tclass._module.Node?()), $Heap);
        assert {:id "id546"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#4)
           ==> _module.Node.IsClosed($Heap, this, ##S#4) || Set#IsMember(##S#4, $Box(this));
        assert {:id "id547"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#4)
           ==> _module.Node.IsClosed($Heap, this, ##S#4) || Set#IsMember(##S#4, $Box(null));
        assert {:id "id548"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#4)
           ==> _module.Node.IsClosed($Heap, this, ##S#4)
             || (forall n#3: ref :: 
              { $Unbox(read($Heap, n#3, _module.Node.next)): ref } 
              $Is(n#3, Tclass._module.Node?())
                 ==> 
                Set#IsMember(##S#4, $Box(n#3))
                   && n#3 != null
                   && $Unbox(read($Heap, n#3, _module.Node.next)): ref != null
                 ==> Set#IsMember(##S#4, read($Heap, n#3, _module.Node.next)));
        assert {:id "id549"} {:subsumption 0} LitInt(0) <= ##k#3;
        assume _module.Node.IsClosed($Heap, this, ##S#4) && LitInt(0) <= ##k#3;
        assume _module.Node.Nexxxt#canCall($Heap, this, x#0 + y#0, S#0);
        assume {:id "id550"} _module.Node.Nexxxt($LS($LZ), $Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, x#0, S#0), y#0, S#0)
           == _module.Node.Nexxxt($LS($LZ), $Heap, this, x#0 + y#0, S#0);
    }
    else
    {
        assume {:id "id551"} _module.Node.Nexxxt($LS($LZ), $Heap, this, x#0, S#0) != null
           ==> _module.Node.Nexxxt($LS($LZ), $Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, x#0, S#0), y#0, S#0)
             == _module.Node.Nexxxt($LS($LZ), $Heap, this, x#0 + y#0, S#0);
    }
}



procedure {:verboseName "Node.Lemma_NexxxtIsTransitive (call)"} Call$$_module.Node.Lemma__NexxxtIsTransitive(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    x#0: int, 
    y#0: int, 
    S#0: Set
       where $Is(S#0, TSet(Tclass._module.Node?()))
         && $IsAlloc(S#0, TSet(Tclass._module.Node?()), $Heap));
  // user-defined preconditions
  requires {:id "id552"} _module.Node.IsClosed#canCall($Heap, this, S#0)
     ==> _module.Node.IsClosed($Heap, this, S#0) || Set#IsMember(S#0, $Box(this));
  requires {:id "id553"} _module.Node.IsClosed#canCall($Heap, this, S#0)
     ==> _module.Node.IsClosed($Heap, this, S#0) || Set#IsMember(S#0, $Box(null));
  requires {:id "id554"} _module.Node.IsClosed#canCall($Heap, this, S#0)
     ==> _module.Node.IsClosed($Heap, this, S#0)
       || (forall n#4: ref :: 
        { $Unbox(read($Heap, n#4, _module.Node.next)): ref } 
        $Is(n#4, Tclass._module.Node?())
           ==> 
          Set#IsMember(S#0, $Box(n#4))
             && n#4 != null
             && $Unbox(read($Heap, n#4, _module.Node.next)): ref != null
           ==> Set#IsMember(S#0, read($Heap, n#4, _module.Node.next)));
  requires {:id "id555"} LitInt(0) <= x#0;
  requires {:id "id556"} LitInt(0) <= y#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Node.Nexxxt#canCall($Heap, this, x#0, S#0)
     && (_module.Node.Nexxxt($LS($LZ), $Heap, this, x#0, S#0) != null
       ==> _module.Node.Nexxxt#canCall($Heap, this, x#0, S#0)
         && _module.Node.Nexxxt#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, x#0, S#0), y#0, S#0)
         && _module.Node.Nexxxt#canCall($Heap, this, x#0 + y#0, S#0));
  ensures {:id "id557"} _module.Node.Nexxxt($LS($LZ), $Heap, this, x#0, S#0) != null
     ==> _module.Node.Nexxxt($LS($LS($LZ)), 
        $Heap, 
        _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, x#0, S#0), 
        y#0, 
        S#0)
       == _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, x#0 + y#0, S#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Node.Lemma_NexxxtIsTransitive (correctness)"} Impl$$_module.Node.Lemma__NexxxtIsTransitive(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    x#0: int, 
    y#0: int, 
    S#0: Set
       where $Is(S#0, TSet(Tclass._module.Node?()))
         && $IsAlloc(S#0, TSet(Tclass._module.Node?()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id558"} _module.Node.IsClosed#canCall($Heap, this, S#0)
     && 
    _module.Node.IsClosed($Heap, this, S#0)
     && 
    Set#IsMember(S#0, $Box(this))
     && Set#IsMember(S#0, $Box(null))
     && (forall n#5: ref :: 
      { $Unbox(read($Heap, n#5, _module.Node.next)): ref } 
      $Is(n#5, Tclass._module.Node?())
         ==> 
        Set#IsMember(S#0, $Box(n#5))
           && n#5 != null
           && $Unbox(read($Heap, n#5, _module.Node.next)): ref != null
         ==> Set#IsMember(S#0, read($Heap, n#5, _module.Node.next)));
  requires {:id "id559"} LitInt(0) <= x#0;
  requires {:id "id560"} LitInt(0) <= y#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Node.Nexxxt#canCall($Heap, this, x#0, S#0)
     && (_module.Node.Nexxxt($LS($LZ), $Heap, this, x#0, S#0) != null
       ==> _module.Node.Nexxxt#canCall($Heap, this, x#0, S#0)
         && _module.Node.Nexxxt#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, x#0, S#0), y#0, S#0)
         && _module.Node.Nexxxt#canCall($Heap, this, x#0 + y#0, S#0));
  ensures {:id "id561"} _module.Node.Nexxxt($LS($LZ), $Heap, this, x#0, S#0) != null
     ==> _module.Node.Nexxxt($LS($LS($LZ)), 
        $Heap, 
        _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, x#0, S#0), 
        y#0, 
        S#0)
       == _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, x#0 + y#0, S#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.Lemma_NexxxtIsTransitive (correctness)"} Impl$$_module.Node.Lemma__NexxxtIsTransitive(this: ref, x#0: int, y#0: int, S#0: Set) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var ##k#4: int;
  var ##S#5: Set;
  var newtype$check#1: ref;
  var j#0_0: int;
  var ##k#0_0: int;
  var ##S#0_0: Set;
  var ##k#0_1: int;
  var ##S#0_1: Set;
  var ##k#0_2: int;
  var ##S#0_2: Set;

    // AddMethodImpl: Lemma_NexxxtIsTransitive, Impl$$_module.Node.Lemma__NexxxtIsTransitive
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#x0#0: int, $ih#y0#0: int, $ih#S0#0: Set :: 
      { _module.Node.Nexxxt($LS($LZ), 
          $Heap, 
          _module.Node.Nexxxt($LS($LZ), $Heap, this, $ih#x0#0, $ih#S0#0), 
          $ih#y0#0, 
          $ih#S0#0) } 
      $Is($ih#S0#0, TSet(Tclass._module.Node?()))
           && 
          _module.Node.IsClosed($initHeapForallStmt#0, this, $ih#S0#0)
           && LitInt(0) <= $ih#x0#0
           && LitInt(0) <= $ih#y0#0
           && ((0 <= $ih#x0#0 && $ih#x0#0 < x#0)
             || ($ih#x0#0 == x#0
               && ((0 <= $ih#y0#0 && $ih#y0#0 < y#0)
                 || ($ih#y0#0 == y#0 && Set#Subset($ih#S0#0, S#0) && !Set#Subset(S#0, $ih#S0#0)))))
         ==> 
        _module.Node.Nexxxt($LS($LZ), $Heap, this, $ih#x0#0, $ih#S0#0) != null
         ==> _module.Node.Nexxxt($LS($LZ), 
            $Heap, 
            _module.Node.Nexxxt($LS($LZ), $Heap, this, $ih#x0#0, $ih#S0#0), 
            $ih#y0#0, 
            $ih#S0#0)
           == _module.Node.Nexxxt($LS($LZ), $Heap, this, $ih#x0#0 + $ih#y0#0, $ih#S0#0));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(289,5)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
    ##k#4 := x#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##k#4, TInt, $Heap);
    ##S#5 := S#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##S#5, TSet(Tclass._module.Node?()), $Heap);
    assert {:id "id562"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#5)
       ==> _module.Node.IsClosed($Heap, this, ##S#5) || Set#IsMember(##S#5, $Box(this));
    assert {:id "id563"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#5)
       ==> _module.Node.IsClosed($Heap, this, ##S#5) || Set#IsMember(##S#5, $Box(null));
    assert {:id "id564"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#5)
       ==> _module.Node.IsClosed($Heap, this, ##S#5)
         || (forall n#6: ref :: 
          { $Unbox(read($Heap, n#6, _module.Node.next)): ref } 
          $Is(n#6, Tclass._module.Node?())
             ==> 
            Set#IsMember(##S#5, $Box(n#6))
               && n#6 != null
               && $Unbox(read($Heap, n#6, _module.Node.next)): ref != null
             ==> Set#IsMember(##S#5, read($Heap, n#6, _module.Node.next)));
    assert {:id "id565"} {:subsumption 0} LitInt(0) <= ##k#4;
    assume _module.Node.IsClosed($Heap, this, ##S#5) && LitInt(0) <= ##k#4;
    assume _module.Node.Nexxxt#canCall($Heap, this, x#0, S#0);
    newtype$check#1 := null;
    assume _module.Node.Nexxxt#canCall($Heap, this, x#0, S#0);
    if (_module.Node.Nexxxt($LS($LZ), $Heap, this, x#0, S#0) != null)
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(291,7)
        // Begin Comprehension WF check
        havoc j#0_0;
        if (true)
        {
            if (LitInt(0) <= j#0_0)
            {
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                ##k#0_0 := x#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##k#0_0, TInt, $Heap);
                ##S#0_0 := S#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##S#0_0, TSet(Tclass._module.Node?()), $Heap);
                assert {:id "id566"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0)
                   ==> _module.Node.IsClosed($Heap, this, ##S#0_0) || Set#IsMember(##S#0_0, $Box(this));
                assert {:id "id567"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0)
                   ==> _module.Node.IsClosed($Heap, this, ##S#0_0) || Set#IsMember(##S#0_0, $Box(null));
                assert {:id "id568"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0)
                   ==> _module.Node.IsClosed($Heap, this, ##S#0_0)
                     || (forall n#0_0: ref :: 
                      { $Unbox(read($Heap, n#0_0, _module.Node.next)): ref } 
                      $Is(n#0_0, Tclass._module.Node?())
                         ==> 
                        Set#IsMember(##S#0_0, $Box(n#0_0))
                           && n#0_0 != null
                           && $Unbox(read($Heap, n#0_0, _module.Node.next)): ref != null
                         ==> Set#IsMember(##S#0_0, read($Heap, n#0_0, _module.Node.next)));
                assert {:id "id569"} {:subsumption 0} LitInt(0) <= ##k#0_0;
                assume _module.Node.Nexxxt#canCall($Heap, this, x#0, S#0);
                assert {:id "id570"} {:subsumption 0} _module.Node.Nexxxt($LS($LZ), $Heap, this, x#0, S#0) != null;
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(_module.Node.Nexxxt($LS($LZ), $Heap, this, x#0, S#0)), 
                  Tclass._module.Node?(), 
                  $Heap);
                ##k#0_1 := j#0_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##k#0_1, TInt, $Heap);
                ##S#0_1 := S#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##S#0_1, TSet(Tclass._module.Node?()), $Heap);
                assert {:id "id571"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, x#0, S#0), ##S#0_1)
                   ==> _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, x#0, S#0), ##S#0_1)
                     || Set#IsMember(##S#0_1, $Box(_module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, x#0, S#0)));
                assert {:id "id572"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, x#0, S#0), ##S#0_1)
                   ==> _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, x#0, S#0), ##S#0_1)
                     || Set#IsMember(##S#0_1, $Box(null));
                assert {:id "id573"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, x#0, S#0), ##S#0_1)
                   ==> _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, x#0, S#0), ##S#0_1)
                     || (forall n#0_1: ref :: 
                      { $Unbox(read($Heap, n#0_1, _module.Node.next)): ref } 
                      $Is(n#0_1, Tclass._module.Node?())
                         ==> 
                        Set#IsMember(##S#0_1, $Box(n#0_1))
                           && n#0_1 != null
                           && $Unbox(read($Heap, n#0_1, _module.Node.next)): ref != null
                         ==> Set#IsMember(##S#0_1, read($Heap, n#0_1, _module.Node.next)));
                assert {:id "id574"} {:subsumption 0} LitInt(0) <= ##k#0_1;
                assume _module.Node.Nexxxt#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, x#0, S#0), j#0_0, S#0);
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                ##k#0_2 := x#0 + j#0_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##k#0_2, TInt, $Heap);
                ##S#0_2 := S#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##S#0_2, TSet(Tclass._module.Node?()), $Heap);
                assert {:id "id575"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_2)
                   ==> _module.Node.IsClosed($Heap, this, ##S#0_2) || Set#IsMember(##S#0_2, $Box(this));
                assert {:id "id576"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_2)
                   ==> _module.Node.IsClosed($Heap, this, ##S#0_2) || Set#IsMember(##S#0_2, $Box(null));
                assert {:id "id577"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_2)
                   ==> _module.Node.IsClosed($Heap, this, ##S#0_2)
                     || (forall n#0_2: ref :: 
                      { $Unbox(read($Heap, n#0_2, _module.Node.next)): ref } 
                      $Is(n#0_2, Tclass._module.Node?())
                         ==> 
                        Set#IsMember(##S#0_2, $Box(n#0_2))
                           && n#0_2 != null
                           && $Unbox(read($Heap, n#0_2, _module.Node.next)): ref != null
                         ==> Set#IsMember(##S#0_2, read($Heap, n#0_2, _module.Node.next)));
                assert {:id "id578"} {:subsumption 0} LitInt(0) <= ##k#0_2;
                assume _module.Node.Nexxxt#canCall($Heap, this, x#0 + j#0_0, S#0);
            }
        }

        // End Comprehension WF check
        assume (forall j#0_1: int :: 
          { _module.Node.Nexxxt($LS($LZ), 
              $Heap, 
              _module.Node.Nexxxt($LS($LZ), $Heap, this, x#0, S#0), 
              j#0_1, 
              S#0) } 
          LitInt(0) <= j#0_1
             ==> _module.Node.Nexxxt#canCall($Heap, this, x#0, S#0)
               && _module.Node.Nexxxt#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, x#0, S#0), j#0_1, S#0)
               && _module.Node.Nexxxt#canCall($Heap, this, x#0 + j#0_1, S#0));
        assert {:id "id579"} {:subsumption 0} (forall j#0_1: int :: 
          { _module.Node.Nexxxt($LS($LS($LZ)), 
              $Heap, 
              _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, x#0, S#0), 
              j#0_1, 
              S#0) } 
          (forall j$ih#0_0#0_0: int :: 
                { _module.Node.Nexxxt($LS($LZ), 
                    $Heap, 
                    _module.Node.Nexxxt($LS($LZ), $Heap, this, x#0, S#0), 
                    j$ih#0_0#0_0, 
                    S#0) } 
                0 <= j$ih#0_0#0_0 && j$ih#0_0#0_0 < j#0_1
                   ==> 
                  LitInt(0) <= j$ih#0_0#0_0
                   ==> _module.Node.Nexxxt($LS($LZ), 
                      $Heap, 
                      _module.Node.Nexxxt($LS($LZ), $Heap, this, x#0, S#0), 
                      j$ih#0_0#0_0, 
                      S#0)
                     == _module.Node.Nexxxt($LS($LZ), $Heap, this, x#0 + j$ih#0_0#0_0, S#0))
               && true
             ==> 
            LitInt(0) <= j#0_1
             ==> _module.Node.Nexxxt($LS($LS($LZ)), 
                $Heap, 
                _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, x#0, S#0), 
                j#0_1, 
                S#0)
               == _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, x#0 + j#0_1, S#0));
        assume {:id "id580"} (forall j#0_1: int :: 
          { _module.Node.Nexxxt($LS($LZ), 
              $Heap, 
              _module.Node.Nexxxt($LS($LZ), $Heap, this, x#0, S#0), 
              j#0_1, 
              S#0) } 
          LitInt(0) <= j#0_1
             ==> _module.Node.Nexxxt($LS($LZ), 
                $Heap, 
                _module.Node.Nexxxt($LS($LZ), $Heap, this, x#0, S#0), 
                j#0_1, 
                S#0)
               == _module.Node.Nexxxt($LS($LZ), $Heap, this, x#0 + j#0_1, S#0));
    }
    else
    {
    }
}



procedure {:verboseName "Node.Lemma_NullIsTerminal (well-formedness)"} CheckWellFormed$$_module.Node.Lemma__NullIsTerminal(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    d#0: int, 
    S#0: Set
       where $Is(S#0, TSet(Tclass._module.Node?()))
         && $IsAlloc(S#0, TSet(Tclass._module.Node?()), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.Lemma_NullIsTerminal (well-formedness)"} CheckWellFormed$$_module.Node.Lemma__NullIsTerminal(this: ref, d#0: int, S#0: Set)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##S#0: Set;
  var k#0: int;
  var ##k#0: int;
  var ##S#1: Set;
  var newtype$check#0: ref;
  var ##k#1: int;
  var ##S#2: Set;
  var newtype$check#1: ref;


    // AddMethodImpl: Lemma_NullIsTerminal, CheckWellFormed$$_module.Node.Lemma__NullIsTerminal
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
    ##S#0 := S#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##S#0, TSet(Tclass._module.Node?()), $Heap);
    assume _module.Node.IsClosed#canCall($Heap, this, S#0);
    assume {:id "id581"} _module.Node.IsClosed($Heap, this, S#0);
    assume {:id "id582"} LitInt(0) <= d#0;
    havoc $Heap;
    assume old($Heap) == $Heap;
    havoc k#0;
    assume true;
    if (*)
    {
        if (LitInt(0) <= k#0)
        {
        }

        assume {:id "id583"} LitInt(0) <= k#0 && k#0 < d#0;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
        ##k#0 := d#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##k#0, TInt, $Heap);
        ##S#1 := S#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##S#1, TSet(Tclass._module.Node?()), $Heap);
        assert {:id "id584"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1)
           ==> _module.Node.IsClosed($Heap, this, ##S#1) || Set#IsMember(##S#1, $Box(this));
        assert {:id "id585"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1)
           ==> _module.Node.IsClosed($Heap, this, ##S#1) || Set#IsMember(##S#1, $Box(null));
        assert {:id "id586"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1)
           ==> _module.Node.IsClosed($Heap, this, ##S#1)
             || (forall n#0: ref :: 
              { $Unbox(read($Heap, n#0, _module.Node.next)): ref } 
              $Is(n#0, Tclass._module.Node?())
                 ==> 
                Set#IsMember(##S#1, $Box(n#0))
                   && n#0 != null
                   && $Unbox(read($Heap, n#0, _module.Node.next)): ref != null
                 ==> Set#IsMember(##S#1, read($Heap, n#0, _module.Node.next)));
        assert {:id "id587"} {:subsumption 0} LitInt(0) <= ##k#0;
        assume _module.Node.IsClosed($Heap, this, ##S#1) && LitInt(0) <= ##k#0;
        assume _module.Node.Nexxxt#canCall($Heap, this, d#0, S#0);
        newtype$check#0 := null;
        assume {:id "id588"} _module.Node.Nexxxt($LS($LZ), $Heap, this, d#0, S#0) != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
        ##k#1 := k#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##k#1, TInt, $Heap);
        ##S#2 := S#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##S#2, TSet(Tclass._module.Node?()), $Heap);
        assert {:id "id589"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#2)
           ==> _module.Node.IsClosed($Heap, this, ##S#2) || Set#IsMember(##S#2, $Box(this));
        assert {:id "id590"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#2)
           ==> _module.Node.IsClosed($Heap, this, ##S#2) || Set#IsMember(##S#2, $Box(null));
        assert {:id "id591"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#2)
           ==> _module.Node.IsClosed($Heap, this, ##S#2)
             || (forall n#1: ref :: 
              { $Unbox(read($Heap, n#1, _module.Node.next)): ref } 
              $Is(n#1, Tclass._module.Node?())
                 ==> 
                Set#IsMember(##S#2, $Box(n#1))
                   && n#1 != null
                   && $Unbox(read($Heap, n#1, _module.Node.next)): ref != null
                 ==> Set#IsMember(##S#2, read($Heap, n#1, _module.Node.next)));
        assert {:id "id592"} {:subsumption 0} LitInt(0) <= ##k#1;
        assume _module.Node.IsClosed($Heap, this, ##S#2) && LitInt(0) <= ##k#1;
        assume _module.Node.Nexxxt#canCall($Heap, this, k#0, S#0);
        newtype$check#1 := null;
        assume {:id "id593"} _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0) != null;
    }
    else
    {
        assume {:id "id594"} LitInt(0) <= k#0
             && k#0 < d#0
             && _module.Node.Nexxxt($LS($LZ), $Heap, this, d#0, S#0) != null
           ==> _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0) != null;
    }

    assume {:id "id595"} (forall k#1: int :: 
      { _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0) } 
      LitInt(0) <= k#1
           && k#1 < d#0
           && _module.Node.Nexxxt($LS($LZ), $Heap, this, d#0, S#0) != null
         ==> _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0) != null);
}



procedure {:verboseName "Node.Lemma_NullIsTerminal (call)"} Call$$_module.Node.Lemma__NullIsTerminal(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    d#0: int, 
    S#0: Set
       where $Is(S#0, TSet(Tclass._module.Node?()))
         && $IsAlloc(S#0, TSet(Tclass._module.Node?()), $Heap));
  // user-defined preconditions
  requires {:id "id596"} _module.Node.IsClosed#canCall($Heap, this, S#0)
     ==> _module.Node.IsClosed($Heap, this, S#0) || Set#IsMember(S#0, $Box(this));
  requires {:id "id597"} _module.Node.IsClosed#canCall($Heap, this, S#0)
     ==> _module.Node.IsClosed($Heap, this, S#0) || Set#IsMember(S#0, $Box(null));
  requires {:id "id598"} _module.Node.IsClosed#canCall($Heap, this, S#0)
     ==> _module.Node.IsClosed($Heap, this, S#0)
       || (forall n#2: ref :: 
        { $Unbox(read($Heap, n#2, _module.Node.next)): ref } 
        $Is(n#2, Tclass._module.Node?())
           ==> 
          Set#IsMember(S#0, $Box(n#2))
             && n#2 != null
             && $Unbox(read($Heap, n#2, _module.Node.next)): ref != null
           ==> Set#IsMember(S#0, read($Heap, n#2, _module.Node.next)));
  requires {:id "id599"} LitInt(0) <= d#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall k#1: int :: 
    { _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0) } 
    LitInt(0) <= k#1 && k#1 < d#0
       ==> _module.Node.Nexxxt#canCall($Heap, this, d#0, S#0)
         && (_module.Node.Nexxxt($LS($LZ), $Heap, this, d#0, S#0) != null
           ==> _module.Node.Nexxxt#canCall($Heap, this, k#1, S#0)));
  free ensures {:id "id600"} (forall k#1: int :: 
    { _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0) } 
    LitInt(0) <= k#1
         && k#1 < d#0
         && _module.Node.Nexxxt($LS($LZ), $Heap, this, d#0, S#0) != null
       ==> _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0) != null);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Node.Lemma_NullIsTerminal (correctness)"} Impl$$_module.Node.Lemma__NullIsTerminal(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    d#0: int, 
    S#0: Set
       where $Is(S#0, TSet(Tclass._module.Node?()))
         && $IsAlloc(S#0, TSet(Tclass._module.Node?()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id601"} _module.Node.IsClosed#canCall($Heap, this, S#0)
     && 
    _module.Node.IsClosed($Heap, this, S#0)
     && 
    Set#IsMember(S#0, $Box(this))
     && Set#IsMember(S#0, $Box(null))
     && (forall n#3: ref :: 
      { $Unbox(read($Heap, n#3, _module.Node.next)): ref } 
      $Is(n#3, Tclass._module.Node?())
         ==> 
        Set#IsMember(S#0, $Box(n#3))
           && n#3 != null
           && $Unbox(read($Heap, n#3, _module.Node.next)): ref != null
         ==> Set#IsMember(S#0, read($Heap, n#3, _module.Node.next)));
  requires {:id "id602"} LitInt(0) <= d#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall k#1: int :: 
    { _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0) } 
    LitInt(0) <= k#1 && k#1 < d#0
       ==> _module.Node.Nexxxt#canCall($Heap, this, d#0, S#0)
         && (_module.Node.Nexxxt($LS($LZ), $Heap, this, d#0, S#0) != null
           ==> _module.Node.Nexxxt#canCall($Heap, this, k#1, S#0)));
  ensures {:id "id603"} (forall k#1: int :: 
    { _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#1, S#0) } 
    LitInt(0) <= k#1
         && k#1 < d#0
         && _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, d#0, S#0) != null
       ==> _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#1, S#0) != null);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.Lemma_NullIsTerminal (correctness)"} Impl$$_module.Node.Lemma__NullIsTerminal(this: ref, d#0: int, S#0: Set) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var j#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var k#3: int;
  var ##k#2: int;
  var ##S#3: Set;
  var newtype$check#2: ref;
  var ##k#3: int;
  var ##S#4: Set;
  var newtype$check#3: ref;
  var $decr$loop#00: int;
  var ##k#0_0: int;
  var ##S#0_0: Set;
  var newtype$check#0_0: ref;
  var ##k#0_0_0: int;
  var ##S#0_0_0: Set;
  var newtype$check#0_0_0: ref;

    // AddMethodImpl: Lemma_NullIsTerminal, Impl$$_module.Node.Lemma__NullIsTerminal
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#d0#0: int, $ih#S0#0: Set :: 
      { _module.Node.Nexxxt($LS($LZ), $Heap, this, $ih#d0#0, $ih#S0#0) } 
      $Is($ih#S0#0, TSet(Tclass._module.Node?()))
           && 
          _module.Node.IsClosed($initHeapForallStmt#0, this, $ih#S0#0)
           && LitInt(0) <= $ih#d0#0
           && ((0 <= $ih#d0#0 && $ih#d0#0 < d#0)
             || ($ih#d0#0 == d#0 && Set#Subset($ih#S0#0, S#0) && !Set#Subset(S#0, $ih#S0#0)))
         ==> (forall k#2: int :: 
          { _module.Node.Nexxxt($LS($LZ), $Heap, this, k#2, $ih#S0#0) } 
          LitInt(0) <= k#2
               && k#2 < $ih#d0#0
               && _module.Node.Nexxxt($LS($LZ), $Heap, this, $ih#d0#0, $ih#S0#0) != null
             ==> _module.Node.Nexxxt($LS($LZ), $Heap, this, k#2, $ih#S0#0) != null));
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(308,11)
    assume true;
    assume true;
    j#0 := d#0;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(309,5)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := j#0 - 0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id606"} $w$loop#0 ==> LitInt(0) <= j#0;
      invariant {:id "id607"} $w$loop#0 ==> j#0 <= d#0;
      free invariant $w$loop#0
         ==> (forall k#4: int :: 
          { _module.Node.Nexxxt($LS($LZ), $Heap, this, k#4, S#0) } 
          j#0 <= k#4 && k#4 < d#0
             ==> _module.Node.Nexxxt#canCall($Heap, this, k#4, S#0)
               && (_module.Node.Nexxxt($LS($LZ), $Heap, this, k#4, S#0) == null
                 ==> _module.Node.Nexxxt#canCall($Heap, this, d#0, S#0)));
      invariant {:id "id617"} $w$loop#0
         ==> (forall k#4: int :: 
          { _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#4, S#0) } 
          j#0 <= k#4
               && k#4 < d#0
               && _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#4, S#0) == null
             ==> _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, d#0, S#0) == null);
      free invariant {:id "id618"} $w$loop#0
         ==> (forall k#4: int :: 
          { _module.Node.Nexxxt($LS($LZ), $Heap, this, k#4, S#0) } 
          j#0 <= k#4
               && k#4 < d#0
               && _module.Node.Nexxxt($LS($LZ), $Heap, this, k#4, S#0) == null
             ==> _module.Node.Nexxxt($LS($LZ), $Heap, this, d#0, S#0) == null);
      free invariant $PreLoopHeap$loop#0 == $Heap;
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant j#0 - 0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            if (LitInt(0) <= j#0)
            {
            }

            assume true;
            assume {:id "id605"} LitInt(0) <= j#0 && j#0 <= d#0;
            // Begin Comprehension WF check
            havoc k#3;
            if (true)
            {
                if (j#0 <= k#3)
                {
                }

                if (j#0 <= k#3 && k#3 < d#0)
                {
                    // assume allocatedness for receiver argument to function
                    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                    ##k#2 := k#3;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##k#2, TInt, $Heap);
                    ##S#3 := S#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##S#3, TSet(Tclass._module.Node?()), $Heap);
                    assert {:id "id608"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#3)
                       ==> _module.Node.IsClosed($Heap, this, ##S#3) || Set#IsMember(##S#3, $Box(this));
                    assert {:id "id609"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#3)
                       ==> _module.Node.IsClosed($Heap, this, ##S#3) || Set#IsMember(##S#3, $Box(null));
                    assert {:id "id610"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#3)
                       ==> _module.Node.IsClosed($Heap, this, ##S#3)
                         || (forall n#4: ref :: 
                          { $Unbox(read($Heap, n#4, _module.Node.next)): ref } 
                          $Is(n#4, Tclass._module.Node?())
                             ==> 
                            Set#IsMember(##S#3, $Box(n#4))
                               && n#4 != null
                               && $Unbox(read($Heap, n#4, _module.Node.next)): ref != null
                             ==> Set#IsMember(##S#3, read($Heap, n#4, _module.Node.next)));
                    assert {:id "id611"} {:subsumption 0} LitInt(0) <= ##k#2;
                    assume _module.Node.Nexxxt#canCall($Heap, this, k#3, S#0);
                    newtype$check#2 := null;
                }

                if (j#0 <= k#3
                   && k#3 < d#0
                   && _module.Node.Nexxxt($LS($LZ), $Heap, this, k#3, S#0) == null)
                {
                    // assume allocatedness for receiver argument to function
                    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                    ##k#3 := d#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##k#3, TInt, $Heap);
                    ##S#4 := S#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##S#4, TSet(Tclass._module.Node?()), $Heap);
                    assert {:id "id612"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#4)
                       ==> _module.Node.IsClosed($Heap, this, ##S#4) || Set#IsMember(##S#4, $Box(this));
                    assert {:id "id613"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#4)
                       ==> _module.Node.IsClosed($Heap, this, ##S#4) || Set#IsMember(##S#4, $Box(null));
                    assert {:id "id614"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#4)
                       ==> _module.Node.IsClosed($Heap, this, ##S#4)
                         || (forall n#5: ref :: 
                          { $Unbox(read($Heap, n#5, _module.Node.next)): ref } 
                          $Is(n#5, Tclass._module.Node?())
                             ==> 
                            Set#IsMember(##S#4, $Box(n#5))
                               && n#5 != null
                               && $Unbox(read($Heap, n#5, _module.Node.next)): ref != null
                             ==> Set#IsMember(##S#4, read($Heap, n#5, _module.Node.next)));
                    assert {:id "id615"} {:subsumption 0} LitInt(0) <= ##k#3;
                    assume _module.Node.Nexxxt#canCall($Heap, this, d#0, S#0);
                    newtype$check#3 := null;
                }
            }

            // End Comprehension WF check
            assume (forall k#4: int :: 
              { _module.Node.Nexxxt($LS($LZ), $Heap, this, k#4, S#0) } 
              j#0 <= k#4 && k#4 < d#0
                 ==> _module.Node.Nexxxt#canCall($Heap, this, k#4, S#0)
                   && (_module.Node.Nexxxt($LS($LZ), $Heap, this, k#4, S#0) == null
                     ==> _module.Node.Nexxxt#canCall($Heap, this, d#0, S#0)));
            assume {:id "id616"} (forall k#4: int :: 
              { _module.Node.Nexxxt($LS($LZ), $Heap, this, k#4, S#0) } 
              j#0 <= k#4
                   && k#4 < d#0
                   && _module.Node.Nexxxt($LS($LZ), $Heap, this, k#4, S#0) == null
                 ==> _module.Node.Nexxxt($LS($LZ), $Heap, this, d#0, S#0) == null);
            assume true;
            assume false;
        }

        assume true;
        if (j#0 <= 0)
        {
            break;
        }

        $decr$loop#00 := j#0 - 0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(313,9)
        assume true;
        assume true;
        j#0 := j#0 - 1;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(314,7)
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
        ##k#0_0 := j#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##k#0_0, TInt, $Heap);
        ##S#0_0 := S#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##S#0_0, TSet(Tclass._module.Node?()), $Heap);
        assert {:id "id620"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0)
           ==> _module.Node.IsClosed($Heap, this, ##S#0_0) || Set#IsMember(##S#0_0, $Box(this));
        assert {:id "id621"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0)
           ==> _module.Node.IsClosed($Heap, this, ##S#0_0) || Set#IsMember(##S#0_0, $Box(null));
        assert {:id "id622"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0)
           ==> _module.Node.IsClosed($Heap, this, ##S#0_0)
             || (forall n#0_0: ref :: 
              { $Unbox(read($Heap, n#0_0, _module.Node.next)): ref } 
              $Is(n#0_0, Tclass._module.Node?())
                 ==> 
                Set#IsMember(##S#0_0, $Box(n#0_0))
                   && n#0_0 != null
                   && $Unbox(read($Heap, n#0_0, _module.Node.next)): ref != null
                 ==> Set#IsMember(##S#0_0, read($Heap, n#0_0, _module.Node.next)));
        assert {:id "id623"} {:subsumption 0} LitInt(0) <= ##k#0_0;
        assume _module.Node.IsClosed($Heap, this, ##S#0_0) && LitInt(0) <= ##k#0_0;
        assume _module.Node.Nexxxt#canCall($Heap, this, j#0, S#0);
        newtype$check#0_0 := null;
        assume _module.Node.Nexxxt#canCall($Heap, this, j#0, S#0);
        if (_module.Node.Nexxxt($LS($LZ), $Heap, this, j#0, S#0) == null)
        {
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(315,9)
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
            ##k#0_0_0 := j#0 + 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##k#0_0_0, TInt, $Heap);
            ##S#0_0_0 := S#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##S#0_0_0, TSet(Tclass._module.Node?()), $Heap);
            assert {:id "id624"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0)
               ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0)
                 || Set#IsMember(##S#0_0_0, $Box(this));
            assert {:id "id625"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0)
               ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0)
                 || Set#IsMember(##S#0_0_0, $Box(null));
            assert {:id "id626"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0)
               ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0)
                 || (forall n#0_0_0: ref :: 
                  { $Unbox(read($Heap, n#0_0_0, _module.Node.next)): ref } 
                  $Is(n#0_0_0, Tclass._module.Node?())
                     ==> 
                    Set#IsMember(##S#0_0_0, $Box(n#0_0_0))
                       && n#0_0_0 != null
                       && $Unbox(read($Heap, n#0_0_0, _module.Node.next)): ref != null
                     ==> Set#IsMember(##S#0_0_0, read($Heap, n#0_0_0, _module.Node.next)));
            assert {:id "id627"} {:subsumption 0} LitInt(0) <= ##k#0_0_0;
            assume _module.Node.Nexxxt#canCall($Heap, this, j#0 + 1, S#0);
            newtype$check#0_0_0 := null;
            assume _module.Node.Nexxxt#canCall($Heap, this, j#0 + 1, S#0);
            assert {:id "id628"} {:subsumption 0} _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, j#0 + 1, S#0) == null;
            assume {:id "id629"} _module.Node.Nexxxt($LS($LZ), $Heap, this, j#0 + 1, S#0) == null;
        }
        else
        {
        }

        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(309,5)
        assert {:id "id630"} 0 <= $decr$loop#00 || j#0 - 0 == $decr$loop#00;
        assert {:id "id631"} j#0 - 0 < $decr$loop#00;
        assume LitInt(0) <= j#0 && j#0 <= d#0
           ==> (forall k#4: int :: 
            { _module.Node.Nexxxt($LS($LZ), $Heap, this, k#4, S#0) } 
            j#0 <= k#4 && k#4 < d#0
               ==> _module.Node.Nexxxt#canCall($Heap, this, k#4, S#0)
                 && (_module.Node.Nexxxt($LS($LZ), $Heap, this, k#4, S#0) == null
                   ==> _module.Node.Nexxxt#canCall($Heap, this, d#0, S#0)));
    }
}



procedure {:verboseName "Node.Lemma_NullImpliesNoCycles (well-formedness)"} CheckWellFormed$$_module.Node.Lemma__NullImpliesNoCycles(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    n#0: int, 
    S#0: Set
       where $Is(S#0, TSet(Tclass._module.Node?()))
         && $IsAlloc(S#0, TSet(Tclass._module.Node?()), $Heap));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.Lemma_NullImpliesNoCycles (well-formedness)"} CheckWellFormed$$_module.Node.Lemma__NullImpliesNoCycles(this: ref, n#0: int, S#0: Set)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##S#0: Set;
  var ##k#0: int;
  var ##S#1: Set;
  var newtype$check#0: ref;
  var k#0: int;
  var l#0: int;
  var ##k#1: int;
  var ##S#2: Set;
  var newtype$check#1: ref;
  var ##k#2: int;
  var ##S#3: Set;
  var newtype$check#2: ref;
  var ##k#3: int;
  var ##S#4: Set;
  var ##k#4: int;
  var ##S#5: Set;
  var ##k#5: int;
  var ##S#6: Set;


    // AddMethodImpl: Lemma_NullImpliesNoCycles, CheckWellFormed$$_module.Node.Lemma__NullImpliesNoCycles
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
    ##S#0 := S#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##S#0, TSet(Tclass._module.Node?()), $Heap);
    assume _module.Node.IsClosed#canCall($Heap, this, S#0);
    assume {:id "id632"} _module.Node.IsClosed($Heap, this, S#0);
    assume {:id "id633"} LitInt(0) <= n#0;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
    ##k#0 := n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##k#0, TInt, $Heap);
    ##S#1 := S#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##S#1, TSet(Tclass._module.Node?()), $Heap);
    assert {:id "id634"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1)
       ==> _module.Node.IsClosed($Heap, this, ##S#1) || Set#IsMember(##S#1, $Box(this));
    assert {:id "id635"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1)
       ==> _module.Node.IsClosed($Heap, this, ##S#1) || Set#IsMember(##S#1, $Box(null));
    assert {:id "id636"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1)
       ==> _module.Node.IsClosed($Heap, this, ##S#1)
         || (forall n#1: ref :: 
          { $Unbox(read($Heap, n#1, _module.Node.next)): ref } 
          $Is(n#1, Tclass._module.Node?())
             ==> 
            Set#IsMember(##S#1, $Box(n#1))
               && n#1 != null
               && $Unbox(read($Heap, n#1, _module.Node.next)): ref != null
             ==> Set#IsMember(##S#1, read($Heap, n#1, _module.Node.next)));
    assert {:id "id637"} {:subsumption 0} LitInt(0) <= ##k#0;
    assume _module.Node.IsClosed($Heap, this, ##S#1) && LitInt(0) <= ##k#0;
    assume _module.Node.Nexxxt#canCall($Heap, this, n#0, S#0);
    newtype$check#0 := null;
    assume {:id "id638"} _module.Node.Nexxxt($LS($LZ), $Heap, this, n#0, S#0) == null;
    havoc $Heap;
    assume old($Heap) == $Heap;
    // Begin Comprehension WF check
    havoc k#0;
    havoc l#0;
    if (true)
    {
        if (LitInt(0) <= k#0)
        {
        }

        if (LitInt(0) <= k#0 && LitInt(0) <= l#0)
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
            ##k#1 := k#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##k#1, TInt, $Heap);
            ##S#2 := S#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##S#2, TSet(Tclass._module.Node?()), $Heap);
            assert {:id "id639"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#2)
               ==> _module.Node.IsClosed($Heap, this, ##S#2) || Set#IsMember(##S#2, $Box(this));
            assert {:id "id640"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#2)
               ==> _module.Node.IsClosed($Heap, this, ##S#2) || Set#IsMember(##S#2, $Box(null));
            assert {:id "id641"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#2)
               ==> _module.Node.IsClosed($Heap, this, ##S#2)
                 || (forall n#2: ref :: 
                  { $Unbox(read($Heap, n#2, _module.Node.next)): ref } 
                  $Is(n#2, Tclass._module.Node?())
                     ==> 
                    Set#IsMember(##S#2, $Box(n#2))
                       && n#2 != null
                       && $Unbox(read($Heap, n#2, _module.Node.next)): ref != null
                     ==> Set#IsMember(##S#2, read($Heap, n#2, _module.Node.next)));
            assert {:id "id642"} {:subsumption 0} LitInt(0) <= ##k#1;
            assume _module.Node.IsClosed($Heap, this, ##S#2) && LitInt(0) <= ##k#1;
            assume _module.Node.Nexxxt#canCall($Heap, this, k#0, S#0);
            newtype$check#1 := null;
        }

        if (LitInt(0) <= k#0
           && LitInt(0) <= l#0
           && _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0) != null)
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
            ##k#2 := k#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##k#2, TInt, $Heap);
            ##S#3 := S#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##S#3, TSet(Tclass._module.Node?()), $Heap);
            assert {:id "id643"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#3)
               ==> _module.Node.IsClosed($Heap, this, ##S#3) || Set#IsMember(##S#3, $Box(this));
            assert {:id "id644"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#3)
               ==> _module.Node.IsClosed($Heap, this, ##S#3) || Set#IsMember(##S#3, $Box(null));
            assert {:id "id645"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#3)
               ==> _module.Node.IsClosed($Heap, this, ##S#3)
                 || (forall n#3: ref :: 
                  { $Unbox(read($Heap, n#3, _module.Node.next)): ref } 
                  $Is(n#3, Tclass._module.Node?())
                     ==> 
                    Set#IsMember(##S#3, $Box(n#3))
                       && n#3 != null
                       && $Unbox(read($Heap, n#3, _module.Node.next)): ref != null
                     ==> Set#IsMember(##S#3, read($Heap, n#3, _module.Node.next)));
            assert {:id "id646"} {:subsumption 0} LitInt(0) <= ##k#2;
            assume _module.Node.IsClosed($Heap, this, ##S#3) && LitInt(0) <= ##k#2;
            assume _module.Node.Nexxxt#canCall($Heap, this, k#0, S#0);
            assert {:id "id647"} _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0) != null;
            newtype$check#2 := null;
        }

        if (LitInt(0) <= k#0
           && LitInt(0) <= l#0
           && _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0) != null
           && $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next)): ref
             != null)
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
            ##k#3 := k#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##k#3, TInt, $Heap);
            ##S#4 := S#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##S#4, TSet(Tclass._module.Node?()), $Heap);
            assert {:id "id648"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#4)
               ==> _module.Node.IsClosed($Heap, this, ##S#4) || Set#IsMember(##S#4, $Box(this));
            assert {:id "id649"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#4)
               ==> _module.Node.IsClosed($Heap, this, ##S#4) || Set#IsMember(##S#4, $Box(null));
            assert {:id "id650"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#4)
               ==> _module.Node.IsClosed($Heap, this, ##S#4)
                 || (forall n#4: ref :: 
                  { $Unbox(read($Heap, n#4, _module.Node.next)): ref } 
                  $Is(n#4, Tclass._module.Node?())
                     ==> 
                    Set#IsMember(##S#4, $Box(n#4))
                       && n#4 != null
                       && $Unbox(read($Heap, n#4, _module.Node.next)): ref != null
                     ==> Set#IsMember(##S#4, read($Heap, n#4, _module.Node.next)));
            assert {:id "id651"} {:subsumption 0} LitInt(0) <= ##k#3;
            assume _module.Node.IsClosed($Heap, this, ##S#4) && LitInt(0) <= ##k#3;
            assume _module.Node.Nexxxt#canCall($Heap, this, k#0, S#0);
            assert {:id "id652"} _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0) != null;
            assert {:id "id653"} $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next)): ref
               != null;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next), 
              Tclass._module.Node?(), 
              $Heap);
            ##k#4 := l#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##k#4, TInt, $Heap);
            ##S#5 := S#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##S#5, TSet(Tclass._module.Node?()), $Heap);
            assert {:id "id654"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, 
                $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next)): ref, 
                ##S#5)
               ==> _module.Node.IsClosed($Heap, 
                  $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next)): ref, 
                  ##S#5)
                 || Set#IsMember(##S#5, 
                  read($Heap, 
                    _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#0, S#0), 
                    _module.Node.next));
            assert {:id "id655"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, 
                $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next)): ref, 
                ##S#5)
               ==> _module.Node.IsClosed($Heap, 
                  $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next)): ref, 
                  ##S#5)
                 || Set#IsMember(##S#5, $Box(null));
            assert {:id "id656"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, 
                $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next)): ref, 
                ##S#5)
               ==> _module.Node.IsClosed($Heap, 
                  $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next)): ref, 
                  ##S#5)
                 || (forall n#5: ref :: 
                  { $Unbox(read($Heap, n#5, _module.Node.next)): ref } 
                  $Is(n#5, Tclass._module.Node?())
                     ==> 
                    Set#IsMember(##S#5, $Box(n#5))
                       && n#5 != null
                       && $Unbox(read($Heap, n#5, _module.Node.next)): ref != null
                     ==> Set#IsMember(##S#5, read($Heap, n#5, _module.Node.next)));
            assert {:id "id657"} {:subsumption 0} LitInt(0) <= ##k#4;
            assume _module.Node.IsClosed($Heap, 
                $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next)): ref, 
                ##S#5)
               && LitInt(0) <= ##k#4;
            assume _module.Node.Nexxxt#canCall($Heap, 
              $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next)): ref, 
              l#0, 
              S#0);
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
            ##k#5 := k#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##k#5, TInt, $Heap);
            ##S#6 := S#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##S#6, TSet(Tclass._module.Node?()), $Heap);
            assert {:id "id658"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#6)
               ==> _module.Node.IsClosed($Heap, this, ##S#6) || Set#IsMember(##S#6, $Box(this));
            assert {:id "id659"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#6)
               ==> _module.Node.IsClosed($Heap, this, ##S#6) || Set#IsMember(##S#6, $Box(null));
            assert {:id "id660"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#6)
               ==> _module.Node.IsClosed($Heap, this, ##S#6)
                 || (forall n#6: ref :: 
                  { $Unbox(read($Heap, n#6, _module.Node.next)): ref } 
                  $Is(n#6, Tclass._module.Node?())
                     ==> 
                    Set#IsMember(##S#6, $Box(n#6))
                       && n#6 != null
                       && $Unbox(read($Heap, n#6, _module.Node.next)): ref != null
                     ==> Set#IsMember(##S#6, read($Heap, n#6, _module.Node.next)));
            assert {:id "id661"} {:subsumption 0} LitInt(0) <= ##k#5;
            assume _module.Node.IsClosed($Heap, this, ##S#6) && LitInt(0) <= ##k#5;
            assume _module.Node.Nexxxt#canCall($Heap, this, k#0, S#0);
        }
    }

    // End Comprehension WF check
    assume {:id "id662"} !(exists k#1: int, l#1: int :: 
      { _module.Node.Nexxxt($LS($LZ), 
          $Heap, 
          $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0), _module.Node.next)): ref, 
          l#1, 
          S#0) } 
      LitInt(0) <= k#1
         && LitInt(0) <= l#1
         && _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0) != null
         && $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0), _module.Node.next)): ref
           != null
         && _module.Node.Nexxxt($LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0), _module.Node.next)): ref, 
            l#1, 
            S#0)
           == _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0));
}



procedure {:verboseName "Node.Lemma_NullImpliesNoCycles (call)"} Call$$_module.Node.Lemma__NullImpliesNoCycles(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    n#0: int, 
    S#0: Set
       where $Is(S#0, TSet(Tclass._module.Node?()))
         && $IsAlloc(S#0, TSet(Tclass._module.Node?()), $Heap));
  // user-defined preconditions
  requires {:id "id663"} _module.Node.IsClosed#canCall($Heap, this, S#0)
     ==> _module.Node.IsClosed($Heap, this, S#0) || Set#IsMember(S#0, $Box(this));
  requires {:id "id664"} _module.Node.IsClosed#canCall($Heap, this, S#0)
     ==> _module.Node.IsClosed($Heap, this, S#0) || Set#IsMember(S#0, $Box(null));
  requires {:id "id665"} _module.Node.IsClosed#canCall($Heap, this, S#0)
     ==> _module.Node.IsClosed($Heap, this, S#0)
       || (forall n#7: ref :: 
        { $Unbox(read($Heap, n#7, _module.Node.next)): ref } 
        $Is(n#7, Tclass._module.Node?())
           ==> 
          Set#IsMember(S#0, $Box(n#7))
             && n#7 != null
             && $Unbox(read($Heap, n#7, _module.Node.next)): ref != null
           ==> Set#IsMember(S#0, read($Heap, n#7, _module.Node.next)));
  requires {:id "id666"} LitInt(0) <= n#0;
  requires {:id "id667"} _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, n#0, S#0) == null;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall k#1: int, l#1: int :: 
    { _module.Node.Nexxxt($LS($LZ), 
        $Heap, 
        $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0), _module.Node.next)): ref, 
        l#1, 
        S#0) } 
    LitInt(0) <= k#1
       ==> 
      LitInt(0) <= l#1
       ==> _module.Node.Nexxxt#canCall($Heap, this, k#1, S#0)
         && (_module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0) != null
           ==> _module.Node.Nexxxt#canCall($Heap, this, k#1, S#0)
             && ($Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0), _module.Node.next)): ref
                 != null
               ==> _module.Node.Nexxxt#canCall($Heap, this, k#1, S#0)
                 && _module.Node.Nexxxt#canCall($Heap, 
                  $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0), _module.Node.next)): ref, 
                  l#1, 
                  S#0)
                 && _module.Node.Nexxxt#canCall($Heap, this, k#1, S#0))));
  free ensures {:id "id668"} !(exists k#1: int, l#1: int :: 
    { _module.Node.Nexxxt($LS($LZ), 
        $Heap, 
        $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0), _module.Node.next)): ref, 
        l#1, 
        S#0) } 
    LitInt(0) <= k#1
       && LitInt(0) <= l#1
       && _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0) != null
       && $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0), _module.Node.next)): ref
         != null
       && _module.Node.Nexxxt($LS($LZ), 
          $Heap, 
          $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0), _module.Node.next)): ref, 
          l#1, 
          S#0)
         == _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Node.Lemma_NullImpliesNoCycles (correctness)"} Impl$$_module.Node.Lemma__NullImpliesNoCycles(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    n#0: int, 
    S#0: Set
       where $Is(S#0, TSet(Tclass._module.Node?()))
         && $IsAlloc(S#0, TSet(Tclass._module.Node?()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id669"} _module.Node.IsClosed#canCall($Heap, this, S#0)
     && 
    _module.Node.IsClosed($Heap, this, S#0)
     && 
    Set#IsMember(S#0, $Box(this))
     && Set#IsMember(S#0, $Box(null))
     && (forall n#8: ref :: 
      { $Unbox(read($Heap, n#8, _module.Node.next)): ref } 
      $Is(n#8, Tclass._module.Node?())
         ==> 
        Set#IsMember(S#0, $Box(n#8))
           && n#8 != null
           && $Unbox(read($Heap, n#8, _module.Node.next)): ref != null
         ==> Set#IsMember(S#0, read($Heap, n#8, _module.Node.next)));
  requires {:id "id670"} LitInt(0) <= n#0;
  requires {:id "id671"} _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, n#0, S#0) == null;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall k#1: int, l#1: int :: 
    { _module.Node.Nexxxt($LS($LZ), 
        $Heap, 
        $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0), _module.Node.next)): ref, 
        l#1, 
        S#0) } 
    LitInt(0) <= k#1
       ==> 
      LitInt(0) <= l#1
       ==> _module.Node.Nexxxt#canCall($Heap, this, k#1, S#0)
         && (_module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0) != null
           ==> _module.Node.Nexxxt#canCall($Heap, this, k#1, S#0)
             && ($Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0), _module.Node.next)): ref
                 != null
               ==> _module.Node.Nexxxt#canCall($Heap, this, k#1, S#0)
                 && _module.Node.Nexxxt#canCall($Heap, 
                  $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0), _module.Node.next)): ref, 
                  l#1, 
                  S#0)
                 && _module.Node.Nexxxt#canCall($Heap, this, k#1, S#0))));
  ensures {:id "id672"} !(exists k#1: int, l#1: int :: 
    { _module.Node.Nexxxt($LS($LS($LZ)), 
        $Heap, 
        $Unbox(read($Heap, 
            _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#1, S#0), 
            _module.Node.next)): ref, 
        l#1, 
        S#0) } 
    LitInt(0) <= k#1
       && LitInt(0) <= l#1
       && _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#1, S#0) != null
       && $Unbox(read($Heap, 
            _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#1, S#0), 
            _module.Node.next)): ref
         != null
       && _module.Node.Nexxxt($LS($LS($LZ)), 
          $Heap, 
          $Unbox(read($Heap, 
              _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#1, S#0), 
              _module.Node.next)): ref, 
          l#1, 
          S#0)
         == _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#1, S#0));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.Lemma_NullImpliesNoCycles (correctness)"} Impl$$_module.Node.Lemma__NullImpliesNoCycles(this: ref, n#0: int, S#0: Set) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var n##0: int;
  var S##0: Set;
  var n##1: int;
  var S##1: Set;
  var n##2: int;
  var S##2: Set;

    // AddMethodImpl: Lemma_NullImpliesNoCycles, Impl$$_module.Node.Lemma__NullImpliesNoCycles
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#n0#0: int, $ih#S0#0: Set :: 
      { _module.Node.Nexxxt($LS($LZ), $Heap, this, $ih#n0#0, $ih#S0#0) } 
      $Is($ih#S0#0, TSet(Tclass._module.Node?()))
           && 
          _module.Node.IsClosed($initHeapForallStmt#0, this, $ih#S0#0)
           && LitInt(0) <= $ih#n0#0
           && _module.Node.Nexxxt($LS($LZ), $initHeapForallStmt#0, this, $ih#n0#0, $ih#S0#0)
             == null
           && ((0 <= $ih#n0#0 && $ih#n0#0 < n#0)
             || ($ih#n0#0 == n#0 && Set#Subset($ih#S0#0, S#0) && !Set#Subset(S#0, $ih#S0#0)))
         ==> !(exists k#2: int, l#2: int :: 
          { _module.Node.Nexxxt($LS($LZ), 
              $Heap, 
              $Unbox(read($Heap, 
                  _module.Node.Nexxxt($LS($LZ), $Heap, this, k#2, $ih#S0#0), 
                  _module.Node.next)): ref, 
              l#2, 
              $ih#S0#0) } 
          LitInt(0) <= k#2
             && LitInt(0) <= l#2
             && _module.Node.Nexxxt($LS($LZ), $Heap, this, k#2, $ih#S0#0) != null
             && $Unbox(read($Heap, 
                  _module.Node.Nexxxt($LS($LZ), $Heap, this, k#2, $ih#S0#0), 
                  _module.Node.next)): ref
               != null
             && _module.Node.Nexxxt($LS($LZ), 
                $Heap, 
                $Unbox(read($Heap, 
                    _module.Node.Nexxxt($LS($LZ), $Heap, this, k#2, $ih#S0#0), 
                    _module.Node.next)): ref, 
                l#2, 
                $ih#S0#0)
               == _module.Node.Nexxxt($LS($LZ), $Heap, this, k#2, $ih#S0#0)));
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(326,36)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##0 := n#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    S##0 := S#0;
    call {:id "id673"} Call$$_module.Node.Lemma__NullImpliesNoCycles__part0(this, n##0, S##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(327,36)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##1 := n#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    S##1 := S#0;
    call {:id "id674"} Call$$_module.Node.Lemma__NullImpliesNoCycles__part1(this, n##1, S##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(328,36)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##2 := n#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    S##2 := S#0;
    call {:id "id675"} Call$$_module.Node.Lemma__NullImpliesNoCycles__part2(this, n##2, S##2);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "Node.Lemma_NullImpliesNoCycles_part0 (well-formedness)"} CheckWellFormed$$_module.Node.Lemma__NullImpliesNoCycles__part0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    n#0: int, 
    S#0: Set
       where $Is(S#0, TSet(Tclass._module.Node?()))
         && $IsAlloc(S#0, TSet(Tclass._module.Node?()), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.Lemma_NullImpliesNoCycles_part0 (well-formedness)"} CheckWellFormed$$_module.Node.Lemma__NullImpliesNoCycles__part0(this: ref, n#0: int, S#0: Set)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##S#0: Set;
  var ##k#0: int;
  var ##S#1: Set;
  var newtype$check#0: ref;
  var k#0: int;
  var l#0: int;
  var ##k#1: int;
  var ##S#2: Set;
  var newtype$check#1: ref;
  var ##k#2: int;
  var ##S#3: Set;
  var newtype$check#2: ref;
  var ##k#3: int;
  var ##S#4: Set;
  var ##k#4: int;
  var ##S#5: Set;
  var ##k#5: int;
  var ##S#6: Set;


    // AddMethodImpl: Lemma_NullImpliesNoCycles_part0, CheckWellFormed$$_module.Node.Lemma__NullImpliesNoCycles__part0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
    ##S#0 := S#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##S#0, TSet(Tclass._module.Node?()), $Heap);
    assume _module.Node.IsClosed#canCall($Heap, this, S#0);
    assume {:id "id676"} _module.Node.IsClosed($Heap, this, S#0);
    assume {:id "id677"} LitInt(0) <= n#0;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
    ##k#0 := n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##k#0, TInt, $Heap);
    ##S#1 := S#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##S#1, TSet(Tclass._module.Node?()), $Heap);
    assert {:id "id678"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1)
       ==> _module.Node.IsClosed($Heap, this, ##S#1) || Set#IsMember(##S#1, $Box(this));
    assert {:id "id679"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1)
       ==> _module.Node.IsClosed($Heap, this, ##S#1) || Set#IsMember(##S#1, $Box(null));
    assert {:id "id680"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1)
       ==> _module.Node.IsClosed($Heap, this, ##S#1)
         || (forall n#1: ref :: 
          { $Unbox(read($Heap, n#1, _module.Node.next)): ref } 
          $Is(n#1, Tclass._module.Node?())
             ==> 
            Set#IsMember(##S#1, $Box(n#1))
               && n#1 != null
               && $Unbox(read($Heap, n#1, _module.Node.next)): ref != null
             ==> Set#IsMember(##S#1, read($Heap, n#1, _module.Node.next)));
    assert {:id "id681"} {:subsumption 0} LitInt(0) <= ##k#0;
    assume _module.Node.IsClosed($Heap, this, ##S#1) && LitInt(0) <= ##k#0;
    assume _module.Node.Nexxxt#canCall($Heap, this, n#0, S#0);
    newtype$check#0 := null;
    assume {:id "id682"} _module.Node.Nexxxt($LS($LZ), $Heap, this, n#0, S#0) == null;
    havoc $Heap;
    assume old($Heap) == $Heap;
    havoc k#0;
    havoc l#0;
    assume true;
    if (*)
    {
        assume {:id "id683"} n#0 <= k#0;
        assume {:id "id684"} LitInt(0) <= l#0;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
        ##k#1 := k#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##k#1, TInt, $Heap);
        ##S#2 := S#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##S#2, TSet(Tclass._module.Node?()), $Heap);
        assert {:id "id685"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#2)
           ==> _module.Node.IsClosed($Heap, this, ##S#2) || Set#IsMember(##S#2, $Box(this));
        assert {:id "id686"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#2)
           ==> _module.Node.IsClosed($Heap, this, ##S#2) || Set#IsMember(##S#2, $Box(null));
        assert {:id "id687"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#2)
           ==> _module.Node.IsClosed($Heap, this, ##S#2)
             || (forall n#2: ref :: 
              { $Unbox(read($Heap, n#2, _module.Node.next)): ref } 
              $Is(n#2, Tclass._module.Node?())
                 ==> 
                Set#IsMember(##S#2, $Box(n#2))
                   && n#2 != null
                   && $Unbox(read($Heap, n#2, _module.Node.next)): ref != null
                 ==> Set#IsMember(##S#2, read($Heap, n#2, _module.Node.next)));
        assert {:id "id688"} {:subsumption 0} LitInt(0) <= ##k#1;
        assume _module.Node.IsClosed($Heap, this, ##S#2) && LitInt(0) <= ##k#1;
        assume _module.Node.Nexxxt#canCall($Heap, this, k#0, S#0);
        newtype$check#1 := null;
        assume {:id "id689"} _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0) != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
        ##k#2 := k#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##k#2, TInt, $Heap);
        ##S#3 := S#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##S#3, TSet(Tclass._module.Node?()), $Heap);
        assert {:id "id690"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#3)
           ==> _module.Node.IsClosed($Heap, this, ##S#3) || Set#IsMember(##S#3, $Box(this));
        assert {:id "id691"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#3)
           ==> _module.Node.IsClosed($Heap, this, ##S#3) || Set#IsMember(##S#3, $Box(null));
        assert {:id "id692"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#3)
           ==> _module.Node.IsClosed($Heap, this, ##S#3)
             || (forall n#3: ref :: 
              { $Unbox(read($Heap, n#3, _module.Node.next)): ref } 
              $Is(n#3, Tclass._module.Node?())
                 ==> 
                Set#IsMember(##S#3, $Box(n#3))
                   && n#3 != null
                   && $Unbox(read($Heap, n#3, _module.Node.next)): ref != null
                 ==> Set#IsMember(##S#3, read($Heap, n#3, _module.Node.next)));
        assert {:id "id693"} {:subsumption 0} LitInt(0) <= ##k#2;
        assume _module.Node.IsClosed($Heap, this, ##S#3) && LitInt(0) <= ##k#2;
        assume _module.Node.Nexxxt#canCall($Heap, this, k#0, S#0);
        assert {:id "id694"} _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0) != null;
        newtype$check#2 := null;
        assume {:id "id695"} $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next)): ref
           != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
        ##k#3 := k#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##k#3, TInt, $Heap);
        ##S#4 := S#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##S#4, TSet(Tclass._module.Node?()), $Heap);
        assert {:id "id696"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#4)
           ==> _module.Node.IsClosed($Heap, this, ##S#4) || Set#IsMember(##S#4, $Box(this));
        assert {:id "id697"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#4)
           ==> _module.Node.IsClosed($Heap, this, ##S#4) || Set#IsMember(##S#4, $Box(null));
        assert {:id "id698"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#4)
           ==> _module.Node.IsClosed($Heap, this, ##S#4)
             || (forall n#4: ref :: 
              { $Unbox(read($Heap, n#4, _module.Node.next)): ref } 
              $Is(n#4, Tclass._module.Node?())
                 ==> 
                Set#IsMember(##S#4, $Box(n#4))
                   && n#4 != null
                   && $Unbox(read($Heap, n#4, _module.Node.next)): ref != null
                 ==> Set#IsMember(##S#4, read($Heap, n#4, _module.Node.next)));
        assert {:id "id699"} {:subsumption 0} LitInt(0) <= ##k#3;
        assume _module.Node.IsClosed($Heap, this, ##S#4) && LitInt(0) <= ##k#3;
        assume _module.Node.Nexxxt#canCall($Heap, this, k#0, S#0);
        assert {:id "id700"} _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0) != null;
        assert {:id "id701"} $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next)): ref
           != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next), 
          Tclass._module.Node?(), 
          $Heap);
        ##k#4 := l#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##k#4, TInt, $Heap);
        ##S#5 := S#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##S#5, TSet(Tclass._module.Node?()), $Heap);
        assert {:id "id702"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, 
            $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next)): ref, 
            ##S#5)
           ==> _module.Node.IsClosed($Heap, 
              $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next)): ref, 
              ##S#5)
             || Set#IsMember(##S#5, 
              read($Heap, 
                _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#0, S#0), 
                _module.Node.next));
        assert {:id "id703"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, 
            $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next)): ref, 
            ##S#5)
           ==> _module.Node.IsClosed($Heap, 
              $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next)): ref, 
              ##S#5)
             || Set#IsMember(##S#5, $Box(null));
        assert {:id "id704"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, 
            $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next)): ref, 
            ##S#5)
           ==> _module.Node.IsClosed($Heap, 
              $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next)): ref, 
              ##S#5)
             || (forall n#5: ref :: 
              { $Unbox(read($Heap, n#5, _module.Node.next)): ref } 
              $Is(n#5, Tclass._module.Node?())
                 ==> 
                Set#IsMember(##S#5, $Box(n#5))
                   && n#5 != null
                   && $Unbox(read($Heap, n#5, _module.Node.next)): ref != null
                 ==> Set#IsMember(##S#5, read($Heap, n#5, _module.Node.next)));
        assert {:id "id705"} {:subsumption 0} LitInt(0) <= ##k#4;
        assume _module.Node.IsClosed($Heap, 
            $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next)): ref, 
            ##S#5)
           && LitInt(0) <= ##k#4;
        assume _module.Node.Nexxxt#canCall($Heap, 
          $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next)): ref, 
          l#0, 
          S#0);
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
        ##k#5 := k#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##k#5, TInt, $Heap);
        ##S#6 := S#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##S#6, TSet(Tclass._module.Node?()), $Heap);
        assert {:id "id706"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#6)
           ==> _module.Node.IsClosed($Heap, this, ##S#6) || Set#IsMember(##S#6, $Box(this));
        assert {:id "id707"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#6)
           ==> _module.Node.IsClosed($Heap, this, ##S#6) || Set#IsMember(##S#6, $Box(null));
        assert {:id "id708"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#6)
           ==> _module.Node.IsClosed($Heap, this, ##S#6)
             || (forall n#6: ref :: 
              { $Unbox(read($Heap, n#6, _module.Node.next)): ref } 
              $Is(n#6, Tclass._module.Node?())
                 ==> 
                Set#IsMember(##S#6, $Box(n#6))
                   && n#6 != null
                   && $Unbox(read($Heap, n#6, _module.Node.next)): ref != null
                 ==> Set#IsMember(##S#6, read($Heap, n#6, _module.Node.next)));
        assert {:id "id709"} {:subsumption 0} LitInt(0) <= ##k#5;
        assume _module.Node.IsClosed($Heap, this, ##S#6) && LitInt(0) <= ##k#5;
        assume _module.Node.Nexxxt#canCall($Heap, this, k#0, S#0);
        assume {:id "id710"} _module.Node.Nexxxt($LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next)): ref, 
            l#0, 
            S#0)
           != _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0);
    }
    else
    {
        assume {:id "id711"} n#0 <= k#0
             && LitInt(0) <= l#0
             && _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0) != null
             && $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next)): ref
               != null
           ==> _module.Node.Nexxxt($LS($LZ), 
              $Heap, 
              $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next)): ref, 
              l#0, 
              S#0)
             != _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0);
    }

    assume {:id "id712"} (forall k#1: int, l#1: int :: 
      { _module.Node.Nexxxt($LS($LZ), 
          $Heap, 
          $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0), _module.Node.next)): ref, 
          l#1, 
          S#0) } 
      n#0 <= k#1
           && LitInt(0) <= l#1
           && _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0) != null
           && $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0), _module.Node.next)): ref
             != null
         ==> _module.Node.Nexxxt($LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0), _module.Node.next)): ref, 
            l#1, 
            S#0)
           != _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0));
}



procedure {:verboseName "Node.Lemma_NullImpliesNoCycles_part0 (call)"} Call$$_module.Node.Lemma__NullImpliesNoCycles__part0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    n#0: int, 
    S#0: Set
       where $Is(S#0, TSet(Tclass._module.Node?()))
         && $IsAlloc(S#0, TSet(Tclass._module.Node?()), $Heap));
  // user-defined preconditions
  requires {:id "id713"} _module.Node.IsClosed#canCall($Heap, this, S#0)
     ==> _module.Node.IsClosed($Heap, this, S#0) || Set#IsMember(S#0, $Box(this));
  requires {:id "id714"} _module.Node.IsClosed#canCall($Heap, this, S#0)
     ==> _module.Node.IsClosed($Heap, this, S#0) || Set#IsMember(S#0, $Box(null));
  requires {:id "id715"} _module.Node.IsClosed#canCall($Heap, this, S#0)
     ==> _module.Node.IsClosed($Heap, this, S#0)
       || (forall n#7: ref :: 
        { $Unbox(read($Heap, n#7, _module.Node.next)): ref } 
        $Is(n#7, Tclass._module.Node?())
           ==> 
          Set#IsMember(S#0, $Box(n#7))
             && n#7 != null
             && $Unbox(read($Heap, n#7, _module.Node.next)): ref != null
           ==> Set#IsMember(S#0, read($Heap, n#7, _module.Node.next)));
  requires {:id "id716"} LitInt(0) <= n#0;
  requires {:id "id717"} _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, n#0, S#0) == null;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall k#1: int, l#1: int :: 
    { _module.Node.Nexxxt($LS($LZ), 
        $Heap, 
        $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0), _module.Node.next)): ref, 
        l#1, 
        S#0) } 
    n#0 <= k#1
       ==> 
      LitInt(0) <= l#1
       ==> _module.Node.Nexxxt#canCall($Heap, this, k#1, S#0)
         && (_module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0) != null
           ==> _module.Node.Nexxxt#canCall($Heap, this, k#1, S#0)
             && ($Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0), _module.Node.next)): ref
                 != null
               ==> _module.Node.Nexxxt#canCall($Heap, this, k#1, S#0)
                 && _module.Node.Nexxxt#canCall($Heap, 
                  $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0), _module.Node.next)): ref, 
                  l#1, 
                  S#0)
                 && _module.Node.Nexxxt#canCall($Heap, this, k#1, S#0))));
  free ensures {:id "id718"} (forall k#1: int, l#1: int :: 
    { _module.Node.Nexxxt($LS($LZ), 
        $Heap, 
        $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0), _module.Node.next)): ref, 
        l#1, 
        S#0) } 
    n#0 <= k#1
         && LitInt(0) <= l#1
         && _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0) != null
         && $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0), _module.Node.next)): ref
           != null
       ==> _module.Node.Nexxxt($LS($LZ), 
          $Heap, 
          $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0), _module.Node.next)): ref, 
          l#1, 
          S#0)
         != _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Node.Lemma_NullImpliesNoCycles_part0 (correctness)"} Impl$$_module.Node.Lemma__NullImpliesNoCycles__part0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    n#0: int, 
    S#0: Set
       where $Is(S#0, TSet(Tclass._module.Node?()))
         && $IsAlloc(S#0, TSet(Tclass._module.Node?()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id719"} _module.Node.IsClosed#canCall($Heap, this, S#0)
     && 
    _module.Node.IsClosed($Heap, this, S#0)
     && 
    Set#IsMember(S#0, $Box(this))
     && Set#IsMember(S#0, $Box(null))
     && (forall n#8: ref :: 
      { $Unbox(read($Heap, n#8, _module.Node.next)): ref } 
      $Is(n#8, Tclass._module.Node?())
         ==> 
        Set#IsMember(S#0, $Box(n#8))
           && n#8 != null
           && $Unbox(read($Heap, n#8, _module.Node.next)): ref != null
         ==> Set#IsMember(S#0, read($Heap, n#8, _module.Node.next)));
  requires {:id "id720"} LitInt(0) <= n#0;
  requires {:id "id721"} _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, n#0, S#0) == null;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall k#1: int, l#1: int :: 
    { _module.Node.Nexxxt($LS($LZ), 
        $Heap, 
        $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0), _module.Node.next)): ref, 
        l#1, 
        S#0) } 
    n#0 <= k#1
       ==> 
      LitInt(0) <= l#1
       ==> _module.Node.Nexxxt#canCall($Heap, this, k#1, S#0)
         && (_module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0) != null
           ==> _module.Node.Nexxxt#canCall($Heap, this, k#1, S#0)
             && ($Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0), _module.Node.next)): ref
                 != null
               ==> _module.Node.Nexxxt#canCall($Heap, this, k#1, S#0)
                 && _module.Node.Nexxxt#canCall($Heap, 
                  $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0), _module.Node.next)): ref, 
                  l#1, 
                  S#0)
                 && _module.Node.Nexxxt#canCall($Heap, this, k#1, S#0))));
  ensures {:id "id722"} (forall k#1: int, l#1: int :: 
    { _module.Node.Nexxxt($LS($LS($LZ)), 
        $Heap, 
        $Unbox(read($Heap, 
            _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#1, S#0), 
            _module.Node.next)): ref, 
        l#1, 
        S#0) } 
    n#0 <= k#1
         && LitInt(0) <= l#1
         && _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#1, S#0) != null
         && $Unbox(read($Heap, 
              _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#1, S#0), 
              _module.Node.next)): ref
           != null
       ==> _module.Node.Nexxxt($LS($LS($LZ)), 
          $Heap, 
          $Unbox(read($Heap, 
              _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#1, S#0), 
              _module.Node.next)): ref, 
          l#1, 
          S#0)
         != _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#1, S#0));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.Lemma_NullImpliesNoCycles_part0 (correctness)"} Impl$$_module.Node.Lemma__NullImpliesNoCycles__part0(this: ref, n#0: int, S#0: Set) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var k#3: int;
  var ##k#6: int;
  var ##S#7: Set;
  var newtype$check#3: ref;

    // AddMethodImpl: Lemma_NullImpliesNoCycles_part0, Impl$$_module.Node.Lemma__NullImpliesNoCycles__part0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#n0#0: int, $ih#S0#0: Set :: 
      { _module.Node.Nexxxt($LS($LZ), $Heap, this, $ih#n0#0, $ih#S0#0) } 
      $Is($ih#S0#0, TSet(Tclass._module.Node?()))
           && 
          _module.Node.IsClosed($initHeapForallStmt#0, this, $ih#S0#0)
           && LitInt(0) <= $ih#n0#0
           && _module.Node.Nexxxt($LS($LZ), $initHeapForallStmt#0, this, $ih#n0#0, $ih#S0#0)
             == null
           && ((0 <= $ih#n0#0 && $ih#n0#0 < n#0)
             || ($ih#n0#0 == n#0 && Set#Subset($ih#S0#0, S#0) && !Set#Subset(S#0, $ih#S0#0)))
         ==> (forall k#2: int, l#2: int :: 
          { _module.Node.Nexxxt($LS($LZ), 
              $Heap, 
              $Unbox(read($Heap, 
                  _module.Node.Nexxxt($LS($LZ), $Heap, this, k#2, $ih#S0#0), 
                  _module.Node.next)): ref, 
              l#2, 
              $ih#S0#0) } 
          $ih#n0#0 <= k#2
               && LitInt(0) <= l#2
               && _module.Node.Nexxxt($LS($LZ), $Heap, this, k#2, $ih#S0#0) != null
               && $Unbox(read($Heap, 
                    _module.Node.Nexxxt($LS($LZ), $Heap, this, k#2, $ih#S0#0), 
                    _module.Node.next)): ref
                 != null
             ==> _module.Node.Nexxxt($LS($LZ), 
                $Heap, 
                $Unbox(read($Heap, 
                    _module.Node.Nexxxt($LS($LZ), $Heap, this, k#2, $ih#S0#0), 
                    _module.Node.next)): ref, 
                l#2, 
                $ih#S0#0)
               != _module.Node.Nexxxt($LS($LZ), $Heap, this, k#2, $ih#S0#0)));
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(335,5)
    // Begin Comprehension WF check
    havoc k#3;
    if (true)
    {
        if (n#0 <= k#3)
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
            ##k#6 := k#3;
            // assume allocatedness for argument to function
            assume $IsAlloc(##k#6, TInt, $Heap);
            ##S#7 := S#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##S#7, TSet(Tclass._module.Node?()), $Heap);
            assert {:id "id723"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#7)
               ==> _module.Node.IsClosed($Heap, this, ##S#7) || Set#IsMember(##S#7, $Box(this));
            assert {:id "id724"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#7)
               ==> _module.Node.IsClosed($Heap, this, ##S#7) || Set#IsMember(##S#7, $Box(null));
            assert {:id "id725"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#7)
               ==> _module.Node.IsClosed($Heap, this, ##S#7)
                 || (forall n#9: ref :: 
                  { $Unbox(read($Heap, n#9, _module.Node.next)): ref } 
                  $Is(n#9, Tclass._module.Node?())
                     ==> 
                    Set#IsMember(##S#7, $Box(n#9))
                       && n#9 != null
                       && $Unbox(read($Heap, n#9, _module.Node.next)): ref != null
                     ==> Set#IsMember(##S#7, read($Heap, n#9, _module.Node.next)));
            assert {:id "id726"} {:subsumption 0} LitInt(0) <= ##k#6;
            assume _module.Node.Nexxxt#canCall($Heap, this, k#3, S#0);
            newtype$check#3 := null;
        }
    }

    // End Comprehension WF check
    assume (forall k#4: int :: 
      { _module.Node.Nexxxt($LS($LZ), $Heap, this, k#4, S#0) } 
      n#0 <= k#4 ==> _module.Node.Nexxxt#canCall($Heap, this, k#4, S#0));
    assert {:id "id727"} {:subsumption 0} (forall k#4: int :: 
      { _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#4, S#0) } 
      (forall k$ih#0#0: int :: 
            { _module.Node.Nexxxt($LS($LZ), $Heap, this, k$ih#0#0, S#0) } 
            0 <= k$ih#0#0 && k$ih#0#0 < k#4
               ==> 
              n#0 <= k$ih#0#0
               ==> _module.Node.Nexxxt($LS($LZ), $Heap, this, k$ih#0#0, S#0) == null)
           && true
         ==> 
        n#0 <= k#4
         ==> _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#4, S#0) == null);
    assume {:id "id728"} (forall k#4: int :: 
      { _module.Node.Nexxxt($LS($LZ), $Heap, this, k#4, S#0) } 
      n#0 <= k#4 ==> _module.Node.Nexxxt($LS($LZ), $Heap, this, k#4, S#0) == null);
}



procedure {:verboseName "Node.Lemma_NullImpliesNoCycles_part1 (well-formedness)"} CheckWellFormed$$_module.Node.Lemma__NullImpliesNoCycles__part1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    n#0: int, 
    S#0: Set
       where $Is(S#0, TSet(Tclass._module.Node?()))
         && $IsAlloc(S#0, TSet(Tclass._module.Node?()), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.Lemma_NullImpliesNoCycles_part1 (well-formedness)"} CheckWellFormed$$_module.Node.Lemma__NullImpliesNoCycles__part1(this: ref, n#0: int, S#0: Set)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##S#0: Set;
  var ##k#0: int;
  var ##S#1: Set;
  var newtype$check#0: ref;
  var k#0: int;
  var l#0: int;
  var ##k#1: int;
  var ##S#2: Set;
  var newtype$check#1: ref;
  var ##k#2: int;
  var ##S#3: Set;
  var newtype$check#2: ref;
  var ##k#3: int;
  var ##S#4: Set;
  var ##k#4: int;
  var ##S#5: Set;
  var ##k#5: int;
  var ##S#6: Set;


    // AddMethodImpl: Lemma_NullImpliesNoCycles_part1, CheckWellFormed$$_module.Node.Lemma__NullImpliesNoCycles__part1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
    ##S#0 := S#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##S#0, TSet(Tclass._module.Node?()), $Heap);
    assume _module.Node.IsClosed#canCall($Heap, this, S#0);
    assume {:id "id729"} _module.Node.IsClosed($Heap, this, S#0);
    assume {:id "id730"} LitInt(0) <= n#0;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
    ##k#0 := n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##k#0, TInt, $Heap);
    ##S#1 := S#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##S#1, TSet(Tclass._module.Node?()), $Heap);
    assert {:id "id731"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1)
       ==> _module.Node.IsClosed($Heap, this, ##S#1) || Set#IsMember(##S#1, $Box(this));
    assert {:id "id732"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1)
       ==> _module.Node.IsClosed($Heap, this, ##S#1) || Set#IsMember(##S#1, $Box(null));
    assert {:id "id733"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1)
       ==> _module.Node.IsClosed($Heap, this, ##S#1)
         || (forall n#1: ref :: 
          { $Unbox(read($Heap, n#1, _module.Node.next)): ref } 
          $Is(n#1, Tclass._module.Node?())
             ==> 
            Set#IsMember(##S#1, $Box(n#1))
               && n#1 != null
               && $Unbox(read($Heap, n#1, _module.Node.next)): ref != null
             ==> Set#IsMember(##S#1, read($Heap, n#1, _module.Node.next)));
    assert {:id "id734"} {:subsumption 0} LitInt(0) <= ##k#0;
    assume _module.Node.IsClosed($Heap, this, ##S#1) && LitInt(0) <= ##k#0;
    assume _module.Node.Nexxxt#canCall($Heap, this, n#0, S#0);
    newtype$check#0 := null;
    assume {:id "id735"} _module.Node.Nexxxt($LS($LZ), $Heap, this, n#0, S#0) == null;
    havoc $Heap;
    assume old($Heap) == $Heap;
    havoc k#0;
    havoc l#0;
    assume true;
    if (*)
    {
        assume {:id "id736"} LitInt(0) <= k#0;
        assume {:id "id737"} n#0 <= l#0;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
        ##k#1 := k#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##k#1, TInt, $Heap);
        ##S#2 := S#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##S#2, TSet(Tclass._module.Node?()), $Heap);
        assert {:id "id738"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#2)
           ==> _module.Node.IsClosed($Heap, this, ##S#2) || Set#IsMember(##S#2, $Box(this));
        assert {:id "id739"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#2)
           ==> _module.Node.IsClosed($Heap, this, ##S#2) || Set#IsMember(##S#2, $Box(null));
        assert {:id "id740"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#2)
           ==> _module.Node.IsClosed($Heap, this, ##S#2)
             || (forall n#2: ref :: 
              { $Unbox(read($Heap, n#2, _module.Node.next)): ref } 
              $Is(n#2, Tclass._module.Node?())
                 ==> 
                Set#IsMember(##S#2, $Box(n#2))
                   && n#2 != null
                   && $Unbox(read($Heap, n#2, _module.Node.next)): ref != null
                 ==> Set#IsMember(##S#2, read($Heap, n#2, _module.Node.next)));
        assert {:id "id741"} {:subsumption 0} LitInt(0) <= ##k#1;
        assume _module.Node.IsClosed($Heap, this, ##S#2) && LitInt(0) <= ##k#1;
        assume _module.Node.Nexxxt#canCall($Heap, this, k#0, S#0);
        newtype$check#1 := null;
        assume {:id "id742"} _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0) != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
        ##k#2 := k#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##k#2, TInt, $Heap);
        ##S#3 := S#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##S#3, TSet(Tclass._module.Node?()), $Heap);
        assert {:id "id743"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#3)
           ==> _module.Node.IsClosed($Heap, this, ##S#3) || Set#IsMember(##S#3, $Box(this));
        assert {:id "id744"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#3)
           ==> _module.Node.IsClosed($Heap, this, ##S#3) || Set#IsMember(##S#3, $Box(null));
        assert {:id "id745"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#3)
           ==> _module.Node.IsClosed($Heap, this, ##S#3)
             || (forall n#3: ref :: 
              { $Unbox(read($Heap, n#3, _module.Node.next)): ref } 
              $Is(n#3, Tclass._module.Node?())
                 ==> 
                Set#IsMember(##S#3, $Box(n#3))
                   && n#3 != null
                   && $Unbox(read($Heap, n#3, _module.Node.next)): ref != null
                 ==> Set#IsMember(##S#3, read($Heap, n#3, _module.Node.next)));
        assert {:id "id746"} {:subsumption 0} LitInt(0) <= ##k#2;
        assume _module.Node.IsClosed($Heap, this, ##S#3) && LitInt(0) <= ##k#2;
        assume _module.Node.Nexxxt#canCall($Heap, this, k#0, S#0);
        assert {:id "id747"} _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0) != null;
        newtype$check#2 := null;
        assume {:id "id748"} $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next)): ref
           != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
        ##k#3 := k#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##k#3, TInt, $Heap);
        ##S#4 := S#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##S#4, TSet(Tclass._module.Node?()), $Heap);
        assert {:id "id749"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#4)
           ==> _module.Node.IsClosed($Heap, this, ##S#4) || Set#IsMember(##S#4, $Box(this));
        assert {:id "id750"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#4)
           ==> _module.Node.IsClosed($Heap, this, ##S#4) || Set#IsMember(##S#4, $Box(null));
        assert {:id "id751"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#4)
           ==> _module.Node.IsClosed($Heap, this, ##S#4)
             || (forall n#4: ref :: 
              { $Unbox(read($Heap, n#4, _module.Node.next)): ref } 
              $Is(n#4, Tclass._module.Node?())
                 ==> 
                Set#IsMember(##S#4, $Box(n#4))
                   && n#4 != null
                   && $Unbox(read($Heap, n#4, _module.Node.next)): ref != null
                 ==> Set#IsMember(##S#4, read($Heap, n#4, _module.Node.next)));
        assert {:id "id752"} {:subsumption 0} LitInt(0) <= ##k#3;
        assume _module.Node.IsClosed($Heap, this, ##S#4) && LitInt(0) <= ##k#3;
        assume _module.Node.Nexxxt#canCall($Heap, this, k#0, S#0);
        assert {:id "id753"} _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0) != null;
        assert {:id "id754"} $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next)): ref
           != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next), 
          Tclass._module.Node?(), 
          $Heap);
        ##k#4 := l#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##k#4, TInt, $Heap);
        ##S#5 := S#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##S#5, TSet(Tclass._module.Node?()), $Heap);
        assert {:id "id755"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, 
            $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next)): ref, 
            ##S#5)
           ==> _module.Node.IsClosed($Heap, 
              $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next)): ref, 
              ##S#5)
             || Set#IsMember(##S#5, 
              read($Heap, 
                _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#0, S#0), 
                _module.Node.next));
        assert {:id "id756"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, 
            $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next)): ref, 
            ##S#5)
           ==> _module.Node.IsClosed($Heap, 
              $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next)): ref, 
              ##S#5)
             || Set#IsMember(##S#5, $Box(null));
        assert {:id "id757"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, 
            $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next)): ref, 
            ##S#5)
           ==> _module.Node.IsClosed($Heap, 
              $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next)): ref, 
              ##S#5)
             || (forall n#5: ref :: 
              { $Unbox(read($Heap, n#5, _module.Node.next)): ref } 
              $Is(n#5, Tclass._module.Node?())
                 ==> 
                Set#IsMember(##S#5, $Box(n#5))
                   && n#5 != null
                   && $Unbox(read($Heap, n#5, _module.Node.next)): ref != null
                 ==> Set#IsMember(##S#5, read($Heap, n#5, _module.Node.next)));
        assert {:id "id758"} {:subsumption 0} LitInt(0) <= ##k#4;
        assume _module.Node.IsClosed($Heap, 
            $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next)): ref, 
            ##S#5)
           && LitInt(0) <= ##k#4;
        assume _module.Node.Nexxxt#canCall($Heap, 
          $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next)): ref, 
          l#0, 
          S#0);
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
        ##k#5 := k#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##k#5, TInt, $Heap);
        ##S#6 := S#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##S#6, TSet(Tclass._module.Node?()), $Heap);
        assert {:id "id759"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#6)
           ==> _module.Node.IsClosed($Heap, this, ##S#6) || Set#IsMember(##S#6, $Box(this));
        assert {:id "id760"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#6)
           ==> _module.Node.IsClosed($Heap, this, ##S#6) || Set#IsMember(##S#6, $Box(null));
        assert {:id "id761"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#6)
           ==> _module.Node.IsClosed($Heap, this, ##S#6)
             || (forall n#6: ref :: 
              { $Unbox(read($Heap, n#6, _module.Node.next)): ref } 
              $Is(n#6, Tclass._module.Node?())
                 ==> 
                Set#IsMember(##S#6, $Box(n#6))
                   && n#6 != null
                   && $Unbox(read($Heap, n#6, _module.Node.next)): ref != null
                 ==> Set#IsMember(##S#6, read($Heap, n#6, _module.Node.next)));
        assert {:id "id762"} {:subsumption 0} LitInt(0) <= ##k#5;
        assume _module.Node.IsClosed($Heap, this, ##S#6) && LitInt(0) <= ##k#5;
        assume _module.Node.Nexxxt#canCall($Heap, this, k#0, S#0);
        assume {:id "id763"} _module.Node.Nexxxt($LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next)): ref, 
            l#0, 
            S#0)
           != _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0);
    }
    else
    {
        assume {:id "id764"} LitInt(0) <= k#0
             && n#0 <= l#0
             && _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0) != null
             && $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next)): ref
               != null
           ==> _module.Node.Nexxxt($LS($LZ), 
              $Heap, 
              $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next)): ref, 
              l#0, 
              S#0)
             != _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0);
    }

    assume {:id "id765"} (forall k#1: int, l#1: int :: 
      { _module.Node.Nexxxt($LS($LZ), 
          $Heap, 
          $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0), _module.Node.next)): ref, 
          l#1, 
          S#0) } 
      LitInt(0) <= k#1
           && n#0 <= l#1
           && _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0) != null
           && $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0), _module.Node.next)): ref
             != null
         ==> _module.Node.Nexxxt($LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0), _module.Node.next)): ref, 
            l#1, 
            S#0)
           != _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0));
}



procedure {:verboseName "Node.Lemma_NullImpliesNoCycles_part1 (call)"} Call$$_module.Node.Lemma__NullImpliesNoCycles__part1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    n#0: int, 
    S#0: Set
       where $Is(S#0, TSet(Tclass._module.Node?()))
         && $IsAlloc(S#0, TSet(Tclass._module.Node?()), $Heap));
  // user-defined preconditions
  requires {:id "id766"} _module.Node.IsClosed#canCall($Heap, this, S#0)
     ==> _module.Node.IsClosed($Heap, this, S#0) || Set#IsMember(S#0, $Box(this));
  requires {:id "id767"} _module.Node.IsClosed#canCall($Heap, this, S#0)
     ==> _module.Node.IsClosed($Heap, this, S#0) || Set#IsMember(S#0, $Box(null));
  requires {:id "id768"} _module.Node.IsClosed#canCall($Heap, this, S#0)
     ==> _module.Node.IsClosed($Heap, this, S#0)
       || (forall n#7: ref :: 
        { $Unbox(read($Heap, n#7, _module.Node.next)): ref } 
        $Is(n#7, Tclass._module.Node?())
           ==> 
          Set#IsMember(S#0, $Box(n#7))
             && n#7 != null
             && $Unbox(read($Heap, n#7, _module.Node.next)): ref != null
           ==> Set#IsMember(S#0, read($Heap, n#7, _module.Node.next)));
  requires {:id "id769"} LitInt(0) <= n#0;
  requires {:id "id770"} _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, n#0, S#0) == null;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall k#1: int, l#1: int :: 
    { _module.Node.Nexxxt($LS($LZ), 
        $Heap, 
        $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0), _module.Node.next)): ref, 
        l#1, 
        S#0) } 
    LitInt(0) <= k#1
       ==> 
      n#0 <= l#1
       ==> _module.Node.Nexxxt#canCall($Heap, this, k#1, S#0)
         && (_module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0) != null
           ==> _module.Node.Nexxxt#canCall($Heap, this, k#1, S#0)
             && ($Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0), _module.Node.next)): ref
                 != null
               ==> _module.Node.Nexxxt#canCall($Heap, this, k#1, S#0)
                 && _module.Node.Nexxxt#canCall($Heap, 
                  $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0), _module.Node.next)): ref, 
                  l#1, 
                  S#0)
                 && _module.Node.Nexxxt#canCall($Heap, this, k#1, S#0))));
  free ensures {:id "id771"} (forall k#1: int, l#1: int :: 
    { _module.Node.Nexxxt($LS($LZ), 
        $Heap, 
        $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0), _module.Node.next)): ref, 
        l#1, 
        S#0) } 
    LitInt(0) <= k#1
         && n#0 <= l#1
         && _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0) != null
         && $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0), _module.Node.next)): ref
           != null
       ==> _module.Node.Nexxxt($LS($LZ), 
          $Heap, 
          $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0), _module.Node.next)): ref, 
          l#1, 
          S#0)
         != _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Node.Lemma_NullImpliesNoCycles_part1 (correctness)"} Impl$$_module.Node.Lemma__NullImpliesNoCycles__part1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    n#0: int, 
    S#0: Set
       where $Is(S#0, TSet(Tclass._module.Node?()))
         && $IsAlloc(S#0, TSet(Tclass._module.Node?()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id772"} _module.Node.IsClosed#canCall($Heap, this, S#0)
     && 
    _module.Node.IsClosed($Heap, this, S#0)
     && 
    Set#IsMember(S#0, $Box(this))
     && Set#IsMember(S#0, $Box(null))
     && (forall n#8: ref :: 
      { $Unbox(read($Heap, n#8, _module.Node.next)): ref } 
      $Is(n#8, Tclass._module.Node?())
         ==> 
        Set#IsMember(S#0, $Box(n#8))
           && n#8 != null
           && $Unbox(read($Heap, n#8, _module.Node.next)): ref != null
         ==> Set#IsMember(S#0, read($Heap, n#8, _module.Node.next)));
  requires {:id "id773"} LitInt(0) <= n#0;
  requires {:id "id774"} _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, n#0, S#0) == null;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall k#1: int, l#1: int :: 
    { _module.Node.Nexxxt($LS($LZ), 
        $Heap, 
        $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0), _module.Node.next)): ref, 
        l#1, 
        S#0) } 
    LitInt(0) <= k#1
       ==> 
      n#0 <= l#1
       ==> _module.Node.Nexxxt#canCall($Heap, this, k#1, S#0)
         && (_module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0) != null
           ==> _module.Node.Nexxxt#canCall($Heap, this, k#1, S#0)
             && ($Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0), _module.Node.next)): ref
                 != null
               ==> _module.Node.Nexxxt#canCall($Heap, this, k#1, S#0)
                 && _module.Node.Nexxxt#canCall($Heap, 
                  $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0), _module.Node.next)): ref, 
                  l#1, 
                  S#0)
                 && _module.Node.Nexxxt#canCall($Heap, this, k#1, S#0))));
  ensures {:id "id775"} (forall k#1: int, l#1: int :: 
    { _module.Node.Nexxxt($LS($LS($LZ)), 
        $Heap, 
        $Unbox(read($Heap, 
            _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#1, S#0), 
            _module.Node.next)): ref, 
        l#1, 
        S#0) } 
    LitInt(0) <= k#1
         && n#0 <= l#1
         && _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#1, S#0) != null
         && $Unbox(read($Heap, 
              _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#1, S#0), 
              _module.Node.next)): ref
           != null
       ==> _module.Node.Nexxxt($LS($LS($LZ)), 
          $Heap, 
          $Unbox(read($Heap, 
              _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#1, S#0), 
              _module.Node.next)): ref, 
          l#1, 
          S#0)
         != _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#1, S#0));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.Lemma_NullImpliesNoCycles_part1 (correctness)"} Impl$$_module.Node.Lemma__NullImpliesNoCycles__part1(this: ref, n#0: int, S#0: Set) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var k#3: int;
  var l#3: int;
  var ##k#6: int;
  var ##S#7: Set;
  var newtype$check#3: ref;
  var ##k#7: int;
  var ##S#8: Set;
  var newtype$check#4: ref;
  var ##k#8: int;
  var ##S#9: Set;
  var ##k#9: int;
  var ##S#10: Set;
  var ##k#10: int;
  var ##S#11: Set;
  var kl#0: int;
  var ##k#11: int;
  var ##S#12: Set;
  var newtype$check#5: ref;

    // AddMethodImpl: Lemma_NullImpliesNoCycles_part1, Impl$$_module.Node.Lemma__NullImpliesNoCycles__part1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#n0#0: int, $ih#S0#0: Set :: 
      { _module.Node.Nexxxt($LS($LZ), $Heap, this, $ih#n0#0, $ih#S0#0) } 
      $Is($ih#S0#0, TSet(Tclass._module.Node?()))
           && 
          _module.Node.IsClosed($initHeapForallStmt#0, this, $ih#S0#0)
           && LitInt(0) <= $ih#n0#0
           && _module.Node.Nexxxt($LS($LZ), $initHeapForallStmt#0, this, $ih#n0#0, $ih#S0#0)
             == null
           && ((0 <= $ih#n0#0 && $ih#n0#0 < n#0)
             || ($ih#n0#0 == n#0 && Set#Subset($ih#S0#0, S#0) && !Set#Subset(S#0, $ih#S0#0)))
         ==> (forall k#2: int, l#2: int :: 
          { _module.Node.Nexxxt($LS($LZ), 
              $Heap, 
              $Unbox(read($Heap, 
                  _module.Node.Nexxxt($LS($LZ), $Heap, this, k#2, $ih#S0#0), 
                  _module.Node.next)): ref, 
              l#2, 
              $ih#S0#0) } 
          LitInt(0) <= k#2
               && $ih#n0#0 <= l#2
               && _module.Node.Nexxxt($LS($LZ), $Heap, this, k#2, $ih#S0#0) != null
               && $Unbox(read($Heap, 
                    _module.Node.Nexxxt($LS($LZ), $Heap, this, k#2, $ih#S0#0), 
                    _module.Node.next)): ref
                 != null
             ==> _module.Node.Nexxxt($LS($LZ), 
                $Heap, 
                $Unbox(read($Heap, 
                    _module.Node.Nexxxt($LS($LZ), $Heap, this, k#2, $ih#S0#0), 
                    _module.Node.next)): ref, 
                l#2, 
                $ih#S0#0)
               != _module.Node.Nexxxt($LS($LZ), $Heap, this, k#2, $ih#S0#0)));
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(343,5)
    // Begin Comprehension WF check
    havoc k#3;
    havoc l#3;
    if (true)
    {
        if (LitInt(0) <= k#3)
        {
        }

        if (LitInt(0) <= k#3 && LitInt(0) <= l#3)
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
            ##k#6 := k#3;
            // assume allocatedness for argument to function
            assume $IsAlloc(##k#6, TInt, $Heap);
            ##S#7 := S#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##S#7, TSet(Tclass._module.Node?()), $Heap);
            assert {:id "id776"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#7)
               ==> _module.Node.IsClosed($Heap, this, ##S#7) || Set#IsMember(##S#7, $Box(this));
            assert {:id "id777"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#7)
               ==> _module.Node.IsClosed($Heap, this, ##S#7) || Set#IsMember(##S#7, $Box(null));
            assert {:id "id778"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#7)
               ==> _module.Node.IsClosed($Heap, this, ##S#7)
                 || (forall n#9: ref :: 
                  { $Unbox(read($Heap, n#9, _module.Node.next)): ref } 
                  $Is(n#9, Tclass._module.Node?())
                     ==> 
                    Set#IsMember(##S#7, $Box(n#9))
                       && n#9 != null
                       && $Unbox(read($Heap, n#9, _module.Node.next)): ref != null
                     ==> Set#IsMember(##S#7, read($Heap, n#9, _module.Node.next)));
            assert {:id "id779"} {:subsumption 0} LitInt(0) <= ##k#6;
            assume _module.Node.Nexxxt#canCall($Heap, this, k#3, S#0);
            newtype$check#3 := null;
        }

        if (LitInt(0) <= k#3
           && LitInt(0) <= l#3
           && _module.Node.Nexxxt($LS($LZ), $Heap, this, k#3, S#0) != null)
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
            ##k#7 := k#3;
            // assume allocatedness for argument to function
            assume $IsAlloc(##k#7, TInt, $Heap);
            ##S#8 := S#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##S#8, TSet(Tclass._module.Node?()), $Heap);
            assert {:id "id780"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#8)
               ==> _module.Node.IsClosed($Heap, this, ##S#8) || Set#IsMember(##S#8, $Box(this));
            assert {:id "id781"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#8)
               ==> _module.Node.IsClosed($Heap, this, ##S#8) || Set#IsMember(##S#8, $Box(null));
            assert {:id "id782"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#8)
               ==> _module.Node.IsClosed($Heap, this, ##S#8)
                 || (forall n#10: ref :: 
                  { $Unbox(read($Heap, n#10, _module.Node.next)): ref } 
                  $Is(n#10, Tclass._module.Node?())
                     ==> 
                    Set#IsMember(##S#8, $Box(n#10))
                       && n#10 != null
                       && $Unbox(read($Heap, n#10, _module.Node.next)): ref != null
                     ==> Set#IsMember(##S#8, read($Heap, n#10, _module.Node.next)));
            assert {:id "id783"} {:subsumption 0} LitInt(0) <= ##k#7;
            assume _module.Node.Nexxxt#canCall($Heap, this, k#3, S#0);
            assert {:id "id784"} {:subsumption 0} _module.Node.Nexxxt($LS($LZ), $Heap, this, k#3, S#0) != null;
            newtype$check#4 := null;
        }

        if (LitInt(0) <= k#3
           && LitInt(0) <= l#3
           && _module.Node.Nexxxt($LS($LZ), $Heap, this, k#3, S#0) != null
           && $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#3, S#0), _module.Node.next)): ref
             != null)
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
            ##k#8 := k#3;
            // assume allocatedness for argument to function
            assume $IsAlloc(##k#8, TInt, $Heap);
            ##S#9 := S#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##S#9, TSet(Tclass._module.Node?()), $Heap);
            assert {:id "id785"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#9)
               ==> _module.Node.IsClosed($Heap, this, ##S#9) || Set#IsMember(##S#9, $Box(this));
            assert {:id "id786"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#9)
               ==> _module.Node.IsClosed($Heap, this, ##S#9) || Set#IsMember(##S#9, $Box(null));
            assert {:id "id787"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#9)
               ==> _module.Node.IsClosed($Heap, this, ##S#9)
                 || (forall n#11: ref :: 
                  { $Unbox(read($Heap, n#11, _module.Node.next)): ref } 
                  $Is(n#11, Tclass._module.Node?())
                     ==> 
                    Set#IsMember(##S#9, $Box(n#11))
                       && n#11 != null
                       && $Unbox(read($Heap, n#11, _module.Node.next)): ref != null
                     ==> Set#IsMember(##S#9, read($Heap, n#11, _module.Node.next)));
            assert {:id "id788"} {:subsumption 0} LitInt(0) <= ##k#8;
            assume _module.Node.Nexxxt#canCall($Heap, this, k#3, S#0);
            assert {:id "id789"} {:subsumption 0} _module.Node.Nexxxt($LS($LZ), $Heap, this, k#3, S#0) != null;
            assert {:id "id790"} {:subsumption 0} $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#3, S#0), _module.Node.next)): ref
               != null;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#3, S#0), _module.Node.next), 
              Tclass._module.Node?(), 
              $Heap);
            ##k#9 := l#3;
            // assume allocatedness for argument to function
            assume $IsAlloc(##k#9, TInt, $Heap);
            ##S#10 := S#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##S#10, TSet(Tclass._module.Node?()), $Heap);
            assert {:id "id791"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, 
                $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#3, S#0), _module.Node.next)): ref, 
                ##S#10)
               ==> _module.Node.IsClosed($Heap, 
                  $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#3, S#0), _module.Node.next)): ref, 
                  ##S#10)
                 || Set#IsMember(##S#10, 
                  read($Heap, 
                    _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#3, S#0), 
                    _module.Node.next));
            assert {:id "id792"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, 
                $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#3, S#0), _module.Node.next)): ref, 
                ##S#10)
               ==> _module.Node.IsClosed($Heap, 
                  $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#3, S#0), _module.Node.next)): ref, 
                  ##S#10)
                 || Set#IsMember(##S#10, $Box(null));
            assert {:id "id793"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, 
                $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#3, S#0), _module.Node.next)): ref, 
                ##S#10)
               ==> _module.Node.IsClosed($Heap, 
                  $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#3, S#0), _module.Node.next)): ref, 
                  ##S#10)
                 || (forall n#12: ref :: 
                  { $Unbox(read($Heap, n#12, _module.Node.next)): ref } 
                  $Is(n#12, Tclass._module.Node?())
                     ==> 
                    Set#IsMember(##S#10, $Box(n#12))
                       && n#12 != null
                       && $Unbox(read($Heap, n#12, _module.Node.next)): ref != null
                     ==> Set#IsMember(##S#10, read($Heap, n#12, _module.Node.next)));
            assert {:id "id794"} {:subsumption 0} LitInt(0) <= ##k#9;
            assume _module.Node.Nexxxt#canCall($Heap, 
              $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#3, S#0), _module.Node.next)): ref, 
              l#3, 
              S#0);
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
            ##k#10 := k#3 + 1 + l#3;
            // assume allocatedness for argument to function
            assume $IsAlloc(##k#10, TInt, $Heap);
            ##S#11 := S#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##S#11, TSet(Tclass._module.Node?()), $Heap);
            assert {:id "id795"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#11)
               ==> _module.Node.IsClosed($Heap, this, ##S#11) || Set#IsMember(##S#11, $Box(this));
            assert {:id "id796"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#11)
               ==> _module.Node.IsClosed($Heap, this, ##S#11) || Set#IsMember(##S#11, $Box(null));
            assert {:id "id797"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#11)
               ==> _module.Node.IsClosed($Heap, this, ##S#11)
                 || (forall n#13: ref :: 
                  { $Unbox(read($Heap, n#13, _module.Node.next)): ref } 
                  $Is(n#13, Tclass._module.Node?())
                     ==> 
                    Set#IsMember(##S#11, $Box(n#13))
                       && n#13 != null
                       && $Unbox(read($Heap, n#13, _module.Node.next)): ref != null
                     ==> Set#IsMember(##S#11, read($Heap, n#13, _module.Node.next)));
            assert {:id "id798"} {:subsumption 0} LitInt(0) <= ##k#10;
            assume _module.Node.Nexxxt#canCall($Heap, this, k#3 + 1 + l#3, S#0);
        }
    }

    // End Comprehension WF check
    assume (forall k#4: int, l#4: int :: 
      { _module.Node.Nexxxt($LS($LZ), 
          $Heap, 
          $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#4, S#0), _module.Node.next)): ref, 
          l#4, 
          S#0) } 
      LitInt(0) <= k#4
         ==> 
        LitInt(0) <= l#4
         ==> _module.Node.Nexxxt#canCall($Heap, this, k#4, S#0)
           && (_module.Node.Nexxxt($LS($LZ), $Heap, this, k#4, S#0) != null
             ==> _module.Node.Nexxxt#canCall($Heap, this, k#4, S#0)
               && ($Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#4, S#0), _module.Node.next)): ref
                   != null
                 ==> _module.Node.Nexxxt#canCall($Heap, this, k#4, S#0)
                   && _module.Node.Nexxxt#canCall($Heap, 
                    $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#4, S#0), _module.Node.next)): ref, 
                    l#4, 
                    S#0)
                   && _module.Node.Nexxxt#canCall($Heap, this, k#4 + 1 + l#4, S#0))));
    assert {:id "id799"} {:subsumption 0} (forall k#4: int, l#4: int :: 
      { _module.Node.Nexxxt($LS($LS($LZ)), 
          $Heap, 
          $Unbox(read($Heap, 
              _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#4, S#0), 
              _module.Node.next)): ref, 
          l#4, 
          S#0) } 
      (forall k$ih#0#0: int, l$ih#0#0: int :: 
            { _module.Node.Nexxxt($LS($LZ), 
                $Heap, 
                $Unbox(read($Heap, 
                    _module.Node.Nexxxt($LS($LZ), $Heap, this, k$ih#0#0, S#0), 
                    _module.Node.next)): ref, 
                l$ih#0#0, 
                S#0) } 
            (0 <= k$ih#0#0 && k$ih#0#0 < k#4)
                 || (k$ih#0#0 == k#4 && 0 <= l$ih#0#0 && l$ih#0#0 < l#4)
               ==> 
              LitInt(0) <= k$ih#0#0
                 && LitInt(0) <= l$ih#0#0
                 && _module.Node.Nexxxt($LS($LZ), $Heap, this, k$ih#0#0, S#0) != null
                 && $Unbox(read($Heap, 
                      _module.Node.Nexxxt($LS($LZ), $Heap, this, k$ih#0#0, S#0), 
                      _module.Node.next)): ref
                   != null
               ==> _module.Node.Nexxxt($LS($LZ), 
                  $Heap, 
                  $Unbox(read($Heap, 
                      _module.Node.Nexxxt($LS($LZ), $Heap, this, k$ih#0#0, S#0), 
                      _module.Node.next)): ref, 
                  l$ih#0#0, 
                  S#0)
                 == _module.Node.Nexxxt($LS($LZ), $Heap, this, k$ih#0#0 + 1 + l$ih#0#0, S#0))
           && true
         ==> 
        LitInt(0) <= k#4
           && LitInt(0) <= l#4
           && _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#4, S#0) != null
           && $Unbox(read($Heap, 
                _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#4, S#0), 
                _module.Node.next)): ref
             != null
         ==> _module.Node.Nexxxt($LS($LS($LZ)), 
            $Heap, 
            $Unbox(read($Heap, 
                _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#4, S#0), 
                _module.Node.next)): ref, 
            l#4, 
            S#0)
           == _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#4 + 1 + l#4, S#0));
    assume {:id "id800"} (forall k#4: int, l#4: int :: 
      { _module.Node.Nexxxt($LS($LZ), 
          $Heap, 
          $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#4, S#0), _module.Node.next)): ref, 
          l#4, 
          S#0) } 
      LitInt(0) <= k#4
           && LitInt(0) <= l#4
           && _module.Node.Nexxxt($LS($LZ), $Heap, this, k#4, S#0) != null
           && $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#4, S#0), _module.Node.next)): ref
             != null
         ==> _module.Node.Nexxxt($LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#4, S#0), _module.Node.next)): ref, 
            l#4, 
            S#0)
           == _module.Node.Nexxxt($LS($LZ), $Heap, this, k#4 + 1 + l#4, S#0));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(344,5)
    // Begin Comprehension WF check
    havoc kl#0;
    if (true)
    {
        if (n#0 <= kl#0)
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
            ##k#11 := kl#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##k#11, TInt, $Heap);
            ##S#12 := S#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##S#12, TSet(Tclass._module.Node?()), $Heap);
            assert {:id "id801"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#12)
               ==> _module.Node.IsClosed($Heap, this, ##S#12) || Set#IsMember(##S#12, $Box(this));
            assert {:id "id802"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#12)
               ==> _module.Node.IsClosed($Heap, this, ##S#12) || Set#IsMember(##S#12, $Box(null));
            assert {:id "id803"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#12)
               ==> _module.Node.IsClosed($Heap, this, ##S#12)
                 || (forall n#14: ref :: 
                  { $Unbox(read($Heap, n#14, _module.Node.next)): ref } 
                  $Is(n#14, Tclass._module.Node?())
                     ==> 
                    Set#IsMember(##S#12, $Box(n#14))
                       && n#14 != null
                       && $Unbox(read($Heap, n#14, _module.Node.next)): ref != null
                     ==> Set#IsMember(##S#12, read($Heap, n#14, _module.Node.next)));
            assert {:id "id804"} {:subsumption 0} LitInt(0) <= ##k#11;
            assume _module.Node.Nexxxt#canCall($Heap, this, kl#0, S#0);
            newtype$check#5 := null;
        }
    }

    // End Comprehension WF check
    assume (forall kl#1: int :: 
      { _module.Node.Nexxxt($LS($LZ), $Heap, this, kl#1, S#0) } 
      n#0 <= kl#1 ==> _module.Node.Nexxxt#canCall($Heap, this, kl#1, S#0));
    assert {:id "id805"} {:subsumption 0} (forall kl#1: int :: 
      { _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, kl#1, S#0) } 
      (forall kl$ih#0#0: int :: 
            { _module.Node.Nexxxt($LS($LZ), $Heap, this, kl$ih#0#0, S#0) } 
            0 <= kl$ih#0#0 && kl$ih#0#0 < kl#1
               ==> 
              n#0 <= kl$ih#0#0
               ==> _module.Node.Nexxxt($LS($LZ), $Heap, this, kl$ih#0#0, S#0) == null)
           && true
         ==> 
        n#0 <= kl#1
         ==> _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, kl#1, S#0) == null);
    assume {:id "id806"} (forall kl#1: int :: 
      { _module.Node.Nexxxt($LS($LZ), $Heap, this, kl#1, S#0) } 
      n#0 <= kl#1 ==> _module.Node.Nexxxt($LS($LZ), $Heap, this, kl#1, S#0) == null);
}



procedure {:verboseName "Node.Lemma_NullImpliesNoCycles_part2 (well-formedness)"} CheckWellFormed$$_module.Node.Lemma__NullImpliesNoCycles__part2(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    n#0: int, 
    S#0: Set
       where $Is(S#0, TSet(Tclass._module.Node?()))
         && $IsAlloc(S#0, TSet(Tclass._module.Node?()), $Heap));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.Lemma_NullImpliesNoCycles_part2 (well-formedness)"} CheckWellFormed$$_module.Node.Lemma__NullImpliesNoCycles__part2(this: ref, n#0: int, S#0: Set)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##S#0: Set;
  var ##k#0: int;
  var ##S#1: Set;
  var newtype$check#0: ref;
  var k#0: int;
  var l#0: int;
  var ##k#1: int;
  var ##S#2: Set;
  var newtype$check#1: ref;
  var ##k#2: int;
  var ##S#3: Set;
  var newtype$check#2: ref;
  var ##k#3: int;
  var ##S#4: Set;
  var ##k#4: int;
  var ##S#5: Set;
  var ##k#5: int;
  var ##S#6: Set;


    // AddMethodImpl: Lemma_NullImpliesNoCycles_part2, CheckWellFormed$$_module.Node.Lemma__NullImpliesNoCycles__part2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
    ##S#0 := S#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##S#0, TSet(Tclass._module.Node?()), $Heap);
    assume _module.Node.IsClosed#canCall($Heap, this, S#0);
    assume {:id "id807"} _module.Node.IsClosed($Heap, this, S#0);
    assume {:id "id808"} LitInt(0) <= n#0;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
    ##k#0 := n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##k#0, TInt, $Heap);
    ##S#1 := S#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##S#1, TSet(Tclass._module.Node?()), $Heap);
    assert {:id "id809"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1)
       ==> _module.Node.IsClosed($Heap, this, ##S#1) || Set#IsMember(##S#1, $Box(this));
    assert {:id "id810"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1)
       ==> _module.Node.IsClosed($Heap, this, ##S#1) || Set#IsMember(##S#1, $Box(null));
    assert {:id "id811"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#1)
       ==> _module.Node.IsClosed($Heap, this, ##S#1)
         || (forall n#1: ref :: 
          { $Unbox(read($Heap, n#1, _module.Node.next)): ref } 
          $Is(n#1, Tclass._module.Node?())
             ==> 
            Set#IsMember(##S#1, $Box(n#1))
               && n#1 != null
               && $Unbox(read($Heap, n#1, _module.Node.next)): ref != null
             ==> Set#IsMember(##S#1, read($Heap, n#1, _module.Node.next)));
    assert {:id "id812"} {:subsumption 0} LitInt(0) <= ##k#0;
    assume _module.Node.IsClosed($Heap, this, ##S#1) && LitInt(0) <= ##k#0;
    assume _module.Node.Nexxxt#canCall($Heap, this, n#0, S#0);
    newtype$check#0 := null;
    assume {:id "id813"} _module.Node.Nexxxt($LS($LZ), $Heap, this, n#0, S#0) == null;
    havoc $Heap;
    assume old($Heap) == $Heap;
    havoc k#0;
    havoc l#0;
    assume true;
    if (*)
    {
        if (LitInt(0) <= k#0)
        {
        }

        assume {:id "id814"} LitInt(0) <= k#0 && k#0 < n#0;
        if (LitInt(0) <= l#0)
        {
        }

        assume {:id "id815"} LitInt(0) <= l#0 && l#0 < n#0;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
        ##k#1 := k#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##k#1, TInt, $Heap);
        ##S#2 := S#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##S#2, TSet(Tclass._module.Node?()), $Heap);
        assert {:id "id816"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#2)
           ==> _module.Node.IsClosed($Heap, this, ##S#2) || Set#IsMember(##S#2, $Box(this));
        assert {:id "id817"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#2)
           ==> _module.Node.IsClosed($Heap, this, ##S#2) || Set#IsMember(##S#2, $Box(null));
        assert {:id "id818"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#2)
           ==> _module.Node.IsClosed($Heap, this, ##S#2)
             || (forall n#2: ref :: 
              { $Unbox(read($Heap, n#2, _module.Node.next)): ref } 
              $Is(n#2, Tclass._module.Node?())
                 ==> 
                Set#IsMember(##S#2, $Box(n#2))
                   && n#2 != null
                   && $Unbox(read($Heap, n#2, _module.Node.next)): ref != null
                 ==> Set#IsMember(##S#2, read($Heap, n#2, _module.Node.next)));
        assert {:id "id819"} {:subsumption 0} LitInt(0) <= ##k#1;
        assume _module.Node.IsClosed($Heap, this, ##S#2) && LitInt(0) <= ##k#1;
        assume _module.Node.Nexxxt#canCall($Heap, this, k#0, S#0);
        newtype$check#1 := null;
        assume {:id "id820"} _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0) != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
        ##k#2 := k#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##k#2, TInt, $Heap);
        ##S#3 := S#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##S#3, TSet(Tclass._module.Node?()), $Heap);
        assert {:id "id821"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#3)
           ==> _module.Node.IsClosed($Heap, this, ##S#3) || Set#IsMember(##S#3, $Box(this));
        assert {:id "id822"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#3)
           ==> _module.Node.IsClosed($Heap, this, ##S#3) || Set#IsMember(##S#3, $Box(null));
        assert {:id "id823"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#3)
           ==> _module.Node.IsClosed($Heap, this, ##S#3)
             || (forall n#3: ref :: 
              { $Unbox(read($Heap, n#3, _module.Node.next)): ref } 
              $Is(n#3, Tclass._module.Node?())
                 ==> 
                Set#IsMember(##S#3, $Box(n#3))
                   && n#3 != null
                   && $Unbox(read($Heap, n#3, _module.Node.next)): ref != null
                 ==> Set#IsMember(##S#3, read($Heap, n#3, _module.Node.next)));
        assert {:id "id824"} {:subsumption 0} LitInt(0) <= ##k#2;
        assume _module.Node.IsClosed($Heap, this, ##S#3) && LitInt(0) <= ##k#2;
        assume _module.Node.Nexxxt#canCall($Heap, this, k#0, S#0);
        assert {:id "id825"} _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0) != null;
        newtype$check#2 := null;
        assume {:id "id826"} $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next)): ref
           != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
        ##k#3 := k#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##k#3, TInt, $Heap);
        ##S#4 := S#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##S#4, TSet(Tclass._module.Node?()), $Heap);
        assert {:id "id827"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#4)
           ==> _module.Node.IsClosed($Heap, this, ##S#4) || Set#IsMember(##S#4, $Box(this));
        assert {:id "id828"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#4)
           ==> _module.Node.IsClosed($Heap, this, ##S#4) || Set#IsMember(##S#4, $Box(null));
        assert {:id "id829"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#4)
           ==> _module.Node.IsClosed($Heap, this, ##S#4)
             || (forall n#4: ref :: 
              { $Unbox(read($Heap, n#4, _module.Node.next)): ref } 
              $Is(n#4, Tclass._module.Node?())
                 ==> 
                Set#IsMember(##S#4, $Box(n#4))
                   && n#4 != null
                   && $Unbox(read($Heap, n#4, _module.Node.next)): ref != null
                 ==> Set#IsMember(##S#4, read($Heap, n#4, _module.Node.next)));
        assert {:id "id830"} {:subsumption 0} LitInt(0) <= ##k#3;
        assume _module.Node.IsClosed($Heap, this, ##S#4) && LitInt(0) <= ##k#3;
        assume _module.Node.Nexxxt#canCall($Heap, this, k#0, S#0);
        assert {:id "id831"} _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0) != null;
        assert {:id "id832"} $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next)): ref
           != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next), 
          Tclass._module.Node?(), 
          $Heap);
        ##k#4 := l#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##k#4, TInt, $Heap);
        ##S#5 := S#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##S#5, TSet(Tclass._module.Node?()), $Heap);
        assert {:id "id833"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, 
            $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next)): ref, 
            ##S#5)
           ==> _module.Node.IsClosed($Heap, 
              $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next)): ref, 
              ##S#5)
             || Set#IsMember(##S#5, 
              read($Heap, 
                _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#0, S#0), 
                _module.Node.next));
        assert {:id "id834"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, 
            $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next)): ref, 
            ##S#5)
           ==> _module.Node.IsClosed($Heap, 
              $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next)): ref, 
              ##S#5)
             || Set#IsMember(##S#5, $Box(null));
        assert {:id "id835"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, 
            $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next)): ref, 
            ##S#5)
           ==> _module.Node.IsClosed($Heap, 
              $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next)): ref, 
              ##S#5)
             || (forall n#5: ref :: 
              { $Unbox(read($Heap, n#5, _module.Node.next)): ref } 
              $Is(n#5, Tclass._module.Node?())
                 ==> 
                Set#IsMember(##S#5, $Box(n#5))
                   && n#5 != null
                   && $Unbox(read($Heap, n#5, _module.Node.next)): ref != null
                 ==> Set#IsMember(##S#5, read($Heap, n#5, _module.Node.next)));
        assert {:id "id836"} {:subsumption 0} LitInt(0) <= ##k#4;
        assume _module.Node.IsClosed($Heap, 
            $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next)): ref, 
            ##S#5)
           && LitInt(0) <= ##k#4;
        assume _module.Node.Nexxxt#canCall($Heap, 
          $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next)): ref, 
          l#0, 
          S#0);
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
        ##k#5 := k#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##k#5, TInt, $Heap);
        ##S#6 := S#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##S#6, TSet(Tclass._module.Node?()), $Heap);
        assert {:id "id837"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#6)
           ==> _module.Node.IsClosed($Heap, this, ##S#6) || Set#IsMember(##S#6, $Box(this));
        assert {:id "id838"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#6)
           ==> _module.Node.IsClosed($Heap, this, ##S#6) || Set#IsMember(##S#6, $Box(null));
        assert {:id "id839"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#6)
           ==> _module.Node.IsClosed($Heap, this, ##S#6)
             || (forall n#6: ref :: 
              { $Unbox(read($Heap, n#6, _module.Node.next)): ref } 
              $Is(n#6, Tclass._module.Node?())
                 ==> 
                Set#IsMember(##S#6, $Box(n#6))
                   && n#6 != null
                   && $Unbox(read($Heap, n#6, _module.Node.next)): ref != null
                 ==> Set#IsMember(##S#6, read($Heap, n#6, _module.Node.next)));
        assert {:id "id840"} {:subsumption 0} LitInt(0) <= ##k#5;
        assume _module.Node.IsClosed($Heap, this, ##S#6) && LitInt(0) <= ##k#5;
        assume _module.Node.Nexxxt#canCall($Heap, this, k#0, S#0);
        assume {:id "id841"} _module.Node.Nexxxt($LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next)): ref, 
            l#0, 
            S#0)
           != _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0);
    }
    else
    {
        assume {:id "id842"} LitInt(0) <= k#0
             && k#0 < n#0
             && 
            LitInt(0) <= l#0
             && l#0 < n#0
             && _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0) != null
             && $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next)): ref
               != null
           ==> _module.Node.Nexxxt($LS($LZ), 
              $Heap, 
              $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0), _module.Node.next)): ref, 
              l#0, 
              S#0)
             != _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0, S#0);
    }

    assume {:id "id843"} (forall k#1: int, l#1: int :: 
      { _module.Node.Nexxxt($LS($LZ), 
          $Heap, 
          $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0), _module.Node.next)): ref, 
          l#1, 
          S#0) } 
      LitInt(0) <= k#1
           && k#1 < n#0
           && 
          LitInt(0) <= l#1
           && l#1 < n#0
           && _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0) != null
           && $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0), _module.Node.next)): ref
             != null
         ==> _module.Node.Nexxxt($LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0), _module.Node.next)): ref, 
            l#1, 
            S#0)
           != _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0));
}



procedure {:verboseName "Node.Lemma_NullImpliesNoCycles_part2 (call)"} Call$$_module.Node.Lemma__NullImpliesNoCycles__part2(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    n#0: int, 
    S#0: Set
       where $Is(S#0, TSet(Tclass._module.Node?()))
         && $IsAlloc(S#0, TSet(Tclass._module.Node?()), $Heap));
  // user-defined preconditions
  requires {:id "id844"} _module.Node.IsClosed#canCall($Heap, this, S#0)
     ==> _module.Node.IsClosed($Heap, this, S#0) || Set#IsMember(S#0, $Box(this));
  requires {:id "id845"} _module.Node.IsClosed#canCall($Heap, this, S#0)
     ==> _module.Node.IsClosed($Heap, this, S#0) || Set#IsMember(S#0, $Box(null));
  requires {:id "id846"} _module.Node.IsClosed#canCall($Heap, this, S#0)
     ==> _module.Node.IsClosed($Heap, this, S#0)
       || (forall n#7: ref :: 
        { $Unbox(read($Heap, n#7, _module.Node.next)): ref } 
        $Is(n#7, Tclass._module.Node?())
           ==> 
          Set#IsMember(S#0, $Box(n#7))
             && n#7 != null
             && $Unbox(read($Heap, n#7, _module.Node.next)): ref != null
           ==> Set#IsMember(S#0, read($Heap, n#7, _module.Node.next)));
  requires {:id "id847"} LitInt(0) <= n#0;
  requires {:id "id848"} _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, n#0, S#0) == null;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall k#1: int, l#1: int :: 
    { _module.Node.Nexxxt($LS($LZ), 
        $Heap, 
        $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0), _module.Node.next)): ref, 
        l#1, 
        S#0) } 
    LitInt(0) <= k#1 && k#1 < n#0
       ==> 
      LitInt(0) <= l#1 && l#1 < n#0
       ==> _module.Node.Nexxxt#canCall($Heap, this, k#1, S#0)
         && (_module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0) != null
           ==> _module.Node.Nexxxt#canCall($Heap, this, k#1, S#0)
             && ($Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0), _module.Node.next)): ref
                 != null
               ==> _module.Node.Nexxxt#canCall($Heap, this, k#1, S#0)
                 && _module.Node.Nexxxt#canCall($Heap, 
                  $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0), _module.Node.next)): ref, 
                  l#1, 
                  S#0)
                 && _module.Node.Nexxxt#canCall($Heap, this, k#1, S#0))));
  free ensures {:id "id849"} (forall k#1: int, l#1: int :: 
    { _module.Node.Nexxxt($LS($LZ), 
        $Heap, 
        $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0), _module.Node.next)): ref, 
        l#1, 
        S#0) } 
    LitInt(0) <= k#1
         && k#1 < n#0
         && 
        LitInt(0) <= l#1
         && l#1 < n#0
         && _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0) != null
         && $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0), _module.Node.next)): ref
           != null
       ==> _module.Node.Nexxxt($LS($LZ), 
          $Heap, 
          $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0), _module.Node.next)): ref, 
          l#1, 
          S#0)
         != _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Node.Lemma_NullImpliesNoCycles_part2 (correctness)"} Impl$$_module.Node.Lemma__NullImpliesNoCycles__part2(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    n#0: int, 
    S#0: Set
       where $Is(S#0, TSet(Tclass._module.Node?()))
         && $IsAlloc(S#0, TSet(Tclass._module.Node?()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id850"} _module.Node.IsClosed#canCall($Heap, this, S#0)
     && 
    _module.Node.IsClosed($Heap, this, S#0)
     && 
    Set#IsMember(S#0, $Box(this))
     && Set#IsMember(S#0, $Box(null))
     && (forall n#8: ref :: 
      { $Unbox(read($Heap, n#8, _module.Node.next)): ref } 
      $Is(n#8, Tclass._module.Node?())
         ==> 
        Set#IsMember(S#0, $Box(n#8))
           && n#8 != null
           && $Unbox(read($Heap, n#8, _module.Node.next)): ref != null
         ==> Set#IsMember(S#0, read($Heap, n#8, _module.Node.next)));
  requires {:id "id851"} LitInt(0) <= n#0;
  requires {:id "id852"} _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, n#0, S#0) == null;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall k#1: int, l#1: int :: 
    { _module.Node.Nexxxt($LS($LZ), 
        $Heap, 
        $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0), _module.Node.next)): ref, 
        l#1, 
        S#0) } 
    LitInt(0) <= k#1 && k#1 < n#0
       ==> 
      LitInt(0) <= l#1 && l#1 < n#0
       ==> _module.Node.Nexxxt#canCall($Heap, this, k#1, S#0)
         && (_module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0) != null
           ==> _module.Node.Nexxxt#canCall($Heap, this, k#1, S#0)
             && ($Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0), _module.Node.next)): ref
                 != null
               ==> _module.Node.Nexxxt#canCall($Heap, this, k#1, S#0)
                 && _module.Node.Nexxxt#canCall($Heap, 
                  $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#1, S#0), _module.Node.next)): ref, 
                  l#1, 
                  S#0)
                 && _module.Node.Nexxxt#canCall($Heap, this, k#1, S#0))));
  ensures {:id "id853"} (forall k#1: int, l#1: int :: 
    { _module.Node.Nexxxt($LS($LS($LZ)), 
        $Heap, 
        $Unbox(read($Heap, 
            _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#1, S#0), 
            _module.Node.next)): ref, 
        l#1, 
        S#0) } 
    LitInt(0) <= k#1
         && k#1 < n#0
         && 
        LitInt(0) <= l#1
         && l#1 < n#0
         && _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#1, S#0) != null
         && $Unbox(read($Heap, 
              _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#1, S#0), 
              _module.Node.next)): ref
           != null
       ==> _module.Node.Nexxxt($LS($LS($LZ)), 
          $Heap, 
          $Unbox(read($Heap, 
              _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#1, S#0), 
              _module.Node.next)): ref, 
          l#1, 
          S#0)
         != _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#1, S#0));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.Lemma_NullImpliesNoCycles_part2 (correctness)"} Impl$$_module.Node.Lemma__NullImpliesNoCycles__part2(this: ref, n#0: int, S#0: Set) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var kn#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var k#3: int;
  var l#3: int;
  var ##k#6: int;
  var ##S#7: Set;
  var newtype$check#3: ref;
  var ##k#7: int;
  var ##S#8: Set;
  var newtype$check#4: ref;
  var ##k#8: int;
  var ##S#9: Set;
  var ##k#9: int;
  var ##S#10: Set;
  var ##k#10: int;
  var ##S#11: Set;
  var $decr$loop#00: int;
  var ln#0_0: int;
  var $PreLoopHeap$loop#0_0: Heap;
  var $decr_init$loop#0_00: int;
  var $w$loop#0_0: bool;
  var k#0_0: int;
  var l#0_0: int;
  var ##k#0_0: int;
  var ##S#0_0: Set;
  var newtype$check#0_0: ref;
  var ##k#0_1: int;
  var ##S#0_1: Set;
  var newtype$check#0_1: ref;
  var ##k#0_2: int;
  var ##S#0_2: Set;
  var ##k#0_3: int;
  var ##S#0_3: Set;
  var ##k#0_4: int;
  var ##S#0_4: Set;
  var l#0_2: int;
  var ##k#0_5: int;
  var ##S#0_5: Set;
  var newtype$check#0_2: ref;
  var ##k#0_6: int;
  var ##S#0_6: Set;
  var newtype$check#0_3: ref;
  var ##k#0_7: int;
  var ##S#0_7: Set;
  var ##k#0_8: int;
  var ##S#0_8: Set;
  var ##k#0_9: int;
  var ##S#0_9: Set;
  var $decr$loop#0_00: int;
  var ##k#0_0_0: int;
  var ##S#0_0_0: Set;
  var newtype$check#0_0_0: ref;
  var ##k#0_0_1: int;
  var ##S#0_0_1: Set;
  var newtype$check#0_0_1: ref;
  var ##k#0_0_0_0: int;
  var ##S#0_0_0_0: Set;
  var newtype$check#0_0_0_0: ref;
  var x##0_0_0_0: int;
  var y##0_0_0_0: int;
  var S##0_0_0_0: Set;
  var ##k#0_0_0_1: int;
  var ##S#0_0_0_1: Set;
  var ##k#0_0_0_2: int;
  var ##S#0_0_0_2: Set;
  var ##k#0_0_0_3: int;
  var ##S#0_0_0_3: Set;
  var x##0_0_0_1: int;
  var y##0_0_0_1: int;
  var S##0_0_0_1: Set;
  var ##k#0_0_0_4: int;
  var ##S#0_0_0_4: Set;
  var ##k#0_0_0_5: int;
  var ##S#0_0_0_5: Set;
  var ##k#0_0_0_6: int;
  var ##S#0_0_0_6: Set;
  var ##k#0_0_0_7: int;
  var ##S#0_0_0_7: Set;
  var ##k#0_0_0_8: int;
  var ##S#0_0_0_8: Set;
  var ##k#0_0_0_9: int;
  var ##S#0_0_0_9: Set;
  var nn#0_0_0_0_0: int;
  var $PreLoopHeap$loop#0_0_0_0_0: Heap;
  var $decr_init$loop#0_0_0_0_00: int;
  var $w$loop#0_0_0_0_0: bool;
  var ##k#0_0_0_0_0: int;
  var ##S#0_0_0_0_0: Set;
  var ##k#0_0_0_0_1: int;
  var ##S#0_0_0_0_1: Set;
  var ##k#0_0_0_0_2: int;
  var ##S#0_0_0_0_2: Set;
  var $decr$loop#0_0_0_0_00: int;
  var ##k#0_0_0_0_0_0: int;
  var ##S#0_0_0_0_0_0: Set;
  var ##k#0_0_0_0_0_1: int;
  var ##S#0_0_0_0_0_1: Set;
  var ##k#0_0_0_0_0_2: int;
  var ##S#0_0_0_0_0_2: Set;
  var ##k#0_0_0_0_0_3: int;
  var ##S#0_0_0_0_0_3: Set;
  var ##k#0_0_0_0_0_4: int;
  var ##S#0_0_0_0_0_4: Set;
  var ##k#0_0_0_0_0_5: int;
  var ##S#0_0_0_0_0_5: Set;
  var ##k#0_0_0_0_0_6: int;
  var ##S#0_0_0_0_0_6: Set;
  var ##k#0_0_0_0_0_7: int;
  var ##S#0_0_0_0_0_7: Set;
  var ##k#0_0_0_0_0_8: int;
  var ##S#0_0_0_0_0_8: Set;
  var ##k#0_0_0_0_0_9: int;
  var ##S#0_0_0_0_0_9: Set;
  var ##k#0_0_0_0_0_10: int;
  var ##S#0_0_0_0_0_10: Set;
  var ##k#0_0_0_0_0_11: int;
  var ##S#0_0_0_0_0_11: Set;
  var ##k#0_0_0_0_0_12: int;
  var ##S#0_0_0_0_0_12: Set;
  var x##0_0_0_0_0_0: int;
  var y##0_0_0_0_0_0: int;
  var S##0_0_0_0_0_0: Set;
  var ##k#0_0_0_0_0_13: int;
  var ##S#0_0_0_0_0_13: Set;
  var ##k#0_0_0_0_0_14: int;
  var ##S#0_0_0_0_0_14: Set;
  var ##k#0_0_0_0_0_15: int;
  var ##S#0_0_0_0_0_15: Set;
  var x##0_0_0_0_0: int;
  var y##0_0_0_0_0: int;
  var S##0_0_0_0_0: Set;
  var ##k#0_0_0_0_3: int;
  var ##S#0_0_0_0_3: Set;
  var ##k#0_0_0_0_4: int;
  var ##S#0_0_0_0_4: Set;
  var ##k#0_0_0_0_5: int;
  var ##S#0_0_0_0_5: Set;
  var j#0_0_0_0_0: int;
  var ##k#0_0_0_0_6: int;
  var ##S#0_0_0_0_6: Set;
  var newtype$check#0_0_0_0_0: ref;
  var ##k#0_0_0_10: int;
  var ##S#0_0_0_10: Set;
  var ##k#0_0_0_11: int;
  var ##S#0_0_0_11: Set;
  var ##k#0_0_0_12: int;
  var ##S#0_0_0_12: Set;

    // AddMethodImpl: Lemma_NullImpliesNoCycles_part2, Impl$$_module.Node.Lemma__NullImpliesNoCycles__part2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#n0#0: int, $ih#S0#0: Set :: 
      { _module.Node.Nexxxt($LS($LZ), $Heap, this, $ih#n0#0, $ih#S0#0) } 
      $Is($ih#S0#0, TSet(Tclass._module.Node?()))
           && 
          _module.Node.IsClosed($initHeapForallStmt#0, this, $ih#S0#0)
           && LitInt(0) <= $ih#n0#0
           && _module.Node.Nexxxt($LS($LZ), $initHeapForallStmt#0, this, $ih#n0#0, $ih#S0#0)
             == null
           && ((0 <= $ih#n0#0 && $ih#n0#0 < n#0)
             || ($ih#n0#0 == n#0 && Set#Subset($ih#S0#0, S#0) && !Set#Subset(S#0, $ih#S0#0)))
         ==> (forall k#2: int, l#2: int :: 
          { _module.Node.Nexxxt($LS($LZ), 
              $Heap, 
              $Unbox(read($Heap, 
                  _module.Node.Nexxxt($LS($LZ), $Heap, this, k#2, $ih#S0#0), 
                  _module.Node.next)): ref, 
              l#2, 
              $ih#S0#0) } 
          LitInt(0) <= k#2
               && k#2 < $ih#n0#0
               && 
              LitInt(0) <= l#2
               && l#2 < $ih#n0#0
               && _module.Node.Nexxxt($LS($LZ), $Heap, this, k#2, $ih#S0#0) != null
               && $Unbox(read($Heap, 
                    _module.Node.Nexxxt($LS($LZ), $Heap, this, k#2, $ih#S0#0), 
                    _module.Node.next)): ref
                 != null
             ==> _module.Node.Nexxxt($LS($LZ), 
                $Heap, 
                $Unbox(read($Heap, 
                    _module.Node.Nexxxt($LS($LZ), $Heap, this, k#2, $ih#S0#0), 
                    _module.Node.next)): ref, 
                l#2, 
                $ih#S0#0)
               != _module.Node.Nexxxt($LS($LZ), $Heap, this, k#2, $ih#S0#0)));
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(351,12)
    assume true;
    assume true;
    kn#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(352,5)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := n#0 - kn#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id856"} $w$loop#0 ==> LitInt(0) <= kn#0;
      invariant {:id "id857"} $w$loop#0 ==> kn#0 <= n#0;
      free invariant $w$loop#0
         ==> (forall k#4: int, l#4: int :: 
          { _module.Node.Nexxxt($LS($LZ), 
              $Heap, 
              $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#4, S#0), _module.Node.next)): ref, 
              l#4, 
              S#0) } 
          LitInt(0) <= k#4 && k#4 < kn#0
             ==> 
            LitInt(0) <= l#4 && l#4 < n#0
             ==> _module.Node.Nexxxt#canCall($Heap, this, k#4, S#0)
               && (_module.Node.Nexxxt($LS($LZ), $Heap, this, k#4, S#0) != null
                 ==> _module.Node.Nexxxt#canCall($Heap, this, k#4, S#0)
                   && ($Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#4, S#0), _module.Node.next)): ref
                       != null
                     ==> _module.Node.Nexxxt#canCall($Heap, this, k#4, S#0)
                       && _module.Node.Nexxxt#canCall($Heap, 
                        $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#4, S#0), _module.Node.next)): ref, 
                        l#4, 
                        S#0)
                       && _module.Node.Nexxxt#canCall($Heap, this, k#4, S#0))));
      invariant {:id "id882"} $w$loop#0
         ==> (forall k#4: int, l#4: int :: 
          { _module.Node.Nexxxt($LS($LS($LZ)), 
              $Heap, 
              $Unbox(read($Heap, 
                  _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#4, S#0), 
                  _module.Node.next)): ref, 
              l#4, 
              S#0) } 
          LitInt(0) <= k#4
               && k#4 < kn#0
               && 
              LitInt(0) <= l#4
               && l#4 < n#0
               && _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#4, S#0) != null
               && $Unbox(read($Heap, 
                    _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#4, S#0), 
                    _module.Node.next)): ref
                 != null
             ==> _module.Node.Nexxxt($LS($LS($LZ)), 
                $Heap, 
                $Unbox(read($Heap, 
                    _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#4, S#0), 
                    _module.Node.next)): ref, 
                l#4, 
                S#0)
               != _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#4, S#0));
      free invariant {:id "id883"} $w$loop#0
         ==> (forall k#4: int, l#4: int :: 
          { _module.Node.Nexxxt($LS($LZ), 
              $Heap, 
              $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#4, S#0), _module.Node.next)): ref, 
              l#4, 
              S#0) } 
          LitInt(0) <= k#4
               && k#4 < kn#0
               && 
              LitInt(0) <= l#4
               && l#4 < n#0
               && _module.Node.Nexxxt($LS($LZ), $Heap, this, k#4, S#0) != null
               && $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#4, S#0), _module.Node.next)): ref
                 != null
             ==> _module.Node.Nexxxt($LS($LZ), 
                $Heap, 
                $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#4, S#0), _module.Node.next)): ref, 
                l#4, 
                S#0)
               != _module.Node.Nexxxt($LS($LZ), $Heap, this, k#4, S#0));
      free invariant $PreLoopHeap$loop#0 == $Heap;
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant n#0 - kn#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            if (LitInt(0) <= kn#0)
            {
            }

            assume true;
            assume {:id "id855"} LitInt(0) <= kn#0 && kn#0 <= n#0;
            // Begin Comprehension WF check
            havoc k#3;
            havoc l#3;
            if (true)
            {
                if (LitInt(0) <= k#3)
                {
                }

                if (LitInt(0) <= k#3 && k#3 < kn#0)
                {
                    if (LitInt(0) <= l#3)
                    {
                    }
                }

                if (LitInt(0) <= k#3 && k#3 < kn#0 && LitInt(0) <= l#3 && l#3 < n#0)
                {
                    // assume allocatedness for receiver argument to function
                    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                    ##k#6 := k#3;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##k#6, TInt, $Heap);
                    ##S#7 := S#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##S#7, TSet(Tclass._module.Node?()), $Heap);
                    assert {:id "id858"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#7)
                       ==> _module.Node.IsClosed($Heap, this, ##S#7) || Set#IsMember(##S#7, $Box(this));
                    assert {:id "id859"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#7)
                       ==> _module.Node.IsClosed($Heap, this, ##S#7) || Set#IsMember(##S#7, $Box(null));
                    assert {:id "id860"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#7)
                       ==> _module.Node.IsClosed($Heap, this, ##S#7)
                         || (forall n#9: ref :: 
                          { $Unbox(read($Heap, n#9, _module.Node.next)): ref } 
                          $Is(n#9, Tclass._module.Node?())
                             ==> 
                            Set#IsMember(##S#7, $Box(n#9))
                               && n#9 != null
                               && $Unbox(read($Heap, n#9, _module.Node.next)): ref != null
                             ==> Set#IsMember(##S#7, read($Heap, n#9, _module.Node.next)));
                    assert {:id "id861"} {:subsumption 0} LitInt(0) <= ##k#6;
                    assume _module.Node.Nexxxt#canCall($Heap, this, k#3, S#0);
                    newtype$check#3 := null;
                }

                if (LitInt(0) <= k#3
                   && k#3 < kn#0
                   && 
                  LitInt(0) <= l#3
                   && l#3 < n#0
                   && _module.Node.Nexxxt($LS($LZ), $Heap, this, k#3, S#0) != null)
                {
                    // assume allocatedness for receiver argument to function
                    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                    ##k#7 := k#3;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##k#7, TInt, $Heap);
                    ##S#8 := S#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##S#8, TSet(Tclass._module.Node?()), $Heap);
                    assert {:id "id862"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#8)
                       ==> _module.Node.IsClosed($Heap, this, ##S#8) || Set#IsMember(##S#8, $Box(this));
                    assert {:id "id863"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#8)
                       ==> _module.Node.IsClosed($Heap, this, ##S#8) || Set#IsMember(##S#8, $Box(null));
                    assert {:id "id864"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#8)
                       ==> _module.Node.IsClosed($Heap, this, ##S#8)
                         || (forall n#10: ref :: 
                          { $Unbox(read($Heap, n#10, _module.Node.next)): ref } 
                          $Is(n#10, Tclass._module.Node?())
                             ==> 
                            Set#IsMember(##S#8, $Box(n#10))
                               && n#10 != null
                               && $Unbox(read($Heap, n#10, _module.Node.next)): ref != null
                             ==> Set#IsMember(##S#8, read($Heap, n#10, _module.Node.next)));
                    assert {:id "id865"} {:subsumption 0} LitInt(0) <= ##k#7;
                    assume _module.Node.Nexxxt#canCall($Heap, this, k#3, S#0);
                    assert {:id "id866"} {:subsumption 0} _module.Node.Nexxxt($LS($LZ), $Heap, this, k#3, S#0) != null;
                    newtype$check#4 := null;
                }

                if (LitInt(0) <= k#3
                   && k#3 < kn#0
                   && 
                  LitInt(0) <= l#3
                   && l#3 < n#0
                   && _module.Node.Nexxxt($LS($LZ), $Heap, this, k#3, S#0) != null
                   && $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#3, S#0), _module.Node.next)): ref
                     != null)
                {
                    // assume allocatedness for receiver argument to function
                    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                    ##k#8 := k#3;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##k#8, TInt, $Heap);
                    ##S#9 := S#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##S#9, TSet(Tclass._module.Node?()), $Heap);
                    assert {:id "id867"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#9)
                       ==> _module.Node.IsClosed($Heap, this, ##S#9) || Set#IsMember(##S#9, $Box(this));
                    assert {:id "id868"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#9)
                       ==> _module.Node.IsClosed($Heap, this, ##S#9) || Set#IsMember(##S#9, $Box(null));
                    assert {:id "id869"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#9)
                       ==> _module.Node.IsClosed($Heap, this, ##S#9)
                         || (forall n#11: ref :: 
                          { $Unbox(read($Heap, n#11, _module.Node.next)): ref } 
                          $Is(n#11, Tclass._module.Node?())
                             ==> 
                            Set#IsMember(##S#9, $Box(n#11))
                               && n#11 != null
                               && $Unbox(read($Heap, n#11, _module.Node.next)): ref != null
                             ==> Set#IsMember(##S#9, read($Heap, n#11, _module.Node.next)));
                    assert {:id "id870"} {:subsumption 0} LitInt(0) <= ##k#8;
                    assume _module.Node.Nexxxt#canCall($Heap, this, k#3, S#0);
                    assert {:id "id871"} {:subsumption 0} _module.Node.Nexxxt($LS($LZ), $Heap, this, k#3, S#0) != null;
                    assert {:id "id872"} {:subsumption 0} $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#3, S#0), _module.Node.next)): ref
                       != null;
                    // assume allocatedness for receiver argument to function
                    assume $IsAllocBox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#3, S#0), _module.Node.next), 
                      Tclass._module.Node?(), 
                      $Heap);
                    ##k#9 := l#3;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##k#9, TInt, $Heap);
                    ##S#10 := S#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##S#10, TSet(Tclass._module.Node?()), $Heap);
                    assert {:id "id873"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, 
                        $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#3, S#0), _module.Node.next)): ref, 
                        ##S#10)
                       ==> _module.Node.IsClosed($Heap, 
                          $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#3, S#0), _module.Node.next)): ref, 
                          ##S#10)
                         || Set#IsMember(##S#10, 
                          read($Heap, 
                            _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#3, S#0), 
                            _module.Node.next));
                    assert {:id "id874"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, 
                        $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#3, S#0), _module.Node.next)): ref, 
                        ##S#10)
                       ==> _module.Node.IsClosed($Heap, 
                          $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#3, S#0), _module.Node.next)): ref, 
                          ##S#10)
                         || Set#IsMember(##S#10, $Box(null));
                    assert {:id "id875"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, 
                        $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#3, S#0), _module.Node.next)): ref, 
                        ##S#10)
                       ==> _module.Node.IsClosed($Heap, 
                          $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#3, S#0), _module.Node.next)): ref, 
                          ##S#10)
                         || (forall n#12: ref :: 
                          { $Unbox(read($Heap, n#12, _module.Node.next)): ref } 
                          $Is(n#12, Tclass._module.Node?())
                             ==> 
                            Set#IsMember(##S#10, $Box(n#12))
                               && n#12 != null
                               && $Unbox(read($Heap, n#12, _module.Node.next)): ref != null
                             ==> Set#IsMember(##S#10, read($Heap, n#12, _module.Node.next)));
                    assert {:id "id876"} {:subsumption 0} LitInt(0) <= ##k#9;
                    assume _module.Node.Nexxxt#canCall($Heap, 
                      $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#3, S#0), _module.Node.next)): ref, 
                      l#3, 
                      S#0);
                    // assume allocatedness for receiver argument to function
                    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                    ##k#10 := k#3;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##k#10, TInt, $Heap);
                    ##S#11 := S#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##S#11, TSet(Tclass._module.Node?()), $Heap);
                    assert {:id "id877"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#11)
                       ==> _module.Node.IsClosed($Heap, this, ##S#11) || Set#IsMember(##S#11, $Box(this));
                    assert {:id "id878"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#11)
                       ==> _module.Node.IsClosed($Heap, this, ##S#11) || Set#IsMember(##S#11, $Box(null));
                    assert {:id "id879"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#11)
                       ==> _module.Node.IsClosed($Heap, this, ##S#11)
                         || (forall n#13: ref :: 
                          { $Unbox(read($Heap, n#13, _module.Node.next)): ref } 
                          $Is(n#13, Tclass._module.Node?())
                             ==> 
                            Set#IsMember(##S#11, $Box(n#13))
                               && n#13 != null
                               && $Unbox(read($Heap, n#13, _module.Node.next)): ref != null
                             ==> Set#IsMember(##S#11, read($Heap, n#13, _module.Node.next)));
                    assert {:id "id880"} {:subsumption 0} LitInt(0) <= ##k#10;
                    assume _module.Node.Nexxxt#canCall($Heap, this, k#3, S#0);
                }
            }

            // End Comprehension WF check
            assume (forall k#4: int, l#4: int :: 
              { _module.Node.Nexxxt($LS($LZ), 
                  $Heap, 
                  $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#4, S#0), _module.Node.next)): ref, 
                  l#4, 
                  S#0) } 
              LitInt(0) <= k#4 && k#4 < kn#0
                 ==> 
                LitInt(0) <= l#4 && l#4 < n#0
                 ==> _module.Node.Nexxxt#canCall($Heap, this, k#4, S#0)
                   && (_module.Node.Nexxxt($LS($LZ), $Heap, this, k#4, S#0) != null
                     ==> _module.Node.Nexxxt#canCall($Heap, this, k#4, S#0)
                       && ($Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#4, S#0), _module.Node.next)): ref
                           != null
                         ==> _module.Node.Nexxxt#canCall($Heap, this, k#4, S#0)
                           && _module.Node.Nexxxt#canCall($Heap, 
                            $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#4, S#0), _module.Node.next)): ref, 
                            l#4, 
                            S#0)
                           && _module.Node.Nexxxt#canCall($Heap, this, k#4, S#0))));
            assume {:id "id881"} (forall k#4: int, l#4: int :: 
              { _module.Node.Nexxxt($LS($LZ), 
                  $Heap, 
                  $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#4, S#0), _module.Node.next)): ref, 
                  l#4, 
                  S#0) } 
              LitInt(0) <= k#4
                   && k#4 < kn#0
                   && 
                  LitInt(0) <= l#4
                   && l#4 < n#0
                   && _module.Node.Nexxxt($LS($LZ), $Heap, this, k#4, S#0) != null
                   && $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#4, S#0), _module.Node.next)): ref
                     != null
                 ==> _module.Node.Nexxxt($LS($LZ), 
                    $Heap, 
                    $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#4, S#0), _module.Node.next)): ref, 
                    l#4, 
                    S#0)
                   != _module.Node.Nexxxt($LS($LZ), $Heap, this, k#4, S#0));
            assume true;
            assume false;
        }

        assume true;
        if (n#0 <= kn#0)
        {
            break;
        }

        $decr$loop#00 := n#0 - kn#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(356,14)
        assume true;
        assume true;
        ln#0_0 := LitInt(0);
        // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(357,7)
        // Assume Fuel Constant
        $PreLoopHeap$loop#0_0 := $Heap;
        $decr_init$loop#0_00 := n#0 - ln#0_0;
        havoc $w$loop#0_0;
        while (true)
          free invariant true;
          invariant {:id "id886"} $w$loop#0_0 ==> LitInt(0) <= ln#0_0;
          invariant {:id "id887"} $w$loop#0_0 ==> ln#0_0 <= n#0;
          free invariant $w$loop#0_0
             ==> (forall k#0_1: int, l#0_1: int :: 
              { _module.Node.Nexxxt($LS($LZ), 
                  $Heap, 
                  $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_1, S#0), _module.Node.next)): ref, 
                  l#0_1, 
                  S#0) } 
              LitInt(0) <= k#0_1 && k#0_1 < kn#0
                 ==> 
                LitInt(0) <= l#0_1 && l#0_1 < n#0
                 ==> _module.Node.Nexxxt#canCall($Heap, this, k#0_1, S#0)
                   && (_module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_1, S#0) != null
                     ==> _module.Node.Nexxxt#canCall($Heap, this, k#0_1, S#0)
                       && ($Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_1, S#0), _module.Node.next)): ref
                           != null
                         ==> _module.Node.Nexxxt#canCall($Heap, this, k#0_1, S#0)
                           && _module.Node.Nexxxt#canCall($Heap, 
                            $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_1, S#0), _module.Node.next)): ref, 
                            l#0_1, 
                            S#0)
                           && _module.Node.Nexxxt#canCall($Heap, this, k#0_1, S#0))));
          invariant {:id "id912"} $w$loop#0_0
             ==> (forall k#0_1: int, l#0_1: int :: 
              { _module.Node.Nexxxt($LS($LS($LZ)), 
                  $Heap, 
                  $Unbox(read($Heap, 
                      _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#0_1, S#0), 
                      _module.Node.next)): ref, 
                  l#0_1, 
                  S#0) } 
              LitInt(0) <= k#0_1
                   && k#0_1 < kn#0
                   && 
                  LitInt(0) <= l#0_1
                   && l#0_1 < n#0
                   && _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#0_1, S#0) != null
                   && $Unbox(read($Heap, 
                        _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#0_1, S#0), 
                        _module.Node.next)): ref
                     != null
                 ==> _module.Node.Nexxxt($LS($LS($LZ)), 
                    $Heap, 
                    $Unbox(read($Heap, 
                        _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#0_1, S#0), 
                        _module.Node.next)): ref, 
                    l#0_1, 
                    S#0)
                   != _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#0_1, S#0));
          free invariant {:id "id913"} $w$loop#0_0
             ==> (forall k#0_1: int, l#0_1: int :: 
              { _module.Node.Nexxxt($LS($LZ), 
                  $Heap, 
                  $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_1, S#0), _module.Node.next)): ref, 
                  l#0_1, 
                  S#0) } 
              LitInt(0) <= k#0_1
                   && k#0_1 < kn#0
                   && 
                  LitInt(0) <= l#0_1
                   && l#0_1 < n#0
                   && _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_1, S#0) != null
                   && $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_1, S#0), _module.Node.next)): ref
                     != null
                 ==> _module.Node.Nexxxt($LS($LZ), 
                    $Heap, 
                    $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_1, S#0), _module.Node.next)): ref, 
                    l#0_1, 
                    S#0)
                   != _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_1, S#0));
          free invariant $w$loop#0_0
             ==> (forall l#0_3: int :: 
              { _module.Node.Nexxxt($LS($LZ), 
                  $Heap, 
                  $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), _module.Node.next)): ref, 
                  l#0_3, 
                  S#0) } 
              LitInt(0) <= l#0_3 && l#0_3 < ln#0_0
                 ==> _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0)
                   && (_module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0) != null
                     ==> _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0)
                       && ($Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), _module.Node.next)): ref
                           != null
                         ==> _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0)
                           && _module.Node.Nexxxt#canCall($Heap, 
                            $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), _module.Node.next)): ref, 
                            l#0_3, 
                            S#0)
                           && _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0))));
          invariant {:id "id938"} $w$loop#0_0
             ==> (forall l#0_3: int :: 
              { _module.Node.Nexxxt($LS($LS($LZ)), 
                  $Heap, 
                  $Unbox(read($Heap, 
                      _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, kn#0, S#0), 
                      _module.Node.next)): ref, 
                  l#0_3, 
                  S#0) } 
              LitInt(0) <= l#0_3
                   && l#0_3 < ln#0_0
                   && _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, kn#0, S#0) != null
                   && $Unbox(read($Heap, 
                        _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, kn#0, S#0), 
                        _module.Node.next)): ref
                     != null
                 ==> _module.Node.Nexxxt($LS($LS($LZ)), 
                    $Heap, 
                    $Unbox(read($Heap, 
                        _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, kn#0, S#0), 
                        _module.Node.next)): ref, 
                    l#0_3, 
                    S#0)
                   != _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, kn#0, S#0));
          free invariant {:id "id939"} $w$loop#0_0
             ==> (forall l#0_3: int :: 
              { _module.Node.Nexxxt($LS($LZ), 
                  $Heap, 
                  $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), _module.Node.next)): ref, 
                  l#0_3, 
                  S#0) } 
              LitInt(0) <= l#0_3
                   && l#0_3 < ln#0_0
                   && _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0) != null
                   && $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), _module.Node.next)): ref
                     != null
                 ==> _module.Node.Nexxxt($LS($LZ), 
                    $Heap, 
                    $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), _module.Node.next)): ref, 
                    l#0_3, 
                    S#0)
                   != _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0));
          free invariant $PreLoopHeap$loop#0_0 == $Heap;
          free invariant (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null && $Unbox(read($PreLoopHeap$loop#0_0, $o, alloc)): bool
               ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0_0, $o, $f)
                 || $_ModifiesFrame[$o, $f]);
          free invariant n#0 - ln#0_0 <= $decr_init$loop#0_00;
        {
            if (!$w$loop#0_0)
            {
                if (LitInt(0) <= ln#0_0)
                {
                }

                assume true;
                assume {:id "id885"} LitInt(0) <= ln#0_0 && ln#0_0 <= n#0;
                // Begin Comprehension WF check
                havoc k#0_0;
                havoc l#0_0;
                if (true)
                {
                    if (LitInt(0) <= k#0_0)
                    {
                    }

                    if (LitInt(0) <= k#0_0 && k#0_0 < kn#0)
                    {
                        if (LitInt(0) <= l#0_0)
                        {
                        }
                    }

                    if (LitInt(0) <= k#0_0 && k#0_0 < kn#0 && LitInt(0) <= l#0_0 && l#0_0 < n#0)
                    {
                        // assume allocatedness for receiver argument to function
                        assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                        ##k#0_0 := k#0_0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##k#0_0, TInt, $Heap);
                        ##S#0_0 := S#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##S#0_0, TSet(Tclass._module.Node?()), $Heap);
                        assert {:id "id888"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0)
                           ==> _module.Node.IsClosed($Heap, this, ##S#0_0) || Set#IsMember(##S#0_0, $Box(this));
                        assert {:id "id889"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0)
                           ==> _module.Node.IsClosed($Heap, this, ##S#0_0) || Set#IsMember(##S#0_0, $Box(null));
                        assert {:id "id890"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0)
                           ==> _module.Node.IsClosed($Heap, this, ##S#0_0)
                             || (forall n#0_0: ref :: 
                              { $Unbox(read($Heap, n#0_0, _module.Node.next)): ref } 
                              $Is(n#0_0, Tclass._module.Node?())
                                 ==> 
                                Set#IsMember(##S#0_0, $Box(n#0_0))
                                   && n#0_0 != null
                                   && $Unbox(read($Heap, n#0_0, _module.Node.next)): ref != null
                                 ==> Set#IsMember(##S#0_0, read($Heap, n#0_0, _module.Node.next)));
                        assert {:id "id891"} {:subsumption 0} LitInt(0) <= ##k#0_0;
                        assume _module.Node.Nexxxt#canCall($Heap, this, k#0_0, S#0);
                        newtype$check#0_0 := null;
                    }

                    if (LitInt(0) <= k#0_0
                       && k#0_0 < kn#0
                       && 
                      LitInt(0) <= l#0_0
                       && l#0_0 < n#0
                       && _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_0, S#0) != null)
                    {
                        // assume allocatedness for receiver argument to function
                        assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                        ##k#0_1 := k#0_0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##k#0_1, TInt, $Heap);
                        ##S#0_1 := S#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##S#0_1, TSet(Tclass._module.Node?()), $Heap);
                        assert {:id "id892"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_1)
                           ==> _module.Node.IsClosed($Heap, this, ##S#0_1) || Set#IsMember(##S#0_1, $Box(this));
                        assert {:id "id893"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_1)
                           ==> _module.Node.IsClosed($Heap, this, ##S#0_1) || Set#IsMember(##S#0_1, $Box(null));
                        assert {:id "id894"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_1)
                           ==> _module.Node.IsClosed($Heap, this, ##S#0_1)
                             || (forall n#0_1: ref :: 
                              { $Unbox(read($Heap, n#0_1, _module.Node.next)): ref } 
                              $Is(n#0_1, Tclass._module.Node?())
                                 ==> 
                                Set#IsMember(##S#0_1, $Box(n#0_1))
                                   && n#0_1 != null
                                   && $Unbox(read($Heap, n#0_1, _module.Node.next)): ref != null
                                 ==> Set#IsMember(##S#0_1, read($Heap, n#0_1, _module.Node.next)));
                        assert {:id "id895"} {:subsumption 0} LitInt(0) <= ##k#0_1;
                        assume _module.Node.Nexxxt#canCall($Heap, this, k#0_0, S#0);
                        assert {:id "id896"} {:subsumption 0} _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_0, S#0) != null;
                        newtype$check#0_1 := null;
                    }

                    if (LitInt(0) <= k#0_0
                       && k#0_0 < kn#0
                       && 
                      LitInt(0) <= l#0_0
                       && l#0_0 < n#0
                       && _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_0, S#0) != null
                       && $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_0, S#0), _module.Node.next)): ref
                         != null)
                    {
                        // assume allocatedness for receiver argument to function
                        assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                        ##k#0_2 := k#0_0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##k#0_2, TInt, $Heap);
                        ##S#0_2 := S#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##S#0_2, TSet(Tclass._module.Node?()), $Heap);
                        assert {:id "id897"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_2)
                           ==> _module.Node.IsClosed($Heap, this, ##S#0_2) || Set#IsMember(##S#0_2, $Box(this));
                        assert {:id "id898"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_2)
                           ==> _module.Node.IsClosed($Heap, this, ##S#0_2) || Set#IsMember(##S#0_2, $Box(null));
                        assert {:id "id899"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_2)
                           ==> _module.Node.IsClosed($Heap, this, ##S#0_2)
                             || (forall n#0_2: ref :: 
                              { $Unbox(read($Heap, n#0_2, _module.Node.next)): ref } 
                              $Is(n#0_2, Tclass._module.Node?())
                                 ==> 
                                Set#IsMember(##S#0_2, $Box(n#0_2))
                                   && n#0_2 != null
                                   && $Unbox(read($Heap, n#0_2, _module.Node.next)): ref != null
                                 ==> Set#IsMember(##S#0_2, read($Heap, n#0_2, _module.Node.next)));
                        assert {:id "id900"} {:subsumption 0} LitInt(0) <= ##k#0_2;
                        assume _module.Node.Nexxxt#canCall($Heap, this, k#0_0, S#0);
                        assert {:id "id901"} {:subsumption 0} _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_0, S#0) != null;
                        assert {:id "id902"} {:subsumption 0} $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_0, S#0), _module.Node.next)): ref
                           != null;
                        // assume allocatedness for receiver argument to function
                        assume $IsAllocBox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_0, S#0), _module.Node.next), 
                          Tclass._module.Node?(), 
                          $Heap);
                        ##k#0_3 := l#0_0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##k#0_3, TInt, $Heap);
                        ##S#0_3 := S#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##S#0_3, TSet(Tclass._module.Node?()), $Heap);
                        assert {:id "id903"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, 
                            $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_0, S#0), _module.Node.next)): ref, 
                            ##S#0_3)
                           ==> _module.Node.IsClosed($Heap, 
                              $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_0, S#0), _module.Node.next)): ref, 
                              ##S#0_3)
                             || Set#IsMember(##S#0_3, 
                              read($Heap, 
                                _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, k#0_0, S#0), 
                                _module.Node.next));
                        assert {:id "id904"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, 
                            $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_0, S#0), _module.Node.next)): ref, 
                            ##S#0_3)
                           ==> _module.Node.IsClosed($Heap, 
                              $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_0, S#0), _module.Node.next)): ref, 
                              ##S#0_3)
                             || Set#IsMember(##S#0_3, $Box(null));
                        assert {:id "id905"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, 
                            $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_0, S#0), _module.Node.next)): ref, 
                            ##S#0_3)
                           ==> _module.Node.IsClosed($Heap, 
                              $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_0, S#0), _module.Node.next)): ref, 
                              ##S#0_3)
                             || (forall n#0_3: ref :: 
                              { $Unbox(read($Heap, n#0_3, _module.Node.next)): ref } 
                              $Is(n#0_3, Tclass._module.Node?())
                                 ==> 
                                Set#IsMember(##S#0_3, $Box(n#0_3))
                                   && n#0_3 != null
                                   && $Unbox(read($Heap, n#0_3, _module.Node.next)): ref != null
                                 ==> Set#IsMember(##S#0_3, read($Heap, n#0_3, _module.Node.next)));
                        assert {:id "id906"} {:subsumption 0} LitInt(0) <= ##k#0_3;
                        assume _module.Node.Nexxxt#canCall($Heap, 
                          $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_0, S#0), _module.Node.next)): ref, 
                          l#0_0, 
                          S#0);
                        // assume allocatedness for receiver argument to function
                        assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                        ##k#0_4 := k#0_0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##k#0_4, TInt, $Heap);
                        ##S#0_4 := S#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##S#0_4, TSet(Tclass._module.Node?()), $Heap);
                        assert {:id "id907"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_4)
                           ==> _module.Node.IsClosed($Heap, this, ##S#0_4) || Set#IsMember(##S#0_4, $Box(this));
                        assert {:id "id908"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_4)
                           ==> _module.Node.IsClosed($Heap, this, ##S#0_4) || Set#IsMember(##S#0_4, $Box(null));
                        assert {:id "id909"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_4)
                           ==> _module.Node.IsClosed($Heap, this, ##S#0_4)
                             || (forall n#0_4: ref :: 
                              { $Unbox(read($Heap, n#0_4, _module.Node.next)): ref } 
                              $Is(n#0_4, Tclass._module.Node?())
                                 ==> 
                                Set#IsMember(##S#0_4, $Box(n#0_4))
                                   && n#0_4 != null
                                   && $Unbox(read($Heap, n#0_4, _module.Node.next)): ref != null
                                 ==> Set#IsMember(##S#0_4, read($Heap, n#0_4, _module.Node.next)));
                        assert {:id "id910"} {:subsumption 0} LitInt(0) <= ##k#0_4;
                        assume _module.Node.Nexxxt#canCall($Heap, this, k#0_0, S#0);
                    }
                }

                // End Comprehension WF check
                assume (forall k#0_1: int, l#0_1: int :: 
                  { _module.Node.Nexxxt($LS($LZ), 
                      $Heap, 
                      $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_1, S#0), _module.Node.next)): ref, 
                      l#0_1, 
                      S#0) } 
                  LitInt(0) <= k#0_1 && k#0_1 < kn#0
                     ==> 
                    LitInt(0) <= l#0_1 && l#0_1 < n#0
                     ==> _module.Node.Nexxxt#canCall($Heap, this, k#0_1, S#0)
                       && (_module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_1, S#0) != null
                         ==> _module.Node.Nexxxt#canCall($Heap, this, k#0_1, S#0)
                           && ($Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_1, S#0), _module.Node.next)): ref
                               != null
                             ==> _module.Node.Nexxxt#canCall($Heap, this, k#0_1, S#0)
                               && _module.Node.Nexxxt#canCall($Heap, 
                                $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_1, S#0), _module.Node.next)): ref, 
                                l#0_1, 
                                S#0)
                               && _module.Node.Nexxxt#canCall($Heap, this, k#0_1, S#0))));
                assume {:id "id911"} (forall k#0_1: int, l#0_1: int :: 
                  { _module.Node.Nexxxt($LS($LZ), 
                      $Heap, 
                      $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_1, S#0), _module.Node.next)): ref, 
                      l#0_1, 
                      S#0) } 
                  LitInt(0) <= k#0_1
                       && k#0_1 < kn#0
                       && 
                      LitInt(0) <= l#0_1
                       && l#0_1 < n#0
                       && _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_1, S#0) != null
                       && $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_1, S#0), _module.Node.next)): ref
                         != null
                     ==> _module.Node.Nexxxt($LS($LZ), 
                        $Heap, 
                        $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_1, S#0), _module.Node.next)): ref, 
                        l#0_1, 
                        S#0)
                       != _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_1, S#0));
                // Begin Comprehension WF check
                havoc l#0_2;
                if (true)
                {
                    if (LitInt(0) <= l#0_2)
                    {
                    }

                    if (LitInt(0) <= l#0_2 && l#0_2 < ln#0_0)
                    {
                        // assume allocatedness for receiver argument to function
                        assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                        ##k#0_5 := kn#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##k#0_5, TInt, $Heap);
                        ##S#0_5 := S#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##S#0_5, TSet(Tclass._module.Node?()), $Heap);
                        assert {:id "id914"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_5)
                           ==> _module.Node.IsClosed($Heap, this, ##S#0_5) || Set#IsMember(##S#0_5, $Box(this));
                        assert {:id "id915"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_5)
                           ==> _module.Node.IsClosed($Heap, this, ##S#0_5) || Set#IsMember(##S#0_5, $Box(null));
                        assert {:id "id916"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_5)
                           ==> _module.Node.IsClosed($Heap, this, ##S#0_5)
                             || (forall n#0_5: ref :: 
                              { $Unbox(read($Heap, n#0_5, _module.Node.next)): ref } 
                              $Is(n#0_5, Tclass._module.Node?())
                                 ==> 
                                Set#IsMember(##S#0_5, $Box(n#0_5))
                                   && n#0_5 != null
                                   && $Unbox(read($Heap, n#0_5, _module.Node.next)): ref != null
                                 ==> Set#IsMember(##S#0_5, read($Heap, n#0_5, _module.Node.next)));
                        assert {:id "id917"} {:subsumption 0} LitInt(0) <= ##k#0_5;
                        assume _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0);
                        newtype$check#0_2 := null;
                    }

                    if (LitInt(0) <= l#0_2
                       && l#0_2 < ln#0_0
                       && _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0) != null)
                    {
                        // assume allocatedness for receiver argument to function
                        assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                        ##k#0_6 := kn#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##k#0_6, TInt, $Heap);
                        ##S#0_6 := S#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##S#0_6, TSet(Tclass._module.Node?()), $Heap);
                        assert {:id "id918"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_6)
                           ==> _module.Node.IsClosed($Heap, this, ##S#0_6) || Set#IsMember(##S#0_6, $Box(this));
                        assert {:id "id919"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_6)
                           ==> _module.Node.IsClosed($Heap, this, ##S#0_6) || Set#IsMember(##S#0_6, $Box(null));
                        assert {:id "id920"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_6)
                           ==> _module.Node.IsClosed($Heap, this, ##S#0_6)
                             || (forall n#0_6: ref :: 
                              { $Unbox(read($Heap, n#0_6, _module.Node.next)): ref } 
                              $Is(n#0_6, Tclass._module.Node?())
                                 ==> 
                                Set#IsMember(##S#0_6, $Box(n#0_6))
                                   && n#0_6 != null
                                   && $Unbox(read($Heap, n#0_6, _module.Node.next)): ref != null
                                 ==> Set#IsMember(##S#0_6, read($Heap, n#0_6, _module.Node.next)));
                        assert {:id "id921"} {:subsumption 0} LitInt(0) <= ##k#0_6;
                        assume _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0);
                        assert {:id "id922"} {:subsumption 0} _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0) != null;
                        newtype$check#0_3 := null;
                    }

                    if (LitInt(0) <= l#0_2
                       && l#0_2 < ln#0_0
                       && _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0) != null
                       && $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), _module.Node.next)): ref
                         != null)
                    {
                        // assume allocatedness for receiver argument to function
                        assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                        ##k#0_7 := kn#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##k#0_7, TInt, $Heap);
                        ##S#0_7 := S#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##S#0_7, TSet(Tclass._module.Node?()), $Heap);
                        assert {:id "id923"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_7)
                           ==> _module.Node.IsClosed($Heap, this, ##S#0_7) || Set#IsMember(##S#0_7, $Box(this));
                        assert {:id "id924"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_7)
                           ==> _module.Node.IsClosed($Heap, this, ##S#0_7) || Set#IsMember(##S#0_7, $Box(null));
                        assert {:id "id925"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_7)
                           ==> _module.Node.IsClosed($Heap, this, ##S#0_7)
                             || (forall n#0_7: ref :: 
                              { $Unbox(read($Heap, n#0_7, _module.Node.next)): ref } 
                              $Is(n#0_7, Tclass._module.Node?())
                                 ==> 
                                Set#IsMember(##S#0_7, $Box(n#0_7))
                                   && n#0_7 != null
                                   && $Unbox(read($Heap, n#0_7, _module.Node.next)): ref != null
                                 ==> Set#IsMember(##S#0_7, read($Heap, n#0_7, _module.Node.next)));
                        assert {:id "id926"} {:subsumption 0} LitInt(0) <= ##k#0_7;
                        assume _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0);
                        assert {:id "id927"} {:subsumption 0} _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0) != null;
                        assert {:id "id928"} {:subsumption 0} $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), _module.Node.next)): ref
                           != null;
                        // assume allocatedness for receiver argument to function
                        assume $IsAllocBox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), _module.Node.next), 
                          Tclass._module.Node?(), 
                          $Heap);
                        ##k#0_8 := l#0_2;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##k#0_8, TInt, $Heap);
                        ##S#0_8 := S#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##S#0_8, TSet(Tclass._module.Node?()), $Heap);
                        assert {:id "id929"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, 
                            $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), _module.Node.next)): ref, 
                            ##S#0_8)
                           ==> _module.Node.IsClosed($Heap, 
                              $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), _module.Node.next)): ref, 
                              ##S#0_8)
                             || Set#IsMember(##S#0_8, 
                              read($Heap, 
                                _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, kn#0, S#0), 
                                _module.Node.next));
                        assert {:id "id930"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, 
                            $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), _module.Node.next)): ref, 
                            ##S#0_8)
                           ==> _module.Node.IsClosed($Heap, 
                              $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), _module.Node.next)): ref, 
                              ##S#0_8)
                             || Set#IsMember(##S#0_8, $Box(null));
                        assert {:id "id931"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, 
                            $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), _module.Node.next)): ref, 
                            ##S#0_8)
                           ==> _module.Node.IsClosed($Heap, 
                              $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), _module.Node.next)): ref, 
                              ##S#0_8)
                             || (forall n#0_8: ref :: 
                              { $Unbox(read($Heap, n#0_8, _module.Node.next)): ref } 
                              $Is(n#0_8, Tclass._module.Node?())
                                 ==> 
                                Set#IsMember(##S#0_8, $Box(n#0_8))
                                   && n#0_8 != null
                                   && $Unbox(read($Heap, n#0_8, _module.Node.next)): ref != null
                                 ==> Set#IsMember(##S#0_8, read($Heap, n#0_8, _module.Node.next)));
                        assert {:id "id932"} {:subsumption 0} LitInt(0) <= ##k#0_8;
                        assume _module.Node.Nexxxt#canCall($Heap, 
                          $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), _module.Node.next)): ref, 
                          l#0_2, 
                          S#0);
                        // assume allocatedness for receiver argument to function
                        assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                        ##k#0_9 := kn#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##k#0_9, TInt, $Heap);
                        ##S#0_9 := S#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##S#0_9, TSet(Tclass._module.Node?()), $Heap);
                        assert {:id "id933"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_9)
                           ==> _module.Node.IsClosed($Heap, this, ##S#0_9) || Set#IsMember(##S#0_9, $Box(this));
                        assert {:id "id934"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_9)
                           ==> _module.Node.IsClosed($Heap, this, ##S#0_9) || Set#IsMember(##S#0_9, $Box(null));
                        assert {:id "id935"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_9)
                           ==> _module.Node.IsClosed($Heap, this, ##S#0_9)
                             || (forall n#0_9: ref :: 
                              { $Unbox(read($Heap, n#0_9, _module.Node.next)): ref } 
                              $Is(n#0_9, Tclass._module.Node?())
                                 ==> 
                                Set#IsMember(##S#0_9, $Box(n#0_9))
                                   && n#0_9 != null
                                   && $Unbox(read($Heap, n#0_9, _module.Node.next)): ref != null
                                 ==> Set#IsMember(##S#0_9, read($Heap, n#0_9, _module.Node.next)));
                        assert {:id "id936"} {:subsumption 0} LitInt(0) <= ##k#0_9;
                        assume _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0);
                    }
                }

                // End Comprehension WF check
                assume (forall l#0_3: int :: 
                  { _module.Node.Nexxxt($LS($LZ), 
                      $Heap, 
                      $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), _module.Node.next)): ref, 
                      l#0_3, 
                      S#0) } 
                  LitInt(0) <= l#0_3 && l#0_3 < ln#0_0
                     ==> _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0)
                       && (_module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0) != null
                         ==> _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0)
                           && ($Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), _module.Node.next)): ref
                               != null
                             ==> _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0)
                               && _module.Node.Nexxxt#canCall($Heap, 
                                $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), _module.Node.next)): ref, 
                                l#0_3, 
                                S#0)
                               && _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0))));
                assume {:id "id937"} (forall l#0_3: int :: 
                  { _module.Node.Nexxxt($LS($LZ), 
                      $Heap, 
                      $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), _module.Node.next)): ref, 
                      l#0_3, 
                      S#0) } 
                  LitInt(0) <= l#0_3
                       && l#0_3 < ln#0_0
                       && _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0) != null
                       && $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), _module.Node.next)): ref
                         != null
                     ==> _module.Node.Nexxxt($LS($LZ), 
                        $Heap, 
                        $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), _module.Node.next)): ref, 
                        l#0_3, 
                        S#0)
                       != _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0));
                assume true;
                assume false;
            }

            assume true;
            if (n#0 <= ln#0_0)
            {
                break;
            }

            $decr$loop#0_00 := n#0 - ln#0_0;
            push;
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(362,9)
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
            ##k#0_0_0 := kn#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##k#0_0_0, TInt, $Heap);
            ##S#0_0_0 := S#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##S#0_0_0, TSet(Tclass._module.Node?()), $Heap);
            assert {:id "id940"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0)
               ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0)
                 || Set#IsMember(##S#0_0_0, $Box(this));
            assert {:id "id941"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0)
               ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0)
                 || Set#IsMember(##S#0_0_0, $Box(null));
            assert {:id "id942"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0)
               ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0)
                 || (forall n#0_0_0: ref :: 
                  { $Unbox(read($Heap, n#0_0_0, _module.Node.next)): ref } 
                  $Is(n#0_0_0, Tclass._module.Node?())
                     ==> 
                    Set#IsMember(##S#0_0_0, $Box(n#0_0_0))
                       && n#0_0_0 != null
                       && $Unbox(read($Heap, n#0_0_0, _module.Node.next)): ref != null
                     ==> Set#IsMember(##S#0_0_0, read($Heap, n#0_0_0, _module.Node.next)));
            assert {:id "id943"} {:subsumption 0} LitInt(0) <= ##k#0_0_0;
            assume _module.Node.IsClosed($Heap, this, ##S#0_0_0) && LitInt(0) <= ##k#0_0_0;
            assume _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0);
            newtype$check#0_0_0 := null;
            if (_module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0) != null)
            {
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                ##k#0_0_1 := kn#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##k#0_0_1, TInt, $Heap);
                ##S#0_0_1 := S#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##S#0_0_1, TSet(Tclass._module.Node?()), $Heap);
                assert {:id "id944"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_1)
                   ==> _module.Node.IsClosed($Heap, this, ##S#0_0_1)
                     || Set#IsMember(##S#0_0_1, $Box(this));
                assert {:id "id945"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_1)
                   ==> _module.Node.IsClosed($Heap, this, ##S#0_0_1)
                     || Set#IsMember(##S#0_0_1, $Box(null));
                assert {:id "id946"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_1)
                   ==> _module.Node.IsClosed($Heap, this, ##S#0_0_1)
                     || (forall n#0_0_1: ref :: 
                      { $Unbox(read($Heap, n#0_0_1, _module.Node.next)): ref } 
                      $Is(n#0_0_1, Tclass._module.Node?())
                         ==> 
                        Set#IsMember(##S#0_0_1, $Box(n#0_0_1))
                           && n#0_0_1 != null
                           && $Unbox(read($Heap, n#0_0_1, _module.Node.next)): ref != null
                         ==> Set#IsMember(##S#0_0_1, read($Heap, n#0_0_1, _module.Node.next)));
                assert {:id "id947"} {:subsumption 0} LitInt(0) <= ##k#0_0_1;
                assume _module.Node.IsClosed($Heap, this, ##S#0_0_1) && LitInt(0) <= ##k#0_0_1;
                assume _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0);
                assert {:id "id948"} _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0) != null;
                newtype$check#0_0_1 := null;
            }

            assume _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0)
               && (_module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0) != null
                 ==> _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0));
            if (_module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0) != null
               && $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), _module.Node.next)): ref
                 != null)
            {
                push;
                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(363,11)
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                ##k#0_0_0_0 := kn#0 + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##k#0_0_0_0, TInt, $Heap);
                ##S#0_0_0_0 := S#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##S#0_0_0_0, TSet(Tclass._module.Node?()), $Heap);
                assert {:id "id949"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_0)
                   ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_0)
                     || Set#IsMember(##S#0_0_0_0, $Box(this));
                assert {:id "id950"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_0)
                   ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_0)
                     || Set#IsMember(##S#0_0_0_0, $Box(null));
                assert {:id "id951"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_0)
                   ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_0)
                     || (forall n#0_0_0_0: ref :: 
                      { $Unbox(read($Heap, n#0_0_0_0, _module.Node.next)): ref } 
                      $Is(n#0_0_0_0, Tclass._module.Node?())
                         ==> 
                        Set#IsMember(##S#0_0_0_0, $Box(n#0_0_0_0))
                           && n#0_0_0_0 != null
                           && $Unbox(read($Heap, n#0_0_0_0, _module.Node.next)): ref != null
                         ==> Set#IsMember(##S#0_0_0_0, read($Heap, n#0_0_0_0, _module.Node.next)));
                assert {:id "id952"} {:subsumption 0} LitInt(0) <= ##k#0_0_0_0;
                assume _module.Node.Nexxxt#canCall($Heap, this, kn#0 + 1, S#0);
                newtype$check#0_0_0_0 := null;
                assume _module.Node.Nexxxt#canCall($Heap, this, kn#0 + 1, S#0);
                assert {:id "id953"} {:subsumption 0} _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, kn#0 + 1, S#0) != null;
                assume {:id "id954"} _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0 + 1, S#0) != null;
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(364,35)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                assume true;
                // ProcessCallStmt: CheckSubrange
                x##0_0_0_0 := kn#0 + 1;
                assume true;
                // ProcessCallStmt: CheckSubrange
                y##0_0_0_0 := ln#0_0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                S##0_0_0_0 := S#0;
                call {:id "id955"} Call$$_module.Node.Lemma__NexxxtIsTransitive(this, x##0_0_0_0, y##0_0_0_0, S##0_0_0_0);
                // TrCallStmt: After ProcessCallStmt
                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(365,11)
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                ##k#0_0_0_1 := kn#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##k#0_0_0_1, TInt, $Heap);
                ##S#0_0_0_1 := S#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##S#0_0_0_1, TSet(Tclass._module.Node?()), $Heap);
                assert {:id "id956"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_1)
                   ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_1)
                     || Set#IsMember(##S#0_0_0_1, $Box(this));
                assert {:id "id957"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_1)
                   ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_1)
                     || Set#IsMember(##S#0_0_0_1, $Box(null));
                assert {:id "id958"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_1)
                   ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_1)
                     || (forall n#0_0_0_1: ref :: 
                      { $Unbox(read($Heap, n#0_0_0_1, _module.Node.next)): ref } 
                      $Is(n#0_0_0_1, Tclass._module.Node?())
                         ==> 
                        Set#IsMember(##S#0_0_0_1, $Box(n#0_0_0_1))
                           && n#0_0_0_1 != null
                           && $Unbox(read($Heap, n#0_0_0_1, _module.Node.next)): ref != null
                         ==> Set#IsMember(##S#0_0_0_1, read($Heap, n#0_0_0_1, _module.Node.next)));
                assert {:id "id959"} {:subsumption 0} LitInt(0) <= ##k#0_0_0_1;
                assume _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0);
                assert {:id "id960"} {:subsumption 0} _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0) != null;
                assert {:id "id961"} {:subsumption 0} $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), _module.Node.next)): ref
                   != null;
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), _module.Node.next), 
                  Tclass._module.Node?(), 
                  $Heap);
                ##k#0_0_0_2 := ln#0_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##k#0_0_0_2, TInt, $Heap);
                ##S#0_0_0_2 := S#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##S#0_0_0_2, TSet(Tclass._module.Node?()), $Heap);
                assert {:id "id962"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, 
                    $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), _module.Node.next)): ref, 
                    ##S#0_0_0_2)
                   ==> _module.Node.IsClosed($Heap, 
                      $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), _module.Node.next)): ref, 
                      ##S#0_0_0_2)
                     || Set#IsMember(##S#0_0_0_2, 
                      read($Heap, 
                        _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, kn#0, S#0), 
                        _module.Node.next));
                assert {:id "id963"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, 
                    $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), _module.Node.next)): ref, 
                    ##S#0_0_0_2)
                   ==> _module.Node.IsClosed($Heap, 
                      $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), _module.Node.next)): ref, 
                      ##S#0_0_0_2)
                     || Set#IsMember(##S#0_0_0_2, $Box(null));
                assert {:id "id964"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, 
                    $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), _module.Node.next)): ref, 
                    ##S#0_0_0_2)
                   ==> _module.Node.IsClosed($Heap, 
                      $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), _module.Node.next)): ref, 
                      ##S#0_0_0_2)
                     || (forall n#0_0_0_2: ref :: 
                      { $Unbox(read($Heap, n#0_0_0_2, _module.Node.next)): ref } 
                      $Is(n#0_0_0_2, Tclass._module.Node?())
                         ==> 
                        Set#IsMember(##S#0_0_0_2, $Box(n#0_0_0_2))
                           && n#0_0_0_2 != null
                           && $Unbox(read($Heap, n#0_0_0_2, _module.Node.next)): ref != null
                         ==> Set#IsMember(##S#0_0_0_2, read($Heap, n#0_0_0_2, _module.Node.next)));
                assert {:id "id965"} {:subsumption 0} LitInt(0) <= ##k#0_0_0_2;
                assume _module.Node.Nexxxt#canCall($Heap, 
                  $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), _module.Node.next)): ref, 
                  ln#0_0, 
                  S#0);
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                ##k#0_0_0_3 := kn#0 + 1 + ln#0_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##k#0_0_0_3, TInt, $Heap);
                ##S#0_0_0_3 := S#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##S#0_0_0_3, TSet(Tclass._module.Node?()), $Heap);
                assert {:id "id966"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_3)
                   ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_3)
                     || Set#IsMember(##S#0_0_0_3, $Box(this));
                assert {:id "id967"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_3)
                   ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_3)
                     || Set#IsMember(##S#0_0_0_3, $Box(null));
                assert {:id "id968"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_3)
                   ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_3)
                     || (forall n#0_0_0_3: ref :: 
                      { $Unbox(read($Heap, n#0_0_0_3, _module.Node.next)): ref } 
                      $Is(n#0_0_0_3, Tclass._module.Node?())
                         ==> 
                        Set#IsMember(##S#0_0_0_3, $Box(n#0_0_0_3))
                           && n#0_0_0_3 != null
                           && $Unbox(read($Heap, n#0_0_0_3, _module.Node.next)): ref != null
                         ==> Set#IsMember(##S#0_0_0_3, read($Heap, n#0_0_0_3, _module.Node.next)));
                assert {:id "id969"} {:subsumption 0} LitInt(0) <= ##k#0_0_0_3;
                assume _module.Node.Nexxxt#canCall($Heap, this, kn#0 + 1 + ln#0_0, S#0);
                assume _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0)
                   && _module.Node.Nexxxt#canCall($Heap, 
                    $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), _module.Node.next)): ref, 
                    ln#0_0, 
                    S#0)
                   && _module.Node.Nexxxt#canCall($Heap, this, kn#0 + 1 + ln#0_0, S#0);
                assert {:id "id970"} {:subsumption 0} _module.Node.Nexxxt($LS($LS($LZ)), 
                    $Heap, 
                    $Unbox(read($Heap, 
                        _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, kn#0, S#0), 
                        _module.Node.next)): ref, 
                    ln#0_0, 
                    S#0)
                   == _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, kn#0 + 1 + ln#0_0, S#0);
                assume {:id "id971"} _module.Node.Nexxxt($LS($LZ), 
                    $Heap, 
                    $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), _module.Node.next)): ref, 
                    ln#0_0, 
                    S#0)
                   == _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0 + 1 + ln#0_0, S#0);
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(366,35)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                assume true;
                // ProcessCallStmt: CheckSubrange
                x##0_0_0_1 := kn#0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                y##0_0_0_1 := 1 + ln#0_0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                S##0_0_0_1 := S#0;
                call {:id "id972"} Call$$_module.Node.Lemma__NexxxtIsTransitive(this, x##0_0_0_1, y##0_0_0_1, S##0_0_0_1);
                // TrCallStmt: After ProcessCallStmt
                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(367,11)
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                ##k#0_0_0_4 := kn#0 + 1 + ln#0_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##k#0_0_0_4, TInt, $Heap);
                ##S#0_0_0_4 := S#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##S#0_0_0_4, TSet(Tclass._module.Node?()), $Heap);
                assert {:id "id973"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_4)
                   ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_4)
                     || Set#IsMember(##S#0_0_0_4, $Box(this));
                assert {:id "id974"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_4)
                   ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_4)
                     || Set#IsMember(##S#0_0_0_4, $Box(null));
                assert {:id "id975"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_4)
                   ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_4)
                     || (forall n#0_0_0_4: ref :: 
                      { $Unbox(read($Heap, n#0_0_0_4, _module.Node.next)): ref } 
                      $Is(n#0_0_0_4, Tclass._module.Node?())
                         ==> 
                        Set#IsMember(##S#0_0_0_4, $Box(n#0_0_0_4))
                           && n#0_0_0_4 != null
                           && $Unbox(read($Heap, n#0_0_0_4, _module.Node.next)): ref != null
                         ==> Set#IsMember(##S#0_0_0_4, read($Heap, n#0_0_0_4, _module.Node.next)));
                assert {:id "id976"} {:subsumption 0} LitInt(0) <= ##k#0_0_0_4;
                assume _module.Node.Nexxxt#canCall($Heap, this, kn#0 + 1 + ln#0_0, S#0);
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                ##k#0_0_0_5 := kn#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##k#0_0_0_5, TInt, $Heap);
                ##S#0_0_0_5 := S#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##S#0_0_0_5, TSet(Tclass._module.Node?()), $Heap);
                assert {:id "id977"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_5)
                   ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_5)
                     || Set#IsMember(##S#0_0_0_5, $Box(this));
                assert {:id "id978"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_5)
                   ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_5)
                     || Set#IsMember(##S#0_0_0_5, $Box(null));
                assert {:id "id979"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_5)
                   ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_5)
                     || (forall n#0_0_0_5: ref :: 
                      { $Unbox(read($Heap, n#0_0_0_5, _module.Node.next)): ref } 
                      $Is(n#0_0_0_5, Tclass._module.Node?())
                         ==> 
                        Set#IsMember(##S#0_0_0_5, $Box(n#0_0_0_5))
                           && n#0_0_0_5 != null
                           && $Unbox(read($Heap, n#0_0_0_5, _module.Node.next)): ref != null
                         ==> Set#IsMember(##S#0_0_0_5, read($Heap, n#0_0_0_5, _module.Node.next)));
                assert {:id "id980"} {:subsumption 0} LitInt(0) <= ##k#0_0_0_5;
                assume _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0);
                assert {:id "id981"} {:subsumption 0} _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0) != null;
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(_module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0)), 
                  Tclass._module.Node?(), 
                  $Heap);
                ##k#0_0_0_6 := 1 + ln#0_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##k#0_0_0_6, TInt, $Heap);
                ##S#0_0_0_6 := S#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##S#0_0_0_6, TSet(Tclass._module.Node?()), $Heap);
                assert {:id "id982"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_6)
                   ==> _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_6)
                     || Set#IsMember(##S#0_0_0_6, $Box(_module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, kn#0, S#0)));
                assert {:id "id983"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_6)
                   ==> _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_6)
                     || Set#IsMember(##S#0_0_0_6, $Box(null));
                assert {:id "id984"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_6)
                   ==> _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_6)
                     || (forall n#0_0_0_6: ref :: 
                      { $Unbox(read($Heap, n#0_0_0_6, _module.Node.next)): ref } 
                      $Is(n#0_0_0_6, Tclass._module.Node?())
                         ==> 
                        Set#IsMember(##S#0_0_0_6, $Box(n#0_0_0_6))
                           && n#0_0_0_6 != null
                           && $Unbox(read($Heap, n#0_0_0_6, _module.Node.next)): ref != null
                         ==> Set#IsMember(##S#0_0_0_6, read($Heap, n#0_0_0_6, _module.Node.next)));
                assert {:id "id985"} {:subsumption 0} LitInt(0) <= ##k#0_0_0_6;
                assume _module.Node.Nexxxt#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), 1 + ln#0_0, S#0);
                assume _module.Node.Nexxxt#canCall($Heap, this, kn#0 + 1 + ln#0_0, S#0)
                   && 
                  _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0)
                   && _module.Node.Nexxxt#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), 1 + ln#0_0, S#0);
                assert {:id "id986"} {:subsumption 0} _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, kn#0 + 1 + ln#0_0, S#0)
                   == _module.Node.Nexxxt($LS($LS($LZ)), 
                    $Heap, 
                    _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, kn#0, S#0), 
                    1 + ln#0_0, 
                    S#0);
                assume {:id "id987"} _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0 + 1 + ln#0_0, S#0)
                   == _module.Node.Nexxxt($LS($LZ), 
                    $Heap, 
                    _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), 
                    1 + ln#0_0, 
                    S#0);
                // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(371,11)
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                ##k#0_0_0_7 := kn#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##k#0_0_0_7, TInt, $Heap);
                ##S#0_0_0_7 := S#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##S#0_0_0_7, TSet(Tclass._module.Node?()), $Heap);
                assert {:id "id988"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_7)
                   ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_7)
                     || Set#IsMember(##S#0_0_0_7, $Box(this));
                assert {:id "id989"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_7)
                   ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_7)
                     || Set#IsMember(##S#0_0_0_7, $Box(null));
                assert {:id "id990"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_7)
                   ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_7)
                     || (forall n#0_0_0_7: ref :: 
                      { $Unbox(read($Heap, n#0_0_0_7, _module.Node.next)): ref } 
                      $Is(n#0_0_0_7, Tclass._module.Node?())
                         ==> 
                        Set#IsMember(##S#0_0_0_7, $Box(n#0_0_0_7))
                           && n#0_0_0_7 != null
                           && $Unbox(read($Heap, n#0_0_0_7, _module.Node.next)): ref != null
                         ==> Set#IsMember(##S#0_0_0_7, read($Heap, n#0_0_0_7, _module.Node.next)));
                assert {:id "id991"} {:subsumption 0} LitInt(0) <= ##k#0_0_0_7;
                assume _module.Node.IsClosed($Heap, this, ##S#0_0_0_7) && LitInt(0) <= ##k#0_0_0_7;
                assume _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0);
                assert {:id "id992"} _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0) != null;
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(_module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0)), 
                  Tclass._module.Node?(), 
                  $Heap);
                ##k#0_0_0_8 := 1 + ln#0_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##k#0_0_0_8, TInt, $Heap);
                ##S#0_0_0_8 := S#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##S#0_0_0_8, TSet(Tclass._module.Node?()), $Heap);
                assert {:id "id993"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_8)
                   ==> _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_8)
                     || Set#IsMember(##S#0_0_0_8, $Box(_module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, kn#0, S#0)));
                assert {:id "id994"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_8)
                   ==> _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_8)
                     || Set#IsMember(##S#0_0_0_8, $Box(null));
                assert {:id "id995"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_8)
                   ==> _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_8)
                     || (forall n#0_0_0_8: ref :: 
                      { $Unbox(read($Heap, n#0_0_0_8, _module.Node.next)): ref } 
                      $Is(n#0_0_0_8, Tclass._module.Node?())
                         ==> 
                        Set#IsMember(##S#0_0_0_8, $Box(n#0_0_0_8))
                           && n#0_0_0_8 != null
                           && $Unbox(read($Heap, n#0_0_0_8, _module.Node.next)): ref != null
                         ==> Set#IsMember(##S#0_0_0_8, read($Heap, n#0_0_0_8, _module.Node.next)));
                assert {:id "id996"} {:subsumption 0} LitInt(0) <= ##k#0_0_0_8;
                assume _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_8)
                   && LitInt(0) <= ##k#0_0_0_8;
                assume _module.Node.Nexxxt#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), 1 + ln#0_0, S#0);
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                ##k#0_0_0_9 := kn#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##k#0_0_0_9, TInt, $Heap);
                ##S#0_0_0_9 := S#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##S#0_0_0_9, TSet(Tclass._module.Node?()), $Heap);
                assert {:id "id997"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_9)
                   ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_9)
                     || Set#IsMember(##S#0_0_0_9, $Box(this));
                assert {:id "id998"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_9)
                   ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_9)
                     || Set#IsMember(##S#0_0_0_9, $Box(null));
                assert {:id "id999"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_9)
                   ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_9)
                     || (forall n#0_0_0_9: ref :: 
                      { $Unbox(read($Heap, n#0_0_0_9, _module.Node.next)): ref } 
                      $Is(n#0_0_0_9, Tclass._module.Node?())
                         ==> 
                        Set#IsMember(##S#0_0_0_9, $Box(n#0_0_0_9))
                           && n#0_0_0_9 != null
                           && $Unbox(read($Heap, n#0_0_0_9, _module.Node.next)): ref != null
                         ==> Set#IsMember(##S#0_0_0_9, read($Heap, n#0_0_0_9, _module.Node.next)));
                assert {:id "id1000"} {:subsumption 0} LitInt(0) <= ##k#0_0_0_9;
                assume _module.Node.IsClosed($Heap, this, ##S#0_0_0_9) && LitInt(0) <= ##k#0_0_0_9;
                assume _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0);
                assume _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0)
                   && _module.Node.Nexxxt#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), 1 + ln#0_0, S#0)
                   && _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0);
                if (_module.Node.Nexxxt($LS($LZ), 
                    $Heap, 
                    _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), 
                    1 + ln#0_0, 
                    S#0)
                   == _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0))
                {
                    push;
                    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(372,20)
                    assume true;
                    assume true;
                    nn#0_0_0_0_0 := 1 + ln#0_0;
                    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(373,13)
                    // Assume Fuel Constant
                    $PreLoopHeap$loop#0_0_0_0_0 := $Heap;
                    $decr_init$loop#0_0_0_0_00 := n#0 - nn#0_0_0_0_0;
                    havoc $w$loop#0_0_0_0_0;
                    while (true)
                      free invariant true;
                      invariant {:id "id1003"} $w$loop#0_0_0_0_0 ==> LitInt(0) <= nn#0_0_0_0_0;
                      free invariant $w$loop#0_0_0_0_0
                         ==> _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0)
                           && _module.Node.Nexxxt#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), nn#0_0_0_0_0, S#0)
                           && _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0);
                      invariant {:id "id1018"} $w$loop#0_0_0_0_0
                         ==> _module.Node.Nexxxt($LS($LS($LZ)), 
                            $Heap, 
                            _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, kn#0, S#0), 
                            nn#0_0_0_0_0, 
                            S#0)
                           == _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, kn#0, S#0);
                      free invariant $PreLoopHeap$loop#0_0_0_0_0 == $Heap;
                      free invariant (forall $o: ref, $f: Field :: 
                        { read($Heap, $o, $f) } 
                        $o != null && $Unbox(read($PreLoopHeap$loop#0_0_0_0_0, $o, alloc)): bool
                           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0_0_0_0_0, $o, $f)
                             || $_ModifiesFrame[$o, $f]);
                      free invariant n#0 - nn#0_0_0_0_0 <= $decr_init$loop#0_0_0_0_00;
                    {
                        if (!$w$loop#0_0_0_0_0)
                        {
                            assume true;
                            assume {:id "id1002"} LitInt(0) <= nn#0_0_0_0_0;
                            // assume allocatedness for receiver argument to function
                            assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                            ##k#0_0_0_0_0 := kn#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##k#0_0_0_0_0, TInt, $Heap);
                            ##S#0_0_0_0_0 := S#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##S#0_0_0_0_0, TSet(Tclass._module.Node?()), $Heap);
                            assert {:id "id1004"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_0_0)
                               ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_0_0)
                                 || Set#IsMember(##S#0_0_0_0_0, $Box(this));
                            assert {:id "id1005"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_0_0)
                               ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_0_0)
                                 || Set#IsMember(##S#0_0_0_0_0, $Box(null));
                            assert {:id "id1006"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_0_0)
                               ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_0_0)
                                 || (forall n#0_0_0_0_0: ref :: 
                                  { $Unbox(read($Heap, n#0_0_0_0_0, _module.Node.next)): ref } 
                                  $Is(n#0_0_0_0_0, Tclass._module.Node?())
                                     ==> 
                                    Set#IsMember(##S#0_0_0_0_0, $Box(n#0_0_0_0_0))
                                       && n#0_0_0_0_0 != null
                                       && $Unbox(read($Heap, n#0_0_0_0_0, _module.Node.next)): ref != null
                                     ==> Set#IsMember(##S#0_0_0_0_0, read($Heap, n#0_0_0_0_0, _module.Node.next)));
                            assert {:id "id1007"} {:subsumption 0} LitInt(0) <= ##k#0_0_0_0_0;
                            assume _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0);
                            assert {:id "id1008"} {:subsumption 0} _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0) != null;
                            // assume allocatedness for receiver argument to function
                            assume $IsAllocBox($Box(_module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0)), 
                              Tclass._module.Node?(), 
                              $Heap);
                            ##k#0_0_0_0_1 := nn#0_0_0_0_0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##k#0_0_0_0_1, TInt, $Heap);
                            ##S#0_0_0_0_1 := S#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##S#0_0_0_0_1, TSet(Tclass._module.Node?()), $Heap);
                            assert {:id "id1009"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_0_1)
                               ==> _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_0_1)
                                 || Set#IsMember(##S#0_0_0_0_1, $Box(_module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, kn#0, S#0)));
                            assert {:id "id1010"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_0_1)
                               ==> _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_0_1)
                                 || Set#IsMember(##S#0_0_0_0_1, $Box(null));
                            assert {:id "id1011"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_0_1)
                               ==> _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_0_1)
                                 || (forall n#0_0_0_0_1: ref :: 
                                  { $Unbox(read($Heap, n#0_0_0_0_1, _module.Node.next)): ref } 
                                  $Is(n#0_0_0_0_1, Tclass._module.Node?())
                                     ==> 
                                    Set#IsMember(##S#0_0_0_0_1, $Box(n#0_0_0_0_1))
                                       && n#0_0_0_0_1 != null
                                       && $Unbox(read($Heap, n#0_0_0_0_1, _module.Node.next)): ref != null
                                     ==> Set#IsMember(##S#0_0_0_0_1, read($Heap, n#0_0_0_0_1, _module.Node.next)));
                            assert {:id "id1012"} {:subsumption 0} LitInt(0) <= ##k#0_0_0_0_1;
                            assume _module.Node.Nexxxt#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), nn#0_0_0_0_0, S#0);
                            // assume allocatedness for receiver argument to function
                            assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                            ##k#0_0_0_0_2 := kn#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##k#0_0_0_0_2, TInt, $Heap);
                            ##S#0_0_0_0_2 := S#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##S#0_0_0_0_2, TSet(Tclass._module.Node?()), $Heap);
                            assert {:id "id1013"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_0_2)
                               ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_0_2)
                                 || Set#IsMember(##S#0_0_0_0_2, $Box(this));
                            assert {:id "id1014"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_0_2)
                               ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_0_2)
                                 || Set#IsMember(##S#0_0_0_0_2, $Box(null));
                            assert {:id "id1015"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_0_2)
                               ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_0_2)
                                 || (forall n#0_0_0_0_2: ref :: 
                                  { $Unbox(read($Heap, n#0_0_0_0_2, _module.Node.next)): ref } 
                                  $Is(n#0_0_0_0_2, Tclass._module.Node?())
                                     ==> 
                                    Set#IsMember(##S#0_0_0_0_2, $Box(n#0_0_0_0_2))
                                       && n#0_0_0_0_2 != null
                                       && $Unbox(read($Heap, n#0_0_0_0_2, _module.Node.next)): ref != null
                                     ==> Set#IsMember(##S#0_0_0_0_2, read($Heap, n#0_0_0_0_2, _module.Node.next)));
                            assert {:id "id1016"} {:subsumption 0} LitInt(0) <= ##k#0_0_0_0_2;
                            assume _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0);
                            assume _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0)
                               && _module.Node.Nexxxt#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), nn#0_0_0_0_0, S#0)
                               && _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0);
                            assume {:id "id1017"} _module.Node.Nexxxt($LS($LZ), 
                                $Heap, 
                                _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), 
                                nn#0_0_0_0_0, 
                                S#0)
                               == _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0);
                            assume true;
                            assume false;
                        }

                        assume true;
                        if (n#0 <= nn#0_0_0_0_0)
                        {
                            break;
                        }

                        $decr$loop#0_0_0_0_00 := n#0 - nn#0_0_0_0_0;
                        push;
                        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(377,15)
                        // assume allocatedness for receiver argument to function
                        assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                        ##k#0_0_0_0_0_0 := kn#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##k#0_0_0_0_0_0, TInt, $Heap);
                        ##S#0_0_0_0_0_0 := S#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##S#0_0_0_0_0_0, TSet(Tclass._module.Node?()), $Heap);
                        assert {:id "id1019"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_0_0_0)
                           ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_0_0_0)
                             || Set#IsMember(##S#0_0_0_0_0_0, $Box(this));
                        assert {:id "id1020"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_0_0_0)
                           ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_0_0_0)
                             || Set#IsMember(##S#0_0_0_0_0_0, $Box(null));
                        assert {:id "id1021"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_0_0_0)
                           ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_0_0_0)
                             || (forall n#0_0_0_0_0_0: ref :: 
                              { $Unbox(read($Heap, n#0_0_0_0_0_0, _module.Node.next)): ref } 
                              $Is(n#0_0_0_0_0_0, Tclass._module.Node?())
                                 ==> 
                                Set#IsMember(##S#0_0_0_0_0_0, $Box(n#0_0_0_0_0_0))
                                   && n#0_0_0_0_0_0 != null
                                   && $Unbox(read($Heap, n#0_0_0_0_0_0, _module.Node.next)): ref != null
                                 ==> Set#IsMember(##S#0_0_0_0_0_0, read($Heap, n#0_0_0_0_0_0, _module.Node.next)));
                        assert {:id "id1022"} {:subsumption 0} LitInt(0) <= ##k#0_0_0_0_0_0;
                        assume _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0);
                        // assume allocatedness for receiver argument to function
                        assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                        ##k#0_0_0_0_0_1 := kn#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##k#0_0_0_0_0_1, TInt, $Heap);
                        ##S#0_0_0_0_0_1 := S#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##S#0_0_0_0_0_1, TSet(Tclass._module.Node?()), $Heap);
                        assert {:id "id1023"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_0_0_1)
                           ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_0_0_1)
                             || Set#IsMember(##S#0_0_0_0_0_1, $Box(this));
                        assert {:id "id1024"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_0_0_1)
                           ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_0_0_1)
                             || Set#IsMember(##S#0_0_0_0_0_1, $Box(null));
                        assert {:id "id1025"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_0_0_1)
                           ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_0_0_1)
                             || (forall n#0_0_0_0_0_1: ref :: 
                              { $Unbox(read($Heap, n#0_0_0_0_0_1, _module.Node.next)): ref } 
                              $Is(n#0_0_0_0_0_1, Tclass._module.Node?())
                                 ==> 
                                Set#IsMember(##S#0_0_0_0_0_1, $Box(n#0_0_0_0_0_1))
                                   && n#0_0_0_0_0_1 != null
                                   && $Unbox(read($Heap, n#0_0_0_0_0_1, _module.Node.next)): ref != null
                                 ==> Set#IsMember(##S#0_0_0_0_0_1, read($Heap, n#0_0_0_0_0_1, _module.Node.next)));
                        assert {:id "id1026"} {:subsumption 0} LitInt(0) <= ##k#0_0_0_0_0_1;
                        assume _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0);
                        assert {:id "id1027"} {:subsumption 0} _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0) != null;
                        // assume allocatedness for receiver argument to function
                        assume $IsAllocBox($Box(_module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0)), 
                          Tclass._module.Node?(), 
                          $Heap);
                        ##k#0_0_0_0_0_2 := nn#0_0_0_0_0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##k#0_0_0_0_0_2, TInt, $Heap);
                        ##S#0_0_0_0_0_2 := S#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##S#0_0_0_0_0_2, TSet(Tclass._module.Node?()), $Heap);
                        assert {:id "id1028"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_0_0_2)
                           ==> _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_0_0_2)
                             || Set#IsMember(##S#0_0_0_0_0_2, 
                              $Box(_module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, kn#0, S#0)));
                        assert {:id "id1029"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_0_0_2)
                           ==> _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_0_0_2)
                             || Set#IsMember(##S#0_0_0_0_0_2, $Box(null));
                        assert {:id "id1030"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_0_0_2)
                           ==> _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_0_0_2)
                             || (forall n#0_0_0_0_0_2: ref :: 
                              { $Unbox(read($Heap, n#0_0_0_0_0_2, _module.Node.next)): ref } 
                              $Is(n#0_0_0_0_0_2, Tclass._module.Node?())
                                 ==> 
                                Set#IsMember(##S#0_0_0_0_0_2, $Box(n#0_0_0_0_0_2))
                                   && n#0_0_0_0_0_2 != null
                                   && $Unbox(read($Heap, n#0_0_0_0_0_2, _module.Node.next)): ref != null
                                 ==> Set#IsMember(##S#0_0_0_0_0_2, read($Heap, n#0_0_0_0_0_2, _module.Node.next)));
                        assert {:id "id1031"} {:subsumption 0} LitInt(0) <= ##k#0_0_0_0_0_2;
                        assume _module.Node.Nexxxt#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), nn#0_0_0_0_0, S#0);
                        if (_module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0)
                           == _module.Node.Nexxxt($LS($LZ), 
                            $Heap, 
                            _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), 
                            nn#0_0_0_0_0, 
                            S#0))
                        {
                            // assume allocatedness for receiver argument to function
                            assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                            ##k#0_0_0_0_0_3 := kn#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##k#0_0_0_0_0_3, TInt, $Heap);
                            ##S#0_0_0_0_0_3 := S#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##S#0_0_0_0_0_3, TSet(Tclass._module.Node?()), $Heap);
                            assert {:id "id1032"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_0_0_3)
                               ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_0_0_3)
                                 || Set#IsMember(##S#0_0_0_0_0_3, $Box(this));
                            assert {:id "id1033"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_0_0_3)
                               ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_0_0_3)
                                 || Set#IsMember(##S#0_0_0_0_0_3, $Box(null));
                            assert {:id "id1034"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_0_0_3)
                               ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_0_0_3)
                                 || (forall n#0_0_0_0_0_3: ref :: 
                                  { $Unbox(read($Heap, n#0_0_0_0_0_3, _module.Node.next)): ref } 
                                  $Is(n#0_0_0_0_0_3, Tclass._module.Node?())
                                     ==> 
                                    Set#IsMember(##S#0_0_0_0_0_3, $Box(n#0_0_0_0_0_3))
                                       && n#0_0_0_0_0_3 != null
                                       && $Unbox(read($Heap, n#0_0_0_0_0_3, _module.Node.next)): ref != null
                                     ==> Set#IsMember(##S#0_0_0_0_0_3, read($Heap, n#0_0_0_0_0_3, _module.Node.next)));
                            assert {:id "id1035"} {:subsumption 0} LitInt(0) <= ##k#0_0_0_0_0_3;
                            assume _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0);
                            assert {:id "id1036"} {:subsumption 0} _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0) != null;
                            // assume allocatedness for receiver argument to function
                            assume $IsAllocBox($Box(_module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0)), 
                              Tclass._module.Node?(), 
                              $Heap);
                            ##k#0_0_0_0_0_4 := nn#0_0_0_0_0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##k#0_0_0_0_0_4, TInt, $Heap);
                            ##S#0_0_0_0_0_4 := S#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##S#0_0_0_0_0_4, TSet(Tclass._module.Node?()), $Heap);
                            assert {:id "id1037"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_0_0_4)
                               ==> _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_0_0_4)
                                 || Set#IsMember(##S#0_0_0_0_0_4, 
                                  $Box(_module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, kn#0, S#0)));
                            assert {:id "id1038"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_0_0_4)
                               ==> _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_0_0_4)
                                 || Set#IsMember(##S#0_0_0_0_0_4, $Box(null));
                            assert {:id "id1039"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_0_0_4)
                               ==> _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_0_0_4)
                                 || (forall n#0_0_0_0_0_4: ref :: 
                                  { $Unbox(read($Heap, n#0_0_0_0_0_4, _module.Node.next)): ref } 
                                  $Is(n#0_0_0_0_0_4, Tclass._module.Node?())
                                     ==> 
                                    Set#IsMember(##S#0_0_0_0_0_4, $Box(n#0_0_0_0_0_4))
                                       && n#0_0_0_0_0_4 != null
                                       && $Unbox(read($Heap, n#0_0_0_0_0_4, _module.Node.next)): ref != null
                                     ==> Set#IsMember(##S#0_0_0_0_0_4, read($Heap, n#0_0_0_0_0_4, _module.Node.next)));
                            assert {:id "id1040"} {:subsumption 0} LitInt(0) <= ##k#0_0_0_0_0_4;
                            assume _module.Node.Nexxxt#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), nn#0_0_0_0_0, S#0);
                            // assume allocatedness for receiver argument to function
                            assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                            ##k#0_0_0_0_0_5 := kn#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##k#0_0_0_0_0_5, TInt, $Heap);
                            ##S#0_0_0_0_0_5 := S#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##S#0_0_0_0_0_5, TSet(Tclass._module.Node?()), $Heap);
                            assert {:id "id1041"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_0_0_5)
                               ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_0_0_5)
                                 || Set#IsMember(##S#0_0_0_0_0_5, $Box(this));
                            assert {:id "id1042"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_0_0_5)
                               ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_0_0_5)
                                 || Set#IsMember(##S#0_0_0_0_0_5, $Box(null));
                            assert {:id "id1043"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_0_0_5)
                               ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_0_0_5)
                                 || (forall n#0_0_0_0_0_5: ref :: 
                                  { $Unbox(read($Heap, n#0_0_0_0_0_5, _module.Node.next)): ref } 
                                  $Is(n#0_0_0_0_0_5, Tclass._module.Node?())
                                     ==> 
                                    Set#IsMember(##S#0_0_0_0_0_5, $Box(n#0_0_0_0_0_5))
                                       && n#0_0_0_0_0_5 != null
                                       && $Unbox(read($Heap, n#0_0_0_0_0_5, _module.Node.next)): ref != null
                                     ==> Set#IsMember(##S#0_0_0_0_0_5, read($Heap, n#0_0_0_0_0_5, _module.Node.next)));
                            assert {:id "id1044"} {:subsumption 0} LitInt(0) <= ##k#0_0_0_0_0_5;
                            assume _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0);
                            assert {:id "id1045"} {:subsumption 0} _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0) != null;
                            // assume allocatedness for receiver argument to function
                            assume $IsAllocBox($Box(_module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0)), 
                              Tclass._module.Node?(), 
                              $Heap);
                            ##k#0_0_0_0_0_6 := 1 + ln#0_0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##k#0_0_0_0_0_6, TInt, $Heap);
                            ##S#0_0_0_0_0_6 := S#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##S#0_0_0_0_0_6, TSet(Tclass._module.Node?()), $Heap);
                            assert {:id "id1046"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_0_0_6)
                               ==> _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_0_0_6)
                                 || Set#IsMember(##S#0_0_0_0_0_6, 
                                  $Box(_module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, kn#0, S#0)));
                            assert {:id "id1047"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_0_0_6)
                               ==> _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_0_0_6)
                                 || Set#IsMember(##S#0_0_0_0_0_6, $Box(null));
                            assert {:id "id1048"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_0_0_6)
                               ==> _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_0_0_6)
                                 || (forall n#0_0_0_0_0_6: ref :: 
                                  { $Unbox(read($Heap, n#0_0_0_0_0_6, _module.Node.next)): ref } 
                                  $Is(n#0_0_0_0_0_6, Tclass._module.Node?())
                                     ==> 
                                    Set#IsMember(##S#0_0_0_0_0_6, $Box(n#0_0_0_0_0_6))
                                       && n#0_0_0_0_0_6 != null
                                       && $Unbox(read($Heap, n#0_0_0_0_0_6, _module.Node.next)): ref != null
                                     ==> Set#IsMember(##S#0_0_0_0_0_6, read($Heap, n#0_0_0_0_0_6, _module.Node.next)));
                            assert {:id "id1049"} {:subsumption 0} LitInt(0) <= ##k#0_0_0_0_0_6;
                            assume _module.Node.Nexxxt#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), 1 + ln#0_0, S#0);
                        }

                        if (_module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0)
                             == _module.Node.Nexxxt($LS($LZ), 
                              $Heap, 
                              _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), 
                              nn#0_0_0_0_0, 
                              S#0)
                           && _module.Node.Nexxxt($LS($LZ), 
                              $Heap, 
                              _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), 
                              nn#0_0_0_0_0, 
                              S#0)
                             == _module.Node.Nexxxt($LS($LZ), 
                              $Heap, 
                              _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), 
                              1 + ln#0_0, 
                              S#0))
                        {
                            // assume allocatedness for receiver argument to function
                            assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                            ##k#0_0_0_0_0_7 := kn#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##k#0_0_0_0_0_7, TInt, $Heap);
                            ##S#0_0_0_0_0_7 := S#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##S#0_0_0_0_0_7, TSet(Tclass._module.Node?()), $Heap);
                            assert {:id "id1050"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_0_0_7)
                               ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_0_0_7)
                                 || Set#IsMember(##S#0_0_0_0_0_7, $Box(this));
                            assert {:id "id1051"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_0_0_7)
                               ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_0_0_7)
                                 || Set#IsMember(##S#0_0_0_0_0_7, $Box(null));
                            assert {:id "id1052"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_0_0_7)
                               ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_0_0_7)
                                 || (forall n#0_0_0_0_0_7: ref :: 
                                  { $Unbox(read($Heap, n#0_0_0_0_0_7, _module.Node.next)): ref } 
                                  $Is(n#0_0_0_0_0_7, Tclass._module.Node?())
                                     ==> 
                                    Set#IsMember(##S#0_0_0_0_0_7, $Box(n#0_0_0_0_0_7))
                                       && n#0_0_0_0_0_7 != null
                                       && $Unbox(read($Heap, n#0_0_0_0_0_7, _module.Node.next)): ref != null
                                     ==> Set#IsMember(##S#0_0_0_0_0_7, read($Heap, n#0_0_0_0_0_7, _module.Node.next)));
                            assert {:id "id1053"} {:subsumption 0} LitInt(0) <= ##k#0_0_0_0_0_7;
                            assume _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0);
                            assert {:id "id1054"} {:subsumption 0} _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0) != null;
                            // assume allocatedness for receiver argument to function
                            assume $IsAllocBox($Box(_module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0)), 
                              Tclass._module.Node?(), 
                              $Heap);
                            ##k#0_0_0_0_0_8 := 1 + ln#0_0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##k#0_0_0_0_0_8, TInt, $Heap);
                            ##S#0_0_0_0_0_8 := S#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##S#0_0_0_0_0_8, TSet(Tclass._module.Node?()), $Heap);
                            assert {:id "id1055"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_0_0_8)
                               ==> _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_0_0_8)
                                 || Set#IsMember(##S#0_0_0_0_0_8, 
                                  $Box(_module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, kn#0, S#0)));
                            assert {:id "id1056"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_0_0_8)
                               ==> _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_0_0_8)
                                 || Set#IsMember(##S#0_0_0_0_0_8, $Box(null));
                            assert {:id "id1057"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_0_0_8)
                               ==> _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_0_0_8)
                                 || (forall n#0_0_0_0_0_8: ref :: 
                                  { $Unbox(read($Heap, n#0_0_0_0_0_8, _module.Node.next)): ref } 
                                  $Is(n#0_0_0_0_0_8, Tclass._module.Node?())
                                     ==> 
                                    Set#IsMember(##S#0_0_0_0_0_8, $Box(n#0_0_0_0_0_8))
                                       && n#0_0_0_0_0_8 != null
                                       && $Unbox(read($Heap, n#0_0_0_0_0_8, _module.Node.next)): ref != null
                                     ==> Set#IsMember(##S#0_0_0_0_0_8, read($Heap, n#0_0_0_0_0_8, _module.Node.next)));
                            assert {:id "id1058"} {:subsumption 0} LitInt(0) <= ##k#0_0_0_0_0_8;
                            assume _module.Node.Nexxxt#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), 1 + ln#0_0, S#0);
                            // assume allocatedness for receiver argument to function
                            assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                            ##k#0_0_0_0_0_9 := kn#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##k#0_0_0_0_0_9, TInt, $Heap);
                            ##S#0_0_0_0_0_9 := S#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##S#0_0_0_0_0_9, TSet(Tclass._module.Node?()), $Heap);
                            assert {:id "id1059"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_0_0_9)
                               ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_0_0_9)
                                 || Set#IsMember(##S#0_0_0_0_0_9, $Box(this));
                            assert {:id "id1060"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_0_0_9)
                               ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_0_0_9)
                                 || Set#IsMember(##S#0_0_0_0_0_9, $Box(null));
                            assert {:id "id1061"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_0_0_9)
                               ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_0_0_9)
                                 || (forall n#0_0_0_0_0_9: ref :: 
                                  { $Unbox(read($Heap, n#0_0_0_0_0_9, _module.Node.next)): ref } 
                                  $Is(n#0_0_0_0_0_9, Tclass._module.Node?())
                                     ==> 
                                    Set#IsMember(##S#0_0_0_0_0_9, $Box(n#0_0_0_0_0_9))
                                       && n#0_0_0_0_0_9 != null
                                       && $Unbox(read($Heap, n#0_0_0_0_0_9, _module.Node.next)): ref != null
                                     ==> Set#IsMember(##S#0_0_0_0_0_9, read($Heap, n#0_0_0_0_0_9, _module.Node.next)));
                            assert {:id "id1062"} {:subsumption 0} LitInt(0) <= ##k#0_0_0_0_0_9;
                            assume _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0);
                            assert {:id "id1063"} {:subsumption 0} _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0) != null;
                            // assume allocatedness for receiver argument to function
                            assume $IsAllocBox($Box(_module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0)), 
                              Tclass._module.Node?(), 
                              $Heap);
                            ##k#0_0_0_0_0_10 := nn#0_0_0_0_0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##k#0_0_0_0_0_10, TInt, $Heap);
                            ##S#0_0_0_0_0_10 := S#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##S#0_0_0_0_0_10, TSet(Tclass._module.Node?()), $Heap);
                            assert {:id "id1064"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_0_0_10)
                               ==> _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_0_0_10)
                                 || Set#IsMember(##S#0_0_0_0_0_10, 
                                  $Box(_module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, kn#0, S#0)));
                            assert {:id "id1065"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_0_0_10)
                               ==> _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_0_0_10)
                                 || Set#IsMember(##S#0_0_0_0_0_10, $Box(null));
                            assert {:id "id1066"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_0_0_10)
                               ==> _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_0_0_10)
                                 || (forall n#0_0_0_0_0_10: ref :: 
                                  { $Unbox(read($Heap, n#0_0_0_0_0_10, _module.Node.next)): ref } 
                                  $Is(n#0_0_0_0_0_10, Tclass._module.Node?())
                                     ==> 
                                    Set#IsMember(##S#0_0_0_0_0_10, $Box(n#0_0_0_0_0_10))
                                       && n#0_0_0_0_0_10 != null
                                       && $Unbox(read($Heap, n#0_0_0_0_0_10, _module.Node.next)): ref != null
                                     ==> Set#IsMember(##S#0_0_0_0_0_10, read($Heap, n#0_0_0_0_0_10, _module.Node.next)));
                            assert {:id "id1067"} {:subsumption 0} LitInt(0) <= ##k#0_0_0_0_0_10;
                            assume _module.Node.Nexxxt#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), nn#0_0_0_0_0, S#0);
                            assert {:id "id1068"} {:subsumption 0} _module.Node.Nexxxt($LS($LZ), 
                                $Heap, 
                                _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), 
                                nn#0_0_0_0_0, 
                                S#0)
                               != null;
                            // assume allocatedness for receiver argument to function
                            assume $IsAllocBox($Box(_module.Node.Nexxxt($LS($LZ), 
                                  $Heap, 
                                  _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), 
                                  nn#0_0_0_0_0, 
                                  S#0)), 
                              Tclass._module.Node?(), 
                              $Heap);
                            ##k#0_0_0_0_0_11 := 1 + ln#0_0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##k#0_0_0_0_0_11, TInt, $Heap);
                            ##S#0_0_0_0_0_11 := S#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##S#0_0_0_0_0_11, TSet(Tclass._module.Node?()), $Heap);
                            assert {:id "id1069"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, 
                                _module.Node.Nexxxt($LS($LZ), 
                                  $Heap, 
                                  _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), 
                                  nn#0_0_0_0_0, 
                                  S#0), 
                                ##S#0_0_0_0_0_11)
                               ==> _module.Node.IsClosed($Heap, 
                                  _module.Node.Nexxxt($LS($LZ), 
                                    $Heap, 
                                    _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), 
                                    nn#0_0_0_0_0, 
                                    S#0), 
                                  ##S#0_0_0_0_0_11)
                                 || Set#IsMember(##S#0_0_0_0_0_11, 
                                  $Box(_module.Node.Nexxxt($LS($LS($LZ)), 
                                      $Heap, 
                                      _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, kn#0, S#0), 
                                      nn#0_0_0_0_0, 
                                      S#0)));
                            assert {:id "id1070"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, 
                                _module.Node.Nexxxt($LS($LZ), 
                                  $Heap, 
                                  _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), 
                                  nn#0_0_0_0_0, 
                                  S#0), 
                                ##S#0_0_0_0_0_11)
                               ==> _module.Node.IsClosed($Heap, 
                                  _module.Node.Nexxxt($LS($LZ), 
                                    $Heap, 
                                    _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), 
                                    nn#0_0_0_0_0, 
                                    S#0), 
                                  ##S#0_0_0_0_0_11)
                                 || Set#IsMember(##S#0_0_0_0_0_11, $Box(null));
                            assert {:id "id1071"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, 
                                _module.Node.Nexxxt($LS($LZ), 
                                  $Heap, 
                                  _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), 
                                  nn#0_0_0_0_0, 
                                  S#0), 
                                ##S#0_0_0_0_0_11)
                               ==> _module.Node.IsClosed($Heap, 
                                  _module.Node.Nexxxt($LS($LZ), 
                                    $Heap, 
                                    _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), 
                                    nn#0_0_0_0_0, 
                                    S#0), 
                                  ##S#0_0_0_0_0_11)
                                 || (forall n#0_0_0_0_0_11: ref :: 
                                  { $Unbox(read($Heap, n#0_0_0_0_0_11, _module.Node.next)): ref } 
                                  $Is(n#0_0_0_0_0_11, Tclass._module.Node?())
                                     ==> 
                                    Set#IsMember(##S#0_0_0_0_0_11, $Box(n#0_0_0_0_0_11))
                                       && n#0_0_0_0_0_11 != null
                                       && $Unbox(read($Heap, n#0_0_0_0_0_11, _module.Node.next)): ref != null
                                     ==> Set#IsMember(##S#0_0_0_0_0_11, read($Heap, n#0_0_0_0_0_11, _module.Node.next)));
                            assert {:id "id1072"} {:subsumption 0} LitInt(0) <= ##k#0_0_0_0_0_11;
                            assume _module.Node.Nexxxt#canCall($Heap, 
                              _module.Node.Nexxxt($LS($LZ), 
                                $Heap, 
                                _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), 
                                nn#0_0_0_0_0, 
                                S#0), 
                              1 + ln#0_0, 
                              S#0);
                        }

                        assume _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0)
                           && 
                          _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0)
                           && _module.Node.Nexxxt#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), nn#0_0_0_0_0, S#0)
                           && (_module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0)
                               == _module.Node.Nexxxt($LS($LZ), 
                                $Heap, 
                                _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), 
                                nn#0_0_0_0_0, 
                                S#0)
                             ==> _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0)
                               && _module.Node.Nexxxt#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), nn#0_0_0_0_0, S#0)
                               && 
                              _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0)
                               && _module.Node.Nexxxt#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), 1 + ln#0_0, S#0)
                               && (_module.Node.Nexxxt($LS($LZ), 
                                    $Heap, 
                                    _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), 
                                    nn#0_0_0_0_0, 
                                    S#0)
                                   == _module.Node.Nexxxt($LS($LZ), 
                                    $Heap, 
                                    _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), 
                                    1 + ln#0_0, 
                                    S#0)
                                 ==> _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0)
                                   && _module.Node.Nexxxt#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), 1 + ln#0_0, S#0)
                                   && 
                                  _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0)
                                   && _module.Node.Nexxxt#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), nn#0_0_0_0_0, S#0)
                                   && _module.Node.Nexxxt#canCall($Heap, 
                                    _module.Node.Nexxxt($LS($LZ), 
                                      $Heap, 
                                      _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), 
                                      nn#0_0_0_0_0, 
                                      S#0), 
                                    1 + ln#0_0, 
                                    S#0)));
                        assert {:id "id1073"} {:subsumption 0} _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, kn#0, S#0)
                           == _module.Node.Nexxxt($LS($LS($LZ)), 
                            $Heap, 
                            _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, kn#0, S#0), 
                            nn#0_0_0_0_0, 
                            S#0);
                        assert {:id "id1074"} {:subsumption 0} _module.Node.Nexxxt($LS($LS($LZ)), 
                            $Heap, 
                            _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, kn#0, S#0), 
                            nn#0_0_0_0_0, 
                            S#0)
                           == _module.Node.Nexxxt($LS($LS($LZ)), 
                            $Heap, 
                            _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, kn#0, S#0), 
                            1 + ln#0_0, 
                            S#0);
                        assert {:id "id1075"} {:subsumption 0} _module.Node.Nexxxt($LS($LS($LZ)), 
                            $Heap, 
                            _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, kn#0, S#0), 
                            1 + ln#0_0, 
                            S#0)
                           == _module.Node.Nexxxt($LS($LS($LZ)), 
                            $Heap, 
                            _module.Node.Nexxxt($LS($LS($LZ)), 
                              $Heap, 
                              _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, kn#0, S#0), 
                              nn#0_0_0_0_0, 
                              S#0), 
                            1 + ln#0_0, 
                            S#0);
                        assume {:id "id1076"} _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0)
                             == _module.Node.Nexxxt($LS($LZ), 
                              $Heap, 
                              _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), 
                              nn#0_0_0_0_0, 
                              S#0)
                           && _module.Node.Nexxxt($LS($LZ), 
                              $Heap, 
                              _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), 
                              nn#0_0_0_0_0, 
                              S#0)
                             == _module.Node.Nexxxt($LS($LZ), 
                              $Heap, 
                              _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), 
                              1 + ln#0_0, 
                              S#0)
                           && _module.Node.Nexxxt($LS($LZ), 
                              $Heap, 
                              _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), 
                              1 + ln#0_0, 
                              S#0)
                             == _module.Node.Nexxxt($LS($LZ), 
                              $Heap, 
                              _module.Node.Nexxxt($LS($LZ), 
                                $Heap, 
                                _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), 
                                nn#0_0_0_0_0, 
                                S#0), 
                              1 + ln#0_0, 
                              S#0);
                        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(381,53)
                        // TrCallStmt: Before ProcessCallStmt
                        // assume allocatedness for receiver argument to function
                        assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                        ##k#0_0_0_0_0_12 := kn#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##k#0_0_0_0_0_12, TInt, $Heap);
                        ##S#0_0_0_0_0_12 := S#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##S#0_0_0_0_0_12, TSet(Tclass._module.Node?()), $Heap);
                        assert {:id "id1077"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_0_0_12)
                           ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_0_0_12)
                             || Set#IsMember(##S#0_0_0_0_0_12, $Box(this));
                        assert {:id "id1078"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_0_0_12)
                           ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_0_0_12)
                             || Set#IsMember(##S#0_0_0_0_0_12, $Box(null));
                        assert {:id "id1079"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_0_0_12)
                           ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_0_0_12)
                             || (forall n#0_0_0_0_0_12: ref :: 
                              { $Unbox(read($Heap, n#0_0_0_0_0_12, _module.Node.next)): ref } 
                              $Is(n#0_0_0_0_0_12, Tclass._module.Node?())
                                 ==> 
                                Set#IsMember(##S#0_0_0_0_0_12, $Box(n#0_0_0_0_0_12))
                                   && n#0_0_0_0_0_12 != null
                                   && $Unbox(read($Heap, n#0_0_0_0_0_12, _module.Node.next)): ref != null
                                 ==> Set#IsMember(##S#0_0_0_0_0_12, read($Heap, n#0_0_0_0_0_12, _module.Node.next)));
                        assert {:id "id1080"} {:subsumption 0} LitInt(0) <= ##k#0_0_0_0_0_12;
                        assume _module.Node.IsClosed($Heap, this, ##S#0_0_0_0_0_12)
                           && LitInt(0) <= ##k#0_0_0_0_0_12;
                        assume _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0);
                        assume _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0);
                        assert {:id "id1081"} _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0) != null;
                        assume true;
                        // ProcessCallStmt: CheckSubrange
                        x##0_0_0_0_0_0 := 1 + ln#0_0;
                        assume true;
                        // ProcessCallStmt: CheckSubrange
                        y##0_0_0_0_0_0 := nn#0_0_0_0_0;
                        assume true;
                        // ProcessCallStmt: CheckSubrange
                        S##0_0_0_0_0_0 := S#0;
                        call {:id "id1082"} Call$$_module.Node.Lemma__NexxxtIsTransitive(_module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), x##0_0_0_0_0_0, y##0_0_0_0_0_0, S##0_0_0_0_0_0);
                        // TrCallStmt: After ProcessCallStmt
                        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(382,15)
                        // assume allocatedness for receiver argument to function
                        assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                        ##k#0_0_0_0_0_13 := kn#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##k#0_0_0_0_0_13, TInt, $Heap);
                        ##S#0_0_0_0_0_13 := S#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##S#0_0_0_0_0_13, TSet(Tclass._module.Node?()), $Heap);
                        assert {:id "id1083"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_0_0_13)
                           ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_0_0_13)
                             || Set#IsMember(##S#0_0_0_0_0_13, $Box(this));
                        assert {:id "id1084"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_0_0_13)
                           ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_0_0_13)
                             || Set#IsMember(##S#0_0_0_0_0_13, $Box(null));
                        assert {:id "id1085"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_0_0_13)
                           ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_0_0_13)
                             || (forall n#0_0_0_0_0_13: ref :: 
                              { $Unbox(read($Heap, n#0_0_0_0_0_13, _module.Node.next)): ref } 
                              $Is(n#0_0_0_0_0_13, Tclass._module.Node?())
                                 ==> 
                                Set#IsMember(##S#0_0_0_0_0_13, $Box(n#0_0_0_0_0_13))
                                   && n#0_0_0_0_0_13 != null
                                   && $Unbox(read($Heap, n#0_0_0_0_0_13, _module.Node.next)): ref != null
                                 ==> Set#IsMember(##S#0_0_0_0_0_13, read($Heap, n#0_0_0_0_0_13, _module.Node.next)));
                        assert {:id "id1086"} {:subsumption 0} LitInt(0) <= ##k#0_0_0_0_0_13;
                        assume _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0);
                        assert {:id "id1087"} {:subsumption 0} _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0) != null;
                        // assume allocatedness for receiver argument to function
                        assume $IsAllocBox($Box(_module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0)), 
                          Tclass._module.Node?(), 
                          $Heap);
                        ##k#0_0_0_0_0_14 := nn#0_0_0_0_0 + 1 + ln#0_0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##k#0_0_0_0_0_14, TInt, $Heap);
                        ##S#0_0_0_0_0_14 := S#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##S#0_0_0_0_0_14, TSet(Tclass._module.Node?()), $Heap);
                        assert {:id "id1088"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_0_0_14)
                           ==> _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_0_0_14)
                             || Set#IsMember(##S#0_0_0_0_0_14, 
                              $Box(_module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, kn#0, S#0)));
                        assert {:id "id1089"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_0_0_14)
                           ==> _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_0_0_14)
                             || Set#IsMember(##S#0_0_0_0_0_14, $Box(null));
                        assert {:id "id1090"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_0_0_14)
                           ==> _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_0_0_14)
                             || (forall n#0_0_0_0_0_14: ref :: 
                              { $Unbox(read($Heap, n#0_0_0_0_0_14, _module.Node.next)): ref } 
                              $Is(n#0_0_0_0_0_14, Tclass._module.Node?())
                                 ==> 
                                Set#IsMember(##S#0_0_0_0_0_14, $Box(n#0_0_0_0_0_14))
                                   && n#0_0_0_0_0_14 != null
                                   && $Unbox(read($Heap, n#0_0_0_0_0_14, _module.Node.next)): ref != null
                                 ==> Set#IsMember(##S#0_0_0_0_0_14, read($Heap, n#0_0_0_0_0_14, _module.Node.next)));
                        assert {:id "id1091"} {:subsumption 0} LitInt(0) <= ##k#0_0_0_0_0_14;
                        assume _module.Node.Nexxxt#canCall($Heap, 
                          _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), 
                          nn#0_0_0_0_0 + 1 + ln#0_0, 
                          S#0);
                        // assume allocatedness for receiver argument to function
                        assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                        ##k#0_0_0_0_0_15 := kn#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##k#0_0_0_0_0_15, TInt, $Heap);
                        ##S#0_0_0_0_0_15 := S#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##S#0_0_0_0_0_15, TSet(Tclass._module.Node?()), $Heap);
                        assert {:id "id1092"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_0_0_15)
                           ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_0_0_15)
                             || Set#IsMember(##S#0_0_0_0_0_15, $Box(this));
                        assert {:id "id1093"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_0_0_15)
                           ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_0_0_15)
                             || Set#IsMember(##S#0_0_0_0_0_15, $Box(null));
                        assert {:id "id1094"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_0_0_15)
                           ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_0_0_15)
                             || (forall n#0_0_0_0_0_15: ref :: 
                              { $Unbox(read($Heap, n#0_0_0_0_0_15, _module.Node.next)): ref } 
                              $Is(n#0_0_0_0_0_15, Tclass._module.Node?())
                                 ==> 
                                Set#IsMember(##S#0_0_0_0_0_15, $Box(n#0_0_0_0_0_15))
                                   && n#0_0_0_0_0_15 != null
                                   && $Unbox(read($Heap, n#0_0_0_0_0_15, _module.Node.next)): ref != null
                                 ==> Set#IsMember(##S#0_0_0_0_0_15, read($Heap, n#0_0_0_0_0_15, _module.Node.next)));
                        assert {:id "id1095"} {:subsumption 0} LitInt(0) <= ##k#0_0_0_0_0_15;
                        assume _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0);
                        assume _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0)
                           && _module.Node.Nexxxt#canCall($Heap, 
                            _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), 
                            nn#0_0_0_0_0 + 1 + ln#0_0, 
                            S#0)
                           && _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0);
                        assert {:id "id1096"} {:subsumption 0} _module.Node.Nexxxt($LS($LS($LZ)), 
                            $Heap, 
                            _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, kn#0, S#0), 
                            nn#0_0_0_0_0 + 1 + ln#0_0, 
                            S#0)
                           == _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, kn#0, S#0);
                        assume {:id "id1097"} _module.Node.Nexxxt($LS($LZ), 
                            $Heap, 
                            _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), 
                            nn#0_0_0_0_0 + 1 + ln#0_0, 
                            S#0)
                           == _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0);
                        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(383,18)
                        assume true;
                        assume true;
                        nn#0_0_0_0_0 := nn#0_0_0_0_0 + 1 + ln#0_0;
                        pop;
                        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(373,13)
                        assert {:id "id1099"} 0 <= $decr$loop#0_0_0_0_00 || n#0 - nn#0_0_0_0_0 == $decr$loop#0_0_0_0_00;
                        assert {:id "id1100"} n#0 - nn#0_0_0_0_0 < $decr$loop#0_0_0_0_00;
                        assume LitInt(0) <= nn#0_0_0_0_0
                           ==> _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0)
                             && _module.Node.Nexxxt#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), nn#0_0_0_0_0, S#0)
                             && _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0);
                    }

                    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(385,37)
                    // TrCallStmt: Before ProcessCallStmt
                    assume true;
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    x##0_0_0_0_0 := kn#0;
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    y##0_0_0_0_0 := nn#0_0_0_0_0;
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    S##0_0_0_0_0 := S#0;
                    call {:id "id1101"} Call$$_module.Node.Lemma__NexxxtIsTransitive(this, x##0_0_0_0_0, y##0_0_0_0_0, S##0_0_0_0_0);
                    // TrCallStmt: After ProcessCallStmt
                    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(386,13)
                    // assume allocatedness for receiver argument to function
                    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                    ##k#0_0_0_0_3 := kn#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##k#0_0_0_0_3, TInt, $Heap);
                    ##S#0_0_0_0_3 := S#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##S#0_0_0_0_3, TSet(Tclass._module.Node?()), $Heap);
                    assert {:id "id1102"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_0_3)
                       ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_0_3)
                         || Set#IsMember(##S#0_0_0_0_3, $Box(this));
                    assert {:id "id1103"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_0_3)
                       ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_0_3)
                         || Set#IsMember(##S#0_0_0_0_3, $Box(null));
                    assert {:id "id1104"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_0_3)
                       ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_0_3)
                         || (forall n#0_0_0_0_3: ref :: 
                          { $Unbox(read($Heap, n#0_0_0_0_3, _module.Node.next)): ref } 
                          $Is(n#0_0_0_0_3, Tclass._module.Node?())
                             ==> 
                            Set#IsMember(##S#0_0_0_0_3, $Box(n#0_0_0_0_3))
                               && n#0_0_0_0_3 != null
                               && $Unbox(read($Heap, n#0_0_0_0_3, _module.Node.next)): ref != null
                             ==> Set#IsMember(##S#0_0_0_0_3, read($Heap, n#0_0_0_0_3, _module.Node.next)));
                    assert {:id "id1105"} {:subsumption 0} LitInt(0) <= ##k#0_0_0_0_3;
                    assume _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0);
                    assert {:id "id1106"} {:subsumption 0} _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0) != null;
                    // assume allocatedness for receiver argument to function
                    assume $IsAllocBox($Box(_module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0)), 
                      Tclass._module.Node?(), 
                      $Heap);
                    ##k#0_0_0_0_4 := nn#0_0_0_0_0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##k#0_0_0_0_4, TInt, $Heap);
                    ##S#0_0_0_0_4 := S#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##S#0_0_0_0_4, TSet(Tclass._module.Node?()), $Heap);
                    assert {:id "id1107"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_0_4)
                       ==> _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_0_4)
                         || Set#IsMember(##S#0_0_0_0_4, $Box(_module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, kn#0, S#0)));
                    assert {:id "id1108"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_0_4)
                       ==> _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_0_4)
                         || Set#IsMember(##S#0_0_0_0_4, $Box(null));
                    assert {:id "id1109"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_0_4)
                       ==> _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), ##S#0_0_0_0_4)
                         || (forall n#0_0_0_0_4: ref :: 
                          { $Unbox(read($Heap, n#0_0_0_0_4, _module.Node.next)): ref } 
                          $Is(n#0_0_0_0_4, Tclass._module.Node?())
                             ==> 
                            Set#IsMember(##S#0_0_0_0_4, $Box(n#0_0_0_0_4))
                               && n#0_0_0_0_4 != null
                               && $Unbox(read($Heap, n#0_0_0_0_4, _module.Node.next)): ref != null
                             ==> Set#IsMember(##S#0_0_0_0_4, read($Heap, n#0_0_0_0_4, _module.Node.next)));
                    assert {:id "id1110"} {:subsumption 0} LitInt(0) <= ##k#0_0_0_0_4;
                    assume _module.Node.Nexxxt#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), nn#0_0_0_0_0, S#0);
                    // assume allocatedness for receiver argument to function
                    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                    ##k#0_0_0_0_5 := kn#0 + nn#0_0_0_0_0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##k#0_0_0_0_5, TInt, $Heap);
                    ##S#0_0_0_0_5 := S#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##S#0_0_0_0_5, TSet(Tclass._module.Node?()), $Heap);
                    assert {:id "id1111"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_0_5)
                       ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_0_5)
                         || Set#IsMember(##S#0_0_0_0_5, $Box(this));
                    assert {:id "id1112"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_0_5)
                       ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_0_5)
                         || Set#IsMember(##S#0_0_0_0_5, $Box(null));
                    assert {:id "id1113"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_0_5)
                       ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_0_5)
                         || (forall n#0_0_0_0_5: ref :: 
                          { $Unbox(read($Heap, n#0_0_0_0_5, _module.Node.next)): ref } 
                          $Is(n#0_0_0_0_5, Tclass._module.Node?())
                             ==> 
                            Set#IsMember(##S#0_0_0_0_5, $Box(n#0_0_0_0_5))
                               && n#0_0_0_0_5 != null
                               && $Unbox(read($Heap, n#0_0_0_0_5, _module.Node.next)): ref != null
                             ==> Set#IsMember(##S#0_0_0_0_5, read($Heap, n#0_0_0_0_5, _module.Node.next)));
                    assert {:id "id1114"} {:subsumption 0} LitInt(0) <= ##k#0_0_0_0_5;
                    assume _module.Node.Nexxxt#canCall($Heap, this, kn#0 + nn#0_0_0_0_0, S#0);
                    assume _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0)
                       && _module.Node.Nexxxt#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), nn#0_0_0_0_0, S#0)
                       && _module.Node.Nexxxt#canCall($Heap, this, kn#0 + nn#0_0_0_0_0, S#0);
                    assert {:id "id1115"} {:subsumption 0} _module.Node.Nexxxt($LS($LS($LZ)), 
                        $Heap, 
                        _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, kn#0, S#0), 
                        nn#0_0_0_0_0, 
                        S#0)
                       == _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, kn#0 + nn#0_0_0_0_0, S#0);
                    assume {:id "id1116"} _module.Node.Nexxxt($LS($LZ), 
                        $Heap, 
                        _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), 
                        nn#0_0_0_0_0, 
                        S#0)
                       == _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0 + nn#0_0_0_0_0, S#0);
                    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(387,13)
                    // Begin Comprehension WF check
                    havoc j#0_0_0_0_0;
                    if (true)
                    {
                        if (n#0 <= j#0_0_0_0_0)
                        {
                            // assume allocatedness for receiver argument to function
                            assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                            ##k#0_0_0_0_6 := j#0_0_0_0_0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##k#0_0_0_0_6, TInt, $Heap);
                            ##S#0_0_0_0_6 := S#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##S#0_0_0_0_6, TSet(Tclass._module.Node?()), $Heap);
                            assert {:id "id1117"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_0_6)
                               ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_0_6)
                                 || Set#IsMember(##S#0_0_0_0_6, $Box(this));
                            assert {:id "id1118"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_0_6)
                               ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_0_6)
                                 || Set#IsMember(##S#0_0_0_0_6, $Box(null));
                            assert {:id "id1119"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_0_6)
                               ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_0_6)
                                 || (forall n#0_0_0_0_6: ref :: 
                                  { $Unbox(read($Heap, n#0_0_0_0_6, _module.Node.next)): ref } 
                                  $Is(n#0_0_0_0_6, Tclass._module.Node?())
                                     ==> 
                                    Set#IsMember(##S#0_0_0_0_6, $Box(n#0_0_0_0_6))
                                       && n#0_0_0_0_6 != null
                                       && $Unbox(read($Heap, n#0_0_0_0_6, _module.Node.next)): ref != null
                                     ==> Set#IsMember(##S#0_0_0_0_6, read($Heap, n#0_0_0_0_6, _module.Node.next)));
                            assert {:id "id1120"} {:subsumption 0} LitInt(0) <= ##k#0_0_0_0_6;
                            assume _module.Node.Nexxxt#canCall($Heap, this, j#0_0_0_0_0, S#0);
                            newtype$check#0_0_0_0_0 := null;
                        }
                    }

                    // End Comprehension WF check
                    assume (forall j#0_0_0_0_1: int :: 
                      { _module.Node.Nexxxt($LS($LZ), $Heap, this, j#0_0_0_0_1, S#0) } 
                      n#0 <= j#0_0_0_0_1
                         ==> _module.Node.Nexxxt#canCall($Heap, this, j#0_0_0_0_1, S#0));
                    assert {:id "id1121"} {:subsumption 0} (forall j#0_0_0_0_1: int :: 
                      { _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, j#0_0_0_0_1, S#0) } 
                      (forall j$ih#0_0_0_0_0#0_0_0_0_0: int :: 
                            { _module.Node.Nexxxt($LS($LZ), $Heap, this, j$ih#0_0_0_0_0#0_0_0_0_0, S#0) } 
                            0 <= j$ih#0_0_0_0_0#0_0_0_0_0 && j$ih#0_0_0_0_0#0_0_0_0_0 < j#0_0_0_0_1
                               ==> 
                              n#0 <= j$ih#0_0_0_0_0#0_0_0_0_0
                               ==> _module.Node.Nexxxt($LS($LZ), $Heap, this, j$ih#0_0_0_0_0#0_0_0_0_0, S#0)
                                 == null)
                           && true
                         ==> 
                        n#0 <= j#0_0_0_0_1
                         ==> _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, j#0_0_0_0_1, S#0) == null);
                    assume {:id "id1122"} (forall j#0_0_0_0_1: int :: 
                      { _module.Node.Nexxxt($LS($LZ), $Heap, this, j#0_0_0_0_1, S#0) } 
                      n#0 <= j#0_0_0_0_1
                         ==> _module.Node.Nexxxt($LS($LZ), $Heap, this, j#0_0_0_0_1, S#0) == null);
                    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(388,13)
                    assume true;
                    assert {:id "id1123"} Lit(false);
                    pop;
                }
                else
                {
                }

                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(390,11)
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                ##k#0_0_0_10 := kn#0 + 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##k#0_0_0_10, TInt, $Heap);
                ##S#0_0_0_10 := S#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##S#0_0_0_10, TSet(Tclass._module.Node?()), $Heap);
                assert {:id "id1124"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_10)
                   ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_10)
                     || Set#IsMember(##S#0_0_0_10, $Box(this));
                assert {:id "id1125"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_10)
                   ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_10)
                     || Set#IsMember(##S#0_0_0_10, $Box(null));
                assert {:id "id1126"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_10)
                   ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_10)
                     || (forall n#0_0_0_10: ref :: 
                      { $Unbox(read($Heap, n#0_0_0_10, _module.Node.next)): ref } 
                      $Is(n#0_0_0_10, Tclass._module.Node?())
                         ==> 
                        Set#IsMember(##S#0_0_0_10, $Box(n#0_0_0_10))
                           && n#0_0_0_10 != null
                           && $Unbox(read($Heap, n#0_0_0_10, _module.Node.next)): ref != null
                         ==> Set#IsMember(##S#0_0_0_10, read($Heap, n#0_0_0_10, _module.Node.next)));
                assert {:id "id1127"} {:subsumption 0} LitInt(0) <= ##k#0_0_0_10;
                assume _module.Node.Nexxxt#canCall($Heap, this, kn#0 + 1, S#0);
                assert {:id "id1128"} {:subsumption 0} _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0 + 1, S#0) != null;
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(_module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0 + 1, S#0)), 
                  Tclass._module.Node?(), 
                  $Heap);
                ##k#0_0_0_11 := ln#0_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##k#0_0_0_11, TInt, $Heap);
                ##S#0_0_0_11 := S#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##S#0_0_0_11, TSet(Tclass._module.Node?()), $Heap);
                assert {:id "id1129"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0 + 1, S#0), ##S#0_0_0_11)
                   ==> _module.Node.IsClosed($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0 + 1, S#0), ##S#0_0_0_11);
                assert {:id "id1130"} {:subsumption 0} LitInt(0) <= ##k#0_0_0_11;
                assume _module.Node.Nexxxt#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0 + 1, S#0), ln#0_0, S#0);
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
                ##k#0_0_0_12 := kn#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##k#0_0_0_12, TInt, $Heap);
                ##S#0_0_0_12 := S#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##S#0_0_0_12, TSet(Tclass._module.Node?()), $Heap);
                assert {:id "id1131"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_12)
                   ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_12)
                     || Set#IsMember(##S#0_0_0_12, $Box(this));
                assert {:id "id1132"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_12)
                   ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_12)
                     || Set#IsMember(##S#0_0_0_12, $Box(null));
                assert {:id "id1133"} {:subsumption 0} _module.Node.IsClosed#canCall($Heap, this, ##S#0_0_0_12)
                   ==> _module.Node.IsClosed($Heap, this, ##S#0_0_0_12)
                     || (forall n#0_0_0_11: ref :: 
                      { $Unbox(read($Heap, n#0_0_0_11, _module.Node.next)): ref } 
                      $Is(n#0_0_0_11, Tclass._module.Node?())
                         ==> 
                        Set#IsMember(##S#0_0_0_12, $Box(n#0_0_0_11))
                           && n#0_0_0_11 != null
                           && $Unbox(read($Heap, n#0_0_0_11, _module.Node.next)): ref != null
                         ==> Set#IsMember(##S#0_0_0_12, read($Heap, n#0_0_0_11, _module.Node.next)));
                assert {:id "id1134"} {:subsumption 0} LitInt(0) <= ##k#0_0_0_12;
                assume _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0);
                assume _module.Node.Nexxxt#canCall($Heap, this, kn#0 + 1, S#0)
                   && _module.Node.Nexxxt#canCall($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0 + 1, S#0), ln#0_0, S#0)
                   && _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0);
                assert {:id "id1135"} {:subsumption 0} _module.Node.Nexxxt($LS($LS($LZ)), 
                    $Heap, 
                    _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, kn#0 + 1, S#0), 
                    ln#0_0, 
                    S#0)
                   != _module.Node.Nexxxt($LS($LS($LZ)), $Heap, this, kn#0, S#0);
                assume {:id "id1136"} _module.Node.Nexxxt($LS($LZ), 
                    $Heap, 
                    _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0 + 1, S#0), 
                    ln#0_0, 
                    S#0)
                   != _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0);
                pop;
            }
            else
            {
            }

            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(392,12)
            assume true;
            assume true;
            ln#0_0 := ln#0_0 + 1;
            pop;
            // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(357,7)
            assert {:id "id1138"} 0 <= $decr$loop#0_00 || n#0 - ln#0_0 == $decr$loop#0_00;
            assert {:id "id1139"} n#0 - ln#0_0 < $decr$loop#0_00;
            assume LitInt(0) <= ln#0_0 && ln#0_0 <= n#0
               ==> (forall k#0_1: int, l#0_1: int :: 
                  { _module.Node.Nexxxt($LS($LZ), 
                      $Heap, 
                      $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_1, S#0), _module.Node.next)): ref, 
                      l#0_1, 
                      S#0) } 
                  LitInt(0) <= k#0_1 && k#0_1 < kn#0
                     ==> 
                    LitInt(0) <= l#0_1 && l#0_1 < n#0
                     ==> _module.Node.Nexxxt#canCall($Heap, this, k#0_1, S#0)
                       && (_module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_1, S#0) != null
                         ==> _module.Node.Nexxxt#canCall($Heap, this, k#0_1, S#0)
                           && ($Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_1, S#0), _module.Node.next)): ref
                               != null
                             ==> _module.Node.Nexxxt#canCall($Heap, this, k#0_1, S#0)
                               && _module.Node.Nexxxt#canCall($Heap, 
                                $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_1, S#0), _module.Node.next)): ref, 
                                l#0_1, 
                                S#0)
                               && _module.Node.Nexxxt#canCall($Heap, this, k#0_1, S#0))))
                 && ((forall k#0_1: int, l#0_1: int :: 
                    { _module.Node.Nexxxt($LS($LZ), 
                        $Heap, 
                        $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_1, S#0), _module.Node.next)): ref, 
                        l#0_1, 
                        S#0) } 
                    LitInt(0) <= k#0_1
                         && k#0_1 < kn#0
                         && 
                        LitInt(0) <= l#0_1
                         && l#0_1 < n#0
                         && _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_1, S#0) != null
                         && $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_1, S#0), _module.Node.next)): ref
                           != null
                       ==> _module.Node.Nexxxt($LS($LZ), 
                          $Heap, 
                          $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_1, S#0), _module.Node.next)): ref, 
                          l#0_1, 
                          S#0)
                         != _module.Node.Nexxxt($LS($LZ), $Heap, this, k#0_1, S#0))
                   ==> (forall l#0_3: int :: 
                    { _module.Node.Nexxxt($LS($LZ), 
                        $Heap, 
                        $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), _module.Node.next)): ref, 
                        l#0_3, 
                        S#0) } 
                    LitInt(0) <= l#0_3 && l#0_3 < ln#0_0
                       ==> _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0)
                         && (_module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0) != null
                           ==> _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0)
                             && ($Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), _module.Node.next)): ref
                                 != null
                               ==> _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0)
                                 && _module.Node.Nexxxt#canCall($Heap, 
                                  $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, kn#0, S#0), _module.Node.next)): ref, 
                                  l#0_3, 
                                  S#0)
                                 && _module.Node.Nexxxt#canCall($Heap, this, kn#0, S#0)))));
        }

        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(394,10)
        assume true;
        assume true;
        kn#0 := kn#0 + 1;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-4-FloydCycleDetect.dfy(352,5)
        assert {:id "id1141"} 0 <= $decr$loop#00 || n#0 - kn#0 == $decr$loop#00;
        assert {:id "id1142"} n#0 - kn#0 < $decr$loop#00;
        assume LitInt(0) <= kn#0 && kn#0 <= n#0
           ==> (forall k#4: int, l#4: int :: 
            { _module.Node.Nexxxt($LS($LZ), 
                $Heap, 
                $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#4, S#0), _module.Node.next)): ref, 
                l#4, 
                S#0) } 
            LitInt(0) <= k#4 && k#4 < kn#0
               ==> 
              LitInt(0) <= l#4 && l#4 < n#0
               ==> _module.Node.Nexxxt#canCall($Heap, this, k#4, S#0)
                 && (_module.Node.Nexxxt($LS($LZ), $Heap, this, k#4, S#0) != null
                   ==> _module.Node.Nexxxt#canCall($Heap, this, k#4, S#0)
                     && ($Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#4, S#0), _module.Node.next)): ref
                         != null
                       ==> _module.Node.Nexxxt#canCall($Heap, this, k#4, S#0)
                         && _module.Node.Nexxxt#canCall($Heap, 
                          $Unbox(read($Heap, _module.Node.Nexxxt($LS($LZ), $Heap, this, k#4, S#0), _module.Node.next)): ref, 
                          l#4, 
                          S#0)
                         && _module.Node.Nexxxt#canCall($Heap, this, k#4, S#0))));
    }
}



// $Is axiom for non-null type _module.Node
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.Node()) } { $Is(c#0, Tclass._module.Node?()) } 
  $Is(c#0, Tclass._module.Node())
     <==> $Is(c#0, Tclass._module.Node?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Node
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Node(), $h) } 
    { $IsAlloc(c#0, Tclass._module.Node?(), $h) } 
  $IsAlloc(c#0, Tclass._module.Node(), $h)
     <==> $IsAlloc(c#0, Tclass._module.Node?(), $h));

const unique tytagFamily$nat: TyTagFamily;

const unique tytagFamily$object: TyTagFamily;

const unique tytagFamily$array: TyTagFamily;

const unique tytagFamily$_#Func1: TyTagFamily;

const unique tytagFamily$_#PartialFunc1: TyTagFamily;

const unique tytagFamily$_#TotalFunc1: TyTagFamily;

const unique tytagFamily$_#Func0: TyTagFamily;

const unique tytagFamily$_#PartialFunc0: TyTagFamily;

const unique tytagFamily$_#TotalFunc0: TyTagFamily;

const unique tytagFamily$_tuple#2: TyTagFamily;

const unique tytagFamily$_tuple#0: TyTagFamily;

const unique tytagFamily$_#Func2: TyTagFamily;

const unique tytagFamily$_#PartialFunc2: TyTagFamily;

const unique tytagFamily$_#TotalFunc2: TyTagFamily;

const unique tytagFamily$Node: TyTagFamily;

const unique field$next: NameFamily;
