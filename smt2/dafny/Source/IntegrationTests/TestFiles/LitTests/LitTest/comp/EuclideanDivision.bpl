// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision-@PROC@.smt2 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy

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

const unique class._module.__default: ClassName;

function _module.__default.TWO__15() : int
uses {
axiom _module.__default.TWO__15(): int == LitInt(32768);
// _default.TWO_15: Type axiom
axiom 0 < $FunctionContextHeight ==> $Is(_module.__default.TWO__15(), TInt);
}

procedure {:verboseName "TWO_15 (well-formedness)"} CheckWellFormed$$_module.__default.TWO__15();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// _default.TWO_15: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $h: Heap :: 
    { $IsAlloc(_module.__default.TWO__15(), TInt, $h) } 
    $IsGoodHeap($h) ==> $IsAlloc(_module.__default.TWO__15(), TInt, $h));

function _module.__default.TWO__63() : int
uses {
axiom _module.__default.TWO__63(): int == LitInt(9223372036854775808);
// _default.TWO_63: Type axiom
axiom 0 < $FunctionContextHeight ==> $Is(_module.__default.TWO__63(), TInt);
}

procedure {:verboseName "TWO_63 (well-formedness)"} CheckWellFormed$$_module.__default.TWO__63();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// _default.TWO_63: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $h: Heap :: 
    { $IsAlloc(_module.__default.TWO__63(), TInt, $h) } 
    $IsGoodHeap($h) ==> $IsAlloc(_module.__default.TWO__63(), TInt, $h));

function _module.__default.TWO__127() : int
uses {
axiom _module.__default.TWO__127(): int
   == LitInt(170141183460469231731687303715884105728);
// _default.TWO_127: Type axiom
axiom 0 < $FunctionContextHeight ==> $Is(_module.__default.TWO__127(), TInt);
}

procedure {:verboseName "TWO_127 (well-formedness)"} CheckWellFormed$$_module.__default.TWO__127();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// _default.TWO_127: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $h: Heap :: 
    { $IsAlloc(_module.__default.TWO__127(), TInt, $h) } 
    $IsGoodHeap($h) ==> $IsAlloc(_module.__default.TWO__127(), TInt, $h));

procedure {:verboseName "M0 (well-formedness)"} CheckWellFormed$$_module.__default.M0();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M0 (call)"} Call$$_module.__default.M0();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M0 (correctness)"} Impl$$_module.__default.M0() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M0 (correctness)"} Impl$$_module.__default.M0() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var neg#0: int;
  var pos#0: int;
  var $rhs#0: int;
  var $rhs#1: int;
  var a#0: int;
  var b#0: int;
  var c#0: int;
  var d#0: int;

    // AddMethodImpl: M0, Impl$$_module.__default.M0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    havoc neg#0, pos#0;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(23,12)
    assume true;
    assume true;
    assume true;
    $rhs#0 := LitInt(-6);
    assume true;
    $rhs#1 := LitInt(6);
    neg#0 := $rhs#0;
    pos#0 := $rhs#1;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(27,9)
    assume true;
    assert {:id "id4"} LitInt(-4) != 0;
    assume true;
    a#0 := Div(neg#0, LitInt(-4));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(27,24)
    assume true;
    assert {:id "id6"} a#0 == LitInt(2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(28,9)
    assume true;
    assert {:id "id7"} LitInt(-4) != 0;
    assume true;
    b#0 := Div(pos#0, LitInt(-4));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(28,24)
    assume true;
    assert {:id "id9"} b#0 == LitInt(-1);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(29,9)
    assume true;
    assert {:id "id10"} LitInt(4) != 0;
    assume true;
    c#0 := Div(neg#0, LitInt(4));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(29,24)
    assume true;
    assert {:id "id12"} c#0 == LitInt(-2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(30,9)
    assume true;
    assert {:id "id13"} LitInt(4) != 0;
    assume true;
    d#0 := Div(pos#0, LitInt(4));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(30,24)
    assume true;
    assert {:id "id15"} d#0 == LitInt(1);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(31,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(33,5)
    assume true;
    assert {:id "id16"} LitInt(-2) != 0;
    assume true;
    a#0 := LitInt(Div(-4, LitInt(-2)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(33,21)
    assume true;
    assert {:id "id18"} a#0 == LitInt(2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(34,5)
    assume true;
    assert {:id "id19"} LitInt(-2) != 0;
    assume true;
    b#0 := LitInt(Div(4, LitInt(-2)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(34,21)
    assume true;
    assert {:id "id21"} b#0 == LitInt(-2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(35,5)
    assume true;
    assert {:id "id22"} LitInt(2) != 0;
    assume true;
    c#0 := LitInt(Div(-4, LitInt(2)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(35,21)
    assume true;
    assert {:id "id24"} c#0 == LitInt(-2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(36,5)
    assume true;
    assert {:id "id25"} LitInt(2) != 0;
    assume true;
    d#0 := LitInt(Div(4, LitInt(2)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(36,21)
    assume true;
    assert {:id "id27"} d#0 == LitInt(2);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(37,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(39,5)
    assume true;
    assert {:id "id28"} LitInt(-3) != 0;
    assume true;
    a#0 := LitInt(Div(101, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(39,20)
    assume true;
    assert {:id "id30"} a#0 == LitInt(-33);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(40,5)
    assume true;
    assert {:id "id31"} LitInt(-3) != 0;
    assume true;
    b#0 := LitInt(Div(100, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(40,20)
    assume true;
    assert {:id "id33"} b#0 == LitInt(-33);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(41,5)
    assume true;
    assert {:id "id34"} LitInt(-3) != 0;
    assume true;
    c#0 := LitInt(Div(99, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(41,20)
    assume true;
    assert {:id "id36"} c#0 == LitInt(-33);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(42,5)
    assume true;
    assert {:id "id37"} LitInt(-3) != 0;
    assume true;
    d#0 := LitInt(Div(98, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(42,20)
    assume true;
    assert {:id "id39"} d#0 == LitInt(-32);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(43,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(45,5)
    assume true;
    assert {:id "id40"} LitInt(3) != 0;
    assume true;
    a#0 := LitInt(Div(-101, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(45,20)
    assume true;
    assert {:id "id42"} a#0 == LitInt(-34);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(46,5)
    assume true;
    assert {:id "id43"} LitInt(3) != 0;
    assume true;
    b#0 := LitInt(Div(-100, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(46,20)
    assume true;
    assert {:id "id45"} b#0 == LitInt(-34);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(47,5)
    assume true;
    assert {:id "id46"} LitInt(3) != 0;
    assume true;
    c#0 := LitInt(Div(-99, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(47,20)
    assume true;
    assert {:id "id48"} c#0 == LitInt(-33);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(48,5)
    assume true;
    assert {:id "id49"} LitInt(3) != 0;
    assume true;
    d#0 := LitInt(Div(-98, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(48,20)
    assume true;
    assert {:id "id51"} d#0 == LitInt(-33);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(49,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(53,5)
    assume true;
    assert {:id "id52"} LitInt(-3) != 0;
    assume true;
    a#0 := LitInt(Mod(-101, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(53,23)
    assume true;
    assert {:id "id54"} a#0 == LitInt(1);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(54,5)
    assume true;
    assert {:id "id55"} LitInt(-3) != 0;
    assume true;
    b#0 := LitInt(Mod(-100, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(54,23)
    assume true;
    assert {:id "id57"} b#0 == LitInt(2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(55,5)
    assume true;
    assert {:id "id58"} LitInt(-3) != 0;
    assume true;
    c#0 := LitInt(Mod(-99, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(55,23)
    assume true;
    assert {:id "id60"} c#0 == LitInt(0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(56,5)
    assume true;
    assert {:id "id61"} LitInt(-3) != 0;
    assume true;
    d#0 := LitInt(Mod(-98, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(56,23)
    assume true;
    assert {:id "id63"} d#0 == LitInt(1);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(57,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(59,5)
    assume true;
    assert {:id "id64"} LitInt(-3) != 0;
    assume true;
    a#0 := LitInt(Mod(101, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(59,23)
    assume true;
    assert {:id "id66"} a#0 == LitInt(2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(60,5)
    assume true;
    assert {:id "id67"} LitInt(-3) != 0;
    assume true;
    b#0 := LitInt(Mod(100, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(60,23)
    assume true;
    assert {:id "id69"} b#0 == LitInt(1);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(61,5)
    assume true;
    assert {:id "id70"} LitInt(-3) != 0;
    assume true;
    c#0 := LitInt(Mod(99, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(61,23)
    assume true;
    assert {:id "id72"} c#0 == LitInt(0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(62,5)
    assume true;
    assert {:id "id73"} LitInt(-3) != 0;
    assume true;
    d#0 := LitInt(Mod(98, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(62,23)
    assume true;
    assert {:id "id75"} d#0 == LitInt(2);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(63,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(65,5)
    assume true;
    assert {:id "id76"} LitInt(3) != 0;
    assume true;
    a#0 := LitInt(Mod(-101, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(65,20)
    assume true;
    assert {:id "id78"} a#0 == LitInt(1);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(66,5)
    assume true;
    assert {:id "id79"} LitInt(3) != 0;
    assume true;
    b#0 := LitInt(Mod(-100, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(66,20)
    assume true;
    assert {:id "id81"} b#0 == LitInt(2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(67,5)
    assume true;
    assert {:id "id82"} LitInt(3) != 0;
    assume true;
    c#0 := LitInt(Mod(-99, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(67,20)
    assume true;
    assert {:id "id84"} c#0 == LitInt(0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(68,5)
    assume true;
    assert {:id "id85"} LitInt(3) != 0;
    assume true;
    d#0 := LitInt(Mod(-98, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(68,20)
    assume true;
    assert {:id "id87"} d#0 == LitInt(1);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(69,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(71,5)
    assume true;
    assert {:id "id88"} LitInt(3) != 0;
    assume true;
    a#0 := LitInt(Mod(101, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(71,19)
    assume true;
    assert {:id "id90"} a#0 == LitInt(2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(72,5)
    assume true;
    assert {:id "id91"} LitInt(3) != 0;
    assume true;
    b#0 := LitInt(Mod(100, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(72,19)
    assume true;
    assert {:id "id93"} b#0 == LitInt(1);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(73,5)
    assume true;
    assert {:id "id94"} LitInt(3) != 0;
    assume true;
    c#0 := LitInt(Mod(99, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(73,19)
    assume true;
    assert {:id "id96"} c#0 == LitInt(0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(74,5)
    assume true;
    assert {:id "id97"} LitInt(3) != 0;
    assume true;
    d#0 := LitInt(Mod(98, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(74,19)
    assume true;
    assert {:id "id99"} d#0 == LitInt(2);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(75,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
}



procedure {:verboseName "M1 (well-formedness)"} CheckWellFormed$$_module.__default.M1();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M1 (call)"} Call$$_module.__default.M1();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M1 (correctness)"} Impl$$_module.__default.M1() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M1 (correctness)"} Impl$$_module.__default.M1() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var neg#0: int where Lit(true);
  var pos#0: int where Lit(true);
  var $rhs#0: int;
  var newtype$check#0: int;
  var $rhs#1: int;
  var newtype$check#1: int;
  var a#0: int where Lit(true);
  var newtype$check#2: int;
  var newtype$check#3: int;
  var newtype$check#4: int;
  var b#0: int where Lit(true);
  var newtype$check#5: int;
  var newtype$check#6: int;
  var newtype$check#7: int;
  var c#0: int where Lit(true);
  var newtype$check#8: int;
  var newtype$check#9: int;
  var newtype$check#10: int;
  var d#0: int where Lit(true);
  var newtype$check#11: int;
  var newtype$check#12: int;
  var newtype$check#13: int;
  var newtype$check#14: int;
  var newtype$check#15: int;
  var newtype$check#16: int;
  var newtype$check#17: int;
  var newtype$check#18: int;
  var newtype$check#19: int;
  var newtype$check#20: int;
  var newtype$check#21: int;
  var newtype$check#22: int;
  var newtype$check#23: int;
  var newtype$check#24: int;
  var newtype$check#25: int;
  var newtype$check#26: int;
  var newtype$check#27: int;
  var newtype$check#28: int;
  var newtype$check#29: int;
  var newtype$check#30: int;
  var newtype$check#31: int;
  var newtype$check#32: int;
  var newtype$check#33: int;
  var newtype$check#34: int;
  var newtype$check#35: int;
  var newtype$check#36: int;
  var newtype$check#37: int;
  var newtype$check#38: int;
  var newtype$check#39: int;
  var newtype$check#40: int;
  var newtype$check#41: int;
  var newtype$check#42: int;
  var newtype$check#43: int;
  var newtype$check#44: int;
  var newtype$check#45: int;
  var newtype$check#46: int;
  var newtype$check#47: int;
  var newtype$check#48: int;
  var newtype$check#49: int;
  var newtype$check#50: int;
  var newtype$check#51: int;
  var newtype$check#52: int;
  var newtype$check#53: int;
  var newtype$check#54: int;
  var newtype$check#55: int;
  var newtype$check#56: int;
  var newtype$check#57: int;
  var newtype$check#58: int;
  var newtype$check#59: int;
  var newtype$check#60: int;
  var newtype$check#61: int;
  var newtype$check#62: int;
  var newtype$check#63: int;
  var newtype$check#64: int;
  var newtype$check#65: int;
  var newtype$check#66: int;
  var newtype$check#67: int;
  var newtype$check#68: int;
  var newtype$check#69: int;
  var newtype$check#70: int;
  var newtype$check#71: int;
  var newtype$check#72: int;
  var newtype$check#73: int;
  var newtype$check#74: int;
  var newtype$check#75: int;
  var newtype$check#76: int;
  var newtype$check#77: int;
  var newtype$check#78: int;
  var newtype$check#79: int;
  var newtype$check#80: int;
  var newtype$check#81: int;
  var newtype$check#82: int;
  var newtype$check#83: int;
  var newtype$check#84: int;
  var newtype$check#85: int;
  var newtype$check#86: int;
  var newtype$check#87: int;
  var newtype$check#88: int;
  var newtype$check#89: int;
  var newtype$check#90: int;
  var newtype$check#91: int;
  var newtype$check#92: int;
  var newtype$check#93: int;
  var newtype$check#94: int;
  var newtype$check#95: int;
  var newtype$check#96: int;
  var newtype$check#97: int;
  var newtype$check#98: int;
  var newtype$check#99: int;
  var newtype$check#100: int;
  var newtype$check#101: int;
  var newtype$check#102: int;
  var newtype$check#103: int;
  var newtype$check#104: int;
  var newtype$check#105: int;
  var newtype$check#106: int;
  var newtype$check#107: int;
  var newtype$check#108: int;
  var newtype$check#109: int;
  var newtype$check#110: int;
  var newtype$check#111: int;
  var newtype$check#112: int;
  var newtype$check#113: int;
  var newtype$check#114: int;
  var newtype$check#115: int;
  var newtype$check#116: int;
  var newtype$check#117: int;
  var newtype$check#118: int;
  var newtype$check#119: int;
  var newtype$check#120: int;
  var newtype$check#121: int;
  var newtype$check#122: int;
  var newtype$check#123: int;
  var newtype$check#124: int;
  var newtype$check#125: int;

    // AddMethodImpl: M1, Impl$$_module.__default.M1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    havoc neg#0 /* where Lit(true) */, pos#0 /* where Lit(true) */;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(80,12)
    assume true;
    assume true;
    newtype$check#0 := LitInt(-6);
    assume true;
    $rhs#0 := LitInt(-6);
    newtype$check#1 := LitInt(6);
    assume true;
    $rhs#1 := LitInt(6);
    neg#0 := $rhs#0;
    pos#0 := $rhs#1;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(84,9)
    assume true;
    newtype$check#2 := LitInt(-4);
    assert {:id "id104"} LitInt(-4) != 0;
    newtype$check#3 := Div(neg#0, LitInt(-4));
    assume true;
    a#0 := Div(neg#0, LitInt(-4));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(84,24)
    newtype$check#4 := LitInt(2);
    assume true;
    assert {:id "id106"} a#0 == LitInt(2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(85,9)
    assume true;
    newtype$check#5 := LitInt(-4);
    assert {:id "id107"} LitInt(-4) != 0;
    newtype$check#6 := Div(pos#0, LitInt(-4));
    assume true;
    b#0 := Div(pos#0, LitInt(-4));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(85,24)
    newtype$check#7 := LitInt(-1);
    assume true;
    assert {:id "id109"} b#0 == LitInt(-1);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(86,9)
    assume true;
    newtype$check#8 := LitInt(4);
    assert {:id "id110"} LitInt(4) != 0;
    newtype$check#9 := Div(neg#0, LitInt(4));
    assume true;
    c#0 := Div(neg#0, LitInt(4));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(86,24)
    newtype$check#10 := LitInt(-2);
    assume true;
    assert {:id "id112"} c#0 == LitInt(-2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(87,9)
    assume true;
    newtype$check#11 := LitInt(4);
    assert {:id "id113"} LitInt(4) != 0;
    newtype$check#12 := Div(pos#0, LitInt(4));
    assume true;
    d#0 := Div(pos#0, LitInt(4));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(87,24)
    newtype$check#13 := LitInt(1);
    assume true;
    assert {:id "id115"} d#0 == LitInt(1);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(88,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(90,5)
    assume true;
    newtype$check#14 := LitInt(-4);
    newtype$check#15 := LitInt(-2);
    assert {:id "id116"} LitInt(-2) != 0;
    newtype$check#16 := LitInt(Div(-4, LitInt(-2)));
    assume true;
    a#0 := LitInt(Div(-4, LitInt(-2)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(90,21)
    newtype$check#17 := LitInt(2);
    assume true;
    assert {:id "id118"} a#0 == LitInt(2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(91,5)
    assume true;
    newtype$check#18 := LitInt(4);
    newtype$check#19 := LitInt(-2);
    assert {:id "id119"} LitInt(-2) != 0;
    newtype$check#20 := LitInt(Div(4, LitInt(-2)));
    assume true;
    b#0 := LitInt(Div(4, LitInt(-2)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(91,21)
    newtype$check#21 := LitInt(-2);
    assume true;
    assert {:id "id121"} b#0 == LitInt(-2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(92,5)
    assume true;
    newtype$check#22 := LitInt(-4);
    newtype$check#23 := LitInt(2);
    assert {:id "id122"} LitInt(2) != 0;
    newtype$check#24 := LitInt(Div(-4, LitInt(2)));
    assume true;
    c#0 := LitInt(Div(-4, LitInt(2)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(92,21)
    newtype$check#25 := LitInt(-2);
    assume true;
    assert {:id "id124"} c#0 == LitInt(-2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(93,5)
    assume true;
    newtype$check#26 := LitInt(4);
    newtype$check#27 := LitInt(2);
    assert {:id "id125"} LitInt(2) != 0;
    newtype$check#28 := LitInt(Div(4, LitInt(2)));
    assume true;
    d#0 := LitInt(Div(4, LitInt(2)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(93,21)
    newtype$check#29 := LitInt(2);
    assume true;
    assert {:id "id127"} d#0 == LitInt(2);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(94,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(96,5)
    assume true;
    newtype$check#30 := LitInt(101);
    newtype$check#31 := LitInt(-3);
    assert {:id "id128"} LitInt(-3) != 0;
    newtype$check#32 := LitInt(Div(101, LitInt(-3)));
    assume true;
    a#0 := LitInt(Div(101, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(96,20)
    newtype$check#33 := LitInt(-33);
    assume true;
    assert {:id "id130"} a#0 == LitInt(-33);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(97,5)
    assume true;
    newtype$check#34 := LitInt(100);
    newtype$check#35 := LitInt(-3);
    assert {:id "id131"} LitInt(-3) != 0;
    newtype$check#36 := LitInt(Div(100, LitInt(-3)));
    assume true;
    b#0 := LitInt(Div(100, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(97,20)
    newtype$check#37 := LitInt(-33);
    assume true;
    assert {:id "id133"} b#0 == LitInt(-33);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(98,5)
    assume true;
    newtype$check#38 := LitInt(99);
    newtype$check#39 := LitInt(-3);
    assert {:id "id134"} LitInt(-3) != 0;
    newtype$check#40 := LitInt(Div(99, LitInt(-3)));
    assume true;
    c#0 := LitInt(Div(99, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(98,20)
    newtype$check#41 := LitInt(-33);
    assume true;
    assert {:id "id136"} c#0 == LitInt(-33);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(99,5)
    assume true;
    newtype$check#42 := LitInt(98);
    newtype$check#43 := LitInt(-3);
    assert {:id "id137"} LitInt(-3) != 0;
    newtype$check#44 := LitInt(Div(98, LitInt(-3)));
    assume true;
    d#0 := LitInt(Div(98, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(99,20)
    newtype$check#45 := LitInt(-32);
    assume true;
    assert {:id "id139"} d#0 == LitInt(-32);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(100,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(102,5)
    assume true;
    newtype$check#46 := LitInt(-101);
    newtype$check#47 := LitInt(3);
    assert {:id "id140"} LitInt(3) != 0;
    newtype$check#48 := LitInt(Div(-101, LitInt(3)));
    assume true;
    a#0 := LitInt(Div(-101, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(102,20)
    newtype$check#49 := LitInt(-34);
    assume true;
    assert {:id "id142"} a#0 == LitInt(-34);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(103,5)
    assume true;
    newtype$check#50 := LitInt(-100);
    newtype$check#51 := LitInt(3);
    assert {:id "id143"} LitInt(3) != 0;
    newtype$check#52 := LitInt(Div(-100, LitInt(3)));
    assume true;
    b#0 := LitInt(Div(-100, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(103,20)
    newtype$check#53 := LitInt(-34);
    assume true;
    assert {:id "id145"} b#0 == LitInt(-34);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(104,5)
    assume true;
    newtype$check#54 := LitInt(-99);
    newtype$check#55 := LitInt(3);
    assert {:id "id146"} LitInt(3) != 0;
    newtype$check#56 := LitInt(Div(-99, LitInt(3)));
    assume true;
    c#0 := LitInt(Div(-99, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(104,20)
    newtype$check#57 := LitInt(-33);
    assume true;
    assert {:id "id148"} c#0 == LitInt(-33);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(105,5)
    assume true;
    newtype$check#58 := LitInt(-98);
    newtype$check#59 := LitInt(3);
    assert {:id "id149"} LitInt(3) != 0;
    newtype$check#60 := LitInt(Div(-98, LitInt(3)));
    assume true;
    d#0 := LitInt(Div(-98, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(105,20)
    newtype$check#61 := LitInt(-33);
    assume true;
    assert {:id "id151"} d#0 == LitInt(-33);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(106,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(110,5)
    assume true;
    newtype$check#62 := LitInt(-101);
    newtype$check#63 := LitInt(-3);
    assert {:id "id152"} LitInt(-3) != 0;
    newtype$check#64 := LitInt(Mod(-101, LitInt(-3)));
    assume true;
    a#0 := LitInt(Mod(-101, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(110,23)
    newtype$check#65 := LitInt(1);
    assume true;
    assert {:id "id154"} a#0 == LitInt(1);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(111,5)
    assume true;
    newtype$check#66 := LitInt(-100);
    newtype$check#67 := LitInt(-3);
    assert {:id "id155"} LitInt(-3) != 0;
    newtype$check#68 := LitInt(Mod(-100, LitInt(-3)));
    assume true;
    b#0 := LitInt(Mod(-100, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(111,23)
    newtype$check#69 := LitInt(2);
    assume true;
    assert {:id "id157"} b#0 == LitInt(2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(112,5)
    assume true;
    newtype$check#70 := LitInt(-99);
    newtype$check#71 := LitInt(-3);
    assert {:id "id158"} LitInt(-3) != 0;
    newtype$check#72 := LitInt(Mod(-99, LitInt(-3)));
    assume true;
    c#0 := LitInt(Mod(-99, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(112,23)
    newtype$check#73 := LitInt(0);
    assume true;
    assert {:id "id160"} c#0 == LitInt(0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(113,5)
    assume true;
    newtype$check#74 := LitInt(-98);
    newtype$check#75 := LitInt(-3);
    assert {:id "id161"} LitInt(-3) != 0;
    newtype$check#76 := LitInt(Mod(-98, LitInt(-3)));
    assume true;
    d#0 := LitInt(Mod(-98, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(113,23)
    newtype$check#77 := LitInt(1);
    assume true;
    assert {:id "id163"} d#0 == LitInt(1);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(114,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(116,5)
    assume true;
    newtype$check#78 := LitInt(101);
    newtype$check#79 := LitInt(-3);
    assert {:id "id164"} LitInt(-3) != 0;
    newtype$check#80 := LitInt(Mod(101, LitInt(-3)));
    assume true;
    a#0 := LitInt(Mod(101, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(116,23)
    newtype$check#81 := LitInt(2);
    assume true;
    assert {:id "id166"} a#0 == LitInt(2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(117,5)
    assume true;
    newtype$check#82 := LitInt(100);
    newtype$check#83 := LitInt(-3);
    assert {:id "id167"} LitInt(-3) != 0;
    newtype$check#84 := LitInt(Mod(100, LitInt(-3)));
    assume true;
    b#0 := LitInt(Mod(100, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(117,23)
    newtype$check#85 := LitInt(1);
    assume true;
    assert {:id "id169"} b#0 == LitInt(1);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(118,5)
    assume true;
    newtype$check#86 := LitInt(99);
    newtype$check#87 := LitInt(-3);
    assert {:id "id170"} LitInt(-3) != 0;
    newtype$check#88 := LitInt(Mod(99, LitInt(-3)));
    assume true;
    c#0 := LitInt(Mod(99, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(118,23)
    newtype$check#89 := LitInt(0);
    assume true;
    assert {:id "id172"} c#0 == LitInt(0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(119,5)
    assume true;
    newtype$check#90 := LitInt(98);
    newtype$check#91 := LitInt(-3);
    assert {:id "id173"} LitInt(-3) != 0;
    newtype$check#92 := LitInt(Mod(98, LitInt(-3)));
    assume true;
    d#0 := LitInt(Mod(98, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(119,23)
    newtype$check#93 := LitInt(2);
    assume true;
    assert {:id "id175"} d#0 == LitInt(2);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(120,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(122,5)
    assume true;
    newtype$check#94 := LitInt(-101);
    newtype$check#95 := LitInt(3);
    assert {:id "id176"} LitInt(3) != 0;
    newtype$check#96 := LitInt(Mod(-101, LitInt(3)));
    assume true;
    a#0 := LitInt(Mod(-101, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(122,20)
    newtype$check#97 := LitInt(1);
    assume true;
    assert {:id "id178"} a#0 == LitInt(1);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(123,5)
    assume true;
    newtype$check#98 := LitInt(-100);
    newtype$check#99 := LitInt(3);
    assert {:id "id179"} LitInt(3) != 0;
    newtype$check#100 := LitInt(Mod(-100, LitInt(3)));
    assume true;
    b#0 := LitInt(Mod(-100, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(123,20)
    newtype$check#101 := LitInt(2);
    assume true;
    assert {:id "id181"} b#0 == LitInt(2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(124,5)
    assume true;
    newtype$check#102 := LitInt(-99);
    newtype$check#103 := LitInt(3);
    assert {:id "id182"} LitInt(3) != 0;
    newtype$check#104 := LitInt(Mod(-99, LitInt(3)));
    assume true;
    c#0 := LitInt(Mod(-99, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(124,20)
    newtype$check#105 := LitInt(0);
    assume true;
    assert {:id "id184"} c#0 == LitInt(0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(125,5)
    assume true;
    newtype$check#106 := LitInt(-98);
    newtype$check#107 := LitInt(3);
    assert {:id "id185"} LitInt(3) != 0;
    newtype$check#108 := LitInt(Mod(-98, LitInt(3)));
    assume true;
    d#0 := LitInt(Mod(-98, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(125,20)
    newtype$check#109 := LitInt(1);
    assume true;
    assert {:id "id187"} d#0 == LitInt(1);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(126,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(128,5)
    assume true;
    newtype$check#110 := LitInt(101);
    newtype$check#111 := LitInt(3);
    assert {:id "id188"} LitInt(3) != 0;
    newtype$check#112 := LitInt(Mod(101, LitInt(3)));
    assume true;
    a#0 := LitInt(Mod(101, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(128,19)
    newtype$check#113 := LitInt(2);
    assume true;
    assert {:id "id190"} a#0 == LitInt(2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(129,5)
    assume true;
    newtype$check#114 := LitInt(100);
    newtype$check#115 := LitInt(3);
    assert {:id "id191"} LitInt(3) != 0;
    newtype$check#116 := LitInt(Mod(100, LitInt(3)));
    assume true;
    b#0 := LitInt(Mod(100, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(129,19)
    newtype$check#117 := LitInt(1);
    assume true;
    assert {:id "id193"} b#0 == LitInt(1);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(130,5)
    assume true;
    newtype$check#118 := LitInt(99);
    newtype$check#119 := LitInt(3);
    assert {:id "id194"} LitInt(3) != 0;
    newtype$check#120 := LitInt(Mod(99, LitInt(3)));
    assume true;
    c#0 := LitInt(Mod(99, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(130,19)
    newtype$check#121 := LitInt(0);
    assume true;
    assert {:id "id196"} c#0 == LitInt(0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(131,5)
    assume true;
    newtype$check#122 := LitInt(98);
    newtype$check#123 := LitInt(3);
    assert {:id "id197"} LitInt(3) != 0;
    newtype$check#124 := LitInt(Mod(98, LitInt(3)));
    assume true;
    d#0 := LitInt(Mod(98, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(131,19)
    newtype$check#125 := LitInt(2);
    assume true;
    assert {:id "id199"} d#0 == LitInt(2);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(132,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
}



