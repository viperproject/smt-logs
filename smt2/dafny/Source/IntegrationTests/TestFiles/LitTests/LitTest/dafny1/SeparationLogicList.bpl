// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SeparationLogicList.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SeparationLogicList-@PROC@.smt2 /normalizeNames:0 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SeparationLogicList.dfy

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

function Tclass._System.___hFunc4(Ty, Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hFunc4: TyTag;

// Tclass._System.___hFunc4 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tag(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == Tagclass._System.___hFunc4
     && TagFamily(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == tytagFamily$_#Func4);

function Tclass._System.___hFunc4_0(Ty) : Ty;

// Tclass._System.___hFunc4 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hFunc4_0(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T0);

function Tclass._System.___hFunc4_1(Ty) : Ty;

// Tclass._System.___hFunc4 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hFunc4_1(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T1);

function Tclass._System.___hFunc4_2(Ty) : Ty;

// Tclass._System.___hFunc4 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hFunc4_2(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T2);

function Tclass._System.___hFunc4_3(Ty) : Ty;

// Tclass._System.___hFunc4 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hFunc4_3(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T3);

function Tclass._System.___hFunc4_4(Ty) : Ty;

// Tclass._System.___hFunc4 injectivity 4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hFunc4_4(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R)) } 
  $IsBox(bx, Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R)));

function Handle4([Heap,Box,Box,Box,Box]Box, [Heap,Box,Box,Box,Box]bool, [Heap,Box,Box,Box,Box]Set)
   : HandleType;

function Apply4(Ty, Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box, Box) : Box;

function Requires4(Ty, Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box, Box) : bool;

function Reads4(Ty, Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box, Box) : Set;

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { Apply4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3) } 
  Apply4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3)
     == h[heap, bx0, bx1, bx2, bx3]);

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { Requires4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3) } 
  r[heap, bx0, bx1, bx2, bx3]
     ==> Requires4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3));

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx: Box :: 
  { Set#IsMember(Reads4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3), bx) } 
  Set#IsMember(Reads4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3), bx)
     == Set#IsMember(rd[heap, bx0, bx1, bx2, bx3], bx));

function {:inline} Requires4#canCall(t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box)
   : bool
{
  true
}

function {:inline} Reads4#canCall(t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box)
   : bool
{
  true
}

// frame axiom for Reads4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// frame axiom for Reads4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// frame axiom for Requires4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Requires4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Requires4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// frame axiom for Requires4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Requires4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Requires4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// frame axiom for Apply4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Apply4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Apply4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// frame axiom for Apply4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Apply4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Apply4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// empty-reads property for Reads4 
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { Reads4(t0, t1, t2, t3, t4, $OneHeap, f, bx0, bx1, bx2, bx3), $IsGoodHeap(heap) } 
    { Reads4(t0, t1, t2, t3, t4, heap, f, bx0, bx1, bx2, bx3) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
     ==> (Set#Equal(Reads4(t0, t1, t2, t3, t4, $OneHeap, f, bx0, bx1, bx2, bx3), Set#Empty(): Set)
       <==> Set#Equal(Reads4(t0, t1, t2, t3, t4, heap, f, bx0, bx1, bx2, bx3), Set#Empty(): Set)));

// empty-reads property for Requires4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { Requires4(t0, t1, t2, t3, t4, $OneHeap, f, bx0, bx1, bx2, bx3), $IsGoodHeap(heap) } 
    { Requires4(t0, t1, t2, t3, t4, heap, f, bx0, bx1, bx2, bx3) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && Set#Equal(Reads4(t0, t1, t2, t3, t4, $OneHeap, f, bx0, bx1, bx2, bx3), Set#Empty(): Set)
     ==> Requires4(t0, t1, t2, t3, t4, $OneHeap, f, bx0, bx1, bx2, bx3)
       == Requires4(t0, t1, t2, t3, t4, heap, f, bx0, bx1, bx2, bx3));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, t4: Ty :: 
  { $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4)) } 
  $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
     <==> (forall h: Heap, bx0: Box, bx1: Box, bx2: Box, bx3: Box :: 
      { Apply4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3) } 
      $IsGoodHeap(h)
           && 
          $IsBox(bx0, t0)
           && $IsBox(bx1, t1)
           && $IsBox(bx2, t2)
           && $IsBox(bx3, t3)
           && Requires4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3)
         ==> $IsBox(Apply4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3), t4)));

axiom (forall f: HandleType, 
    t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    u0: Ty, 
    u1: Ty, 
    u2: Ty, 
    u3: Ty, 
    u4: Ty :: 
  { $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4)), $Is(f, Tclass._System.___hFunc4(u0, u1, u2, u3, u4)) } 
  $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall bx: Box :: 
        { $IsBox(bx, u0) } { $IsBox(bx, t0) } 
        $IsBox(bx, u0) ==> $IsBox(bx, t0))
       && (forall bx: Box :: 
        { $IsBox(bx, u1) } { $IsBox(bx, t1) } 
        $IsBox(bx, u1) ==> $IsBox(bx, t1))
       && (forall bx: Box :: 
        { $IsBox(bx, u2) } { $IsBox(bx, t2) } 
        $IsBox(bx, u2) ==> $IsBox(bx, t2))
       && (forall bx: Box :: 
        { $IsBox(bx, u3) } { $IsBox(bx, t3) } 
        $IsBox(bx, u3) ==> $IsBox(bx, t3))
       && (forall bx: Box :: 
        { $IsBox(bx, t4) } { $IsBox(bx, u4) } 
        $IsBox(bx, t4) ==> $IsBox(bx, u4))
     ==> $Is(f, Tclass._System.___hFunc4(u0, u1, u2, u3, u4)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, t4: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4), h) } 
  $IsGoodHeap(h)
     ==> ($IsAlloc(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4), h)
       <==> (forall bx0: Box, bx1: Box, bx2: Box, bx3: Box :: 
        { Apply4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3) } 
          { Reads4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3) } 
        $IsBox(bx0, t0)
             && $IsAllocBox(bx0, t0, h)
             && 
            $IsBox(bx1, t1)
             && $IsAllocBox(bx1, t1, h)
             && 
            $IsBox(bx2, t2)
             && $IsAllocBox(bx2, t2, h)
             && 
            $IsBox(bx3, t3)
             && $IsAllocBox(bx3, t3, h)
             && Requires4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3)
           ==> (forall r: ref :: 
            { Set#IsMember(Reads4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3), $Box(r)) } 
            r != null
                 && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3), $Box(r))
               ==> $Unbox(read(h, r, alloc)): bool))));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, t4: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4), h) } 
  $IsGoodHeap(h) && $IsAlloc(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4), h)
     ==> (forall bx0: Box, bx1: Box, bx2: Box, bx3: Box :: 
      { Apply4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3) } 
      $IsAllocBox(bx0, t0, h)
           && $IsAllocBox(bx1, t1, h)
           && $IsAllocBox(bx2, t2, h)
           && $IsAllocBox(bx3, t3, h)
           && Requires4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3)
         ==> $IsAllocBox(Apply4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3), t4, h)));

function Tclass._System.___hPartialFunc4(Ty, Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hPartialFunc4: TyTag;

// Tclass._System.___hPartialFunc4 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tag(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == Tagclass._System.___hPartialFunc4
     && TagFamily(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == tytagFamily$_#PartialFunc4);

function Tclass._System.___hPartialFunc4_0(Ty) : Ty;

// Tclass._System.___hPartialFunc4 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hPartialFunc4_0(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T0);

function Tclass._System.___hPartialFunc4_1(Ty) : Ty;

// Tclass._System.___hPartialFunc4 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hPartialFunc4_1(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T1);

function Tclass._System.___hPartialFunc4_2(Ty) : Ty;

// Tclass._System.___hPartialFunc4 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hPartialFunc4_2(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T2);

function Tclass._System.___hPartialFunc4_3(Ty) : Ty;

// Tclass._System.___hPartialFunc4 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hPartialFunc4_3(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T3);

function Tclass._System.___hPartialFunc4_4(Ty) : Ty;

// Tclass._System.___hPartialFunc4 injectivity 4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hPartialFunc4_4(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hPartialFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R)) } 
  $IsBox(bx, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, 
        Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R)));