procedure {:verboseName "M2 (well-formedness)"} CheckWellFormed$$_module.__default.M2();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M2 (call)"} Call$$_module.__default.M2();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M2 (correctness)"} Impl$$_module.__default.M2() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M2 (correctness)"} Impl$$_module.__default.M2() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var neg#0: int where Lit(true);
  var pos#0: int where Lit(true);
  var $rhs#0: int;
  var newtype$check#0: int;
  var $rhs#1: int;
  var newtype$check#1: int;
  var a#0: int where Lit(true);
  var newtype$check#2: int;
  var newtype$check#3: int;
  var newtype$check#4: int;
  var b#0: int where Lit(true);
  var newtype$check#5: int;
  var newtype$check#6: int;
  var newtype$check#7: int;
  var c#0: int where Lit(true);
  var newtype$check#8: int;
  var newtype$check#9: int;
  var newtype$check#10: int;
  var d#0: int where Lit(true);
  var newtype$check#11: int;
  var newtype$check#12: int;
  var newtype$check#13: int;
  var newtype$check#14: int;
  var newtype$check#15: int;
  var newtype$check#16: int;
  var newtype$check#17: int;
  var newtype$check#18: int;
  var newtype$check#19: int;
  var newtype$check#20: int;
  var newtype$check#21: int;
  var newtype$check#22: int;
  var newtype$check#23: int;
  var newtype$check#24: int;
  var newtype$check#25: int;
  var newtype$check#26: int;
  var newtype$check#27: int;
  var newtype$check#28: int;
  var newtype$check#29: int;
  var newtype$check#30: int;
  var newtype$check#31: int;
  var newtype$check#32: int;
  var newtype$check#33: int;
  var newtype$check#34: int;
  var newtype$check#35: int;
  var newtype$check#36: int;
  var newtype$check#37: int;
  var newtype$check#38: int;
  var newtype$check#39: int;
  var newtype$check#40: int;
  var newtype$check#41: int;
  var newtype$check#42: int;
  var newtype$check#43: int;
  var newtype$check#44: int;
  var newtype$check#45: int;
  var newtype$check#46: int;
  var newtype$check#47: int;
  var newtype$check#48: int;
  var newtype$check#49: int;
  var newtype$check#50: int;
  var newtype$check#51: int;
  var newtype$check#52: int;
  var newtype$check#53: int;
  var newtype$check#54: int;
  var newtype$check#55: int;
  var newtype$check#56: int;
  var newtype$check#57: int;
  var newtype$check#58: int;
  var newtype$check#59: int;
  var newtype$check#60: int;
  var newtype$check#61: int;
  var newtype$check#62: int;
  var newtype$check#63: int;
  var newtype$check#64: int;
  var newtype$check#65: int;
  var newtype$check#66: int;
  var newtype$check#67: int;
  var newtype$check#68: int;
  var newtype$check#69: int;
  var newtype$check#70: int;
  var newtype$check#71: int;
  var newtype$check#72: int;
  var newtype$check#73: int;
  var newtype$check#74: int;
  var newtype$check#75: int;
  var newtype$check#76: int;
  var newtype$check#77: int;
  var newtype$check#78: int;
  var newtype$check#79: int;
  var newtype$check#80: int;
  var newtype$check#81: int;
  var newtype$check#82: int;
  var newtype$check#83: int;
  var newtype$check#84: int;
  var newtype$check#85: int;
  var newtype$check#86: int;
  var newtype$check#87: int;
  var newtype$check#88: int;
  var newtype$check#89: int;
  var newtype$check#90: int;
  var newtype$check#91: int;
  var newtype$check#92: int;
  var newtype$check#93: int;
  var newtype$check#94: int;
  var newtype$check#95: int;
  var newtype$check#96: int;
  var newtype$check#97: int;
  var newtype$check#98: int;
  var newtype$check#99: int;
  var newtype$check#100: int;
  var newtype$check#101: int;
  var newtype$check#102: int;
  var newtype$check#103: int;
  var newtype$check#104: int;
  var newtype$check#105: int;
  var newtype$check#106: int;
  var newtype$check#107: int;
  var newtype$check#108: int;
  var newtype$check#109: int;
  var newtype$check#110: int;
  var newtype$check#111: int;
  var newtype$check#112: int;
  var newtype$check#113: int;
  var newtype$check#114: int;
  var newtype$check#115: int;
  var newtype$check#116: int;
  var newtype$check#117: int;
  var newtype$check#118: int;
  var newtype$check#119: int;
  var newtype$check#120: int;
  var newtype$check#121: int;
  var newtype$check#122: int;
  var newtype$check#123: int;
  var newtype$check#124: int;
  var newtype$check#125: int;

    // AddMethodImpl: M2, Impl$$_module.__default.M2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    havoc neg#0 /* where Lit(true) */, pos#0 /* where Lit(true) */;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(137,12)
    assume true;
    assume true;
    newtype$check#0 := LitInt(-6);
    assert {:id "id200"} Lit(true);
    assume true;
    $rhs#0 := LitInt(-6);
    newtype$check#1 := LitInt(6);
    assert {:id "id202"} Lit(true);
    assume true;
    $rhs#1 := LitInt(6);
    neg#0 := $rhs#0;
    pos#0 := $rhs#1;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(141,9)
    assume true;
    newtype$check#2 := LitInt(-4);
    assert {:id "id206"} Lit(true);
    assert {:id "id207"} LitInt(-4) != 0;
    newtype$check#3 := Div(neg#0, LitInt(-4));
    assert {:id "id208"} Lit(true);
    assume true;
    a#0 := Div(neg#0, LitInt(-4));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(141,24)
    newtype$check#4 := LitInt(2);
    assert {:id "id210"} Lit(true);
    assume true;
    assert {:id "id211"} a#0 == LitInt(2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(142,9)
    assume true;
    newtype$check#5 := LitInt(-4);
    assert {:id "id212"} Lit(true);
    assert {:id "id213"} LitInt(-4) != 0;
    newtype$check#6 := Div(pos#0, LitInt(-4));
    assert {:id "id214"} Lit(true);
    assume true;
    b#0 := Div(pos#0, LitInt(-4));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(142,24)
    newtype$check#7 := LitInt(-1);
    assert {:id "id216"} Lit(true);
    assume true;
    assert {:id "id217"} b#0 == LitInt(-1);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(143,9)
    assume true;
    newtype$check#8 := LitInt(4);
    assert {:id "id218"} Lit(true);
    assert {:id "id219"} LitInt(4) != 0;
    newtype$check#9 := Div(neg#0, LitInt(4));
    assert {:id "id220"} Lit(true);
    assume true;
    c#0 := Div(neg#0, LitInt(4));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(143,24)
    newtype$check#10 := LitInt(-2);
    assert {:id "id222"} Lit(true);
    assume true;
    assert {:id "id223"} c#0 == LitInt(-2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(144,9)
    assume true;
    newtype$check#11 := LitInt(4);
    assert {:id "id224"} Lit(true);
    assert {:id "id225"} LitInt(4) != 0;
    newtype$check#12 := Div(pos#0, LitInt(4));
    assert {:id "id226"} Lit(true);
    assume true;
    d#0 := Div(pos#0, LitInt(4));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(144,24)
    newtype$check#13 := LitInt(1);
    assert {:id "id228"} Lit(true);
    assume true;
    assert {:id "id229"} d#0 == LitInt(1);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(145,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(147,5)
    assume true;
    newtype$check#14 := LitInt(-4);
    assert {:id "id230"} Lit(true);
    newtype$check#15 := LitInt(-2);
    assert {:id "id231"} Lit(true);
    assert {:id "id232"} LitInt(-2) != 0;
    newtype$check#16 := LitInt(Div(-4, LitInt(-2)));
    assert {:id "id233"} Lit(true);
    assume true;
    a#0 := LitInt(Div(-4, LitInt(-2)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(147,21)
    newtype$check#17 := LitInt(2);
    assert {:id "id235"} Lit(true);
    assume true;
    assert {:id "id236"} a#0 == LitInt(2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(148,5)
    assume true;
    newtype$check#18 := LitInt(4);
    assert {:id "id237"} Lit(true);
    newtype$check#19 := LitInt(-2);
    assert {:id "id238"} Lit(true);
    assert {:id "id239"} LitInt(-2) != 0;
    newtype$check#20 := LitInt(Div(4, LitInt(-2)));
    assert {:id "id240"} Lit(true);
    assume true;
    b#0 := LitInt(Div(4, LitInt(-2)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(148,21)
    newtype$check#21 := LitInt(-2);
    assert {:id "id242"} Lit(true);
    assume true;
    assert {:id "id243"} b#0 == LitInt(-2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(149,5)
    assume true;
    newtype$check#22 := LitInt(-4);
    assert {:id "id244"} Lit(true);
    newtype$check#23 := LitInt(2);
    assert {:id "id245"} Lit(true);
    assert {:id "id246"} LitInt(2) != 0;
    newtype$check#24 := LitInt(Div(-4, LitInt(2)));
    assert {:id "id247"} Lit(true);
    assume true;
    c#0 := LitInt(Div(-4, LitInt(2)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(149,21)
    newtype$check#25 := LitInt(-2);
    assert {:id "id249"} Lit(true);
    assume true;
    assert {:id "id250"} c#0 == LitInt(-2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(150,5)
    assume true;
    newtype$check#26 := LitInt(4);
    assert {:id "id251"} Lit(true);
    newtype$check#27 := LitInt(2);
    assert {:id "id252"} Lit(true);
    assert {:id "id253"} LitInt(2) != 0;
    newtype$check#28 := LitInt(Div(4, LitInt(2)));
    assert {:id "id254"} Lit(true);
    assume true;
    d#0 := LitInt(Div(4, LitInt(2)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(150,21)
    newtype$check#29 := LitInt(2);
    assert {:id "id256"} Lit(true);
    assume true;
    assert {:id "id257"} d#0 == LitInt(2);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(151,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(153,5)
    assume true;
    newtype$check#30 := LitInt(101);
    assert {:id "id258"} Lit(true);
    newtype$check#31 := LitInt(-3);
    assert {:id "id259"} Lit(true);
    assert {:id "id260"} LitInt(-3) != 0;
    newtype$check#32 := LitInt(Div(101, LitInt(-3)));
    assert {:id "id261"} Lit(true);
    assume true;
    a#0 := LitInt(Div(101, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(153,20)
    newtype$check#33 := LitInt(-33);
    assert {:id "id263"} Lit(true);
    assume true;
    assert {:id "id264"} a#0 == LitInt(-33);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(154,5)
    assume true;
    newtype$check#34 := LitInt(100);
    assert {:id "id265"} Lit(true);
    newtype$check#35 := LitInt(-3);
    assert {:id "id266"} Lit(true);
    assert {:id "id267"} LitInt(-3) != 0;
    newtype$check#36 := LitInt(Div(100, LitInt(-3)));
    assert {:id "id268"} Lit(true);
    assume true;
    b#0 := LitInt(Div(100, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(154,20)
    newtype$check#37 := LitInt(-33);
    assert {:id "id270"} Lit(true);
    assume true;
    assert {:id "id271"} b#0 == LitInt(-33);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(155,5)
    assume true;
    newtype$check#38 := LitInt(99);
    assert {:id "id272"} Lit(true);
    newtype$check#39 := LitInt(-3);
    assert {:id "id273"} Lit(true);
    assert {:id "id274"} LitInt(-3) != 0;
    newtype$check#40 := LitInt(Div(99, LitInt(-3)));
    assert {:id "id275"} Lit(true);
    assume true;
    c#0 := LitInt(Div(99, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(155,20)
    newtype$check#41 := LitInt(-33);
    assert {:id "id277"} Lit(true);
    assume true;
    assert {:id "id278"} c#0 == LitInt(-33);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(156,5)
    assume true;
    newtype$check#42 := LitInt(98);
    assert {:id "id279"} Lit(true);
    newtype$check#43 := LitInt(-3);
    assert {:id "id280"} Lit(true);
    assert {:id "id281"} LitInt(-3) != 0;
    newtype$check#44 := LitInt(Div(98, LitInt(-3)));
    assert {:id "id282"} Lit(true);
    assume true;
    d#0 := LitInt(Div(98, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(156,20)
    newtype$check#45 := LitInt(-32);
    assert {:id "id284"} Lit(true);
    assume true;
    assert {:id "id285"} d#0 == LitInt(-32);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(157,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(159,5)
    assume true;
    newtype$check#46 := LitInt(-101);
    assert {:id "id286"} Lit(true);
    newtype$check#47 := LitInt(3);
    assert {:id "id287"} Lit(true);
    assert {:id "id288"} LitInt(3) != 0;
    newtype$check#48 := LitInt(Div(-101, LitInt(3)));
    assert {:id "id289"} Lit(true);
    assume true;
    a#0 := LitInt(Div(-101, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(159,20)
    newtype$check#49 := LitInt(-34);
    assert {:id "id291"} Lit(true);
    assume true;
    assert {:id "id292"} a#0 == LitInt(-34);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(160,5)
    assume true;
    newtype$check#50 := LitInt(-100);
    assert {:id "id293"} Lit(true);
    newtype$check#51 := LitInt(3);
    assert {:id "id294"} Lit(true);
    assert {:id "id295"} LitInt(3) != 0;
    newtype$check#52 := LitInt(Div(-100, LitInt(3)));
    assert {:id "id296"} Lit(true);
    assume true;
    b#0 := LitInt(Div(-100, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(160,20)
    newtype$check#53 := LitInt(-34);
    assert {:id "id298"} Lit(true);
    assume true;
    assert {:id "id299"} b#0 == LitInt(-34);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(161,5)
    assume true;
    newtype$check#54 := LitInt(-99);
    assert {:id "id300"} Lit(true);
    newtype$check#55 := LitInt(3);
    assert {:id "id301"} Lit(true);
    assert {:id "id302"} LitInt(3) != 0;
    newtype$check#56 := LitInt(Div(-99, LitInt(3)));
    assert {:id "id303"} Lit(true);
    assume true;
    c#0 := LitInt(Div(-99, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(161,20)
    newtype$check#57 := LitInt(-33);
    assert {:id "id305"} Lit(true);
    assume true;
    assert {:id "id306"} c#0 == LitInt(-33);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(162,5)
    assume true;
    newtype$check#58 := LitInt(-98);
    assert {:id "id307"} Lit(true);
    newtype$check#59 := LitInt(3);
    assert {:id "id308"} Lit(true);
    assert {:id "id309"} LitInt(3) != 0;
    newtype$check#60 := LitInt(Div(-98, LitInt(3)));
    assert {:id "id310"} Lit(true);
    assume true;
    d#0 := LitInt(Div(-98, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(162,20)
    newtype$check#61 := LitInt(-33);
    assert {:id "id312"} Lit(true);
    assume true;
    assert {:id "id313"} d#0 == LitInt(-33);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(163,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(167,5)
    assume true;
    newtype$check#62 := LitInt(-101);
    assert {:id "id314"} Lit(true);
    newtype$check#63 := LitInt(-3);
    assert {:id "id315"} Lit(true);
    assert {:id "id316"} LitInt(-3) != 0;
    newtype$check#64 := LitInt(Mod(-101, LitInt(-3)));
    assert {:id "id317"} Lit(true);
    assume true;
    a#0 := LitInt(Mod(-101, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(167,23)
    newtype$check#65 := LitInt(1);
    assert {:id "id319"} Lit(true);
    assume true;
    assert {:id "id320"} a#0 == LitInt(1);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(168,5)
    assume true;
    newtype$check#66 := LitInt(-100);
    assert {:id "id321"} Lit(true);
    newtype$check#67 := LitInt(-3);
    assert {:id "id322"} Lit(true);
    assert {:id "id323"} LitInt(-3) != 0;
    newtype$check#68 := LitInt(Mod(-100, LitInt(-3)));
    assert {:id "id324"} Lit(true);
    assume true;
    b#0 := LitInt(Mod(-100, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(168,23)
    newtype$check#69 := LitInt(2);
    assert {:id "id326"} Lit(true);
    assume true;
    assert {:id "id327"} b#0 == LitInt(2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(169,5)
    assume true;
    newtype$check#70 := LitInt(-99);
    assert {:id "id328"} Lit(true);
    newtype$check#71 := LitInt(-3);
    assert {:id "id329"} Lit(true);
    assert {:id "id330"} LitInt(-3) != 0;
    newtype$check#72 := LitInt(Mod(-99, LitInt(-3)));
    assert {:id "id331"} Lit(true);
    assume true;
    c#0 := LitInt(Mod(-99, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(169,23)
    newtype$check#73 := LitInt(0);
    assert {:id "id333"} Lit(true);
    assume true;
    assert {:id "id334"} c#0 == LitInt(0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(170,5)
    assume true;
    newtype$check#74 := LitInt(-98);
    assert {:id "id335"} Lit(true);
    newtype$check#75 := LitInt(-3);
    assert {:id "id336"} Lit(true);
    assert {:id "id337"} LitInt(-3) != 0;
    newtype$check#76 := LitInt(Mod(-98, LitInt(-3)));
    assert {:id "id338"} Lit(true);
    assume true;
    d#0 := LitInt(Mod(-98, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(170,23)
    newtype$check#77 := LitInt(1);
    assert {:id "id340"} Lit(true);
    assume true;
    assert {:id "id341"} d#0 == LitInt(1);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(171,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(173,5)
    assume true;
    newtype$check#78 := LitInt(101);
    assert {:id "id342"} Lit(true);
    newtype$check#79 := LitInt(-3);
    assert {:id "id343"} Lit(true);
    assert {:id "id344"} LitInt(-3) != 0;
    newtype$check#80 := LitInt(Mod(101, LitInt(-3)));
    assert {:id "id345"} Lit(true);
    assume true;
    a#0 := LitInt(Mod(101, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(173,23)
    newtype$check#81 := LitInt(2);
    assert {:id "id347"} Lit(true);
    assume true;
    assert {:id "id348"} a#0 == LitInt(2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(174,5)
    assume true;
    newtype$check#82 := LitInt(100);
    assert {:id "id349"} Lit(true);
    newtype$check#83 := LitInt(-3);
    assert {:id "id350"} Lit(true);
    assert {:id "id351"} LitInt(-3) != 0;
    newtype$check#84 := LitInt(Mod(100, LitInt(-3)));
    assert {:id "id352"} Lit(true);
    assume true;
    b#0 := LitInt(Mod(100, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(174,23)
    newtype$check#85 := LitInt(1);
    assert {:id "id354"} Lit(true);
    assume true;
    assert {:id "id355"} b#0 == LitInt(1);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(175,5)
    assume true;
    newtype$check#86 := LitInt(99);
    assert {:id "id356"} Lit(true);
    newtype$check#87 := LitInt(-3);
    assert {:id "id357"} Lit(true);
    assert {:id "id358"} LitInt(-3) != 0;
    newtype$check#88 := LitInt(Mod(99, LitInt(-3)));
    assert {:id "id359"} Lit(true);
    assume true;
    c#0 := LitInt(Mod(99, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(175,23)
    newtype$check#89 := LitInt(0);
    assert {:id "id361"} Lit(true);
    assume true;
    assert {:id "id362"} c#0 == LitInt(0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(176,5)
    assume true;
    newtype$check#90 := LitInt(98);
    assert {:id "id363"} Lit(true);
    newtype$check#91 := LitInt(-3);
    assert {:id "id364"} Lit(true);
    assert {:id "id365"} LitInt(-3) != 0;
    newtype$check#92 := LitInt(Mod(98, LitInt(-3)));
    assert {:id "id366"} Lit(true);
    assume true;
    d#0 := LitInt(Mod(98, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(176,23)
    newtype$check#93 := LitInt(2);
    assert {:id "id368"} Lit(true);
    assume true;
    assert {:id "id369"} d#0 == LitInt(2);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(177,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(179,5)
    assume true;
    newtype$check#94 := LitInt(-101);
    assert {:id "id370"} Lit(true);
    newtype$check#95 := LitInt(3);
    assert {:id "id371"} Lit(true);
    assert {:id "id372"} LitInt(3) != 0;
    newtype$check#96 := LitInt(Mod(-101, LitInt(3)));
    assert {:id "id373"} Lit(true);
    assume true;
    a#0 := LitInt(Mod(-101, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(179,20)
    newtype$check#97 := LitInt(1);
    assert {:id "id375"} Lit(true);
    assume true;
    assert {:id "id376"} a#0 == LitInt(1);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(180,5)
    assume true;
    newtype$check#98 := LitInt(-100);
    assert {:id "id377"} Lit(true);
    newtype$check#99 := LitInt(3);
    assert {:id "id378"} Lit(true);
    assert {:id "id379"} LitInt(3) != 0;
    newtype$check#100 := LitInt(Mod(-100, LitInt(3)));
    assert {:id "id380"} Lit(true);
    assume true;
    b#0 := LitInt(Mod(-100, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(180,20)
    newtype$check#101 := LitInt(2);
    assert {:id "id382"} Lit(true);
    assume true;
    assert {:id "id383"} b#0 == LitInt(2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(181,5)
    assume true;
    newtype$check#102 := LitInt(-99);
    assert {:id "id384"} Lit(true);
    newtype$check#103 := LitInt(3);
    assert {:id "id385"} Lit(true);
    assert {:id "id386"} LitInt(3) != 0;
    newtype$check#104 := LitInt(Mod(-99, LitInt(3)));
    assert {:id "id387"} Lit(true);
    assume true;
    c#0 := LitInt(Mod(-99, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(181,20)
    newtype$check#105 := LitInt(0);
    assert {:id "id389"} Lit(true);
    assume true;
    assert {:id "id390"} c#0 == LitInt(0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(182,5)
    assume true;
    newtype$check#106 := LitInt(-98);
    assert {:id "id391"} Lit(true);
    newtype$check#107 := LitInt(3);
    assert {:id "id392"} Lit(true);
    assert {:id "id393"} LitInt(3) != 0;
    newtype$check#108 := LitInt(Mod(-98, LitInt(3)));
    assert {:id "id394"} Lit(true);
    assume true;
    d#0 := LitInt(Mod(-98, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(182,20)
    newtype$check#109 := LitInt(1);
    assert {:id "id396"} Lit(true);
    assume true;
    assert {:id "id397"} d#0 == LitInt(1);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(183,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(185,5)
    assume true;
    newtype$check#110 := LitInt(101);
    assert {:id "id398"} Lit(true);
    newtype$check#111 := LitInt(3);
    assert {:id "id399"} Lit(true);
    assert {:id "id400"} LitInt(3) != 0;
    newtype$check#112 := LitInt(Mod(101, LitInt(3)));
    assert {:id "id401"} Lit(true);
    assume true;
    a#0 := LitInt(Mod(101, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(185,19)
    newtype$check#113 := LitInt(2);
    assert {:id "id403"} Lit(true);
    assume true;
    assert {:id "id404"} a#0 == LitInt(2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(186,5)
    assume true;
    newtype$check#114 := LitInt(100);
    assert {:id "id405"} Lit(true);
    newtype$check#115 := LitInt(3);
    assert {:id "id406"} Lit(true);
    assert {:id "id407"} LitInt(3) != 0;
    newtype$check#116 := LitInt(Mod(100, LitInt(3)));
    assert {:id "id408"} Lit(true);
    assume true;
    b#0 := LitInt(Mod(100, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(186,19)
    newtype$check#117 := LitInt(1);
    assert {:id "id410"} Lit(true);
    assume true;
    assert {:id "id411"} b#0 == LitInt(1);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(187,5)
    assume true;
    newtype$check#118 := LitInt(99);
    assert {:id "id412"} Lit(true);
    newtype$check#119 := LitInt(3);
    assert {:id "id413"} Lit(true);
    assert {:id "id414"} LitInt(3) != 0;
    newtype$check#120 := LitInt(Mod(99, LitInt(3)));
    assert {:id "id415"} Lit(true);
    assume true;
    c#0 := LitInt(Mod(99, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(187,19)
    newtype$check#121 := LitInt(0);
    assert {:id "id417"} Lit(true);
    assume true;
    assert {:id "id418"} c#0 == LitInt(0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(188,5)
    assume true;
    newtype$check#122 := LitInt(98);
    assert {:id "id419"} Lit(true);
    newtype$check#123 := LitInt(3);
    assert {:id "id420"} Lit(true);
    assert {:id "id421"} LitInt(3) != 0;
    newtype$check#124 := LitInt(Mod(98, LitInt(3)));
    assert {:id "id422"} Lit(true);
    assume true;
    d#0 := LitInt(Mod(98, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(188,19)
    newtype$check#125 := LitInt(2);
    assert {:id "id424"} Lit(true);
    assume true;
    assert {:id "id425"} d#0 == LitInt(2);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(189,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
}



procedure {:verboseName "M3 (well-formedness)"} CheckWellFormed$$_module.__default.M3();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M3 (call)"} Call$$_module.__default.M3();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M3 (correctness)"} Impl$$_module.__default.M3() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M3 (correctness)"} Impl$$_module.__default.M3() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var neg#0: int
     where 0 - _module.__default.TWO__127() <= neg#0
       && neg#0 < _module.__default.TWO__127();
  var pos#0: int
     where 0 - _module.__default.TWO__127() <= pos#0
       && pos#0 < _module.__default.TWO__127();
  var $rhs#0: int;
  var newtype$check#0: int;
  var $rhs#1: int;
  var newtype$check#1: int;
  var a#0: int
     where 0 - _module.__default.TWO__127() <= a#0 && a#0 < _module.__default.TWO__127();
  var newtype$check#2: int;
  var newtype$check#3: int;
  var newtype$check#4: int;
  var b#0: int
     where 0 - _module.__default.TWO__127() <= b#0 && b#0 < _module.__default.TWO__127();
  var newtype$check#5: int;
  var newtype$check#6: int;
  var newtype$check#7: int;
  var c#0: int
     where 0 - _module.__default.TWO__127() <= c#0 && c#0 < _module.__default.TWO__127();
  var newtype$check#8: int;
  var newtype$check#9: int;
  var newtype$check#10: int;
  var d#0: int
     where 0 - _module.__default.TWO__127() <= d#0 && d#0 < _module.__default.TWO__127();
  var newtype$check#11: int;
  var newtype$check#12: int;
  var newtype$check#13: int;
  var newtype$check#14: int;
  var newtype$check#15: int;
  var newtype$check#16: int;
  var newtype$check#17: int;
  var newtype$check#18: int;
  var newtype$check#19: int;
  var newtype$check#20: int;
  var newtype$check#21: int;
  var newtype$check#22: int;
  var newtype$check#23: int;
  var newtype$check#24: int;
  var newtype$check#25: int;
  var newtype$check#26: int;
  var newtype$check#27: int;
  var newtype$check#28: int;
  var newtype$check#29: int;
  var newtype$check#30: int;
  var newtype$check#31: int;
  var newtype$check#32: int;
  var newtype$check#33: int;
  var newtype$check#34: int;
  var newtype$check#35: int;
  var newtype$check#36: int;
  var newtype$check#37: int;
  var newtype$check#38: int;
  var newtype$check#39: int;
  var newtype$check#40: int;
  var newtype$check#41: int;
  var newtype$check#42: int;
  var newtype$check#43: int;
  var newtype$check#44: int;
  var newtype$check#45: int;
  var newtype$check#46: int;
  var newtype$check#47: int;
  var newtype$check#48: int;
  var newtype$check#49: int;
  var newtype$check#50: int;
  var newtype$check#51: int;
  var newtype$check#52: int;
  var newtype$check#53: int;
  var newtype$check#54: int;
  var newtype$check#55: int;
  var newtype$check#56: int;
  var newtype$check#57: int;
  var newtype$check#58: int;
  var newtype$check#59: int;
  var newtype$check#60: int;
  var newtype$check#61: int;
  var newtype$check#62: int;
  var newtype$check#63: int;
  var newtype$check#64: int;
  var newtype$check#65: int;
  var newtype$check#66: int;
  var newtype$check#67: int;
  var newtype$check#68: int;
  var newtype$check#69: int;
  var newtype$check#70: int;
  var newtype$check#71: int;
  var newtype$check#72: int;
  var newtype$check#73: int;
  var newtype$check#74: int;
  var newtype$check#75: int;
  var newtype$check#76: int;
  var newtype$check#77: int;
  var newtype$check#78: int;
  var newtype$check#79: int;
  var newtype$check#80: int;
  var newtype$check#81: int;
  var newtype$check#82: int;
  var newtype$check#83: int;
  var newtype$check#84: int;
  var newtype$check#85: int;
  var newtype$check#86: int;
  var newtype$check#87: int;
  var newtype$check#88: int;
  var newtype$check#89: int;
  var newtype$check#90: int;
  var newtype$check#91: int;
  var newtype$check#92: int;
  var newtype$check#93: int;
  var newtype$check#94: int;
  var newtype$check#95: int;
  var newtype$check#96: int;
  var newtype$check#97: int;
  var newtype$check#98: int;
  var newtype$check#99: int;
  var newtype$check#100: int;
  var newtype$check#101: int;
  var newtype$check#102: int;
  var newtype$check#103: int;
  var newtype$check#104: int;
  var newtype$check#105: int;
  var newtype$check#106: int;
  var newtype$check#107: int;
  var newtype$check#108: int;
  var newtype$check#109: int;
  var newtype$check#110: int;
  var newtype$check#111: int;
  var newtype$check#112: int;
  var newtype$check#113: int;
  var newtype$check#114: int;
  var newtype$check#115: int;
  var newtype$check#116: int;
  var newtype$check#117: int;
  var newtype$check#118: int;
  var newtype$check#119: int;
  var newtype$check#120: int;
  var newtype$check#121: int;
  var newtype$check#122: int;
  var newtype$check#123: int;
  var newtype$check#124: int;
  var newtype$check#125: int;

    // AddMethodImpl: M3, Impl$$_module.__default.M3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    havoc neg#0 /* where 0 - _module.__default.TWO__127() <= neg#0
       && neg#0 < _module.__default.TWO__127() */, pos#0 /* where 0 - _module.__default.TWO__127() <= pos#0
       && pos#0 < _module.__default.TWO__127() */;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(194,12)
    assume true;
    assume true;
    newtype$check#0 := LitInt(-6);
    assert {:id "id426"} 0 - _module.__default.TWO__127() <= newtype$check#0
       && newtype$check#0 < _module.__default.TWO__127();
    assume true;
    $rhs#0 := LitInt(-6);
    newtype$check#1 := LitInt(6);
    assert {:id "id428"} 0 - _module.__default.TWO__127() <= newtype$check#1
       && newtype$check#1 < _module.__default.TWO__127();
    assume true;
    $rhs#1 := LitInt(6);
    neg#0 := $rhs#0;
    pos#0 := $rhs#1;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(198,9)
    assume true;
    newtype$check#2 := LitInt(-4);
    assert {:id "id432"} 0 - _module.__default.TWO__127() <= newtype$check#2
       && newtype$check#2 < _module.__default.TWO__127();
    assert {:id "id433"} LitInt(-4) != 0;
    newtype$check#3 := Div(neg#0, LitInt(-4));
    assert {:id "id434"} 0 - _module.__default.TWO__127() <= newtype$check#3
       && newtype$check#3 < _module.__default.TWO__127();
    assume true;
    a#0 := Div(neg#0, LitInt(-4));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(198,24)
    newtype$check#4 := LitInt(2);
    assert {:id "id436"} 0 - _module.__default.TWO__127() <= newtype$check#4
       && newtype$check#4 < _module.__default.TWO__127();
    assume true;
    assert {:id "id437"} a#0 == LitInt(2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(199,9)
    assume true;
    newtype$check#5 := LitInt(-4);
    assert {:id "id438"} 0 - _module.__default.TWO__127() <= newtype$check#5
       && newtype$check#5 < _module.__default.TWO__127();
    assert {:id "id439"} LitInt(-4) != 0;
    newtype$check#6 := Div(pos#0, LitInt(-4));
    assert {:id "id440"} 0 - _module.__default.TWO__127() <= newtype$check#6
       && newtype$check#6 < _module.__default.TWO__127();
    assume true;
    b#0 := Div(pos#0, LitInt(-4));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(199,24)
    newtype$check#7 := LitInt(-1);
    assert {:id "id442"} 0 - _module.__default.TWO__127() <= newtype$check#7
       && newtype$check#7 < _module.__default.TWO__127();
    assume true;
    assert {:id "id443"} b#0 == LitInt(-1);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(200,9)
    assume true;
    newtype$check#8 := LitInt(4);
    assert {:id "id444"} 0 - _module.__default.TWO__127() <= newtype$check#8
       && newtype$check#8 < _module.__default.TWO__127();
    assert {:id "id445"} LitInt(4) != 0;
    newtype$check#9 := Div(neg#0, LitInt(4));
    assert {:id "id446"} 0 - _module.__default.TWO__127() <= newtype$check#9
       && newtype$check#9 < _module.__default.TWO__127();
    assume true;
    c#0 := Div(neg#0, LitInt(4));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(200,24)
    newtype$check#10 := LitInt(-2);
    assert {:id "id448"} 0 - _module.__default.TWO__127() <= newtype$check#10
       && newtype$check#10 < _module.__default.TWO__127();
    assume true;
    assert {:id "id449"} c#0 == LitInt(-2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(201,9)
    assume true;
    newtype$check#11 := LitInt(4);
    assert {:id "id450"} 0 - _module.__default.TWO__127() <= newtype$check#11
       && newtype$check#11 < _module.__default.TWO__127();
    assert {:id "id451"} LitInt(4) != 0;
    newtype$check#12 := Div(pos#0, LitInt(4));
    assert {:id "id452"} 0 - _module.__default.TWO__127() <= newtype$check#12
       && newtype$check#12 < _module.__default.TWO__127();
    assume true;
    d#0 := Div(pos#0, LitInt(4));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(201,24)
    newtype$check#13 := LitInt(1);
    assert {:id "id454"} 0 - _module.__default.TWO__127() <= newtype$check#13
       && newtype$check#13 < _module.__default.TWO__127();
    assume true;
    assert {:id "id455"} d#0 == LitInt(1);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(202,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(204,5)
    assume true;
    newtype$check#14 := LitInt(-4);
    assert {:id "id456"} 0 - _module.__default.TWO__127() <= newtype$check#14
       && newtype$check#14 < _module.__default.TWO__127();
    newtype$check#15 := LitInt(-2);
    assert {:id "id457"} 0 - _module.__default.TWO__127() <= newtype$check#15
       && newtype$check#15 < _module.__default.TWO__127();
    assert {:id "id458"} LitInt(-2) != 0;
    newtype$check#16 := LitInt(Div(-4, LitInt(-2)));
    assert {:id "id459"} 0 - _module.__default.TWO__127() <= newtype$check#16
       && newtype$check#16 < _module.__default.TWO__127();
    assume true;
    a#0 := LitInt(Div(-4, LitInt(-2)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(204,21)
    newtype$check#17 := LitInt(2);
    assert {:id "id461"} 0 - _module.__default.TWO__127() <= newtype$check#17
       && newtype$check#17 < _module.__default.TWO__127();
    assume true;
    assert {:id "id462"} a#0 == LitInt(2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(205,5)
    assume true;
    newtype$check#18 := LitInt(4);
    assert {:id "id463"} 0 - _module.__default.TWO__127() <= newtype$check#18
       && newtype$check#18 < _module.__default.TWO__127();
    newtype$check#19 := LitInt(-2);
    assert {:id "id464"} 0 - _module.__default.TWO__127() <= newtype$check#19
       && newtype$check#19 < _module.__default.TWO__127();
    assert {:id "id465"} LitInt(-2) != 0;
    newtype$check#20 := LitInt(Div(4, LitInt(-2)));
    assert {:id "id466"} 0 - _module.__default.TWO__127() <= newtype$check#20
       && newtype$check#20 < _module.__default.TWO__127();
    assume true;
    b#0 := LitInt(Div(4, LitInt(-2)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(205,21)
    newtype$check#21 := LitInt(-2);
    assert {:id "id468"} 0 - _module.__default.TWO__127() <= newtype$check#21
       && newtype$check#21 < _module.__default.TWO__127();
    assume true;
    assert {:id "id469"} b#0 == LitInt(-2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(206,5)
    assume true;
    newtype$check#22 := LitInt(-4);
    assert {:id "id470"} 0 - _module.__default.TWO__127() <= newtype$check#22
       && newtype$check#22 < _module.__default.TWO__127();
    newtype$check#23 := LitInt(2);
    assert {:id "id471"} 0 - _module.__default.TWO__127() <= newtype$check#23
       && newtype$check#23 < _module.__default.TWO__127();
    assert {:id "id472"} LitInt(2) != 0;
    newtype$check#24 := LitInt(Div(-4, LitInt(2)));
    assert {:id "id473"} 0 - _module.__default.TWO__127() <= newtype$check#24
       && newtype$check#24 < _module.__default.TWO__127();
    assume true;
    c#0 := LitInt(Div(-4, LitInt(2)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(206,21)
    newtype$check#25 := LitInt(-2);
    assert {:id "id475"} 0 - _module.__default.TWO__127() <= newtype$check#25
       && newtype$check#25 < _module.__default.TWO__127();
    assume true;
    assert {:id "id476"} c#0 == LitInt(-2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(207,5)
    assume true;
    newtype$check#26 := LitInt(4);
    assert {:id "id477"} 0 - _module.__default.TWO__127() <= newtype$check#26
       && newtype$check#26 < _module.__default.TWO__127();
    newtype$check#27 := LitInt(2);
    assert {:id "id478"} 0 - _module.__default.TWO__127() <= newtype$check#27
       && newtype$check#27 < _module.__default.TWO__127();
    assert {:id "id479"} LitInt(2) != 0;
    newtype$check#28 := LitInt(Div(4, LitInt(2)));
    assert {:id "id480"} 0 - _module.__default.TWO__127() <= newtype$check#28
       && newtype$check#28 < _module.__default.TWO__127();
    assume true;
    d#0 := LitInt(Div(4, LitInt(2)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(207,21)
    newtype$check#29 := LitInt(2);
    assert {:id "id482"} 0 - _module.__default.TWO__127() <= newtype$check#29
       && newtype$check#29 < _module.__default.TWO__127();
    assume true;
    assert {:id "id483"} d#0 == LitInt(2);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(208,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(210,5)
    assume true;
    newtype$check#30 := LitInt(101);
    assert {:id "id484"} 0 - _module.__default.TWO__127() <= newtype$check#30
       && newtype$check#30 < _module.__default.TWO__127();
    newtype$check#31 := LitInt(-3);
    assert {:id "id485"} 0 - _module.__default.TWO__127() <= newtype$check#31
       && newtype$check#31 < _module.__default.TWO__127();
    assert {:id "id486"} LitInt(-3) != 0;
    newtype$check#32 := LitInt(Div(101, LitInt(-3)));
    assert {:id "id487"} 0 - _module.__default.TWO__127() <= newtype$check#32
       && newtype$check#32 < _module.__default.TWO__127();
    assume true;
    a#0 := LitInt(Div(101, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(210,20)
    newtype$check#33 := LitInt(-33);
    assert {:id "id489"} 0 - _module.__default.TWO__127() <= newtype$check#33
       && newtype$check#33 < _module.__default.TWO__127();
    assume true;
    assert {:id "id490"} a#0 == LitInt(-33);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(211,5)
    assume true;
    newtype$check#34 := LitInt(100);
    assert {:id "id491"} 0 - _module.__default.TWO__127() <= newtype$check#34
       && newtype$check#34 < _module.__default.TWO__127();
    newtype$check#35 := LitInt(-3);
    assert {:id "id492"} 0 - _module.__default.TWO__127() <= newtype$check#35
       && newtype$check#35 < _module.__default.TWO__127();
    assert {:id "id493"} LitInt(-3) != 0;
    newtype$check#36 := LitInt(Div(100, LitInt(-3)));
    assert {:id "id494"} 0 - _module.__default.TWO__127() <= newtype$check#36
       && newtype$check#36 < _module.__default.TWO__127();
    assume true;
    b#0 := LitInt(Div(100, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(211,20)
    newtype$check#37 := LitInt(-33);
    assert {:id "id496"} 0 - _module.__default.TWO__127() <= newtype$check#37
       && newtype$check#37 < _module.__default.TWO__127();
    assume true;
    assert {:id "id497"} b#0 == LitInt(-33);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(212,5)
    assume true;
    newtype$check#38 := LitInt(99);
    assert {:id "id498"} 0 - _module.__default.TWO__127() <= newtype$check#38
       && newtype$check#38 < _module.__default.TWO__127();
    newtype$check#39 := LitInt(-3);
    assert {:id "id499"} 0 - _module.__default.TWO__127() <= newtype$check#39
       && newtype$check#39 < _module.__default.TWO__127();
    assert {:id "id500"} LitInt(-3) != 0;
    newtype$check#40 := LitInt(Div(99, LitInt(-3)));
    assert {:id "id501"} 0 - _module.__default.TWO__127() <= newtype$check#40
       && newtype$check#40 < _module.__default.TWO__127();
    assume true;
    c#0 := LitInt(Div(99, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(212,20)
    newtype$check#41 := LitInt(-33);
    assert {:id "id503"} 0 - _module.__default.TWO__127() <= newtype$check#41
       && newtype$check#41 < _module.__default.TWO__127();
    assume true;
    assert {:id "id504"} c#0 == LitInt(-33);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(213,5)
    assume true;
    newtype$check#42 := LitInt(98);
    assert {:id "id505"} 0 - _module.__default.TWO__127() <= newtype$check#42
       && newtype$check#42 < _module.__default.TWO__127();
    newtype$check#43 := LitInt(-3);
    assert {:id "id506"} 0 - _module.__default.TWO__127() <= newtype$check#43
       && newtype$check#43 < _module.__default.TWO__127();
    assert {:id "id507"} LitInt(-3) != 0;
    newtype$check#44 := LitInt(Div(98, LitInt(-3)));
    assert {:id "id508"} 0 - _module.__default.TWO__127() <= newtype$check#44
       && newtype$check#44 < _module.__default.TWO__127();
    assume true;
    d#0 := LitInt(Div(98, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(213,20)
    newtype$check#45 := LitInt(-32);
    assert {:id "id510"} 0 - _module.__default.TWO__127() <= newtype$check#45
       && newtype$check#45 < _module.__default.TWO__127();
    assume true;
    assert {:id "id511"} d#0 == LitInt(-32);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(214,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(216,5)
    assume true;
    newtype$check#46 := LitInt(-101);
    assert {:id "id512"} 0 - _module.__default.TWO__127() <= newtype$check#46
       && newtype$check#46 < _module.__default.TWO__127();
    newtype$check#47 := LitInt(3);
    assert {:id "id513"} 0 - _module.__default.TWO__127() <= newtype$check#47
       && newtype$check#47 < _module.__default.TWO__127();
    assert {:id "id514"} LitInt(3) != 0;
    newtype$check#48 := LitInt(Div(-101, LitInt(3)));
    assert {:id "id515"} 0 - _module.__default.TWO__127() <= newtype$check#48
       && newtype$check#48 < _module.__default.TWO__127();
    assume true;
    a#0 := LitInt(Div(-101, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(216,20)
    newtype$check#49 := LitInt(-34);
    assert {:id "id517"} 0 - _module.__default.TWO__127() <= newtype$check#49
       && newtype$check#49 < _module.__default.TWO__127();
    assume true;
    assert {:id "id518"} a#0 == LitInt(-34);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(217,5)
    assume true;
    newtype$check#50 := LitInt(-100);
    assert {:id "id519"} 0 - _module.__default.TWO__127() <= newtype$check#50
       && newtype$check#50 < _module.__default.TWO__127();
    newtype$check#51 := LitInt(3);
    assert {:id "id520"} 0 - _module.__default.TWO__127() <= newtype$check#51
       && newtype$check#51 < _module.__default.TWO__127();
    assert {:id "id521"} LitInt(3) != 0;
    newtype$check#52 := LitInt(Div(-100, LitInt(3)));
    assert {:id "id522"} 0 - _module.__default.TWO__127() <= newtype$check#52
       && newtype$check#52 < _module.__default.TWO__127();
    assume true;
    b#0 := LitInt(Div(-100, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(217,20)
    newtype$check#53 := LitInt(-34);
    assert {:id "id524"} 0 - _module.__default.TWO__127() <= newtype$check#53
       && newtype$check#53 < _module.__default.TWO__127();
    assume true;
    assert {:id "id525"} b#0 == LitInt(-34);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(218,5)
    assume true;
    newtype$check#54 := LitInt(-99);
    assert {:id "id526"} 0 - _module.__default.TWO__127() <= newtype$check#54
       && newtype$check#54 < _module.__default.TWO__127();
    newtype$check#55 := LitInt(3);
    assert {:id "id527"} 0 - _module.__default.TWO__127() <= newtype$check#55
       && newtype$check#55 < _module.__default.TWO__127();
    assert {:id "id528"} LitInt(3) != 0;
    newtype$check#56 := LitInt(Div(-99, LitInt(3)));
    assert {:id "id529"} 0 - _module.__default.TWO__127() <= newtype$check#56
       && newtype$check#56 < _module.__default.TWO__127();
    assume true;
    c#0 := LitInt(Div(-99, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(218,20)
    newtype$check#57 := LitInt(-33);
    assert {:id "id531"} 0 - _module.__default.TWO__127() <= newtype$check#57
       && newtype$check#57 < _module.__default.TWO__127();
    assume true;
    assert {:id "id532"} c#0 == LitInt(-33);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(219,5)
    assume true;
    newtype$check#58 := LitInt(-98);
    assert {:id "id533"} 0 - _module.__default.TWO__127() <= newtype$check#58
       && newtype$check#58 < _module.__default.TWO__127();
    newtype$check#59 := LitInt(3);
    assert {:id "id534"} 0 - _module.__default.TWO__127() <= newtype$check#59
       && newtype$check#59 < _module.__default.TWO__127();
    assert {:id "id535"} LitInt(3) != 0;
    newtype$check#60 := LitInt(Div(-98, LitInt(3)));
    assert {:id "id536"} 0 - _module.__default.TWO__127() <= newtype$check#60
       && newtype$check#60 < _module.__default.TWO__127();
    assume true;
    d#0 := LitInt(Div(-98, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(219,20)
    newtype$check#61 := LitInt(-33);
    assert {:id "id538"} 0 - _module.__default.TWO__127() <= newtype$check#61
       && newtype$check#61 < _module.__default.TWO__127();
    assume true;
    assert {:id "id539"} d#0 == LitInt(-33);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(220,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(224,5)
    assume true;
    newtype$check#62 := LitInt(-101);
    assert {:id "id540"} 0 - _module.__default.TWO__127() <= newtype$check#62
       && newtype$check#62 < _module.__default.TWO__127();
    newtype$check#63 := LitInt(-3);
    assert {:id "id541"} 0 - _module.__default.TWO__127() <= newtype$check#63
       && newtype$check#63 < _module.__default.TWO__127();
    assert {:id "id542"} LitInt(-3) != 0;
    newtype$check#64 := LitInt(Mod(-101, LitInt(-3)));
    assert {:id "id543"} 0 - _module.__default.TWO__127() <= newtype$check#64
       && newtype$check#64 < _module.__default.TWO__127();
    assume true;
    a#0 := LitInt(Mod(-101, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(224,23)
    newtype$check#65 := LitInt(1);
    assert {:id "id545"} 0 - _module.__default.TWO__127() <= newtype$check#65
       && newtype$check#65 < _module.__default.TWO__127();
    assume true;
    assert {:id "id546"} a#0 == LitInt(1);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(225,5)
    assume true;
    newtype$check#66 := LitInt(-100);
    assert {:id "id547"} 0 - _module.__default.TWO__127() <= newtype$check#66
       && newtype$check#66 < _module.__default.TWO__127();
    newtype$check#67 := LitInt(-3);
    assert {:id "id548"} 0 - _module.__default.TWO__127() <= newtype$check#67
       && newtype$check#67 < _module.__default.TWO__127();
    assert {:id "id549"} LitInt(-3) != 0;
    newtype$check#68 := LitInt(Mod(-100, LitInt(-3)));
    assert {:id "id550"} 0 - _module.__default.TWO__127() <= newtype$check#68
       && newtype$check#68 < _module.__default.TWO__127();
    assume true;
    b#0 := LitInt(Mod(-100, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(225,23)
    newtype$check#69 := LitInt(2);
    assert {:id "id552"} 0 - _module.__default.TWO__127() <= newtype$check#69
       && newtype$check#69 < _module.__default.TWO__127();
    assume true;
    assert {:id "id553"} b#0 == LitInt(2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(226,5)
    assume true;
    newtype$check#70 := LitInt(-99);
    assert {:id "id554"} 0 - _module.__default.TWO__127() <= newtype$check#70
       && newtype$check#70 < _module.__default.TWO__127();
    newtype$check#71 := LitInt(-3);
    assert {:id "id555"} 0 - _module.__default.TWO__127() <= newtype$check#71
       && newtype$check#71 < _module.__default.TWO__127();
    assert {:id "id556"} LitInt(-3) != 0;
    newtype$check#72 := LitInt(Mod(-99, LitInt(-3)));
    assert {:id "id557"} 0 - _module.__default.TWO__127() <= newtype$check#72
       && newtype$check#72 < _module.__default.TWO__127();
    assume true;
    c#0 := LitInt(Mod(-99, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(226,23)
    newtype$check#73 := LitInt(0);
    assert {:id "id559"} 0 - _module.__default.TWO__127() <= newtype$check#73
       && newtype$check#73 < _module.__default.TWO__127();
    assume true;
    assert {:id "id560"} c#0 == LitInt(0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(227,5)
    assume true;
    newtype$check#74 := LitInt(-98);
    assert {:id "id561"} 0 - _module.__default.TWO__127() <= newtype$check#74
       && newtype$check#74 < _module.__default.TWO__127();
    newtype$check#75 := LitInt(-3);
    assert {:id "id562"} 0 - _module.__default.TWO__127() <= newtype$check#75
       && newtype$check#75 < _module.__default.TWO__127();
    assert {:id "id563"} LitInt(-3) != 0;
    newtype$check#76 := LitInt(Mod(-98, LitInt(-3)));
    assert {:id "id564"} 0 - _module.__default.TWO__127() <= newtype$check#76
       && newtype$check#76 < _module.__default.TWO__127();
    assume true;
    d#0 := LitInt(Mod(-98, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(227,23)
    newtype$check#77 := LitInt(1);
    assert {:id "id566"} 0 - _module.__default.TWO__127() <= newtype$check#77
       && newtype$check#77 < _module.__default.TWO__127();
    assume true;
    assert {:id "id567"} d#0 == LitInt(1);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(228,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(230,5)
    assume true;
    newtype$check#78 := LitInt(101);
    assert {:id "id568"} 0 - _module.__default.TWO__127() <= newtype$check#78
       && newtype$check#78 < _module.__default.TWO__127();
    newtype$check#79 := LitInt(-3);
    assert {:id "id569"} 0 - _module.__default.TWO__127() <= newtype$check#79
       && newtype$check#79 < _module.__default.TWO__127();
    assert {:id "id570"} LitInt(-3) != 0;
    newtype$check#80 := LitInt(Mod(101, LitInt(-3)));
    assert {:id "id571"} 0 - _module.__default.TWO__127() <= newtype$check#80
       && newtype$check#80 < _module.__default.TWO__127();
    assume true;
    a#0 := LitInt(Mod(101, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(230,23)
    newtype$check#81 := LitInt(2);
    assert {:id "id573"} 0 - _module.__default.TWO__127() <= newtype$check#81
       && newtype$check#81 < _module.__default.TWO__127();
    assume true;
    assert {:id "id574"} a#0 == LitInt(2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(231,5)
    assume true;
    newtype$check#82 := LitInt(100);
    assert {:id "id575"} 0 - _module.__default.TWO__127() <= newtype$check#82
       && newtype$check#82 < _module.__default.TWO__127();
    newtype$check#83 := LitInt(-3);
    assert {:id "id576"} 0 - _module.__default.TWO__127() <= newtype$check#83
       && newtype$check#83 < _module.__default.TWO__127();
    assert {:id "id577"} LitInt(-3) != 0;
    newtype$check#84 := LitInt(Mod(100, LitInt(-3)));
    assert {:id "id578"} 0 - _module.__default.TWO__127() <= newtype$check#84
       && newtype$check#84 < _module.__default.TWO__127();
    assume true;
    b#0 := LitInt(Mod(100, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(231,23)
    newtype$check#85 := LitInt(1);
    assert {:id "id580"} 0 - _module.__default.TWO__127() <= newtype$check#85
       && newtype$check#85 < _module.__default.TWO__127();
    assume true;
    assert {:id "id581"} b#0 == LitInt(1);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(232,5)
    assume true;
    newtype$check#86 := LitInt(99);
    assert {:id "id582"} 0 - _module.__default.TWO__127() <= newtype$check#86
       && newtype$check#86 < _module.__default.TWO__127();
    newtype$check#87 := LitInt(-3);
    assert {:id "id583"} 0 - _module.__default.TWO__127() <= newtype$check#87
       && newtype$check#87 < _module.__default.TWO__127();
    assert {:id "id584"} LitInt(-3) != 0;
    newtype$check#88 := LitInt(Mod(99, LitInt(-3)));
    assert {:id "id585"} 0 - _module.__default.TWO__127() <= newtype$check#88
       && newtype$check#88 < _module.__default.TWO__127();
    assume true;
    c#0 := LitInt(Mod(99, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(232,23)
    newtype$check#89 := LitInt(0);
    assert {:id "id587"} 0 - _module.__default.TWO__127() <= newtype$check#89
       && newtype$check#89 < _module.__default.TWO__127();
    assume true;
    assert {:id "id588"} c#0 == LitInt(0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(233,5)
    assume true;
    newtype$check#90 := LitInt(98);
    assert {:id "id589"} 0 - _module.__default.TWO__127() <= newtype$check#90
       && newtype$check#90 < _module.__default.TWO__127();
    newtype$check#91 := LitInt(-3);
    assert {:id "id590"} 0 - _module.__default.TWO__127() <= newtype$check#91
       && newtype$check#91 < _module.__default.TWO__127();
    assert {:id "id591"} LitInt(-3) != 0;
    newtype$check#92 := LitInt(Mod(98, LitInt(-3)));
    assert {:id "id592"} 0 - _module.__default.TWO__127() <= newtype$check#92
       && newtype$check#92 < _module.__default.TWO__127();
    assume true;
    d#0 := LitInt(Mod(98, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(233,23)
    newtype$check#93 := LitInt(2);
    assert {:id "id594"} 0 - _module.__default.TWO__127() <= newtype$check#93
       && newtype$check#93 < _module.__default.TWO__127();
    assume true;
    assert {:id "id595"} d#0 == LitInt(2);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(234,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(236,5)
    assume true;
    newtype$check#94 := LitInt(-101);
    assert {:id "id596"} 0 - _module.__default.TWO__127() <= newtype$check#94
       && newtype$check#94 < _module.__default.TWO__127();
    newtype$check#95 := LitInt(3);
    assert {:id "id597"} 0 - _module.__default.TWO__127() <= newtype$check#95
       && newtype$check#95 < _module.__default.TWO__127();
    assert {:id "id598"} LitInt(3) != 0;
    newtype$check#96 := LitInt(Mod(-101, LitInt(3)));
    assert {:id "id599"} 0 - _module.__default.TWO__127() <= newtype$check#96
       && newtype$check#96 < _module.__default.TWO__127();
    assume true;
    a#0 := LitInt(Mod(-101, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(236,20)
    newtype$check#97 := LitInt(1);
    assert {:id "id601"} 0 - _module.__default.TWO__127() <= newtype$check#97
       && newtype$check#97 < _module.__default.TWO__127();
    assume true;
    assert {:id "id602"} a#0 == LitInt(1);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(237,5)
    assume true;
    newtype$check#98 := LitInt(-100);
    assert {:id "id603"} 0 - _module.__default.TWO__127() <= newtype$check#98
       && newtype$check#98 < _module.__default.TWO__127();
    newtype$check#99 := LitInt(3);
    assert {:id "id604"} 0 - _module.__default.TWO__127() <= newtype$check#99
       && newtype$check#99 < _module.__default.TWO__127();
    assert {:id "id605"} LitInt(3) != 0;
    newtype$check#100 := LitInt(Mod(-100, LitInt(3)));
    assert {:id "id606"} 0 - _module.__default.TWO__127() <= newtype$check#100
       && newtype$check#100 < _module.__default.TWO__127();
    assume true;
    b#0 := LitInt(Mod(-100, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(237,20)
    newtype$check#101 := LitInt(2);
    assert {:id "id608"} 0 - _module.__default.TWO__127() <= newtype$check#101
       && newtype$check#101 < _module.__default.TWO__127();
    assume true;
    assert {:id "id609"} b#0 == LitInt(2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(238,5)
    assume true;
    newtype$check#102 := LitInt(-99);
    assert {:id "id610"} 0 - _module.__default.TWO__127() <= newtype$check#102
       && newtype$check#102 < _module.__default.TWO__127();
    newtype$check#103 := LitInt(3);
    assert {:id "id611"} 0 - _module.__default.TWO__127() <= newtype$check#103
       && newtype$check#103 < _module.__default.TWO__127();
    assert {:id "id612"} LitInt(3) != 0;
    newtype$check#104 := LitInt(Mod(-99, LitInt(3)));
    assert {:id "id613"} 0 - _module.__default.TWO__127() <= newtype$check#104
       && newtype$check#104 < _module.__default.TWO__127();
    assume true;
    c#0 := LitInt(Mod(-99, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(238,20)
    newtype$check#105 := LitInt(0);
    assert {:id "id615"} 0 - _module.__default.TWO__127() <= newtype$check#105
       && newtype$check#105 < _module.__default.TWO__127();
    assume true;
    assert {:id "id616"} c#0 == LitInt(0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(239,5)
    assume true;
    newtype$check#106 := LitInt(-98);
    assert {:id "id617"} 0 - _module.__default.TWO__127() <= newtype$check#106
       && newtype$check#106 < _module.__default.TWO__127();
    newtype$check#107 := LitInt(3);
    assert {:id "id618"} 0 - _module.__default.TWO__127() <= newtype$check#107
       && newtype$check#107 < _module.__default.TWO__127();
    assert {:id "id619"} LitInt(3) != 0;
    newtype$check#108 := LitInt(Mod(-98, LitInt(3)));
    assert {:id "id620"} 0 - _module.__default.TWO__127() <= newtype$check#108
       && newtype$check#108 < _module.__default.TWO__127();
    assume true;
    d#0 := LitInt(Mod(-98, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(239,20)
    newtype$check#109 := LitInt(1);
    assert {:id "id622"} 0 - _module.__default.TWO__127() <= newtype$check#109
       && newtype$check#109 < _module.__default.TWO__127();
    assume true;
    assert {:id "id623"} d#0 == LitInt(1);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(240,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(242,5)
    assume true;
    newtype$check#110 := LitInt(101);
    assert {:id "id624"} 0 - _module.__default.TWO__127() <= newtype$check#110
       && newtype$check#110 < _module.__default.TWO__127();
    newtype$check#111 := LitInt(3);
    assert {:id "id625"} 0 - _module.__default.TWO__127() <= newtype$check#111
       && newtype$check#111 < _module.__default.TWO__127();
    assert {:id "id626"} LitInt(3) != 0;
    newtype$check#112 := LitInt(Mod(101, LitInt(3)));
    assert {:id "id627"} 0 - _module.__default.TWO__127() <= newtype$check#112
       && newtype$check#112 < _module.__default.TWO__127();
    assume true;
    a#0 := LitInt(Mod(101, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(242,19)
    newtype$check#113 := LitInt(2);
    assert {:id "id629"} 0 - _module.__default.TWO__127() <= newtype$check#113
       && newtype$check#113 < _module.__default.TWO__127();
    assume true;
    assert {:id "id630"} a#0 == LitInt(2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(243,5)
    assume true;
    newtype$check#114 := LitInt(100);
    assert {:id "id631"} 0 - _module.__default.TWO__127() <= newtype$check#114
       && newtype$check#114 < _module.__default.TWO__127();
    newtype$check#115 := LitInt(3);
    assert {:id "id632"} 0 - _module.__default.TWO__127() <= newtype$check#115
       && newtype$check#115 < _module.__default.TWO__127();
    assert {:id "id633"} LitInt(3) != 0;
    newtype$check#116 := LitInt(Mod(100, LitInt(3)));
    assert {:id "id634"} 0 - _module.__default.TWO__127() <= newtype$check#116
       && newtype$check#116 < _module.__default.TWO__127();
    assume true;
    b#0 := LitInt(Mod(100, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(243,19)
    newtype$check#117 := LitInt(1);
    assert {:id "id636"} 0 - _module.__default.TWO__127() <= newtype$check#117
       && newtype$check#117 < _module.__default.TWO__127();
    assume true;
    assert {:id "id637"} b#0 == LitInt(1);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(244,5)
    assume true;
    newtype$check#118 := LitInt(99);
    assert {:id "id638"} 0 - _module.__default.TWO__127() <= newtype$check#118
       && newtype$check#118 < _module.__default.TWO__127();
    newtype$check#119 := LitInt(3);
    assert {:id "id639"} 0 - _module.__default.TWO__127() <= newtype$check#119
       && newtype$check#119 < _module.__default.TWO__127();
    assert {:id "id640"} LitInt(3) != 0;
    newtype$check#120 := LitInt(Mod(99, LitInt(3)));
    assert {:id "id641"} 0 - _module.__default.TWO__127() <= newtype$check#120
       && newtype$check#120 < _module.__default.TWO__127();
    assume true;
    c#0 := LitInt(Mod(99, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(244,19)
    newtype$check#121 := LitInt(0);
    assert {:id "id643"} 0 - _module.__default.TWO__127() <= newtype$check#121
       && newtype$check#121 < _module.__default.TWO__127();
    assume true;
    assert {:id "id644"} c#0 == LitInt(0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(245,5)
    assume true;
    newtype$check#122 := LitInt(98);
    assert {:id "id645"} 0 - _module.__default.TWO__127() <= newtype$check#122
       && newtype$check#122 < _module.__default.TWO__127();
    newtype$check#123 := LitInt(3);
    assert {:id "id646"} 0 - _module.__default.TWO__127() <= newtype$check#123
       && newtype$check#123 < _module.__default.TWO__127();
    assert {:id "id647"} LitInt(3) != 0;
    newtype$check#124 := LitInt(Mod(98, LitInt(3)));
    assert {:id "id648"} 0 - _module.__default.TWO__127() <= newtype$check#124
       && newtype$check#124 < _module.__default.TWO__127();
    assume true;
    d#0 := LitInt(Mod(98, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(245,19)
    newtype$check#125 := LitInt(2);
    assert {:id "id650"} 0 - _module.__default.TWO__127() <= newtype$check#125
       && newtype$check#125 < _module.__default.TWO__127();
    assume true;
    assert {:id "id651"} d#0 == LitInt(2);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(246,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
}