// $Is axiom for subset type _System._#PartialFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R)) } 
  $Is(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     <==> $Is(f#0, Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       && (forall x0#0: Box, x1#0: Box, x2#0: Box, x3#0: Box :: 
        $IsBox(x0#0, #$T0)
             && $IsBox(x1#0, #$T1)
             && $IsBox(x2#0, #$T2)
             && $IsBox(x3#0, #$T3)
           ==> Set#Equal(Reads4(#$T0, #$T1, #$T2, #$T3, #$R, $OneHeap, f#0, x0#0, x1#0, x2#0, x3#0), 
            Set#Empty(): Set)));

// $IsAlloc axiom for subset type _System._#PartialFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h));

function Tclass._System.___hTotalFunc4(Ty, Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hTotalFunc4: TyTag;

// Tclass._System.___hTotalFunc4 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tag(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == Tagclass._System.___hTotalFunc4
     && TagFamily(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == tytagFamily$_#TotalFunc4);

function Tclass._System.___hTotalFunc4_0(Ty) : Ty;

// Tclass._System.___hTotalFunc4 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hTotalFunc4_0(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T0);

function Tclass._System.___hTotalFunc4_1(Ty) : Ty;

// Tclass._System.___hTotalFunc4 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hTotalFunc4_1(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T1);

function Tclass._System.___hTotalFunc4_2(Ty) : Ty;

// Tclass._System.___hTotalFunc4 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hTotalFunc4_2(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T2);

function Tclass._System.___hTotalFunc4_3(Ty) : Ty;

// Tclass._System.___hTotalFunc4 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hTotalFunc4_3(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T3);

function Tclass._System.___hTotalFunc4_4(Ty) : Ty;

// Tclass._System.___hTotalFunc4 injectivity 4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hTotalFunc4_4(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hTotalFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R)) } 
  $IsBox(bx, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, 
        Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R)));

// $Is axiom for subset type _System._#TotalFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R)) } 
  $Is(f#0, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     <==> $Is(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       && (forall x0#0: Box, x1#0: Box, x2#0: Box, x3#0: Box :: 
        $IsBox(x0#0, #$T0)
             && $IsBox(x1#0, #$T1)
             && $IsBox(x2#0, #$T2)
             && $IsBox(x3#0, #$T3)
           ==> Requires4(#$T0, #$T1, #$T2, #$T3, #$R, $OneHeap, f#0, x0#0, x1#0, x2#0, x3#0)));

// $IsAlloc axiom for subset type _System._#TotalFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h));

const unique class._module.__default: ClassName;

const unique class._module.Node?: ClassName;

function Tclass._module.Node?(Ty) : Ty;

const unique Tagclass._module.Node?: TyTag;

// Tclass._module.Node? Tag
axiom (forall _module.Node$T: Ty :: 
  { Tclass._module.Node?(_module.Node$T) } 
  Tag(Tclass._module.Node?(_module.Node$T)) == Tagclass._module.Node?
     && TagFamily(Tclass._module.Node?(_module.Node$T)) == tytagFamily$Node);

function Tclass._module.Node?_0(Ty) : Ty;

// Tclass._module.Node? injectivity 0
axiom (forall _module.Node$T: Ty :: 
  { Tclass._module.Node?(_module.Node$T) } 
  Tclass._module.Node?_0(Tclass._module.Node?(_module.Node$T)) == _module.Node$T);

// Box/unbox axiom for Tclass._module.Node?
axiom (forall _module.Node$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Node?(_module.Node$T)) } 
  $IsBox(bx, Tclass._module.Node?(_module.Node$T))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.Node?(_module.Node$T)));

// $Is axiom for class Node
axiom (forall _module.Node$T: Ty, $o: ref :: 
  { $Is($o, Tclass._module.Node?(_module.Node$T)) } 
  $Is($o, Tclass._module.Node?(_module.Node$T))
     <==> $o == null || dtype($o) == Tclass._module.Node?(_module.Node$T));

// $IsAlloc axiom for class Node
axiom (forall _module.Node$T: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Node?(_module.Node$T), $h) } 
  $IsAlloc($o, Tclass._module.Node?(_module.Node$T), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.Node.data: Field
uses {
axiom FDim(_module.Node.data) == 0
   && FieldOfDecl(class._module.Node?, field$data) == _module.Node.data
   && !$IsGhostField(_module.Node.data);
}

// Node.data: Type axiom
axiom (forall _module.Node$T: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, _module.Node.data), Tclass._module.Node?(_module.Node$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Node?(_module.Node$T)
     ==> $IsBox(read($h, $o, _module.Node.data), _module.Node$T));

// Node.data: Allocation axiom
axiom (forall _module.Node$T: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, _module.Node.data), Tclass._module.Node?(_module.Node$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Node?(_module.Node$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, _module.Node.data), _module.Node$T, $h));

const _module.Node.next: Field
uses {
axiom FDim(_module.Node.next) == 0
   && FieldOfDecl(class._module.Node?, field$next) == _module.Node.next
   && !$IsGhostField(_module.Node.next);
}

// Node.next: Type axiom
axiom (forall _module.Node$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Node.next)): ref, Tclass._module.Node?(_module.Node$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Node?(_module.Node$T)
     ==> $Is($Unbox(read($h, $o, _module.Node.next)): ref, 
      Tclass._module.Node?(_module.Node$T)));

// Node.next: Allocation axiom
axiom (forall _module.Node$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Node.next)): ref, Tclass._module.Node?(_module.Node$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Node?(_module.Node$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Node.next)): ref, 
      Tclass._module.Node?(_module.Node$T), 
      $h));

// function declaration for _module.Node.ListSegment
function _module.Node.ListSegment(_module.Node$T: Ty, 
    $ly: LayerType, 
    $heap: Heap, 
    q#0: Seq, 
    from#0: ref, 
    to#0: ref, 
    S#0: Set)
   : bool
uses {
// definition axiom for _module.Node.ListSegment (revealed)
axiom {:id "id0"} 1 <= $FunctionContextHeight
   ==> (forall _module.Node$T: Ty, 
      $ly: LayerType, 
      $Heap: Heap, 
      q#0: Seq, 
      from#0: ref, 
      to#0: ref, 
      S#0: Set :: 
    { _module.Node.ListSegment(_module.Node$T, $LS($ly), $Heap, q#0, from#0, to#0, S#0), $IsGoodHeap($Heap) } 
    _module.Node.ListSegment#canCall(_module.Node$T, $Heap, q#0, from#0, to#0, S#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(q#0, TSeq(_module.Node$T))
           && $Is(from#0, Tclass._module.Node?(_module.Node$T))
           && $Is(to#0, Tclass._module.Node?(_module.Node$T))
           && $Is(S#0, TSet(Tclass._module.Node(_module.Node$T))))
       ==> (!Seq#Equal(q#0, Seq#Empty(): Seq)
           ==> 
          from#0 != null
           ==> 
          Set#IsMember(S#0, $Box(from#0))
           ==> 
          read($Heap, from#0, _module.Node.data) == Seq#Index(q#0, LitInt(0))
           ==> _module.Node.ListSegment#canCall(_module.Node$T, 
            $Heap, 
            Seq#Drop(q#0, LitInt(1)), 
            $Unbox(read($Heap, from#0, _module.Node.next)): ref, 
            to#0, 
            Set#Difference(S#0, Set#UnionOne(Set#Empty(): Set, $Box(from#0)))))
         && _module.Node.ListSegment(_module.Node$T, $LS($ly), $Heap, q#0, from#0, to#0, S#0)
           == (if Seq#Equal(q#0, Seq#Empty(): Seq)
             then from#0 == to#0
             else from#0 != null
               && Set#IsMember(S#0, $Box(from#0))
               && read($Heap, from#0, _module.Node.data) == Seq#Index(q#0, LitInt(0))
               && _module.Node.ListSegment(_module.Node$T, 
                $ly, 
                $Heap, 
                Seq#Drop(q#0, LitInt(1)), 
                $Unbox(read($Heap, from#0, _module.Node.next)): ref, 
                to#0, 
                Set#Difference(S#0, Set#UnionOne(Set#Empty(): Set, $Box(from#0))))));
}

function _module.Node.ListSegment#canCall(_module.Node$T: Ty, $heap: Heap, q#0: Seq, from#0: ref, to#0: ref, S#0: Set)
   : bool;

// layer synonym axiom
axiom (forall _module.Node$T: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    q#0: Seq, 
    from#0: ref, 
    to#0: ref, 
    S#0: Set :: 
  { _module.Node.ListSegment(_module.Node$T, $LS($ly), $Heap, q#0, from#0, to#0, S#0) } 
  _module.Node.ListSegment(_module.Node$T, $LS($ly), $Heap, q#0, from#0, to#0, S#0)
     == _module.Node.ListSegment(_module.Node$T, $ly, $Heap, q#0, from#0, to#0, S#0));

// fuel synonym axiom
axiom (forall _module.Node$T: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    q#0: Seq, 
    from#0: ref, 
    to#0: ref, 
    S#0: Set :: 
  { _module.Node.ListSegment(_module.Node$T, AsFuelBottom($ly), $Heap, q#0, from#0, to#0, S#0) } 
  _module.Node.ListSegment(_module.Node$T, $ly, $Heap, q#0, from#0, to#0, S#0)
     == _module.Node.ListSegment(_module.Node$T, $LZ, $Heap, q#0, from#0, to#0, S#0));

function Tclass._module.Node(Ty) : Ty;

const unique Tagclass._module.Node: TyTag;

// Tclass._module.Node Tag
axiom (forall _module.Node$T: Ty :: 
  { Tclass._module.Node(_module.Node$T) } 
  Tag(Tclass._module.Node(_module.Node$T)) == Tagclass._module.Node
     && TagFamily(Tclass._module.Node(_module.Node$T)) == tytagFamily$Node);

function Tclass._module.Node_0(Ty) : Ty;

// Tclass._module.Node injectivity 0
axiom (forall _module.Node$T: Ty :: 
  { Tclass._module.Node(_module.Node$T) } 
  Tclass._module.Node_0(Tclass._module.Node(_module.Node$T)) == _module.Node$T);

// Box/unbox axiom for Tclass._module.Node
axiom (forall _module.Node$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Node(_module.Node$T)) } 
  $IsBox(bx, Tclass._module.Node(_module.Node$T))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.Node(_module.Node$T)));

// frame axiom for _module.Node.ListSegment
axiom (forall _module.Node$T: Ty, 
    $ly: LayerType, 
    $h0: Heap, 
    $h1: Heap, 
    q#0: Seq, 
    from#0: ref, 
    to#0: ref, 
    S#0: Set :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Node.ListSegment(_module.Node$T, $ly, $h1, q#0, from#0, to#0, S#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (_module.Node.ListSegment#canCall(_module.Node$T, $h0, q#0, from#0, to#0, S#0)
         || (
          $Is(q#0, TSeq(_module.Node$T))
           && $Is(from#0, Tclass._module.Node?(_module.Node$T))
           && $Is(to#0, Tclass._module.Node?(_module.Node$T))
           && $Is(S#0, TSet(Tclass._module.Node(_module.Node$T)))))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && Set#IsMember(S#0, $Box($o))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Node.ListSegment(_module.Node$T, $ly, $h0, q#0, from#0, to#0, S#0)
       == _module.Node.ListSegment(_module.Node$T, $ly, $h1, q#0, from#0, to#0, S#0));

function _module.Node.ListSegment#requires(Ty, LayerType, Heap, Seq, ref, ref, Set) : bool;

// #requires axiom for _module.Node.ListSegment
axiom (forall _module.Node$T: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    q#0: Seq, 
    from#0: ref, 
    to#0: ref, 
    S#0: Set :: 
  { _module.Node.ListSegment#requires(_module.Node$T, $ly, $Heap, q#0, from#0, to#0, S#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(q#0, TSeq(_module.Node$T))
       && $Is(from#0, Tclass._module.Node?(_module.Node$T))
       && $Is(to#0, Tclass._module.Node?(_module.Node$T))
       && $Is(S#0, TSet(Tclass._module.Node(_module.Node$T)))
     ==> _module.Node.ListSegment#requires(_module.Node$T, $ly, $Heap, q#0, from#0, to#0, S#0)
       == true);

procedure {:verboseName "Node.ListSegment (well-formedness)"} CheckWellformed$$_module.Node.ListSegment(_module.Node$T: Ty, 
    q#0: Seq where $Is(q#0, TSeq(_module.Node$T)), 
    from#0: ref where $Is(from#0, Tclass._module.Node?(_module.Node$T)), 
    to#0: ref where $Is(to#0, Tclass._module.Node?(_module.Node$T)), 
    S#0: Set where $Is(S#0, TSet(Tclass._module.Node(_module.Node$T))));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.ListSegment (well-formedness)"} CheckWellformed$$_module.Node.ListSegment(_module.Node$T: Ty, q#0: Seq, from#0: ref, to#0: ref, S#0: Set)
{
  var $_ReadsFrame: [ref,Field]bool;
  var newtype$check#0: ref;
  var ##q#0: Seq;
  var ##from#0: ref;
  var ##to#0: ref;
  var ##S#0: Set;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;

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
        if (Seq#Equal(q#0, Seq#Empty(): Seq))
        {
            assume {:id "id1"} _module.Node.ListSegment(_module.Node$T, $LS($LZ), $Heap, q#0, from#0, to#0, S#0)
               == 
              (from#0
               == to#0);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.Node.ListSegment(_module.Node$T, $LS($LZ), $Heap, q#0, from#0, to#0, S#0), 
              TBool);
            return;
        }
        else
        {
            newtype$check#0 := null;
            if (from#0 != null)
            {
            }

            if (from#0 != null && Set#IsMember(S#0, $Box(from#0)))
            {
                assert {:id "id2"} from#0 != null;
                b$reqreads#0 := $_ReadsFrame[from#0, _module.Node.data];
                assert {:id "id3"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(q#0);
            }

            if (from#0 != null
               && Set#IsMember(S#0, $Box(from#0))
               && read($Heap, from#0, _module.Node.data) == Seq#Index(q#0, LitInt(0)))
            {
                assert {:id "id4"} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(q#0);
                ##q#0 := Seq#Drop(q#0, LitInt(1));
                // assume allocatedness for argument to function
                assume $IsAlloc(##q#0, TSeq(_module.Node$T), $Heap);
                assert {:id "id5"} from#0 != null;
                b$reqreads#1 := $_ReadsFrame[from#0, _module.Node.next];
                ##from#0 := $Unbox(read($Heap, from#0, _module.Node.next)): ref;
                // assume allocatedness for argument to function
                assume $IsAlloc(##from#0, Tclass._module.Node?(_module.Node$T), $Heap);
                ##to#0 := to#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##to#0, Tclass._module.Node?(_module.Node$T), $Heap);
                assert {:id "id6"} $Is(Set#Difference(S#0, Set#UnionOne(Set#Empty(): Set, $Box(from#0))), 
                  TSet(Tclass._module.Node(_module.Node$T)));
                ##S#0 := Set#Difference(S#0, Set#UnionOne(Set#Empty(): Set, $Box(from#0)));
                // assume allocatedness for argument to function
                assume $IsAlloc(##S#0, TSet(Tclass._module.Node(_module.Node$T)), $Heap);
                b$reqreads#2 := (forall $o: ref, $f: Field :: 
                  $o != null
                       && $Unbox(read($Heap, $o, alloc)): bool
                       && Set#IsMember(##S#0, $Box($o))
                     ==> $_ReadsFrame[$o, $f]);
                assert {:id "id7"} (Set#Subset(##S#0, S#0) && !Set#Subset(S#0, ##S#0))
                   || (Set#Equal(##S#0, S#0)
                     && (Seq#Rank(##q#0) < Seq#Rank(q#0)
                       || (Seq#Rank(##q#0) == Seq#Rank(q#0)
                         && ((##from#0 == null && from#0 != null)
                           || ((##from#0 != null <==> from#0 != null)
                             && ((##to#0 == null && to#0 != null)
                               || ((##to#0 != null <==> to#0 != null)
                                 && 
                                Set#Subset(##S#0, S#0)
                                 && !Set#Subset(S#0, ##S#0))))))));
                assume _module.Node.ListSegment#canCall(_module.Node$T, 
                  $Heap, 
                  Seq#Drop(q#0, LitInt(1)), 
                  $Unbox(read($Heap, from#0, _module.Node.next)): ref, 
                  to#0, 
                  Set#Difference(S#0, Set#UnionOne(Set#Empty(): Set, $Box(from#0))));
            }

            assume {:id "id8"} _module.Node.ListSegment(_module.Node$T, $LS($LZ), $Heap, q#0, from#0, to#0, S#0)
               == (
                from#0 != null
                 && Set#IsMember(S#0, $Box(from#0))
                 && read($Heap, from#0, _module.Node.data) == Seq#Index(q#0, LitInt(0))
                 && _module.Node.ListSegment(_module.Node$T, 
                  $LS($LZ), 
                  $Heap, 
                  Seq#Drop(q#0, LitInt(1)), 
                  $Unbox(read($Heap, from#0, _module.Node.next)): ref, 
                  to#0, 
                  Set#Difference(S#0, Set#UnionOne(Set#Empty(): Set, $Box(from#0)))));
            assume from#0 != null
               ==> 
              Set#IsMember(S#0, $Box(from#0))
               ==> 
              read($Heap, from#0, _module.Node.data) == Seq#Index(q#0, LitInt(0))
               ==> _module.Node.ListSegment#canCall(_module.Node$T, 
                $Heap, 
                Seq#Drop(q#0, LitInt(1)), 
                $Unbox(read($Heap, from#0, _module.Node.next)): ref, 
                to#0, 
                Set#Difference(S#0, Set#UnionOne(Set#Empty(): Set, $Box(from#0))));
            // CheckWellformedWithResult: any expression
            assume $Is(_module.Node.ListSegment(_module.Node$T, $LS($LZ), $Heap, q#0, from#0, to#0, S#0), 
              TBool);
            assert {:id "id9"} b$reqreads#0;
            assert {:id "id10"} b$reqreads#1;
            assert {:id "id11"} b$reqreads#2;
            return;
        }

        assume false;
    }
}



procedure {:verboseName "Node.Create (well-formedness)"} CheckWellFormed$$_module.Node.Create(_module.Node$T: Ty, 
    x#0: Box
       where $IsBox(x#0, _module.Node$T) && $IsAllocBox(x#0, _module.Node$T, $Heap))
   returns (l#0: ref
       where $Is(l#0, Tclass._module.Node(_module.Node$T))
         && $IsAlloc(l#0, Tclass._module.Node(_module.Node$T), $Heap), 
    S#0: Set
       where $Is(S#0, TSet(Tclass._module.Node(_module.Node$T)))
         && $IsAlloc(S#0, TSet(Tclass._module.Node(_module.Node$T)), $Heap));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Node.Create (call)"} Call$$_module.Node.Create(_module.Node$T: Ty, 
    x#0: Box
       where $IsBox(x#0, _module.Node$T) && $IsAllocBox(x#0, _module.Node$T, $Heap))
   returns (l#0: ref
       where $Is(l#0, Tclass._module.Node(_module.Node$T))
         && $IsAlloc(l#0, Tclass._module.Node(_module.Node$T), $Heap), 
    S#0: Set
       where $Is(S#0, TSet(Tclass._module.Node(_module.Node$T)))
         && $IsAlloc(S#0, TSet(Tclass._module.Node(_module.Node$T)), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Node.ListSegment#canCall(_module.Node$T, $Heap, Seq#Build(Seq#Empty(): Seq, x#0), l#0, null, S#0);
  free ensures {:id "id14"} _module.Node.ListSegment#canCall(_module.Node$T, $Heap, Seq#Build(Seq#Empty(): Seq, x#0), l#0, null, S#0)
     && 
    _module.Node.ListSegment(_module.Node$T, 
      $LS($LZ), 
      $Heap, 
      Seq#Build(Seq#Empty(): Seq, x#0), 
      l#0, 
      null, 
      S#0)
     && (if Seq#Equal(Seq#Build(Seq#Empty(): Seq, x#0), Seq#Empty(): Seq)
       then l#0 == null
       else l#0 != null
         && Set#IsMember(S#0, $Box(l#0))
         && read($Heap, l#0, _module.Node.data)
           == Seq#Index(Seq#Build(Seq#Empty(): Seq, x#0), LitInt(0))
         && _module.Node.ListSegment(_module.Node$T, 
          $LS($LZ), 
          $Heap, 
          Seq#Drop(Seq#Build(Seq#Empty(): Seq, x#0), LitInt(1)), 
          $Unbox(read($Heap, l#0, _module.Node.next)): ref, 
          null, 
          Set#Difference(S#0, Set#UnionOne(Set#Empty(): Set, $Box(l#0)))));
  ensures {:id "id15"} (forall $o: ref :: { $o != null } Set#IsMember(S#0, $Box($o)) ==> $o != null)
     && (forall $o: ref :: 
      { Set#IsMember(S#0, $Box($o)) } 
      Set#IsMember(S#0, $Box($o)) ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Node.Create (correctness)"} Impl$$_module.Node.Create(_module.Node$T: Ty, 
    x#0: Box
       where $IsBox(x#0, _module.Node$T) && $IsAllocBox(x#0, _module.Node$T, $Heap))
   returns (defass#l#0: bool, 
    l#0: ref
       where defass#l#0
         ==> $Is(l#0, Tclass._module.Node(_module.Node$T))
           && $IsAlloc(l#0, Tclass._module.Node(_module.Node$T), $Heap), 
    S#0: Set
       where $Is(S#0, TSet(Tclass._module.Node(_module.Node$T)))
         && $IsAlloc(S#0, TSet(Tclass._module.Node(_module.Node$T)), $Heap), 
    $_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Node.ListSegment#canCall(_module.Node$T, $Heap, Seq#Build(Seq#Empty(): Seq, x#0), l#0, null, S#0);
  ensures {:id "id16"} _module.Node.ListSegment#canCall(_module.Node$T, $Heap, Seq#Build(Seq#Empty(): Seq, x#0), l#0, null, S#0)
     ==> _module.Node.ListSegment(_module.Node$T, 
        $LS($LZ), 
        $Heap, 
        Seq#Build(Seq#Empty(): Seq, x#0), 
        l#0, 
        null, 
        S#0)
       || (Seq#Equal(Seq#Build(Seq#Empty(): Seq, x#0), Seq#Empty(): Seq) ==> l#0 == null);
  ensures {:id "id17"} _module.Node.ListSegment#canCall(_module.Node$T, $Heap, Seq#Build(Seq#Empty(): Seq, x#0), l#0, null, S#0)
     ==> _module.Node.ListSegment(_module.Node$T, 
        $LS($LZ), 
        $Heap, 
        Seq#Build(Seq#Empty(): Seq, x#0), 
        l#0, 
        null, 
        S#0)
       || (!Seq#Equal(Seq#Build(Seq#Empty(): Seq, x#0), Seq#Empty(): Seq) ==> l#0 != null);
  ensures {:id "id18"} _module.Node.ListSegment#canCall(_module.Node$T, $Heap, Seq#Build(Seq#Empty(): Seq, x#0), l#0, null, S#0)
     ==> _module.Node.ListSegment(_module.Node$T, 
        $LS($LZ), 
        $Heap, 
        Seq#Build(Seq#Empty(): Seq, x#0), 
        l#0, 
        null, 
        S#0)
       || (!Seq#Equal(Seq#Build(Seq#Empty(): Seq, x#0), Seq#Empty(): Seq)
         ==> Set#IsMember(S#0, $Box(l#0)));
  ensures {:id "id19"} _module.Node.ListSegment#canCall(_module.Node$T, $Heap, Seq#Build(Seq#Empty(): Seq, x#0), l#0, null, S#0)
     ==> _module.Node.ListSegment(_module.Node$T, 
        $LS($LZ), 
        $Heap, 
        Seq#Build(Seq#Empty(): Seq, x#0), 
        l#0, 
        null, 
        S#0)
       || (!Seq#Equal(Seq#Build(Seq#Empty(): Seq, x#0), Seq#Empty(): Seq)
         ==> read($Heap, l#0, _module.Node.data)
           == Seq#Index(Seq#Build(Seq#Empty(): Seq, x#0), LitInt(0)));
  ensures {:id "id20"} _module.Node.ListSegment#canCall(_module.Node$T, $Heap, Seq#Build(Seq#Empty(): Seq, x#0), l#0, null, S#0)
     ==> _module.Node.ListSegment(_module.Node$T, 
        $LS($LZ), 
        $Heap, 
        Seq#Build(Seq#Empty(): Seq, x#0), 
        l#0, 
        null, 
        S#0)
       || (!Seq#Equal(Seq#Build(Seq#Empty(): Seq, x#0), Seq#Empty(): Seq)
         ==> _module.Node.ListSegment(_module.Node$T, 
          $LS($LS($LZ)), 
          $Heap, 
          Seq#Drop(Seq#Build(Seq#Empty(): Seq, x#0), LitInt(1)), 
          $Unbox(read($Heap, l#0, _module.Node.next)): ref, 
          null, 
          Set#Difference(S#0, Set#UnionOne(Set#Empty(): Set, $Box(l#0)))));
  ensures {:id "id21"} (forall $o: ref :: { $o != null } Set#IsMember(S#0, $Box($o)) ==> $o != null)
     && (forall $o: ref :: 
      { Set#IsMember(S#0, $Box($o)) } 
      Set#IsMember(S#0, $Box($o)) ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.Create (correctness)"} Impl$$_module.Node.Create(_module.Node$T: Ty, x#0: Box)
   returns (defass#l#0: bool, l#0: ref, S#0: Set, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $nw: ref;
  var $rhs#0_0: Box;
  var $rhs#0_1: ref;
  var newtype$check#0_0: ref;
  var $rhs##1_0: ref;
  var $rhs##1_1: Set;
  var x##1_0: Box;
  var tail##1_0: ref;
  var newtype$check#1_0: ref;
  var q##1_0: Seq;
  var S##1_0: Set;

    // AddMethodImpl: Create, Impl$$_module.Node.Create
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SeparationLogicList.dfy(28,5)
    if (*)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SeparationLogicList.dfy(29,9)
        assume true;
        havoc $nw;
        assume $nw != null && $Is($nw, Tclass._module.Node?(_module.Node$T));
        assume !$Unbox(read($Heap, $nw, alloc)): bool;
        $Heap := update($Heap, $nw, alloc, $Box(true));
        assume $IsGoodHeap($Heap);
        assume $IsHeapAnchor($Heap);
        l#0 := $nw;
        defass#l#0 := true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SeparationLogicList.dfy(30,14)
        assert {:id "id23"} defass#l#0;
        assert {:id "id24"} l#0 != null;
        assume true;
        assert {:id "id25"} $_ModifiesFrame[l#0, _module.Node.data];
        assume true;
        $rhs#0_0 := x#0;
        $Heap := update($Heap, l#0, _module.Node.data, $rhs#0_0);
        assume $IsGoodHeap($Heap);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SeparationLogicList.dfy(31,14)
        assert {:id "id28"} defass#l#0;
        assert {:id "id29"} l#0 != null;
        assume true;
        assert {:id "id30"} $_ModifiesFrame[l#0, _module.Node.next];
        newtype$check#0_0 := null;
        assume true;
        $rhs#0_1 := null;
        $Heap := update($Heap, l#0, _module.Node.next, $Box($rhs#0_1));
        assume $IsGoodHeap($Heap);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SeparationLogicList.dfy(32,9)
        assume true;
        assert {:id "id33"} defass#l#0;
        assume true;
        S#0 := Set#UnionOne(Set#Empty(): Set, $Box(l#0));
    }
    else
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SeparationLogicList.dfy(34,19)
        assume true;
        assume true;
        // TrCallStmt: Adding lhs with type Node<T>
        // TrCallStmt: Adding lhs with type set<Node<T>>
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        x##1_0 := x#0;
        newtype$check#1_0 := null;
        assume true;
        // ProcessCallStmt: CheckSubrange
        tail##1_0 := null;
        assume true;
        // ProcessCallStmt: CheckSubrange
        q##1_0 := Lit(Seq#Empty(): Seq);
        assume true;
        // ProcessCallStmt: CheckSubrange
        S##1_0 := Lit(Set#Empty(): Set);
        call {:id "id35"} $rhs##1_0, $rhs##1_1 := Call$$_module.Node.Cons(_module.Node$T, x##1_0, tail##1_0, q##1_0, S##1_0);
        // TrCallStmt: After ProcessCallStmt
        l#0 := $rhs##1_0;
        defass#l#0 := true;
        S#0 := $rhs##1_1;
    }

    assert {:id "id38"} defass#l#0;
}



procedure {:verboseName "Node.Cons (well-formedness)"} CheckWellFormed$$_module.Node.Cons(_module.Node$T: Ty, 
    x#0: Box
       where $IsBox(x#0, _module.Node$T) && $IsAllocBox(x#0, _module.Node$T, $Heap), 
    tail#0: ref
       where $Is(tail#0, Tclass._module.Node?(_module.Node$T))
         && $IsAlloc(tail#0, Tclass._module.Node?(_module.Node$T), $Heap), 
    q#0: Seq
       where $Is(q#0, TSeq(_module.Node$T)) && $IsAlloc(q#0, TSeq(_module.Node$T), $Heap), 
    S#0: Set
       where $Is(S#0, TSet(Tclass._module.Node(_module.Node$T)))
         && $IsAlloc(S#0, TSet(Tclass._module.Node(_module.Node$T)), $Heap))
   returns (l#0: ref
       where $Is(l#0, Tclass._module.Node(_module.Node$T))
         && $IsAlloc(l#0, Tclass._module.Node(_module.Node$T), $Heap), 
    U#0: Set
       where $Is(U#0, TSet(Tclass._module.Node(_module.Node$T)))
         && $IsAlloc(U#0, TSet(Tclass._module.Node(_module.Node$T)), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Node.Cons (call)"} Call$$_module.Node.Cons(_module.Node$T: Ty, 
    x#0: Box
       where $IsBox(x#0, _module.Node$T) && $IsAllocBox(x#0, _module.Node$T, $Heap), 
    tail#0: ref
       where $Is(tail#0, Tclass._module.Node?(_module.Node$T))
         && $IsAlloc(tail#0, Tclass._module.Node?(_module.Node$T), $Heap), 
    q#0: Seq
       where $Is(q#0, TSeq(_module.Node$T)) && $IsAlloc(q#0, TSeq(_module.Node$T), $Heap), 
    S#0: Set
       where $Is(S#0, TSet(Tclass._module.Node(_module.Node$T)))
         && $IsAlloc(S#0, TSet(Tclass._module.Node(_module.Node$T)), $Heap))
   returns (l#0: ref
       where $Is(l#0, Tclass._module.Node(_module.Node$T))
         && $IsAlloc(l#0, Tclass._module.Node(_module.Node$T), $Heap), 
    U#0: Set
       where $Is(U#0, TSet(Tclass._module.Node(_module.Node$T)))
         && $IsAlloc(U#0, TSet(Tclass._module.Node(_module.Node$T)), $Heap));
  // user-defined preconditions
  requires {:id "id42"} _module.Node.ListSegment#canCall(_module.Node$T, $Heap, q#0, tail#0, null, S#0)
     ==> _module.Node.ListSegment(_module.Node$T, $LS($LZ), $Heap, q#0, tail#0, null, S#0)
       || (Seq#Equal(q#0, Seq#Empty(): Seq) ==> tail#0 == null);
  requires {:id "id43"} _module.Node.ListSegment#canCall(_module.Node$T, $Heap, q#0, tail#0, null, S#0)
     ==> _module.Node.ListSegment(_module.Node$T, $LS($LZ), $Heap, q#0, tail#0, null, S#0)
       || (!Seq#Equal(q#0, Seq#Empty(): Seq) ==> tail#0 != null);
  requires {:id "id44"} _module.Node.ListSegment#canCall(_module.Node$T, $Heap, q#0, tail#0, null, S#0)
     ==> _module.Node.ListSegment(_module.Node$T, $LS($LZ), $Heap, q#0, tail#0, null, S#0)
       || (!Seq#Equal(q#0, Seq#Empty(): Seq) ==> Set#IsMember(S#0, $Box(tail#0)));
  requires {:id "id45"} _module.Node.ListSegment#canCall(_module.Node$T, $Heap, q#0, tail#0, null, S#0)
     ==> _module.Node.ListSegment(_module.Node$T, $LS($LZ), $Heap, q#0, tail#0, null, S#0)
       || (!Seq#Equal(q#0, Seq#Empty(): Seq)
         ==> read($Heap, tail#0, _module.Node.data) == Seq#Index(q#0, LitInt(0)));
  requires {:id "id46"} _module.Node.ListSegment#canCall(_module.Node$T, $Heap, q#0, tail#0, null, S#0)
     ==> _module.Node.ListSegment(_module.Node$T, $LS($LZ), $Heap, q#0, tail#0, null, S#0)
       || (!Seq#Equal(q#0, Seq#Empty(): Seq)
         ==> _module.Node.ListSegment(_module.Node$T, 
          $LS($LS($LZ)), 
          $Heap, 
          Seq#Drop(q#0, LitInt(1)), 
          $Unbox(read($Heap, tail#0, _module.Node.next)): ref, 
          null, 
          Set#Difference(S#0, Set#UnionOne(Set#Empty(): Set, $Box(tail#0)))));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Node.ListSegment#canCall(_module.Node$T, 
    $Heap, 
    Seq#Append(Seq#Build(Seq#Empty(): Seq, x#0), q#0), 
    l#0, 
    null, 
    U#0);
  free ensures {:id "id47"} _module.Node.ListSegment#canCall(_module.Node$T, 
      $Heap, 
      Seq#Append(Seq#Build(Seq#Empty(): Seq, x#0), q#0), 
      l#0, 
      null, 
      U#0)
     && 
    _module.Node.ListSegment(_module.Node$T, 
      $LS($LZ), 
      $Heap, 
      Seq#Append(Seq#Build(Seq#Empty(): Seq, x#0), q#0), 
      l#0, 
      null, 
      U#0)
     && (if Seq#Equal(Seq#Append(Seq#Build(Seq#Empty(): Seq, x#0), q#0), Seq#Empty(): Seq)
       then l#0 == null
       else l#0 != null
         && Set#IsMember(U#0, $Box(l#0))
         && read($Heap, l#0, _module.Node.data)
           == Seq#Index(Seq#Append(Seq#Build(Seq#Empty(): Seq, x#0), q#0), LitInt(0))
         && _module.Node.ListSegment(_module.Node$T, 
          $LS($LZ), 
          $Heap, 
          Seq#Drop(Seq#Append(Seq#Build(Seq#Empty(): Seq, x#0), q#0), LitInt(1)), 
          $Unbox(read($Heap, l#0, _module.Node.next)): ref, 
          null, 
          Set#Difference(U#0, Set#UnionOne(Set#Empty(): Set, $Box(l#0)))));
  ensures {:id "id48"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember(U#0, $Box($o)) && !Set#IsMember(S#0, $Box($o)) ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember(U#0, $Box($o)) && !Set#IsMember(S#0, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Node.Cons (correctness)"} Impl$$_module.Node.Cons(_module.Node$T: Ty, 
    x#0: Box
       where $IsBox(x#0, _module.Node$T) && $IsAllocBox(x#0, _module.Node$T, $Heap), 
    tail#0: ref
       where $Is(tail#0, Tclass._module.Node?(_module.Node$T))
         && $IsAlloc(tail#0, Tclass._module.Node?(_module.Node$T), $Heap), 
    q#0: Seq
       where $Is(q#0, TSeq(_module.Node$T)) && $IsAlloc(q#0, TSeq(_module.Node$T), $Heap), 
    S#0: Set
       where $Is(S#0, TSet(Tclass._module.Node(_module.Node$T)))
         && $IsAlloc(S#0, TSet(Tclass._module.Node(_module.Node$T)), $Heap))
   returns (defass#l#0: bool, 
    l#0: ref
       where defass#l#0
         ==> $Is(l#0, Tclass._module.Node(_module.Node$T))
           && $IsAlloc(l#0, Tclass._module.Node(_module.Node$T), $Heap), 
    U#0: Set
       where $Is(U#0, TSet(Tclass._module.Node(_module.Node$T)))
         && $IsAlloc(U#0, TSet(Tclass._module.Node(_module.Node$T)), $Heap), 
    $_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id49"} _module.Node.ListSegment#canCall(_module.Node$T, $Heap, q#0, tail#0, null, S#0)
     && 
    _module.Node.ListSegment(_module.Node$T, $LS($LZ), $Heap, q#0, tail#0, null, S#0)
     && (if Seq#Equal(q#0, Seq#Empty(): Seq)
       then tail#0 == null
       else tail#0 != null
         && Set#IsMember(S#0, $Box(tail#0))
         && read($Heap, tail#0, _module.Node.data) == Seq#Index(q#0, LitInt(0))
         && _module.Node.ListSegment(_module.Node$T, 
          $LS($LZ), 
          $Heap, 
          Seq#Drop(q#0, LitInt(1)), 
          $Unbox(read($Heap, tail#0, _module.Node.next)): ref, 
          null, 
          Set#Difference(S#0, Set#UnionOne(Set#Empty(): Set, $Box(tail#0)))));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Node.ListSegment#canCall(_module.Node$T, 
    $Heap, 
    Seq#Append(Seq#Build(Seq#Empty(): Seq, x#0), q#0), 
    l#0, 
    null, 
    U#0);
  ensures {:id "id50"} _module.Node.ListSegment#canCall(_module.Node$T, 
      $Heap, 
      Seq#Append(Seq#Build(Seq#Empty(): Seq, x#0), q#0), 
      l#0, 
      null, 
      U#0)
     ==> _module.Node.ListSegment(_module.Node$T, 
        $LS($LZ), 
        $Heap, 
        Seq#Append(Seq#Build(Seq#Empty(): Seq, x#0), q#0), 
        l#0, 
        null, 
        U#0)
       || (Seq#Equal(Seq#Append(Seq#Build(Seq#Empty(): Seq, x#0), q#0), Seq#Empty(): Seq)
         ==> l#0 == null);
  ensures {:id "id51"} _module.Node.ListSegment#canCall(_module.Node$T, 
      $Heap, 
      Seq#Append(Seq#Build(Seq#Empty(): Seq, x#0), q#0), 
      l#0, 
      null, 
      U#0)
     ==> _module.Node.ListSegment(_module.Node$T, 
        $LS($LZ), 
        $Heap, 
        Seq#Append(Seq#Build(Seq#Empty(): Seq, x#0), q#0), 
        l#0, 
        null, 
        U#0)
       || (!Seq#Equal(Seq#Append(Seq#Build(Seq#Empty(): Seq, x#0), q#0), Seq#Empty(): Seq)
         ==> l#0 != null);
  ensures {:id "id52"} _module.Node.ListSegment#canCall(_module.Node$T, 
      $Heap, 
      Seq#Append(Seq#Build(Seq#Empty(): Seq, x#0), q#0), 
      l#0, 
      null, 
      U#0)
     ==> _module.Node.ListSegment(_module.Node$T, 
        $LS($LZ), 
        $Heap, 
        Seq#Append(Seq#Build(Seq#Empty(): Seq, x#0), q#0), 
        l#0, 
        null, 
        U#0)
       || (!Seq#Equal(Seq#Append(Seq#Build(Seq#Empty(): Seq, x#0), q#0), Seq#Empty(): Seq)
         ==> Set#IsMember(U#0, $Box(l#0)));
  ensures {:id "id53"} _module.Node.ListSegment#canCall(_module.Node$T, 
      $Heap, 
      Seq#Append(Seq#Build(Seq#Empty(): Seq, x#0), q#0), 
      l#0, 
      null, 
      U#0)
     ==> _module.Node.ListSegment(_module.Node$T, 
        $LS($LZ), 
        $Heap, 
        Seq#Append(Seq#Build(Seq#Empty(): Seq, x#0), q#0), 
        l#0, 
        null, 
        U#0)
       || (!Seq#Equal(Seq#Append(Seq#Build(Seq#Empty(): Seq, x#0), q#0), Seq#Empty(): Seq)
         ==> read($Heap, l#0, _module.Node.data)
           == Seq#Index(Seq#Append(Seq#Build(Seq#Empty(): Seq, x#0), q#0), LitInt(0)));
  ensures {:id "id54"} _module.Node.ListSegment#canCall(_module.Node$T, 
      $Heap, 
      Seq#Append(Seq#Build(Seq#Empty(): Seq, x#0), q#0), 
      l#0, 
      null, 
      U#0)
     ==> _module.Node.ListSegment(_module.Node$T, 
        $LS($LZ), 
        $Heap, 
        Seq#Append(Seq#Build(Seq#Empty(): Seq, x#0), q#0), 
        l#0, 
        null, 
        U#0)
       || (!Seq#Equal(Seq#Append(Seq#Build(Seq#Empty(): Seq, x#0), q#0), Seq#Empty(): Seq)
         ==> _module.Node.ListSegment(_module.Node$T, 
          $LS($LS($LZ)), 
          $Heap, 
          Seq#Drop(Seq#Append(Seq#Build(Seq#Empty(): Seq, x#0), q#0), LitInt(1)), 
          $Unbox(read($Heap, l#0, _module.Node.next)): ref, 
          null, 
          Set#Difference(U#0, Set#UnionOne(Set#Empty(): Set, $Box(l#0)))));
  ensures {:id "id55"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember(U#0, $Box($o)) && !Set#IsMember(S#0, $Box($o)) ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember(U#0, $Box($o)) && !Set#IsMember(S#0, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.Cons (correctness)"} Impl$$_module.Node.Cons(_module.Node$T: Ty, x#0: Box, tail#0: ref, q#0: Seq, S#0: Set)
   returns (defass#l#0: bool, l#0: ref, U#0: Set, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $nw: ref;
  var $rhs#0: Box;
  var $rhs#1: ref;

    // AddMethodImpl: Cons, Impl$$_module.Node.Cons
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SeparationLogicList.dfy(42,7)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.Node?(_module.Node$T));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    l#0 := $nw;
    defass#l#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SeparationLogicList.dfy(43,12)
    assert {:id "id57"} defass#l#0;
    assert {:id "id58"} l#0 != null;
    assume true;
    assert {:id "id59"} $_ModifiesFrame[l#0, _module.Node.data];
    assume true;
    $rhs#0 := x#0;
    $Heap := update($Heap, l#0, _module.Node.data, $rhs#0);
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SeparationLogicList.dfy(44,12)
    assert {:id "id62"} defass#l#0;
    assert {:id "id63"} l#0 != null;
    assume true;
    assert {:id "id64"} $_ModifiesFrame[l#0, _module.Node.next];
    assume true;
    $rhs#1 := tail#0;
    $Heap := update($Heap, l#0, _module.Node.next, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SeparationLogicList.dfy(45,7)
    assume true;
    assert {:id "id67"} defass#l#0;
    assume true;
    U#0 := Set#Union(S#0, Set#UnionOne(Set#Empty(): Set, $Box(l#0)));
    assert {:id "id69"} defass#l#0;
}



// $Is axiom for non-null type _module.Node
axiom (forall _module.Node$T: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._module.Node(_module.Node$T)) } 
    { $Is(c#0, Tclass._module.Node?(_module.Node$T)) } 
  $Is(c#0, Tclass._module.Node(_module.Node$T))
     <==> $Is(c#0, Tclass._module.Node?(_module.Node$T)) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Node
axiom (forall _module.Node$T: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Node(_module.Node$T), $h) } 
    { $IsAlloc(c#0, Tclass._module.Node?(_module.Node$T), $h) } 
  $IsAlloc(c#0, Tclass._module.Node(_module.Node$T), $h)
     <==> $IsAlloc(c#0, Tclass._module.Node?(_module.Node$T), $h));

const unique class._module.ListNode?: ClassName;

function Tclass._module.ListNode?(Ty) : Ty;

const unique Tagclass._module.ListNode?: TyTag;

// Tclass._module.ListNode? Tag
axiom (forall _module.ListNode$T: Ty :: 
  { Tclass._module.ListNode?(_module.ListNode$T) } 
  Tag(Tclass._module.ListNode?(_module.ListNode$T)) == Tagclass._module.ListNode?
     && TagFamily(Tclass._module.ListNode?(_module.ListNode$T)) == tytagFamily$ListNode);

function Tclass._module.ListNode?_0(Ty) : Ty;

// Tclass._module.ListNode? injectivity 0
axiom (forall _module.ListNode$T: Ty :: 
  { Tclass._module.ListNode?(_module.ListNode$T) } 
  Tclass._module.ListNode?_0(Tclass._module.ListNode?(_module.ListNode$T))
     == _module.ListNode$T);

// Box/unbox axiom for Tclass._module.ListNode?
axiom (forall _module.ListNode$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.ListNode?(_module.ListNode$T)) } 
  $IsBox(bx, Tclass._module.ListNode?(_module.ListNode$T))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.ListNode?(_module.ListNode$T)));

// $Is axiom for class ListNode
axiom (forall _module.ListNode$T: Ty, $o: ref :: 
  { $Is($o, Tclass._module.ListNode?(_module.ListNode$T)) } 
  $Is($o, Tclass._module.ListNode?(_module.ListNode$T))
     <==> $o == null || dtype($o) == Tclass._module.ListNode?(_module.ListNode$T));

// $IsAlloc axiom for class ListNode
axiom (forall _module.ListNode$T: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.ListNode?(_module.ListNode$T), $h) } 
  $IsAlloc($o, Tclass._module.ListNode?(_module.ListNode$T), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.ListNode.Contents: Field
uses {
axiom FDim(_module.ListNode.Contents) == 0
   && FieldOfDecl(class._module.ListNode?, field$Contents)
     == _module.ListNode.Contents
   && $IsGhostField(_module.ListNode.Contents);
}

// ListNode.Contents: Type axiom
axiom (forall _module.ListNode$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.ListNode.Contents)): Seq, Tclass._module.ListNode?(_module.ListNode$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.ListNode?(_module.ListNode$T)
     ==> $Is($Unbox(read($h, $o, _module.ListNode.Contents)): Seq, TSeq(_module.ListNode$T)));

// ListNode.Contents: Allocation axiom
axiom (forall _module.ListNode$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.ListNode.Contents)): Seq, Tclass._module.ListNode?(_module.ListNode$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.ListNode?(_module.ListNode$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.ListNode.Contents)): Seq, 
      TSeq(_module.ListNode$T), 
      $h));

const _module.ListNode.Repr: Field
uses {
axiom FDim(_module.ListNode.Repr) == 0
   && FieldOfDecl(class._module.ListNode?, field$Repr) == _module.ListNode.Repr
   && $IsGhostField(_module.ListNode.Repr);
}

function Tclass._module.ListNode(Ty) : Ty;

const unique Tagclass._module.ListNode: TyTag;

// Tclass._module.ListNode Tag
axiom (forall _module.ListNode$T: Ty :: 
  { Tclass._module.ListNode(_module.ListNode$T) } 
  Tag(Tclass._module.ListNode(_module.ListNode$T)) == Tagclass._module.ListNode
     && TagFamily(Tclass._module.ListNode(_module.ListNode$T)) == tytagFamily$ListNode);

function Tclass._module.ListNode_0(Ty) : Ty;

// Tclass._module.ListNode injectivity 0
axiom (forall _module.ListNode$T: Ty :: 
  { Tclass._module.ListNode(_module.ListNode$T) } 
  Tclass._module.ListNode_0(Tclass._module.ListNode(_module.ListNode$T))
     == _module.ListNode$T);

// Box/unbox axiom for Tclass._module.ListNode
axiom (forall _module.ListNode$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.ListNode(_module.ListNode$T)) } 
  $IsBox(bx, Tclass._module.ListNode(_module.ListNode$T))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.ListNode(_module.ListNode$T)));

// ListNode.Repr: Type axiom
axiom (forall _module.ListNode$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.ListNode.Repr)): Set, Tclass._module.ListNode?(_module.ListNode$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.ListNode?(_module.ListNode$T)
     ==> $Is($Unbox(read($h, $o, _module.ListNode.Repr)): Set, 
      TSet(Tclass._module.ListNode(_module.ListNode$T))));

// ListNode.Repr: Allocation axiom
axiom (forall _module.ListNode$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.ListNode.Repr)): Set, Tclass._module.ListNode?(_module.ListNode$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.ListNode?(_module.ListNode$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.ListNode.Repr)): Set, 
      TSet(Tclass._module.ListNode(_module.ListNode$T)), 
      $h));

const _module.ListNode.data: Field
uses {
axiom FDim(_module.ListNode.data) == 0
   && FieldOfDecl(class._module.ListNode?, field$data) == _module.ListNode.data
   && !$IsGhostField(_module.ListNode.data);
}

// ListNode.data: Type axiom
axiom (forall _module.ListNode$T: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, _module.ListNode.data), Tclass._module.ListNode?(_module.ListNode$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.ListNode?(_module.ListNode$T)
     ==> $IsBox(read($h, $o, _module.ListNode.data), _module.ListNode$T));

// ListNode.data: Allocation axiom
axiom (forall _module.ListNode$T: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, _module.ListNode.data), Tclass._module.ListNode?(_module.ListNode$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.ListNode?(_module.ListNode$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, _module.ListNode.data), _module.ListNode$T, $h));

const _module.ListNode.next: Field
uses {
axiom FDim(_module.ListNode.next) == 0
   && FieldOfDecl(class._module.ListNode?, field$next) == _module.ListNode.next
   && !$IsGhostField(_module.ListNode.next);
}

// ListNode.next: Type axiom
axiom (forall _module.ListNode$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.ListNode.next)): ref, Tclass._module.ListNode?(_module.ListNode$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.ListNode?(_module.ListNode$T)
     ==> $Is($Unbox(read($h, $o, _module.ListNode.next)): ref, 
      Tclass._module.ListNode?(_module.ListNode$T)));

// ListNode.next: Allocation axiom
axiom (forall _module.ListNode$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.ListNode.next)): ref, Tclass._module.ListNode?(_module.ListNode$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.ListNode?(_module.ListNode$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.ListNode.next)): ref, 
      Tclass._module.ListNode?(_module.ListNode$T), 
      $h));

// function declaration for _module.ListNode.IsList
function _module.ListNode.IsList(_module.ListNode$T: Ty, $ly: LayerType, $heap: Heap, l#0: ref) : bool
uses {
// definition axiom for _module.ListNode.IsList (revealed)
axiom {:id "id70"} 0 <= $FunctionContextHeight
   ==> (forall _module.ListNode$T: Ty, $ly: LayerType, $Heap: Heap, l#0: ref :: 
    { _module.ListNode.IsList(_module.ListNode$T, $LS($ly), $Heap, l#0), $IsGoodHeap($Heap) } 
    _module.ListNode.IsList#canCall(_module.ListNode$T, $Heap, l#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(l#0, Tclass._module.ListNode?(_module.ListNode$T)))
       ==> (l#0 != null
           ==> 
          $Unbox(read($Heap, l#0, _module.ListNode.next)): ref != null
           ==> 
          Set#Subset(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(l#0)), 
              read($Heap, l#0, _module.ListNode.next)), 
            $Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set)
           ==> 
          Seq#Equal($Unbox(read($Heap, l#0, _module.ListNode.Contents)): Seq, 
            Seq#Append(Seq#Build(Seq#Empty(): Seq, read($Heap, l#0, _module.ListNode.data)), 
              $Unbox(read($Heap, 
                  $Unbox(read($Heap, l#0, _module.ListNode.next)): ref, 
                  _module.ListNode.Contents)): Seq))
           ==> 
          Set#Subset($Unbox(read($Heap, 
                $Unbox(read($Heap, l#0, _module.ListNode.next)): ref, 
                _module.ListNode.Repr)): Set, 
            Set#Difference($Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set, 
              Set#UnionOne(Set#Empty(): Set, $Box(l#0))))
           ==> _module.ListNode.IsList#canCall(_module.ListNode$T, $Heap, $Unbox(read($Heap, l#0, _module.ListNode.next)): ref))
         && _module.ListNode.IsList(_module.ListNode$T, $LS($ly), $Heap, l#0)
           == (if l#0 == null
             then true
             else (if $Unbox(read($Heap, l#0, _module.ListNode.next)): ref == null
               then Set#IsMember($Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set, $Box(l#0))
                 && Seq#Equal($Unbox(read($Heap, l#0, _module.ListNode.Contents)): Seq, 
                  Seq#Build(Seq#Empty(): Seq, read($Heap, l#0, _module.ListNode.data)))
               else Set#Subset(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(l#0)), 
                    read($Heap, l#0, _module.ListNode.next)), 
                  $Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set)
                 && Seq#Equal($Unbox(read($Heap, l#0, _module.ListNode.Contents)): Seq, 
                  Seq#Append(Seq#Build(Seq#Empty(): Seq, read($Heap, l#0, _module.ListNode.data)), 
                    $Unbox(read($Heap, 
                        $Unbox(read($Heap, l#0, _module.ListNode.next)): ref, 
                        _module.ListNode.Contents)): Seq))
                 && Set#Subset($Unbox(read($Heap, 
                      $Unbox(read($Heap, l#0, _module.ListNode.next)): ref, 
                      _module.ListNode.Repr)): Set, 
                  Set#Difference($Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(l#0))))
                 && _module.ListNode.IsList(_module.ListNode$T, 
                  $ly, 
                  $Heap, 
                  $Unbox(read($Heap, l#0, _module.ListNode.next)): ref))));
}

function _module.ListNode.IsList#canCall(_module.ListNode$T: Ty, $heap: Heap, l#0: ref) : bool;

// layer synonym axiom
axiom (forall _module.ListNode$T: Ty, $ly: LayerType, $Heap: Heap, l#0: ref :: 
  { _module.ListNode.IsList(_module.ListNode$T, $LS($ly), $Heap, l#0) } 
  _module.ListNode.IsList(_module.ListNode$T, $LS($ly), $Heap, l#0)
     == _module.ListNode.IsList(_module.ListNode$T, $ly, $Heap, l#0));

// fuel synonym axiom
axiom (forall _module.ListNode$T: Ty, $ly: LayerType, $Heap: Heap, l#0: ref :: 
  { _module.ListNode.IsList(_module.ListNode$T, AsFuelBottom($ly), $Heap, l#0) } 
  _module.ListNode.IsList(_module.ListNode$T, $ly, $Heap, l#0)
     == _module.ListNode.IsList(_module.ListNode$T, $LZ, $Heap, l#0));

// frame axiom for _module.ListNode.IsList
axiom (forall _module.ListNode$T: Ty, $ly: LayerType, $h0: Heap, $h1: Heap, l#0: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.ListNode.IsList(_module.ListNode$T, $ly, $h1, l#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (_module.ListNode.IsList#canCall(_module.ListNode$T, $h0, l#0)
         || $Is(l#0, Tclass._module.ListNode?(_module.ListNode$T)))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && ($o == l#0
             || Set#IsMember((if l#0 != null
                 then $Unbox(read($h0, l#0, _module.ListNode.Repr)): Set
                 else Set#Empty(): Set), 
              $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.ListNode.IsList(_module.ListNode$T, $ly, $h0, l#0)
       == _module.ListNode.IsList(_module.ListNode$T, $ly, $h1, l#0));

function _module.ListNode.IsList#requires(Ty, LayerType, Heap, ref) : bool;

// #requires axiom for _module.ListNode.IsList
axiom (forall _module.ListNode$T: Ty, $ly: LayerType, $Heap: Heap, l#0: ref :: 
  { _module.ListNode.IsList#requires(_module.ListNode$T, $ly, $Heap, l#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap) && $Is(l#0, Tclass._module.ListNode?(_module.ListNode$T))
     ==> _module.ListNode.IsList#requires(_module.ListNode$T, $ly, $Heap, l#0) == true);

procedure {:verboseName "ListNode.IsList (well-formedness)"} CheckWellformed$$_module.ListNode.IsList(_module.ListNode$T: Ty, 
    l#0: ref where $Is(l#0, Tclass._module.ListNode?(_module.ListNode$T)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ListNode.IsList (well-formedness)"} CheckWellformed$$_module.ListNode.IsList(_module.ListNode$T: Ty, l#0: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var newtype$check#0: ref;
  var b$reqreads#0: bool;
  var newtype$check#1: ref;
  var newtype$check#2: ref;
  var newtype$check#3: ref;
  var ##l#0: ref;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;
  var b$reqreads#4: bool;
  var b$reqreads#5: bool;
  var b$reqreads#6: bool;
  var b$reqreads#7: bool;
  var b$reqreads#8: bool;
  var b$reqreads#9: bool;
  var b$reqreads#10: bool;
  var b$reqreads#11: bool;
  var b$reqreads#12: bool;
  var b$reqreads#13: bool;
  var b$reqreads#14: bool;
  var b$reqreads#15: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;
    b$reqreads#4 := true;
    b$reqreads#5 := true;
    b$reqreads#6 := true;
    b$reqreads#7 := true;
    b$reqreads#8 := true;
    b$reqreads#9 := true;
    b$reqreads#10 := true;
    b$reqreads#11 := true;
    b$reqreads#12 := true;
    b$reqreads#13 := true;
    b$reqreads#14 := true;
    b$reqreads#15 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == l#0
           || Set#IsMember((if l#0 != null
               then $Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set
               else Set#Empty(): Set), 
            $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    newtype$check#0 := null;
    if (l#0 != null)
    {
        assert {:id "id71"} l#0 != null;
        b$reqreads#0 := $_ReadsFrame[l#0, _module.ListNode.Repr];
    }
    else
    {
    }

    assert {:id "id72"} b$reqreads#0;
    // Check well-formedness of the decreases clause
    newtype$check#1 := null;
    if (l#0 != null)
    {
        assert {:id "id73"} l#0 != null;
    }
    else
    {
    }

    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        newtype$check#2 := null;
        if (l#0 == null)
        {
            assume {:id "id74"} _module.ListNode.IsList(_module.ListNode$T, $LS($LZ), $Heap, l#0) == Lit(true);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.ListNode.IsList(_module.ListNode$T, $LS($LZ), $Heap, l#0), TBool);
            return;
        }
        else
        {
            assert {:id "id75"} l#0 != null;
            b$reqreads#1 := $_ReadsFrame[l#0, _module.ListNode.next];
            newtype$check#3 := null;
            if ($Unbox(read($Heap, l#0, _module.ListNode.next)): ref == null)
            {
                assert {:id "id76"} l#0 != null;
                b$reqreads#2 := $_ReadsFrame[l#0, _module.ListNode.Repr];
                if (Set#IsMember($Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set, $Box(l#0)))
                {
                    assert {:id "id77"} l#0 != null;
                    b$reqreads#3 := $_ReadsFrame[l#0, _module.ListNode.Contents];
                    assert {:id "id78"} l#0 != null;
                    b$reqreads#4 := $_ReadsFrame[l#0, _module.ListNode.data];
                }

                assume {:id "id79"} _module.ListNode.IsList(_module.ListNode$T, $LS($LZ), $Heap, l#0)
                   == (Set#IsMember($Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set, $Box(l#0))
                     && Seq#Equal($Unbox(read($Heap, l#0, _module.ListNode.Contents)): Seq, 
                      Seq#Build(Seq#Empty(): Seq, read($Heap, l#0, _module.ListNode.data))));
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.ListNode.IsList(_module.ListNode$T, $LS($LZ), $Heap, l#0), TBool);
                assert {:id "id80"} b$reqreads#1;
                assert {:id "id81"} b$reqreads#2;
                assert {:id "id82"} b$reqreads#3;
                assert {:id "id83"} b$reqreads#4;
                return;
            }
            else
            {
                assert {:id "id84"} l#0 != null;
                b$reqreads#5 := $_ReadsFrame[l#0, _module.ListNode.next];
                assert {:id "id85"} l#0 != null;
                b$reqreads#6 := $_ReadsFrame[l#0, _module.ListNode.Repr];
                if (Set#Subset(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(l#0)), 
                    read($Heap, l#0, _module.ListNode.next)), 
                  $Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set))
                {
                    assert {:id "id86"} l#0 != null;
                    b$reqreads#7 := $_ReadsFrame[l#0, _module.ListNode.Contents];
                    assert {:id "id87"} l#0 != null;
                    b$reqreads#8 := $_ReadsFrame[l#0, _module.ListNode.data];
                    assert {:id "id88"} l#0 != null;
                    b$reqreads#9 := $_ReadsFrame[l#0, _module.ListNode.next];
                    assert {:id "id89"} $Unbox(read($Heap, l#0, _module.ListNode.next)): ref != null;
                    b$reqreads#10 := $_ReadsFrame[$Unbox(read($Heap, l#0, _module.ListNode.next)): ref, _module.ListNode.Contents];
                }

                if (Set#Subset(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(l#0)), 
                      read($Heap, l#0, _module.ListNode.next)), 
                    $Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set)
                   && Seq#Equal($Unbox(read($Heap, l#0, _module.ListNode.Contents)): Seq, 
                    Seq#Append(Seq#Build(Seq#Empty(): Seq, read($Heap, l#0, _module.ListNode.data)), 
                      $Unbox(read($Heap, 
                          $Unbox(read($Heap, l#0, _module.ListNode.next)): ref, 
                          _module.ListNode.Contents)): Seq)))
                {
                    assert {:id "id90"} l#0 != null;
                    b$reqreads#11 := $_ReadsFrame[l#0, _module.ListNode.next];
                    assert {:id "id91"} $Unbox(read($Heap, l#0, _module.ListNode.next)): ref != null;
                    b$reqreads#12 := $_ReadsFrame[$Unbox(read($Heap, l#0, _module.ListNode.next)): ref, _module.ListNode.Repr];
                    assert {:id "id92"} l#0 != null;
                    b$reqreads#13 := $_ReadsFrame[l#0, _module.ListNode.Repr];
                }

                if (Set#Subset(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(l#0)), 
                      read($Heap, l#0, _module.ListNode.next)), 
                    $Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set)
                   && Seq#Equal($Unbox(read($Heap, l#0, _module.ListNode.Contents)): Seq, 
                    Seq#Append(Seq#Build(Seq#Empty(): Seq, read($Heap, l#0, _module.ListNode.data)), 
                      $Unbox(read($Heap, 
                          $Unbox(read($Heap, l#0, _module.ListNode.next)): ref, 
                          _module.ListNode.Contents)): Seq))
                   && Set#Subset($Unbox(read($Heap, 
                        $Unbox(read($Heap, l#0, _module.ListNode.next)): ref, 
                        _module.ListNode.Repr)): Set, 
                    Set#Difference($Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set, 
                      Set#UnionOne(Set#Empty(): Set, $Box(l#0)))))
                {
                    assert {:id "id93"} l#0 != null;
                    b$reqreads#14 := $_ReadsFrame[l#0, _module.ListNode.next];
                    ##l#0 := $Unbox(read($Heap, l#0, _module.ListNode.next)): ref;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##l#0, Tclass._module.ListNode?(_module.ListNode$T), $Heap);
                    b$reqreads#15 := (forall $o: ref, $f: Field :: 
                      $o != null
                           && $Unbox(read($Heap, $o, alloc)): bool
                           && ($o == ##l#0
                             || Set#IsMember((if ##l#0 != null
                                 then $Unbox(read($Heap, ##l#0, _module.ListNode.Repr)): Set
                                 else Set#Empty(): Set), 
                              $Box($o)))
                         ==> $_ReadsFrame[$o, $f]);
                    assert {:id "id94"} (Set#Subset(Set#Union((if ##l#0 != null
                               then $Unbox(read($Heap, ##l#0, _module.ListNode.Repr)): Set
                               else Set#Empty(): Set), 
                            Set#UnionOne(Set#Empty(): Set, $Box(##l#0))), 
                          Set#Union((if l#0 != null
                               then $Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set
                               else Set#Empty(): Set), 
                            Set#UnionOne(Set#Empty(): Set, $Box(l#0))))
                         && !Set#Subset(Set#Union((if l#0 != null
                               then $Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set
                               else Set#Empty(): Set), 
                            Set#UnionOne(Set#Empty(): Set, $Box(l#0))), 
                          Set#Union((if ##l#0 != null
                               then $Unbox(read($Heap, ##l#0, _module.ListNode.Repr)): Set
                               else Set#Empty(): Set), 
                            Set#UnionOne(Set#Empty(): Set, $Box(##l#0)))))
                       || (Set#Equal(Set#Union((if ##l#0 != null
                               then $Unbox(read($Heap, ##l#0, _module.ListNode.Repr)): Set
                               else Set#Empty(): Set), 
                            Set#UnionOne(Set#Empty(): Set, $Box(##l#0))), 
                          Set#Union((if l#0 != null
                               then $Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set
                               else Set#Empty(): Set), 
                            Set#UnionOne(Set#Empty(): Set, $Box(l#0))))
                         && 
                        ##l#0 == null
                         && l#0 != null);
                    assume _module.ListNode.IsList#canCall(_module.ListNode$T, $Heap, $Unbox(read($Heap, l#0, _module.ListNode.next)): ref);
                }

                assume {:id "id95"} _module.ListNode.IsList(_module.ListNode$T, $LS($LZ), $Heap, l#0)
                   == (
                    Set#Subset(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(l#0)), 
                        read($Heap, l#0, _module.ListNode.next)), 
                      $Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set)
                     && Seq#Equal($Unbox(read($Heap, l#0, _module.ListNode.Contents)): Seq, 
                      Seq#Append(Seq#Build(Seq#Empty(): Seq, read($Heap, l#0, _module.ListNode.data)), 
                        $Unbox(read($Heap, 
                            $Unbox(read($Heap, l#0, _module.ListNode.next)): ref, 
                            _module.ListNode.Contents)): Seq))
                     && Set#Subset($Unbox(read($Heap, 
                          $Unbox(read($Heap, l#0, _module.ListNode.next)): ref, 
                          _module.ListNode.Repr)): Set, 
                      Set#Difference($Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set, 
                        Set#UnionOne(Set#Empty(): Set, $Box(l#0))))
                     && _module.ListNode.IsList(_module.ListNode$T, 
                      $LS($LZ), 
                      $Heap, 
                      $Unbox(read($Heap, l#0, _module.ListNode.next)): ref));
                assume Set#Subset(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(l#0)), 
                      read($Heap, l#0, _module.ListNode.next)), 
                    $Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set)
                   ==> 
                  Seq#Equal($Unbox(read($Heap, l#0, _module.ListNode.Contents)): Seq, 
                    Seq#Append(Seq#Build(Seq#Empty(): Seq, read($Heap, l#0, _module.ListNode.data)), 
                      $Unbox(read($Heap, 
                          $Unbox(read($Heap, l#0, _module.ListNode.next)): ref, 
                          _module.ListNode.Contents)): Seq))
                   ==> 
                  Set#Subset($Unbox(read($Heap, 
                        $Unbox(read($Heap, l#0, _module.ListNode.next)): ref, 
                        _module.ListNode.Repr)): Set, 
                    Set#Difference($Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set, 
                      Set#UnionOne(Set#Empty(): Set, $Box(l#0))))
                   ==> _module.ListNode.IsList#canCall(_module.ListNode$T, $Heap, $Unbox(read($Heap, l#0, _module.ListNode.next)): ref);
                // CheckWellformedWithResult: any expression
                assume $Is(_module.ListNode.IsList(_module.ListNode$T, $LS($LZ), $Heap, l#0), TBool);
                assert {:id "id96"} b$reqreads#1;
                assert {:id "id97"} b$reqreads#2;
                assert {:id "id98"} b$reqreads#3;
                assert {:id "id99"} b$reqreads#4;
                assert {:id "id100"} b$reqreads#5;
                assert {:id "id101"} b$reqreads#6;
                assert {:id "id102"} b$reqreads#7;
                assert {:id "id103"} b$reqreads#8;
                assert {:id "id104"} b$reqreads#9;
                assert {:id "id105"} b$reqreads#10;
                assert {:id "id106"} b$reqreads#11;
                assert {:id "id107"} b$reqreads#12;
                assert {:id "id108"} b$reqreads#13;
                assert {:id "id109"} b$reqreads#14;
                assert {:id "id110"} b$reqreads#15;
                return;
            }
        }

        assume false;
    }
}



procedure {:verboseName "ListNode.Create (well-formedness)"} CheckWellFormed$$_module.ListNode.Create(_module.ListNode$T: Ty, 
    x#0: Box
       where $IsBox(x#0, _module.ListNode$T) && $IsAllocBox(x#0, _module.ListNode$T, $Heap))
   returns (l#0: ref
       where $Is(l#0, Tclass._module.ListNode(_module.ListNode$T))
         && $IsAlloc(l#0, Tclass._module.ListNode(_module.ListNode$T), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ListNode.Create (well-formedness)"} CheckWellFormed$$_module.ListNode.Create(_module.ListNode$T: Ty, x#0: Box) returns (l#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##l#0: ref;


    // AddMethodImpl: Create, CheckWellFormed$$_module.ListNode.Create
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc l#0;
    ##l#0 := l#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##l#0, Tclass._module.ListNode?(_module.ListNode$T), $Heap);
    assume _module.ListNode.IsList#canCall(_module.ListNode$T, $Heap, l#0);
    assume {:id "id111"} _module.ListNode.IsList(_module.ListNode$T, $LS($LZ), $Heap, l#0);
    assert {:id "id112"} l#0 != null;
    assume {:id "id113"} Seq#Equal($Unbox(read($Heap, l#0, _module.ListNode.Contents)): Seq, 
      Seq#Build(Seq#Empty(): Seq, x#0));
    assert {:id "id114"} l#0 != null;
    assume {:id "id115"} (forall $o: ref :: 
        { $o != null } 
        $o == l#0
             || Set#IsMember($Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        $o == l#0
             || Set#IsMember($Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
}



procedure {:verboseName "ListNode.Create (call)"} Call$$_module.ListNode.Create(_module.ListNode$T: Ty, 
    x#0: Box
       where $IsBox(x#0, _module.ListNode$T) && $IsAllocBox(x#0, _module.ListNode$T, $Heap))
   returns (l#0: ref
       where $Is(l#0, Tclass._module.ListNode(_module.ListNode$T))
         && $IsAlloc(l#0, Tclass._module.ListNode(_module.ListNode$T), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.ListNode.IsList#canCall(_module.ListNode$T, $Heap, l#0);
  free ensures {:id "id116"} _module.ListNode.IsList#canCall(_module.ListNode$T, $Heap, l#0)
     && 
    _module.ListNode.IsList(_module.ListNode$T, $LS($LZ), $Heap, l#0)
     && (if l#0 == null
       then true
       else (if $Unbox(read($Heap, l#0, _module.ListNode.next)): ref == null
         then Set#IsMember($Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set, $Box(l#0))
           && Seq#Equal($Unbox(read($Heap, l#0, _module.ListNode.Contents)): Seq, 
            Seq#Build(Seq#Empty(): Seq, read($Heap, l#0, _module.ListNode.data)))
         else Set#Subset(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(l#0)), 
              read($Heap, l#0, _module.ListNode.next)), 
            $Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set)
           && Seq#Equal($Unbox(read($Heap, l#0, _module.ListNode.Contents)): Seq, 
            Seq#Append(Seq#Build(Seq#Empty(): Seq, read($Heap, l#0, _module.ListNode.data)), 
              $Unbox(read($Heap, 
                  $Unbox(read($Heap, l#0, _module.ListNode.next)): ref, 
                  _module.ListNode.Contents)): Seq))
           && Set#Subset($Unbox(read($Heap, 
                $Unbox(read($Heap, l#0, _module.ListNode.next)): ref, 
                _module.ListNode.Repr)): Set, 
            Set#Difference($Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set, 
              Set#UnionOne(Set#Empty(): Set, $Box(l#0))))
           && _module.ListNode.IsList(_module.ListNode$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, l#0, _module.ListNode.next)): ref)));
  ensures {:id "id117"} Seq#Equal($Unbox(read($Heap, l#0, _module.ListNode.Contents)): Seq, 
    Seq#Build(Seq#Empty(): Seq, x#0));
  ensures {:id "id118"} (forall $o: ref :: 
      { $o != null } 
      $o == l#0
           || Set#IsMember($Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      $o == l#0
           || Set#IsMember($Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ListNode.Create (correctness)"} Impl$$_module.ListNode.Create(_module.ListNode$T: Ty, 
    x#0: Box
       where $IsBox(x#0, _module.ListNode$T) && $IsAllocBox(x#0, _module.ListNode$T, $Heap))
   returns (defass#l#0: bool, 
    l#0: ref
       where defass#l#0
         ==> $Is(l#0, Tclass._module.ListNode(_module.ListNode$T))
           && $IsAlloc(l#0, Tclass._module.ListNode(_module.ListNode$T), $Heap), 
    $_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.ListNode.IsList#canCall(_module.ListNode$T, $Heap, l#0);
  ensures {:id "id119"} _module.ListNode.IsList#canCall(_module.ListNode$T, $Heap, l#0)
     ==> _module.ListNode.IsList(_module.ListNode$T, $LS($LZ), $Heap, l#0)
       || (l#0 == null ==> Lit(true));
  ensures {:id "id120"} _module.ListNode.IsList#canCall(_module.ListNode$T, $Heap, l#0)
     ==> _module.ListNode.IsList(_module.ListNode$T, $LS($LZ), $Heap, l#0)
       || (l#0 != null
         ==> 
        $Unbox(read($Heap, l#0, _module.ListNode.next)): ref == null
         ==> Set#IsMember($Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set, $Box(l#0)));
  ensures {:id "id121"} _module.ListNode.IsList#canCall(_module.ListNode$T, $Heap, l#0)
     ==> _module.ListNode.IsList(_module.ListNode$T, $LS($LZ), $Heap, l#0)
       || (l#0 != null
         ==> 
        $Unbox(read($Heap, l#0, _module.ListNode.next)): ref == null
         ==> Seq#Equal($Unbox(read($Heap, l#0, _module.ListNode.Contents)): Seq, 
          Seq#Build(Seq#Empty(): Seq, read($Heap, l#0, _module.ListNode.data))));
  ensures {:id "id122"} _module.ListNode.IsList#canCall(_module.ListNode$T, $Heap, l#0)
     ==> _module.ListNode.IsList(_module.ListNode$T, $LS($LZ), $Heap, l#0)
       || (l#0 != null
         ==> 
        $Unbox(read($Heap, l#0, _module.ListNode.next)): ref != null
         ==> Set#Subset(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(l#0)), 
            read($Heap, l#0, _module.ListNode.next)), 
          $Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set));
  ensures {:id "id123"} _module.ListNode.IsList#canCall(_module.ListNode$T, $Heap, l#0)
     ==> _module.ListNode.IsList(_module.ListNode$T, $LS($LZ), $Heap, l#0)
       || (l#0 != null
         ==> 
        $Unbox(read($Heap, l#0, _module.ListNode.next)): ref != null
         ==> Seq#Equal($Unbox(read($Heap, l#0, _module.ListNode.Contents)): Seq, 
          Seq#Append(Seq#Build(Seq#Empty(): Seq, read($Heap, l#0, _module.ListNode.data)), 
            $Unbox(read($Heap, 
                $Unbox(read($Heap, l#0, _module.ListNode.next)): ref, 
                _module.ListNode.Contents)): Seq)));
  ensures {:id "id124"} _module.ListNode.IsList#canCall(_module.ListNode$T, $Heap, l#0)
     ==> _module.ListNode.IsList(_module.ListNode$T, $LS($LZ), $Heap, l#0)
       || (l#0 != null
         ==> 
        $Unbox(read($Heap, l#0, _module.ListNode.next)): ref != null
         ==> Set#Subset($Unbox(read($Heap, 
              $Unbox(read($Heap, l#0, _module.ListNode.next)): ref, 
              _module.ListNode.Repr)): Set, 
          Set#Difference($Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set, 
            Set#UnionOne(Set#Empty(): Set, $Box(l#0)))));
  ensures {:id "id125"} _module.ListNode.IsList#canCall(_module.ListNode$T, $Heap, l#0)
     ==> _module.ListNode.IsList(_module.ListNode$T, $LS($LZ), $Heap, l#0)
       || (l#0 != null
         ==> 
        $Unbox(read($Heap, l#0, _module.ListNode.next)): ref != null
         ==> _module.ListNode.IsList(_module.ListNode$T, 
          $LS($LS($LZ)), 
          $Heap, 
          $Unbox(read($Heap, l#0, _module.ListNode.next)): ref));
  ensures {:id "id126"} Seq#Equal($Unbox(read($Heap, l#0, _module.ListNode.Contents)): Seq, 
    Seq#Build(Seq#Empty(): Seq, x#0));
  ensures {:id "id127"} (forall $o: ref :: 
      { $o != null } 
      $o == l#0
           || Set#IsMember($Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      $o == l#0
           || Set#IsMember($Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ListNode.Create (correctness)"} Impl$$_module.ListNode.Create(_module.ListNode$T: Ty, x#0: Box)
   returns (defass#l#0: bool, l#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $nw: ref;
  var $rhs#0_0: Box;
  var $rhs#0_1: ref;
  var newtype$check#0_0: ref;
  var $rhs#0_2: Set;
  var $rhs#0_3: Seq;
  var $rhs##1_0: ref;
  var x##1_0: Box;
  var tail##1_0: ref;
  var newtype$check#1_0: ref;

    // AddMethodImpl: Create, Impl$$_module.ListNode.Create
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SeparationLogicList.dfy(74,5)
    if (*)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SeparationLogicList.dfy(75,9)
        assume true;
        havoc $nw;
        assume $nw != null && $Is($nw, Tclass._module.ListNode?(_module.ListNode$T));
        assume !$Unbox(read($Heap, $nw, alloc)): bool;
        $Heap := update($Heap, $nw, alloc, $Box(true));
        assume $IsGoodHeap($Heap);
        assume $IsHeapAnchor($Heap);
        l#0 := $nw;
        defass#l#0 := true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SeparationLogicList.dfy(76,14)
        assert {:id "id129"} defass#l#0;
        assert {:id "id130"} l#0 != null;
        assume true;
        assert {:id "id131"} $_ModifiesFrame[l#0, _module.ListNode.data];
        assume true;
        $rhs#0_0 := x#0;
        $Heap := update($Heap, l#0, _module.ListNode.data, $rhs#0_0);
        assume $IsGoodHeap($Heap);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SeparationLogicList.dfy(77,14)
        assert {:id "id134"} defass#l#0;
        assert {:id "id135"} l#0 != null;
        assume true;
        assert {:id "id136"} $_ModifiesFrame[l#0, _module.ListNode.next];
        newtype$check#0_0 := null;
        assume true;
        $rhs#0_1 := null;
        $Heap := update($Heap, l#0, _module.ListNode.next, $Box($rhs#0_1));
        assume $IsGoodHeap($Heap);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SeparationLogicList.dfy(78,14)
        assert {:id "id139"} defass#l#0;
        assert {:id "id140"} l#0 != null;
        assume true;
        assert {:id "id141"} $_ModifiesFrame[l#0, _module.ListNode.Repr];
        assert {:id "id142"} defass#l#0;
        assume true;
        $rhs#0_2 := Set#UnionOne(Set#Empty(): Set, $Box(l#0));
        $Heap := update($Heap, l#0, _module.ListNode.Repr, $Box($rhs#0_2));
        assume $IsGoodHeap($Heap);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SeparationLogicList.dfy(79,18)
        assert {:id "id145"} defass#l#0;
        assert {:id "id146"} l#0 != null;
        assume true;
        assert {:id "id147"} $_ModifiesFrame[l#0, _module.ListNode.Contents];
        assume true;
        $rhs#0_3 := Seq#Build(Seq#Empty(): Seq, x#0);
        $Heap := update($Heap, l#0, _module.ListNode.Contents, $Box($rhs#0_3));
        assume $IsGoodHeap($Heap);
    }
    else
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SeparationLogicList.dfy(81,16)
        assume true;
        // TrCallStmt: Adding lhs with type ListNode<T>
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        x##1_0 := x#0;
        newtype$check#1_0 := null;
        assume true;
        // ProcessCallStmt: CheckSubrange
        tail##1_0 := null;
        call {:id "id150"} $rhs##1_0 := Call$$_module.ListNode.Cons(_module.ListNode$T, x##1_0, tail##1_0);
        // TrCallStmt: After ProcessCallStmt
        l#0 := $rhs##1_0;
        defass#l#0 := true;
    }

    assert {:id "id152"} defass#l#0;
}



procedure {:verboseName "ListNode.Cons (well-formedness)"} CheckWellFormed$$_module.ListNode.Cons(_module.ListNode$T: Ty, 
    x#0: Box
       where $IsBox(x#0, _module.ListNode$T) && $IsAllocBox(x#0, _module.ListNode$T, $Heap), 
    tail#0: ref
       where $Is(tail#0, Tclass._module.ListNode?(_module.ListNode$T))
         && $IsAlloc(tail#0, Tclass._module.ListNode?(_module.ListNode$T), $Heap))
   returns (l#0: ref
       where $Is(l#0, Tclass._module.ListNode(_module.ListNode$T))
         && $IsAlloc(l#0, Tclass._module.ListNode(_module.ListNode$T), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ListNode.Cons (well-formedness)"} CheckWellFormed$$_module.ListNode.Cons(_module.ListNode$T: Ty, x#0: Box, tail#0: ref) returns (l#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##l#0: ref;
  var ##l#1: ref;
  var newtype$check#0: ref;
  var newtype$check#1: ref;


    // AddMethodImpl: Cons, CheckWellFormed$$_module.ListNode.Cons
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    ##l#0 := tail#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##l#0, Tclass._module.ListNode?(_module.ListNode$T), $Heap);
    assume _module.ListNode.IsList#canCall(_module.ListNode$T, $Heap, tail#0);
    assume {:id "id153"} _module.ListNode.IsList(_module.ListNode$T, $LS($LZ), $Heap, tail#0);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc l#0;
    ##l#1 := l#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##l#1, Tclass._module.ListNode?(_module.ListNode$T), $Heap);
    assume _module.ListNode.IsList#canCall(_module.ListNode$T, $Heap, l#0);
    assume {:id "id154"} _module.ListNode.IsList(_module.ListNode$T, $LS($LZ), $Heap, l#0);
    if (*)
    {
        newtype$check#0 := null;
        assume {:id "id155"} tail#0 == null;
        assert {:id "id156"} l#0 != null;
        assume {:id "id157"} Seq#Equal($Unbox(read($Heap, l#0, _module.ListNode.Contents)): Seq, 
          Seq#Build(Seq#Empty(): Seq, x#0));
        assert {:id "id158"} l#0 != null;
        assume {:id "id159"} (forall $o: ref :: 
            { $o != null } 
            $o == l#0
                 || Set#IsMember($Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set, $Box($o))
               ==> $o != null)
           && (forall $o: ref :: 
            { $Unbox(read(old($Heap), $o, alloc)): bool } 
            $o == l#0
                 || Set#IsMember($Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set, $Box($o))
               ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    }
    else
    {
        assume {:id "id160"} tail#0 == null
           ==> Seq#Equal($Unbox(read($Heap, l#0, _module.ListNode.Contents)): Seq, 
              Seq#Build(Seq#Empty(): Seq, x#0))
             && 
            (forall $o: ref :: 
              { $o != null } 
              $o == l#0
                   || Set#IsMember($Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set, $Box($o))
                 ==> $o != null)
             && (forall $o: ref :: 
              { $Unbox(read(old($Heap), $o, alloc)): bool } 
              $o == l#0
                   || Set#IsMember($Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set, $Box($o))
                 ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    }

    if (*)
    {
        newtype$check#1 := null;
        assume {:id "id161"} tail#0 != null;
        assert {:id "id162"} l#0 != null;
        assert {:id "id163"} tail#0 != null;
        assume {:id "id164"} Seq#Equal($Unbox(read($Heap, l#0, _module.ListNode.Contents)): Seq, 
          Seq#Append(Seq#Build(Seq#Empty(): Seq, x#0), 
            $Unbox(read($Heap, tail#0, _module.ListNode.Contents)): Seq));
        assert {:id "id165"} l#0 != null;
        assert {:id "id166"} tail#0 != null;
        assume {:id "id167"} (forall $o: ref :: 
            { $o != null } 
            ($o == l#0
                   || Set#IsMember($Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set, $Box($o)))
                 && !Set#IsMember($Unbox(read($Heap, tail#0, _module.ListNode.Repr)): Set, $Box($o))
               ==> $o != null)
           && (forall $o: ref :: 
            { $Unbox(read(old($Heap), $o, alloc)): bool } 
            ($o == l#0
                   || Set#IsMember($Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set, $Box($o)))
                 && !Set#IsMember($Unbox(read($Heap, tail#0, _module.ListNode.Repr)): Set, $Box($o))
               ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    }
    else
    {
        assume {:id "id168"} tail#0 != null
           ==> Seq#Equal($Unbox(read($Heap, l#0, _module.ListNode.Contents)): Seq, 
              Seq#Append(Seq#Build(Seq#Empty(): Seq, x#0), 
                $Unbox(read($Heap, tail#0, _module.ListNode.Contents)): Seq))
             && 
            (forall $o: ref :: 
              { $o != null } 
              ($o == l#0
                     || Set#IsMember($Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set, $Box($o)))
                   && !Set#IsMember($Unbox(read($Heap, tail#0, _module.ListNode.Repr)): Set, $Box($o))
                 ==> $o != null)
             && (forall $o: ref :: 
              { $Unbox(read(old($Heap), $o, alloc)): bool } 
              ($o == l#0
                     || Set#IsMember($Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set, $Box($o)))
                   && !Set#IsMember($Unbox(read($Heap, tail#0, _module.ListNode.Repr)): Set, $Box($o))
                 ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
    }
}



procedure {:verboseName "ListNode.Cons (call)"} Call$$_module.ListNode.Cons(_module.ListNode$T: Ty, 
    x#0: Box
       where $IsBox(x#0, _module.ListNode$T) && $IsAllocBox(x#0, _module.ListNode$T, $Heap), 
    tail#0: ref
       where $Is(tail#0, Tclass._module.ListNode?(_module.ListNode$T))
         && $IsAlloc(tail#0, Tclass._module.ListNode?(_module.ListNode$T), $Heap))
   returns (l#0: ref
       where $Is(l#0, Tclass._module.ListNode(_module.ListNode$T))
         && $IsAlloc(l#0, Tclass._module.ListNode(_module.ListNode$T), $Heap));
  // user-defined preconditions
  requires {:id "id169"} _module.ListNode.IsList#canCall(_module.ListNode$T, $Heap, tail#0)
     ==> _module.ListNode.IsList(_module.ListNode$T, $LS($LZ), $Heap, tail#0)
       || (tail#0 == null ==> Lit(true));
  requires {:id "id170"} _module.ListNode.IsList#canCall(_module.ListNode$T, $Heap, tail#0)
     ==> _module.ListNode.IsList(_module.ListNode$T, $LS($LZ), $Heap, tail#0)
       || (tail#0 != null
         ==> 
        $Unbox(read($Heap, tail#0, _module.ListNode.next)): ref == null
         ==> Set#IsMember($Unbox(read($Heap, tail#0, _module.ListNode.Repr)): Set, $Box(tail#0)));
  requires {:id "id171"} _module.ListNode.IsList#canCall(_module.ListNode$T, $Heap, tail#0)
     ==> _module.ListNode.IsList(_module.ListNode$T, $LS($LZ), $Heap, tail#0)
       || (tail#0 != null
         ==> 
        $Unbox(read($Heap, tail#0, _module.ListNode.next)): ref == null
         ==> Seq#Equal($Unbox(read($Heap, tail#0, _module.ListNode.Contents)): Seq, 
          Seq#Build(Seq#Empty(): Seq, read($Heap, tail#0, _module.ListNode.data))));
  requires {:id "id172"} _module.ListNode.IsList#canCall(_module.ListNode$T, $Heap, tail#0)
     ==> _module.ListNode.IsList(_module.ListNode$T, $LS($LZ), $Heap, tail#0)
       || (tail#0 != null
         ==> 
        $Unbox(read($Heap, tail#0, _module.ListNode.next)): ref != null
         ==> Set#Subset(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(tail#0)), 
            read($Heap, tail#0, _module.ListNode.next)), 
          $Unbox(read($Heap, tail#0, _module.ListNode.Repr)): Set));
  requires {:id "id173"} _module.ListNode.IsList#canCall(_module.ListNode$T, $Heap, tail#0)
     ==> _module.ListNode.IsList(_module.ListNode$T, $LS($LZ), $Heap, tail#0)
       || (tail#0 != null
         ==> 
        $Unbox(read($Heap, tail#0, _module.ListNode.next)): ref != null
         ==> Seq#Equal($Unbox(read($Heap, tail#0, _module.ListNode.Contents)): Seq, 
          Seq#Append(Seq#Build(Seq#Empty(): Seq, read($Heap, tail#0, _module.ListNode.data)), 
            $Unbox(read($Heap, 
                $Unbox(read($Heap, tail#0, _module.ListNode.next)): ref, 
                _module.ListNode.Contents)): Seq)));
  requires {:id "id174"} _module.ListNode.IsList#canCall(_module.ListNode$T, $Heap, tail#0)
     ==> _module.ListNode.IsList(_module.ListNode$T, $LS($LZ), $Heap, tail#0)
       || (tail#0 != null
         ==> 
        $Unbox(read($Heap, tail#0, _module.ListNode.next)): ref != null
         ==> Set#Subset($Unbox(read($Heap, 
              $Unbox(read($Heap, tail#0, _module.ListNode.next)): ref, 
              _module.ListNode.Repr)): Set, 
          Set#Difference($Unbox(read($Heap, tail#0, _module.ListNode.Repr)): Set, 
            Set#UnionOne(Set#Empty(): Set, $Box(tail#0)))));
  requires {:id "id175"} _module.ListNode.IsList#canCall(_module.ListNode$T, $Heap, tail#0)
     ==> _module.ListNode.IsList(_module.ListNode$T, $LS($LZ), $Heap, tail#0)
       || (tail#0 != null
         ==> 
        $Unbox(read($Heap, tail#0, _module.ListNode.next)): ref != null
         ==> _module.ListNode.IsList(_module.ListNode$T, 
          $LS($LS($LZ)), 
          $Heap, 
          $Unbox(read($Heap, tail#0, _module.ListNode.next)): ref));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.ListNode.IsList#canCall(_module.ListNode$T, $Heap, l#0);
  free ensures {:id "id176"} _module.ListNode.IsList#canCall(_module.ListNode$T, $Heap, l#0)
     && 
    _module.ListNode.IsList(_module.ListNode$T, $LS($LZ), $Heap, l#0)
     && (if l#0 == null
       then true
       else (if $Unbox(read($Heap, l#0, _module.ListNode.next)): ref == null
         then Set#IsMember($Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set, $Box(l#0))
           && Seq#Equal($Unbox(read($Heap, l#0, _module.ListNode.Contents)): Seq, 
            Seq#Build(Seq#Empty(): Seq, read($Heap, l#0, _module.ListNode.data)))
         else Set#Subset(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(l#0)), 
              read($Heap, l#0, _module.ListNode.next)), 
            $Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set)
           && Seq#Equal($Unbox(read($Heap, l#0, _module.ListNode.Contents)): Seq, 
            Seq#Append(Seq#Build(Seq#Empty(): Seq, read($Heap, l#0, _module.ListNode.data)), 
              $Unbox(read($Heap, 
                  $Unbox(read($Heap, l#0, _module.ListNode.next)): ref, 
                  _module.ListNode.Contents)): Seq))
           && Set#Subset($Unbox(read($Heap, 
                $Unbox(read($Heap, l#0, _module.ListNode.next)): ref, 
                _module.ListNode.Repr)): Set, 
            Set#Difference($Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set, 
              Set#UnionOne(Set#Empty(): Set, $Box(l#0))))
           && _module.ListNode.IsList(_module.ListNode$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, l#0, _module.ListNode.next)): ref)));
  free ensures true;
  ensures {:id "id177"} tail#0 == null
     ==> Seq#Equal($Unbox(read($Heap, l#0, _module.ListNode.Contents)): Seq, 
      Seq#Build(Seq#Empty(): Seq, x#0));
  ensures {:id "id178"} tail#0 == null
     ==> (forall $o: ref :: 
        { $o != null } 
        $o == l#0
             || Set#IsMember($Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        $o == l#0
             || Set#IsMember($Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id179"} tail#0 != null
     ==> Seq#Equal($Unbox(read($Heap, l#0, _module.ListNode.Contents)): Seq, 
      Seq#Append(Seq#Build(Seq#Empty(): Seq, x#0), 
        $Unbox(read($Heap, tail#0, _module.ListNode.Contents)): Seq));
  ensures {:id "id180"} tail#0 != null
     ==> (forall $o: ref :: 
        { $o != null } 
        ($o == l#0
               || Set#IsMember($Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set, $Box($o)))
             && !Set#IsMember($Unbox(read($Heap, tail#0, _module.ListNode.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        ($o == l#0
               || Set#IsMember($Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set, $Box($o)))
             && !Set#IsMember($Unbox(read($Heap, tail#0, _module.ListNode.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ListNode.Cons (correctness)"} Impl$$_module.ListNode.Cons(_module.ListNode$T: Ty, 
    x#0: Box
       where $IsBox(x#0, _module.ListNode$T) && $IsAllocBox(x#0, _module.ListNode$T, $Heap), 
    tail#0: ref
       where $Is(tail#0, Tclass._module.ListNode?(_module.ListNode$T))
         && $IsAlloc(tail#0, Tclass._module.ListNode?(_module.ListNode$T), $Heap))
   returns (defass#l#0: bool, 
    l#0: ref
       where defass#l#0
         ==> $Is(l#0, Tclass._module.ListNode(_module.ListNode$T))
           && $IsAlloc(l#0, Tclass._module.ListNode(_module.ListNode$T), $Heap), 
    $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id181"} _module.ListNode.IsList#canCall(_module.ListNode$T, $Heap, tail#0)
     && 
    _module.ListNode.IsList(_module.ListNode$T, $LS($LZ), $Heap, tail#0)
     && (if tail#0 == null
       then true
       else (if $Unbox(read($Heap, tail#0, _module.ListNode.next)): ref == null
         then Set#IsMember($Unbox(read($Heap, tail#0, _module.ListNode.Repr)): Set, $Box(tail#0))
           && Seq#Equal($Unbox(read($Heap, tail#0, _module.ListNode.Contents)): Seq, 
            Seq#Build(Seq#Empty(): Seq, read($Heap, tail#0, _module.ListNode.data)))
         else Set#Subset(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(tail#0)), 
              read($Heap, tail#0, _module.ListNode.next)), 
            $Unbox(read($Heap, tail#0, _module.ListNode.Repr)): Set)
           && Seq#Equal($Unbox(read($Heap, tail#0, _module.ListNode.Contents)): Seq, 
            Seq#Append(Seq#Build(Seq#Empty(): Seq, read($Heap, tail#0, _module.ListNode.data)), 
              $Unbox(read($Heap, 
                  $Unbox(read($Heap, tail#0, _module.ListNode.next)): ref, 
                  _module.ListNode.Contents)): Seq))
           && Set#Subset($Unbox(read($Heap, 
                $Unbox(read($Heap, tail#0, _module.ListNode.next)): ref, 
                _module.ListNode.Repr)): Set, 
            Set#Difference($Unbox(read($Heap, tail#0, _module.ListNode.Repr)): Set, 
              Set#UnionOne(Set#Empty(): Set, $Box(tail#0))))
           && _module.ListNode.IsList(_module.ListNode$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, tail#0, _module.ListNode.next)): ref)));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.ListNode.IsList#canCall(_module.ListNode$T, $Heap, l#0);
  ensures {:id "id182"} _module.ListNode.IsList#canCall(_module.ListNode$T, $Heap, l#0)
     ==> _module.ListNode.IsList(_module.ListNode$T, $LS($LZ), $Heap, l#0)
       || (l#0 == null ==> Lit(true));
  ensures {:id "id183"} _module.ListNode.IsList#canCall(_module.ListNode$T, $Heap, l#0)
     ==> _module.ListNode.IsList(_module.ListNode$T, $LS($LZ), $Heap, l#0)
       || (l#0 != null
         ==> 
        $Unbox(read($Heap, l#0, _module.ListNode.next)): ref == null
         ==> Set#IsMember($Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set, $Box(l#0)));
  ensures {:id "id184"} _module.ListNode.IsList#canCall(_module.ListNode$T, $Heap, l#0)
     ==> _module.ListNode.IsList(_module.ListNode$T, $LS($LZ), $Heap, l#0)
       || (l#0 != null
         ==> 
        $Unbox(read($Heap, l#0, _module.ListNode.next)): ref == null
         ==> Seq#Equal($Unbox(read($Heap, l#0, _module.ListNode.Contents)): Seq, 
          Seq#Build(Seq#Empty(): Seq, read($Heap, l#0, _module.ListNode.data))));
  ensures {:id "id185"} _module.ListNode.IsList#canCall(_module.ListNode$T, $Heap, l#0)
     ==> _module.ListNode.IsList(_module.ListNode$T, $LS($LZ), $Heap, l#0)
       || (l#0 != null
         ==> 
        $Unbox(read($Heap, l#0, _module.ListNode.next)): ref != null
         ==> Set#Subset(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(l#0)), 
            read($Heap, l#0, _module.ListNode.next)), 
          $Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set));
  ensures {:id "id186"} _module.ListNode.IsList#canCall(_module.ListNode$T, $Heap, l#0)
     ==> _module.ListNode.IsList(_module.ListNode$T, $LS($LZ), $Heap, l#0)
       || (l#0 != null
         ==> 
        $Unbox(read($Heap, l#0, _module.ListNode.next)): ref != null
         ==> Seq#Equal($Unbox(read($Heap, l#0, _module.ListNode.Contents)): Seq, 
          Seq#Append(Seq#Build(Seq#Empty(): Seq, read($Heap, l#0, _module.ListNode.data)), 
            $Unbox(read($Heap, 
                $Unbox(read($Heap, l#0, _module.ListNode.next)): ref, 
                _module.ListNode.Contents)): Seq)));
  ensures {:id "id187"} _module.ListNode.IsList#canCall(_module.ListNode$T, $Heap, l#0)
     ==> _module.ListNode.IsList(_module.ListNode$T, $LS($LZ), $Heap, l#0)
       || (l#0 != null
         ==> 
        $Unbox(read($Heap, l#0, _module.ListNode.next)): ref != null
         ==> Set#Subset($Unbox(read($Heap, 
              $Unbox(read($Heap, l#0, _module.ListNode.next)): ref, 
              _module.ListNode.Repr)): Set, 
          Set#Difference($Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set, 
            Set#UnionOne(Set#Empty(): Set, $Box(l#0)))));
  ensures {:id "id188"} _module.ListNode.IsList#canCall(_module.ListNode$T, $Heap, l#0)
     ==> _module.ListNode.IsList(_module.ListNode$T, $LS($LZ), $Heap, l#0)
       || (l#0 != null
         ==> 
        $Unbox(read($Heap, l#0, _module.ListNode.next)): ref != null
         ==> _module.ListNode.IsList(_module.ListNode$T, 
          $LS($LS($LZ)), 
          $Heap, 
          $Unbox(read($Heap, l#0, _module.ListNode.next)): ref));
  free ensures true;
  ensures {:id "id189"} tail#0 == null
     ==> Seq#Equal($Unbox(read($Heap, l#0, _module.ListNode.Contents)): Seq, 
      Seq#Build(Seq#Empty(): Seq, x#0));
  ensures {:id "id190"} tail#0 == null
     ==> (forall $o: ref :: 
        { $o != null } 
        $o == l#0
             || Set#IsMember($Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        $o == l#0
             || Set#IsMember($Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id191"} tail#0 != null
     ==> Seq#Equal($Unbox(read($Heap, l#0, _module.ListNode.Contents)): Seq, 
      Seq#Append(Seq#Build(Seq#Empty(): Seq, x#0), 
        $Unbox(read($Heap, tail#0, _module.ListNode.Contents)): Seq));
  ensures {:id "id192"} tail#0 != null
     ==> (forall $o: ref :: 
        { $o != null } 
        ($o == l#0
               || Set#IsMember($Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set, $Box($o)))
             && !Set#IsMember($Unbox(read($Heap, tail#0, _module.ListNode.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        ($o == l#0
               || Set#IsMember($Unbox(read($Heap, l#0, _module.ListNode.Repr)): Set, $Box($o)))
             && !Set#IsMember($Unbox(read($Heap, tail#0, _module.ListNode.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ListNode.Cons (correctness)"} Impl$$_module.ListNode.Cons(_module.ListNode$T: Ty, x#0: Box, tail#0: ref)
   returns (defass#l#0: bool, l#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $nw: ref;
  var $rhs#0: Box;
  var $rhs#1: ref;
  var newtype$check#2: ref;
  var $rhs#0_0: Set;
  var $rhs#0_1: Seq;
  var $rhs#1_0: Set;
  var $rhs#1_1: Seq;

    // AddMethodImpl: Cons, Impl$$_module.ListNode.Cons
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SeparationLogicList.dfy(91,7)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.ListNode?(_module.ListNode$T));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    l#0 := $nw;
    defass#l#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SeparationLogicList.dfy(92,12)
    assert {:id "id194"} defass#l#0;
    assert {:id "id195"} l#0 != null;
    assume true;
    assert {:id "id196"} $_ModifiesFrame[l#0, _module.ListNode.data];
    assume true;
    $rhs#0 := x#0;
    $Heap := update($Heap, l#0, _module.ListNode.data, $rhs#0);
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SeparationLogicList.dfy(93,12)
    assert {:id "id199"} defass#l#0;
    assert {:id "id200"} l#0 != null;
    assume true;
    assert {:id "id201"} $_ModifiesFrame[l#0, _module.ListNode.next];
    assume true;
    $rhs#1 := tail#0;
    $Heap := update($Heap, l#0, _module.ListNode.next, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SeparationLogicList.dfy(94,5)
    newtype$check#2 := null;
    assume true;
    if (tail#0 != null)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SeparationLogicList.dfy(95,14)
        assert {:id "id204"} defass#l#0;
        assert {:id "id205"} l#0 != null;
        assume true;
        assert {:id "id206"} $_ModifiesFrame[l#0, _module.ListNode.Repr];
        assert {:id "id207"} tail#0 != null;
        assert {:id "id208"} defass#l#0;
        assume true;
        $rhs#0_0 := Set#Union($Unbox(read($Heap, tail#0, _module.ListNode.Repr)): Set, 
          Set#UnionOne(Set#Empty(): Set, $Box(l#0)));
        $Heap := update($Heap, l#0, _module.ListNode.Repr, $Box($rhs#0_0));
        assume $IsGoodHeap($Heap);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SeparationLogicList.dfy(96,18)
        assert {:id "id211"} defass#l#0;
        assert {:id "id212"} l#0 != null;
        assume true;
        assert {:id "id213"} $_ModifiesFrame[l#0, _module.ListNode.Contents];
        assert {:id "id214"} tail#0 != null;
        assume true;
        $rhs#0_1 := Seq#Append(Seq#Build(Seq#Empty(): Seq, x#0), 
          $Unbox(read($Heap, tail#0, _module.ListNode.Contents)): Seq);
        $Heap := update($Heap, l#0, _module.ListNode.Contents, $Box($rhs#0_1));
        assume $IsGoodHeap($Heap);
    }
    else
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SeparationLogicList.dfy(98,14)
        assert {:id "id217"} defass#l#0;
        assert {:id "id218"} l#0 != null;
        assume true;
        assert {:id "id219"} $_ModifiesFrame[l#0, _module.ListNode.Repr];
        assert {:id "id220"} defass#l#0;
        assume true;
        $rhs#1_0 := Set#UnionOne(Set#Empty(): Set, $Box(l#0));
        $Heap := update($Heap, l#0, _module.ListNode.Repr, $Box($rhs#1_0));
        assume $IsGoodHeap($Heap);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SeparationLogicList.dfy(99,18)
        assert {:id "id223"} defass#l#0;
        assert {:id "id224"} l#0 != null;
        assume true;
        assert {:id "id225"} $_ModifiesFrame[l#0, _module.ListNode.Contents];
        assume true;
        $rhs#1_1 := Seq#Build(Seq#Empty(): Seq, x#0);
        $Heap := update($Heap, l#0, _module.ListNode.Contents, $Box($rhs#1_1));
        assume $IsGoodHeap($Heap);
    }

    assert {:id "id228"} defass#l#0;
}



// $Is axiom for non-null type _module.ListNode
axiom (forall _module.ListNode$T: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._module.ListNode(_module.ListNode$T)) } 
    { $Is(c#0, Tclass._module.ListNode?(_module.ListNode$T)) } 
  $Is(c#0, Tclass._module.ListNode(_module.ListNode$T))
     <==> $Is(c#0, Tclass._module.ListNode?(_module.ListNode$T)) && c#0 != null);

// $IsAlloc axiom for non-null type _module.ListNode
axiom (forall _module.ListNode$T: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.ListNode(_module.ListNode$T), $h) } 
    { $IsAlloc(c#0, Tclass._module.ListNode?(_module.ListNode$T), $h) } 
  $IsAlloc(c#0, Tclass._module.ListNode(_module.ListNode$T), $h)
     <==> $IsAlloc(c#0, Tclass._module.ListNode?(_module.ListNode$T), $h));

const unique class._module.List?: ClassName;

function Tclass._module.List?(Ty) : Ty;

const unique Tagclass._module.List?: TyTag;

// Tclass._module.List? Tag
axiom (forall _module.List$T: Ty :: 
  { Tclass._module.List?(_module.List$T) } 
  Tag(Tclass._module.List?(_module.List$T)) == Tagclass._module.List?
     && TagFamily(Tclass._module.List?(_module.List$T)) == tytagFamily$List);

function Tclass._module.List?_0(Ty) : Ty;

// Tclass._module.List? injectivity 0
axiom (forall _module.List$T: Ty :: 
  { Tclass._module.List?(_module.List$T) } 
  Tclass._module.List?_0(Tclass._module.List?(_module.List$T)) == _module.List$T);

// Box/unbox axiom for Tclass._module.List?
axiom (forall _module.List$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.List?(_module.List$T)) } 
  $IsBox(bx, Tclass._module.List?(_module.List$T))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.List?(_module.List$T)));

// $Is axiom for class List
axiom (forall _module.List$T: Ty, $o: ref :: 
  { $Is($o, Tclass._module.List?(_module.List$T)) } 
  $Is($o, Tclass._module.List?(_module.List$T))
     <==> $o == null || dtype($o) == Tclass._module.List?(_module.List$T));

// $IsAlloc axiom for class List
axiom (forall _module.List$T: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.List?(_module.List$T), $h) } 
  $IsAlloc($o, Tclass._module.List?(_module.List$T), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.List.Contents: Field
uses {
axiom FDim(_module.List.Contents) == 0
   && FieldOfDecl(class._module.List?, field$Contents) == _module.List.Contents
   && $IsGhostField(_module.List.Contents);
}

// List.Contents: Type axiom
axiom (forall _module.List$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.List.Contents)): Seq, Tclass._module.List?(_module.List$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.List?(_module.List$T)
     ==> $Is($Unbox(read($h, $o, _module.List.Contents)): Seq, TSeq(_module.List$T)));

// List.Contents: Allocation axiom
axiom (forall _module.List$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.List.Contents)): Seq, Tclass._module.List?(_module.List$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.List?(_module.List$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.List.Contents)): Seq, TSeq(_module.List$T), $h));

const _module.List.Repr: Field
uses {
axiom FDim(_module.List.Repr) == 0
   && FieldOfDecl(class._module.List?, field$Repr) == _module.List.Repr
   && $IsGhostField(_module.List.Repr);
}

// List.Repr: Type axiom
axiom (forall _module.List$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.List.Repr)): Set, Tclass._module.List?(_module.List$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.List?(_module.List$T)
     ==> $Is($Unbox(read($h, $o, _module.List.Repr)): Set, TSet(Tclass._System.object())));

// List.Repr: Allocation axiom
axiom (forall _module.List$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.List.Repr)): Set, Tclass._module.List?(_module.List$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.List?(_module.List$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.List.Repr)): Set, TSet(Tclass._System.object()), $h));

const _module.List.head: Field
uses {
axiom FDim(_module.List.head) == 0
   && FieldOfDecl(class._module.List?, field$head) == _module.List.head
   && !$IsGhostField(_module.List.head);
}

function Tclass._module.LLNode(Ty) : Ty;

const unique Tagclass._module.LLNode: TyTag;

// Tclass._module.LLNode Tag
axiom (forall _module.LLNode$T: Ty :: 
  { Tclass._module.LLNode(_module.LLNode$T) } 
  Tag(Tclass._module.LLNode(_module.LLNode$T)) == Tagclass._module.LLNode
     && TagFamily(Tclass._module.LLNode(_module.LLNode$T)) == tytagFamily$LLNode);

function Tclass._module.LLNode_0(Ty) : Ty;

// Tclass._module.LLNode injectivity 0
axiom (forall _module.LLNode$T: Ty :: 
  { Tclass._module.LLNode(_module.LLNode$T) } 
  Tclass._module.LLNode_0(Tclass._module.LLNode(_module.LLNode$T))
     == _module.LLNode$T);

// Box/unbox axiom for Tclass._module.LLNode
axiom (forall _module.LLNode$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.LLNode(_module.LLNode$T)) } 
  $IsBox(bx, Tclass._module.LLNode(_module.LLNode$T))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.LLNode(_module.LLNode$T)));

// List.head: Type axiom
axiom (forall _module.List$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.List.head)): ref, Tclass._module.List?(_module.List$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.List?(_module.List$T)
     ==> $Is($Unbox(read($h, $o, _module.List.head)): ref, 
      Tclass._module.LLNode(_module.List$T)));

// List.head: Allocation axiom
axiom (forall _module.List$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.List.head)): ref, Tclass._module.List?(_module.List$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.List?(_module.List$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.List.head)): ref, 
      Tclass._module.LLNode(_module.List$T), 
      $h));

// function declaration for _module.List.IsList
function _module.List.IsList(_module.List$T: Ty, $heap: Heap, this: ref) : bool
uses {
// definition axiom for _module.List.IsList (revealed)
axiom {:id "id229"} 1 <= $FunctionContextHeight
   ==> (forall _module.List$T: Ty, $Heap: Heap, this: ref :: 
    { _module.List.IsList(_module.List$T, $Heap, this), $IsGoodHeap($Heap) } 
    _module.List.IsList#canCall(_module.List$T, $Heap, this)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.List(_module.List$T))
           && $IsAlloc(this, Tclass._module.List(_module.List$T), $Heap))
       ==> (Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box(this))
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, 
            read($Heap, this, _module.List.head))
           ==> 
          Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.Repr)): Set, 
            $Unbox(read($Heap, this, _module.List.Repr)): Set)
           ==> 
          !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.Repr)): Set, 
            $Box(this))
           ==> _module.LLNode.IsWellFormed#canCall(_module.List$T, $Heap, $Unbox(read($Heap, this, _module.List.head)): ref))
         && _module.List.IsList(_module.List$T, $Heap, this)
           == (
            Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box(this))
             && Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, 
              read($Heap, this, _module.List.head))
             && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.Repr)): Set, 
              $Unbox(read($Heap, this, _module.List.Repr)): Set)
             && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.Repr)): Set, 
              $Box(this))
             && _module.LLNode.IsWellFormed(_module.List$T, 
              $LS($LZ), 
              $Heap, 
              $Unbox(read($Heap, this, _module.List.head)): ref)
             && Seq#Equal($Unbox(read($Heap, this, _module.List.Contents)): Seq, 
              $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.List.head)): ref, 
                  _module.LLNode.TailContents)): Seq)));
}

function _module.List.IsList#canCall(_module.List$T: Ty, $heap: Heap, this: ref) : bool;

function Tclass._module.List(Ty) : Ty;

const unique Tagclass._module.List: TyTag;

// Tclass._module.List Tag
axiom (forall _module.List$T: Ty :: 
  { Tclass._module.List(_module.List$T) } 
  Tag(Tclass._module.List(_module.List$T)) == Tagclass._module.List
     && TagFamily(Tclass._module.List(_module.List$T)) == tytagFamily$List);

function Tclass._module.List_0(Ty) : Ty;

// Tclass._module.List injectivity 0
axiom (forall _module.List$T: Ty :: 
  { Tclass._module.List(_module.List$T) } 
  Tclass._module.List_0(Tclass._module.List(_module.List$T)) == _module.List$T);

// Box/unbox axiom for Tclass._module.List
axiom (forall _module.List$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.List(_module.List$T)) } 
  $IsBox(bx, Tclass._module.List(_module.List$T))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.List(_module.List$T)));

// frame axiom for _module.List.IsList
axiom (forall _module.List$T: Ty, $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.List.IsList(_module.List$T, $h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.List(_module.List$T))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && ($o == this
             || Set#IsMember($Unbox(read($h0, this, _module.List.Repr)): Set, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.List.IsList(_module.List$T, $h0, this)
       == _module.List.IsList(_module.List$T, $h1, this));

function _module.List.IsList#requires(Ty, Heap, ref) : bool;

// #requires axiom for _module.List.IsList
axiom (forall _module.List$T: Ty, $Heap: Heap, this: ref :: 
  { _module.List.IsList#requires(_module.List$T, $Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.List(_module.List$T))
       && $IsAlloc(this, Tclass._module.List(_module.List$T), $Heap)
     ==> _module.List.IsList#requires(_module.List$T, $Heap, this) == true);

procedure {:verboseName "List.IsList (well-formedness)"} CheckWellformed$$_module.List.IsList(_module.List$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.List(_module.List$T))
         && $IsAlloc(this, Tclass._module.List(_module.List$T), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



function Tclass._module.LLNode?(Ty) : Ty;

const unique Tagclass._module.LLNode?: TyTag;

// Tclass._module.LLNode? Tag
axiom (forall _module.LLNode$T: Ty :: 
  { Tclass._module.LLNode?(_module.LLNode$T) } 
  Tag(Tclass._module.LLNode?(_module.LLNode$T)) == Tagclass._module.LLNode?
     && TagFamily(Tclass._module.LLNode?(_module.LLNode$T)) == tytagFamily$LLNode);

function Tclass._module.LLNode?_0(Ty) : Ty;

// Tclass._module.LLNode? injectivity 0
axiom (forall _module.LLNode$T: Ty :: 
  { Tclass._module.LLNode?(_module.LLNode$T) } 
  Tclass._module.LLNode?_0(Tclass._module.LLNode?(_module.LLNode$T))
     == _module.LLNode$T);

// Box/unbox axiom for Tclass._module.LLNode?
axiom (forall _module.LLNode$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.LLNode?(_module.LLNode$T)) } 
  $IsBox(bx, Tclass._module.LLNode?(_module.LLNode$T))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.LLNode?(_module.LLNode$T)));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "List.IsList (well-formedness)"} CheckWellformed$$_module.List.IsList(_module.List$T: Ty, this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;
  var b$reqreads#4: bool;
  var b$reqreads#5: bool;
  var b$reqreads#6: bool;
  var b$reqreads#7: bool;
  var b$reqreads#8: bool;
  var b$reqreads#9: bool;
  var b$reqreads#10: bool;
  var b$reqreads#11: bool;
  var b$reqreads#12: bool;
  var b$reqreads#13: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;
    b$reqreads#4 := true;
    b$reqreads#5 := true;
    b$reqreads#6 := true;
    b$reqreads#7 := true;
    b$reqreads#8 := true;
    b$reqreads#9 := true;
    b$reqreads#10 := true;
    b$reqreads#11 := true;
    b$reqreads#12 := true;
    b$reqreads#13 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this
           || Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    b$reqreads#0 := $_ReadsFrame[this, _module.List.Repr];
    assert {:id "id230"} b$reqreads#0;
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
        b$reqreads#1 := $_ReadsFrame[this, _module.List.Repr];
        if (Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box(this)))
        {
            b$reqreads#2 := $_ReadsFrame[this, _module.List.head];
            b$reqreads#3 := $_ReadsFrame[this, _module.List.Repr];
        }

        if (Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box(this))
           && Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, 
            read($Heap, this, _module.List.head)))
        {
            b$reqreads#4 := $_ReadsFrame[this, _module.List.head];
            assert {:id "id231"} $Unbox(read($Heap, this, _module.List.head)): ref != null;
            b$reqreads#5 := $_ReadsFrame[$Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.Repr];
            b$reqreads#6 := $_ReadsFrame[this, _module.List.Repr];
        }

        if (Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box(this))
           && Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, 
            read($Heap, this, _module.List.head))
           && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.Repr)): Set, 
            $Unbox(read($Heap, this, _module.List.Repr)): Set))
        {
            b$reqreads#7 := $_ReadsFrame[this, _module.List.head];
            assert {:id "id232"} $Unbox(read($Heap, this, _module.List.head)): ref != null;
            b$reqreads#8 := $_ReadsFrame[$Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.Repr];
        }

        if (Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box(this))
           && Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, 
            read($Heap, this, _module.List.head))
           && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.Repr)): Set, 
            $Unbox(read($Heap, this, _module.List.Repr)): Set)
           && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.Repr)): Set, 
            $Box(this)))
        {
            b$reqreads#9 := $_ReadsFrame[this, _module.List.head];
            assert {:id "id233"} $Unbox(read($Heap, this, _module.List.head)): ref != null;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox(read($Heap, this, _module.List.head), 
              Tclass._module.LLNode?(_module.List$T), 
              $Heap);
            b$reqreads#10 := (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && ($o == $Unbox(read($Heap, this, _module.List.head)): ref
                     || Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.Repr)): Set, 
                      $Box($o)))
                 ==> $_ReadsFrame[$o, $f]);
            assume _module.LLNode.IsWellFormed#canCall(_module.List$T, $Heap, $Unbox(read($Heap, this, _module.List.head)): ref);
        }

        if (Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box(this))
           && Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, 
            read($Heap, this, _module.List.head))
           && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.Repr)): Set, 
            $Unbox(read($Heap, this, _module.List.Repr)): Set)
           && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.Repr)): Set, 
            $Box(this))
           && _module.LLNode.IsWellFormed(_module.List$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.List.head)): ref))
        {
            b$reqreads#11 := $_ReadsFrame[this, _module.List.Contents];
            b$reqreads#12 := $_ReadsFrame[this, _module.List.head];
            assert {:id "id234"} $Unbox(read($Heap, this, _module.List.head)): ref != null;
            b$reqreads#13 := $_ReadsFrame[$Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.TailContents];
        }

        assume {:id "id235"} _module.List.IsList(_module.List$T, $Heap, this)
           == (
            Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box(this))
             && Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, 
              read($Heap, this, _module.List.head))
             && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.Repr)): Set, 
              $Unbox(read($Heap, this, _module.List.Repr)): Set)
             && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.Repr)): Set, 
              $Box(this))
             && _module.LLNode.IsWellFormed(_module.List$T, 
              $LS($LZ), 
              $Heap, 
              $Unbox(read($Heap, this, _module.List.head)): ref)
             && Seq#Equal($Unbox(read($Heap, this, _module.List.Contents)): Seq, 
              $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.List.head)): ref, 
                  _module.LLNode.TailContents)): Seq));
        assume Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box(this))
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, 
            read($Heap, this, _module.List.head))
           ==> 
          Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.Repr)): Set, 
            $Unbox(read($Heap, this, _module.List.Repr)): Set)
           ==> 
          !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.Repr)): Set, 
            $Box(this))
           ==> _module.LLNode.IsWellFormed#canCall(_module.List$T, $Heap, $Unbox(read($Heap, this, _module.List.head)): ref);
        // CheckWellformedWithResult: any expression
        assume $Is(_module.List.IsList(_module.List$T, $Heap, this), TBool);
        assert {:id "id236"} b$reqreads#1;
        assert {:id "id237"} b$reqreads#2;
        assert {:id "id238"} b$reqreads#3;
        assert {:id "id239"} b$reqreads#4;
        assert {:id "id240"} b$reqreads#5;
        assert {:id "id241"} b$reqreads#6;
        assert {:id "id242"} b$reqreads#7;
        assert {:id "id243"} b$reqreads#8;
        assert {:id "id244"} b$reqreads#9;
        assert {:id "id245"} b$reqreads#10;
        assert {:id "id246"} b$reqreads#11;
        assert {:id "id247"} b$reqreads#12;
        assert {:id "id248"} b$reqreads#13;
        return;

        assume false;
    }
}



procedure {:verboseName "List.Init (well-formedness)"} CheckWellFormed$$_module.List.Init(_module.List$T: Ty) returns (this: ref);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "List.Init (call)"} Call$$_module.List.Init(_module.List$T: Ty)
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.List(_module.List$T))
         && $IsAlloc(this, Tclass._module.List(_module.List$T), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.List.IsList#canCall(_module.List$T, $Heap, this);
  free ensures {:id "id252"} _module.List.IsList#canCall(_module.List$T, $Heap, this)
     && 
    _module.List.IsList(_module.List$T, $Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box(this))
     && Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, 
      read($Heap, this, _module.List.head))
     && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.Repr)): Set, 
      $Unbox(read($Heap, this, _module.List.Repr)): Set)
     && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.Repr)): Set, 
      $Box(this))
     && _module.LLNode.IsWellFormed(_module.List$T, 
      $LS($LZ), 
      $Heap, 
      $Unbox(read($Heap, this, _module.List.head)): ref)
     && Seq#Equal($Unbox(read($Heap, this, _module.List.Contents)): Seq, 
      $Unbox(read($Heap, 
          $Unbox(read($Heap, this, _module.List.head)): ref, 
          _module.LLNode.TailContents)): Seq);
  ensures {:id "id253"} Seq#Equal($Unbox(read($Heap, this, _module.List.Contents)): Seq, Seq#Empty(): Seq);
  ensures {:id "id254"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box($o)) } 
      Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "List.Init (correctness)"} Impl$$_module.List.Init(_module.List$T: Ty) returns (this: ref, $_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.List.IsList#canCall(_module.List$T, $Heap, this);
  ensures {:id "id255"} _module.List.IsList#canCall(_module.List$T, $Heap, this)
     ==> _module.List.IsList(_module.List$T, $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box(this));
  ensures {:id "id256"} _module.List.IsList#canCall(_module.List$T, $Heap, this)
     ==> _module.List.IsList(_module.List$T, $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, 
        read($Heap, this, _module.List.head));
  ensures {:id "id257"} _module.List.IsList#canCall(_module.List$T, $Heap, this)
     ==> _module.List.IsList(_module.List$T, $Heap, this)
       || Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.Repr)): Set, 
        $Unbox(read($Heap, this, _module.List.Repr)): Set);
  ensures {:id "id258"} _module.List.IsList#canCall(_module.List$T, $Heap, this)
     ==> _module.List.IsList(_module.List$T, $Heap, this)
       || !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.Repr)): Set, 
        $Box(this));
  ensures {:id "id259"} _module.List.IsList#canCall(_module.List$T, $Heap, this)
     ==> _module.List.IsList(_module.List$T, $Heap, this)
       || (_module.LLNode.IsWellFormed#canCall(_module.List$T, $Heap, $Unbox(read($Heap, this, _module.List.head)): ref)
         ==> _module.LLNode.IsWellFormed(_module.List$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.List.head)): ref)
           || Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.Repr)): Set, 
            read($Heap, this, _module.List.head)));
  ensures {:id "id260"} _module.List.IsList#canCall(_module.List$T, $Heap, this)
     ==> _module.List.IsList(_module.List$T, $Heap, this)
       || (_module.LLNode.IsWellFormed#canCall(_module.List$T, $Heap, $Unbox(read($Heap, this, _module.List.head)): ref)
         ==> _module.LLNode.IsWellFormed(_module.List$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.List.head)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.next)): ref
               == null
             ==> Seq#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.List.head)): ref, 
                  _module.LLNode.TailContents)): Seq, 
              Seq#Empty(): Seq)));
  ensures {:id "id261"} _module.List.IsList#canCall(_module.List$T, $Heap, this)
     ==> _module.List.IsList(_module.List$T, $Heap, this)
       || (_module.LLNode.IsWellFormed#canCall(_module.List$T, $Heap, $Unbox(read($Heap, this, _module.List.head)): ref)
         ==> _module.LLNode.IsWellFormed(_module.List$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.List.head)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.next)): ref
               != null
             ==> Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.Repr)): Set, 
              read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.next))));
  ensures {:id "id262"} _module.List.IsList#canCall(_module.List$T, $Heap, this)
     ==> _module.List.IsList(_module.List$T, $Heap, this)
       || (_module.LLNode.IsWellFormed#canCall(_module.List$T, $Heap, $Unbox(read($Heap, this, _module.List.head)): ref)
         ==> _module.LLNode.IsWellFormed(_module.List$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.List.head)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.next)): ref
               != null
             ==> Set#Subset($Unbox(read($Heap, 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.next)): ref, 
                  _module.LLNode.Repr)): Set, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.Repr)): Set)));
  ensures {:id "id263"} _module.List.IsList#canCall(_module.List$T, $Heap, this)
     ==> _module.List.IsList(_module.List$T, $Heap, this)
       || (_module.LLNode.IsWellFormed#canCall(_module.List$T, $Heap, $Unbox(read($Heap, this, _module.List.head)): ref)
         ==> _module.LLNode.IsWellFormed(_module.List$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.List.head)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.next)): ref
               != null
             ==> !Set#IsMember($Unbox(read($Heap, 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.next)): ref, 
                  _module.LLNode.Repr)): Set, 
              read($Heap, this, _module.List.head))));
  ensures {:id "id264"} _module.List.IsList#canCall(_module.List$T, $Heap, this)
     ==> _module.List.IsList(_module.List$T, $Heap, this)
       || (_module.LLNode.IsWellFormed#canCall(_module.List$T, $Heap, $Unbox(read($Heap, this, _module.List.head)): ref)
         ==> _module.LLNode.IsWellFormed(_module.List$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.List.head)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.next)): ref
               != null
             ==> _module.LLNode.IsWellFormed(_module.List$T, 
              $LS($LS($LZ)), 
              $Heap, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.next)): ref)));
  ensures {:id "id265"} _module.List.IsList#canCall(_module.List$T, $Heap, this)
     ==> _module.List.IsList(_module.List$T, $Heap, this)
       || (_module.LLNode.IsWellFormed#canCall(_module.List$T, $Heap, $Unbox(read($Heap, this, _module.List.head)): ref)
         ==> _module.LLNode.IsWellFormed(_module.List$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.List.head)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.next)): ref
               != null
             ==> Seq#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.List.head)): ref, 
                  _module.LLNode.TailContents)): Seq, 
              Seq#Append(Seq#Build(Seq#Empty(): Seq, 
                  read($Heap, 
                    $Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.next)): ref, 
                    _module.LLNode.data)), 
                $Unbox(read($Heap, 
                    $Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.next)): ref, 
                    _module.LLNode.TailContents)): Seq))));
  ensures {:id "id266"} _module.List.IsList#canCall(_module.List$T, $Heap, this)
     ==> _module.List.IsList(_module.List$T, $Heap, this)
       || Seq#Equal($Unbox(read($Heap, this, _module.List.Contents)): Seq, 
        $Unbox(read($Heap, 
            $Unbox(read($Heap, this, _module.List.head)): ref, 
            _module.LLNode.TailContents)): Seq);
  ensures {:id "id267"} Seq#Equal($Unbox(read($Heap, this, _module.List.Contents)): Seq, Seq#Empty(): Seq);
  ensures {:id "id268"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box($o)) } 
      Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "List.Init (correctness)"} Impl$$_module.List.Init(_module.List$T: Ty) returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.Contents: Seq;
  var this.Repr: Set;
  var this.head: ref;
  var defass#this.head: bool;
  var defass#h#0: bool;
  var h#0: ref
     where defass#h#0
       ==> $Is(h#0, Tclass._module.LLNode(_module.List$T))
         && $IsAlloc(h#0, Tclass._module.LLNode(_module.List$T), $Heap);
  var $nw: ref;
  var $rhs#0: ref;
  var newtype$check#0: ref;
  var $rhs#1: Seq;
  var $rhs#2: Set;

    // AddMethodImpl: Init, Impl$$_module.List.Init
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SeparationLogicList.dfy(124,3)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SeparationLogicList.dfy(125,22)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.LLNode?(_module.List$T));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    h#0 := $nw;
    defass#h#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SeparationLogicList.dfy(126,12)
    assert {:id "id270"} defass#h#0;
    assert {:id "id271"} h#0 != null;
    assume true;
    assert {:id "id272"} $_ModifiesFrame[h#0, _module.LLNode.next];
    newtype$check#0 := null;
    assume true;
    $rhs#0 := null;
    $Heap := update($Heap, h#0, _module.LLNode.next, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SeparationLogicList.dfy(127,20)
    assert {:id "id275"} defass#h#0;
    assert {:id "id276"} h#0 != null;
    assume true;
    assert {:id "id277"} $_ModifiesFrame[h#0, _module.LLNode.TailContents];
    assume true;
    $rhs#1 := Lit(Seq#Empty(): Seq);
    $Heap := update($Heap, h#0, _module.LLNode.TailContents, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SeparationLogicList.dfy(128,12)
    assert {:id "id280"} defass#h#0;
    assert {:id "id281"} h#0 != null;
    assume true;
    assert {:id "id282"} $_ModifiesFrame[h#0, _module.LLNode.Repr];
    assert {:id "id283"} defass#h#0;
    assume true;
    $rhs#2 := Set#UnionOne(Set#Empty(): Set, $Box(h#0));
    $Heap := update($Heap, h#0, _module.LLNode.Repr, $Box($rhs#2));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SeparationLogicList.dfy(130,10)
    assume true;
    assert {:id "id286"} defass#h#0;
    assume true;
    this.head := h#0;
    defass#this.head := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SeparationLogicList.dfy(131,14)
    assume true;
    assume true;
    this.Contents := Lit(Seq#Empty(): Seq);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SeparationLogicList.dfy(132,10)
    assume true;
    assert {:id "id289"} defass#h#0;
    assert {:id "id290"} h#0 != null;
    assume true;
    this.Repr := Set#Union(Set#UnionOne(Set#Empty(): Set, $Box(this)), 
      $Unbox(read($Heap, h#0, _module.LLNode.Repr)): Set);
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SeparationLogicList.dfy(124,3)
    assert {:id "id292"} defass#this.head;
    assume this != null && $Is(this, Tclass._module.List?(_module.List$T));
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume $Unbox(read($Heap, this, _module.List.Contents)): Seq == this.Contents;
    assume $Unbox(read($Heap, this, _module.List.Repr)): Set == this.Repr;
    assume $Unbox(read($Heap, this, _module.List.head)): ref == this.head;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SeparationLogicList.dfy(124,3)
}



procedure {:verboseName "List.Cons (well-formedness)"} CheckWellFormed$$_module.List.Cons(_module.List$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.List(_module.List$T))
         && $IsAlloc(this, Tclass._module.List(_module.List$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.List$T) && $IsAllocBox(x#0, _module.List$T, $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "List.Cons (well-formedness)"} CheckWellFormed$$_module.List.Cons(_module.List$T: Ty, this: ref, x#0: Box)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: Cons, CheckWellFormed$$_module.List.Cons
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box($o)));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.List?(_module.List$T), $Heap);
    assume _module.List.IsList#canCall(_module.List$T, $Heap, this);
    assume {:id "id293"} _module.List.IsList(_module.List$T, $Heap, this);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]
           || Set#IsMember($Unbox(read(old($Heap), this, _module.List.Repr)): Set, $Box($o)));
    assume $HeapSucc(old($Heap), $Heap);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.List?(_module.List$T), $Heap);
    assume _module.List.IsList#canCall(_module.List$T, $Heap, this);
    assume {:id "id294"} _module.List.IsList(_module.List$T, $Heap, this);
    assert {:id "id295"} $IsAlloc(this, Tclass._module.List(_module.List$T), old($Heap));
    assume {:id "id296"} Seq#Equal($Unbox(read($Heap, this, _module.List.Contents)): Seq, 
      Seq#Append(Seq#Build(Seq#Empty(): Seq, x#0), 
        $Unbox(read(old($Heap), this, _module.List.Contents)): Seq));
    assert {:id "id297"} $IsAlloc(this, Tclass._module.List(_module.List$T), old($Heap));
    assume {:id "id298"} (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, _module.List.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box($o))
             && !Set#IsMember($Unbox(read(old($Heap), this, _module.List.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
}



procedure {:verboseName "List.Cons (call)"} Call$$_module.List.Cons(_module.List$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.List(_module.List$T))
         && $IsAlloc(this, Tclass._module.List(_module.List$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.List$T) && $IsAllocBox(x#0, _module.List$T, $Heap));
  // user-defined preconditions
  requires {:id "id299"} _module.List.IsList#canCall(_module.List$T, $Heap, this)
     ==> _module.List.IsList(_module.List$T, $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box(this));
  requires {:id "id300"} _module.List.IsList#canCall(_module.List$T, $Heap, this)
     ==> _module.List.IsList(_module.List$T, $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, 
        read($Heap, this, _module.List.head));
  requires {:id "id301"} _module.List.IsList#canCall(_module.List$T, $Heap, this)
     ==> _module.List.IsList(_module.List$T, $Heap, this)
       || Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.Repr)): Set, 
        $Unbox(read($Heap, this, _module.List.Repr)): Set);
  requires {:id "id302"} _module.List.IsList#canCall(_module.List$T, $Heap, this)
     ==> _module.List.IsList(_module.List$T, $Heap, this)
       || !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.Repr)): Set, 
        $Box(this));
  requires {:id "id303"} _module.List.IsList#canCall(_module.List$T, $Heap, this)
     ==> _module.List.IsList(_module.List$T, $Heap, this)
       || (_module.LLNode.IsWellFormed#canCall(_module.List$T, $Heap, $Unbox(read($Heap, this, _module.List.head)): ref)
         ==> _module.LLNode.IsWellFormed(_module.List$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.List.head)): ref)
           || Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.Repr)): Set, 
            read($Heap, this, _module.List.head)));
  requires {:id "id304"} _module.List.IsList#canCall(_module.List$T, $Heap, this)
     ==> _module.List.IsList(_module.List$T, $Heap, this)
       || (_module.LLNode.IsWellFormed#canCall(_module.List$T, $Heap, $Unbox(read($Heap, this, _module.List.head)): ref)
         ==> _module.LLNode.IsWellFormed(_module.List$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.List.head)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.next)): ref
               == null
             ==> Seq#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.List.head)): ref, 
                  _module.LLNode.TailContents)): Seq, 
              Seq#Empty(): Seq)));
  requires {:id "id305"} _module.List.IsList#canCall(_module.List$T, $Heap, this)
     ==> _module.List.IsList(_module.List$T, $Heap, this)
       || (_module.LLNode.IsWellFormed#canCall(_module.List$T, $Heap, $Unbox(read($Heap, this, _module.List.head)): ref)
         ==> _module.LLNode.IsWellFormed(_module.List$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.List.head)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.next)): ref
               != null
             ==> Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.Repr)): Set, 
              read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.next))));
  requires {:id "id306"} _module.List.IsList#canCall(_module.List$T, $Heap, this)
     ==> _module.List.IsList(_module.List$T, $Heap, this)
       || (_module.LLNode.IsWellFormed#canCall(_module.List$T, $Heap, $Unbox(read($Heap, this, _module.List.head)): ref)
         ==> _module.LLNode.IsWellFormed(_module.List$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.List.head)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.next)): ref
               != null
             ==> Set#Subset($Unbox(read($Heap, 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.next)): ref, 
                  _module.LLNode.Repr)): Set, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.Repr)): Set)));
  requires {:id "id307"} _module.List.IsList#canCall(_module.List$T, $Heap, this)
     ==> _module.List.IsList(_module.List$T, $Heap, this)
       || (_module.LLNode.IsWellFormed#canCall(_module.List$T, $Heap, $Unbox(read($Heap, this, _module.List.head)): ref)
         ==> _module.LLNode.IsWellFormed(_module.List$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.List.head)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.next)): ref
               != null
             ==> !Set#IsMember($Unbox(read($Heap, 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.next)): ref, 
                  _module.LLNode.Repr)): Set, 
              read($Heap, this, _module.List.head))));
  requires {:id "id308"} _module.List.IsList#canCall(_module.List$T, $Heap, this)
     ==> _module.List.IsList(_module.List$T, $Heap, this)
       || (_module.LLNode.IsWellFormed#canCall(_module.List$T, $Heap, $Unbox(read($Heap, this, _module.List.head)): ref)
         ==> _module.LLNode.IsWellFormed(_module.List$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.List.head)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.next)): ref
               != null
             ==> _module.LLNode.IsWellFormed(_module.List$T, 
              $LS($LS($LZ)), 
              $Heap, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.next)): ref)));
  requires {:id "id309"} _module.List.IsList#canCall(_module.List$T, $Heap, this)
     ==> _module.List.IsList(_module.List$T, $Heap, this)
       || (_module.LLNode.IsWellFormed#canCall(_module.List$T, $Heap, $Unbox(read($Heap, this, _module.List.head)): ref)
         ==> _module.LLNode.IsWellFormed(_module.List$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.List.head)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.next)): ref
               != null
             ==> Seq#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.List.head)): ref, 
                  _module.LLNode.TailContents)): Seq, 
              Seq#Append(Seq#Build(Seq#Empty(): Seq, 
                  read($Heap, 
                    $Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.next)): ref, 
                    _module.LLNode.data)), 
                $Unbox(read($Heap, 
                    $Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.next)): ref, 
                    _module.LLNode.TailContents)): Seq))));
  requires {:id "id310"} _module.List.IsList#canCall(_module.List$T, $Heap, this)
     ==> _module.List.IsList(_module.List$T, $Heap, this)
       || Seq#Equal($Unbox(read($Heap, this, _module.List.Contents)): Seq, 
        $Unbox(read($Heap, 
            $Unbox(read($Heap, this, _module.List.head)): ref, 
            _module.LLNode.TailContents)): Seq);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.List.IsList#canCall(_module.List$T, $Heap, this);
  free ensures {:id "id311"} _module.List.IsList#canCall(_module.List$T, $Heap, this)
     && 
    _module.List.IsList(_module.List$T, $Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box(this))
     && Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, 
      read($Heap, this, _module.List.head))
     && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.Repr)): Set, 
      $Unbox(read($Heap, this, _module.List.Repr)): Set)
     && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.Repr)): Set, 
      $Box(this))
     && _module.LLNode.IsWellFormed(_module.List$T, 
      $LS($LZ), 
      $Heap, 
      $Unbox(read($Heap, this, _module.List.head)): ref)
     && Seq#Equal($Unbox(read($Heap, this, _module.List.Contents)): Seq, 
      $Unbox(read($Heap, 
          $Unbox(read($Heap, this, _module.List.head)): ref, 
          _module.LLNode.TailContents)): Seq);
  ensures {:id "id312"} Seq#Equal($Unbox(read($Heap, this, _module.List.Contents)): Seq, 
    Seq#Append(Seq#Build(Seq#Empty(): Seq, x#0), 
      $Unbox(read(old($Heap), this, _module.List.Contents)): Seq));
  ensures {:id "id313"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.List.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.List.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, _module.List.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "List.Cons (correctness)"} Impl$$_module.List.Cons(_module.List$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.List(_module.List$T))
         && $IsAlloc(this, Tclass._module.List(_module.List$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.List$T) && $IsAllocBox(x#0, _module.List$T, $Heap))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id314"} _module.List.IsList#canCall(_module.List$T, $Heap, this)
     && 
    _module.List.IsList(_module.List$T, $Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box(this))
     && Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, 
      read($Heap, this, _module.List.head))
     && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.Repr)): Set, 
      $Unbox(read($Heap, this, _module.List.Repr)): Set)
     && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.Repr)): Set, 
      $Box(this))
     && _module.LLNode.IsWellFormed(_module.List$T, 
      $LS($LZ), 
      $Heap, 
      $Unbox(read($Heap, this, _module.List.head)): ref)
     && Seq#Equal($Unbox(read($Heap, this, _module.List.Contents)): Seq, 
      $Unbox(read($Heap, 
          $Unbox(read($Heap, this, _module.List.head)): ref, 
          _module.LLNode.TailContents)): Seq);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.List.IsList#canCall(_module.List$T, $Heap, this);
  ensures {:id "id315"} _module.List.IsList#canCall(_module.List$T, $Heap, this)
     ==> _module.List.IsList(_module.List$T, $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box(this));
  ensures {:id "id316"} _module.List.IsList#canCall(_module.List$T, $Heap, this)
     ==> _module.List.IsList(_module.List$T, $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, 
        read($Heap, this, _module.List.head));
  ensures {:id "id317"} _module.List.IsList#canCall(_module.List$T, $Heap, this)
     ==> _module.List.IsList(_module.List$T, $Heap, this)
       || Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.Repr)): Set, 
        $Unbox(read($Heap, this, _module.List.Repr)): Set);
  ensures {:id "id318"} _module.List.IsList#canCall(_module.List$T, $Heap, this)
     ==> _module.List.IsList(_module.List$T, $Heap, this)
       || !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.Repr)): Set, 
        $Box(this));
  ensures {:id "id319"} _module.List.IsList#canCall(_module.List$T, $Heap, this)
     ==> _module.List.IsList(_module.List$T, $Heap, this)
       || (_module.LLNode.IsWellFormed#canCall(_module.List$T, $Heap, $Unbox(read($Heap, this, _module.List.head)): ref)
         ==> _module.LLNode.IsWellFormed(_module.List$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.List.head)): ref)
           || Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.Repr)): Set, 
            read($Heap, this, _module.List.head)));
  ensures {:id "id320"} _module.List.IsList#canCall(_module.List$T, $Heap, this)
     ==> _module.List.IsList(_module.List$T, $Heap, this)
       || (_module.LLNode.IsWellFormed#canCall(_module.List$T, $Heap, $Unbox(read($Heap, this, _module.List.head)): ref)
         ==> _module.LLNode.IsWellFormed(_module.List$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.List.head)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.next)): ref
               == null
             ==> Seq#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.List.head)): ref, 
                  _module.LLNode.TailContents)): Seq, 
              Seq#Empty(): Seq)));
  ensures {:id "id321"} _module.List.IsList#canCall(_module.List$T, $Heap, this)
     ==> _module.List.IsList(_module.List$T, $Heap, this)
       || (_module.LLNode.IsWellFormed#canCall(_module.List$T, $Heap, $Unbox(read($Heap, this, _module.List.head)): ref)
         ==> _module.LLNode.IsWellFormed(_module.List$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.List.head)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.next)): ref
               != null
             ==> Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.Repr)): Set, 
              read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.next))));
  ensures {:id "id322"} _module.List.IsList#canCall(_module.List$T, $Heap, this)
     ==> _module.List.IsList(_module.List$T, $Heap, this)
       || (_module.LLNode.IsWellFormed#canCall(_module.List$T, $Heap, $Unbox(read($Heap, this, _module.List.head)): ref)
         ==> _module.LLNode.IsWellFormed(_module.List$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.List.head)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.next)): ref
               != null
             ==> Set#Subset($Unbox(read($Heap, 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.next)): ref, 
                  _module.LLNode.Repr)): Set, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.Repr)): Set)));
  ensures {:id "id323"} _module.List.IsList#canCall(_module.List$T, $Heap, this)
     ==> _module.List.IsList(_module.List$T, $Heap, this)
       || (_module.LLNode.IsWellFormed#canCall(_module.List$T, $Heap, $Unbox(read($Heap, this, _module.List.head)): ref)
         ==> _module.LLNode.IsWellFormed(_module.List$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.List.head)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.next)): ref
               != null
             ==> !Set#IsMember($Unbox(read($Heap, 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.next)): ref, 
                  _module.LLNode.Repr)): Set, 
              read($Heap, this, _module.List.head))));
  ensures {:id "id324"} _module.List.IsList#canCall(_module.List$T, $Heap, this)
     ==> _module.List.IsList(_module.List$T, $Heap, this)
       || (_module.LLNode.IsWellFormed#canCall(_module.List$T, $Heap, $Unbox(read($Heap, this, _module.List.head)): ref)
         ==> _module.LLNode.IsWellFormed(_module.List$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.List.head)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.next)): ref
               != null
             ==> _module.LLNode.IsWellFormed(_module.List$T, 
              $LS($LS($LZ)), 
              $Heap, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.next)): ref)));
  ensures {:id "id325"} _module.List.IsList#canCall(_module.List$T, $Heap, this)
     ==> _module.List.IsList(_module.List$T, $Heap, this)
       || (_module.LLNode.IsWellFormed#canCall(_module.List$T, $Heap, $Unbox(read($Heap, this, _module.List.head)): ref)
         ==> _module.LLNode.IsWellFormed(_module.List$T, 
            $LS($LZ), 
            $Heap, 
            $Unbox(read($Heap, this, _module.List.head)): ref)
           || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.next)): ref
               != null
             ==> Seq#Equal($Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.List.head)): ref, 
                  _module.LLNode.TailContents)): Seq, 
              Seq#Append(Seq#Build(Seq#Empty(): Seq, 
                  read($Heap, 
                    $Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.next)): ref, 
                    _module.LLNode.data)), 
                $Unbox(read($Heap, 
                    $Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.next)): ref, 
                    _module.LLNode.TailContents)): Seq))));
  ensures {:id "id326"} _module.List.IsList#canCall(_module.List$T, $Heap, this)
     ==> _module.List.IsList(_module.List$T, $Heap, this)
       || Seq#Equal($Unbox(read($Heap, this, _module.List.Contents)): Seq, 
        $Unbox(read($Heap, 
            $Unbox(read($Heap, this, _module.List.head)): ref, 
            _module.LLNode.TailContents)): Seq);
  ensures {:id "id327"} Seq#Equal($Unbox(read($Heap, this, _module.List.Contents)): Seq, 
    Seq#Append(Seq#Build(Seq#Empty(): Seq, x#0), 
      $Unbox(read(old($Heap), this, _module.List.Contents)): Seq));
  ensures {:id "id328"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.List.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.List.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, _module.List.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "List.Cons (correctness)"} Impl$$_module.List.Cons(_module.List$T: Ty, this: ref, x#0: Box) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: Box;
  var defass#h#0: bool;
  var h#0: ref
     where defass#h#0
       ==> $Is(h#0, Tclass._module.LLNode(_module.List$T))
         && $IsAlloc(h#0, Tclass._module.LLNode(_module.List$T), $Heap);
  var $nw: ref;
  var $rhs#1: ref;
  var $rhs#2: Seq;
  var $rhs#3: Set;
  var $rhs#4: ref;
  var $rhs#5: Seq;
  var $rhs#6: Set;

    // AddMethodImpl: Cons, Impl$$_module.List.Cons
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, _module.List.Repr)): Set, $Box($o)));
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SeparationLogicList.dfy(140,15)
    assert {:id "id329"} $Unbox(read($Heap, this, _module.List.head)): ref != null;
    assume true;
    assert {:id "id330"} $_ModifiesFrame[$Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.data];
    assume true;
    $rhs#0 := x#0;
    $Heap := update($Heap, 
      $Unbox(read($Heap, this, _module.List.head)): ref, 
      _module.LLNode.data, 
      $rhs#0);
    assume $IsGoodHeap($Heap);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SeparationLogicList.dfy(141,5)
    assert {:id "id333"} {:subsumption 0} $Unbox(read($Heap, this, _module.List.head)): ref != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox(read($Heap, this, _module.List.head), 
      Tclass._module.LLNode?(_module.List$T), 
      $Heap);
    assume _module.LLNode.IsWellFormed#canCall(_module.List$T, $Heap, $Unbox(read($Heap, this, _module.List.head)): ref);
    assume _module.LLNode.IsWellFormed#canCall(_module.List$T, $Heap, $Unbox(read($Heap, this, _module.List.head)): ref);
    assert {:id "id334"} {:subsumption 0} _module.LLNode.IsWellFormed#canCall(_module.List$T, $Heap, $Unbox(read($Heap, this, _module.List.head)): ref)
       ==> _module.LLNode.IsWellFormed(_module.List$T, 
          $LS($LZ), 
          $Heap, 
          $Unbox(read($Heap, this, _module.List.head)): ref)
         || Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.Repr)): Set, 
          read($Heap, this, _module.List.head));
    assert {:id "id335"} {:subsumption 0} _module.LLNode.IsWellFormed#canCall(_module.List$T, $Heap, $Unbox(read($Heap, this, _module.List.head)): ref)
       ==> _module.LLNode.IsWellFormed(_module.List$T, 
          $LS($LZ), 
          $Heap, 
          $Unbox(read($Heap, this, _module.List.head)): ref)
         || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.next)): ref
             == null
           ==> Seq#Equal($Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.List.head)): ref, 
                _module.LLNode.TailContents)): Seq, 
            Seq#Empty(): Seq));
    assert {:id "id336"} {:subsumption 0} _module.LLNode.IsWellFormed#canCall(_module.List$T, $Heap, $Unbox(read($Heap, this, _module.List.head)): ref)
       ==> _module.LLNode.IsWellFormed(_module.List$T, 
          $LS($LZ), 
          $Heap, 
          $Unbox(read($Heap, this, _module.List.head)): ref)
         || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.next)): ref
             != null
           ==> Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.Repr)): Set, 
            read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.next)));
    assert {:id "id337"} {:subsumption 0} _module.LLNode.IsWellFormed#canCall(_module.List$T, $Heap, $Unbox(read($Heap, this, _module.List.head)): ref)
       ==> _module.LLNode.IsWellFormed(_module.List$T, 
          $LS($LZ), 
          $Heap, 
          $Unbox(read($Heap, this, _module.List.head)): ref)
         || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.next)): ref
             != null
           ==> Set#Subset($Unbox(read($Heap, 
                $Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.next)): ref, 
                _module.LLNode.Repr)): Set, 
            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.Repr)): Set));
    assert {:id "id338"} {:subsumption 0} _module.LLNode.IsWellFormed#canCall(_module.List$T, $Heap, $Unbox(read($Heap, this, _module.List.head)): ref)
       ==> _module.LLNode.IsWellFormed(_module.List$T, 
          $LS($LZ), 
          $Heap, 
          $Unbox(read($Heap, this, _module.List.head)): ref)
         || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.next)): ref
             != null
           ==> !Set#IsMember($Unbox(read($Heap, 
                $Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.next)): ref, 
                _module.LLNode.Repr)): Set, 
            read($Heap, this, _module.List.head)));
    assert {:id "id339"} {:subsumption 0} _module.LLNode.IsWellFormed#canCall(_module.List$T, $Heap, $Unbox(read($Heap, this, _module.List.head)): ref)
       ==> _module.LLNode.IsWellFormed(_module.List$T, 
          $LS($LZ), 
          $Heap, 
          $Unbox(read($Heap, this, _module.List.head)): ref)
         || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.next)): ref
             != null
           ==> _module.LLNode.IsWellFormed(_module.List$T, 
            $LS($LS($LZ)), 
            $Heap, 
            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.next)): ref));
    assert {:id "id340"} {:subsumption 0} _module.LLNode.IsWellFormed#canCall(_module.List$T, $Heap, $Unbox(read($Heap, this, _module.List.head)): ref)
       ==> _module.LLNode.IsWellFormed(_module.List$T, 
          $LS($LZ), 
          $Heap, 
          $Unbox(read($Heap, this, _module.List.head)): ref)
         || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.next)): ref
             != null
           ==> Seq#Equal($Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.List.head)): ref, 
                _module.LLNode.TailContents)): Seq, 
            Seq#Append(Seq#Build(Seq#Empty(): Seq, 
                read($Heap, 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.next)): ref, 
                  _module.LLNode.data)), 
              $Unbox(read($Heap, 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.next)): ref, 
                  _module.LLNode.TailContents)): Seq)));
    assume {:id "id341"} _module.LLNode.IsWellFormed(_module.List$T, 
      $LS($LZ), 
      $Heap, 
      $Unbox(read($Heap, this, _module.List.head)): ref);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SeparationLogicList.dfy(143,22)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.LLNode?(_module.List$T));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    h#0 := $nw;
    defass#h#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SeparationLogicList.dfy(144,12)
    assert {:id "id343"} defass#h#0;
    assert {:id "id344"} h#0 != null;
    assume true;
    assert {:id "id345"} $_ModifiesFrame[h#0, _module.LLNode.next];
    assume true;
    $rhs#1 := $Unbox(read($Heap, this, _module.List.head)): ref;
    $Heap := update($Heap, h#0, _module.LLNode.next, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SeparationLogicList.dfy(145,20)
    assert {:id "id348"} defass#h#0;
    assert {:id "id349"} h#0 != null;
    assume true;
    assert {:id "id350"} $_ModifiesFrame[h#0, _module.LLNode.TailContents];
    assert {:id "id351"} $Unbox(read($Heap, this, _module.List.head)): ref != null;
    assume true;
    $rhs#2 := Seq#Append(Seq#Build(Seq#Empty(): Seq, x#0), 
      $Unbox(read($Heap, 
          $Unbox(read($Heap, this, _module.List.head)): ref, 
          _module.LLNode.TailContents)): Seq);
    $Heap := update($Heap, h#0, _module.LLNode.TailContents, $Box($rhs#2));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SeparationLogicList.dfy(146,12)
    assert {:id "id354"} defass#h#0;
    assert {:id "id355"} h#0 != null;
    assume true;
    assert {:id "id356"} $_ModifiesFrame[h#0, _module.LLNode.Repr];
    assert {:id "id357"} defass#h#0;
    assert {:id "id358"} $Unbox(read($Heap, this, _module.List.head)): ref != null;
    assume true;
    $rhs#3 := Set#Union(Set#UnionOne(Set#Empty(): Set, $Box(h#0)), 
      $Unbox(read($Heap, $Unbox(read($Heap, this, _module.List.head)): ref, _module.LLNode.Repr)): Set);
    $Heap := update($Heap, h#0, _module.LLNode.Repr, $Box($rhs#3));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SeparationLogicList.dfy(148,10)
    assume true;
    assert {:id "id361"} $_ModifiesFrame[this, _module.List.head];
    assert {:id "id362"} defass#h#0;
    assume true;
    $rhs#4 := h#0;
    $Heap := update($Heap, this, _module.List.head, $Box($rhs#4));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SeparationLogicList.dfy(149,14)
    assume true;
    assert {:id "id365"} $_ModifiesFrame[this, _module.List.Contents];
    assume true;
    $rhs#5 := Seq#Append(Seq#Build(Seq#Empty(): Seq, x#0), 
      $Unbox(read($Heap, this, _module.List.Contents)): Seq);
    $Heap := update($Heap, this, _module.List.Contents, $Box($rhs#5));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/SeparationLogicList.dfy(150,10)
    assume true;
    assert {:id "id368"} $_ModifiesFrame[this, _module.List.Repr];
    assert {:id "id369"} defass#h#0;
    assume true;
    $rhs#6 := Set#Union($Unbox(read($Heap, this, _module.List.Repr)): Set, 
      Set#UnionOne(Set#Empty(): Set, $Box(h#0)));
    $Heap := update($Heap, this, _module.List.Repr, $Box($rhs#6));
    assume $IsGoodHeap($Heap);
}



// $Is axiom for non-null type _module.List
axiom (forall _module.List$T: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._module.List(_module.List$T)) } 
    { $Is(c#0, Tclass._module.List?(_module.List$T)) } 
  $Is(c#0, Tclass._module.List(_module.List$T))
     <==> $Is(c#0, Tclass._module.List?(_module.List$T)) && c#0 != null);

// $IsAlloc axiom for non-null type _module.List
axiom (forall _module.List$T: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.List(_module.List$T), $h) } 
    { $IsAlloc(c#0, Tclass._module.List?(_module.List$T), $h) } 
  $IsAlloc(c#0, Tclass._module.List(_module.List$T), $h)
     <==> $IsAlloc(c#0, Tclass._module.List?(_module.List$T), $h));

const unique class._module.LLNode?: ClassName;

// $Is axiom for class LLNode
axiom (forall _module.LLNode$T: Ty, $o: ref :: 
  { $Is($o, Tclass._module.LLNode?(_module.LLNode$T)) } 
  $Is($o, Tclass._module.LLNode?(_module.LLNode$T))
     <==> $o == null || dtype($o) == Tclass._module.LLNode?(_module.LLNode$T));

// $IsAlloc axiom for class LLNode
axiom (forall _module.LLNode$T: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.LLNode?(_module.LLNode$T), $h) } 
  $IsAlloc($o, Tclass._module.LLNode?(_module.LLNode$T), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.LLNode.data: Field
uses {
axiom FDim(_module.LLNode.data) == 0
   && FieldOfDecl(class._module.LLNode?, field$data) == _module.LLNode.data
   && !$IsGhostField(_module.LLNode.data);
}

// LLNode.data: Type axiom
axiom (forall _module.LLNode$T: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, _module.LLNode.data), Tclass._module.LLNode?(_module.LLNode$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.LLNode?(_module.LLNode$T)
     ==> $IsBox(read($h, $o, _module.LLNode.data), _module.LLNode$T));

// LLNode.data: Allocation axiom
axiom (forall _module.LLNode$T: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, _module.LLNode.data), Tclass._module.LLNode?(_module.LLNode$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.LLNode?(_module.LLNode$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, _module.LLNode.data), _module.LLNode$T, $h));

const _module.LLNode.next: Field
uses {
axiom FDim(_module.LLNode.next) == 0
   && FieldOfDecl(class._module.LLNode?, field$next) == _module.LLNode.next
   && !$IsGhostField(_module.LLNode.next);
}

// LLNode.next: Type axiom
axiom (forall _module.LLNode$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.LLNode.next)): ref, Tclass._module.LLNode?(_module.LLNode$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.LLNode?(_module.LLNode$T)
     ==> $Is($Unbox(read($h, $o, _module.LLNode.next)): ref, 
      Tclass._module.LLNode?(_module.LLNode$T)));

// LLNode.next: Allocation axiom
axiom (forall _module.LLNode$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.LLNode.next)): ref, Tclass._module.LLNode?(_module.LLNode$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.LLNode?(_module.LLNode$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.LLNode.next)): ref, 
      Tclass._module.LLNode?(_module.LLNode$T), 
      $h));

const _module.LLNode.TailContents: Field
uses {
axiom FDim(_module.LLNode.TailContents) == 0
   && FieldOfDecl(class._module.LLNode?, field$TailContents)
     == _module.LLNode.TailContents
   && $IsGhostField(_module.LLNode.TailContents);
}

// LLNode.TailContents: Type axiom
axiom (forall _module.LLNode$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.LLNode.TailContents)): Seq, Tclass._module.LLNode?(_module.LLNode$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.LLNode?(_module.LLNode$T)
     ==> $Is($Unbox(read($h, $o, _module.LLNode.TailContents)): Seq, TSeq(_module.LLNode$T)));

// LLNode.TailContents: Allocation axiom
axiom (forall _module.LLNode$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.LLNode.TailContents)): Seq, Tclass._module.LLNode?(_module.LLNode$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.LLNode?(_module.LLNode$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.LLNode.TailContents)): Seq, 
      TSeq(_module.LLNode$T), 
      $h));

const _module.LLNode.Repr: Field
uses {
axiom FDim(_module.LLNode.Repr) == 0
   && FieldOfDecl(class._module.LLNode?, field$Repr) == _module.LLNode.Repr
   && $IsGhostField(_module.LLNode.Repr);
}

// LLNode.Repr: Type axiom
axiom (forall _module.LLNode$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.LLNode.Repr)): Set, Tclass._module.LLNode?(_module.LLNode$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.LLNode?(_module.LLNode$T)
     ==> $Is($Unbox(read($h, $o, _module.LLNode.Repr)): Set, TSet(Tclass._System.object())));

// LLNode.Repr: Allocation axiom
axiom (forall _module.LLNode$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.LLNode.Repr)): Set, Tclass._module.LLNode?(_module.LLNode$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.LLNode?(_module.LLNode$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.LLNode.Repr)): Set, 
      TSet(Tclass._System.object()), 
      $h));

// function declaration for _module.LLNode.IsWellFormed
function _module.LLNode.IsWellFormed(_module.LLNode$T: Ty, $ly: LayerType, $heap: Heap, this: ref) : bool
uses {
// definition axiom for _module.LLNode.IsWellFormed (revealed)
axiom {:id "id372"} 0 <= $FunctionContextHeight
   ==> (forall _module.LLNode$T: Ty, $ly: LayerType, $Heap: Heap, this: ref :: 
    { _module.LLNode.IsWellFormed(_module.LLNode$T, $LS($ly), $Heap, this), $IsGoodHeap($Heap) } 
    _module.LLNode.IsWellFormed#canCall(_module.LLNode$T, $Heap, this)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.LLNode(_module.LLNode$T))
           && $IsAlloc(this, Tclass._module.LLNode(_module.LLNode$T), $Heap))
       ==> (Set#IsMember($Unbox(read($Heap, this, _module.LLNode.Repr)): Set, $Box(this))
           ==> 
          ($Unbox(read($Heap, this, _module.LLNode.next)): ref == null
           ==> Seq#Equal($Unbox(read($Heap, this, _module.LLNode.TailContents)): Seq, Seq#Empty(): Seq))
           ==> 
          $Unbox(read($Heap, this, _module.LLNode.next)): ref != null
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.LLNode.Repr)): Set, 
            read($Heap, this, _module.LLNode.next))
           ==> 
          Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.LLNode.next)): ref, _module.LLNode.Repr)): Set, 
            $Unbox(read($Heap, this, _module.LLNode.Repr)): Set)
           ==> 
          !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.LLNode.next)): ref, _module.LLNode.Repr)): Set, 
            $Box(this))
           ==> _module.LLNode.IsWellFormed#canCall(_module.LLNode$T, $Heap, $Unbox(read($Heap, this, _module.LLNode.next)): ref))
         && _module.LLNode.IsWellFormed(_module.LLNode$T, $LS($ly), $Heap, this)
           == (
            Set#IsMember($Unbox(read($Heap, this, _module.LLNode.Repr)): Set, $Box(this))
             && ($Unbox(read($Heap, this, _module.LLNode.next)): ref == null
               ==> Seq#Equal($Unbox(read($Heap, this, _module.LLNode.TailContents)): Seq, Seq#Empty(): Seq))
             && ($Unbox(read($Heap, this, _module.LLNode.next)): ref != null
               ==> Set#IsMember($Unbox(read($Heap, this, _module.LLNode.Repr)): Set, 
                  read($Heap, this, _module.LLNode.next))
                 && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.LLNode.next)): ref, _module.LLNode.Repr)): Set, 
                  $Unbox(read($Heap, this, _module.LLNode.Repr)): Set)
                 && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.LLNode.next)): ref, _module.LLNode.Repr)): Set, 
                  $Box(this))
                 && _module.LLNode.IsWellFormed(_module.LLNode$T, 
                  $ly, 
                  $Heap, 
                  $Unbox(read($Heap, this, _module.LLNode.next)): ref)
                 && Seq#Equal($Unbox(read($Heap, this, _module.LLNode.TailContents)): Seq, 
                  Seq#Append(Seq#Build(Seq#Empty(): Seq, 
                      read($Heap, $Unbox(read($Heap, this, _module.LLNode.next)): ref, _module.LLNode.data)), 
                    $Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.LLNode.next)): ref, 
                        _module.LLNode.TailContents)): Seq)))));
}

function _module.LLNode.IsWellFormed#canCall(_module.LLNode$T: Ty, $heap: Heap, this: ref) : bool;

// layer synonym axiom
axiom (forall _module.LLNode$T: Ty, $ly: LayerType, $Heap: Heap, this: ref :: 
  { _module.LLNode.IsWellFormed(_module.LLNode$T, $LS($ly), $Heap, this) } 
  _module.LLNode.IsWellFormed(_module.LLNode$T, $LS($ly), $Heap, this)
     == _module.LLNode.IsWellFormed(_module.LLNode$T, $ly, $Heap, this));

// fuel synonym axiom
axiom (forall _module.LLNode$T: Ty, $ly: LayerType, $Heap: Heap, this: ref :: 
  { _module.LLNode.IsWellFormed(_module.LLNode$T, AsFuelBottom($ly), $Heap, this) } 
  _module.LLNode.IsWellFormed(_module.LLNode$T, $ly, $Heap, this)
     == _module.LLNode.IsWellFormed(_module.LLNode$T, $LZ, $Heap, this));

// frame axiom for _module.LLNode.IsWellFormed
axiom (forall _module.LLNode$T: Ty, $ly: LayerType, $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.LLNode.IsWellFormed(_module.LLNode$T, $ly, $h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.LLNode(_module.LLNode$T))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && ($o == this
             || Set#IsMember($Unbox(read($h0, this, _module.LLNode.Repr)): Set, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.LLNode.IsWellFormed(_module.LLNode$T, $ly, $h0, this)
       == _module.LLNode.IsWellFormed(_module.LLNode$T, $ly, $h1, this));

function _module.LLNode.IsWellFormed#requires(Ty, LayerType, Heap, ref) : bool;

// #requires axiom for _module.LLNode.IsWellFormed
axiom (forall _module.LLNode$T: Ty, $ly: LayerType, $Heap: Heap, this: ref :: 
  { _module.LLNode.IsWellFormed#requires(_module.LLNode$T, $ly, $Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.LLNode(_module.LLNode$T))
       && $IsAlloc(this, Tclass._module.LLNode(_module.LLNode$T), $Heap)
     ==> _module.LLNode.IsWellFormed#requires(_module.LLNode$T, $ly, $Heap, this) == true);

procedure {:verboseName "LLNode.IsWellFormed (well-formedness)"} CheckWellformed$$_module.LLNode.IsWellFormed(_module.LLNode$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.LLNode(_module.LLNode$T))
         && $IsAlloc(this, Tclass._module.LLNode(_module.LLNode$T), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "LLNode.IsWellFormed (well-formedness)"} CheckWellformed$$_module.LLNode.IsWellFormed(_module.LLNode$T: Ty, this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var newtype$check#0: ref;
  var newtype$check#1: ref;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;
  var b$reqreads#4: bool;
  var b$reqreads#5: bool;
  var b$reqreads#6: bool;
  var b$reqreads#7: bool;
  var b$reqreads#8: bool;
  var b$reqreads#9: bool;
  var b$reqreads#10: bool;
  var b$reqreads#11: bool;
  var b$reqreads#12: bool;
  var b$reqreads#13: bool;
  var b$reqreads#14: bool;
  var b$reqreads#15: bool;
  var b$reqreads#16: bool;
  var b$reqreads#17: bool;
  var b$reqreads#18: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;
    b$reqreads#4 := true;
    b$reqreads#5 := true;
    b$reqreads#6 := true;
    b$reqreads#7 := true;
    b$reqreads#8 := true;
    b$reqreads#9 := true;
    b$reqreads#10 := true;
    b$reqreads#11 := true;
    b$reqreads#12 := true;
    b$reqreads#13 := true;
    b$reqreads#14 := true;
    b$reqreads#15 := true;
    b$reqreads#16 := true;
    b$reqreads#17 := true;
    b$reqreads#18 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this
           || Set#IsMember($Unbox(read($Heap, this, _module.LLNode.Repr)): Set, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    b$reqreads#0 := $_ReadsFrame[this, _module.LLNode.Repr];
    assert {:id "id373"} b$reqreads#0;
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
        b$reqreads#1 := $_ReadsFrame[this, _module.LLNode.Repr];
        if (Set#IsMember($Unbox(read($Heap, this, _module.LLNode.Repr)): Set, $Box(this)))
        {
            b$reqreads#2 := $_ReadsFrame[this, _module.LLNode.next];
            newtype$check#0 := null;
            if ($Unbox(read($Heap, this, _module.LLNode.next)): ref == null)
            {
                b$reqreads#3 := $_ReadsFrame[this, _module.LLNode.TailContents];
            }
        }

        if (Set#IsMember($Unbox(read($Heap, this, _module.LLNode.Repr)): Set, $Box(this))
           && ($Unbox(read($Heap, this, _module.LLNode.next)): ref == null
             ==> Seq#Equal($Unbox(read($Heap, this, _module.LLNode.TailContents)): Seq, Seq#Empty(): Seq)))
        {
            b$reqreads#4 := $_ReadsFrame[this, _module.LLNode.next];
            newtype$check#1 := null;
            if ($Unbox(read($Heap, this, _module.LLNode.next)): ref != null)
            {
                b$reqreads#5 := $_ReadsFrame[this, _module.LLNode.next];
                b$reqreads#6 := $_ReadsFrame[this, _module.LLNode.Repr];
                if (Set#IsMember($Unbox(read($Heap, this, _module.LLNode.Repr)): Set, 
                  read($Heap, this, _module.LLNode.next)))
                {
                    b$reqreads#7 := $_ReadsFrame[this, _module.LLNode.next];
                    assert {:id "id374"} $Unbox(read($Heap, this, _module.LLNode.next)): ref != null;
                    b$reqreads#8 := $_ReadsFrame[$Unbox(read($Heap, this, _module.LLNode.next)): ref, _module.LLNode.Repr];
                    b$reqreads#9 := $_ReadsFrame[this, _module.LLNode.Repr];
                }

                if (Set#IsMember($Unbox(read($Heap, this, _module.LLNode.Repr)): Set, 
                    read($Heap, this, _module.LLNode.next))
                   && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.LLNode.next)): ref, _module.LLNode.Repr)): Set, 
                    $Unbox(read($Heap, this, _module.LLNode.Repr)): Set))
                {
                    b$reqreads#10 := $_ReadsFrame[this, _module.LLNode.next];
                    assert {:id "id375"} $Unbox(read($Heap, this, _module.LLNode.next)): ref != null;
                    b$reqreads#11 := $_ReadsFrame[$Unbox(read($Heap, this, _module.LLNode.next)): ref, _module.LLNode.Repr];
                }

                if (Set#IsMember($Unbox(read($Heap, this, _module.LLNode.Repr)): Set, 
                    read($Heap, this, _module.LLNode.next))
                   && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.LLNode.next)): ref, _module.LLNode.Repr)): Set, 
                    $Unbox(read($Heap, this, _module.LLNode.Repr)): Set)
                   && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.LLNode.next)): ref, _module.LLNode.Repr)): Set, 
                    $Box(this)))
                {
                    b$reqreads#12 := $_ReadsFrame[this, _module.LLNode.next];
                    assert {:id "id376"} $Unbox(read($Heap, this, _module.LLNode.next)): ref != null;
                    // assume allocatedness for receiver argument to function
                    assume $IsAllocBox(read($Heap, this, _module.LLNode.next), 
                      Tclass._module.LLNode?(_module.LLNode$T), 
                      $Heap);
                    b$reqreads#13 := (forall $o: ref, $f: Field :: 
                      $o != null
                           && $Unbox(read($Heap, $o, alloc)): bool
                           && ($o == $Unbox(read($Heap, this, _module.LLNode.next)): ref
                             || Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.LLNode.next)): ref, _module.LLNode.Repr)): Set, 
                              $Box($o)))
                         ==> $_ReadsFrame[$o, $f]);
                    assert {:id "id377"} Set#Subset(Set#Union($Unbox(read($Heap, $Unbox(read($Heap, this, _module.LLNode.next)): ref, _module.LLNode.Repr)): Set, 
                          Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.LLNode.next))), 
                        Set#Union($Unbox(read($Heap, this, _module.LLNode.Repr)): Set, 
                          Set#UnionOne(Set#Empty(): Set, $Box(this))))
                       && !Set#Subset(Set#Union($Unbox(read($Heap, this, _module.LLNode.Repr)): Set, 
                          Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                        Set#Union($Unbox(read($Heap, $Unbox(read($Heap, this, _module.LLNode.next)): ref, _module.LLNode.Repr)): Set, 
                          Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.LLNode.next))));
                    assume _module.LLNode.IsWellFormed#canCall(_module.LLNode$T, $Heap, $Unbox(read($Heap, this, _module.LLNode.next)): ref);
                }

                if (Set#IsMember($Unbox(read($Heap, this, _module.LLNode.Repr)): Set, 
                    read($Heap, this, _module.LLNode.next))
                   && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.LLNode.next)): ref, _module.LLNode.Repr)): Set, 
                    $Unbox(read($Heap, this, _module.LLNode.Repr)): Set)
                   && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.LLNode.next)): ref, _module.LLNode.Repr)): Set, 
                    $Box(this))
                   && _module.LLNode.IsWellFormed(_module.LLNode$T, 
                    $LS($LZ), 
                    $Heap, 
                    $Unbox(read($Heap, this, _module.LLNode.next)): ref))
                {
                    b$reqreads#14 := $_ReadsFrame[this, _module.LLNode.TailContents];
                    b$reqreads#15 := $_ReadsFrame[this, _module.LLNode.next];
                    assert {:id "id378"} $Unbox(read($Heap, this, _module.LLNode.next)): ref != null;
                    b$reqreads#16 := $_ReadsFrame[$Unbox(read($Heap, this, _module.LLNode.next)): ref, _module.LLNode.data];
                    b$reqreads#17 := $_ReadsFrame[this, _module.LLNode.next];
                    assert {:id "id379"} $Unbox(read($Heap, this, _module.LLNode.next)): ref != null;
                    b$reqreads#18 := $_ReadsFrame[$Unbox(read($Heap, this, _module.LLNode.next)): ref, _module.LLNode.TailContents];
                }
            }
        }

        assume {:id "id380"} _module.LLNode.IsWellFormed(_module.LLNode$T, $LS($LZ), $Heap, this)
           == (
            Set#IsMember($Unbox(read($Heap, this, _module.LLNode.Repr)): Set, $Box(this))
             && ($Unbox(read($Heap, this, _module.LLNode.next)): ref == null
               ==> Seq#Equal($Unbox(read($Heap, this, _module.LLNode.TailContents)): Seq, Seq#Empty(): Seq))
             && ($Unbox(read($Heap, this, _module.LLNode.next)): ref != null
               ==> Set#IsMember($Unbox(read($Heap, this, _module.LLNode.Repr)): Set, 
                  read($Heap, this, _module.LLNode.next))
                 && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.LLNode.next)): ref, _module.LLNode.Repr)): Set, 
                  $Unbox(read($Heap, this, _module.LLNode.Repr)): Set)
                 && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.LLNode.next)): ref, _module.LLNode.Repr)): Set, 
                  $Box(this))
                 && _module.LLNode.IsWellFormed(_module.LLNode$T, 
                  $LS($LZ), 
                  $Heap, 
                  $Unbox(read($Heap, this, _module.LLNode.next)): ref)
                 && Seq#Equal($Unbox(read($Heap, this, _module.LLNode.TailContents)): Seq, 
                  Seq#Append(Seq#Build(Seq#Empty(): Seq, 
                      read($Heap, $Unbox(read($Heap, this, _module.LLNode.next)): ref, _module.LLNode.data)), 
                    $Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.LLNode.next)): ref, 
                        _module.LLNode.TailContents)): Seq))));
        assume Set#IsMember($Unbox(read($Heap, this, _module.LLNode.Repr)): Set, $Box(this))
           ==> 
          ($Unbox(read($Heap, this, _module.LLNode.next)): ref == null
           ==> Seq#Equal($Unbox(read($Heap, this, _module.LLNode.TailContents)): Seq, Seq#Empty(): Seq))
           ==> 
          $Unbox(read($Heap, this, _module.LLNode.next)): ref != null
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.LLNode.Repr)): Set, 
            read($Heap, this, _module.LLNode.next))
           ==> 
          Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.LLNode.next)): ref, _module.LLNode.Repr)): Set, 
            $Unbox(read($Heap, this, _module.LLNode.Repr)): Set)
           ==> 
          !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.LLNode.next)): ref, _module.LLNode.Repr)): Set, 
            $Box(this))
           ==> _module.LLNode.IsWellFormed#canCall(_module.LLNode$T, $Heap, $Unbox(read($Heap, this, _module.LLNode.next)): ref);
        // CheckWellformedWithResult: any expression
        assume $Is(_module.LLNode.IsWellFormed(_module.LLNode$T, $LS($LZ), $Heap, this), TBool);
        assert {:id "id381"} b$reqreads#1;
        assert {:id "id382"} b$reqreads#2;
        assert {:id "id383"} b$reqreads#3;
        assert {:id "id384"} b$reqreads#4;
        assert {:id "id385"} b$reqreads#5;
        assert {:id "id386"} b$reqreads#6;
        assert {:id "id387"} b$reqreads#7;
        assert {:id "id388"} b$reqreads#8;
        assert {:id "id389"} b$reqreads#9;
        assert {:id "id390"} b$reqreads#10;
        assert {:id "id391"} b$reqreads#11;
        assert {:id "id392"} b$reqreads#12;
        assert {:id "id393"} b$reqreads#13;
        assert {:id "id394"} b$reqreads#14;
        assert {:id "id395"} b$reqreads#15;
        assert {:id "id396"} b$reqreads#16;
        assert {:id "id397"} b$reqreads#17;
        assert {:id "id398"} b$reqreads#18;
        return;

        assume false;
    }
}



// $Is axiom for non-null type _module.LLNode
axiom (forall _module.LLNode$T: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._module.LLNode(_module.LLNode$T)) } 
    { $Is(c#0, Tclass._module.LLNode?(_module.LLNode$T)) } 
  $Is(c#0, Tclass._module.LLNode(_module.LLNode$T))
     <==> $Is(c#0, Tclass._module.LLNode?(_module.LLNode$T)) && c#0 != null);

// $IsAlloc axiom for non-null type _module.LLNode
axiom (forall _module.LLNode$T: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.LLNode(_module.LLNode$T), $h) } 
    { $IsAlloc(c#0, Tclass._module.LLNode?(_module.LLNode$T), $h) } 
  $IsAlloc(c#0, Tclass._module.LLNode(_module.LLNode$T), $h)
     <==> $IsAlloc(c#0, Tclass._module.LLNode?(_module.LLNode$T), $h));

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

const unique tytagFamily$_#Func4: TyTagFamily;

const unique tytagFamily$_#PartialFunc4: TyTagFamily;

const unique tytagFamily$_#TotalFunc4: TyTagFamily;

const unique tytagFamily$Node: TyTagFamily;

const unique tytagFamily$ListNode: TyTagFamily;

const unique tytagFamily$List: TyTagFamily;

const unique tytagFamily$LLNode: TyTagFamily;

const unique field$data: NameFamily;

const unique field$next: NameFamily;

const unique field$Contents: NameFamily;

const unique field$Repr: NameFamily;

const unique field$head: NameFamily;

const unique field$TailContents: NameFamily;