procedure {:verboseName "M4 (well-formedness)"} CheckWellFormed$$_module.__default.M4();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M4 (call)"} Call$$_module.__default.M4();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M4 (correctness)"} Impl$$_module.__default.M4() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M4 (correctness)"} Impl$$_module.__default.M4() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var neg#0: int
     where 0 - _module.__default.TWO__15() <= neg#0 && neg#0 < _module.__default.TWO__15();
  var pos#0: int
     where 0 - _module.__default.TWO__15() <= pos#0 && pos#0 < _module.__default.TWO__15();
  var $rhs#0: int;
  var newtype$check#0: int;
  var $rhs#1: int;
  var newtype$check#1: int;
  var a#0: int
     where 0 - _module.__default.TWO__15() <= a#0 && a#0 < _module.__default.TWO__15();
  var newtype$check#2: int;
  var newtype$check#3: int;
  var newtype$check#4: int;
  var b#0: int
     where 0 - _module.__default.TWO__15() <= b#0 && b#0 < _module.__default.TWO__15();
  var newtype$check#5: int;
  var newtype$check#6: int;
  var newtype$check#7: int;
  var c#0: int
     where 0 - _module.__default.TWO__15() <= c#0 && c#0 < _module.__default.TWO__15();
  var newtype$check#8: int;
  var newtype$check#9: int;
  var newtype$check#10: int;
  var d#0: int
     where 0 - _module.__default.TWO__15() <= d#0 && d#0 < _module.__default.TWO__15();
  var newtype$check#11: int;
  var newtype$check#12: int;
  var newtype$check#13: int;
  var newtype$check#14: int;
  var newtype$check#15: int;
  var newtype$check#16: int;
  var newtype$check#17: int;
  var newtype$check#18: int;
  var newtype$check#19: int;
  var newtype$check#20: int;
  var newtype$check#21: int;
  var newtype$check#22: int;
  var newtype$check#23: int;
  var newtype$check#24: int;
  var newtype$check#25: int;
  var newtype$check#26: int;
  var newtype$check#27: int;
  var newtype$check#28: int;
  var newtype$check#29: int;
  var newtype$check#30: int;
  var newtype$check#31: int;
  var newtype$check#32: int;
  var newtype$check#33: int;
  var newtype$check#34: int;
  var newtype$check#35: int;
  var newtype$check#36: int;
  var newtype$check#37: int;
  var newtype$check#38: int;
  var newtype$check#39: int;
  var newtype$check#40: int;
  var newtype$check#41: int;
  var newtype$check#42: int;
  var newtype$check#43: int;
  var newtype$check#44: int;
  var newtype$check#45: int;
  var newtype$check#46: int;
  var newtype$check#47: int;
  var newtype$check#48: int;
  var newtype$check#49: int;
  var newtype$check#50: int;
  var newtype$check#51: int;
  var newtype$check#52: int;
  var newtype$check#53: int;
  var newtype$check#54: int;
  var newtype$check#55: int;
  var newtype$check#56: int;
  var newtype$check#57: int;
  var newtype$check#58: int;
  var newtype$check#59: int;
  var newtype$check#60: int;
  var newtype$check#61: int;
  var newtype$check#62: int;
  var newtype$check#63: int;
  var newtype$check#64: int;
  var newtype$check#65: int;
  var newtype$check#66: int;
  var newtype$check#67: int;
  var newtype$check#68: int;
  var newtype$check#69: int;
  var newtype$check#70: int;
  var newtype$check#71: int;
  var newtype$check#72: int;
  var newtype$check#73: int;
  var newtype$check#74: int;
  var newtype$check#75: int;
  var newtype$check#76: int;
  var newtype$check#77: int;
  var newtype$check#78: int;
  var newtype$check#79: int;
  var newtype$check#80: int;
  var newtype$check#81: int;
  var newtype$check#82: int;
  var newtype$check#83: int;
  var newtype$check#84: int;
  var newtype$check#85: int;
  var newtype$check#86: int;
  var newtype$check#87: int;
  var newtype$check#88: int;
  var newtype$check#89: int;
  var newtype$check#90: int;
  var newtype$check#91: int;
  var newtype$check#92: int;
  var newtype$check#93: int;
  var newtype$check#94: int;
  var newtype$check#95: int;
  var newtype$check#96: int;
  var newtype$check#97: int;
  var newtype$check#98: int;
  var newtype$check#99: int;
  var newtype$check#100: int;
  var newtype$check#101: int;
  var newtype$check#102: int;
  var newtype$check#103: int;
  var newtype$check#104: int;
  var newtype$check#105: int;
  var newtype$check#106: int;
  var newtype$check#107: int;
  var newtype$check#108: int;
  var newtype$check#109: int;
  var newtype$check#110: int;
  var newtype$check#111: int;
  var newtype$check#112: int;
  var newtype$check#113: int;
  var newtype$check#114: int;
  var newtype$check#115: int;
  var newtype$check#116: int;
  var newtype$check#117: int;
  var newtype$check#118: int;
  var newtype$check#119: int;
  var newtype$check#120: int;
  var newtype$check#121: int;
  var newtype$check#122: int;
  var newtype$check#123: int;
  var newtype$check#124: int;
  var newtype$check#125: int;

    // AddMethodImpl: M4, Impl$$_module.__default.M4
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    havoc neg#0 /* where 0 - _module.__default.TWO__15() <= neg#0 && neg#0 < _module.__default.TWO__15() */, pos#0 /* where 0 - _module.__default.TWO__15() <= pos#0 && pos#0 < _module.__default.TWO__15() */;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(251,12)
    assume true;
    assume true;
    newtype$check#0 := LitInt(-6);
    assert {:id "id652"} 0 - _module.__default.TWO__15() <= newtype$check#0
       && newtype$check#0 < _module.__default.TWO__15();
    assume true;
    $rhs#0 := LitInt(-6);
    newtype$check#1 := LitInt(6);
    assert {:id "id654"} 0 - _module.__default.TWO__15() <= newtype$check#1
       && newtype$check#1 < _module.__default.TWO__15();
    assume true;
    $rhs#1 := LitInt(6);
    neg#0 := $rhs#0;
    pos#0 := $rhs#1;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(255,9)
    assume true;
    newtype$check#2 := LitInt(-4);
    assert {:id "id658"} 0 - _module.__default.TWO__15() <= newtype$check#2
       && newtype$check#2 < _module.__default.TWO__15();
    assert {:id "id659"} LitInt(-4) != 0;
    newtype$check#3 := Div(neg#0, LitInt(-4));
    assert {:id "id660"} 0 - _module.__default.TWO__15() <= newtype$check#3
       && newtype$check#3 < _module.__default.TWO__15();
    assume true;
    a#0 := Div(neg#0, LitInt(-4));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(255,24)
    newtype$check#4 := LitInt(2);
    assert {:id "id662"} 0 - _module.__default.TWO__15() <= newtype$check#4
       && newtype$check#4 < _module.__default.TWO__15();
    assume true;
    assert {:id "id663"} a#0 == LitInt(2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(256,9)
    assume true;
    newtype$check#5 := LitInt(-4);
    assert {:id "id664"} 0 - _module.__default.TWO__15() <= newtype$check#5
       && newtype$check#5 < _module.__default.TWO__15();
    assert {:id "id665"} LitInt(-4) != 0;
    newtype$check#6 := Div(pos#0, LitInt(-4));
    assert {:id "id666"} 0 - _module.__default.TWO__15() <= newtype$check#6
       && newtype$check#6 < _module.__default.TWO__15();
    assume true;
    b#0 := Div(pos#0, LitInt(-4));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(256,24)
    newtype$check#7 := LitInt(-1);
    assert {:id "id668"} 0 - _module.__default.TWO__15() <= newtype$check#7
       && newtype$check#7 < _module.__default.TWO__15();
    assume true;
    assert {:id "id669"} b#0 == LitInt(-1);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(257,9)
    assume true;
    newtype$check#8 := LitInt(4);
    assert {:id "id670"} 0 - _module.__default.TWO__15() <= newtype$check#8
       && newtype$check#8 < _module.__default.TWO__15();
    assert {:id "id671"} LitInt(4) != 0;
    newtype$check#9 := Div(neg#0, LitInt(4));
    assert {:id "id672"} 0 - _module.__default.TWO__15() <= newtype$check#9
       && newtype$check#9 < _module.__default.TWO__15();
    assume true;
    c#0 := Div(neg#0, LitInt(4));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(257,24)
    newtype$check#10 := LitInt(-2);
    assert {:id "id674"} 0 - _module.__default.TWO__15() <= newtype$check#10
       && newtype$check#10 < _module.__default.TWO__15();
    assume true;
    assert {:id "id675"} c#0 == LitInt(-2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(258,9)
    assume true;
    newtype$check#11 := LitInt(4);
    assert {:id "id676"} 0 - _module.__default.TWO__15() <= newtype$check#11
       && newtype$check#11 < _module.__default.TWO__15();
    assert {:id "id677"} LitInt(4) != 0;
    newtype$check#12 := Div(pos#0, LitInt(4));
    assert {:id "id678"} 0 - _module.__default.TWO__15() <= newtype$check#12
       && newtype$check#12 < _module.__default.TWO__15();
    assume true;
    d#0 := Div(pos#0, LitInt(4));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(258,24)
    newtype$check#13 := LitInt(1);
    assert {:id "id680"} 0 - _module.__default.TWO__15() <= newtype$check#13
       && newtype$check#13 < _module.__default.TWO__15();
    assume true;
    assert {:id "id681"} d#0 == LitInt(1);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(259,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(261,5)
    assume true;
    newtype$check#14 := LitInt(-4);
    assert {:id "id682"} 0 - _module.__default.TWO__15() <= newtype$check#14
       && newtype$check#14 < _module.__default.TWO__15();
    newtype$check#15 := LitInt(-2);
    assert {:id "id683"} 0 - _module.__default.TWO__15() <= newtype$check#15
       && newtype$check#15 < _module.__default.TWO__15();
    assert {:id "id684"} LitInt(-2) != 0;
    newtype$check#16 := LitInt(Div(-4, LitInt(-2)));
    assert {:id "id685"} 0 - _module.__default.TWO__15() <= newtype$check#16
       && newtype$check#16 < _module.__default.TWO__15();
    assume true;
    a#0 := LitInt(Div(-4, LitInt(-2)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(261,21)
    newtype$check#17 := LitInt(2);
    assert {:id "id687"} 0 - _module.__default.TWO__15() <= newtype$check#17
       && newtype$check#17 < _module.__default.TWO__15();
    assume true;
    assert {:id "id688"} a#0 == LitInt(2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(262,5)
    assume true;
    newtype$check#18 := LitInt(4);
    assert {:id "id689"} 0 - _module.__default.TWO__15() <= newtype$check#18
       && newtype$check#18 < _module.__default.TWO__15();
    newtype$check#19 := LitInt(-2);
    assert {:id "id690"} 0 - _module.__default.TWO__15() <= newtype$check#19
       && newtype$check#19 < _module.__default.TWO__15();
    assert {:id "id691"} LitInt(-2) != 0;
    newtype$check#20 := LitInt(Div(4, LitInt(-2)));
    assert {:id "id692"} 0 - _module.__default.TWO__15() <= newtype$check#20
       && newtype$check#20 < _module.__default.TWO__15();
    assume true;
    b#0 := LitInt(Div(4, LitInt(-2)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(262,21)
    newtype$check#21 := LitInt(-2);
    assert {:id "id694"} 0 - _module.__default.TWO__15() <= newtype$check#21
       && newtype$check#21 < _module.__default.TWO__15();
    assume true;
    assert {:id "id695"} b#0 == LitInt(-2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(263,5)
    assume true;
    newtype$check#22 := LitInt(-4);
    assert {:id "id696"} 0 - _module.__default.TWO__15() <= newtype$check#22
       && newtype$check#22 < _module.__default.TWO__15();
    newtype$check#23 := LitInt(2);
    assert {:id "id697"} 0 - _module.__default.TWO__15() <= newtype$check#23
       && newtype$check#23 < _module.__default.TWO__15();
    assert {:id "id698"} LitInt(2) != 0;
    newtype$check#24 := LitInt(Div(-4, LitInt(2)));
    assert {:id "id699"} 0 - _module.__default.TWO__15() <= newtype$check#24
       && newtype$check#24 < _module.__default.TWO__15();
    assume true;
    c#0 := LitInt(Div(-4, LitInt(2)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(263,21)
    newtype$check#25 := LitInt(-2);
    assert {:id "id701"} 0 - _module.__default.TWO__15() <= newtype$check#25
       && newtype$check#25 < _module.__default.TWO__15();
    assume true;
    assert {:id "id702"} c#0 == LitInt(-2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(264,5)
    assume true;
    newtype$check#26 := LitInt(4);
    assert {:id "id703"} 0 - _module.__default.TWO__15() <= newtype$check#26
       && newtype$check#26 < _module.__default.TWO__15();
    newtype$check#27 := LitInt(2);
    assert {:id "id704"} 0 - _module.__default.TWO__15() <= newtype$check#27
       && newtype$check#27 < _module.__default.TWO__15();
    assert {:id "id705"} LitInt(2) != 0;
    newtype$check#28 := LitInt(Div(4, LitInt(2)));
    assert {:id "id706"} 0 - _module.__default.TWO__15() <= newtype$check#28
       && newtype$check#28 < _module.__default.TWO__15();
    assume true;
    d#0 := LitInt(Div(4, LitInt(2)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(264,21)
    newtype$check#29 := LitInt(2);
    assert {:id "id708"} 0 - _module.__default.TWO__15() <= newtype$check#29
       && newtype$check#29 < _module.__default.TWO__15();
    assume true;
    assert {:id "id709"} d#0 == LitInt(2);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(265,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(267,5)
    assume true;
    newtype$check#30 := LitInt(101);
    assert {:id "id710"} 0 - _module.__default.TWO__15() <= newtype$check#30
       && newtype$check#30 < _module.__default.TWO__15();
    newtype$check#31 := LitInt(-3);
    assert {:id "id711"} 0 - _module.__default.TWO__15() <= newtype$check#31
       && newtype$check#31 < _module.__default.TWO__15();
    assert {:id "id712"} LitInt(-3) != 0;
    newtype$check#32 := LitInt(Div(101, LitInt(-3)));
    assert {:id "id713"} 0 - _module.__default.TWO__15() <= newtype$check#32
       && newtype$check#32 < _module.__default.TWO__15();
    assume true;
    a#0 := LitInt(Div(101, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(267,20)
    newtype$check#33 := LitInt(-33);
    assert {:id "id715"} 0 - _module.__default.TWO__15() <= newtype$check#33
       && newtype$check#33 < _module.__default.TWO__15();
    assume true;
    assert {:id "id716"} a#0 == LitInt(-33);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(268,5)
    assume true;
    newtype$check#34 := LitInt(100);
    assert {:id "id717"} 0 - _module.__default.TWO__15() <= newtype$check#34
       && newtype$check#34 < _module.__default.TWO__15();
    newtype$check#35 := LitInt(-3);
    assert {:id "id718"} 0 - _module.__default.TWO__15() <= newtype$check#35
       && newtype$check#35 < _module.__default.TWO__15();
    assert {:id "id719"} LitInt(-3) != 0;
    newtype$check#36 := LitInt(Div(100, LitInt(-3)));
    assert {:id "id720"} 0 - _module.__default.TWO__15() <= newtype$check#36
       && newtype$check#36 < _module.__default.TWO__15();
    assume true;
    b#0 := LitInt(Div(100, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(268,20)
    newtype$check#37 := LitInt(-33);
    assert {:id "id722"} 0 - _module.__default.TWO__15() <= newtype$check#37
       && newtype$check#37 < _module.__default.TWO__15();
    assume true;
    assert {:id "id723"} b#0 == LitInt(-33);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(269,5)
    assume true;
    newtype$check#38 := LitInt(99);
    assert {:id "id724"} 0 - _module.__default.TWO__15() <= newtype$check#38
       && newtype$check#38 < _module.__default.TWO__15();
    newtype$check#39 := LitInt(-3);
    assert {:id "id725"} 0 - _module.__default.TWO__15() <= newtype$check#39
       && newtype$check#39 < _module.__default.TWO__15();
    assert {:id "id726"} LitInt(-3) != 0;
    newtype$check#40 := LitInt(Div(99, LitInt(-3)));
    assert {:id "id727"} 0 - _module.__default.TWO__15() <= newtype$check#40
       && newtype$check#40 < _module.__default.TWO__15();
    assume true;
    c#0 := LitInt(Div(99, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(269,20)
    newtype$check#41 := LitInt(-33);
    assert {:id "id729"} 0 - _module.__default.TWO__15() <= newtype$check#41
       && newtype$check#41 < _module.__default.TWO__15();
    assume true;
    assert {:id "id730"} c#0 == LitInt(-33);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(270,5)
    assume true;
    newtype$check#42 := LitInt(98);
    assert {:id "id731"} 0 - _module.__default.TWO__15() <= newtype$check#42
       && newtype$check#42 < _module.__default.TWO__15();
    newtype$check#43 := LitInt(-3);
    assert {:id "id732"} 0 - _module.__default.TWO__15() <= newtype$check#43
       && newtype$check#43 < _module.__default.TWO__15();
    assert {:id "id733"} LitInt(-3) != 0;
    newtype$check#44 := LitInt(Div(98, LitInt(-3)));
    assert {:id "id734"} 0 - _module.__default.TWO__15() <= newtype$check#44
       && newtype$check#44 < _module.__default.TWO__15();
    assume true;
    d#0 := LitInt(Div(98, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(270,20)
    newtype$check#45 := LitInt(-32);
    assert {:id "id736"} 0 - _module.__default.TWO__15() <= newtype$check#45
       && newtype$check#45 < _module.__default.TWO__15();
    assume true;
    assert {:id "id737"} d#0 == LitInt(-32);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(271,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(273,5)
    assume true;
    newtype$check#46 := LitInt(-101);
    assert {:id "id738"} 0 - _module.__default.TWO__15() <= newtype$check#46
       && newtype$check#46 < _module.__default.TWO__15();
    newtype$check#47 := LitInt(3);
    assert {:id "id739"} 0 - _module.__default.TWO__15() <= newtype$check#47
       && newtype$check#47 < _module.__default.TWO__15();
    assert {:id "id740"} LitInt(3) != 0;
    newtype$check#48 := LitInt(Div(-101, LitInt(3)));
    assert {:id "id741"} 0 - _module.__default.TWO__15() <= newtype$check#48
       && newtype$check#48 < _module.__default.TWO__15();
    assume true;
    a#0 := LitInt(Div(-101, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(273,20)
    newtype$check#49 := LitInt(-34);
    assert {:id "id743"} 0 - _module.__default.TWO__15() <= newtype$check#49
       && newtype$check#49 < _module.__default.TWO__15();
    assume true;
    assert {:id "id744"} a#0 == LitInt(-34);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(274,5)
    assume true;
    newtype$check#50 := LitInt(-100);
    assert {:id "id745"} 0 - _module.__default.TWO__15() <= newtype$check#50
       && newtype$check#50 < _module.__default.TWO__15();
    newtype$check#51 := LitInt(3);
    assert {:id "id746"} 0 - _module.__default.TWO__15() <= newtype$check#51
       && newtype$check#51 < _module.__default.TWO__15();
    assert {:id "id747"} LitInt(3) != 0;
    newtype$check#52 := LitInt(Div(-100, LitInt(3)));
    assert {:id "id748"} 0 - _module.__default.TWO__15() <= newtype$check#52
       && newtype$check#52 < _module.__default.TWO__15();
    assume true;
    b#0 := LitInt(Div(-100, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(274,20)
    newtype$check#53 := LitInt(-34);
    assert {:id "id750"} 0 - _module.__default.TWO__15() <= newtype$check#53
       && newtype$check#53 < _module.__default.TWO__15();
    assume true;
    assert {:id "id751"} b#0 == LitInt(-34);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(275,5)
    assume true;
    newtype$check#54 := LitInt(-99);
    assert {:id "id752"} 0 - _module.__default.TWO__15() <= newtype$check#54
       && newtype$check#54 < _module.__default.TWO__15();
    newtype$check#55 := LitInt(3);
    assert {:id "id753"} 0 - _module.__default.TWO__15() <= newtype$check#55
       && newtype$check#55 < _module.__default.TWO__15();
    assert {:id "id754"} LitInt(3) != 0;
    newtype$check#56 := LitInt(Div(-99, LitInt(3)));
    assert {:id "id755"} 0 - _module.__default.TWO__15() <= newtype$check#56
       && newtype$check#56 < _module.__default.TWO__15();
    assume true;
    c#0 := LitInt(Div(-99, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(275,20)
    newtype$check#57 := LitInt(-33);
    assert {:id "id757"} 0 - _module.__default.TWO__15() <= newtype$check#57
       && newtype$check#57 < _module.__default.TWO__15();
    assume true;
    assert {:id "id758"} c#0 == LitInt(-33);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(276,5)
    assume true;
    newtype$check#58 := LitInt(-98);
    assert {:id "id759"} 0 - _module.__default.TWO__15() <= newtype$check#58
       && newtype$check#58 < _module.__default.TWO__15();
    newtype$check#59 := LitInt(3);
    assert {:id "id760"} 0 - _module.__default.TWO__15() <= newtype$check#59
       && newtype$check#59 < _module.__default.TWO__15();
    assert {:id "id761"} LitInt(3) != 0;
    newtype$check#60 := LitInt(Div(-98, LitInt(3)));
    assert {:id "id762"} 0 - _module.__default.TWO__15() <= newtype$check#60
       && newtype$check#60 < _module.__default.TWO__15();
    assume true;
    d#0 := LitInt(Div(-98, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(276,20)
    newtype$check#61 := LitInt(-33);
    assert {:id "id764"} 0 - _module.__default.TWO__15() <= newtype$check#61
       && newtype$check#61 < _module.__default.TWO__15();
    assume true;
    assert {:id "id765"} d#0 == LitInt(-33);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(277,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(281,5)
    assume true;
    newtype$check#62 := LitInt(-101);
    assert {:id "id766"} 0 - _module.__default.TWO__15() <= newtype$check#62
       && newtype$check#62 < _module.__default.TWO__15();
    newtype$check#63 := LitInt(-3);
    assert {:id "id767"} 0 - _module.__default.TWO__15() <= newtype$check#63
       && newtype$check#63 < _module.__default.TWO__15();
    assert {:id "id768"} LitInt(-3) != 0;
    newtype$check#64 := LitInt(Mod(-101, LitInt(-3)));
    assert {:id "id769"} 0 - _module.__default.TWO__15() <= newtype$check#64
       && newtype$check#64 < _module.__default.TWO__15();
    assume true;
    a#0 := LitInt(Mod(-101, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(281,23)
    newtype$check#65 := LitInt(1);
    assert {:id "id771"} 0 - _module.__default.TWO__15() <= newtype$check#65
       && newtype$check#65 < _module.__default.TWO__15();
    assume true;
    assert {:id "id772"} a#0 == LitInt(1);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(282,5)
    assume true;
    newtype$check#66 := LitInt(-100);
    assert {:id "id773"} 0 - _module.__default.TWO__15() <= newtype$check#66
       && newtype$check#66 < _module.__default.TWO__15();
    newtype$check#67 := LitInt(-3);
    assert {:id "id774"} 0 - _module.__default.TWO__15() <= newtype$check#67
       && newtype$check#67 < _module.__default.TWO__15();
    assert {:id "id775"} LitInt(-3) != 0;
    newtype$check#68 := LitInt(Mod(-100, LitInt(-3)));
    assert {:id "id776"} 0 - _module.__default.TWO__15() <= newtype$check#68
       && newtype$check#68 < _module.__default.TWO__15();
    assume true;
    b#0 := LitInt(Mod(-100, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(282,23)
    newtype$check#69 := LitInt(2);
    assert {:id "id778"} 0 - _module.__default.TWO__15() <= newtype$check#69
       && newtype$check#69 < _module.__default.TWO__15();
    assume true;
    assert {:id "id779"} b#0 == LitInt(2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(283,5)
    assume true;
    newtype$check#70 := LitInt(-99);
    assert {:id "id780"} 0 - _module.__default.TWO__15() <= newtype$check#70
       && newtype$check#70 < _module.__default.TWO__15();
    newtype$check#71 := LitInt(-3);
    assert {:id "id781"} 0 - _module.__default.TWO__15() <= newtype$check#71
       && newtype$check#71 < _module.__default.TWO__15();
    assert {:id "id782"} LitInt(-3) != 0;
    newtype$check#72 := LitInt(Mod(-99, LitInt(-3)));
    assert {:id "id783"} 0 - _module.__default.TWO__15() <= newtype$check#72
       && newtype$check#72 < _module.__default.TWO__15();
    assume true;
    c#0 := LitInt(Mod(-99, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(283,23)
    newtype$check#73 := LitInt(0);
    assert {:id "id785"} 0 - _module.__default.TWO__15() <= newtype$check#73
       && newtype$check#73 < _module.__default.TWO__15();
    assume true;
    assert {:id "id786"} c#0 == LitInt(0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(284,5)
    assume true;
    newtype$check#74 := LitInt(-98);
    assert {:id "id787"} 0 - _module.__default.TWO__15() <= newtype$check#74
       && newtype$check#74 < _module.__default.TWO__15();
    newtype$check#75 := LitInt(-3);
    assert {:id "id788"} 0 - _module.__default.TWO__15() <= newtype$check#75
       && newtype$check#75 < _module.__default.TWO__15();
    assert {:id "id789"} LitInt(-3) != 0;
    newtype$check#76 := LitInt(Mod(-98, LitInt(-3)));
    assert {:id "id790"} 0 - _module.__default.TWO__15() <= newtype$check#76
       && newtype$check#76 < _module.__default.TWO__15();
    assume true;
    d#0 := LitInt(Mod(-98, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(284,23)
    newtype$check#77 := LitInt(1);
    assert {:id "id792"} 0 - _module.__default.TWO__15() <= newtype$check#77
       && newtype$check#77 < _module.__default.TWO__15();
    assume true;
    assert {:id "id793"} d#0 == LitInt(1);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(285,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(287,5)
    assume true;
    newtype$check#78 := LitInt(101);
    assert {:id "id794"} 0 - _module.__default.TWO__15() <= newtype$check#78
       && newtype$check#78 < _module.__default.TWO__15();
    newtype$check#79 := LitInt(-3);
    assert {:id "id795"} 0 - _module.__default.TWO__15() <= newtype$check#79
       && newtype$check#79 < _module.__default.TWO__15();
    assert {:id "id796"} LitInt(-3) != 0;
    newtype$check#80 := LitInt(Mod(101, LitInt(-3)));
    assert {:id "id797"} 0 - _module.__default.TWO__15() <= newtype$check#80
       && newtype$check#80 < _module.__default.TWO__15();
    assume true;
    a#0 := LitInt(Mod(101, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(287,23)
    newtype$check#81 := LitInt(2);
    assert {:id "id799"} 0 - _module.__default.TWO__15() <= newtype$check#81
       && newtype$check#81 < _module.__default.TWO__15();
    assume true;
    assert {:id "id800"} a#0 == LitInt(2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(288,5)
    assume true;
    newtype$check#82 := LitInt(100);
    assert {:id "id801"} 0 - _module.__default.TWO__15() <= newtype$check#82
       && newtype$check#82 < _module.__default.TWO__15();
    newtype$check#83 := LitInt(-3);
    assert {:id "id802"} 0 - _module.__default.TWO__15() <= newtype$check#83
       && newtype$check#83 < _module.__default.TWO__15();
    assert {:id "id803"} LitInt(-3) != 0;
    newtype$check#84 := LitInt(Mod(100, LitInt(-3)));
    assert {:id "id804"} 0 - _module.__default.TWO__15() <= newtype$check#84
       && newtype$check#84 < _module.__default.TWO__15();
    assume true;
    b#0 := LitInt(Mod(100, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(288,23)
    newtype$check#85 := LitInt(1);
    assert {:id "id806"} 0 - _module.__default.TWO__15() <= newtype$check#85
       && newtype$check#85 < _module.__default.TWO__15();
    assume true;
    assert {:id "id807"} b#0 == LitInt(1);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(289,5)
    assume true;
    newtype$check#86 := LitInt(99);
    assert {:id "id808"} 0 - _module.__default.TWO__15() <= newtype$check#86
       && newtype$check#86 < _module.__default.TWO__15();
    newtype$check#87 := LitInt(-3);
    assert {:id "id809"} 0 - _module.__default.TWO__15() <= newtype$check#87
       && newtype$check#87 < _module.__default.TWO__15();
    assert {:id "id810"} LitInt(-3) != 0;
    newtype$check#88 := LitInt(Mod(99, LitInt(-3)));
    assert {:id "id811"} 0 - _module.__default.TWO__15() <= newtype$check#88
       && newtype$check#88 < _module.__default.TWO__15();
    assume true;
    c#0 := LitInt(Mod(99, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(289,23)
    newtype$check#89 := LitInt(0);
    assert {:id "id813"} 0 - _module.__default.TWO__15() <= newtype$check#89
       && newtype$check#89 < _module.__default.TWO__15();
    assume true;
    assert {:id "id814"} c#0 == LitInt(0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(290,5)
    assume true;
    newtype$check#90 := LitInt(98);
    assert {:id "id815"} 0 - _module.__default.TWO__15() <= newtype$check#90
       && newtype$check#90 < _module.__default.TWO__15();
    newtype$check#91 := LitInt(-3);
    assert {:id "id816"} 0 - _module.__default.TWO__15() <= newtype$check#91
       && newtype$check#91 < _module.__default.TWO__15();
    assert {:id "id817"} LitInt(-3) != 0;
    newtype$check#92 := LitInt(Mod(98, LitInt(-3)));
    assert {:id "id818"} 0 - _module.__default.TWO__15() <= newtype$check#92
       && newtype$check#92 < _module.__default.TWO__15();
    assume true;
    d#0 := LitInt(Mod(98, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(290,23)
    newtype$check#93 := LitInt(2);
    assert {:id "id820"} 0 - _module.__default.TWO__15() <= newtype$check#93
       && newtype$check#93 < _module.__default.TWO__15();
    assume true;
    assert {:id "id821"} d#0 == LitInt(2);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(291,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(293,5)
    assume true;
    newtype$check#94 := LitInt(-101);
    assert {:id "id822"} 0 - _module.__default.TWO__15() <= newtype$check#94
       && newtype$check#94 < _module.__default.TWO__15();
    newtype$check#95 := LitInt(3);
    assert {:id "id823"} 0 - _module.__default.TWO__15() <= newtype$check#95
       && newtype$check#95 < _module.__default.TWO__15();
    assert {:id "id824"} LitInt(3) != 0;
    newtype$check#96 := LitInt(Mod(-101, LitInt(3)));
    assert {:id "id825"} 0 - _module.__default.TWO__15() <= newtype$check#96
       && newtype$check#96 < _module.__default.TWO__15();
    assume true;
    a#0 := LitInt(Mod(-101, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(293,20)
    newtype$check#97 := LitInt(1);
    assert {:id "id827"} 0 - _module.__default.TWO__15() <= newtype$check#97
       && newtype$check#97 < _module.__default.TWO__15();
    assume true;
    assert {:id "id828"} a#0 == LitInt(1);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(294,5)
    assume true;
    newtype$check#98 := LitInt(-100);
    assert {:id "id829"} 0 - _module.__default.TWO__15() <= newtype$check#98
       && newtype$check#98 < _module.__default.TWO__15();
    newtype$check#99 := LitInt(3);
    assert {:id "id830"} 0 - _module.__default.TWO__15() <= newtype$check#99
       && newtype$check#99 < _module.__default.TWO__15();
    assert {:id "id831"} LitInt(3) != 0;
    newtype$check#100 := LitInt(Mod(-100, LitInt(3)));
    assert {:id "id832"} 0 - _module.__default.TWO__15() <= newtype$check#100
       && newtype$check#100 < _module.__default.TWO__15();
    assume true;
    b#0 := LitInt(Mod(-100, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(294,20)
    newtype$check#101 := LitInt(2);
    assert {:id "id834"} 0 - _module.__default.TWO__15() <= newtype$check#101
       && newtype$check#101 < _module.__default.TWO__15();
    assume true;
    assert {:id "id835"} b#0 == LitInt(2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(295,5)
    assume true;
    newtype$check#102 := LitInt(-99);
    assert {:id "id836"} 0 - _module.__default.TWO__15() <= newtype$check#102
       && newtype$check#102 < _module.__default.TWO__15();
    newtype$check#103 := LitInt(3);
    assert {:id "id837"} 0 - _module.__default.TWO__15() <= newtype$check#103
       && newtype$check#103 < _module.__default.TWO__15();
    assert {:id "id838"} LitInt(3) != 0;
    newtype$check#104 := LitInt(Mod(-99, LitInt(3)));
    assert {:id "id839"} 0 - _module.__default.TWO__15() <= newtype$check#104
       && newtype$check#104 < _module.__default.TWO__15();
    assume true;
    c#0 := LitInt(Mod(-99, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(295,20)
    newtype$check#105 := LitInt(0);
    assert {:id "id841"} 0 - _module.__default.TWO__15() <= newtype$check#105
       && newtype$check#105 < _module.__default.TWO__15();
    assume true;
    assert {:id "id842"} c#0 == LitInt(0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(296,5)
    assume true;
    newtype$check#106 := LitInt(-98);
    assert {:id "id843"} 0 - _module.__default.TWO__15() <= newtype$check#106
       && newtype$check#106 < _module.__default.TWO__15();
    newtype$check#107 := LitInt(3);
    assert {:id "id844"} 0 - _module.__default.TWO__15() <= newtype$check#107
       && newtype$check#107 < _module.__default.TWO__15();
    assert {:id "id845"} LitInt(3) != 0;
    newtype$check#108 := LitInt(Mod(-98, LitInt(3)));
    assert {:id "id846"} 0 - _module.__default.TWO__15() <= newtype$check#108
       && newtype$check#108 < _module.__default.TWO__15();
    assume true;
    d#0 := LitInt(Mod(-98, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(296,20)
    newtype$check#109 := LitInt(1);
    assert {:id "id848"} 0 - _module.__default.TWO__15() <= newtype$check#109
       && newtype$check#109 < _module.__default.TWO__15();
    assume true;
    assert {:id "id849"} d#0 == LitInt(1);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(297,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(299,5)
    assume true;
    newtype$check#110 := LitInt(101);
    assert {:id "id850"} 0 - _module.__default.TWO__15() <= newtype$check#110
       && newtype$check#110 < _module.__default.TWO__15();
    newtype$check#111 := LitInt(3);
    assert {:id "id851"} 0 - _module.__default.TWO__15() <= newtype$check#111
       && newtype$check#111 < _module.__default.TWO__15();
    assert {:id "id852"} LitInt(3) != 0;
    newtype$check#112 := LitInt(Mod(101, LitInt(3)));
    assert {:id "id853"} 0 - _module.__default.TWO__15() <= newtype$check#112
       && newtype$check#112 < _module.__default.TWO__15();
    assume true;
    a#0 := LitInt(Mod(101, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(299,19)
    newtype$check#113 := LitInt(2);
    assert {:id "id855"} 0 - _module.__default.TWO__15() <= newtype$check#113
       && newtype$check#113 < _module.__default.TWO__15();
    assume true;
    assert {:id "id856"} a#0 == LitInt(2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(300,5)
    assume true;
    newtype$check#114 := LitInt(100);
    assert {:id "id857"} 0 - _module.__default.TWO__15() <= newtype$check#114
       && newtype$check#114 < _module.__default.TWO__15();
    newtype$check#115 := LitInt(3);
    assert {:id "id858"} 0 - _module.__default.TWO__15() <= newtype$check#115
       && newtype$check#115 < _module.__default.TWO__15();
    assert {:id "id859"} LitInt(3) != 0;
    newtype$check#116 := LitInt(Mod(100, LitInt(3)));
    assert {:id "id860"} 0 - _module.__default.TWO__15() <= newtype$check#116
       && newtype$check#116 < _module.__default.TWO__15();
    assume true;
    b#0 := LitInt(Mod(100, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(300,19)
    newtype$check#117 := LitInt(1);
    assert {:id "id862"} 0 - _module.__default.TWO__15() <= newtype$check#117
       && newtype$check#117 < _module.__default.TWO__15();
    assume true;
    assert {:id "id863"} b#0 == LitInt(1);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(301,5)
    assume true;
    newtype$check#118 := LitInt(99);
    assert {:id "id864"} 0 - _module.__default.TWO__15() <= newtype$check#118
       && newtype$check#118 < _module.__default.TWO__15();
    newtype$check#119 := LitInt(3);
    assert {:id "id865"} 0 - _module.__default.TWO__15() <= newtype$check#119
       && newtype$check#119 < _module.__default.TWO__15();
    assert {:id "id866"} LitInt(3) != 0;
    newtype$check#120 := LitInt(Mod(99, LitInt(3)));
    assert {:id "id867"} 0 - _module.__default.TWO__15() <= newtype$check#120
       && newtype$check#120 < _module.__default.TWO__15();
    assume true;
    c#0 := LitInt(Mod(99, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(301,19)
    newtype$check#121 := LitInt(0);
    assert {:id "id869"} 0 - _module.__default.TWO__15() <= newtype$check#121
       && newtype$check#121 < _module.__default.TWO__15();
    assume true;
    assert {:id "id870"} c#0 == LitInt(0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(302,5)
    assume true;
    newtype$check#122 := LitInt(98);
    assert {:id "id871"} 0 - _module.__default.TWO__15() <= newtype$check#122
       && newtype$check#122 < _module.__default.TWO__15();
    newtype$check#123 := LitInt(3);
    assert {:id "id872"} 0 - _module.__default.TWO__15() <= newtype$check#123
       && newtype$check#123 < _module.__default.TWO__15();
    assert {:id "id873"} LitInt(3) != 0;
    newtype$check#124 := LitInt(Mod(98, LitInt(3)));
    assert {:id "id874"} 0 - _module.__default.TWO__15() <= newtype$check#124
       && newtype$check#124 < _module.__default.TWO__15();
    assume true;
    d#0 := LitInt(Mod(98, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(302,19)
    newtype$check#125 := LitInt(2);
    assert {:id "id876"} 0 - _module.__default.TWO__15() <= newtype$check#125
       && newtype$check#125 < _module.__default.TWO__15();
    assume true;
    assert {:id "id877"} d#0 == LitInt(2);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(303,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
}



procedure {:verboseName "M5 (well-formedness)"} CheckWellFormed$$_module.__default.M5();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M5 (call)"} Call$$_module.__default.M5();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M5 (correctness)"} Impl$$_module.__default.M5() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M5 (correctness)"} Impl$$_module.__default.M5() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var neg#0: int
     where 0 - _module.__default.TWO__63() <= neg#0 && neg#0 < _module.__default.TWO__63();
  var pos#0: int
     where 0 - _module.__default.TWO__63() <= pos#0 && pos#0 < _module.__default.TWO__63();
  var $rhs#0: int;
  var newtype$check#0: int;
  var $rhs#1: int;
  var newtype$check#1: int;
  var a#0: int
     where 0 - _module.__default.TWO__63() <= a#0 && a#0 < _module.__default.TWO__63();
  var newtype$check#2: int;
  var newtype$check#3: int;
  var newtype$check#4: int;
  var b#0: int
     where 0 - _module.__default.TWO__63() <= b#0 && b#0 < _module.__default.TWO__63();
  var newtype$check#5: int;
  var newtype$check#6: int;
  var newtype$check#7: int;
  var c#0: int
     where 0 - _module.__default.TWO__63() <= c#0 && c#0 < _module.__default.TWO__63();
  var newtype$check#8: int;
  var newtype$check#9: int;
  var newtype$check#10: int;
  var d#0: int
     where 0 - _module.__default.TWO__63() <= d#0 && d#0 < _module.__default.TWO__63();
  var newtype$check#11: int;
  var newtype$check#12: int;
  var newtype$check#13: int;
  var newtype$check#14: int;
  var newtype$check#15: int;
  var newtype$check#16: int;
  var newtype$check#17: int;
  var newtype$check#18: int;
  var newtype$check#19: int;
  var newtype$check#20: int;
  var newtype$check#21: int;
  var newtype$check#22: int;
  var newtype$check#23: int;
  var newtype$check#24: int;
  var newtype$check#25: int;
  var newtype$check#26: int;
  var newtype$check#27: int;
  var newtype$check#28: int;
  var newtype$check#29: int;
  var newtype$check#30: int;
  var newtype$check#31: int;
  var newtype$check#32: int;
  var newtype$check#33: int;
  var newtype$check#34: int;
  var newtype$check#35: int;
  var newtype$check#36: int;
  var newtype$check#37: int;
  var newtype$check#38: int;
  var newtype$check#39: int;
  var newtype$check#40: int;
  var newtype$check#41: int;
  var newtype$check#42: int;
  var newtype$check#43: int;
  var newtype$check#44: int;
  var newtype$check#45: int;
  var newtype$check#46: int;
  var newtype$check#47: int;
  var newtype$check#48: int;
  var newtype$check#49: int;
  var newtype$check#50: int;
  var newtype$check#51: int;
  var newtype$check#52: int;
  var newtype$check#53: int;
  var newtype$check#54: int;
  var newtype$check#55: int;
  var newtype$check#56: int;
  var newtype$check#57: int;
  var newtype$check#58: int;
  var newtype$check#59: int;
  var newtype$check#60: int;
  var newtype$check#61: int;
  var newtype$check#62: int;
  var newtype$check#63: int;
  var newtype$check#64: int;
  var newtype$check#65: int;
  var newtype$check#66: int;
  var newtype$check#67: int;
  var newtype$check#68: int;
  var newtype$check#69: int;
  var newtype$check#70: int;
  var newtype$check#71: int;
  var newtype$check#72: int;
  var newtype$check#73: int;
  var newtype$check#74: int;
  var newtype$check#75: int;
  var newtype$check#76: int;
  var newtype$check#77: int;
  var newtype$check#78: int;
  var newtype$check#79: int;
  var newtype$check#80: int;
  var newtype$check#81: int;
  var newtype$check#82: int;
  var newtype$check#83: int;
  var newtype$check#84: int;
  var newtype$check#85: int;
  var newtype$check#86: int;
  var newtype$check#87: int;
  var newtype$check#88: int;
  var newtype$check#89: int;
  var newtype$check#90: int;
  var newtype$check#91: int;
  var newtype$check#92: int;
  var newtype$check#93: int;
  var newtype$check#94: int;
  var newtype$check#95: int;
  var newtype$check#96: int;
  var newtype$check#97: int;
  var newtype$check#98: int;
  var newtype$check#99: int;
  var newtype$check#100: int;
  var newtype$check#101: int;
  var newtype$check#102: int;
  var newtype$check#103: int;
  var newtype$check#104: int;
  var newtype$check#105: int;
  var newtype$check#106: int;
  var newtype$check#107: int;
  var newtype$check#108: int;
  var newtype$check#109: int;
  var newtype$check#110: int;
  var newtype$check#111: int;
  var newtype$check#112: int;
  var newtype$check#113: int;
  var newtype$check#114: int;
  var newtype$check#115: int;
  var newtype$check#116: int;
  var newtype$check#117: int;
  var newtype$check#118: int;
  var newtype$check#119: int;
  var newtype$check#120: int;
  var newtype$check#121: int;
  var newtype$check#122: int;
  var newtype$check#123: int;
  var newtype$check#124: int;
  var newtype$check#125: int;

    // AddMethodImpl: M5, Impl$$_module.__default.M5
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    havoc neg#0 /* where 0 - _module.__default.TWO__63() <= neg#0 && neg#0 < _module.__default.TWO__63() */, pos#0 /* where 0 - _module.__default.TWO__63() <= pos#0 && pos#0 < _module.__default.TWO__63() */;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(308,12)
    assume true;
    assume true;
    newtype$check#0 := LitInt(-6);
    assert {:id "id878"} 0 - _module.__default.TWO__63() <= newtype$check#0
       && newtype$check#0 < _module.__default.TWO__63();
    assume true;
    $rhs#0 := LitInt(-6);
    newtype$check#1 := LitInt(6);
    assert {:id "id880"} 0 - _module.__default.TWO__63() <= newtype$check#1
       && newtype$check#1 < _module.__default.TWO__63();
    assume true;
    $rhs#1 := LitInt(6);
    neg#0 := $rhs#0;
    pos#0 := $rhs#1;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(312,9)
    assume true;
    newtype$check#2 := LitInt(-4);
    assert {:id "id884"} 0 - _module.__default.TWO__63() <= newtype$check#2
       && newtype$check#2 < _module.__default.TWO__63();
    assert {:id "id885"} LitInt(-4) != 0;
    newtype$check#3 := Div(neg#0, LitInt(-4));
    assert {:id "id886"} 0 - _module.__default.TWO__63() <= newtype$check#3
       && newtype$check#3 < _module.__default.TWO__63();
    assume true;
    a#0 := Div(neg#0, LitInt(-4));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(312,24)
    newtype$check#4 := LitInt(2);
    assert {:id "id888"} 0 - _module.__default.TWO__63() <= newtype$check#4
       && newtype$check#4 < _module.__default.TWO__63();
    assume true;
    assert {:id "id889"} a#0 == LitInt(2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(313,9)
    assume true;
    newtype$check#5 := LitInt(-4);
    assert {:id "id890"} 0 - _module.__default.TWO__63() <= newtype$check#5
       && newtype$check#5 < _module.__default.TWO__63();
    assert {:id "id891"} LitInt(-4) != 0;
    newtype$check#6 := Div(pos#0, LitInt(-4));
    assert {:id "id892"} 0 - _module.__default.TWO__63() <= newtype$check#6
       && newtype$check#6 < _module.__default.TWO__63();
    assume true;
    b#0 := Div(pos#0, LitInt(-4));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(313,24)
    newtype$check#7 := LitInt(-1);
    assert {:id "id894"} 0 - _module.__default.TWO__63() <= newtype$check#7
       && newtype$check#7 < _module.__default.TWO__63();
    assume true;
    assert {:id "id895"} b#0 == LitInt(-1);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(314,9)
    assume true;
    newtype$check#8 := LitInt(4);
    assert {:id "id896"} 0 - _module.__default.TWO__63() <= newtype$check#8
       && newtype$check#8 < _module.__default.TWO__63();
    assert {:id "id897"} LitInt(4) != 0;
    newtype$check#9 := Div(neg#0, LitInt(4));
    assert {:id "id898"} 0 - _module.__default.TWO__63() <= newtype$check#9
       && newtype$check#9 < _module.__default.TWO__63();
    assume true;
    c#0 := Div(neg#0, LitInt(4));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(314,24)
    newtype$check#10 := LitInt(-2);
    assert {:id "id900"} 0 - _module.__default.TWO__63() <= newtype$check#10
       && newtype$check#10 < _module.__default.TWO__63();
    assume true;
    assert {:id "id901"} c#0 == LitInt(-2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(315,9)
    assume true;
    newtype$check#11 := LitInt(4);
    assert {:id "id902"} 0 - _module.__default.TWO__63() <= newtype$check#11
       && newtype$check#11 < _module.__default.TWO__63();
    assert {:id "id903"} LitInt(4) != 0;
    newtype$check#12 := Div(pos#0, LitInt(4));
    assert {:id "id904"} 0 - _module.__default.TWO__63() <= newtype$check#12
       && newtype$check#12 < _module.__default.TWO__63();
    assume true;
    d#0 := Div(pos#0, LitInt(4));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(315,24)
    newtype$check#13 := LitInt(1);
    assert {:id "id906"} 0 - _module.__default.TWO__63() <= newtype$check#13
       && newtype$check#13 < _module.__default.TWO__63();
    assume true;
    assert {:id "id907"} d#0 == LitInt(1);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(316,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(318,5)
    assume true;
    newtype$check#14 := LitInt(-4);
    assert {:id "id908"} 0 - _module.__default.TWO__63() <= newtype$check#14
       && newtype$check#14 < _module.__default.TWO__63();
    newtype$check#15 := LitInt(-2);
    assert {:id "id909"} 0 - _module.__default.TWO__63() <= newtype$check#15
       && newtype$check#15 < _module.__default.TWO__63();
    assert {:id "id910"} LitInt(-2) != 0;
    newtype$check#16 := LitInt(Div(-4, LitInt(-2)));
    assert {:id "id911"} 0 - _module.__default.TWO__63() <= newtype$check#16
       && newtype$check#16 < _module.__default.TWO__63();
    assume true;
    a#0 := LitInt(Div(-4, LitInt(-2)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(318,21)
    newtype$check#17 := LitInt(2);
    assert {:id "id913"} 0 - _module.__default.TWO__63() <= newtype$check#17
       && newtype$check#17 < _module.__default.TWO__63();
    assume true;
    assert {:id "id914"} a#0 == LitInt(2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(319,5)
    assume true;
    newtype$check#18 := LitInt(4);
    assert {:id "id915"} 0 - _module.__default.TWO__63() <= newtype$check#18
       && newtype$check#18 < _module.__default.TWO__63();
    newtype$check#19 := LitInt(-2);
    assert {:id "id916"} 0 - _module.__default.TWO__63() <= newtype$check#19
       && newtype$check#19 < _module.__default.TWO__63();
    assert {:id "id917"} LitInt(-2) != 0;
    newtype$check#20 := LitInt(Div(4, LitInt(-2)));
    assert {:id "id918"} 0 - _module.__default.TWO__63() <= newtype$check#20
       && newtype$check#20 < _module.__default.TWO__63();
    assume true;
    b#0 := LitInt(Div(4, LitInt(-2)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(319,21)
    newtype$check#21 := LitInt(-2);
    assert {:id "id920"} 0 - _module.__default.TWO__63() <= newtype$check#21
       && newtype$check#21 < _module.__default.TWO__63();
    assume true;
    assert {:id "id921"} b#0 == LitInt(-2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(320,5)
    assume true;
    newtype$check#22 := LitInt(-4);
    assert {:id "id922"} 0 - _module.__default.TWO__63() <= newtype$check#22
       && newtype$check#22 < _module.__default.TWO__63();
    newtype$check#23 := LitInt(2);
    assert {:id "id923"} 0 - _module.__default.TWO__63() <= newtype$check#23
       && newtype$check#23 < _module.__default.TWO__63();
    assert {:id "id924"} LitInt(2) != 0;
    newtype$check#24 := LitInt(Div(-4, LitInt(2)));
    assert {:id "id925"} 0 - _module.__default.TWO__63() <= newtype$check#24
       && newtype$check#24 < _module.__default.TWO__63();
    assume true;
    c#0 := LitInt(Div(-4, LitInt(2)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(320,21)
    newtype$check#25 := LitInt(-2);
    assert {:id "id927"} 0 - _module.__default.TWO__63() <= newtype$check#25
       && newtype$check#25 < _module.__default.TWO__63();
    assume true;
    assert {:id "id928"} c#0 == LitInt(-2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(321,5)
    assume true;
    newtype$check#26 := LitInt(4);
    assert {:id "id929"} 0 - _module.__default.TWO__63() <= newtype$check#26
       && newtype$check#26 < _module.__default.TWO__63();
    newtype$check#27 := LitInt(2);
    assert {:id "id930"} 0 - _module.__default.TWO__63() <= newtype$check#27
       && newtype$check#27 < _module.__default.TWO__63();
    assert {:id "id931"} LitInt(2) != 0;
    newtype$check#28 := LitInt(Div(4, LitInt(2)));
    assert {:id "id932"} 0 - _module.__default.TWO__63() <= newtype$check#28
       && newtype$check#28 < _module.__default.TWO__63();
    assume true;
    d#0 := LitInt(Div(4, LitInt(2)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(321,21)
    newtype$check#29 := LitInt(2);
    assert {:id "id934"} 0 - _module.__default.TWO__63() <= newtype$check#29
       && newtype$check#29 < _module.__default.TWO__63();
    assume true;
    assert {:id "id935"} d#0 == LitInt(2);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(322,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(324,5)
    assume true;
    newtype$check#30 := LitInt(101);
    assert {:id "id936"} 0 - _module.__default.TWO__63() <= newtype$check#30
       && newtype$check#30 < _module.__default.TWO__63();
    newtype$check#31 := LitInt(-3);
    assert {:id "id937"} 0 - _module.__default.TWO__63() <= newtype$check#31
       && newtype$check#31 < _module.__default.TWO__63();
    assert {:id "id938"} LitInt(-3) != 0;
    newtype$check#32 := LitInt(Div(101, LitInt(-3)));
    assert {:id "id939"} 0 - _module.__default.TWO__63() <= newtype$check#32
       && newtype$check#32 < _module.__default.TWO__63();
    assume true;
    a#0 := LitInt(Div(101, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(324,20)
    newtype$check#33 := LitInt(-33);
    assert {:id "id941"} 0 - _module.__default.TWO__63() <= newtype$check#33
       && newtype$check#33 < _module.__default.TWO__63();
    assume true;
    assert {:id "id942"} a#0 == LitInt(-33);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(325,5)
    assume true;
    newtype$check#34 := LitInt(100);
    assert {:id "id943"} 0 - _module.__default.TWO__63() <= newtype$check#34
       && newtype$check#34 < _module.__default.TWO__63();
    newtype$check#35 := LitInt(-3);
    assert {:id "id944"} 0 - _module.__default.TWO__63() <= newtype$check#35
       && newtype$check#35 < _module.__default.TWO__63();
    assert {:id "id945"} LitInt(-3) != 0;
    newtype$check#36 := LitInt(Div(100, LitInt(-3)));
    assert {:id "id946"} 0 - _module.__default.TWO__63() <= newtype$check#36
       && newtype$check#36 < _module.__default.TWO__63();
    assume true;
    b#0 := LitInt(Div(100, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(325,20)
    newtype$check#37 := LitInt(-33);
    assert {:id "id948"} 0 - _module.__default.TWO__63() <= newtype$check#37
       && newtype$check#37 < _module.__default.TWO__63();
    assume true;
    assert {:id "id949"} b#0 == LitInt(-33);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(326,5)
    assume true;
    newtype$check#38 := LitInt(99);
    assert {:id "id950"} 0 - _module.__default.TWO__63() <= newtype$check#38
       && newtype$check#38 < _module.__default.TWO__63();
    newtype$check#39 := LitInt(-3);
    assert {:id "id951"} 0 - _module.__default.TWO__63() <= newtype$check#39
       && newtype$check#39 < _module.__default.TWO__63();
    assert {:id "id952"} LitInt(-3) != 0;
    newtype$check#40 := LitInt(Div(99, LitInt(-3)));
    assert {:id "id953"} 0 - _module.__default.TWO__63() <= newtype$check#40
       && newtype$check#40 < _module.__default.TWO__63();
    assume true;
    c#0 := LitInt(Div(99, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(326,20)
    newtype$check#41 := LitInt(-33);
    assert {:id "id955"} 0 - _module.__default.TWO__63() <= newtype$check#41
       && newtype$check#41 < _module.__default.TWO__63();
    assume true;
    assert {:id "id956"} c#0 == LitInt(-33);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(327,5)
    assume true;
    newtype$check#42 := LitInt(98);
    assert {:id "id957"} 0 - _module.__default.TWO__63() <= newtype$check#42
       && newtype$check#42 < _module.__default.TWO__63();
    newtype$check#43 := LitInt(-3);
    assert {:id "id958"} 0 - _module.__default.TWO__63() <= newtype$check#43
       && newtype$check#43 < _module.__default.TWO__63();
    assert {:id "id959"} LitInt(-3) != 0;
    newtype$check#44 := LitInt(Div(98, LitInt(-3)));
    assert {:id "id960"} 0 - _module.__default.TWO__63() <= newtype$check#44
       && newtype$check#44 < _module.__default.TWO__63();
    assume true;
    d#0 := LitInt(Div(98, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(327,20)
    newtype$check#45 := LitInt(-32);
    assert {:id "id962"} 0 - _module.__default.TWO__63() <= newtype$check#45
       && newtype$check#45 < _module.__default.TWO__63();
    assume true;
    assert {:id "id963"} d#0 == LitInt(-32);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(328,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(330,5)
    assume true;
    newtype$check#46 := LitInt(-101);
    assert {:id "id964"} 0 - _module.__default.TWO__63() <= newtype$check#46
       && newtype$check#46 < _module.__default.TWO__63();
    newtype$check#47 := LitInt(3);
    assert {:id "id965"} 0 - _module.__default.TWO__63() <= newtype$check#47
       && newtype$check#47 < _module.__default.TWO__63();
    assert {:id "id966"} LitInt(3) != 0;
    newtype$check#48 := LitInt(Div(-101, LitInt(3)));
    assert {:id "id967"} 0 - _module.__default.TWO__63() <= newtype$check#48
       && newtype$check#48 < _module.__default.TWO__63();
    assume true;
    a#0 := LitInt(Div(-101, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(330,20)
    newtype$check#49 := LitInt(-34);
    assert {:id "id969"} 0 - _module.__default.TWO__63() <= newtype$check#49
       && newtype$check#49 < _module.__default.TWO__63();
    assume true;
    assert {:id "id970"} a#0 == LitInt(-34);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(331,5)
    assume true;
    newtype$check#50 := LitInt(-100);
    assert {:id "id971"} 0 - _module.__default.TWO__63() <= newtype$check#50
       && newtype$check#50 < _module.__default.TWO__63();
    newtype$check#51 := LitInt(3);
    assert {:id "id972"} 0 - _module.__default.TWO__63() <= newtype$check#51
       && newtype$check#51 < _module.__default.TWO__63();
    assert {:id "id973"} LitInt(3) != 0;
    newtype$check#52 := LitInt(Div(-100, LitInt(3)));
    assert {:id "id974"} 0 - _module.__default.TWO__63() <= newtype$check#52
       && newtype$check#52 < _module.__default.TWO__63();
    assume true;
    b#0 := LitInt(Div(-100, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(331,20)
    newtype$check#53 := LitInt(-34);
    assert {:id "id976"} 0 - _module.__default.TWO__63() <= newtype$check#53
       && newtype$check#53 < _module.__default.TWO__63();
    assume true;
    assert {:id "id977"} b#0 == LitInt(-34);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(332,5)
    assume true;
    newtype$check#54 := LitInt(-99);
    assert {:id "id978"} 0 - _module.__default.TWO__63() <= newtype$check#54
       && newtype$check#54 < _module.__default.TWO__63();
    newtype$check#55 := LitInt(3);
    assert {:id "id979"} 0 - _module.__default.TWO__63() <= newtype$check#55
       && newtype$check#55 < _module.__default.TWO__63();
    assert {:id "id980"} LitInt(3) != 0;
    newtype$check#56 := LitInt(Div(-99, LitInt(3)));
    assert {:id "id981"} 0 - _module.__default.TWO__63() <= newtype$check#56
       && newtype$check#56 < _module.__default.TWO__63();
    assume true;
    c#0 := LitInt(Div(-99, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(332,20)
    newtype$check#57 := LitInt(-33);
    assert {:id "id983"} 0 - _module.__default.TWO__63() <= newtype$check#57
       && newtype$check#57 < _module.__default.TWO__63();
    assume true;
    assert {:id "id984"} c#0 == LitInt(-33);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(333,5)
    assume true;
    newtype$check#58 := LitInt(-98);
    assert {:id "id985"} 0 - _module.__default.TWO__63() <= newtype$check#58
       && newtype$check#58 < _module.__default.TWO__63();
    newtype$check#59 := LitInt(3);
    assert {:id "id986"} 0 - _module.__default.TWO__63() <= newtype$check#59
       && newtype$check#59 < _module.__default.TWO__63();
    assert {:id "id987"} LitInt(3) != 0;
    newtype$check#60 := LitInt(Div(-98, LitInt(3)));
    assert {:id "id988"} 0 - _module.__default.TWO__63() <= newtype$check#60
       && newtype$check#60 < _module.__default.TWO__63();
    assume true;
    d#0 := LitInt(Div(-98, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(333,20)
    newtype$check#61 := LitInt(-33);
    assert {:id "id990"} 0 - _module.__default.TWO__63() <= newtype$check#61
       && newtype$check#61 < _module.__default.TWO__63();
    assume true;
    assert {:id "id991"} d#0 == LitInt(-33);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(334,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(338,5)
    assume true;
    newtype$check#62 := LitInt(-101);
    assert {:id "id992"} 0 - _module.__default.TWO__63() <= newtype$check#62
       && newtype$check#62 < _module.__default.TWO__63();
    newtype$check#63 := LitInt(-3);
    assert {:id "id993"} 0 - _module.__default.TWO__63() <= newtype$check#63
       && newtype$check#63 < _module.__default.TWO__63();
    assert {:id "id994"} LitInt(-3) != 0;
    newtype$check#64 := LitInt(Mod(-101, LitInt(-3)));
    assert {:id "id995"} 0 - _module.__default.TWO__63() <= newtype$check#64
       && newtype$check#64 < _module.__default.TWO__63();
    assume true;
    a#0 := LitInt(Mod(-101, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(338,23)
    newtype$check#65 := LitInt(1);
    assert {:id "id997"} 0 - _module.__default.TWO__63() <= newtype$check#65
       && newtype$check#65 < _module.__default.TWO__63();
    assume true;
    assert {:id "id998"} a#0 == LitInt(1);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(339,5)
    assume true;
    newtype$check#66 := LitInt(-100);
    assert {:id "id999"} 0 - _module.__default.TWO__63() <= newtype$check#66
       && newtype$check#66 < _module.__default.TWO__63();
    newtype$check#67 := LitInt(-3);
    assert {:id "id1000"} 0 - _module.__default.TWO__63() <= newtype$check#67
       && newtype$check#67 < _module.__default.TWO__63();
    assert {:id "id1001"} LitInt(-3) != 0;
    newtype$check#68 := LitInt(Mod(-100, LitInt(-3)));
    assert {:id "id1002"} 0 - _module.__default.TWO__63() <= newtype$check#68
       && newtype$check#68 < _module.__default.TWO__63();
    assume true;
    b#0 := LitInt(Mod(-100, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(339,23)
    newtype$check#69 := LitInt(2);
    assert {:id "id1004"} 0 - _module.__default.TWO__63() <= newtype$check#69
       && newtype$check#69 < _module.__default.TWO__63();
    assume true;
    assert {:id "id1005"} b#0 == LitInt(2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(340,5)
    assume true;
    newtype$check#70 := LitInt(-99);
    assert {:id "id1006"} 0 - _module.__default.TWO__63() <= newtype$check#70
       && newtype$check#70 < _module.__default.TWO__63();
    newtype$check#71 := LitInt(-3);
    assert {:id "id1007"} 0 - _module.__default.TWO__63() <= newtype$check#71
       && newtype$check#71 < _module.__default.TWO__63();
    assert {:id "id1008"} LitInt(-3) != 0;
    newtype$check#72 := LitInt(Mod(-99, LitInt(-3)));
    assert {:id "id1009"} 0 - _module.__default.TWO__63() <= newtype$check#72
       && newtype$check#72 < _module.__default.TWO__63();
    assume true;
    c#0 := LitInt(Mod(-99, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(340,23)
    newtype$check#73 := LitInt(0);
    assert {:id "id1011"} 0 - _module.__default.TWO__63() <= newtype$check#73
       && newtype$check#73 < _module.__default.TWO__63();
    assume true;
    assert {:id "id1012"} c#0 == LitInt(0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(341,5)
    assume true;
    newtype$check#74 := LitInt(-98);
    assert {:id "id1013"} 0 - _module.__default.TWO__63() <= newtype$check#74
       && newtype$check#74 < _module.__default.TWO__63();
    newtype$check#75 := LitInt(-3);
    assert {:id "id1014"} 0 - _module.__default.TWO__63() <= newtype$check#75
       && newtype$check#75 < _module.__default.TWO__63();
    assert {:id "id1015"} LitInt(-3) != 0;
    newtype$check#76 := LitInt(Mod(-98, LitInt(-3)));
    assert {:id "id1016"} 0 - _module.__default.TWO__63() <= newtype$check#76
       && newtype$check#76 < _module.__default.TWO__63();
    assume true;
    d#0 := LitInt(Mod(-98, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(341,23)
    newtype$check#77 := LitInt(1);
    assert {:id "id1018"} 0 - _module.__default.TWO__63() <= newtype$check#77
       && newtype$check#77 < _module.__default.TWO__63();
    assume true;
    assert {:id "id1019"} d#0 == LitInt(1);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(342,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(344,5)
    assume true;
    newtype$check#78 := LitInt(101);
    assert {:id "id1020"} 0 - _module.__default.TWO__63() <= newtype$check#78
       && newtype$check#78 < _module.__default.TWO__63();
    newtype$check#79 := LitInt(-3);
    assert {:id "id1021"} 0 - _module.__default.TWO__63() <= newtype$check#79
       && newtype$check#79 < _module.__default.TWO__63();
    assert {:id "id1022"} LitInt(-3) != 0;
    newtype$check#80 := LitInt(Mod(101, LitInt(-3)));
    assert {:id "id1023"} 0 - _module.__default.TWO__63() <= newtype$check#80
       && newtype$check#80 < _module.__default.TWO__63();
    assume true;
    a#0 := LitInt(Mod(101, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(344,23)
    newtype$check#81 := LitInt(2);
    assert {:id "id1025"} 0 - _module.__default.TWO__63() <= newtype$check#81
       && newtype$check#81 < _module.__default.TWO__63();
    assume true;
    assert {:id "id1026"} a#0 == LitInt(2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(345,5)
    assume true;
    newtype$check#82 := LitInt(100);
    assert {:id "id1027"} 0 - _module.__default.TWO__63() <= newtype$check#82
       && newtype$check#82 < _module.__default.TWO__63();
    newtype$check#83 := LitInt(-3);
    assert {:id "id1028"} 0 - _module.__default.TWO__63() <= newtype$check#83
       && newtype$check#83 < _module.__default.TWO__63();
    assert {:id "id1029"} LitInt(-3) != 0;
    newtype$check#84 := LitInt(Mod(100, LitInt(-3)));
    assert {:id "id1030"} 0 - _module.__default.TWO__63() <= newtype$check#84
       && newtype$check#84 < _module.__default.TWO__63();
    assume true;
    b#0 := LitInt(Mod(100, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(345,23)
    newtype$check#85 := LitInt(1);
    assert {:id "id1032"} 0 - _module.__default.TWO__63() <= newtype$check#85
       && newtype$check#85 < _module.__default.TWO__63();
    assume true;
    assert {:id "id1033"} b#0 == LitInt(1);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(346,5)
    assume true;
    newtype$check#86 := LitInt(99);
    assert {:id "id1034"} 0 - _module.__default.TWO__63() <= newtype$check#86
       && newtype$check#86 < _module.__default.TWO__63();
    newtype$check#87 := LitInt(-3);
    assert {:id "id1035"} 0 - _module.__default.TWO__63() <= newtype$check#87
       && newtype$check#87 < _module.__default.TWO__63();
    assert {:id "id1036"} LitInt(-3) != 0;
    newtype$check#88 := LitInt(Mod(99, LitInt(-3)));
    assert {:id "id1037"} 0 - _module.__default.TWO__63() <= newtype$check#88
       && newtype$check#88 < _module.__default.TWO__63();
    assume true;
    c#0 := LitInt(Mod(99, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(346,23)
    newtype$check#89 := LitInt(0);
    assert {:id "id1039"} 0 - _module.__default.TWO__63() <= newtype$check#89
       && newtype$check#89 < _module.__default.TWO__63();
    assume true;
    assert {:id "id1040"} c#0 == LitInt(0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(347,5)
    assume true;
    newtype$check#90 := LitInt(98);
    assert {:id "id1041"} 0 - _module.__default.TWO__63() <= newtype$check#90
       && newtype$check#90 < _module.__default.TWO__63();
    newtype$check#91 := LitInt(-3);
    assert {:id "id1042"} 0 - _module.__default.TWO__63() <= newtype$check#91
       && newtype$check#91 < _module.__default.TWO__63();
    assert {:id "id1043"} LitInt(-3) != 0;
    newtype$check#92 := LitInt(Mod(98, LitInt(-3)));
    assert {:id "id1044"} 0 - _module.__default.TWO__63() <= newtype$check#92
       && newtype$check#92 < _module.__default.TWO__63();
    assume true;
    d#0 := LitInt(Mod(98, LitInt(-3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(347,23)
    newtype$check#93 := LitInt(2);
    assert {:id "id1046"} 0 - _module.__default.TWO__63() <= newtype$check#93
       && newtype$check#93 < _module.__default.TWO__63();
    assume true;
    assert {:id "id1047"} d#0 == LitInt(2);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(348,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(350,5)
    assume true;
    newtype$check#94 := LitInt(-101);
    assert {:id "id1048"} 0 - _module.__default.TWO__63() <= newtype$check#94
       && newtype$check#94 < _module.__default.TWO__63();
    newtype$check#95 := LitInt(3);
    assert {:id "id1049"} 0 - _module.__default.TWO__63() <= newtype$check#95
       && newtype$check#95 < _module.__default.TWO__63();
    assert {:id "id1050"} LitInt(3) != 0;
    newtype$check#96 := LitInt(Mod(-101, LitInt(3)));
    assert {:id "id1051"} 0 - _module.__default.TWO__63() <= newtype$check#96
       && newtype$check#96 < _module.__default.TWO__63();
    assume true;
    a#0 := LitInt(Mod(-101, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(350,20)
    newtype$check#97 := LitInt(1);
    assert {:id "id1053"} 0 - _module.__default.TWO__63() <= newtype$check#97
       && newtype$check#97 < _module.__default.TWO__63();
    assume true;
    assert {:id "id1054"} a#0 == LitInt(1);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(351,5)
    assume true;
    newtype$check#98 := LitInt(-100);
    assert {:id "id1055"} 0 - _module.__default.TWO__63() <= newtype$check#98
       && newtype$check#98 < _module.__default.TWO__63();
    newtype$check#99 := LitInt(3);
    assert {:id "id1056"} 0 - _module.__default.TWO__63() <= newtype$check#99
       && newtype$check#99 < _module.__default.TWO__63();
    assert {:id "id1057"} LitInt(3) != 0;
    newtype$check#100 := LitInt(Mod(-100, LitInt(3)));
    assert {:id "id1058"} 0 - _module.__default.TWO__63() <= newtype$check#100
       && newtype$check#100 < _module.__default.TWO__63();
    assume true;
    b#0 := LitInt(Mod(-100, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(351,20)
    newtype$check#101 := LitInt(2);
    assert {:id "id1060"} 0 - _module.__default.TWO__63() <= newtype$check#101
       && newtype$check#101 < _module.__default.TWO__63();
    assume true;
    assert {:id "id1061"} b#0 == LitInt(2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(352,5)
    assume true;
    newtype$check#102 := LitInt(-99);
    assert {:id "id1062"} 0 - _module.__default.TWO__63() <= newtype$check#102
       && newtype$check#102 < _module.__default.TWO__63();
    newtype$check#103 := LitInt(3);
    assert {:id "id1063"} 0 - _module.__default.TWO__63() <= newtype$check#103
       && newtype$check#103 < _module.__default.TWO__63();
    assert {:id "id1064"} LitInt(3) != 0;
    newtype$check#104 := LitInt(Mod(-99, LitInt(3)));
    assert {:id "id1065"} 0 - _module.__default.TWO__63() <= newtype$check#104
       && newtype$check#104 < _module.__default.TWO__63();
    assume true;
    c#0 := LitInt(Mod(-99, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(352,20)
    newtype$check#105 := LitInt(0);
    assert {:id "id1067"} 0 - _module.__default.TWO__63() <= newtype$check#105
       && newtype$check#105 < _module.__default.TWO__63();
    assume true;
    assert {:id "id1068"} c#0 == LitInt(0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(353,5)
    assume true;
    newtype$check#106 := LitInt(-98);
    assert {:id "id1069"} 0 - _module.__default.TWO__63() <= newtype$check#106
       && newtype$check#106 < _module.__default.TWO__63();
    newtype$check#107 := LitInt(3);
    assert {:id "id1070"} 0 - _module.__default.TWO__63() <= newtype$check#107
       && newtype$check#107 < _module.__default.TWO__63();
    assert {:id "id1071"} LitInt(3) != 0;
    newtype$check#108 := LitInt(Mod(-98, LitInt(3)));
    assert {:id "id1072"} 0 - _module.__default.TWO__63() <= newtype$check#108
       && newtype$check#108 < _module.__default.TWO__63();
    assume true;
    d#0 := LitInt(Mod(-98, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(353,20)
    newtype$check#109 := LitInt(1);
    assert {:id "id1074"} 0 - _module.__default.TWO__63() <= newtype$check#109
       && newtype$check#109 < _module.__default.TWO__63();
    assume true;
    assert {:id "id1075"} d#0 == LitInt(1);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(354,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(356,5)
    assume true;
    newtype$check#110 := LitInt(101);
    assert {:id "id1076"} 0 - _module.__default.TWO__63() <= newtype$check#110
       && newtype$check#110 < _module.__default.TWO__63();
    newtype$check#111 := LitInt(3);
    assert {:id "id1077"} 0 - _module.__default.TWO__63() <= newtype$check#111
       && newtype$check#111 < _module.__default.TWO__63();
    assert {:id "id1078"} LitInt(3) != 0;
    newtype$check#112 := LitInt(Mod(101, LitInt(3)));
    assert {:id "id1079"} 0 - _module.__default.TWO__63() <= newtype$check#112
       && newtype$check#112 < _module.__default.TWO__63();
    assume true;
    a#0 := LitInt(Mod(101, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(356,19)
    newtype$check#113 := LitInt(2);
    assert {:id "id1081"} 0 - _module.__default.TWO__63() <= newtype$check#113
       && newtype$check#113 < _module.__default.TWO__63();
    assume true;
    assert {:id "id1082"} a#0 == LitInt(2);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(357,5)
    assume true;
    newtype$check#114 := LitInt(100);
    assert {:id "id1083"} 0 - _module.__default.TWO__63() <= newtype$check#114
       && newtype$check#114 < _module.__default.TWO__63();
    newtype$check#115 := LitInt(3);
    assert {:id "id1084"} 0 - _module.__default.TWO__63() <= newtype$check#115
       && newtype$check#115 < _module.__default.TWO__63();
    assert {:id "id1085"} LitInt(3) != 0;
    newtype$check#116 := LitInt(Mod(100, LitInt(3)));
    assert {:id "id1086"} 0 - _module.__default.TWO__63() <= newtype$check#116
       && newtype$check#116 < _module.__default.TWO__63();
    assume true;
    b#0 := LitInt(Mod(100, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(357,19)
    newtype$check#117 := LitInt(1);
    assert {:id "id1088"} 0 - _module.__default.TWO__63() <= newtype$check#117
       && newtype$check#117 < _module.__default.TWO__63();
    assume true;
    assert {:id "id1089"} b#0 == LitInt(1);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(358,5)
    assume true;
    newtype$check#118 := LitInt(99);
    assert {:id "id1090"} 0 - _module.__default.TWO__63() <= newtype$check#118
       && newtype$check#118 < _module.__default.TWO__63();
    newtype$check#119 := LitInt(3);
    assert {:id "id1091"} 0 - _module.__default.TWO__63() <= newtype$check#119
       && newtype$check#119 < _module.__default.TWO__63();
    assert {:id "id1092"} LitInt(3) != 0;
    newtype$check#120 := LitInt(Mod(99, LitInt(3)));
    assert {:id "id1093"} 0 - _module.__default.TWO__63() <= newtype$check#120
       && newtype$check#120 < _module.__default.TWO__63();
    assume true;
    c#0 := LitInt(Mod(99, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(358,19)
    newtype$check#121 := LitInt(0);
    assert {:id "id1095"} 0 - _module.__default.TWO__63() <= newtype$check#121
       && newtype$check#121 < _module.__default.TWO__63();
    assume true;
    assert {:id "id1096"} c#0 == LitInt(0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(359,5)
    assume true;
    newtype$check#122 := LitInt(98);
    assert {:id "id1097"} 0 - _module.__default.TWO__63() <= newtype$check#122
       && newtype$check#122 < _module.__default.TWO__63();
    newtype$check#123 := LitInt(3);
    assert {:id "id1098"} 0 - _module.__default.TWO__63() <= newtype$check#123
       && newtype$check#123 < _module.__default.TWO__63();
    assert {:id "id1099"} LitInt(3) != 0;
    newtype$check#124 := LitInt(Mod(98, LitInt(3)));
    assert {:id "id1100"} 0 - _module.__default.TWO__63() <= newtype$check#124
       && newtype$check#124 < _module.__default.TWO__63();
    assume true;
    d#0 := LitInt(Mod(98, LitInt(3)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(359,19)
    newtype$check#125 := LitInt(2);
    assert {:id "id1102"} 0 - _module.__default.TWO__63() <= newtype$check#125
       && newtype$check#125 < _module.__default.TWO__63();
    assume true;
    assert {:id "id1103"} d#0 == LitInt(2);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(360,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
}



procedure {:verboseName "Main (well-formedness)"} CheckWellFormed$$_module.__default.Main();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Main (call)"} Call$$_module.__default.Main();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Main (correctness)"} Impl$$_module.__default.Main() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Main (correctness)"} Impl$$_module.__default.Main() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: Main, Impl$$_module.__default.Main
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(366,5)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1104"} Call$$_module.__default.M0();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(367,5)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1105"} Call$$_module.__default.M1();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(368,5)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1106"} Call$$_module.__default.M2();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(369,5)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1107"} Call$$_module.__default.M3();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(370,5)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1108"} Call$$_module.__default.M4();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/EuclideanDivision.dfy(371,5)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1109"} Call$$_module.__default.M5();
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "I1 (well-formedness)"} CheckWellFormed$$_module.I1();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



function Tclass._module.I1() : Ty
uses {
// Tclass._module.I1 Tag
axiom Tag(Tclass._module.I1()) == Tagclass._module.I1
   && TagFamily(Tclass._module.I1()) == tytagFamily$I1;
}

const unique Tagclass._module.I1: TyTag;

// Box/unbox axiom for Tclass._module.I1
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.I1()) } 
  $IsBox(bx, Tclass._module.I1())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.I1()));

// $Is axiom for newtype _module.I1
axiom (forall c0#0: int :: 
  { $Is(c0#0, Tclass._module.I1()) } 
  $Is(c0#0, Tclass._module.I1()) <==> Lit(true));

// $IsAlloc axiom for newtype _module.I1
axiom (forall c1#0: int, $h: Heap :: 
  { $IsAlloc(c1#0, Tclass._module.I1(), $h) } 
  $IsAlloc(c1#0, Tclass._module.I1(), $h));

const unique class._module.I1: ClassName;

procedure {:verboseName "I2 (well-formedness)"} CheckWellFormed$$_module.I2(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "I2 (well-formedness)"} CheckWellFormed$$_module.I2(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype I2
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        assume {:id "id1110"} true;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id1111"} Lit(true);
        assume false;
    }
}



function Tclass._module.I2() : Ty
uses {
// Tclass._module.I2 Tag
axiom Tag(Tclass._module.I2()) == Tagclass._module.I2
   && TagFamily(Tclass._module.I2()) == tytagFamily$I2;
}

const unique Tagclass._module.I2: TyTag;

// Box/unbox axiom for Tclass._module.I2
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.I2()) } 
  $IsBox(bx, Tclass._module.I2())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.I2()));

// $Is axiom for newtype _module.I2
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.I2()) } 
  $Is(x#0, Tclass._module.I2()) <==> Lit(true));

// $IsAlloc axiom for newtype _module.I2
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.I2(), $h) } 
  $IsAlloc(x#0, Tclass._module.I2(), $h));

const unique class._module.I2: ClassName;

procedure {:verboseName "I3 (well-formedness)"} CheckWellFormed$$_module.I3(x#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "I3 (well-formedness)"} CheckWellFormed$$_module.I3(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype I3
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (0 - _module.__default.TWO__127() <= x#0)
        {
        }

        assume {:id "id1112"} 0 - _module.__default.TWO__127() <= x#0 && x#0 < _module.__default.TWO__127();
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id1113"} {:subsumption 0} 0 - _module.__default.TWO__127() <= LitInt(0);
        assert {:id "id1114"} {:subsumption 0} 0 < _module.__default.TWO__127();
        assume false;
    }
}



function Tclass._module.I3() : Ty
uses {
// Tclass._module.I3 Tag
axiom Tag(Tclass._module.I3()) == Tagclass._module.I3
   && TagFamily(Tclass._module.I3()) == tytagFamily$I3;
}

const unique Tagclass._module.I3: TyTag;

// Box/unbox axiom for Tclass._module.I3
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.I3()) } 
  $IsBox(bx, Tclass._module.I3())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.I3()));

// $Is axiom for newtype _module.I3
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.I3()) } 
  $Is(x#0, Tclass._module.I3())
     <==> 0 - _module.__default.TWO__127() <= x#0 && x#0 < _module.__default.TWO__127());

// $IsAlloc axiom for newtype _module.I3
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.I3(), $h) } 
  $IsAlloc(x#0, Tclass._module.I3(), $h));

const unique class._module.I3: ClassName;

procedure {:verboseName "I4 (well-formedness)"} CheckWellFormed$$_module.I4(x#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "I4 (well-formedness)"} CheckWellFormed$$_module.I4(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype I4
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (0 - _module.__default.TWO__15() <= x#0)
        {
        }

        assume {:id "id1115"} 0 - _module.__default.TWO__15() <= x#0 && x#0 < _module.__default.TWO__15();
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id1116"} {:subsumption 0} 0 - _module.__default.TWO__15() <= LitInt(0);
        assert {:id "id1117"} {:subsumption 0} 0 < _module.__default.TWO__15();
        assume false;
    }
}



function Tclass._module.I4() : Ty
uses {
// Tclass._module.I4 Tag
axiom Tag(Tclass._module.I4()) == Tagclass._module.I4
   && TagFamily(Tclass._module.I4()) == tytagFamily$I4;
}

const unique Tagclass._module.I4: TyTag;

// Box/unbox axiom for Tclass._module.I4
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.I4()) } 
  $IsBox(bx, Tclass._module.I4())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.I4()));

// $Is axiom for newtype _module.I4
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.I4()) } 
  $Is(x#0, Tclass._module.I4())
     <==> 0 - _module.__default.TWO__15() <= x#0 && x#0 < _module.__default.TWO__15());

// $IsAlloc axiom for newtype _module.I4
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.I4(), $h) } 
  $IsAlloc(x#0, Tclass._module.I4(), $h));

const unique class._module.I4: ClassName;

procedure {:verboseName "I5 (well-formedness)"} CheckWellFormed$$_module.I5(x#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "I5 (well-formedness)"} CheckWellFormed$$_module.I5(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype I5
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (0 - _module.__default.TWO__63() <= x#0)
        {
        }

        assume {:id "id1118"} 0 - _module.__default.TWO__63() <= x#0 && x#0 < _module.__default.TWO__63();
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id1119"} {:subsumption 0} 0 - _module.__default.TWO__63() <= LitInt(0);
        assert {:id "id1120"} {:subsumption 0} 0 < _module.__default.TWO__63();
        assume false;
    }
}



function Tclass._module.I5() : Ty
uses {
// Tclass._module.I5 Tag
axiom Tag(Tclass._module.I5()) == Tagclass._module.I5
   && TagFamily(Tclass._module.I5()) == tytagFamily$I5;
}

const unique Tagclass._module.I5: TyTag;

// Box/unbox axiom for Tclass._module.I5
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.I5()) } 
  $IsBox(bx, Tclass._module.I5())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.I5()));

// $Is axiom for newtype _module.I5
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.I5()) } 
  $Is(x#0, Tclass._module.I5())
     <==> 0 - _module.__default.TWO__63() <= x#0 && x#0 < _module.__default.TWO__63());

// $IsAlloc axiom for newtype _module.I5
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.I5(), $h) } 
  $IsAlloc(x#0, Tclass._module.I5(), $h));

const unique class._module.I5: ClassName;

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

const unique tytagFamily$I1: TyTagFamily;

const unique tytagFamily$I2: TyTagFamily;

const unique tytagFamily$I3: TyTagFamily;

const unique tytagFamily$I4: TyTagFamily;

const unique tytagFamily$I5: TyTagFamily;
