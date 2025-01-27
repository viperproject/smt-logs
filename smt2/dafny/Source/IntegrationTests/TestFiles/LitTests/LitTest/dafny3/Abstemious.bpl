// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious-@PROC@.smt2 /normalizeNames:0 /emitDebugInformation:1 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy

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

function Tclass._System.___hFunc3(Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hFunc3: TyTag;

// Tclass._System.___hFunc3 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tag(Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
       == Tagclass._System.___hFunc3
     && TagFamily(Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
       == tytagFamily$_#Func3);

function Tclass._System.___hFunc3_0(Ty) : Ty;

// Tclass._System.___hFunc3 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hFunc3_0(Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T0);

function Tclass._System.___hFunc3_1(Ty) : Ty;

// Tclass._System.___hFunc3 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hFunc3_1(Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T1);

function Tclass._System.___hFunc3_2(Ty) : Ty;

// Tclass._System.___hFunc3 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hFunc3_2(Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T2);

function Tclass._System.___hFunc3_3(Ty) : Ty;

// Tclass._System.___hFunc3 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hFunc3_3(Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R)) } 
  $IsBox(bx, Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R)));

function Handle3([Heap,Box,Box,Box]Box, [Heap,Box,Box,Box]bool, [Heap,Box,Box,Box]Set)
   : HandleType;

function Apply3(Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box) : Box;

function Requires3(Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box) : bool;

function Reads3(Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box) : Set;

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { Apply3(t0, t1, t2, t3, heap, Handle3(h, r, rd), bx0, bx1, bx2) } 
  Apply3(t0, t1, t2, t3, heap, Handle3(h, r, rd), bx0, bx1, bx2)
     == h[heap, bx0, bx1, bx2]);

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { Requires3(t0, t1, t2, t3, heap, Handle3(h, r, rd), bx0, bx1, bx2) } 
  r[heap, bx0, bx1, bx2]
     ==> Requires3(t0, t1, t2, t3, heap, Handle3(h, r, rd), bx0, bx1, bx2));

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx: Box :: 
  { Set#IsMember(Reads3(t0, t1, t2, t3, heap, Handle3(h, r, rd), bx0, bx1, bx2), bx) } 
  Set#IsMember(Reads3(t0, t1, t2, t3, heap, Handle3(h, r, rd), bx0, bx1, bx2), bx)
     == Set#IsMember(rd[heap, bx0, bx1, bx2], bx));

function {:inline} Requires3#canCall(t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box)
   : bool
{
  true
}

function {:inline} Reads3#canCall(t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box)
   : bool
{
  true
}

// frame axiom for Reads3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { $HeapSucc(h0, h1), Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2)
       == Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2));

// frame axiom for Reads3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { $HeapSucc(h0, h1), Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2)
       == Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2));

// frame axiom for Requires3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { $HeapSucc(h0, h1), Requires3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2)
       == Requires3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2));

// frame axiom for Requires3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { $HeapSucc(h0, h1), Requires3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2)
       == Requires3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2));

// frame axiom for Apply3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { $HeapSucc(h0, h1), Apply3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2)
       == Apply3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2));

// frame axiom for Apply3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { $HeapSucc(h0, h1), Apply3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2)
       == Apply3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2));

// empty-reads property for Reads3 
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { Reads3(t0, t1, t2, t3, $OneHeap, f, bx0, bx1, bx2), $IsGoodHeap(heap) } 
    { Reads3(t0, t1, t2, t3, heap, f, bx0, bx1, bx2) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
     ==> (Set#Equal(Reads3(t0, t1, t2, t3, $OneHeap, f, bx0, bx1, bx2), Set#Empty(): Set)
       <==> Set#Equal(Reads3(t0, t1, t2, t3, heap, f, bx0, bx1, bx2), Set#Empty(): Set)));

// empty-reads property for Requires3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { Requires3(t0, t1, t2, t3, $OneHeap, f, bx0, bx1, bx2), $IsGoodHeap(heap) } 
    { Requires3(t0, t1, t2, t3, heap, f, bx0, bx1, bx2) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && Set#Equal(Reads3(t0, t1, t2, t3, $OneHeap, f, bx0, bx1, bx2), Set#Empty(): Set)
     ==> Requires3(t0, t1, t2, t3, $OneHeap, f, bx0, bx1, bx2)
       == Requires3(t0, t1, t2, t3, heap, f, bx0, bx1, bx2));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty :: 
  { $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3)) } 
  $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
     <==> (forall h: Heap, bx0: Box, bx1: Box, bx2: Box :: 
      { Apply3(t0, t1, t2, t3, h, f, bx0, bx1, bx2) } 
      $IsGoodHeap(h)
           && 
          $IsBox(bx0, t0)
           && $IsBox(bx1, t1)
           && $IsBox(bx2, t2)
           && Requires3(t0, t1, t2, t3, h, f, bx0, bx1, bx2)
         ==> $IsBox(Apply3(t0, t1, t2, t3, h, f, bx0, bx1, bx2), t3)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, u0: Ty, u1: Ty, u2: Ty, u3: Ty :: 
  { $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3)), $Is(f, Tclass._System.___hFunc3(u0, u1, u2, u3)) } 
  $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
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
        { $IsBox(bx, t3) } { $IsBox(bx, u3) } 
        $IsBox(bx, t3) ==> $IsBox(bx, u3))
     ==> $Is(f, Tclass._System.___hFunc3(u0, u1, u2, u3)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc3(t0, t1, t2, t3), h) } 
  $IsGoodHeap(h)
     ==> ($IsAlloc(f, Tclass._System.___hFunc3(t0, t1, t2, t3), h)
       <==> (forall bx0: Box, bx1: Box, bx2: Box :: 
        { Apply3(t0, t1, t2, t3, h, f, bx0, bx1, bx2) } 
          { Reads3(t0, t1, t2, t3, h, f, bx0, bx1, bx2) } 
        $IsBox(bx0, t0)
             && $IsAllocBox(bx0, t0, h)
             && 
            $IsBox(bx1, t1)
             && $IsAllocBox(bx1, t1, h)
             && 
            $IsBox(bx2, t2)
             && $IsAllocBox(bx2, t2, h)
             && Requires3(t0, t1, t2, t3, h, f, bx0, bx1, bx2)
           ==> (forall r: ref :: 
            { Set#IsMember(Reads3(t0, t1, t2, t3, h, f, bx0, bx1, bx2), $Box(r)) } 
            r != null && Set#IsMember(Reads3(t0, t1, t2, t3, h, f, bx0, bx1, bx2), $Box(r))
               ==> $Unbox(read(h, r, alloc)): bool))));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc3(t0, t1, t2, t3), h) } 
  $IsGoodHeap(h) && $IsAlloc(f, Tclass._System.___hFunc3(t0, t1, t2, t3), h)
     ==> (forall bx0: Box, bx1: Box, bx2: Box :: 
      { Apply3(t0, t1, t2, t3, h, f, bx0, bx1, bx2) } 
      $IsAllocBox(bx0, t0, h)
           && $IsAllocBox(bx1, t1, h)
           && $IsAllocBox(bx2, t2, h)
           && Requires3(t0, t1, t2, t3, h, f, bx0, bx1, bx2)
         ==> $IsAllocBox(Apply3(t0, t1, t2, t3, h, f, bx0, bx1, bx2), t3, h)));

function Tclass._System.___hPartialFunc3(Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hPartialFunc3: TyTag;

// Tclass._System.___hPartialFunc3 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tag(Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
       == Tagclass._System.___hPartialFunc3
     && TagFamily(Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
       == tytagFamily$_#PartialFunc3);

function Tclass._System.___hPartialFunc3_0(Ty) : Ty;

// Tclass._System.___hPartialFunc3 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hPartialFunc3_0(Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T0);

function Tclass._System.___hPartialFunc3_1(Ty) : Ty;

// Tclass._System.___hPartialFunc3 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hPartialFunc3_1(Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T1);

function Tclass._System.___hPartialFunc3_2(Ty) : Ty;

// Tclass._System.___hPartialFunc3 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hPartialFunc3_2(Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T2);

function Tclass._System.___hPartialFunc3_3(Ty) : Ty;

// Tclass._System.___hPartialFunc3 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hPartialFunc3_3(Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hPartialFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R)) } 
  $IsBox(bx, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R)));

// $Is axiom for subset type _System._#PartialFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R)) } 
  $Is(f#0, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
     <==> $Is(f#0, Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
       && (forall x0#0: Box, x1#0: Box, x2#0: Box :: 
        $IsBox(x0#0, #$T0) && $IsBox(x1#0, #$T1) && $IsBox(x2#0, #$T2)
           ==> Set#Equal(Reads3(#$T0, #$T1, #$T2, #$R, $OneHeap, f#0, x0#0, x1#0, x2#0), Set#Empty(): Set)));

// $IsAlloc axiom for subset type _System._#PartialFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R), $h));

function Tclass._System.___hTotalFunc3(Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hTotalFunc3: TyTag;

// Tclass._System.___hTotalFunc3 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tag(Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
       == Tagclass._System.___hTotalFunc3
     && TagFamily(Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
       == tytagFamily$_#TotalFunc3);

function Tclass._System.___hTotalFunc3_0(Ty) : Ty;

// Tclass._System.___hTotalFunc3 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hTotalFunc3_0(Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T0);

function Tclass._System.___hTotalFunc3_1(Ty) : Ty;

// Tclass._System.___hTotalFunc3 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hTotalFunc3_1(Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T1);

function Tclass._System.___hTotalFunc3_2(Ty) : Ty;

// Tclass._System.___hTotalFunc3 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hTotalFunc3_2(Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T2);

function Tclass._System.___hTotalFunc3_3(Ty) : Ty;

// Tclass._System.___hTotalFunc3 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hTotalFunc3_3(Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hTotalFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R)) } 
  $IsBox(bx, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R)));

// $Is axiom for subset type _System._#TotalFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R)) } 
  $Is(f#0, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
     <==> $Is(f#0, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
       && (forall x0#0: Box, x1#0: Box, x2#0: Box :: 
        $IsBox(x0#0, #$T0) && $IsBox(x1#0, #$T1) && $IsBox(x2#0, #$T2)
           ==> Requires3(#$T0, #$T1, #$T2, #$R, $OneHeap, f#0, x0#0, x1#0, x2#0)));

// $IsAlloc axiom for subset type _System._#TotalFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R), $h));

const unique class._module.__default: ClassName;

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



function _module.__default.plus1#Handle() : HandleType;

// function declaration for _module._default.plus1
function _module.__default.plus1(x#0: int) : int
uses {
// definition axiom for _module.__default.plus1 (revealed)
axiom {:id "id51"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int :: 
    { _module.__default.plus1(x#0) } 
    _module.__default.plus1#canCall(x#0) || 0 < $FunctionContextHeight
       ==> _module.__default.plus1(x#0) == x#0 + 1);
// definition axiom for _module.__default.plus1 for all literals (revealed)
axiom {:id "id52"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int :: 
    {:weight 3} { _module.__default.plus1(LitInt(x#0)) } 
    _module.__default.plus1#canCall(LitInt(x#0)) || 0 < $FunctionContextHeight
       ==> _module.__default.plus1(LitInt(x#0)) == LitInt(x#0 + 1));
}

function _module.__default.plus1#canCall(x#0: int) : bool;

axiom (forall $heap: Heap, $fh$0x#0: Box :: 
  { Apply1(TInt, TInt, $heap, _module.__default.plus1#Handle(), $fh$0x#0) } 
  Apply1(TInt, TInt, $heap, _module.__default.plus1#Handle(), $fh$0x#0)
     == $Box(_module.__default.plus1($Unbox($fh$0x#0): int)));

axiom (forall $heap: Heap, $fh$0x#0: Box :: 
  { Requires1(TInt, TInt, $heap, _module.__default.plus1#Handle(), $fh$0x#0) } 
  Requires1(TInt, TInt, $heap, _module.__default.plus1#Handle(), $fh$0x#0)
     == _module.__default.plus1#requires($Unbox($fh$0x#0): int));

axiom (forall $bx: Box, $heap: Heap, $fh$0x#0: Box :: 
  { Set#IsMember(Reads1(TInt, TInt, $heap, _module.__default.plus1#Handle(), $fh$0x#0), $bx) } 
  Set#IsMember(Reads1(TInt, TInt, $heap, _module.__default.plus1#Handle(), $fh$0x#0), $bx)
     == false);

axiom (forall $heap: Heap, $fh$0x#0: int :: 
  { _module.__default.plus1($fh$0x#0), $IsGoodHeap($heap) } 
  _module.__default.plus1($fh$0x#0)
     == $Unbox(Apply1(TInt, TInt, $heap, _module.__default.plus1#Handle(), $Box($fh$0x#0))): int);

function Tclass._module.Stream(Ty) : Ty;

const unique Tagclass._module.Stream: TyTag;

// Tclass._module.Stream Tag
axiom (forall _module.Stream$T: Ty :: 
  { Tclass._module.Stream(_module.Stream$T) } 
  Tag(Tclass._module.Stream(_module.Stream$T)) == Tagclass._module.Stream
     && TagFamily(Tclass._module.Stream(_module.Stream$T)) == tytagFamily$Stream);

function Tclass._module.Stream_0(Ty) : Ty;

// Tclass._module.Stream injectivity 0
axiom (forall _module.Stream$T: Ty :: 
  { Tclass._module.Stream(_module.Stream$T) } 
  Tclass._module.Stream_0(Tclass._module.Stream(_module.Stream$T))
     == _module.Stream$T);

// Box/unbox axiom for Tclass._module.Stream
axiom (forall _module.Stream$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Stream(_module.Stream$T)) } 
  $IsBox(bx, Tclass._module.Stream(_module.Stream$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Stream(_module.Stream$T)));

function _module.__default.plus#Handle() : HandleType;

// function declaration for _module._default.plus
function _module.__default.plus(x#0: int, y#0: int) : int
uses {
// definition axiom for _module.__default.plus (revealed)
axiom {:id "id54"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int, y#0: int :: 
    { _module.__default.plus(x#0, y#0) } 
    _module.__default.plus#canCall(x#0, y#0) || 0 < $FunctionContextHeight
       ==> _module.__default.plus(x#0, y#0) == x#0 + y#0);
// definition axiom for _module.__default.plus for all literals (revealed)
axiom {:id "id55"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int, y#0: int :: 
    {:weight 3} { _module.__default.plus(LitInt(x#0), LitInt(y#0)) } 
    _module.__default.plus#canCall(LitInt(x#0), LitInt(y#0))
         || 0 < $FunctionContextHeight
       ==> _module.__default.plus(LitInt(x#0), LitInt(y#0)) == LitInt(x#0 + y#0));
}

function _module.__default.plus#canCall(x#0: int, y#0: int) : bool;

axiom (forall $heap: Heap, $fh$0x#0: Box, $fh$0x#1: Box :: 
  { Apply2(TInt, TInt, TInt, $heap, _module.__default.plus#Handle(), $fh$0x#0, $fh$0x#1) } 
  Apply2(TInt, TInt, TInt, $heap, _module.__default.plus#Handle(), $fh$0x#0, $fh$0x#1)
     == $Box(_module.__default.plus($Unbox($fh$0x#0): int, $Unbox($fh$0x#1): int)));

axiom (forall $heap: Heap, $fh$0x#0: Box, $fh$0x#1: Box :: 
  { Requires2(TInt, TInt, TInt, $heap, _module.__default.plus#Handle(), $fh$0x#0, $fh$0x#1) } 
  Requires2(TInt, TInt, TInt, $heap, _module.__default.plus#Handle(), $fh$0x#0, $fh$0x#1)
     == _module.__default.plus#requires($Unbox($fh$0x#0): int, $Unbox($fh$0x#1): int));

axiom (forall $bx: Box, $heap: Heap, $fh$0x#0: Box, $fh$0x#1: Box :: 
  { Set#IsMember(Reads2(TInt, TInt, TInt, $heap, _module.__default.plus#Handle(), $fh$0x#0, $fh$0x#1), 
      $bx) } 
  Set#IsMember(Reads2(TInt, TInt, TInt, $heap, _module.__default.plus#Handle(), $fh$0x#0, $fh$0x#1), 
      $bx)
     == false);

axiom (forall $heap: Heap, $fh$0x#0: int, $fh$0x#1: int :: 
  { _module.__default.plus($fh$0x#0, $fh$0x#1), $IsGoodHeap($heap) } 
  _module.__default.plus($fh$0x#0, $fh$0x#1)
     == $Unbox(Apply2(TInt, 
        TInt, 
        TInt, 
        $heap, 
        _module.__default.plus#Handle(), 
        $Box($fh$0x#0), 
        $Box($fh$0x#1))): int);

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Main (correctness)"} Impl$$_module.__default.Main() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var n#0: int;
  var n##0: int;
  var msg##0: Seq;
  var s##0: DatatypeType;
  var n##1: int;
  var msg##1: Seq;
  var s##1: DatatypeType;
  var ##n#0: int;
  var n##2: int;
  var msg##2: Seq;
  var s##2: DatatypeType;
  var ##f#0: HandleType;
  var ##s#0: DatatypeType;
  var n##3: int;
  var msg##3: Seq;
  var s##3: DatatypeType;
  var ##f#1: HandleType;
  var ##s#1: DatatypeType;
  var ##n#1: int;
  var n##4: int;
  var msg##4: Seq;
  var s##4: DatatypeType;
  var msg##5: Seq;
  var s##5: DatatypeType;
  var ##n#2: int;
  var ##s#2: DatatypeType;
  var ##n#3: int;
  var n##5: int;
  var msg##6: Seq;
  var s##6: DatatypeType;
  var ##a#0: DatatypeType;
  var ##b#0: DatatypeType;
  var ##n#4: int;
  var n##6: int;
  var msg##7: Seq;
  var s##7: DatatypeType;
  var ##a#1: DatatypeType;
  var ##a#2: DatatypeType;
  var ##b#1: DatatypeType;
  var ##n#5: int;
  var n##7: int;
  var msg##8: Seq;
  var s##8: DatatypeType;
  var n##8: int;
  var msg##9: Seq;
  var s##9: DatatypeType;
  var ##a#3: DatatypeType;
  var ##b#2: DatatypeType;
  var ##n#6: int;
  var n##9: int;
  var msg##10: Seq;
  var s##10: DatatypeType;
  var n##10: int;
  var msg##11: Seq;
  var s##11: DatatypeType;
  var n##11: int;
  var msg##12: Seq;
  var s##12: DatatypeType;
  var n##12: int;
  var msg##13: Seq;
  var s##13: DatatypeType;
  var n##13: int;
  var msg##14: Seq;
  var s##14: DatatypeType;
  var ##f#2: HandleType;
  var ##a#4: DatatypeType;
  var ##b#3: DatatypeType;
  var ##n#7: int;

    // AddMethodImpl: Main, Impl$$_module.__default.Main
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(7,9)
    assume true;
    assume true;
    n#0 := LitInt(7);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(8,8)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id1"} $Is(n#0, Tclass._System.nat());
    n##0 := n#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    msg##0 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(111))), $Box(char#FromInt(110))), 
              $Box(char#FromInt(101))), 
            $Box(char#FromInt(115))), 
          $Box(char#FromInt(40))), 
        $Box(char#FromInt(41))));
    assume _module.__default.ones#canCall();
    assume _module.Stream.Cons_q(Lit(_module.__default.ones($LS($LZ))));
    assume _module.__default.ones#canCall();
    // ProcessCallStmt: CheckSubrange
    s##0 := Lit(_module.__default.ones($LS($LZ)));
    call {:id "id2"} Call$$_module.__default.Print(TInt, n##0, msg##0, s##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(9,8)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id3"} $Is(n#0, Tclass._System.nat());
    n##1 := n#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    msg##1 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(102))), $Box(char#FromInt(114))), 
                $Box(char#FromInt(111))), 
              $Box(char#FromInt(109))), 
            $Box(char#FromInt(40))), 
          $Box(char#FromInt(51))), 
        $Box(char#FromInt(41))));
    ##n#0 := LitInt(3);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#0, TInt, $Heap);
    assume _module.__default.from#canCall(LitInt(3));
    assume _module.Stream.Cons_q(Lit(_module.__default.from($LS($LZ), LitInt(3))));
    assume _module.__default.from#canCall(LitInt(3));
    // ProcessCallStmt: CheckSubrange
    s##1 := Lit(_module.__default.from($LS($LZ), LitInt(3)));
    call {:id "id4"} Call$$_module.__default.Print(TInt, n##1, msg##1, s##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(10,8)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id5"} $Is(n#0, Tclass._System.nat());
    n##2 := n#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    msg##2 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(77))), $Box(char#FromInt(97))), 
                                      $Box(char#FromInt(112))), 
                                    $Box(char#FromInt(40))), 
                                  $Box(char#FromInt(112))), 
                                $Box(char#FromInt(108))), 
                              $Box(char#FromInt(117))), 
                            $Box(char#FromInt(115))), 
                          $Box(char#FromInt(49))), 
                        $Box(char#FromInt(44))), 
                      $Box(char#FromInt(32))), 
                    $Box(char#FromInt(111))), 
                  $Box(char#FromInt(110))), 
                $Box(char#FromInt(101))), 
              $Box(char#FromInt(115))), 
            $Box(char#FromInt(40))), 
          $Box(char#FromInt(41))), 
        $Box(char#FromInt(41))));
    assert {:id "id6"} 0 != $FunctionContextHeight;
    ##f#0 := _module.__default.plus1#Handle();
    // assume allocatedness for argument to function
    assume $IsAlloc(##f#0, Tclass._System.___hTotalFunc1(TInt, TInt), $Heap);
    assume _module.__default.ones#canCall();
    assume _module.Stream.Cons_q(Lit(_module.__default.ones($LS($LZ))));
    ##s#0 := Lit(_module.__default.ones($LS($LZ)));
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#0, Tclass._module.Stream(TInt), $Heap);
    assume _module.__default.Map#canCall(TInt, 
      TInt, 
      _module.__default.plus1#Handle(), 
      Lit(_module.__default.ones($LS($LZ))));
    assume _module.Stream.Cons_q(_module.__default.Map(TInt, 
        TInt, 
        $LS($LZ), 
        _module.__default.plus1#Handle(), 
        Lit(_module.__default.ones($LS($LZ)))));
    assume _module.__default.ones#canCall()
       && _module.__default.Map#canCall(TInt, 
        TInt, 
        _module.__default.plus1#Handle(), 
        Lit(_module.__default.ones($LS($LZ))));
    // ProcessCallStmt: CheckSubrange
    s##2 := _module.__default.Map(TInt, 
      TInt, 
      $LS($LZ), 
      _module.__default.plus1#Handle(), 
      Lit(_module.__default.ones($LS($LZ))));
    call {:id "id7"} Call$$_module.__default.Print(TInt, n##2, msg##2, s##2);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(11,8)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id8"} $Is(n#0, Tclass._System.nat());
    n##3 := n#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    msg##3 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(77))), $Box(char#FromInt(97))), 
                                        $Box(char#FromInt(112))), 
                                      $Box(char#FromInt(40))), 
                                    $Box(char#FromInt(112))), 
                                  $Box(char#FromInt(108))), 
                                $Box(char#FromInt(117))), 
                              $Box(char#FromInt(115))), 
                            $Box(char#FromInt(49))), 
                          $Box(char#FromInt(44))), 
                        $Box(char#FromInt(32))), 
                      $Box(char#FromInt(102))), 
                    $Box(char#FromInt(114))), 
                  $Box(char#FromInt(111))), 
                $Box(char#FromInt(109))), 
              $Box(char#FromInt(40))), 
            $Box(char#FromInt(51))), 
          $Box(char#FromInt(41))), 
        $Box(char#FromInt(41))));
    assert {:id "id9"} 0 != $FunctionContextHeight;
    ##f#1 := _module.__default.plus1#Handle();
    // assume allocatedness for argument to function
    assume $IsAlloc(##f#1, Tclass._System.___hTotalFunc1(TInt, TInt), $Heap);
    ##n#1 := LitInt(3);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#1, TInt, $Heap);
    assume _module.__default.from#canCall(LitInt(3));
    assume _module.Stream.Cons_q(Lit(_module.__default.from($LS($LZ), LitInt(3))));
    ##s#1 := Lit(_module.__default.from($LS($LZ), LitInt(3)));
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#1, Tclass._module.Stream(TInt), $Heap);
    assume _module.__default.Map#canCall(TInt, 
      TInt, 
      _module.__default.plus1#Handle(), 
      Lit(_module.__default.from($LS($LZ), LitInt(3))));
    assume _module.Stream.Cons_q(_module.__default.Map(TInt, 
        TInt, 
        $LS($LZ), 
        _module.__default.plus1#Handle(), 
        Lit(_module.__default.from($LS($LZ), LitInt(3)))));
    assume _module.__default.from#canCall(LitInt(3))
       && _module.__default.Map#canCall(TInt, 
        TInt, 
        _module.__default.plus1#Handle(), 
        Lit(_module.__default.from($LS($LZ), LitInt(3))));
    // ProcessCallStmt: CheckSubrange
    s##3 := _module.__default.Map(TInt, 
      TInt, 
      $LS($LZ), 
      _module.__default.plus1#Handle(), 
      Lit(_module.__default.from($LS($LZ), LitInt(3))));
    call {:id "id10"} Call$$_module.__default.Print(TInt, n##3, msg##3, s##3);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(12,8)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id11"} $Is(n#0, Tclass._System.nat());
    n##4 := n#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    msg##4 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(115))), $Box(char#FromInt(113))), 
                    $Box(char#FromInt(117))), 
                  $Box(char#FromInt(97))), 
                $Box(char#FromInt(114))), 
              $Box(char#FromInt(101))), 
            $Box(char#FromInt(115))), 
          $Box(char#FromInt(40))), 
        $Box(char#FromInt(41))));
    assume _module.__default.squares#canCall();
    assume _module.Stream.Cons_q(Lit(_module.__default.squares()));
    assume _module.__default.squares#canCall();
    // ProcessCallStmt: CheckSubrange
    s##4 := Lit(_module.__default.squares());
    call {:id "id12"} Call$$_module.__default.Print(TInt, n##4, msg##4, s##4);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(13,12)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    msg##5 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(116))), $Box(char#FromInt(97))), 
                                  $Box(char#FromInt(107))), 
                                $Box(char#FromInt(101))), 
                              $Box(char#FromInt(40))), 
                            $Box(char#FromInt(53))), 
                          $Box(char#FromInt(44))), 
                        $Box(char#FromInt(32))), 
                      $Box(char#FromInt(102))), 
                    $Box(char#FromInt(114))), 
                  $Box(char#FromInt(111))), 
                $Box(char#FromInt(109))), 
              $Box(char#FromInt(40))), 
            $Box(char#FromInt(51))), 
          $Box(char#FromInt(41))), 
        $Box(char#FromInt(41))));
    assert {:id "id13"} $Is(LitInt(5), Tclass._System.nat());
    ##n#2 := LitInt(5);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#2, Tclass._System.nat(), $Heap);
    ##n#3 := LitInt(3);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#3, TInt, $Heap);
    assume _module.__default.from#canCall(LitInt(3));
    assume _module.Stream.Cons_q(Lit(_module.__default.from($LS($LZ), LitInt(3))));
    ##s#2 := Lit(_module.__default.from($LS($LZ), LitInt(3)));
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#2, Tclass._module.Stream(TInt), $Heap);
    assume _module.__default.take#canCall(TInt, LitInt(5), Lit(_module.__default.from($LS($LZ), LitInt(3))));
    assume _module.__default.from#canCall(LitInt(3))
       && _module.__default.take#canCall(TInt, LitInt(5), Lit(_module.__default.from($LS($LZ), LitInt(3))));
    // ProcessCallStmt: CheckSubrange
    s##5 := Lit(_module.__default.take(TInt, $LS($LZ), LitInt(5), Lit(_module.__default.from($LS($LZ), LitInt(3)))));
    call {:id "id14"} Call$$_module.__default.PrintList(TInt, msg##5, s##5);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(14,8)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id15"} $Is(n#0, Tclass._System.nat());
    n##5 := n#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    msg##6 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(122))), $Box(char#FromInt(105))), 
                                        $Box(char#FromInt(112))), 
                                      $Box(char#FromInt(40))), 
                                    $Box(char#FromInt(111))), 
                                  $Box(char#FromInt(110))), 
                                $Box(char#FromInt(101))), 
                              $Box(char#FromInt(115))), 
                            $Box(char#FromInt(40))), 
                          $Box(char#FromInt(41))), 
                        $Box(char#FromInt(44))), 
                      $Box(char#FromInt(32))), 
                    $Box(char#FromInt(102))), 
                  $Box(char#FromInt(114))), 
                $Box(char#FromInt(111))), 
              $Box(char#FromInt(109))), 
            $Box(char#FromInt(40))), 
          $Box(char#FromInt(51))), 
        $Box(char#FromInt(41))));
    assume _module.__default.ones#canCall();
    assume _module.Stream.Cons_q(Lit(_module.__default.ones($LS($LZ))));
    ##a#0 := Lit(_module.__default.ones($LS($LZ)));
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#0, Tclass._module.Stream(TInt), $Heap);
    ##n#4 := LitInt(3);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#4, TInt, $Heap);
    assume _module.__default.from#canCall(LitInt(3));
    assume _module.Stream.Cons_q(Lit(_module.__default.from($LS($LZ), LitInt(3))));
    ##b#0 := Lit(_module.__default.from($LS($LZ), LitInt(3)));
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#0, Tclass._module.Stream(TInt), $Heap);
    assume _module.__default.zip#canCall(TInt, 
      TInt, 
      Lit(_module.__default.ones($LS($LZ))), 
      Lit(_module.__default.from($LS($LZ), LitInt(3))));
    assume _module.Stream.Cons_q(Lit(_module.__default.zip(TInt, 
          TInt, 
          $LS($LZ), 
          Lit(_module.__default.ones($LS($LZ))), 
          Lit(_module.__default.from($LS($LZ), LitInt(3))))));
    assume _module.__default.ones#canCall()
       && _module.__default.from#canCall(LitInt(3))
       && _module.__default.zip#canCall(TInt, 
        TInt, 
        Lit(_module.__default.ones($LS($LZ))), 
        Lit(_module.__default.from($LS($LZ), LitInt(3))));
    // ProcessCallStmt: CheckSubrange
    s##6 := Lit(_module.__default.zip(TInt, 
        TInt, 
        $LS($LZ), 
        Lit(_module.__default.ones($LS($LZ))), 
        Lit(_module.__default.from($LS($LZ), LitInt(3)))));
    call {:id "id16"} Call$$_module.__default.Print(Tclass._System.Tuple2(TInt, TInt), n##5, msg##6, s##6);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(15,8)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id17"} $Is(n#0, Tclass._System.nat());
    n##6 := n#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    msg##7 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(97))), $Box(char#FromInt(100))), 
                                                          $Box(char#FromInt(100))), 
                                                        $Box(char#FromInt(80))), 
                                                      $Box(char#FromInt(97))), 
                                                    $Box(char#FromInt(105))), 
                                                  $Box(char#FromInt(114))), 
                                                $Box(char#FromInt(40))), 
                                              $Box(char#FromInt(122))), 
                                            $Box(char#FromInt(105))), 
                                          $Box(char#FromInt(112))), 
                                        $Box(char#FromInt(40))), 
                                      $Box(char#FromInt(111))), 
                                    $Box(char#FromInt(110))), 
                                  $Box(char#FromInt(101))), 
                                $Box(char#FromInt(115))), 
                              $Box(char#FromInt(40))), 
                            $Box(char#FromInt(41))), 
                          $Box(char#FromInt(44))), 
                        $Box(char#FromInt(32))), 
                      $Box(char#FromInt(102))), 
                    $Box(char#FromInt(114))), 
                  $Box(char#FromInt(111))), 
                $Box(char#FromInt(109))), 
              $Box(char#FromInt(40))), 
            $Box(char#FromInt(51))), 
          $Box(char#FromInt(41))), 
        $Box(char#FromInt(41))));
    assume _module.__default.ones#canCall();
    assume _module.Stream.Cons_q(Lit(_module.__default.ones($LS($LZ))));
    ##a#2 := Lit(_module.__default.ones($LS($LZ)));
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#2, Tclass._module.Stream(TInt), $Heap);
    ##n#5 := LitInt(3);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#5, TInt, $Heap);
    assume _module.__default.from#canCall(LitInt(3));
    assume _module.Stream.Cons_q(Lit(_module.__default.from($LS($LZ), LitInt(3))));
    ##b#1 := Lit(_module.__default.from($LS($LZ), LitInt(3)));
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#1, Tclass._module.Stream(TInt), $Heap);
    assume _module.__default.zip#canCall(TInt, 
      TInt, 
      Lit(_module.__default.ones($LS($LZ))), 
      Lit(_module.__default.from($LS($LZ), LitInt(3))));
    assume _module.Stream.Cons_q(Lit(_module.__default.zip(TInt, 
          TInt, 
          $LS($LZ), 
          Lit(_module.__default.ones($LS($LZ))), 
          Lit(_module.__default.from($LS($LZ), LitInt(3))))));
    ##a#1 := Lit(_module.__default.zip(TInt, 
        TInt, 
        $LS($LZ), 
        Lit(_module.__default.ones($LS($LZ))), 
        Lit(_module.__default.from($LS($LZ), LitInt(3)))));
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#1, Tclass._module.Stream(Tclass._System.Tuple2(TInt, TInt)), $Heap);
    assume _module.__default.addPair#canCall(Lit(_module.__default.zip(TInt, 
          TInt, 
          $LS($LZ), 
          Lit(_module.__default.ones($LS($LZ))), 
          Lit(_module.__default.from($LS($LZ), LitInt(3))))));
    assume _module.Stream.Cons_q(Lit(_module.__default.addPair($LS($LZ), 
          Lit(_module.__default.zip(TInt, 
              TInt, 
              $LS($LZ), 
              Lit(_module.__default.ones($LS($LZ))), 
              Lit(_module.__default.from($LS($LZ), LitInt(3))))))));
    assume _module.__default.ones#canCall()
       && _module.__default.from#canCall(LitInt(3))
       && _module.__default.zip#canCall(TInt, 
        TInt, 
        Lit(_module.__default.ones($LS($LZ))), 
        Lit(_module.__default.from($LS($LZ), LitInt(3))))
       && _module.__default.addPair#canCall(Lit(_module.__default.zip(TInt, 
            TInt, 
            $LS($LZ), 
            Lit(_module.__default.ones($LS($LZ))), 
            Lit(_module.__default.from($LS($LZ), LitInt(3))))));
    // ProcessCallStmt: CheckSubrange
    s##7 := Lit(_module.__default.addPair($LS($LZ), 
        Lit(_module.__default.zip(TInt, 
            TInt, 
            $LS($LZ), 
            Lit(_module.__default.ones($LS($LZ))), 
            Lit(_module.__default.from($LS($LZ), LitInt(3)))))));
    call {:id "id18"} Call$$_module.__default.Print(TInt, n##6, msg##7, s##7);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(16,8)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id19"} $Is(n#0, Tclass._System.nat());
    n##7 := n#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    msg##8 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(102))), $Box(char#FromInt(105))), 
            $Box(char#FromInt(98))), 
          $Box(char#FromInt(40))), 
        $Box(char#FromInt(41))));
    assume _module.__default.fib#canCall();
    assume _module.Stream.Cons_q(Lit(_module.__default.fib($LS($LZ))));
    assume _module.__default.fib#canCall();
    // ProcessCallStmt: CheckSubrange
    s##8 := Lit(_module.__default.fib($LS($LZ)));
    call {:id "id20"} Call$$_module.__default.Print(TInt, n##7, msg##8, s##8);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(17,8)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id21"} $Is(n#0, Tclass._System.nat());
    n##8 := n#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    msg##9 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(97))), $Box(char#FromInt(100))), 
                                          $Box(char#FromInt(100))), 
                                        $Box(char#FromInt(40))), 
                                      $Box(char#FromInt(111))), 
                                    $Box(char#FromInt(110))), 
                                  $Box(char#FromInt(101))), 
                                $Box(char#FromInt(115))), 
                              $Box(char#FromInt(40))), 
                            $Box(char#FromInt(41))), 
                          $Box(char#FromInt(44))), 
                        $Box(char#FromInt(32))), 
                      $Box(char#FromInt(102))), 
                    $Box(char#FromInt(114))), 
                  $Box(char#FromInt(111))), 
                $Box(char#FromInt(109))), 
              $Box(char#FromInt(40))), 
            $Box(char#FromInt(51))), 
          $Box(char#FromInt(41))), 
        $Box(char#FromInt(41))));
    assume _module.__default.ones#canCall();
    assume _module.Stream.Cons_q(Lit(_module.__default.ones($LS($LZ))));
    ##a#3 := Lit(_module.__default.ones($LS($LZ)));
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#3, Tclass._module.Stream(TInt), $Heap);
    ##n#6 := LitInt(3);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#6, TInt, $Heap);
    assume _module.__default.from#canCall(LitInt(3));
    assume _module.Stream.Cons_q(Lit(_module.__default.from($LS($LZ), LitInt(3))));
    ##b#2 := Lit(_module.__default.from($LS($LZ), LitInt(3)));
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#2, Tclass._module.Stream(TInt), $Heap);
    assume _module.__default.add#canCall(Lit(_module.__default.ones($LS($LZ))), 
      Lit(_module.__default.from($LS($LZ), LitInt(3))));
    assume _module.Stream.Cons_q(Lit(_module.__default.add($LS($LZ), 
          Lit(_module.__default.ones($LS($LZ))), 
          Lit(_module.__default.from($LS($LZ), LitInt(3))))));
    assume _module.__default.ones#canCall()
       && _module.__default.from#canCall(LitInt(3))
       && _module.__default.add#canCall(Lit(_module.__default.ones($LS($LZ))), 
        Lit(_module.__default.from($LS($LZ), LitInt(3))));
    // ProcessCallStmt: CheckSubrange
    s##9 := Lit(_module.__default.add($LS($LZ), 
        Lit(_module.__default.ones($LS($LZ))), 
        Lit(_module.__default.from($LS($LZ), LitInt(3)))));
    call {:id "id22"} Call$$_module.__default.Print(TInt, n##8, msg##9, s##9);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(18,8)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id23"} $Is(n#0, Tclass._System.nat());
    n##9 := n#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    msg##10 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(70))), $Box(char#FromInt(105))), 
            $Box(char#FromInt(98))), 
          $Box(char#FromInt(40))), 
        $Box(char#FromInt(41))));
    assume _module.__default.Fib#canCall();
    assume _module.Stream.Cons_q(Lit(_module.__default.Fib($LS($LZ))));
    assume _module.__default.Fib#canCall();
    // ProcessCallStmt: CheckSubrange
    s##10 := Lit(_module.__default.Fib($LS($LZ)));
    call {:id "id24"} Call$$_module.__default.Print(TInt, n##9, msg##10, s##10);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(19,8)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id25"} $Is(n#0, Tclass._System.nat());
    n##10 := n#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    msg##11 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(70))), $Box(char#FromInt(105))), 
              $Box(char#FromInt(98))), 
            $Box(char#FromInt(48))), 
          $Box(char#FromInt(40))), 
        $Box(char#FromInt(41))));
    assume _module.__default.Fib0#canCall();
    assume _module.Stream.Cons_q(Lit(_module.__default.Fib0($LS($LZ))));
    assume _module.__default.Fib0#canCall();
    // ProcessCallStmt: CheckSubrange
    s##11 := Lit(_module.__default.Fib0($LS($LZ)));
    call {:id "id26"} Call$$_module.__default.Print(TInt, n##10, msg##11, s##11);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(20,8)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id27"} $Is(n#0, Tclass._System.nat());
    n##11 := n#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    msg##12 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(70))), $Box(char#FromInt(105))), 
              $Box(char#FromInt(98))), 
            $Box(char#FromInt(49))), 
          $Box(char#FromInt(40))), 
        $Box(char#FromInt(41))));
    assume _module.__default.Fib1#canCall();
    assume _module.Stream.Cons_q(Lit(_module.__default.Fib1($LS($LZ))));
    assume _module.__default.Fib1#canCall();
    // ProcessCallStmt: CheckSubrange
    s##12 := Lit(_module.__default.Fib1($LS($LZ)));
    call {:id "id28"} Call$$_module.__default.Print(TInt, n##11, msg##12, s##12);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(21,8)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id29"} $Is(n#0, Tclass._System.nat());
    n##12 := n#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    msg##13 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(79))), $Box(char#FromInt(104))), 
                  $Box(char#FromInt(79))), 
                $Box(char#FromInt(110))), 
              $Box(char#FromInt(101))), 
            $Box(char#FromInt(115))), 
          $Box(char#FromInt(40))), 
        $Box(char#FromInt(41))));
    assume _module.__default.OhOnes#canCall();
    assume _module.Stream.Cons_q(Lit(_module.__default.OhOnes($LS($LZ))));
    assume _module.__default.OhOnes#canCall();
    // ProcessCallStmt: CheckSubrange
    s##13 := Lit(_module.__default.OhOnes($LS($LZ)));
    call {:id "id30"} Call$$_module.__default.Print(TInt, n##12, msg##13, s##13);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(22,8)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id31"} $Is(n#0, Tclass._System.nat());
    n##13 := n#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    msg##14 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(67))), $Box(char#FromInt(111))), 
                                                              $Box(char#FromInt(109))), 
                                                            $Box(char#FromInt(98))), 
                                                          $Box(char#FromInt(105))), 
                                                        $Box(char#FromInt(110))), 
                                                      $Box(char#FromInt(101))), 
                                                    $Box(char#FromInt(40))), 
                                                  $Box(char#FromInt(112))), 
                                                $Box(char#FromInt(108))), 
                                              $Box(char#FromInt(117))), 
                                            $Box(char#FromInt(115))), 
                                          $Box(char#FromInt(44))), 
                                        $Box(char#FromInt(32))), 
                                      $Box(char#FromInt(111))), 
                                    $Box(char#FromInt(110))), 
                                  $Box(char#FromInt(101))), 
                                $Box(char#FromInt(115))), 
                              $Box(char#FromInt(40))), 
                            $Box(char#FromInt(41))), 
                          $Box(char#FromInt(44))), 
                        $Box(char#FromInt(32))), 
                      $Box(char#FromInt(102))), 
                    $Box(char#FromInt(114))), 
                  $Box(char#FromInt(111))), 
                $Box(char#FromInt(109))), 
              $Box(char#FromInt(40))), 
            $Box(char#FromInt(51))), 
          $Box(char#FromInt(41))), 
        $Box(char#FromInt(41))));
    assert {:id "id32"} 0 != $FunctionContextHeight;
    ##f#2 := _module.__default.plus#Handle();
    // assume allocatedness for argument to function
    assume $IsAlloc(##f#2, Tclass._System.___hTotalFunc2(TInt, TInt, TInt), $Heap);
    assume _module.__default.ones#canCall();
    assume _module.Stream.Cons_q(Lit(_module.__default.ones($LS($LZ))));
    ##a#4 := Lit(_module.__default.ones($LS($LZ)));
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#4, Tclass._module.Stream(TInt), $Heap);
    ##n#7 := LitInt(3);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#7, TInt, $Heap);
    assume _module.__default.from#canCall(LitInt(3));
    assume _module.Stream.Cons_q(Lit(_module.__default.from($LS($LZ), LitInt(3))));
    ##b#3 := Lit(_module.__default.from($LS($LZ), LitInt(3)));
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#3, Tclass._module.Stream(TInt), $Heap);
    assume _module.__default.Combine#canCall(TInt, 
      _module.__default.plus#Handle(), 
      Lit(_module.__default.ones($LS($LZ))), 
      Lit(_module.__default.from($LS($LZ), LitInt(3))));
    assume _module.Stream.Cons_q(_module.__default.Combine(TInt, 
        $LS($LZ), 
        _module.__default.plus#Handle(), 
        Lit(_module.__default.ones($LS($LZ))), 
        Lit(_module.__default.from($LS($LZ), LitInt(3)))));
    assume _module.__default.ones#canCall()
       && _module.__default.from#canCall(LitInt(3))
       && _module.__default.Combine#canCall(TInt, 
        _module.__default.plus#Handle(), 
        Lit(_module.__default.ones($LS($LZ))), 
        Lit(_module.__default.from($LS($LZ), LitInt(3))));
    // ProcessCallStmt: CheckSubrange
    s##14 := _module.__default.Combine(TInt, 
      $LS($LZ), 
      _module.__default.plus#Handle(), 
      Lit(_module.__default.ones($LS($LZ))), 
      Lit(_module.__default.from($LS($LZ), LitInt(3))));
    call {:id "id33"} Call$$_module.__default.Print(TInt, n##13, msg##14, s##14);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "Print (well-formedness)"} CheckWellFormed$$_module.__default.Print(_module._default.Print$T: Ty, 
    n#0: int where LitInt(0) <= n#0, 
    msg#0: Seq where $Is(msg#0, TSeq(TChar)) && $IsAlloc(msg#0, TSeq(TChar), $Heap), 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Print$T))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.Print$T), $Heap)
         && $IsA#_module.Stream(s#0));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Print (call)"} Call$$_module.__default.Print(_module._default.Print$T: Ty, 
    n#0: int where LitInt(0) <= n#0, 
    msg#0: Seq where $Is(msg#0, TSeq(TChar)) && $IsAlloc(msg#0, TSeq(TChar), $Heap), 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Print$T))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.Print$T), $Heap)
         && $IsA#_module.Stream(s#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Print (correctness)"} Impl$$_module.__default.Print(_module._default.Print$T: Ty, 
    n#0: int where LitInt(0) <= n#0, 
    msg#0: Seq where $Is(msg#0, TSeq(TChar)) && $IsAlloc(msg#0, TSeq(TChar), $Heap), 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Print$T))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.Print$T), $Heap)
         && $IsA#_module.Stream(s#0))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Print (correctness)"} Impl$$_module.__default.Print(_module._default.Print$T: Ty, n#0: int, msg#0: Seq, s#0: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var defass#s#1: bool;
  var s#1: DatatypeType
     where defass#s#1
       ==> $Is(s#1, Tclass._module.Stream(_module._default.Print$T))
         && $IsAlloc(s#1, Tclass._module.Stream(_module._default.Print$T), $Heap);
  var $rhs#0: int;
  var $rhs#1: DatatypeType;
  var $PreLoopHeap$loop#0: Heap;
  var preLoop$loop#0$defass#s#1: bool;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var $rhs#0_0: int;
  var $rhs#0_1: DatatypeType;

    // AddMethodImpl: Print, Impl$$_module.__default.Print
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(26,3)
    assume true;
    assume true;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(27,12)
    assume true;
    assume true;
    assume true;
    $rhs#0 := LitInt(0);
    assume true;
    $rhs#1 := s#0;
    i#0 := $rhs#0;
    s#1 := $rhs#1;
    defass#s#1 := true;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(28,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    preLoop$loop#0$defass#s#1 := defass#s#1;
    $decr_init$loop#00 := n#0 - i#0;
    havoc $w$loop#0;
    while (true)
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
      free invariant preLoop$loop#0$defass#s#1 ==> defass#s#1;
      free invariant n#0 - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (n#0 <= i#0)
        {
            break;
        }

        $decr$loop#00 := n#0 - i#0;
        push;
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(29,5)
        assert {:id "id38"} defass#s#1;
        assume _module.Stream.Cons_q(s#1);
        assume _module.Stream.Cons_q(s#1);
        assume true;
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(30,10)
        assume true;
        assume true;
        assume true;
        $rhs#0_0 := i#0 + 1;
        assert {:id "id40"} defass#s#1;
        assume _module.Stream.Cons_q(s#1);
        assume _module.Stream.Cons_q(s#1);
        $rhs#0_1 := _module.Stream.tail(s#1);
        i#0 := $rhs#0_0;
        s#1 := $rhs#0_1;
        defass#s#1 := true;
        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(28,3)
        assert {:id "id44"} 0 <= $decr$loop#00 || n#0 - i#0 == $decr$loop#00;
        assert {:id "id45"} n#0 - i#0 < $decr$loop#00;
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(32,3)
    assume true;
}



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
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.List(_module.List$T)));

procedure {:verboseName "PrintList (well-formedness)"} CheckWellFormed$$_module.__default.PrintList(_module._default.PrintList$T: Ty, 
    msg#0: Seq where $Is(msg#0, TSeq(TChar)) && $IsAlloc(msg#0, TSeq(TChar), $Heap), 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.List(_module._default.PrintList$T))
         && $IsAlloc(s#0, Tclass._module.List(_module._default.PrintList$T), $Heap)
         && $IsA#_module.List(s#0));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "PrintList (call)"} Call$$_module.__default.PrintList(_module._default.PrintList$T: Ty, 
    msg#0: Seq where $Is(msg#0, TSeq(TChar)) && $IsAlloc(msg#0, TSeq(TChar), $Heap), 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.List(_module._default.PrintList$T))
         && $IsAlloc(s#0, Tclass._module.List(_module._default.PrintList$T), $Heap)
         && $IsA#_module.List(s#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PrintList (correctness)"} Impl$$_module.__default.PrintList(_module._default.PrintList$T: Ty, 
    msg#0: Seq where $Is(msg#0, TSeq(TChar)) && $IsAlloc(msg#0, TSeq(TChar), $Heap), 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.List(_module._default.PrintList$T))
         && $IsAlloc(s#0, Tclass._module.List(_module._default.PrintList$T), $Heap)
         && $IsA#_module.List(s#0))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "PrintList (correctness)"} Impl$$_module.__default.PrintList(_module._default.PrintList$T: Ty, msg#0: Seq, s#0: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#1: DatatypeType
     where $Is(s#1, Tclass._module.List(_module._default.PrintList$T))
       && $IsAlloc(s#1, Tclass._module.List(_module._default.PrintList$T), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: DatatypeType;
  var $w$loop#0: bool;
  var $decr$loop#00: DatatypeType;

    // AddMethodImpl: PrintList, Impl$$_module.__default.PrintList
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(36,3)
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(37,9)
    assume true;
    assume true;
    s#1 := s#0;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(38,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := s#1;
    havoc $w$loop#0;
    while (true)
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
      free invariant DtRank(s#1) <= DtRank($decr_init$loop#00);
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume $IsA#_module.List(s#1);
        if (_module.List#Equal(s#1, #_module.List.Nil()))
        {
            break;
        }

        $decr$loop#00 := s#1;
        push;
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(41,5)
        assert {:id "id47"} _module.List.ListCons_q(s#1);
        assume true;
        assume true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(42,7)
        assume true;
        assert {:id "id48"} _module.List.ListCons_q(s#1);
        assume true;
        s#1 := _module.List.tail(s#1);
        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(38,3)
        assert {:id "id50"} DtRank(s#1) < DtRank($decr$loop#00);
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(44,3)
    assume true;
}



function _module.__default.plus1#requires(int) : bool;

// #requires axiom for _module.__default.plus1
axiom (forall x#0: int :: 
  { _module.__default.plus1#requires(x#0) } 
  _module.__default.plus1#requires(x#0) == true);

procedure {:verboseName "plus1 (well-formedness)"} CheckWellformed$$_module.__default.plus1(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



function _module.__default.plus#requires(int, int) : bool;

// #requires axiom for _module.__default.plus
axiom (forall x#0: int, y#0: int :: 
  { _module.__default.plus#requires(x#0, y#0) } 
  _module.__default.plus#requires(x#0, y#0) == true);

procedure {:verboseName "plus (well-formedness)"} CheckWellformed$$_module.__default.plus(x#0: int, y#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.ones
function _module.__default.ones($ly: LayerType) : DatatypeType
uses {
// consequence axiom for _module.__default.ones
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType :: 
    { _module.__default.ones($ly) } 
    _module.__default.ones#canCall() || 1 < $FunctionContextHeight
       ==> $Is(_module.__default.ones($ly), Tclass._module.Stream(TInt)));
// definition axiom for _module.__default.ones (revealed)
axiom {:id "id57"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType :: 
    { _module.__default.ones($LS($ly)) } 
    _module.__default.ones#canCall() || 1 < $FunctionContextHeight
       ==> _module.__default.ones#canCall()
         && _module.__default.ones($LS($ly))
           == Lit(#_module.Stream.Cons($Box(LitInt(1)), Lit(_module.__default.ones($ly)))));
}

function _module.__default.ones#canCall() : bool;

// layer synonym axiom
axiom (forall $ly: LayerType :: 
  { _module.__default.ones($LS($ly)) } 
  _module.__default.ones($LS($ly)) == _module.__default.ones($ly));

// fuel synonym axiom
axiom (forall $ly: LayerType :: 
  { _module.__default.ones(AsFuelBottom($ly)) } 
  _module.__default.ones($ly) == _module.__default.ones($LZ));

function _module.__default.ones#requires(LayerType) : bool;

// #requires axiom for _module.__default.ones
axiom (forall $ly: LayerType :: 
  { _module.__default.ones#requires($ly) } 
  _module.__default.ones#requires($ly) == true);

procedure {:verboseName "ones (well-formedness)"} CheckWellformed$$_module.__default.ones();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.from
function _module.__default.from($ly: LayerType, n#0: int) : DatatypeType
uses {
// consequence axiom for _module.__default.from
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.from($ly, n#0) } 
    _module.__default.from#canCall(n#0) || 1 < $FunctionContextHeight
       ==> $Is(_module.__default.from($ly, n#0), Tclass._module.Stream(TInt)));
// definition axiom for _module.__default.from (revealed)
axiom {:id "id59"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.from($LS($ly), n#0) } 
    _module.__default.from#canCall(n#0) || 1 < $FunctionContextHeight
       ==> _module.__default.from#canCall(n#0 + 1)
         && _module.__default.from($LS($ly), n#0)
           == #_module.Stream.Cons($Box(n#0), _module.__default.from($ly, n#0 + 1)));
}

function _module.__default.from#canCall(n#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.from($LS($ly), n#0) } 
  _module.__default.from($LS($ly), n#0) == _module.__default.from($ly, n#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.from(AsFuelBottom($ly), n#0) } 
  _module.__default.from($ly, n#0) == _module.__default.from($LZ, n#0));

function _module.__default.from#requires(LayerType, int) : bool;

// #requires axiom for _module.__default.from
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.from#requires($ly, n#0) } 
  _module.__default.from#requires($ly, n#0) == true);

procedure {:verboseName "from (well-formedness)"} CheckWellformed$$_module.__default.from(n#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.Map
function _module.__default.Map(_module._default.Map$T: Ty, 
    _module._default.Map$U: Ty, 
    $ly: LayerType, 
    f#0: HandleType, 
    s#0: DatatypeType)
   : DatatypeType
uses {
// consequence axiom for _module.__default.Map
axiom 1 <= $FunctionContextHeight
   ==> (forall _module._default.Map$T: Ty, 
      _module._default.Map$U: Ty, 
      $ly: LayerType, 
      f#0: HandleType, 
      s#0: DatatypeType :: 
    { _module.__default.Map(_module._default.Map$T, _module._default.Map$U, $ly, f#0, s#0) } 
    _module.__default.Map#canCall(_module._default.Map$T, _module._default.Map$U, f#0, s#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(f#0, 
            Tclass._System.___hTotalFunc1(_module._default.Map$T, _module._default.Map$U))
           && $Is(s#0, Tclass._module.Stream(_module._default.Map$T)))
       ==> $Is(_module.__default.Map(_module._default.Map$T, _module._default.Map$U, $ly, f#0, s#0), 
        Tclass._module.Stream(_module._default.Map$U)));
// alloc consequence axiom for _module.__default.Map
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      _module._default.Map$T: Ty, 
      _module._default.Map$U: Ty, 
      $ly: LayerType, 
      f#0: HandleType, 
      s#0: DatatypeType :: 
    { $IsAlloc(_module.__default.Map(_module._default.Map$T, _module._default.Map$U, $ly, f#0, s#0), 
        Tclass._module.Stream(_module._default.Map$U), 
        $Heap) } 
    (_module.__default.Map#canCall(_module._default.Map$T, _module._default.Map$U, f#0, s#0)
           || (1 < $FunctionContextHeight
             && 
            $Is(f#0, 
              Tclass._System.___hTotalFunc1(_module._default.Map$T, _module._default.Map$U))
             && $IsAlloc(f#0, 
              Tclass._System.___hTotalFunc1(_module._default.Map$T, _module._default.Map$U), 
              $Heap)
             && 
            $Is(s#0, Tclass._module.Stream(_module._default.Map$T))
             && $IsAlloc(s#0, Tclass._module.Stream(_module._default.Map$T), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.__default.Map(_module._default.Map$T, _module._default.Map$U, $ly, f#0, s#0), 
        Tclass._module.Stream(_module._default.Map$U), 
        $Heap));
// definition axiom for _module.__default.Map (revealed)
axiom {:id "id61"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.Map$T: Ty, 
      _module._default.Map$U: Ty, 
      $ly: LayerType, 
      $Heap: Heap, 
      f#0: HandleType, 
      s#0: DatatypeType :: 
    { _module.__default.Map(_module._default.Map$T, _module._default.Map$U, $LS($ly), f#0, s#0), $IsGoodHeap($Heap) } 
    _module.__default.Map#canCall(_module._default.Map$T, _module._default.Map$U, f#0, s#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(f#0, 
            Tclass._System.___hTotalFunc1(_module._default.Map$T, _module._default.Map$U))
           && $Is(s#0, Tclass._module.Stream(_module._default.Map$T)))
       ==> _module.Stream.Cons_q(s#0)
         && 
        _module.Stream.Cons_q(s#0)
         && _module.__default.Map#canCall(_module._default.Map$T, _module._default.Map$U, f#0, _module.Stream.tail(s#0))
         && _module.__default.Map(_module._default.Map$T, _module._default.Map$U, $LS($ly), f#0, s#0)
           == #_module.Stream.Cons(Apply1(_module._default.Map$T, 
              _module._default.Map$U, 
              $Heap, 
              f#0, 
              _module.Stream.head(s#0)), 
            _module.__default.Map(_module._default.Map$T, 
              _module._default.Map$U, 
              $ly, 
              f#0, 
              _module.Stream.tail(s#0))));
}

function _module.__default.Map#canCall(_module._default.Map$T: Ty, 
    _module._default.Map$U: Ty, 
    f#0: HandleType, 
    s#0: DatatypeType)
   : bool;

// layer synonym axiom
axiom (forall _module._default.Map$T: Ty, 
    _module._default.Map$U: Ty, 
    $ly: LayerType, 
    f#0: HandleType, 
    s#0: DatatypeType :: 
  { _module.__default.Map(_module._default.Map$T, _module._default.Map$U, $LS($ly), f#0, s#0) } 
  _module.__default.Map(_module._default.Map$T, _module._default.Map$U, $LS($ly), f#0, s#0)
     == _module.__default.Map(_module._default.Map$T, _module._default.Map$U, $ly, f#0, s#0));

// fuel synonym axiom
axiom (forall _module._default.Map$T: Ty, 
    _module._default.Map$U: Ty, 
    $ly: LayerType, 
    f#0: HandleType, 
    s#0: DatatypeType :: 
  { _module.__default.Map(_module._default.Map$T, _module._default.Map$U, AsFuelBottom($ly), f#0, s#0) } 
  _module.__default.Map(_module._default.Map$T, _module._default.Map$U, $ly, f#0, s#0)
     == _module.__default.Map(_module._default.Map$T, _module._default.Map$U, $LZ, f#0, s#0));

function _module.__default.Map#requires(Ty, Ty, LayerType, HandleType, DatatypeType) : bool;

// #requires axiom for _module.__default.Map
axiom (forall _module._default.Map$T: Ty, 
    _module._default.Map$U: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    f#0: HandleType, 
    s#0: DatatypeType :: 
  { _module.__default.Map#requires(_module._default.Map$T, _module._default.Map$U, $ly, f#0, s#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(f#0, 
        Tclass._System.___hTotalFunc1(_module._default.Map$T, _module._default.Map$U))
       && $Is(s#0, Tclass._module.Stream(_module._default.Map$T))
     ==> _module.__default.Map#requires(_module._default.Map$T, _module._default.Map$U, $ly, f#0, s#0)
       == true);

procedure {:verboseName "Map (well-formedness)"} CheckWellformed$$_module.__default.Map(_module._default.Map$T: Ty, 
    _module._default.Map$U: Ty, 
    f#0: HandleType
       where $Is(f#0, 
        Tclass._System.___hTotalFunc1(_module._default.Map$T, _module._default.Map$U)), 
    s#0: DatatypeType where $Is(s#0, Tclass._module.Stream(_module._default.Map$T)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.squares
function _module.__default.squares() : DatatypeType
uses {
// consequence axiom for _module.__default.squares
axiom 2 <= $FunctionContextHeight
   ==> 
  _module.__default.squares#canCall() || 2 < $FunctionContextHeight
   ==> $Is(_module.__default.squares(), Tclass._module.Stream(TInt));
// definition axiom for _module.__default.squares (revealed)
axiom {:id "id63"} 2 <= $FunctionContextHeight
   ==> 
  _module.__default.squares#canCall() || 2 < $FunctionContextHeight
   ==> _module.__default.from#canCall(LitInt(0))
     && _module.__default.Map#canCall(TInt, 
      TInt, 
      Lit(AtLayer((lambda $l#2#ly#0: LayerType :: 
            Handle1((lambda $l#2#heap#0: Heap, $l#2#x#0: Box :: 
                $Box(Mul($Unbox($l#2#x#0): int, $Unbox($l#2#x#0): int))), 
              (lambda $l#2#heap#0: Heap, $l#2#x#0: Box :: $IsBox($l#2#x#0, TInt)), 
              (lambda $l#2#heap#0: Heap, $l#2#x#0: Box :: 
                SetRef_to_SetBox((lambda $l#2#o#0: ref :: false))))), 
          $LS($LZ))), 
      Lit(_module.__default.from($LS($LZ), LitInt(0))))
     && _module.__default.squares()
       == Lit(_module.__default.Map(TInt, 
          TInt, 
          $LS($LZ), 
          Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
                Handle1((lambda $l#0#heap#0: Heap, $l#0#x#0: Box :: 
                    $Box(Mul($Unbox($l#0#x#0): int, $Unbox($l#0#x#0): int))), 
                  (lambda $l#0#heap#0: Heap, $l#0#x#0: Box :: $IsBox($l#0#x#0, TInt)), 
                  (lambda $l#0#heap#0: Heap, $l#0#x#0: Box :: 
                    SetRef_to_SetBox((lambda $l#0#o#0: ref :: false))))), 
              $LS($LZ))), 
          Lit(_module.__default.from($LS($LZ), LitInt(0)))));
// definition axiom for _module.__default.squares for all literals (revealed)
axiom {:id "id64"} 2 <= $FunctionContextHeight
   ==> 
  _module.__default.squares#canCall() || 2 < $FunctionContextHeight
   ==> _module.__default.from#canCall(LitInt(0))
     && _module.__default.Map#canCall(TInt, 
      TInt, 
      Lit(AtLayer((lambda $l#5#ly#0: LayerType :: 
            Handle1((lambda $l#5#heap#0: Heap, $l#5#x#0: Box :: 
                $Box(Mul($Unbox($l#5#x#0): int, $Unbox($l#5#x#0): int))), 
              (lambda $l#5#heap#0: Heap, $l#5#x#0: Box :: $IsBox($l#5#x#0, TInt)), 
              (lambda $l#5#heap#0: Heap, $l#5#x#0: Box :: 
                SetRef_to_SetBox((lambda $l#5#o#0: ref :: false))))), 
          $LS($LZ))), 
      Lit(_module.__default.from($LS($LZ), LitInt(0))))
     && _module.__default.squares()
       == Lit(_module.__default.Map(TInt, 
          TInt, 
          $LS($LZ), 
          Lit(AtLayer((lambda $l#3#ly#0: LayerType :: 
                Handle1((lambda $l#3#heap#0: Heap, $l#3#x#0: Box :: 
                    $Box(Mul($Unbox($l#3#x#0): int, $Unbox($l#3#x#0): int))), 
                  (lambda $l#3#heap#0: Heap, $l#3#x#0: Box :: $IsBox($l#3#x#0, TInt)), 
                  (lambda $l#3#heap#0: Heap, $l#3#x#0: Box :: 
                    SetRef_to_SetBox((lambda $l#3#o#0: ref :: false))))), 
              $LS($LZ))), 
          Lit(_module.__default.from($LS($LZ), LitInt(0)))));
}

function _module.__default.squares#canCall() : bool;

function _module.__default.squares#requires() : bool
uses {
// #requires axiom for _module.__default.squares
axiom _module.__default.squares#requires() == true;
}

procedure {:verboseName "squares (well-formedness)"} CheckWellformed$$_module.__default.squares();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.take
function _module.__default.take(_module._default.take$_T0: Ty, $ly: LayerType, n#0: int, s#0: DatatypeType)
   : DatatypeType
uses {
// consequence axiom for _module.__default.take
axiom 1 <= $FunctionContextHeight
   ==> (forall _module._default.take$_T0: Ty, $ly: LayerType, n#0: int, s#0: DatatypeType :: 
    { _module.__default.take(_module._default.take$_T0, $ly, n#0, s#0) } 
    _module.__default.take#canCall(_module._default.take$_T0, n#0, s#0)
         || (1 < $FunctionContextHeight
           && 
          LitInt(0) <= n#0
           && $Is(s#0, Tclass._module.Stream(_module._default.take$_T0)))
       ==> $Is(_module.__default.take(_module._default.take$_T0, $ly, n#0, s#0), 
        Tclass._module.List(_module._default.take$_T0)));
// alloc consequence axiom for _module.__default.take
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      _module._default.take$_T0: Ty, 
      $ly: LayerType, 
      n#0: int, 
      s#0: DatatypeType :: 
    { $IsAlloc(_module.__default.take(_module._default.take$_T0, $ly, n#0, s#0), 
        Tclass._module.List(_module._default.take$_T0), 
        $Heap) } 
    (_module.__default.take#canCall(_module._default.take$_T0, n#0, s#0)
           || (1 < $FunctionContextHeight
             && 
            LitInt(0) <= n#0
             && 
            $Is(s#0, Tclass._module.Stream(_module._default.take$_T0))
             && $IsAlloc(s#0, Tclass._module.Stream(_module._default.take$_T0), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.__default.take(_module._default.take$_T0, $ly, n#0, s#0), 
        Tclass._module.List(_module._default.take$_T0), 
        $Heap));
// definition axiom for _module.__default.take (revealed)
axiom {:id "id67"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.take$_T0: Ty, $ly: LayerType, n#0: int, s#0: DatatypeType :: 
    { _module.__default.take(_module._default.take$_T0, $LS($ly), n#0, s#0) } 
    _module.__default.take#canCall(_module._default.take$_T0, n#0, s#0)
         || (1 < $FunctionContextHeight
           && 
          LitInt(0) <= n#0
           && $Is(s#0, Tclass._module.Stream(_module._default.take$_T0)))
       ==> (n#0 != LitInt(0)
           ==> _module.Stream.Cons_q(s#0)
             && 
            _module.Stream.Cons_q(s#0)
             && _module.__default.take#canCall(_module._default.take$_T0, n#0 - 1, _module.Stream.tail(s#0)))
         && _module.__default.take(_module._default.take$_T0, $LS($ly), n#0, s#0)
           == (if n#0 == LitInt(0)
             then #_module.List.Nil()
             else #_module.List.ListCons(_module.Stream.head(s#0), 
              _module.__default.take(_module._default.take$_T0, $ly, n#0 - 1, _module.Stream.tail(s#0)))));
// definition axiom for _module.__default.take for decreasing-related literals (revealed)
axiom {:id "id68"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.take$_T0: Ty, $ly: LayerType, n#0: int, s#0: DatatypeType :: 
    {:weight 3} { _module.__default.take(_module._default.take$_T0, $LS($ly), LitInt(n#0), s#0) } 
    _module.__default.take#canCall(_module._default.take$_T0, LitInt(n#0), s#0)
         || (1 < $FunctionContextHeight
           && 
          LitInt(0) <= n#0
           && $Is(s#0, Tclass._module.Stream(_module._default.take$_T0)))
       ==> (LitInt(n#0) != LitInt(0)
           ==> _module.Stream.Cons_q(s#0)
             && 
            _module.Stream.Cons_q(s#0)
             && _module.__default.take#canCall(_module._default.take$_T0, LitInt(n#0 - 1), _module.Stream.tail(s#0)))
         && _module.__default.take(_module._default.take$_T0, $LS($ly), LitInt(n#0), s#0)
           == (if LitInt(n#0) == LitInt(0)
             then #_module.List.Nil()
             else #_module.List.ListCons(_module.Stream.head(s#0), 
              _module.__default.take(_module._default.take$_T0, $LS($ly), LitInt(n#0 - 1), _module.Stream.tail(s#0)))));
// definition axiom for _module.__default.take for all literals (revealed)
axiom {:id "id69"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.take$_T0: Ty, $ly: LayerType, n#0: int, s#0: DatatypeType :: 
    {:weight 3} { _module.__default.take(_module._default.take$_T0, $LS($ly), LitInt(n#0), Lit(s#0)) } 
    _module.__default.take#canCall(_module._default.take$_T0, LitInt(n#0), Lit(s#0))
         || (1 < $FunctionContextHeight
           && 
          LitInt(0) <= n#0
           && $Is(s#0, Tclass._module.Stream(_module._default.take$_T0)))
       ==> (LitInt(n#0) != LitInt(0)
           ==> _module.Stream.Cons_q(Lit(s#0))
             && 
            _module.Stream.Cons_q(Lit(s#0))
             && _module.__default.take#canCall(_module._default.take$_T0, LitInt(n#0 - 1), Lit(_module.Stream.tail(Lit(s#0)))))
         && _module.__default.take(_module._default.take$_T0, $LS($ly), LitInt(n#0), Lit(s#0))
           == (if LitInt(n#0) == LitInt(0)
             then #_module.List.Nil()
             else #_module.List.ListCons(Lit(_module.Stream.head(Lit(s#0))), 
              Lit(_module.__default.take(_module._default.take$_T0, 
                  $LS($ly), 
                  LitInt(n#0 - 1), 
                  Lit(_module.Stream.tail(Lit(s#0))))))));
}

function _module.__default.take#canCall(_module._default.take$_T0: Ty, n#0: int, s#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall _module._default.take$_T0: Ty, $ly: LayerType, n#0: int, s#0: DatatypeType :: 
  { _module.__default.take(_module._default.take$_T0, $LS($ly), n#0, s#0) } 
  _module.__default.take(_module._default.take$_T0, $LS($ly), n#0, s#0)
     == _module.__default.take(_module._default.take$_T0, $ly, n#0, s#0));

// fuel synonym axiom
axiom (forall _module._default.take$_T0: Ty, $ly: LayerType, n#0: int, s#0: DatatypeType :: 
  { _module.__default.take(_module._default.take$_T0, AsFuelBottom($ly), n#0, s#0) } 
  _module.__default.take(_module._default.take$_T0, $ly, n#0, s#0)
     == _module.__default.take(_module._default.take$_T0, $LZ, n#0, s#0));

function _module.__default.take#requires(Ty, LayerType, int, DatatypeType) : bool;

// #requires axiom for _module.__default.take
axiom (forall _module._default.take$_T0: Ty, $ly: LayerType, n#0: int, s#0: DatatypeType :: 
  { _module.__default.take#requires(_module._default.take$_T0, $ly, n#0, s#0) } 
  LitInt(0) <= n#0 && $Is(s#0, Tclass._module.Stream(_module._default.take$_T0))
     ==> _module.__default.take#requires(_module._default.take$_T0, $ly, n#0, s#0)
       == true);

procedure {:verboseName "take (well-formedness)"} CheckWellformed$$_module.__default.take(_module._default.take$_T0: Ty, 
    n#0: int where LitInt(0) <= n#0, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.take$_T0)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "take (well-formedness)"} CheckWellformed$$_module.__default.take(_module._default.take$_T0: Ty, n#0: int, s#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##n#0: int;
  var ##s#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.take(_module._default.take$_T0, $LS($LZ), n#0, s#0), 
          Tclass._module.List(_module._default.take$_T0));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (n#0 == LitInt(0))
        {
            assume {:id "id70"} _module.__default.take(_module._default.take$_T0, $LS($LZ), n#0, s#0)
               == Lit(#_module.List.Nil());
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.take(_module._default.take$_T0, $LS($LZ), n#0, s#0), 
              Tclass._module.List(_module._default.take$_T0));
            return;
        }
        else
        {
            assume _module.Stream.Cons_q(s#0);
            assert {:id "id71"} $Is(n#0 - 1, Tclass._System.nat());
            ##n#0 := n#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
            assume _module.Stream.Cons_q(s#0);
            ##s#0 := _module.Stream.tail(s#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0, Tclass._module.Stream(_module._default.take$_T0), $Heap);
            assert {:id "id72"} 0 <= n#0 || ##n#0 == n#0;
            assert {:id "id73"} ##n#0 < n#0;
            assume _module.__default.take#canCall(_module._default.take$_T0, n#0 - 1, _module.Stream.tail(s#0));
            assume {:id "id74"} _module.__default.take(_module._default.take$_T0, $LS($LZ), n#0, s#0)
               == #_module.List.ListCons(_module.Stream.head(s#0), 
                _module.__default.take(_module._default.take$_T0, $LS($LZ), n#0 - 1, _module.Stream.tail(s#0)));
            assume _module.Stream.Cons_q(s#0)
               && 
              _module.Stream.Cons_q(s#0)
               && _module.__default.take#canCall(_module._default.take$_T0, n#0 - 1, _module.Stream.tail(s#0));
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.take(_module._default.take$_T0, $LS($LZ), n#0, s#0), 
              Tclass._module.List(_module._default.take$_T0));
            return;
        }

        assume false;
    }
}



// function declaration for _module._default.zip
function _module.__default.zip(_module._default.zip$T: Ty, 
    _module._default.zip$U: Ty, 
    $ly: LayerType, 
    a#0: DatatypeType, 
    b#0: DatatypeType)
   : DatatypeType
uses {
// consequence axiom for _module.__default.zip
axiom 1 <= $FunctionContextHeight
   ==> (forall _module._default.zip$T: Ty, 
      _module._default.zip$U: Ty, 
      $ly: LayerType, 
      a#0: DatatypeType, 
      b#0: DatatypeType :: 
    { _module.__default.zip(_module._default.zip$T, _module._default.zip$U, $ly, a#0, b#0) } 
    _module.__default.zip#canCall(_module._default.zip$T, _module._default.zip$U, a#0, b#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(a#0, Tclass._module.Stream(_module._default.zip$T))
           && $Is(b#0, Tclass._module.Stream(_module._default.zip$U)))
       ==> $Is(_module.__default.zip(_module._default.zip$T, _module._default.zip$U, $ly, a#0, b#0), 
        Tclass._module.Stream(Tclass._System.Tuple2(_module._default.zip$T, _module._default.zip$U))));
// alloc consequence axiom for _module.__default.zip
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      _module._default.zip$T: Ty, 
      _module._default.zip$U: Ty, 
      $ly: LayerType, 
      a#0: DatatypeType, 
      b#0: DatatypeType :: 
    { $IsAlloc(_module.__default.zip(_module._default.zip$T, _module._default.zip$U, $ly, a#0, b#0), 
        Tclass._module.Stream(Tclass._System.Tuple2(_module._default.zip$T, _module._default.zip$U)), 
        $Heap) } 
    (_module.__default.zip#canCall(_module._default.zip$T, _module._default.zip$U, a#0, b#0)
           || (1 < $FunctionContextHeight
             && 
            $Is(a#0, Tclass._module.Stream(_module._default.zip$T))
             && $IsAlloc(a#0, Tclass._module.Stream(_module._default.zip$T), $Heap)
             && 
            $Is(b#0, Tclass._module.Stream(_module._default.zip$U))
             && $IsAlloc(b#0, Tclass._module.Stream(_module._default.zip$U), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.__default.zip(_module._default.zip$T, _module._default.zip$U, $ly, a#0, b#0), 
        Tclass._module.Stream(Tclass._System.Tuple2(_module._default.zip$T, _module._default.zip$U)), 
        $Heap));
// definition axiom for _module.__default.zip (revealed)
axiom {:id "id75"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.zip$T: Ty, 
      _module._default.zip$U: Ty, 
      $ly: LayerType, 
      a#0: DatatypeType, 
      b#0: DatatypeType :: 
    { _module.__default.zip(_module._default.zip$T, _module._default.zip$U, $LS($ly), a#0, b#0) } 
    _module.__default.zip#canCall(_module._default.zip$T, _module._default.zip$U, a#0, b#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(a#0, Tclass._module.Stream(_module._default.zip$T))
           && $Is(b#0, Tclass._module.Stream(_module._default.zip$U)))
       ==> _module.Stream.Cons_q(a#0)
         && _module.Stream.Cons_q(b#0)
         && 
        _module.Stream.Cons_q(a#0)
         && _module.Stream.Cons_q(b#0)
         && _module.__default.zip#canCall(_module._default.zip$T, 
          _module._default.zip$U, 
          _module.Stream.tail(a#0), 
          _module.Stream.tail(b#0))
         && _module.__default.zip(_module._default.zip$T, _module._default.zip$U, $LS($ly), a#0, b#0)
           == #_module.Stream.Cons($Box(#_System._tuple#2._#Make2(_module.Stream.head(a#0), _module.Stream.head(b#0))), 
            _module.__default.zip(_module._default.zip$T, 
              _module._default.zip$U, 
              $ly, 
              _module.Stream.tail(a#0), 
              _module.Stream.tail(b#0))));
}

function _module.__default.zip#canCall(_module._default.zip$T: Ty, 
    _module._default.zip$U: Ty, 
    a#0: DatatypeType, 
    b#0: DatatypeType)
   : bool;

// layer synonym axiom
axiom (forall _module._default.zip$T: Ty, 
    _module._default.zip$U: Ty, 
    $ly: LayerType, 
    a#0: DatatypeType, 
    b#0: DatatypeType :: 
  { _module.__default.zip(_module._default.zip$T, _module._default.zip$U, $LS($ly), a#0, b#0) } 
  _module.__default.zip(_module._default.zip$T, _module._default.zip$U, $LS($ly), a#0, b#0)
     == _module.__default.zip(_module._default.zip$T, _module._default.zip$U, $ly, a#0, b#0));

// fuel synonym axiom
axiom (forall _module._default.zip$T: Ty, 
    _module._default.zip$U: Ty, 
    $ly: LayerType, 
    a#0: DatatypeType, 
    b#0: DatatypeType :: 
  { _module.__default.zip(_module._default.zip$T, _module._default.zip$U, AsFuelBottom($ly), a#0, b#0) } 
  _module.__default.zip(_module._default.zip$T, _module._default.zip$U, $ly, a#0, b#0)
     == _module.__default.zip(_module._default.zip$T, _module._default.zip$U, $LZ, a#0, b#0));

function _module.__default.zip#requires(Ty, Ty, LayerType, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.zip
axiom (forall _module._default.zip$T: Ty, 
    _module._default.zip$U: Ty, 
    $ly: LayerType, 
    a#0: DatatypeType, 
    b#0: DatatypeType :: 
  { _module.__default.zip#requires(_module._default.zip$T, _module._default.zip$U, $ly, a#0, b#0) } 
  $Is(a#0, Tclass._module.Stream(_module._default.zip$T))
       && $Is(b#0, Tclass._module.Stream(_module._default.zip$U))
     ==> _module.__default.zip#requires(_module._default.zip$T, _module._default.zip$U, $ly, a#0, b#0)
       == true);

procedure {:verboseName "zip (well-formedness)"} CheckWellformed$$_module.__default.zip(_module._default.zip$T: Ty, 
    _module._default.zip$U: Ty, 
    a#0: DatatypeType where $Is(a#0, Tclass._module.Stream(_module._default.zip$T)), 
    b#0: DatatypeType where $Is(b#0, Tclass._module.Stream(_module._default.zip$U)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.addPair
function _module.__default.addPair($ly: LayerType, a#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.addPair
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, a#0: DatatypeType :: 
    { _module.__default.addPair($ly, a#0) } 
    _module.__default.addPair#canCall(a#0)
         || (1 < $FunctionContextHeight
           && $Is(a#0, Tclass._module.Stream(Tclass._System.Tuple2(TInt, TInt))))
       ==> $Is(_module.__default.addPair($ly, a#0), Tclass._module.Stream(TInt)));
// definition axiom for _module.__default.addPair (revealed)
axiom {:id "id77"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, a#0: DatatypeType :: 
    { _module.__default.addPair($LS($ly), a#0) } 
    _module.__default.addPair#canCall(a#0)
         || (1 < $FunctionContextHeight
           && $Is(a#0, Tclass._module.Stream(Tclass._System.Tuple2(TInt, TInt))))
       ==> _module.Stream.Cons_q(a#0)
         && _System.Tuple2.___hMake2_q($Unbox(_module.Stream.head(a#0)): DatatypeType)
         && 
        _module.Stream.Cons_q(a#0)
         && _System.Tuple2.___hMake2_q($Unbox(_module.Stream.head(a#0)): DatatypeType)
         && 
        _module.Stream.Cons_q(a#0)
         && _module.__default.addPair#canCall(_module.Stream.tail(a#0))
         && _module.__default.addPair($LS($ly), a#0)
           == #_module.Stream.Cons($Box($Unbox(_System.Tuple2._0($Unbox(_module.Stream.head(a#0)): DatatypeType)): int
                 + $Unbox(_System.Tuple2._1($Unbox(_module.Stream.head(a#0)): DatatypeType)): int), 
            _module.__default.addPair($ly, _module.Stream.tail(a#0))));
}

function _module.__default.addPair#canCall(a#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, a#0: DatatypeType :: 
  { _module.__default.addPair($LS($ly), a#0) } 
  _module.__default.addPair($LS($ly), a#0) == _module.__default.addPair($ly, a#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, a#0: DatatypeType :: 
  { _module.__default.addPair(AsFuelBottom($ly), a#0) } 
  _module.__default.addPair($ly, a#0) == _module.__default.addPair($LZ, a#0));

function _module.__default.addPair#requires(LayerType, DatatypeType) : bool;

// #requires axiom for _module.__default.addPair
axiom (forall $ly: LayerType, a#0: DatatypeType :: 
  { _module.__default.addPair#requires($ly, a#0) } 
  $Is(a#0, Tclass._module.Stream(Tclass._System.Tuple2(TInt, TInt)))
     ==> _module.__default.addPair#requires($ly, a#0) == true);

procedure {:verboseName "addPair (well-formedness)"} CheckWellformed$$_module.__default.addPair(a#0: DatatypeType
       where $Is(a#0, Tclass._module.Stream(Tclass._System.Tuple2(TInt, TInt))));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.fib
function _module.__default.fib($ly: LayerType) : DatatypeType
uses {
// consequence axiom for _module.__default.fib
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType :: 
    { _module.__default.fib($ly) } 
    _module.__default.fib#canCall() || 2 < $FunctionContextHeight
       ==> $Is(_module.__default.fib($ly), Tclass._module.Stream(TInt)));
// definition axiom for _module.__default.fib (revealed)
axiom {:id "id79"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType :: 
    { _module.__default.fib($LS($ly)) } 
    _module.__default.fib#canCall() || 2 < $FunctionContextHeight
       ==> _module.__default.fib#canCall()
         && 
        _module.__default.fib#canCall()
         && _module.Stream.Cons_q(Lit(_module.__default.fib($ly)))
         && _module.__default.zip#canCall(TInt, 
          TInt, 
          Lit(_module.__default.fib($ly)), 
          Lit(_module.Stream.tail(Lit(_module.__default.fib($ly)))))
         && _module.__default.addPair#canCall(Lit(_module.__default.zip(TInt, 
              TInt, 
              $LS($LZ), 
              Lit(_module.__default.fib($ly)), 
              Lit(_module.Stream.tail(Lit(_module.__default.fib($ly)))))))
         && _module.__default.fib($LS($ly))
           == Lit(#_module.Stream.Cons($Box(LitInt(0)), 
              Lit(#_module.Stream.Cons($Box(LitInt(1)), 
                  Lit(_module.__default.addPair($LS($LZ), 
                      Lit(_module.__default.zip(TInt, 
                          TInt, 
                          $LS($LZ), 
                          Lit(_module.__default.fib($ly)), 
                          Lit(_module.Stream.tail(Lit(_module.__default.fib($ly)))))))))))));
}

function _module.__default.fib#canCall() : bool;

// layer synonym axiom
axiom (forall $ly: LayerType :: 
  { _module.__default.fib($LS($ly)) } 
  _module.__default.fib($LS($ly)) == _module.__default.fib($ly));

// fuel synonym axiom
axiom (forall $ly: LayerType :: 
  { _module.__default.fib(AsFuelBottom($ly)) } 
  _module.__default.fib($ly) == _module.__default.fib($LZ));

function _module.__default.fib#requires(LayerType) : bool;

// #requires axiom for _module.__default.fib
axiom (forall $ly: LayerType :: 
  { _module.__default.fib#requires($ly) } 
  _module.__default.fib#requires($ly) == true);

procedure {:verboseName "fib (well-formedness)"} CheckWellformed$$_module.__default.fib();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.add
function _module.__default.add($ly: LayerType, a#0: DatatypeType, b#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.add
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, a#0: DatatypeType, b#0: DatatypeType :: 
    { _module.__default.add($ly, a#0, b#0) } 
    _module.__default.add#canCall(a#0, b#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(a#0, Tclass._module.Stream(TInt))
           && $Is(b#0, Tclass._module.Stream(TInt)))
       ==> $Is(_module.__default.add($ly, a#0, b#0), Tclass._module.Stream(TInt)));
// definition axiom for _module.__default.add (revealed)
axiom {:id "id81"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, a#0: DatatypeType, b#0: DatatypeType :: 
    { _module.__default.add($LS($ly), a#0, b#0) } 
    _module.__default.add#canCall(a#0, b#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(a#0, Tclass._module.Stream(TInt))
           && $Is(b#0, Tclass._module.Stream(TInt)))
       ==> _module.Stream.Cons_q(a#0)
         && _module.Stream.Cons_q(b#0)
         && 
        _module.Stream.Cons_q(a#0)
         && _module.Stream.Cons_q(b#0)
         && _module.__default.add#canCall(_module.Stream.tail(a#0), _module.Stream.tail(b#0))
         && _module.__default.add($LS($ly), a#0, b#0)
           == #_module.Stream.Cons($Box($Unbox(_module.Stream.head(a#0)): int + $Unbox(_module.Stream.head(b#0)): int), 
            _module.__default.add($ly, _module.Stream.tail(a#0), _module.Stream.tail(b#0))));
}

function _module.__default.add#canCall(a#0: DatatypeType, b#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, a#0: DatatypeType, b#0: DatatypeType :: 
  { _module.__default.add($LS($ly), a#0, b#0) } 
  _module.__default.add($LS($ly), a#0, b#0)
     == _module.__default.add($ly, a#0, b#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, a#0: DatatypeType, b#0: DatatypeType :: 
  { _module.__default.add(AsFuelBottom($ly), a#0, b#0) } 
  _module.__default.add($ly, a#0, b#0) == _module.__default.add($LZ, a#0, b#0));

function _module.__default.add#requires(LayerType, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.add
axiom (forall $ly: LayerType, a#0: DatatypeType, b#0: DatatypeType :: 
  { _module.__default.add#requires($ly, a#0, b#0) } 
  $Is(a#0, Tclass._module.Stream(TInt)) && $Is(b#0, Tclass._module.Stream(TInt))
     ==> _module.__default.add#requires($ly, a#0, b#0) == true);

procedure {:verboseName "add (well-formedness)"} CheckWellformed$$_module.__default.add(a#0: DatatypeType where $Is(a#0, Tclass._module.Stream(TInt)), 
    b#0: DatatypeType where $Is(b#0, Tclass._module.Stream(TInt)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.Fib
function _module.__default.Fib($ly: LayerType) : DatatypeType
uses {
// consequence axiom for _module.__default.Fib
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType :: 
    { _module.__default.Fib($ly) } 
    _module.__default.Fib#canCall() || 2 < $FunctionContextHeight
       ==> $Is(_module.__default.Fib($ly), Tclass._module.Stream(TInt)));
// definition axiom for _module.__default.Fib (revealed)
axiom {:id "id83"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType :: 
    { _module.__default.Fib($LS($ly)) } 
    _module.__default.Fib#canCall() || 2 < $FunctionContextHeight
       ==> _module.__default.Fib#canCall()
         && 
        _module.__default.Fib#canCall()
         && _module.Stream.Cons_q(Lit(_module.__default.Fib($ly)))
         && _module.__default.add#canCall(Lit(_module.__default.Fib($ly)), 
          Lit(_module.Stream.tail(Lit(_module.__default.Fib($ly)))))
         && _module.__default.Fib($LS($ly))
           == Lit(#_module.Stream.Cons($Box(LitInt(0)), 
              Lit(#_module.Stream.Cons($Box(LitInt(1)), 
                  Lit(_module.__default.add($LS($LZ), 
                      Lit(_module.__default.Fib($ly)), 
                      Lit(_module.Stream.tail(Lit(_module.__default.Fib($ly)))))))))));
}

function _module.__default.Fib#canCall() : bool;

// layer synonym axiom
axiom (forall $ly: LayerType :: 
  { _module.__default.Fib($LS($ly)) } 
  _module.__default.Fib($LS($ly)) == _module.__default.Fib($ly));

// fuel synonym axiom
axiom (forall $ly: LayerType :: 
  { _module.__default.Fib(AsFuelBottom($ly)) } 
  _module.__default.Fib($ly) == _module.__default.Fib($LZ));

function _module.__default.Fib#requires(LayerType) : bool;

// #requires axiom for _module.__default.Fib
axiom (forall $ly: LayerType :: 
  { _module.__default.Fib#requires($ly) } 
  _module.__default.Fib#requires($ly) == true);

procedure {:verboseName "Fib (well-formedness)"} CheckWellformed$$_module.__default.Fib();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.Fib0
function _module.__default.Fib0($ly: LayerType) : DatatypeType
uses {
// consequence axiom for _module.__default.Fib0
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType :: 
    { _module.__default.Fib0($ly) } 
    _module.__default.Fib0#canCall() || 2 < $FunctionContextHeight
       ==> $Is(_module.__default.Fib0($ly), Tclass._module.Stream(TInt)));
// definition axiom for _module.__default.Fib0 (revealed)
axiom {:id "id85"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType :: 
    { _module.__default.Fib0($LS($ly)) } 
    _module.__default.Fib0#canCall() || 2 < $FunctionContextHeight
       ==> _module.__default.Fib1#canCall()
         && _module.__default.Fib0($LS($ly))
           == Lit(#_module.Stream.Cons($Box(LitInt(0)), Lit(_module.__default.Fib1($ly)))));
}

function _module.__default.Fib0#canCall() : bool;

// layer synonym axiom
axiom (forall $ly: LayerType :: 
  { _module.__default.Fib0($LS($ly)) } 
  _module.__default.Fib0($LS($ly)) == _module.__default.Fib0($ly));

// fuel synonym axiom
axiom (forall $ly: LayerType :: 
  { _module.__default.Fib0(AsFuelBottom($ly)) } 
  _module.__default.Fib0($ly) == _module.__default.Fib0($LZ));

function _module.__default.Fib0#requires(LayerType) : bool;

// #requires axiom for _module.__default.Fib0
axiom (forall $ly: LayerType :: 
  { _module.__default.Fib0#requires($ly) } 
  _module.__default.Fib0#requires($ly) == true);

procedure {:verboseName "Fib0 (well-formedness)"} CheckWellformed$$_module.__default.Fib0();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.Fib1
function _module.__default.Fib1($ly: LayerType) : DatatypeType
uses {
// consequence axiom for _module.__default.Fib1
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType :: 
    { _module.__default.Fib1($ly) } 
    _module.__default.Fib1#canCall() || 2 < $FunctionContextHeight
       ==> $Is(_module.__default.Fib1($ly), Tclass._module.Stream(TInt)));
// definition axiom for _module.__default.Fib1 (revealed)
axiom {:id "id87"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType :: 
    { _module.__default.Fib1($LS($ly)) } 
    _module.__default.Fib1#canCall() || 2 < $FunctionContextHeight
       ==> _module.__default.Fib0#canCall()
         && _module.__default.Fib1#canCall()
         && _module.__default.add#canCall(Lit(_module.__default.Fib0($ly)), Lit(_module.__default.Fib1($ly)))
         && _module.__default.Fib1($LS($ly))
           == Lit(#_module.Stream.Cons($Box(LitInt(1)), 
              Lit(_module.__default.add($LS($LZ), Lit(_module.__default.Fib0($ly)), Lit(_module.__default.Fib1($ly)))))));
}

function _module.__default.Fib1#canCall() : bool;

// layer synonym axiom
axiom (forall $ly: LayerType :: 
  { _module.__default.Fib1($LS($ly)) } 
  _module.__default.Fib1($LS($ly)) == _module.__default.Fib1($ly));

// fuel synonym axiom
axiom (forall $ly: LayerType :: 
  { _module.__default.Fib1(AsFuelBottom($ly)) } 
  _module.__default.Fib1($ly) == _module.__default.Fib1($LZ));

function _module.__default.Fib1#requires(LayerType) : bool;

// #requires axiom for _module.__default.Fib1
axiom (forall $ly: LayerType :: 
  { _module.__default.Fib1#requires($ly) } 
  _module.__default.Fib1#requires($ly) == true);

procedure {:verboseName "Fib1 (well-formedness)"} CheckWellformed$$_module.__default.Fib1();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.OhOnes
function _module.__default.OhOnes($ly: LayerType) : DatatypeType
uses {
// consequence axiom for _module.__default.OhOnes
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType :: 
    { _module.__default.OhOnes($ly) } 
    _module.__default.OhOnes#canCall() || 1 < $FunctionContextHeight
       ==> $Is(_module.__default.OhOnes($ly), Tclass._module.Stream(TInt)));
// definition axiom for _module.__default.OhOnes (revealed)
axiom {:id "id89"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType :: 
    { _module.__default.OhOnes($LS($ly)) } 
    _module.__default.OhOnes#canCall() || 1 < $FunctionContextHeight
       ==> _module.__default.OhOnes#canCall()
         && _module.Stream.Cons_q(Lit(_module.__default.OhOnes($ly)))
         && _module.__default.OhOnes($LS($ly))
           == Lit(#_module.Stream.Cons($Box(LitInt(0)), 
              Lit(#_module.Stream.Cons($Box(LitInt(1)), Lit(_module.Stream.tail(Lit(_module.__default.OhOnes($ly)))))))));
}

function _module.__default.OhOnes#canCall() : bool;

// layer synonym axiom
axiom (forall $ly: LayerType :: 
  { _module.__default.OhOnes($LS($ly)) } 
  _module.__default.OhOnes($LS($ly)) == _module.__default.OhOnes($ly));

// fuel synonym axiom
axiom (forall $ly: LayerType :: 
  { _module.__default.OhOnes(AsFuelBottom($ly)) } 
  _module.__default.OhOnes($ly) == _module.__default.OhOnes($LZ));

function _module.__default.OhOnes#requires(LayerType) : bool;

// #requires axiom for _module.__default.OhOnes
axiom (forall $ly: LayerType :: 
  { _module.__default.OhOnes#requires($ly) } 
  _module.__default.OhOnes#requires($ly) == true);

procedure {:verboseName "OhOnes (well-formedness)"} CheckWellformed$$_module.__default.OhOnes();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.Combine
function _module.__default.Combine(_module._default.Combine$T: Ty, 
    $ly: LayerType, 
    f#0: HandleType, 
    a#0: DatatypeType, 
    b#0: DatatypeType)
   : DatatypeType
uses {
// consequence axiom for _module.__default.Combine
axiom 1 <= $FunctionContextHeight
   ==> (forall _module._default.Combine$T: Ty, 
      $ly: LayerType, 
      f#0: HandleType, 
      a#0: DatatypeType, 
      b#0: DatatypeType :: 
    { _module.__default.Combine(_module._default.Combine$T, $ly, f#0, a#0, b#0) } 
    _module.__default.Combine#canCall(_module._default.Combine$T, f#0, a#0, b#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(f#0, 
            Tclass._System.___hTotalFunc2(_module._default.Combine$T, 
              _module._default.Combine$T, 
              _module._default.Combine$T))
           && $Is(a#0, Tclass._module.Stream(_module._default.Combine$T))
           && $Is(b#0, Tclass._module.Stream(_module._default.Combine$T)))
       ==> $Is(_module.__default.Combine(_module._default.Combine$T, $ly, f#0, a#0, b#0), 
        Tclass._module.Stream(_module._default.Combine$T)));
// alloc consequence axiom for _module.__default.Combine
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      _module._default.Combine$T: Ty, 
      $ly: LayerType, 
      f#0: HandleType, 
      a#0: DatatypeType, 
      b#0: DatatypeType :: 
    { $IsAlloc(_module.__default.Combine(_module._default.Combine$T, $ly, f#0, a#0, b#0), 
        Tclass._module.Stream(_module._default.Combine$T), 
        $Heap) } 
    (_module.__default.Combine#canCall(_module._default.Combine$T, f#0, a#0, b#0)
           || (1 < $FunctionContextHeight
             && 
            $Is(f#0, 
              Tclass._System.___hTotalFunc2(_module._default.Combine$T, 
                _module._default.Combine$T, 
                _module._default.Combine$T))
             && $IsAlloc(f#0, 
              Tclass._System.___hTotalFunc2(_module._default.Combine$T, 
                _module._default.Combine$T, 
                _module._default.Combine$T), 
              $Heap)
             && 
            $Is(a#0, Tclass._module.Stream(_module._default.Combine$T))
             && $IsAlloc(a#0, Tclass._module.Stream(_module._default.Combine$T), $Heap)
             && 
            $Is(b#0, Tclass._module.Stream(_module._default.Combine$T))
             && $IsAlloc(b#0, Tclass._module.Stream(_module._default.Combine$T), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.__default.Combine(_module._default.Combine$T, $ly, f#0, a#0, b#0), 
        Tclass._module.Stream(_module._default.Combine$T), 
        $Heap));
// definition axiom for _module.__default.Combine (revealed)
axiom {:id "id91"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.Combine$T: Ty, 
      $ly: LayerType, 
      $Heap: Heap, 
      f#0: HandleType, 
      a#0: DatatypeType, 
      b#0: DatatypeType :: 
    { _module.__default.Combine(_module._default.Combine$T, $LS($ly), f#0, a#0, b#0), $IsGoodHeap($Heap) } 
    _module.__default.Combine#canCall(_module._default.Combine$T, f#0, a#0, b#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(f#0, 
            Tclass._System.___hTotalFunc2(_module._default.Combine$T, 
              _module._default.Combine$T, 
              _module._default.Combine$T))
           && $Is(a#0, Tclass._module.Stream(_module._default.Combine$T))
           && $Is(b#0, Tclass._module.Stream(_module._default.Combine$T)))
       ==> _module.Stream.Cons_q(a#0)
         && _module.Stream.Cons_q(b#0)
         && 
        _module.Stream.Cons_q(a#0)
         && _module.Stream.Cons_q(b#0)
         && _module.__default.Combine#canCall(_module._default.Combine$T, 
          f#0, 
          _module.Stream.tail(a#0), 
          _module.Stream.tail(b#0))
         && _module.__default.Combine(_module._default.Combine$T, $LS($ly), f#0, a#0, b#0)
           == #_module.Stream.Cons(Apply2(_module._default.Combine$T, 
              _module._default.Combine$T, 
              _module._default.Combine$T, 
              $Heap, 
              f#0, 
              _module.Stream.head(a#0), 
              _module.Stream.head(b#0)), 
            _module.__default.Combine(_module._default.Combine$T, 
              $ly, 
              f#0, 
              _module.Stream.tail(a#0), 
              _module.Stream.tail(b#0))));
}

function _module.__default.Combine#canCall(_module._default.Combine$T: Ty, 
    f#0: HandleType, 
    a#0: DatatypeType, 
    b#0: DatatypeType)
   : bool;

// layer synonym axiom
axiom (forall _module._default.Combine$T: Ty, 
    $ly: LayerType, 
    f#0: HandleType, 
    a#0: DatatypeType, 
    b#0: DatatypeType :: 
  { _module.__default.Combine(_module._default.Combine$T, $LS($ly), f#0, a#0, b#0) } 
  _module.__default.Combine(_module._default.Combine$T, $LS($ly), f#0, a#0, b#0)
     == _module.__default.Combine(_module._default.Combine$T, $ly, f#0, a#0, b#0));

// fuel synonym axiom
axiom (forall _module._default.Combine$T: Ty, 
    $ly: LayerType, 
    f#0: HandleType, 
    a#0: DatatypeType, 
    b#0: DatatypeType :: 
  { _module.__default.Combine(_module._default.Combine$T, AsFuelBottom($ly), f#0, a#0, b#0) } 
  _module.__default.Combine(_module._default.Combine$T, $ly, f#0, a#0, b#0)
     == _module.__default.Combine(_module._default.Combine$T, $LZ, f#0, a#0, b#0));

function _module.__default.Combine#requires(Ty, LayerType, HandleType, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.Combine
axiom (forall _module._default.Combine$T: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    f#0: HandleType, 
    a#0: DatatypeType, 
    b#0: DatatypeType :: 
  { _module.__default.Combine#requires(_module._default.Combine$T, $ly, f#0, a#0, b#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(f#0, 
        Tclass._System.___hTotalFunc2(_module._default.Combine$T, 
          _module._default.Combine$T, 
          _module._default.Combine$T))
       && $Is(a#0, Tclass._module.Stream(_module._default.Combine$T))
       && $Is(b#0, Tclass._module.Stream(_module._default.Combine$T))
     ==> _module.__default.Combine#requires(_module._default.Combine$T, $ly, f#0, a#0, b#0)
       == true);

procedure {:verboseName "Combine (well-formedness)"} CheckWellformed$$_module.__default.Combine(_module._default.Combine$T: Ty, 
    f#0: HandleType
       where $Is(f#0, 
        Tclass._System.___hTotalFunc2(_module._default.Combine$T, 
          _module._default.Combine$T, 
          _module._default.Combine$T)), 
    a#0: DatatypeType
       where $Is(a#0, Tclass._module.Stream(_module._default.Combine$T)), 
    b#0: DatatypeType
       where $Is(b#0, Tclass._module.Stream(_module._default.Combine$T)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.nth
function _module.__default.nth(_module._default.nth$T: Ty, $ly: LayerType, n#0: int, s#0: DatatypeType) : Box
uses {
// consequence axiom for _module.__default.nth
axiom 1 <= $FunctionContextHeight
   ==> (forall _module._default.nth$T: Ty, $ly: LayerType, n#0: int, s#0: DatatypeType :: 
    { _module.__default.nth(_module._default.nth$T, $ly, n#0, s#0) } 
    _module.__default.nth#canCall(_module._default.nth$T, n#0, s#0)
         || (1 < $FunctionContextHeight
           && 
          LitInt(0) <= n#0
           && $Is(s#0, Tclass._module.Stream(_module._default.nth$T)))
       ==> $IsBox(_module.__default.nth(_module._default.nth$T, $ly, n#0, s#0), 
        _module._default.nth$T));
// alloc consequence axiom for _module.__default.nth
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      _module._default.nth$T: Ty, 
      $ly: LayerType, 
      n#0: int, 
      s#0: DatatypeType :: 
    { $IsAllocBox(_module.__default.nth(_module._default.nth$T, $ly, n#0, s#0), 
        _module._default.nth$T, 
        $Heap) } 
    (_module.__default.nth#canCall(_module._default.nth$T, n#0, s#0)
           || (1 < $FunctionContextHeight
             && 
            LitInt(0) <= n#0
             && 
            $Is(s#0, Tclass._module.Stream(_module._default.nth$T))
             && $IsAlloc(s#0, Tclass._module.Stream(_module._default.nth$T), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAllocBox(_module.__default.nth(_module._default.nth$T, $ly, n#0, s#0), 
        _module._default.nth$T, 
        $Heap));
// definition axiom for _module.__default.nth (revealed)
axiom {:id "id93"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.nth$T: Ty, $ly: LayerType, n#0: int, s#0: DatatypeType :: 
    { _module.__default.nth(_module._default.nth$T, $LS($ly), n#0, s#0) } 
    _module.__default.nth#canCall(_module._default.nth$T, n#0, s#0)
         || (1 < $FunctionContextHeight
           && 
          LitInt(0) <= n#0
           && $Is(s#0, Tclass._module.Stream(_module._default.nth$T)))
       ==> (n#0 == LitInt(0) ==> _module.Stream.Cons_q(s#0))
         && (n#0 != LitInt(0)
           ==> _module.Stream.Cons_q(s#0)
             && _module.__default.nth#canCall(_module._default.nth$T, n#0 - 1, _module.Stream.tail(s#0)))
         && _module.__default.nth(_module._default.nth$T, $LS($ly), n#0, s#0)
           == (if n#0 == LitInt(0)
             then _module.Stream.head(s#0)
             else _module.__default.nth(_module._default.nth$T, $ly, n#0 - 1, _module.Stream.tail(s#0))));
// definition axiom for _module.__default.nth for decreasing-related literals (revealed)
axiom {:id "id94"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.nth$T: Ty, $ly: LayerType, n#0: int, s#0: DatatypeType :: 
    {:weight 3} { _module.__default.nth(_module._default.nth$T, $LS($ly), LitInt(n#0), s#0) } 
    _module.__default.nth#canCall(_module._default.nth$T, LitInt(n#0), s#0)
         || (1 < $FunctionContextHeight
           && 
          LitInt(0) <= n#0
           && $Is(s#0, Tclass._module.Stream(_module._default.nth$T)))
       ==> (LitInt(n#0) == LitInt(0) ==> _module.Stream.Cons_q(s#0))
         && (LitInt(n#0) != LitInt(0)
           ==> _module.Stream.Cons_q(s#0)
             && _module.__default.nth#canCall(_module._default.nth$T, LitInt(n#0 - 1), _module.Stream.tail(s#0)))
         && _module.__default.nth(_module._default.nth$T, $LS($ly), LitInt(n#0), s#0)
           == (if LitInt(n#0) == LitInt(0)
             then _module.Stream.head(s#0)
             else _module.__default.nth(_module._default.nth$T, $LS($ly), LitInt(n#0 - 1), _module.Stream.tail(s#0))));
// definition axiom for _module.__default.nth for all literals (revealed)
axiom {:id "id95"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.nth$T: Ty, $ly: LayerType, n#0: int, s#0: DatatypeType :: 
    {:weight 3} { _module.__default.nth(_module._default.nth$T, $LS($ly), LitInt(n#0), Lit(s#0)) } 
    _module.__default.nth#canCall(_module._default.nth$T, LitInt(n#0), Lit(s#0))
         || (1 < $FunctionContextHeight
           && 
          LitInt(0) <= n#0
           && $Is(s#0, Tclass._module.Stream(_module._default.nth$T)))
       ==> (LitInt(n#0) == LitInt(0) ==> _module.Stream.Cons_q(Lit(s#0)))
         && (LitInt(n#0) != LitInt(0)
           ==> _module.Stream.Cons_q(Lit(s#0))
             && _module.__default.nth#canCall(_module._default.nth$T, LitInt(n#0 - 1), Lit(_module.Stream.tail(Lit(s#0)))))
         && _module.__default.nth(_module._default.nth$T, $LS($ly), LitInt(n#0), Lit(s#0))
           == (if LitInt(n#0) == LitInt(0)
             then _module.Stream.head(Lit(s#0))
             else _module.__default.nth(_module._default.nth$T, 
              $LS($ly), 
              LitInt(n#0 - 1), 
              Lit(_module.Stream.tail(Lit(s#0))))));
}

function _module.__default.nth#canCall(_module._default.nth$T: Ty, n#0: int, s#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall _module._default.nth$T: Ty, $ly: LayerType, n#0: int, s#0: DatatypeType :: 
  { _module.__default.nth(_module._default.nth$T, $LS($ly), n#0, s#0) } 
  _module.__default.nth(_module._default.nth$T, $LS($ly), n#0, s#0)
     == _module.__default.nth(_module._default.nth$T, $ly, n#0, s#0));

// fuel synonym axiom
axiom (forall _module._default.nth$T: Ty, $ly: LayerType, n#0: int, s#0: DatatypeType :: 
  { _module.__default.nth(_module._default.nth$T, AsFuelBottom($ly), n#0, s#0) } 
  _module.__default.nth(_module._default.nth$T, $ly, n#0, s#0)
     == _module.__default.nth(_module._default.nth$T, $LZ, n#0, s#0));

function _module.__default.nth#requires(Ty, LayerType, int, DatatypeType) : bool;

// #requires axiom for _module.__default.nth
axiom (forall _module._default.nth$T: Ty, $ly: LayerType, n#0: int, s#0: DatatypeType :: 
  { _module.__default.nth#requires(_module._default.nth$T, $ly, n#0, s#0) } 
  LitInt(0) <= n#0 && $Is(s#0, Tclass._module.Stream(_module._default.nth$T))
     ==> _module.__default.nth#requires(_module._default.nth$T, $ly, n#0, s#0) == true);

procedure {:verboseName "nth (well-formedness)"} CheckWellformed$$_module.__default.nth(_module._default.nth$T: Ty, 
    n#0: int where LitInt(0) <= n#0, 
    s#0: DatatypeType where $Is(s#0, Tclass._module.Stream(_module._default.nth$T)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "nth (well-formedness)"} CheckWellformed$$_module.__default.nth(_module._default.nth$T: Ty, n#0: int, s#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##n#0: int;
  var ##s#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $IsBox(_module.__default.nth(_module._default.nth$T, $LS($LZ), n#0, s#0), 
          _module._default.nth$T);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (n#0 == LitInt(0))
        {
            assume _module.Stream.Cons_q(s#0);
            assume {:id "id96"} _module.__default.nth(_module._default.nth$T, $LS($LZ), n#0, s#0)
               == _module.Stream.head(s#0);
            assume _module.Stream.Cons_q(s#0);
            // CheckWellformedWithResult: any expression
            assume $IsBox(_module.__default.nth(_module._default.nth$T, $LS($LZ), n#0, s#0), 
              _module._default.nth$T);
            return;
        }
        else
        {
            assert {:id "id97"} $Is(n#0 - 1, Tclass._System.nat());
            ##n#0 := n#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
            assume _module.Stream.Cons_q(s#0);
            ##s#0 := _module.Stream.tail(s#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0, Tclass._module.Stream(_module._default.nth$T), $Heap);
            assert {:id "id98"} 0 <= n#0 || ##n#0 == n#0;
            assert {:id "id99"} ##n#0 < n#0;
            assume _module.__default.nth#canCall(_module._default.nth$T, n#0 - 1, _module.Stream.tail(s#0));
            assume {:id "id100"} _module.__default.nth(_module._default.nth$T, $LS($LZ), n#0, s#0)
               == _module.__default.nth(_module._default.nth$T, $LS($LZ), n#0 - 1, _module.Stream.tail(s#0));
            assume _module.Stream.Cons_q(s#0)
               && _module.__default.nth#canCall(_module._default.nth$T, n#0 - 1, _module.Stream.tail(s#0));
            // CheckWellformedWithResult: any expression
            assume $IsBox(_module.__default.nth(_module._default.nth$T, $LS($LZ), n#0, s#0), 
              _module._default.nth$T);
            return;
        }

        assume false;
    }
}



// function declaration for _module._default.nfib
function _module.__default.nfib($ly: LayerType, n#0: int) : int
uses {
// consequence axiom for _module.__default.nfib
axiom 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.nfib($ly, n#0) } 
    _module.__default.nfib#canCall(n#0)
         || (0 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> LitInt(0) <= _module.__default.nfib($ly, n#0));
// definition axiom for _module.__default.nfib (revealed)
axiom {:id "id101"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.nfib($LS($ly), n#0) } 
    _module.__default.nfib#canCall(n#0)
         || (0 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> (2 <= n#0
           ==> _module.__default.nfib#canCall(n#0 - 2)
             && _module.__default.nfib#canCall(n#0 - 1))
         && _module.__default.nfib($LS($ly), n#0)
           == (if n#0 < 2
             then n#0
             else _module.__default.nfib($ly, n#0 - 2) + _module.__default.nfib($ly, n#0 - 1)));
// definition axiom for _module.__default.nfib for all literals (revealed)
axiom {:id "id102"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    {:weight 3} { _module.__default.nfib($LS($ly), LitInt(n#0)) } 
    _module.__default.nfib#canCall(LitInt(n#0))
         || (0 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> (!Lit(n#0 < 2)
           ==> _module.__default.nfib#canCall(LitInt(n#0 - 2))
             && _module.__default.nfib#canCall(LitInt(n#0 - 1)))
         && _module.__default.nfib($LS($ly), LitInt(n#0))
           == (if n#0 < 2
             then n#0
             else _module.__default.nfib($LS($ly), LitInt(n#0 - 2))
               + _module.__default.nfib($LS($ly), LitInt(n#0 - 1))));
}

function _module.__default.nfib#canCall(n#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.nfib($LS($ly), n#0) } 
  _module.__default.nfib($LS($ly), n#0) == _module.__default.nfib($ly, n#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.nfib(AsFuelBottom($ly), n#0) } 
  _module.__default.nfib($ly, n#0) == _module.__default.nfib($LZ, n#0));

function _module.__default.nfib#requires(LayerType, int) : bool;

// #requires axiom for _module.__default.nfib
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.nfib#requires($ly, n#0) } 
  LitInt(0) <= n#0 ==> _module.__default.nfib#requires($ly, n#0) == true);

procedure {:verboseName "nfib (well-formedness)"} CheckWellformed$$_module.__default.nfib(n#0: int where LitInt(0) <= n#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "nfib (well-formedness)"} CheckWellformed$$_module.__default.nfib(n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##n#0: int;
  var ##n#1: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume LitInt(0) <= _module.__default.nfib($LS($LZ), n#0);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (n#0 < 2)
        {
            assume {:id "id103"} _module.__default.nfib($LS($LZ), n#0) == n#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.nfib($LS($LZ), n#0), Tclass._System.nat());
            return;
        }
        else
        {
            assert {:id "id104"} $Is(n#0 - 2, Tclass._System.nat());
            ##n#0 := n#0 - 2;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
            assert {:id "id105"} 0 <= n#0 || ##n#0 == n#0;
            assert {:id "id106"} ##n#0 < n#0;
            assume _module.__default.nfib#canCall(n#0 - 2);
            assert {:id "id107"} $Is(n#0 - 1, Tclass._System.nat());
            ##n#1 := n#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1, Tclass._System.nat(), $Heap);
            assert {:id "id108"} 0 <= n#0 || ##n#1 == n#0;
            assert {:id "id109"} ##n#1 < n#0;
            assume _module.__default.nfib#canCall(n#0 - 1);
            assert {:id "id110"} $Is(_module.__default.nfib($LS($LZ), n#0 - 2)
                 + _module.__default.nfib($LS($LZ), n#0 - 1), 
              Tclass._System.nat());
            assume {:id "id111"} _module.__default.nfib($LS($LZ), n#0)
               == _module.__default.nfib($LS($LZ), n#0 - 2)
                 + _module.__default.nfib($LS($LZ), n#0 - 1);
            assume _module.__default.nfib#canCall(n#0 - 2)
               && _module.__default.nfib#canCall(n#0 - 1);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.nfib($LS($LZ), n#0), Tclass._System.nat());
            return;
        }

        assume false;
    }
}



procedure {:verboseName "Ones_Correct (well-formedness)"} CheckWellFormed$$_module.__default.Ones__Correct(n#0: int where LitInt(0) <= n#0);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Ones_Correct (call)"} Call$$_module.__default.Ones__Correct(n#0: int where LitInt(0) <= n#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.ones#canCall()
     && _module.__default.nth#canCall(TInt, n#0, Lit(_module.__default.ones($LS($LZ))));
  ensures {:id "id113"} $Unbox(_module.__default.nth(TInt, $LS($LS($LZ)), n#0, Lit(_module.__default.ones($LS($LS($LZ)))))): int
     == LitInt(1);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Ones_Correct (correctness)"} Impl$$_module.__default.Ones__Correct(n#0: int where LitInt(0) <= n#0) returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.ones#canCall()
     && _module.__default.nth#canCall(TInt, n#0, Lit(_module.__default.ones($LS($LZ))));
  ensures {:id "id114"} $Unbox(_module.__default.nth(TInt, $LS($LS($LZ)), n#0, Lit(_module.__default.ones($LS($LS($LZ)))))): int
     == LitInt(1);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Ones_Correct (correctness)"} Impl$$_module.__default.Ones__Correct(n#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;

    // AddMethodImpl: Ones_Correct, Impl$$_module.__default.Ones__Correct
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#n0#0: int :: 
      { $Unbox(_module.__default.nth(TInt, $LS($LZ), $ih#n0#0, Lit(_module.__default.ones($LS($LZ))))): int } 
      LitInt(0) <= $ih#n0#0 && Lit(true) && 0 <= $ih#n0#0 && $ih#n0#0 < n#0
         ==> $Unbox(_module.__default.nth(TInt, $LS($LZ), $ih#n0#0, Lit(_module.__default.ones($LS($LZ))))): int
           == LitInt(1));
    $_reverifyPost := false;
}



procedure {:verboseName "OhOnesTail_Correct (well-formedness)"} CheckWellFormed$$_module.__default.OhOnesTail__Correct();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "OhOnesTail_Correct (call)"} Call$$_module.__default.OhOnesTail__Correct();
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Stream(Lit(_module.Stream.tail(Lit(_module.__default.OhOnes($LS($LZ))))))
     && $IsA#_module.Stream(Lit(_module.__default.ones($LS($LZ))))
     && 
    _module.__default.OhOnes#canCall()
     && _module.Stream.Cons_q(Lit(_module.__default.OhOnes($LS($LZ))))
     && _module.__default.ones#canCall();
  ensures {:id "id116"} $Eq#_module.Stream(TInt, 
    TInt, 
    $LS($LS($LZ)), 
    _module.Stream.tail(Lit(_module.__default.OhOnes($LS($LS($LZ))))), 
    _module.__default.ones($LS($LS($LZ))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "OhOnesTail_Correct# (co-call)"} CoCall$$_module.__default.OhOnesTail__Correct_h(_k#0: Box);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.OhOnes#canCall()
     && _module.Stream.Cons_q(Lit(_module.__default.OhOnes($LS($LZ))))
     && _module.__default.ones#canCall();
  free ensures {:id "id117"} $PrefixEq#_module.Stream(TInt, 
    TInt, 
    _k#0, 
    $LS($LS($LZ)), 
    Lit(_module.Stream.tail(Lit(_module.__default.OhOnes($LS($LZ))))), 
    Lit(_module.__default.ones($LS($LZ))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "OhOnesTail_Correct# (correctness)"} Impl$$_module.__default.OhOnesTail__Correct_h(_k#0: Box) returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.OhOnes#canCall()
     && _module.Stream.Cons_q(Lit(_module.__default.OhOnes($LS($LZ))))
     && _module.__default.ones#canCall();
  ensures {:id "id118"} $PrefixEq#_module.Stream(TInt, 
      TInt, 
      _k#0, 
      $LS($LS($LZ)), 
      Lit(_module.Stream.tail(Lit(_module.__default.OhOnes($LS($LZ))))), 
      Lit(_module.__default.ones($LS($LZ))))
     || (0 < ORD#Offset(_k#0)
       ==> 
      _module.Stream.Cons_q(Lit(_module.Stream.tail(Lit(_module.__default.OhOnes($LS($LS($LZ)))))))
       ==> _module.Stream.Cons_q(Lit(_module.__default.ones($LS($LS($LZ)))))
         && 
        $Unbox(_module.Stream.head(Lit(_module.Stream.tail(Lit(_module.__default.OhOnes($LS($LS($LZ)))))))): int
           == $Unbox(_module.Stream.head(Lit(_module.__default.ones($LS($LS($LZ)))))): int
         && $PrefixEq#_module.Stream(TInt, 
          TInt, 
          ORD#Minus(_k#0, ORD#FromNat(1)), 
          $LS($LS($LZ)), 
          _module.Stream.tail(Lit(_module.Stream.tail(Lit(_module.__default.OhOnes($LS($LS($LZ))))))), 
          _module.Stream.tail(Lit(_module.__default.ones($LS($LS($LZ)))))));
  ensures {:id "id119"} $PrefixEq#_module.Stream(TInt, 
      TInt, 
      _k#0, 
      $LS($LS($LZ)), 
      Lit(_module.Stream.tail(Lit(_module.__default.OhOnes($LS($LZ))))), 
      Lit(_module.__default.ones($LS($LZ))))
     || 
    (0 < ORD#Offset(_k#0)
       ==> 
      _module.Stream.Cons_q(Lit(_module.Stream.tail(Lit(_module.__default.OhOnes($LS($LS($LZ)))))))
       ==> _module.Stream.Cons_q(Lit(_module.__default.ones($LS($LS($LZ)))))
         && 
        $Unbox(_module.Stream.head(Lit(_module.Stream.tail(Lit(_module.__default.OhOnes($LS($LS($LZ)))))))): int
           == $Unbox(_module.Stream.head(Lit(_module.__default.ones($LS($LS($LZ)))))): int
         && $PrefixEq#_module.Stream(TInt, 
          TInt, 
          ORD#Minus(_k#0, ORD#FromNat(1)), 
          $LS($LS($LZ)), 
          _module.Stream.tail(Lit(_module.Stream.tail(Lit(_module.__default.OhOnes($LS($LS($LZ))))))), 
          _module.Stream.tail(Lit(_module.__default.ones($LS($LS($LZ)))))))
     || (_k#0 != ORD#FromNat(0) && ORD#IsLimit(_k#0)
       ==> $Eq#_module.Stream(TInt, 
        TInt, 
        $LS($LS($LZ)), 
        Lit(_module.Stream.tail(Lit(_module.__default.OhOnes($LS($LZ))))), 
        Lit(_module.__default.ones($LS($LZ)))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "OhOnesTail_Correct# (correctness)"} Impl$$_module.__default.OhOnesTail__Correct_h(_k#0: Box) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: OhOnesTail_Correct#, Impl$$_module.__default.OhOnesTail__Correct_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box :: 
      { $PrefixEq#_module.Stream(TInt, 
          TInt, 
          $ih#_k0#0, 
          $LS($LS($LZ)), 
          Lit(_module.Stream.tail(Lit(_module.__default.OhOnes($LS($LZ))))), 
          Lit(_module.__default.ones($LS($LZ)))) } 
      Lit(true) && ORD#Less($ih#_k0#0, _k#0)
         ==> $PrefixEq#_module.Stream(TInt, 
          TInt, 
          $ih#_k0#0, 
          $LS($LS($LZ)), 
          Lit(_module.Stream.tail(Lit(_module.__default.OhOnes($LS($LZ))))), 
          Lit(_module.__default.ones($LS($LZ)))));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(143,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(143,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#0: Box :: 
          { $PrefixEq#_module.Stream(TInt, 
              TInt, 
              _k'#0, 
              $LS($LS($LZ)), 
              _module.Stream.tail(_module.__default.OhOnes($LS($LZ))), 
              _module.__default.ones($LS($LZ))) } 
            { ORD#Less(_k'#0, _k#0) } 
          ORD#Less(_k'#0, _k#0)
             ==> $PrefixEq#_module.Stream(TInt, 
              TInt, 
              _k'#0, 
              $LS($LS($LZ)), 
              Lit(_module.Stream.tail(Lit(_module.__default.OhOnes($LS($LZ))))), 
              Lit(_module.__default.ones($LS($LZ)))));
    }
}



procedure {:verboseName "OhOnes_Correct (well-formedness)"} CheckWellFormed$$_module.__default.OhOnes__Correct();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "OhOnes_Correct (call)"} Call$$_module.__default.OhOnes__Correct();
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Stream(Lit(_module.__default.OhOnes($LS($LZ))))
     && 
    _module.__default.OhOnes#canCall()
     && _module.__default.ones#canCall();
  ensures {:id "id121"} $Eq#_module.Stream(TInt, 
    TInt, 
    $LS($LS($LZ)), 
    _module.__default.OhOnes($LS($LS($LZ))), 
    #_module.Stream.Cons($Box(LitInt(0)), Lit(_module.__default.ones($LS($LS($LZ))))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "OhOnes_Correct (correctness)"} Impl$$_module.__default.OhOnes__Correct() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Stream(Lit(_module.__default.OhOnes($LS($LZ))))
     && 
    _module.__default.OhOnes#canCall()
     && _module.__default.ones#canCall();
  ensures {:id "id122"} $Eq#_module.Stream(TInt, 
    TInt, 
    $LS($LS($LZ)), 
    _module.__default.OhOnes($LS($LS($LZ))), 
    #_module.Stream.Cons($Box(LitInt(0)), Lit(_module.__default.ones($LS($LS($LZ))))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "OhOnes_Correct (correctness)"} Impl$$_module.__default.OhOnes__Correct() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: OhOnes_Correct, Impl$$_module.__default.OhOnes__Correct
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(149,21)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id123"} Call$$_module.__default.OhOnesTail__Correct();
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "OhOnes_Correct' (well-formedness)"} CheckWellFormed$$_module.__default.OhOnes__Correct_k(n#0: int where LitInt(0) <= n#0);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "OhOnes_Correct' (call)"} Call$$_module.__default.OhOnes__Correct_k(n#0: int where LitInt(0) <= n#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.OhOnes#canCall()
     && _module.__default.nth#canCall(TInt, n#0, Lit(_module.__default.OhOnes($LS($LZ))));
  ensures {:id "id125"} $Unbox(_module.__default.nth(TInt, $LS($LS($LZ)), n#0, Lit(_module.__default.OhOnes($LS($LS($LZ)))))): int
     == (if n#0 == LitInt(0) then 0 else 1);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "OhOnes_Correct' (correctness)"} Impl$$_module.__default.OhOnes__Correct_k(n#0: int where LitInt(0) <= n#0) returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.OhOnes#canCall()
     && _module.__default.nth#canCall(TInt, n#0, Lit(_module.__default.OhOnes($LS($LZ))));
  ensures {:id "id126"} $Unbox(_module.__default.nth(TInt, $LS($LS($LZ)), n#0, Lit(_module.__default.OhOnes($LS($LS($LZ)))))): int
     == (if n#0 == LitInt(0) then 0 else 1);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "OhOnes_Correct' (correctness)"} Impl$$_module.__default.OhOnes__Correct_k(n#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var n##0_0: int;

    // AddMethodImpl: OhOnes_Correct', Impl$$_module.__default.OhOnes__Correct_k
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#n0#0: int :: 
      { $Unbox(_module.__default.nth(TInt, $LS($LZ), $ih#n0#0, Lit(_module.__default.OhOnes($LS($LZ))))): int } 
      LitInt(0) <= $ih#n0#0 && Lit(true) && 0 <= $ih#n0#0 && $ih#n0#0 < n#0
         ==> $Unbox(_module.__default.nth(TInt, $LS($LZ), $ih#n0#0, Lit(_module.__default.OhOnes($LS($LZ))))): int
           == (if $ih#n0#0 == LitInt(0) then 0 else 1));
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(155,17)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id127"} Call$$_module.__default.OhOnes__Correct();
    // TrCallStmt: After ProcessCallStmt
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(156,3)
    assume true;
    if (n#0 != 0)
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(157,17)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id128"} $Is(n#0 - 1, Tclass._System.nat());
        n##0_0 := n#0 - 1;
        call {:id "id129"} Call$$_module.__default.Ones__Correct(n##0_0);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
    }
}



procedure {:verboseName "C_Correct (well-formedness)"} CheckWellFormed$$_module.__default.C__Correct(n#0: int where LitInt(0) <= n#0, k#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "C_Correct (well-formedness)"} CheckWellFormed$$_module.__default.C__Correct(n#0: int, k#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##n#0: int;
  var ##s#0: DatatypeType;
  var ##f#0: HandleType;
  var ##a#0: DatatypeType;
  var ##b#0: DatatypeType;
  var ##n#1: int;


    // AddMethodImpl: C_Correct, CheckWellFormed$$_module.__default.C__Correct
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume old($Heap) == $Heap;
    ##n#0 := n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
    assert {:id "id130"} 0 != $FunctionContextHeight;
    ##f#0 := _module.__default.plus#Handle();
    // assume allocatedness for argument to function
    assume $IsAlloc(##f#0, Tclass._System.___hTotalFunc2(TInt, TInt, TInt), $Heap);
    assume _module.__default.ones#canCall();
    assume _module.Stream.Cons_q(Lit(_module.__default.ones($LS($LZ))));
    ##a#0 := Lit(_module.__default.ones($LS($LZ)));
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#0, Tclass._module.Stream(TInt), $Heap);
    ##n#1 := k#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#1, TInt, $Heap);
    assume _module.__default.from#canCall(k#0);
    assume _module.Stream.Cons_q(_module.__default.from($LS($LZ), k#0));
    ##b#0 := _module.__default.from($LS($LZ), k#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#0, Tclass._module.Stream(TInt), $Heap);
    assume _module.__default.Combine#canCall(TInt, 
      _module.__default.plus#Handle(), 
      Lit(_module.__default.ones($LS($LZ))), 
      _module.__default.from($LS($LZ), k#0));
    assume _module.Stream.Cons_q(_module.__default.Combine(TInt, 
        $LS($LZ), 
        _module.__default.plus#Handle(), 
        Lit(_module.__default.ones($LS($LZ))), 
        _module.__default.from($LS($LZ), k#0)));
    ##s#0 := _module.__default.Combine(TInt, 
      $LS($LZ), 
      _module.__default.plus#Handle(), 
      Lit(_module.__default.ones($LS($LZ))), 
      _module.__default.from($LS($LZ), k#0));
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#0, Tclass._module.Stream(TInt), $Heap);
    assume _module.__default.nth#canCall(TInt, 
      n#0, 
      _module.__default.Combine(TInt, 
        $LS($LZ), 
        _module.__default.plus#Handle(), 
        Lit(_module.__default.ones($LS($LZ))), 
        _module.__default.from($LS($LZ), k#0)));
    assume {:id "id131"} $Unbox(_module.__default.nth(TInt, 
          $LS($LZ), 
          n#0, 
          _module.__default.Combine(TInt, 
            $LS($LZ), 
            _module.__default.plus#Handle(), 
            Lit(_module.__default.ones($LS($LZ))), 
            _module.__default.from($LS($LZ), k#0)))): int
       == k#0 + 1 + n#0;
}



procedure {:verboseName "C_Correct (call)"} Call$$_module.__default.C__Correct(n#0: int where LitInt(0) <= n#0, k#0: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.ones#canCall()
     && _module.__default.from#canCall(k#0)
     && _module.__default.Combine#canCall(TInt, 
      _module.__default.plus#Handle(), 
      Lit(_module.__default.ones($LS($LZ))), 
      _module.__default.from($LS($LZ), k#0))
     && _module.__default.nth#canCall(TInt, 
      n#0, 
      _module.__default.Combine(TInt, 
        $LS($LZ), 
        _module.__default.plus#Handle(), 
        Lit(_module.__default.ones($LS($LZ))), 
        _module.__default.from($LS($LZ), k#0)));
  ensures {:id "id132"} $Unbox(_module.__default.nth(TInt, 
        $LS($LS($LZ)), 
        n#0, 
        _module.__default.Combine(TInt, 
          $LS($LS($LZ)), 
          _module.__default.plus#Handle(), 
          Lit(_module.__default.ones($LS($LS($LZ)))), 
          _module.__default.from($LS($LS($LZ)), k#0)))): int
     == k#0 + 1 + n#0;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "C_Correct (correctness)"} Impl$$_module.__default.C__Correct(n#0: int where LitInt(0) <= n#0, k#0: int) returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.ones#canCall()
     && _module.__default.from#canCall(k#0)
     && _module.__default.Combine#canCall(TInt, 
      _module.__default.plus#Handle(), 
      Lit(_module.__default.ones($LS($LZ))), 
      _module.__default.from($LS($LZ), k#0))
     && _module.__default.nth#canCall(TInt, 
      n#0, 
      _module.__default.Combine(TInt, 
        $LS($LZ), 
        _module.__default.plus#Handle(), 
        Lit(_module.__default.ones($LS($LZ))), 
        _module.__default.from($LS($LZ), k#0)));
  ensures {:id "id133"} $Unbox(_module.__default.nth(TInt, 
        $LS($LS($LZ)), 
        n#0, 
        _module.__default.Combine(TInt, 
          $LS($LS($LZ)), 
          _module.__default.plus#Handle(), 
          Lit(_module.__default.ones($LS($LS($LZ)))), 
          _module.__default.from($LS($LS($LZ)), k#0)))): int
     == k#0 + 1 + n#0;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "C_Correct (correctness)"} Impl$$_module.__default.C__Correct(n#0: int, k#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;

    // AddMethodImpl: C_Correct, Impl$$_module.__default.C__Correct
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#n0#0: int, $ih#k0#0: int :: 
      { $Unbox(_module.__default.nth(TInt, 
            $LS($LZ), 
            $ih#n0#0, 
            _module.__default.Combine(TInt, 
              $LS($LZ), 
              _module.__default.plus#Handle(), 
              Lit(_module.__default.ones($LS($LZ))), 
              _module.__default.from($LS($LZ), $ih#k0#0)))): int } 
      LitInt(0) <= $ih#n0#0
           && Lit(true)
           && ((0 <= $ih#n0#0 && $ih#n0#0 < n#0)
             || ($ih#n0#0 == n#0 && 0 <= $ih#k0#0 && $ih#k0#0 < k#0))
         ==> $Unbox(_module.__default.nth(TInt, 
              $LS($LZ), 
              $ih#n0#0, 
              _module.__default.Combine(TInt, 
                $LS($LZ), 
                _module.__default.plus#Handle(), 
                Lit(_module.__default.ones($LS($LZ))), 
                _module.__default.from($LS($LZ), $ih#k0#0)))): int
           == $ih#k0#0 + 1 + $ih#n0#0);
    $_reverifyPost := false;
}



procedure {:verboseName "CombinePlus_Correct (well-formedness)"} CheckWellFormed$$_module.__default.CombinePlus__Correct(a#0: DatatypeType
       where $Is(a#0, Tclass._module.Stream(TInt))
         && $IsAlloc(a#0, Tclass._module.Stream(TInt), $Heap)
         && $IsA#_module.Stream(a#0), 
    b#0: DatatypeType
       where $Is(b#0, Tclass._module.Stream(TInt))
         && $IsAlloc(b#0, Tclass._module.Stream(TInt), $Heap)
         && $IsA#_module.Stream(b#0));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "CombinePlus_Correct (well-formedness)"} CheckWellFormed$$_module.__default.CombinePlus__Correct(a#0: DatatypeType, b#0: DatatypeType)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##f#0: HandleType;
  var ##a#0: DatatypeType;
  var ##b#0: DatatypeType;
  var ##a#1: DatatypeType;
  var ##b#1: DatatypeType;


    // AddMethodImpl: CombinePlus_Correct, CheckWellFormed$$_module.__default.CombinePlus__Correct
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume old($Heap) == $Heap;
    assert {:id "id134"} 0 != $FunctionContextHeight;
    ##f#0 := _module.__default.plus#Handle();
    // assume allocatedness for argument to function
    assume $IsAlloc(##f#0, Tclass._System.___hTotalFunc2(TInt, TInt, TInt), $Heap);
    ##a#0 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#0, Tclass._module.Stream(TInt), $Heap);
    ##b#0 := b#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#0, Tclass._module.Stream(TInt), $Heap);
    assume _module.__default.Combine#canCall(TInt, _module.__default.plus#Handle(), a#0, b#0);
    assume _module.Stream.Cons_q(_module.__default.Combine(TInt, $LS($LZ), _module.__default.plus#Handle(), a#0, b#0));
    ##a#1 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#1, Tclass._module.Stream(TInt), $Heap);
    ##b#1 := b#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#1, Tclass._module.Stream(TInt), $Heap);
    assume _module.__default.add#canCall(a#0, b#0);
    assume _module.Stream.Cons_q(_module.__default.add($LS($LZ), a#0, b#0));
    assume {:id "id135"} $Eq#_module.Stream(TInt, 
      TInt, 
      $LS($LS($LZ)), 
      _module.__default.Combine(TInt, $LS($LZ), _module.__default.plus#Handle(), a#0, b#0), 
      _module.__default.add($LS($LZ), a#0, b#0));
}



procedure {:verboseName "CombinePlus_Correct (call)"} Call$$_module.__default.CombinePlus__Correct(a#0: DatatypeType
       where $Is(a#0, Tclass._module.Stream(TInt))
         && $IsAlloc(a#0, Tclass._module.Stream(TInt), $Heap)
         && $IsA#_module.Stream(a#0), 
    b#0: DatatypeType
       where $Is(b#0, Tclass._module.Stream(TInt))
         && $IsAlloc(b#0, Tclass._module.Stream(TInt), $Heap)
         && $IsA#_module.Stream(b#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Stream(_module.__default.Combine(TInt, $LS($LZ), _module.__default.plus#Handle(), a#0, b#0))
     && $IsA#_module.Stream(_module.__default.add($LS($LZ), a#0, b#0))
     && 
    _module.__default.Combine#canCall(TInt, _module.__default.plus#Handle(), a#0, b#0)
     && _module.__default.add#canCall(a#0, b#0);
  ensures {:id "id136"} $Eq#_module.Stream(TInt, 
    TInt, 
    $LS($LS($LZ)), 
    _module.__default.Combine(TInt, $LS($LS($LZ)), _module.__default.plus#Handle(), a#0, b#0), 
    _module.__default.add($LS($LS($LZ)), a#0, b#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "CombinePlus_Correct# (co-call)"} CoCall$$_module.__default.CombinePlus__Correct_h(_k#0: Box, 
    a#1: DatatypeType
       where $Is(a#1, Tclass._module.Stream(TInt))
         && $IsAlloc(a#1, Tclass._module.Stream(TInt), $Heap)
         && $IsA#_module.Stream(a#1), 
    b#1: DatatypeType
       where $Is(b#1, Tclass._module.Stream(TInt))
         && $IsAlloc(b#1, Tclass._module.Stream(TInt), $Heap)
         && $IsA#_module.Stream(b#1));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Combine#canCall(TInt, _module.__default.plus#Handle(), a#1, b#1)
     && _module.__default.add#canCall(a#1, b#1);
  free ensures {:id "id137"} $PrefixEq#_module.Stream(TInt, 
    TInt, 
    _k#0, 
    $LS($LS($LZ)), 
    _module.__default.Combine(TInt, $LS($LZ), _module.__default.plus#Handle(), a#1, b#1), 
    _module.__default.add($LS($LZ), a#1, b#1));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "CombinePlus_Correct# (correctness)"} Impl$$_module.__default.CombinePlus__Correct_h(_k#0: Box, 
    a#1: DatatypeType
       where $Is(a#1, Tclass._module.Stream(TInt))
         && $IsAlloc(a#1, Tclass._module.Stream(TInt), $Heap)
         && $IsA#_module.Stream(a#1), 
    b#1: DatatypeType
       where $Is(b#1, Tclass._module.Stream(TInt))
         && $IsAlloc(b#1, Tclass._module.Stream(TInt), $Heap)
         && $IsA#_module.Stream(b#1))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Combine#canCall(TInt, _module.__default.plus#Handle(), a#1, b#1)
     && _module.__default.add#canCall(a#1, b#1);
  ensures {:id "id138"} $PrefixEq#_module.Stream(TInt, 
      TInt, 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.Combine(TInt, $LS($LZ), _module.__default.plus#Handle(), a#1, b#1), 
      _module.__default.add($LS($LZ), a#1, b#1))
     || (0 < ORD#Offset(_k#0)
       ==> 
      _module.Stream.Cons_q(_module.__default.Combine(TInt, $LS($LS($LZ)), _module.__default.plus#Handle(), a#1, b#1))
       ==> _module.Stream.Cons_q(_module.__default.add($LS($LS($LZ)), a#1, b#1))
         && 
        $Unbox(_module.Stream.head(_module.__default.Combine(TInt, $LS($LS($LZ)), _module.__default.plus#Handle(), a#1, b#1))): int
           == $Unbox(_module.Stream.head(_module.__default.add($LS($LS($LZ)), a#1, b#1))): int
         && $PrefixEq#_module.Stream(TInt, 
          TInt, 
          ORD#Minus(_k#0, ORD#FromNat(1)), 
          $LS($LS($LZ)), 
          _module.Stream.tail(_module.__default.Combine(TInt, $LS($LS($LZ)), _module.__default.plus#Handle(), a#1, b#1)), 
          _module.Stream.tail(_module.__default.add($LS($LS($LZ)), a#1, b#1))));
  ensures {:id "id139"} $PrefixEq#_module.Stream(TInt, 
      TInt, 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.Combine(TInt, $LS($LZ), _module.__default.plus#Handle(), a#1, b#1), 
      _module.__default.add($LS($LZ), a#1, b#1))
     || 
    (0 < ORD#Offset(_k#0)
       ==> 
      _module.Stream.Cons_q(_module.__default.Combine(TInt, $LS($LS($LZ)), _module.__default.plus#Handle(), a#1, b#1))
       ==> _module.Stream.Cons_q(_module.__default.add($LS($LS($LZ)), a#1, b#1))
         && 
        $Unbox(_module.Stream.head(_module.__default.Combine(TInt, $LS($LS($LZ)), _module.__default.plus#Handle(), a#1, b#1))): int
           == $Unbox(_module.Stream.head(_module.__default.add($LS($LS($LZ)), a#1, b#1))): int
         && $PrefixEq#_module.Stream(TInt, 
          TInt, 
          ORD#Minus(_k#0, ORD#FromNat(1)), 
          $LS($LS($LZ)), 
          _module.Stream.tail(_module.__default.Combine(TInt, $LS($LS($LZ)), _module.__default.plus#Handle(), a#1, b#1)), 
          _module.Stream.tail(_module.__default.add($LS($LS($LZ)), a#1, b#1))))
     || (_k#0 != ORD#FromNat(0) && ORD#IsLimit(_k#0)
       ==> $Eq#_module.Stream(TInt, 
        TInt, 
        $LS($LS($LZ)), 
        _module.__default.Combine(TInt, $LS($LZ), _module.__default.plus#Handle(), a#1, b#1), 
        _module.__default.add($LS($LZ), a#1, b#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "CombinePlus_Correct# (correctness)"} Impl$$_module.__default.CombinePlus__Correct_h(_k#0: Box, a#1: DatatypeType, b#1: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: CombinePlus_Correct#, Impl$$_module.__default.CombinePlus__Correct_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Stream(a#1);
    assume $IsA#_module.Stream(b#1);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box, $ih#a0#0: DatatypeType, $ih#b0#0: DatatypeType :: 
      { $PrefixEq#_module.Stream(TInt, 
          TInt, 
          $ih#_k0#0, 
          $LS($LS($LZ)), 
          _module.__default.Combine(TInt, $LS($LZ), _module.__default.plus#Handle(), $ih#a0#0, $ih#b0#0), 
          _module.__default.add($LS($LZ), $ih#a0#0, $ih#b0#0)) } 
      $Is($ih#a0#0, Tclass._module.Stream(TInt))
           && $Is($ih#b0#0, Tclass._module.Stream(TInt))
           && Lit(true)
           && ORD#Less($ih#_k0#0, _k#0)
         ==> $PrefixEq#_module.Stream(TInt, 
          TInt, 
          $ih#_k0#0, 
          $LS($LS($LZ)), 
          _module.__default.Combine(TInt, $LS($LZ), _module.__default.plus#Handle(), $ih#a0#0, $ih#b0#0), 
          _module.__default.add($LS($LZ), $ih#a0#0, $ih#b0#0)));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(168,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(168,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#0: Box, a#2: DatatypeType, b#2: DatatypeType :: 
          { _module.__default.add($LS($LZ), a#2, b#2), ORD#Less(_k'#0, _k#0) } 
            { _module.__default.Combine(TInt, $LS($LZ), _module.__default.plus#Handle(), a#2, b#2), ORD#Less(_k'#0, _k#0) } 
          $Is(a#2, Tclass._module.Stream(TInt))
               && $Is(b#2, Tclass._module.Stream(TInt))
               && ORD#Less(_k'#0, _k#0)
             ==> $PrefixEq#_module.Stream(TInt, 
              TInt, 
              _k'#0, 
              $LS($LS($LZ)), 
              _module.__default.Combine(TInt, $LS($LZ), _module.__default.plus#Handle(), a#2, b#2), 
              _module.__default.add($LS($LZ), a#2, b#2)));
    }
}



procedure {:verboseName "add_Correct (well-formedness)"} CheckWellFormed$$_module.__default.add__Correct(n#0: int where LitInt(0) <= n#0, 
    a#0: DatatypeType
       where $Is(a#0, Tclass._module.Stream(TInt))
         && $IsAlloc(a#0, Tclass._module.Stream(TInt), $Heap)
         && $IsA#_module.Stream(a#0), 
    b#0: DatatypeType
       where $Is(b#0, Tclass._module.Stream(TInt))
         && $IsAlloc(b#0, Tclass._module.Stream(TInt), $Heap)
         && $IsA#_module.Stream(b#0));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "add_Correct (call)"} Call$$_module.__default.add__Correct(n#0: int where LitInt(0) <= n#0, 
    a#0: DatatypeType
       where $Is(a#0, Tclass._module.Stream(TInt))
         && $IsAlloc(a#0, Tclass._module.Stream(TInt), $Heap)
         && $IsA#_module.Stream(a#0), 
    b#0: DatatypeType
       where $Is(b#0, Tclass._module.Stream(TInt))
         && $IsAlloc(b#0, Tclass._module.Stream(TInt), $Heap)
         && $IsA#_module.Stream(b#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.add#canCall(a#0, b#0)
     && _module.__default.nth#canCall(TInt, n#0, _module.__default.add($LS($LZ), a#0, b#0))
     && 
    _module.__default.nth#canCall(TInt, n#0, a#0)
     && _module.__default.nth#canCall(TInt, n#0, b#0);
  ensures {:id "id141"} $Unbox(_module.__default.nth(TInt, $LS($LS($LZ)), n#0, _module.__default.add($LS($LS($LZ)), a#0, b#0))): int
     == $Unbox(_module.__default.nth(TInt, $LS($LS($LZ)), n#0, a#0)): int
       + $Unbox(_module.__default.nth(TInt, $LS($LS($LZ)), n#0, b#0)): int;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "add_Correct (correctness)"} Impl$$_module.__default.add__Correct(n#0: int where LitInt(0) <= n#0, 
    a#0: DatatypeType
       where $Is(a#0, Tclass._module.Stream(TInt))
         && $IsAlloc(a#0, Tclass._module.Stream(TInt), $Heap)
         && $IsA#_module.Stream(a#0), 
    b#0: DatatypeType
       where $Is(b#0, Tclass._module.Stream(TInt))
         && $IsAlloc(b#0, Tclass._module.Stream(TInt), $Heap)
         && $IsA#_module.Stream(b#0))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.add#canCall(a#0, b#0)
     && _module.__default.nth#canCall(TInt, n#0, _module.__default.add($LS($LZ), a#0, b#0))
     && 
    _module.__default.nth#canCall(TInt, n#0, a#0)
     && _module.__default.nth#canCall(TInt, n#0, b#0);
  ensures {:id "id142"} $Unbox(_module.__default.nth(TInt, $LS($LS($LZ)), n#0, _module.__default.add($LS($LS($LZ)), a#0, b#0))): int
     == $Unbox(_module.__default.nth(TInt, $LS($LS($LZ)), n#0, a#0)): int
       + $Unbox(_module.__default.nth(TInt, $LS($LS($LZ)), n#0, b#0)): int;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "add_Correct (correctness)"} Impl$$_module.__default.add__Correct(n#0: int, a#0: DatatypeType, b#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;

    // AddMethodImpl: add_Correct, Impl$$_module.__default.add__Correct
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Stream(a#0);
    assume $IsA#_module.Stream(b#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#n0#0: int, $ih#a0#0: DatatypeType, $ih#b0#0: DatatypeType :: 
      { $Unbox(_module.__default.nth(TInt, $LS($LZ), $ih#n0#0, _module.__default.add($LS($LZ), $ih#a0#0, $ih#b0#0))): int } 
      LitInt(0) <= $ih#n0#0
           && $Is($ih#a0#0, Tclass._module.Stream(TInt))
           && $Is($ih#b0#0, Tclass._module.Stream(TInt))
           && Lit(true)
           && 
          0 <= $ih#n0#0
           && $ih#n0#0 < n#0
         ==> $Unbox(_module.__default.nth(TInt, $LS($LZ), $ih#n0#0, _module.__default.add($LS($LZ), $ih#a0#0, $ih#b0#0))): int
           == $Unbox(_module.__default.nth(TInt, $LS($LZ), $ih#n0#0, $ih#a0#0)): int
             + $Unbox(_module.__default.nth(TInt, $LS($LZ), $ih#n0#0, $ih#b0#0)): int);
    $_reverifyPost := false;
}



// function declaration for _module._default.StraightFibonacci
function _module.__default.StraightFibonacci($ly: LayerType, n#0: int) : DatatypeType
uses {
// consequence axiom for _module.__default.StraightFibonacci
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.StraightFibonacci($ly, n#0) } 
    _module.__default.StraightFibonacci#canCall(n#0)
         || (1 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> $Is(_module.__default.StraightFibonacci($ly, n#0), Tclass._module.Stream(TInt)));
// definition axiom for _module.__default.StraightFibonacci (revealed)
axiom {:id "id143"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.StraightFibonacci($LS($ly), n#0) } 
    _module.__default.StraightFibonacci#canCall(n#0)
         || (1 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> _module.__default.nfib#canCall(n#0)
         && _module.__default.StraightFibonacci#canCall(n#0 + 1)
         && _module.__default.StraightFibonacci($LS($ly), n#0)
           == #_module.Stream.Cons($Box(_module.__default.nfib($LS($LZ), n#0)), 
            _module.__default.StraightFibonacci($ly, n#0 + 1)));
}

function _module.__default.StraightFibonacci#canCall(n#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.StraightFibonacci($LS($ly), n#0) } 
  _module.__default.StraightFibonacci($LS($ly), n#0)
     == _module.__default.StraightFibonacci($ly, n#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.StraightFibonacci(AsFuelBottom($ly), n#0) } 
  _module.__default.StraightFibonacci($ly, n#0)
     == _module.__default.StraightFibonacci($LZ, n#0));

function _module.__default.StraightFibonacci#requires(LayerType, int) : bool;

// #requires axiom for _module.__default.StraightFibonacci
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.StraightFibonacci#requires($ly, n#0) } 
  LitInt(0) <= n#0
     ==> _module.__default.StraightFibonacci#requires($ly, n#0) == true);

procedure {:verboseName "StraightFibonacci (well-formedness)"} CheckWellformed$$_module.__default.StraightFibonacci(n#0: int where LitInt(0) <= n#0);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "StraightFibonacci (well-formedness)"} CheckWellformed$$_module.__default.StraightFibonacci(n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##n#0: int;
  var ##n#1: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.StraightFibonacci($LS($LZ), n#0), Tclass._module.Stream(TInt));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        ##n#0 := n#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
        assume _module.__default.nfib#canCall(n#0);
        assert {:id "id144"} $Is(n#0 + 1, Tclass._System.nat());
        ##n#1 := n#0 + 1;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#1, Tclass._System.nat(), $Heap);
        assume _module.__default.StraightFibonacci#canCall(n#0 + 1);
        assume _module.Stream.Cons_q(_module.__default.StraightFibonacci($LS($LZ), n#0 + 1));
        assume {:id "id145"} _module.__default.StraightFibonacci($LS($LZ), n#0)
           == #_module.Stream.Cons($Box(_module.__default.nfib($LS($LZ), n#0)), 
            _module.__default.StraightFibonacci($LS($LZ), n#0 + 1));
        assume _module.__default.nfib#canCall(n#0)
           && _module.__default.StraightFibonacci#canCall(n#0 + 1);
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.StraightFibonacci($LS($LZ), n#0), Tclass._module.Stream(TInt));
        return;

        assume false;
    }
}



procedure {:verboseName "StraightFibonacci_Correct (well-formedness)"} CheckWellFormed$$_module.__default.StraightFibonacci__Correct(n#0: int where LitInt(0) <= n#0, k#0: int where LitInt(0) <= k#0);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "StraightFibonacci_Correct (well-formedness)"} CheckWellFormed$$_module.__default.StraightFibonacci__Correct(n#0: int, k#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##n#0: int;
  var ##s#0: DatatypeType;
  var ##n#1: int;
  var ##n#2: int;


    // AddMethodImpl: StraightFibonacci_Correct, CheckWellFormed$$_module.__default.StraightFibonacci__Correct
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume old($Heap) == $Heap;
    ##n#0 := n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
    ##n#1 := k#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#1, Tclass._System.nat(), $Heap);
    assume _module.__default.StraightFibonacci#canCall(k#0);
    assume _module.Stream.Cons_q(_module.__default.StraightFibonacci($LS($LZ), k#0));
    ##s#0 := _module.__default.StraightFibonacci($LS($LZ), k#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#0, Tclass._module.Stream(TInt), $Heap);
    assume _module.__default.nth#canCall(TInt, n#0, _module.__default.StraightFibonacci($LS($LZ), k#0));
    assert {:id "id146"} $Is(k#0 + n#0, Tclass._System.nat());
    ##n#2 := k#0 + n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#2, Tclass._System.nat(), $Heap);
    assume _module.__default.nfib#canCall(k#0 + n#0);
    assume {:id "id147"} $Unbox(_module.__default.nth(TInt, $LS($LZ), n#0, _module.__default.StraightFibonacci($LS($LZ), k#0))): int
       == _module.__default.nfib($LS($LZ), k#0 + n#0);
}



procedure {:verboseName "StraightFibonacci_Correct (call)"} Call$$_module.__default.StraightFibonacci__Correct(n#0: int where LitInt(0) <= n#0, k#0: int where LitInt(0) <= k#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.StraightFibonacci#canCall(k#0)
     && _module.__default.nth#canCall(TInt, n#0, _module.__default.StraightFibonacci($LS($LZ), k#0))
     && _module.__default.nfib#canCall(k#0 + n#0);
  ensures {:id "id148"} $Unbox(_module.__default.nth(TInt, 
        $LS($LS($LZ)), 
        n#0, 
        _module.__default.StraightFibonacci($LS($LS($LZ)), k#0))): int
     == _module.__default.nfib($LS($LS($LZ)), k#0 + n#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "StraightFibonacci_Correct (correctness)"} Impl$$_module.__default.StraightFibonacci__Correct(n#0: int where LitInt(0) <= n#0, k#0: int where LitInt(0) <= k#0)
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.StraightFibonacci#canCall(k#0)
     && _module.__default.nth#canCall(TInt, n#0, _module.__default.StraightFibonacci($LS($LZ), k#0))
     && _module.__default.nfib#canCall(k#0 + n#0);
  ensures {:id "id149"} $Unbox(_module.__default.nth(TInt, 
        $LS($LS($LZ)), 
        n#0, 
        _module.__default.StraightFibonacci($LS($LS($LZ)), k#0))): int
     == _module.__default.nfib($LS($LS($LZ)), k#0 + n#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "StraightFibonacci_Correct (correctness)"} Impl$$_module.__default.StraightFibonacci__Correct(n#0: int, k#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;

    // AddMethodImpl: StraightFibonacci_Correct, Impl$$_module.__default.StraightFibonacci__Correct
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#n0#0: int, $ih#k0#0: int :: 
      { $Unbox(_module.__default.nth(TInt, 
            $LS($LZ), 
            $ih#n0#0, 
            _module.__default.StraightFibonacci($LS($LZ), $ih#k0#0))): int } 
      LitInt(0) <= $ih#n0#0
           && LitInt(0) <= $ih#k0#0
           && Lit(true)
           && ((0 <= $ih#n0#0 && $ih#n0#0 < n#0)
             || ($ih#n0#0 == n#0 && 0 <= $ih#k0#0 && $ih#k0#0 < k#0))
         ==> $Unbox(_module.__default.nth(TInt, 
              $LS($LZ), 
              $ih#n0#0, 
              _module.__default.StraightFibonacci($LS($LZ), $ih#k0#0))): int
           == _module.__default.nfib($LS($LZ), $ih#k0#0 + $ih#n0#0));
    $_reverifyPost := false;
}



procedure {:verboseName "Fib_Correct (well-formedness)"} CheckWellFormed$$_module.__default.Fib__Correct(n#0: int where LitInt(0) <= n#0);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Fib_Correct (call)"} Call$$_module.__default.Fib__Correct(n#0: int where LitInt(0) <= n#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Fib#canCall()
     && _module.__default.nth#canCall(TInt, n#0, Lit(_module.__default.Fib($LS($LZ))))
     && _module.__default.nfib#canCall(n#0);
  ensures {:id "id151"} $Unbox(_module.__default.nth(TInt, $LS($LS($LZ)), n#0, Lit(_module.__default.Fib($LS($LS($LZ)))))): int
     == _module.__default.nfib($LS($LS($LZ)), n#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Fib_Correct (correctness)"} Impl$$_module.__default.Fib__Correct(n#0: int where LitInt(0) <= n#0) returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Fib#canCall()
     && _module.__default.nth#canCall(TInt, n#0, Lit(_module.__default.Fib($LS($LZ))))
     && _module.__default.nfib#canCall(n#0);
  ensures {:id "id152"} $Unbox(_module.__default.nth(TInt, $LS($LS($LZ)), n#0, Lit(_module.__default.Fib($LS($LS($LZ)))))): int
     == _module.__default.nfib($LS($LS($LZ)), n#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Fib_Correct (correctness)"} Impl$$_module.__default.Fib__Correct(n#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var F#1_0: DatatypeType
     where $Is(F#1_0, Tclass._module.Stream(TInt))
       && $IsAlloc(F#1_0, Tclass._module.Stream(TInt), $Heap);
  var ##n#1_0_0_0: int;
  var ##n#1_0_0_1: int;
  var ##n#1_0_0_2: int;
  var ##n#1_0_1_0: int;
  var ##s#1_0_1_0: DatatypeType;
  var ##n#1_0_1_1: int;
  var ##s#1_0_1_1: DatatypeType;
  var n##1_0_1_0: int;
  var n##1_0_1_1: int;
  var ##n#1_0_1_2: int;
  var ##n#1_0_1_3: int;
  var ##n#1_0_2_0: int;
  var ##s#1_0_2_0: DatatypeType;
  var ##n#1_0_2_1: int;
  var ##s#1_0_2_1: DatatypeType;
  var ##n#1_0_2_2: int;
  var ##s#1_0_2_2: DatatypeType;
  var ##n#1_0_2_3: int;
  var ##s#1_0_2_3: DatatypeType;
  var ##n#1_0_3_0: int;
  var ##s#1_0_3_0: DatatypeType;
  var ##a#1_0_3_0: DatatypeType;
  var ##b#1_0_3_0: DatatypeType;
  var n##1_0_3_0: int;
  var a##1_0_3_0: DatatypeType;
  var b##1_0_3_0: DatatypeType;
  var ##n#1_0_3_1: int;
  var ##s#1_0_3_1: DatatypeType;
  var ##n#1_0_3_2: int;
  var ##s#1_0_3_2: DatatypeType;
  var ##n#1_0_4_0: int;
  var ##s#1_0_4_0: DatatypeType;
  var ##n#1_0_4_1: int;
  var ##s#1_0_4_1: DatatypeType;
  var ##a#1_0_4_0: DatatypeType;
  var ##b#1_0_4_0: DatatypeType;
  var ##n#1_0_5_0: int;
  var ##s#1_0_5_0: DatatypeType;
  var ##n#1_0_5_1: int;
  var ##s#1_0_5_1: DatatypeType;
  var ##n#1_0_0: int;
  var ##s#1_0_0: DatatypeType;

    // AddMethodImpl: Fib_Correct, Impl$$_module.__default.Fib__Correct
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#n0#0: int :: 
      { _module.__default.nfib($LS($LZ), $ih#n0#0) } 
        { $Unbox(_module.__default.nth(TInt, $LS($LZ), $ih#n0#0, Lit(_module.__default.Fib($LS($LZ))))): int } 
      LitInt(0) <= $ih#n0#0 && Lit(true) && 0 <= $ih#n0#0 && $ih#n0#0 < n#0
         ==> $Unbox(_module.__default.nth(TInt, $LS($LZ), $ih#n0#0, Lit(_module.__default.Fib($LS($LZ))))): int
           == _module.__default.nfib($LS($LZ), $ih#n0#0));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(189,3)
    assume true;
    if (n#0 < 2)
    {
    }
    else
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(191,12)
        assume true;
        assume _module.__default.Fib#canCall();
        assume _module.Stream.Cons_q(Lit(_module.__default.Fib($LS($LZ))));
        assume _module.__default.Fib#canCall();
        F#1_0 := Lit(_module.__default.Fib($LS($LZ)));
        // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(192,5)
        // Assume Fuel Constant
        if (*)
        {
            // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(192,5)
            ##n#1_0_0 := n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_0, Tclass._System.nat(), $Heap);
            ##s#1_0_0 := F#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#1_0_0, Tclass._module.Stream(TInt), $Heap);
            assume _module.__default.nth#canCall(TInt, n#0, F#1_0);
            assume _module.__default.nth#canCall(TInt, n#0, F#1_0);
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(192,5)
            ##n#1_0_5_0 := n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_5_0, Tclass._System.nat(), $Heap);
            ##s#1_0_5_0 := F#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#1_0_5_0, Tclass._module.Stream(TInt), $Heap);
            assume _module.__default.nth#canCall(TInt, n#0, F#1_0);
            assume _module.__default.nth#canCall(TInt, n#0, F#1_0);
            // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(192,5)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(192,5)
            assert {:id "id184"} $Is(n#0 - 2, Tclass._System.nat());
            ##n#1_0_5_1 := n#0 - 2;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_5_1, Tclass._System.nat(), $Heap);
            assume _module.Stream.Cons_q(F#1_0);
            assume _module.Stream.Cons_q(_module.Stream.tail(F#1_0));
            ##s#1_0_5_1 := _module.Stream.tail(_module.Stream.tail(F#1_0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#1_0_5_1, Tclass._module.Stream(TInt), $Heap);
            assume _module.__default.nth#canCall(TInt, n#0 - 2, _module.Stream.tail(_module.Stream.tail(F#1_0)));
            assume _module.Stream.Cons_q(F#1_0)
               && _module.Stream.Cons_q(_module.Stream.tail(F#1_0))
               && _module.__default.nth#canCall(TInt, n#0 - 2, _module.Stream.tail(_module.Stream.tail(F#1_0)));
            // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(192,5)
            assert {:id "id185"} {:subsumption 0} $Unbox(_module.__default.nth(TInt, $LS($LS($LZ)), n#0, F#1_0)): int
               == $Unbox(_module.__default.nth(TInt, $LS($LS($LZ)), n#0 - 2, _module.Stream.tail(_module.Stream.tail(F#1_0)))): int;
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(192,5)
            assume {:id "id181"} $Is(n#0 - 2, Tclass._System.nat());
            ##n#1_0_4_0 := n#0 - 2;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_4_0, Tclass._System.nat(), $Heap);
            assume _module.Stream.Cons_q(F#1_0);
            assume _module.Stream.Cons_q(_module.Stream.tail(F#1_0));
            ##s#1_0_4_0 := _module.Stream.tail(_module.Stream.tail(F#1_0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#1_0_4_0, Tclass._module.Stream(TInt), $Heap);
            assume _module.__default.nth#canCall(TInt, n#0 - 2, _module.Stream.tail(_module.Stream.tail(F#1_0)));
            assume _module.Stream.Cons_q(F#1_0)
               && _module.Stream.Cons_q(_module.Stream.tail(F#1_0))
               && _module.__default.nth#canCall(TInt, n#0 - 2, _module.Stream.tail(_module.Stream.tail(F#1_0)));
            // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(192,5)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(192,5)
            assert {:id "id182"} $Is(n#0 - 2, Tclass._System.nat());
            ##n#1_0_4_1 := n#0 - 2;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_4_1, Tclass._System.nat(), $Heap);
            assume _module.__default.Fib#canCall();
            assume _module.Stream.Cons_q(Lit(_module.__default.Fib($LS($LZ))));
            ##a#1_0_4_0 := Lit(_module.__default.Fib($LS($LZ)));
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1_0_4_0, Tclass._module.Stream(TInt), $Heap);
            assume _module.__default.Fib#canCall();
            assume _module.Stream.Cons_q(Lit(_module.__default.Fib($LS($LZ))));
            assume _module.Stream.Cons_q(Lit(_module.__default.Fib($LS($LZ))));
            ##b#1_0_4_0 := Lit(_module.Stream.tail(Lit(_module.__default.Fib($LS($LZ)))));
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1_0_4_0, Tclass._module.Stream(TInt), $Heap);
            assume _module.__default.add#canCall(Lit(_module.__default.Fib($LS($LZ))), 
              Lit(_module.Stream.tail(Lit(_module.__default.Fib($LS($LZ))))));
            assume _module.Stream.Cons_q(Lit(_module.__default.add($LS($LZ), 
                  Lit(_module.__default.Fib($LS($LZ))), 
                  Lit(_module.Stream.tail(Lit(_module.__default.Fib($LS($LZ))))))));
            ##s#1_0_4_1 := Lit(_module.__default.add($LS($LZ), 
                Lit(_module.__default.Fib($LS($LZ))), 
                Lit(_module.Stream.tail(Lit(_module.__default.Fib($LS($LZ)))))));
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#1_0_4_1, Tclass._module.Stream(TInt), $Heap);
            assume _module.__default.nth#canCall(TInt, 
              n#0 - 2, 
              Lit(_module.__default.add($LS($LZ), 
                  Lit(_module.__default.Fib($LS($LZ))), 
                  Lit(_module.Stream.tail(Lit(_module.__default.Fib($LS($LZ))))))));
            assume _module.__default.Fib#canCall()
               && 
              _module.__default.Fib#canCall()
               && _module.Stream.Cons_q(Lit(_module.__default.Fib($LS($LZ))))
               && _module.__default.add#canCall(Lit(_module.__default.Fib($LS($LZ))), 
                Lit(_module.Stream.tail(Lit(_module.__default.Fib($LS($LZ))))))
               && _module.__default.nth#canCall(TInt, 
                n#0 - 2, 
                Lit(_module.__default.add($LS($LZ), 
                    Lit(_module.__default.Fib($LS($LZ))), 
                    Lit(_module.Stream.tail(Lit(_module.__default.Fib($LS($LZ))))))));
            // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(192,5)
            assert {:id "id183"} {:subsumption 0} $Unbox(_module.__default.nth(TInt, $LS($LS($LZ)), n#0 - 2, _module.Stream.tail(_module.Stream.tail(F#1_0)))): int
               == $Unbox(_module.__default.nth(TInt, 
                  $LS($LS($LZ)), 
                  n#0 - 2, 
                  Lit(_module.__default.add($LS($LS($LZ)), 
                      Lit(_module.__default.Fib($LS($LS($LZ)))), 
                      Lit(_module.Stream.tail(Lit(_module.__default.Fib($LS($LS($LZ)))))))))): int;
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(192,5)
            assume {:id "id175"} $Is(n#0 - 2, Tclass._System.nat());
            ##n#1_0_3_0 := n#0 - 2;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_3_0, Tclass._System.nat(), $Heap);
            assume _module.__default.Fib#canCall();
            assume _module.Stream.Cons_q(Lit(_module.__default.Fib($LS($LZ))));
            ##a#1_0_3_0 := Lit(_module.__default.Fib($LS($LZ)));
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#1_0_3_0, Tclass._module.Stream(TInt), $Heap);
            assume _module.__default.Fib#canCall();
            assume _module.Stream.Cons_q(Lit(_module.__default.Fib($LS($LZ))));
            assume _module.Stream.Cons_q(Lit(_module.__default.Fib($LS($LZ))));
            ##b#1_0_3_0 := Lit(_module.Stream.tail(Lit(_module.__default.Fib($LS($LZ)))));
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1_0_3_0, Tclass._module.Stream(TInt), $Heap);
            assume _module.__default.add#canCall(Lit(_module.__default.Fib($LS($LZ))), 
              Lit(_module.Stream.tail(Lit(_module.__default.Fib($LS($LZ))))));
            assume _module.Stream.Cons_q(Lit(_module.__default.add($LS($LZ), 
                  Lit(_module.__default.Fib($LS($LZ))), 
                  Lit(_module.Stream.tail(Lit(_module.__default.Fib($LS($LZ))))))));
            ##s#1_0_3_0 := Lit(_module.__default.add($LS($LZ), 
                Lit(_module.__default.Fib($LS($LZ))), 
                Lit(_module.Stream.tail(Lit(_module.__default.Fib($LS($LZ)))))));
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#1_0_3_0, Tclass._module.Stream(TInt), $Heap);
            assume _module.__default.nth#canCall(TInt, 
              n#0 - 2, 
              Lit(_module.__default.add($LS($LZ), 
                  Lit(_module.__default.Fib($LS($LZ))), 
                  Lit(_module.Stream.tail(Lit(_module.__default.Fib($LS($LZ))))))));
            assume _module.__default.Fib#canCall()
               && 
              _module.__default.Fib#canCall()
               && _module.Stream.Cons_q(Lit(_module.__default.Fib($LS($LZ))))
               && _module.__default.add#canCall(Lit(_module.__default.Fib($LS($LZ))), 
                Lit(_module.Stream.tail(Lit(_module.__default.Fib($LS($LZ))))))
               && _module.__default.nth#canCall(TInt, 
                n#0 - 2, 
                Lit(_module.__default.add($LS($LZ), 
                    Lit(_module.__default.Fib($LS($LZ))), 
                    Lit(_module.Stream.tail(Lit(_module.__default.Fib($LS($LZ))))))));
            // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(192,5)
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(198,22)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id176"} $Is(n#0 - 2, Tclass._System.nat());
            n##1_0_3_0 := n#0 - 2;
            assume _module.__default.Fib#canCall();
            assume _module.Stream.Cons_q(Lit(_module.__default.Fib($LS($LZ))));
            assume _module.__default.Fib#canCall();
            // ProcessCallStmt: CheckSubrange
            a##1_0_3_0 := Lit(_module.__default.Fib($LS($LZ)));
            assume _module.__default.Fib#canCall();
            assume _module.Stream.Cons_q(Lit(_module.__default.Fib($LS($LZ))));
            assume _module.Stream.Cons_q(Lit(_module.__default.Fib($LS($LZ))));
            assume _module.__default.Fib#canCall()
               && _module.Stream.Cons_q(Lit(_module.__default.Fib($LS($LZ))));
            // ProcessCallStmt: CheckSubrange
            b##1_0_3_0 := Lit(_module.Stream.tail(Lit(_module.__default.Fib($LS($LZ)))));
            call {:id "id177"} Call$$_module.__default.add__Correct(n##1_0_3_0, a##1_0_3_0, b##1_0_3_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(192,5)
            assert {:id "id178"} $Is(n#0 - 2, Tclass._System.nat());
            ##n#1_0_3_1 := n#0 - 2;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_3_1, Tclass._System.nat(), $Heap);
            assume _module.__default.Fib#canCall();
            assume _module.Stream.Cons_q(Lit(_module.__default.Fib($LS($LZ))));
            ##s#1_0_3_1 := Lit(_module.__default.Fib($LS($LZ)));
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#1_0_3_1, Tclass._module.Stream(TInt), $Heap);
            assume _module.__default.nth#canCall(TInt, n#0 - 2, Lit(_module.__default.Fib($LS($LZ))));
            assert {:id "id179"} $Is(n#0 - 2, Tclass._System.nat());
            ##n#1_0_3_2 := n#0 - 2;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_3_2, Tclass._System.nat(), $Heap);
            assume _module.__default.Fib#canCall();
            assume _module.Stream.Cons_q(Lit(_module.__default.Fib($LS($LZ))));
            assume _module.Stream.Cons_q(Lit(_module.__default.Fib($LS($LZ))));
            ##s#1_0_3_2 := Lit(_module.Stream.tail(Lit(_module.__default.Fib($LS($LZ)))));
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#1_0_3_2, Tclass._module.Stream(TInt), $Heap);
            assume _module.__default.nth#canCall(TInt, n#0 - 2, Lit(_module.Stream.tail(Lit(_module.__default.Fib($LS($LZ))))));
            assume _module.__default.Fib#canCall()
               && _module.__default.nth#canCall(TInt, n#0 - 2, Lit(_module.__default.Fib($LS($LZ))))
               && 
              _module.__default.Fib#canCall()
               && _module.Stream.Cons_q(Lit(_module.__default.Fib($LS($LZ))))
               && _module.__default.nth#canCall(TInt, n#0 - 2, Lit(_module.Stream.tail(Lit(_module.__default.Fib($LS($LZ))))));
            // ----- assert line2 == line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(192,5)
            assert {:id "id180"} {:subsumption 0} $Unbox(_module.__default.nth(TInt, 
                  $LS($LS($LZ)), 
                  n#0 - 2, 
                  Lit(_module.__default.add($LS($LS($LZ)), 
                      Lit(_module.__default.Fib($LS($LS($LZ)))), 
                      Lit(_module.Stream.tail(Lit(_module.__default.Fib($LS($LS($LZ)))))))))): int
               == $Unbox(_module.__default.nth(TInt, $LS($LS($LZ)), n#0 - 2, Lit(_module.__default.Fib($LS($LS($LZ)))))): int
                 + $Unbox(_module.__default.nth(TInt, 
                    $LS($LS($LZ)), 
                    n#0 - 2, 
                    Lit(_module.Stream.tail(Lit(_module.__default.Fib($LS($LS($LZ)))))))): int;
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(192,5)
            assume {:id "id170"} $Is(n#0 - 2, Tclass._System.nat());
            ##n#1_0_2_0 := n#0 - 2;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_2_0, Tclass._System.nat(), $Heap);
            assume _module.__default.Fib#canCall();
            assume _module.Stream.Cons_q(Lit(_module.__default.Fib($LS($LZ))));
            ##s#1_0_2_0 := Lit(_module.__default.Fib($LS($LZ)));
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#1_0_2_0, Tclass._module.Stream(TInt), $Heap);
            assume _module.__default.nth#canCall(TInt, n#0 - 2, Lit(_module.__default.Fib($LS($LZ))));
            assume {:id "id171"} $Is(n#0 - 2, Tclass._System.nat());
            ##n#1_0_2_1 := n#0 - 2;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_2_1, Tclass._System.nat(), $Heap);
            assume _module.__default.Fib#canCall();
            assume _module.Stream.Cons_q(Lit(_module.__default.Fib($LS($LZ))));
            assume _module.Stream.Cons_q(Lit(_module.__default.Fib($LS($LZ))));
            ##s#1_0_2_1 := Lit(_module.Stream.tail(Lit(_module.__default.Fib($LS($LZ)))));
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#1_0_2_1, Tclass._module.Stream(TInt), $Heap);
            assume _module.__default.nth#canCall(TInt, n#0 - 2, Lit(_module.Stream.tail(Lit(_module.__default.Fib($LS($LZ))))));
            assume _module.__default.Fib#canCall()
               && _module.__default.nth#canCall(TInt, n#0 - 2, Lit(_module.__default.Fib($LS($LZ))))
               && 
              _module.__default.Fib#canCall()
               && _module.Stream.Cons_q(Lit(_module.__default.Fib($LS($LZ))))
               && _module.__default.nth#canCall(TInt, n#0 - 2, Lit(_module.Stream.tail(Lit(_module.__default.Fib($LS($LZ))))));
            // ----- Hint3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(192,5)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(192,5)
            assert {:id "id172"} $Is(n#0 - 2, Tclass._System.nat());
            ##n#1_0_2_2 := n#0 - 2;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_2_2, Tclass._System.nat(), $Heap);
            assume _module.__default.Fib#canCall();
            assume _module.Stream.Cons_q(Lit(_module.__default.Fib($LS($LZ))));
            ##s#1_0_2_2 := Lit(_module.__default.Fib($LS($LZ)));
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#1_0_2_2, Tclass._module.Stream(TInt), $Heap);
            assume _module.__default.nth#canCall(TInt, n#0 - 2, Lit(_module.__default.Fib($LS($LZ))));
            assert {:id "id173"} $Is(n#0 - 1, Tclass._System.nat());
            ##n#1_0_2_3 := n#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_2_3, Tclass._System.nat(), $Heap);
            assume _module.__default.Fib#canCall();
            assume _module.Stream.Cons_q(Lit(_module.__default.Fib($LS($LZ))));
            ##s#1_0_2_3 := Lit(_module.__default.Fib($LS($LZ)));
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#1_0_2_3, Tclass._module.Stream(TInt), $Heap);
            assume _module.__default.nth#canCall(TInt, n#0 - 1, Lit(_module.__default.Fib($LS($LZ))));
            assume _module.__default.Fib#canCall()
               && _module.__default.nth#canCall(TInt, n#0 - 2, Lit(_module.__default.Fib($LS($LZ))))
               && 
              _module.__default.Fib#canCall()
               && _module.__default.nth#canCall(TInt, n#0 - 1, Lit(_module.__default.Fib($LS($LZ))));
            // ----- assert line3 == line4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(192,5)
            assert {:id "id174"} {:subsumption 0} $Unbox(_module.__default.nth(TInt, $LS($LS($LZ)), n#0 - 2, Lit(_module.__default.Fib($LS($LS($LZ)))))): int
                 + $Unbox(_module.__default.nth(TInt, 
                    $LS($LS($LZ)), 
                    n#0 - 2, 
                    Lit(_module.Stream.tail(Lit(_module.__default.Fib($LS($LS($LZ)))))))): int
               == $Unbox(_module.__default.nth(TInt, $LS($LS($LZ)), n#0 - 2, Lit(_module.__default.Fib($LS($LS($LZ)))))): int
                 + $Unbox(_module.__default.nth(TInt, $LS($LS($LZ)), n#0 - 1, Lit(_module.__default.Fib($LS($LS($LZ)))))): int;
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(192,5)
            assume {:id "id157"} $Is(n#0 - 2, Tclass._System.nat());
            ##n#1_0_1_0 := n#0 - 2;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_1_0, Tclass._System.nat(), $Heap);
            assume _module.__default.Fib#canCall();
            assume _module.Stream.Cons_q(Lit(_module.__default.Fib($LS($LZ))));
            ##s#1_0_1_0 := Lit(_module.__default.Fib($LS($LZ)));
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#1_0_1_0, Tclass._module.Stream(TInt), $Heap);
            assume _module.__default.nth#canCall(TInt, n#0 - 2, Lit(_module.__default.Fib($LS($LZ))));
            assume {:id "id158"} $Is(n#0 - 1, Tclass._System.nat());
            ##n#1_0_1_1 := n#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_1_1, Tclass._System.nat(), $Heap);
            assume _module.__default.Fib#canCall();
            assume _module.Stream.Cons_q(Lit(_module.__default.Fib($LS($LZ))));
            ##s#1_0_1_1 := Lit(_module.__default.Fib($LS($LZ)));
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#1_0_1_1, Tclass._module.Stream(TInt), $Heap);
            assume _module.__default.nth#canCall(TInt, n#0 - 1, Lit(_module.__default.Fib($LS($LZ))));
            assume _module.__default.Fib#canCall()
               && _module.__default.nth#canCall(TInt, n#0 - 2, Lit(_module.__default.Fib($LS($LZ))))
               && 
              _module.__default.Fib#canCall()
               && _module.__default.nth#canCall(TInt, n#0 - 1, Lit(_module.__default.Fib($LS($LZ))));
            // ----- Hint4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(192,5)
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(202,22)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id159"} $Is(n#0 - 2, Tclass._System.nat());
            n##1_0_1_0 := n#0 - 2;
            assert {:id "id160"} 0 <= n#0 || n##1_0_1_0 == n#0;
            assert {:id "id161"} n##1_0_1_0 < n#0;
            call {:id "id162"} Call$$_module.__default.Fib__Correct(n##1_0_1_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(202,40)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id163"} $Is(n#0 - 1, Tclass._System.nat());
            n##1_0_1_1 := n#0 - 1;
            assert {:id "id164"} 0 <= n#0 || n##1_0_1_1 == n#0;
            assert {:id "id165"} n##1_0_1_1 < n#0;
            call {:id "id166"} Call$$_module.__default.Fib__Correct(n##1_0_1_1);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(192,5)
            assert {:id "id167"} $Is(n#0 - 2, Tclass._System.nat());
            ##n#1_0_1_2 := n#0 - 2;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_1_2, Tclass._System.nat(), $Heap);
            assume _module.__default.nfib#canCall(n#0 - 2);
            assert {:id "id168"} $Is(n#0 - 1, Tclass._System.nat());
            ##n#1_0_1_3 := n#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_1_3, Tclass._System.nat(), $Heap);
            assume _module.__default.nfib#canCall(n#0 - 1);
            assume _module.__default.nfib#canCall(n#0 - 2)
               && _module.__default.nfib#canCall(n#0 - 1);
            // ----- assert line4 == line5 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(192,5)
            assert {:id "id169"} {:subsumption 0} $Unbox(_module.__default.nth(TInt, $LS($LS($LZ)), n#0 - 2, Lit(_module.__default.Fib($LS($LS($LZ)))))): int
                 + $Unbox(_module.__default.nth(TInt, $LS($LS($LZ)), n#0 - 1, Lit(_module.__default.Fib($LS($LS($LZ)))))): int
               == _module.__default.nfib($LS($LS($LZ)), n#0 - 2)
                 + _module.__default.nfib($LS($LS($LZ)), n#0 - 1);
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(192,5)
            assume {:id "id154"} $Is(n#0 - 2, Tclass._System.nat());
            ##n#1_0_0_0 := n#0 - 2;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_0_0, Tclass._System.nat(), $Heap);
            assume _module.__default.nfib#canCall(n#0 - 2);
            assume {:id "id155"} $Is(n#0 - 1, Tclass._System.nat());
            ##n#1_0_0_1 := n#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_0_1, Tclass._System.nat(), $Heap);
            assume _module.__default.nfib#canCall(n#0 - 1);
            assume _module.__default.nfib#canCall(n#0 - 2)
               && _module.__default.nfib#canCall(n#0 - 1);
            // ----- Hint5 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(192,5)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(192,5)
            ##n#1_0_0_2 := n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_0_2, Tclass._System.nat(), $Heap);
            assume _module.__default.nfib#canCall(n#0);
            assume _module.__default.nfib#canCall(n#0);
            // ----- assert line5 == line6 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Abstemious.dfy(192,5)
            assert {:id "id156"} {:subsumption 0} _module.__default.nfib($LS($LS($LZ)), n#0 - 2)
                 + _module.__default.nfib($LS($LS($LZ)), n#0 - 1)
               == _module.__default.nfib($LS($LS($LZ)), n#0);
            assume false;
        }

        assume {:id "id186"} $Unbox(_module.__default.nth(TInt, $LS($LZ), n#0, F#1_0)): int
           == _module.__default.nfib($LS($LZ), n#0);
    }
}



procedure {:verboseName "OrdinalLemma (well-formedness)"} CheckWellFormed$$_module.__default.OrdinalLemma(k#0: Box);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "OrdinalLemma (call)"} Call$$_module.__default.OrdinalLemma(k#0: Box);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.OhOnes#canCall()
     && _module.Stream.Cons_q(Lit(_module.__default.OhOnes($LS($LZ))))
     && _module.__default.ones#canCall();
  free ensures {:id "id188"} $PrefixEq#_module.Stream(TInt, 
    TInt, 
    k#0, 
    $LS($LS($LZ)), 
    Lit(_module.Stream.tail(Lit(_module.__default.OhOnes($LS($LZ))))), 
    Lit(_module.__default.ones($LS($LZ))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "OrdinalLemma (correctness)"} Impl$$_module.__default.OrdinalLemma(k#0: Box) returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.OhOnes#canCall()
     && _module.Stream.Cons_q(Lit(_module.__default.OhOnes($LS($LZ))))
     && _module.__default.ones#canCall();
  ensures {:id "id189"} $PrefixEq#_module.Stream(TInt, 
      TInt, 
      k#0, 
      $LS($LS($LZ)), 
      Lit(_module.Stream.tail(Lit(_module.__default.OhOnes($LS($LZ))))), 
      Lit(_module.__default.ones($LS($LZ))))
     || (0 < ORD#Offset(k#0)
       ==> 
      _module.Stream.Cons_q(Lit(_module.Stream.tail(Lit(_module.__default.OhOnes($LS($LS($LZ)))))))
       ==> _module.Stream.Cons_q(Lit(_module.__default.ones($LS($LS($LZ)))))
         && 
        $Unbox(_module.Stream.head(Lit(_module.Stream.tail(Lit(_module.__default.OhOnes($LS($LS($LZ)))))))): int
           == $Unbox(_module.Stream.head(Lit(_module.__default.ones($LS($LS($LZ)))))): int
         && $PrefixEq#_module.Stream(TInt, 
          TInt, 
          ORD#Minus(k#0, ORD#FromNat(1)), 
          $LS($LS($LZ)), 
          _module.Stream.tail(Lit(_module.Stream.tail(Lit(_module.__default.OhOnes($LS($LS($LZ))))))), 
          _module.Stream.tail(Lit(_module.__default.ones($LS($LS($LZ)))))));
  ensures {:id "id190"} $PrefixEq#_module.Stream(TInt, 
      TInt, 
      k#0, 
      $LS($LS($LZ)), 
      Lit(_module.Stream.tail(Lit(_module.__default.OhOnes($LS($LZ))))), 
      Lit(_module.__default.ones($LS($LZ))))
     || 
    (0 < ORD#Offset(k#0)
       ==> 
      _module.Stream.Cons_q(Lit(_module.Stream.tail(Lit(_module.__default.OhOnes($LS($LS($LZ)))))))
       ==> _module.Stream.Cons_q(Lit(_module.__default.ones($LS($LS($LZ)))))
         && 
        $Unbox(_module.Stream.head(Lit(_module.Stream.tail(Lit(_module.__default.OhOnes($LS($LS($LZ)))))))): int
           == $Unbox(_module.Stream.head(Lit(_module.__default.ones($LS($LS($LZ)))))): int
         && $PrefixEq#_module.Stream(TInt, 
          TInt, 
          ORD#Minus(k#0, ORD#FromNat(1)), 
          $LS($LS($LZ)), 
          _module.Stream.tail(Lit(_module.Stream.tail(Lit(_module.__default.OhOnes($LS($LS($LZ))))))), 
          _module.Stream.tail(Lit(_module.__default.ones($LS($LS($LZ)))))))
     || (k#0 != ORD#FromNat(0) && ORD#IsLimit(k#0)
       ==> $Eq#_module.Stream(TInt, 
        TInt, 
        $LS($LS($LZ)), 
        Lit(_module.Stream.tail(Lit(_module.__default.OhOnes($LS($LZ))))), 
        Lit(_module.__default.ones($LS($LZ)))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "OrdinalLemma (correctness)"} Impl$$_module.__default.OrdinalLemma(k#0: Box) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;

    // AddMethodImpl: OrdinalLemma, Impl$$_module.__default.OrdinalLemma
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#k0#0: Box :: 
      { $PrefixEq#_module.Stream(TInt, 
          TInt, 
          $ih#k0#0, 
          $LS($LS($LZ)), 
          Lit(_module.Stream.tail(Lit(_module.__default.OhOnes($LS($LZ))))), 
          Lit(_module.__default.ones($LS($LZ)))) } 
      Lit(true) && ORD#Less($ih#k0#0, k#0)
         ==> $PrefixEq#_module.Stream(TInt, 
          TInt, 
          $ih#k0#0, 
          $LS($LS($LZ)), 
          Lit(_module.Stream.tail(Lit(_module.__default.OhOnes($LS($LZ))))), 
          Lit(_module.__default.ones($LS($LZ)))));
    $_reverifyPost := false;
}



procedure {:verboseName "NaturalLemma (well-formedness)"} CheckWellFormed$$_module.__default.NaturalLemma(k#0: int where LitInt(0) <= k#0);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NaturalLemma (well-formedness)"} CheckWellFormed$$_module.__default.NaturalLemma(k#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: NaturalLemma, CheckWellFormed$$_module.__default.NaturalLemma
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume old($Heap) == $Heap;
    assume _module.__default.OhOnes#canCall();
    assume _module.Stream.Cons_q(Lit(_module.__default.OhOnes($LS($LZ))));
    assume _module.Stream.Cons_q(Lit(_module.__default.OhOnes($LS($LZ))));
    assume _module.__default.ones#canCall();
    assume _module.Stream.Cons_q(Lit(_module.__default.ones($LS($LZ))));
    assert {:id "id191"} 0 <= k#0;
    assume {:id "id192"} $PrefixEq#_module.Stream(TInt, 
      TInt, 
      ORD#FromNat(k#0), 
      $LS($LS($LZ)), 
      Lit(_module.Stream.tail(Lit(_module.__default.OhOnes($LS($LZ))))), 
      Lit(_module.__default.ones($LS($LZ))));
}



procedure {:verboseName "NaturalLemma (call)"} Call$$_module.__default.NaturalLemma(k#0: int where LitInt(0) <= k#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.OhOnes#canCall()
     && _module.Stream.Cons_q(Lit(_module.__default.OhOnes($LS($LZ))))
     && _module.__default.ones#canCall();
  free ensures {:id "id193"} $PrefixEq#_module.Stream(TInt, 
    TInt, 
    ORD#FromNat(k#0), 
    $LS($LS($LZ)), 
    Lit(_module.Stream.tail(Lit(_module.__default.OhOnes($LS($LZ))))), 
    Lit(_module.__default.ones($LS($LZ))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "NaturalLemma (correctness)"} Impl$$_module.__default.NaturalLemma(k#0: int where LitInt(0) <= k#0) returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.OhOnes#canCall()
     && _module.Stream.Cons_q(Lit(_module.__default.OhOnes($LS($LZ))))
     && _module.__default.ones#canCall();
  ensures {:id "id194"} $PrefixEq#_module.Stream(TInt, 
      TInt, 
      ORD#FromNat(k#0), 
      $LS($LS($LZ)), 
      Lit(_module.Stream.tail(Lit(_module.__default.OhOnes($LS($LZ))))), 
      Lit(_module.__default.ones($LS($LZ))))
     || (0 < k#0
       ==> 
      _module.Stream.Cons_q(Lit(_module.Stream.tail(Lit(_module.__default.OhOnes($LS($LS($LZ)))))))
       ==> _module.Stream.Cons_q(Lit(_module.__default.ones($LS($LS($LZ)))))
         && 
        $Unbox(_module.Stream.head(Lit(_module.Stream.tail(Lit(_module.__default.OhOnes($LS($LS($LZ)))))))): int
           == $Unbox(_module.Stream.head(Lit(_module.__default.ones($LS($LS($LZ)))))): int
         && $PrefixEq#_module.Stream(TInt, 
          TInt, 
          ORD#FromNat(k#0 - 1), 
          $LS($LS($LZ)), 
          _module.Stream.tail(Lit(_module.Stream.tail(Lit(_module.__default.OhOnes($LS($LS($LZ))))))), 
          _module.Stream.tail(Lit(_module.__default.ones($LS($LS($LZ)))))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NaturalLemma (correctness)"} Impl$$_module.__default.NaturalLemma(k#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;

    // AddMethodImpl: NaturalLemma, Impl$$_module.__default.NaturalLemma
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#k0#0: int :: 
      { $PrefixEq#_module.Stream(TInt, 
          TInt, 
          ORD#FromNat($ih#k0#0), 
          $LS($LS($LZ)), 
          Lit(_module.Stream.tail(Lit(_module.__default.OhOnes($LS($LZ))))), 
          Lit(_module.__default.ones($LS($LZ)))) } 
      LitInt(0) <= $ih#k0#0 && Lit(true) && 0 <= $ih#k0#0 && $ih#k0#0 < k#0
         ==> $PrefixEq#_module.Stream(TInt, 
          TInt, 
          ORD#FromNat($ih#k0#0), 
          $LS($LS($LZ)), 
          Lit(_module.Stream.tail(Lit(_module.__default.OhOnes($LS($LZ))))), 
          Lit(_module.__default.ones($LS($LZ)))));
    $_reverifyPost := false;
}



procedure {:verboseName "Quantifier (well-formedness)"} CheckWellFormed$$_module.__default.Quantifier();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Quantifier (well-formedness)"} CheckWellFormed$$_module.__default.Quantifier()
{
  var $_ModifiesFrame: [ref,Field]bool;
  var k#0: int;
  var k#2: Box;


    // AddMethodImpl: Quantifier, CheckWellFormed$$_module.__default.Quantifier
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc k#0;
    assume LitInt(0) <= k#0;
    assume _module.__default.OhOnes#canCall();
    assume _module.Stream.Cons_q(Lit(_module.__default.OhOnes($LS($LZ))));
    assume _module.Stream.Cons_q(Lit(_module.__default.OhOnes($LS($LZ))));
    assume _module.__default.ones#canCall();
    assume _module.Stream.Cons_q(Lit(_module.__default.ones($LS($LZ))));
    assert {:id "id195"} 0 <= k#0;
    assume {:id "id196"} $PrefixEq#_module.Stream(TInt, 
      TInt, 
      ORD#FromNat(k#0), 
      $LS($LS($LZ)), 
      Lit(_module.Stream.tail(Lit(_module.__default.OhOnes($LS($LZ))))), 
      Lit(_module.__default.ones($LS($LZ))));
    assume {:id "id197"} (forall k#1: int :: 
      { $PrefixEq#_module.Stream(TInt, 
          TInt, 
          ORD#FromNat(k#1), 
          $LS($LS($LZ)), 
          _module.Stream.tail(_module.__default.OhOnes($LS($LZ))), 
          _module.__default.ones($LS($LZ))) } 
      LitInt(0) <= k#1
         ==> $PrefixEq#_module.Stream(TInt, 
          TInt, 
          ORD#FromNat(k#1), 
          $LS($LS($LZ)), 
          Lit(_module.Stream.tail(Lit(_module.__default.OhOnes($LS($LZ))))), 
          Lit(_module.__default.ones($LS($LZ)))));
    havoc k#2;
    assume true;
    assume _module.__default.OhOnes#canCall();
    assume _module.Stream.Cons_q(Lit(_module.__default.OhOnes($LS($LZ))));
    assume _module.Stream.Cons_q(Lit(_module.__default.OhOnes($LS($LZ))));
    assume _module.__default.ones#canCall();
    assume _module.Stream.Cons_q(Lit(_module.__default.ones($LS($LZ))));
    assume {:id "id198"} $PrefixEq#_module.Stream(TInt, 
      TInt, 
      k#2, 
      $LS($LS($LZ)), 
      Lit(_module.Stream.tail(Lit(_module.__default.OhOnes($LS($LZ))))), 
      Lit(_module.__default.ones($LS($LZ))));
    assume {:id "id199"} (forall k#3: Box :: 
      { $PrefixEq#_module.Stream(TInt, 
          TInt, 
          k#3, 
          $LS($LS($LZ)), 
          _module.Stream.tail(_module.__default.OhOnes($LS($LZ))), 
          _module.__default.ones($LS($LZ))) } 
      $PrefixEq#_module.Stream(TInt, 
        TInt, 
        k#3, 
        $LS($LS($LZ)), 
        Lit(_module.Stream.tail(Lit(_module.__default.OhOnes($LS($LZ))))), 
        Lit(_module.__default.ones($LS($LZ)))));
    havoc $Heap;
    assume old($Heap) == $Heap;
}



procedure {:verboseName "Quantifier (call)"} Call$$_module.__default.Quantifier();
  // user-defined preconditions
  requires {:id "id200"} (forall k#1: int :: 
    { $PrefixEq#_module.Stream(TInt, 
        TInt, 
        ORD#FromNat(k#1), 
        $LS($LS($LZ)), 
        _module.Stream.tail(_module.__default.OhOnes($LS($LS($LZ)))), 
        _module.__default.ones($LS($LS($LZ)))) } 
    LitInt(0) <= k#1
       ==> $PrefixEq#_module.Stream(TInt, 
        TInt, 
        ORD#FromNat(k#1), 
        $LS($LS($LZ)), 
        Lit(_module.Stream.tail(Lit(_module.__default.OhOnes($LS($LS($LZ)))))), 
        Lit(_module.__default.ones($LS($LS($LZ))))));
  requires {:id "id201"} (forall k#3: Box :: 
    { $PrefixEq#_module.Stream(TInt, 
        TInt, 
        k#3, 
        $LS($LS($LZ)), 
        _module.Stream.tail(_module.__default.OhOnes($LS($LS($LZ)))), 
        _module.__default.ones($LS($LS($LZ)))) } 
    $PrefixEq#_module.Stream(TInt, 
      TInt, 
      k#3, 
      $LS($LS($LZ)), 
      Lit(_module.Stream.tail(Lit(_module.__default.OhOnes($LS($LS($LZ)))))), 
      Lit(_module.__default.ones($LS($LS($LZ))))));
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Quantifier (correctness)"} Impl$$_module.__default.Quantifier() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id202"} (forall k#1: int :: 
    { $PrefixEq#_module.Stream(TInt, 
        TInt, 
        ORD#FromNat(k#1), 
        $LS($LS($LZ)), 
        _module.Stream.tail(_module.__default.OhOnes($LS($LZ))), 
        _module.__default.ones($LS($LZ))) } 
    LitInt(0) <= k#1
       ==> $PrefixEq#_module.Stream(TInt, 
        TInt, 
        ORD#FromNat(k#1), 
        $LS($LS($LZ)), 
        Lit(_module.Stream.tail(Lit(_module.__default.OhOnes($LS($LZ))))), 
        Lit(_module.__default.ones($LS($LZ)))));
  free requires {:id "id203"} (forall k#3: Box :: 
    { $PrefixEq#_module.Stream(TInt, 
        TInt, 
        k#3, 
        $LS($LS($LZ)), 
        _module.Stream.tail(_module.__default.OhOnes($LS($LZ))), 
        _module.__default.ones($LS($LZ))) } 
    $PrefixEq#_module.Stream(TInt, 
      TInt, 
      k#3, 
      $LS($LS($LZ)), 
      Lit(_module.Stream.tail(Lit(_module.__default.OhOnes($LS($LZ))))), 
      Lit(_module.__default.ones($LS($LZ)))));
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



// Constructor function declaration
function #_module.List.Nil() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.List.Nil()) == ##_module.List.Nil;
// Constructor literal
axiom #_module.List.Nil() == Lit(#_module.List.Nil());
}

const unique ##_module.List.Nil: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.List.Nil()) == ##_module.List.Nil;
}

function _module.List.Nil_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.List.Nil_q(d) } 
  _module.List.Nil_q(d) <==> DatatypeCtorId(d) == ##_module.List.Nil);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.List.Nil_q(d) } 
  _module.List.Nil_q(d) ==> d == #_module.List.Nil());

// Constructor $Is
axiom (forall _module.List$T: Ty :: 
  { $Is(#_module.List.Nil(), Tclass._module.List(_module.List$T)) } 
  $Is(#_module.List.Nil(), Tclass._module.List(_module.List$T)));

// Constructor $IsAlloc
axiom (forall _module.List$T: Ty, $h: Heap :: 
  { $IsAlloc(#_module.List.Nil(), Tclass._module.List(_module.List$T), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#_module.List.Nil(), Tclass._module.List(_module.List$T), $h));

// Constructor function declaration
function #_module.List.ListCons(Box, DatatypeType) : DatatypeType;

const unique ##_module.List.ListCons: DtCtorId
uses {
// Constructor identifier
axiom (forall a#4#0#0: Box, a#4#1#0: DatatypeType :: 
  { #_module.List.ListCons(a#4#0#0, a#4#1#0) } 
  DatatypeCtorId(#_module.List.ListCons(a#4#0#0, a#4#1#0))
     == ##_module.List.ListCons);
}

function _module.List.ListCons_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.List.ListCons_q(d) } 
  _module.List.ListCons_q(d) <==> DatatypeCtorId(d) == ##_module.List.ListCons);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.List.ListCons_q(d) } 
  _module.List.ListCons_q(d)
     ==> (exists a#5#0#0: Box, a#5#1#0: DatatypeType :: 
      d == #_module.List.ListCons(a#5#0#0, a#5#1#0)));

// Constructor $Is
axiom (forall _module.List$T: Ty, a#6#0#0: Box, a#6#1#0: DatatypeType :: 
  { $Is(#_module.List.ListCons(a#6#0#0, a#6#1#0), Tclass._module.List(_module.List$T)) } 
  $Is(#_module.List.ListCons(a#6#0#0, a#6#1#0), Tclass._module.List(_module.List$T))
     <==> $IsBox(a#6#0#0, _module.List$T)
       && $Is(a#6#1#0, Tclass._module.List(_module.List$T)));

// Constructor $IsAlloc
axiom (forall _module.List$T: Ty, a#6#0#0: Box, a#6#1#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#_module.List.ListCons(a#6#0#0, a#6#1#0), 
      Tclass._module.List(_module.List$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.List.ListCons(a#6#0#0, a#6#1#0), 
        Tclass._module.List(_module.List$T), 
        $h)
       <==> $IsAllocBox(a#6#0#0, _module.List$T, $h)
         && $IsAlloc(a#6#1#0, Tclass._module.List(_module.List$T), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.List$T: Ty, $h: Heap :: 
  { $IsAllocBox(_module.List.head(d), _module.List$T, $h) } 
  $IsGoodHeap($h)
       && 
      _module.List.ListCons_q(d)
       && $IsAlloc(d, Tclass._module.List(_module.List$T), $h)
     ==> $IsAllocBox(_module.List.head(d), _module.List$T, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.List$T: Ty, $h: Heap :: 
  { $IsAlloc(_module.List.tail(d), Tclass._module.List(_module.List$T), $h) } 
  $IsGoodHeap($h)
       && 
      _module.List.ListCons_q(d)
       && $IsAlloc(d, Tclass._module.List(_module.List$T), $h)
     ==> $IsAlloc(_module.List.tail(d), Tclass._module.List(_module.List$T), $h));

// Constructor literal
axiom (forall a#7#0#0: Box, a#7#1#0: DatatypeType :: 
  { #_module.List.ListCons(Lit(a#7#0#0), Lit(a#7#1#0)) } 
  #_module.List.ListCons(Lit(a#7#0#0), Lit(a#7#1#0))
     == Lit(#_module.List.ListCons(a#7#0#0, a#7#1#0)));

function _module.List.head(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#8#0#0: Box, a#8#1#0: DatatypeType :: 
  { #_module.List.ListCons(a#8#0#0, a#8#1#0) } 
  _module.List.head(#_module.List.ListCons(a#8#0#0, a#8#1#0)) == a#8#0#0);

// Inductive rank
axiom (forall a#9#0#0: Box, a#9#1#0: DatatypeType :: 
  { #_module.List.ListCons(a#9#0#0, a#9#1#0) } 
  BoxRank(a#9#0#0) < DtRank(#_module.List.ListCons(a#9#0#0, a#9#1#0)));

function _module.List.tail(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#10#0#0: Box, a#10#1#0: DatatypeType :: 
  { #_module.List.ListCons(a#10#0#0, a#10#1#0) } 
  _module.List.tail(#_module.List.ListCons(a#10#0#0, a#10#1#0)) == a#10#1#0);

// Inductive rank
axiom (forall a#11#0#0: Box, a#11#1#0: DatatypeType :: 
  { #_module.List.ListCons(a#11#0#0, a#11#1#0) } 
  DtRank(a#11#1#0) < DtRank(#_module.List.ListCons(a#11#0#0, a#11#1#0)));

// Depth-one case-split function
function $IsA#_module.List(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.List(d) } 
  $IsA#_module.List(d) ==> _module.List.Nil_q(d) || _module.List.ListCons_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.List$T: Ty, d: DatatypeType :: 
  { _module.List.ListCons_q(d), $Is(d, Tclass._module.List(_module.List$T)) } 
    { _module.List.Nil_q(d), $Is(d, Tclass._module.List(_module.List$T)) } 
  $Is(d, Tclass._module.List(_module.List$T))
     ==> _module.List.Nil_q(d) || _module.List.ListCons_q(d));

// Datatype extensional equality declaration
function _module.List#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.List.Nil
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.List#Equal(a, b), _module.List.Nil_q(a) } 
    { _module.List#Equal(a, b), _module.List.Nil_q(b) } 
  _module.List.Nil_q(a) && _module.List.Nil_q(b) ==> _module.List#Equal(a, b));

// Datatype extensional equality definition: #_module.List.ListCons
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.List#Equal(a, b), _module.List.ListCons_q(a) } 
    { _module.List#Equal(a, b), _module.List.ListCons_q(b) } 
  _module.List.ListCons_q(a) && _module.List.ListCons_q(b)
     ==> (_module.List#Equal(a, b)
       <==> _module.List.head(a) == _module.List.head(b)
         && _module.List#Equal(_module.List.tail(a), _module.List.tail(b))));

// Datatype extensionality axiom: _module.List
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.List#Equal(a, b) } 
  _module.List#Equal(a, b) <==> a == b);

const unique class._module.List: ClassName;

// Constructor function declaration
function #_module.Stream.Cons(Box, DatatypeType) : DatatypeType;

const unique ##_module.Stream.Cons: DtCtorId
uses {
// Constructor identifier
axiom (forall a#12#0#0: Box, a#12#1#0: DatatypeType :: 
  { #_module.Stream.Cons(a#12#0#0, a#12#1#0) } 
  DatatypeCtorId(#_module.Stream.Cons(a#12#0#0, a#12#1#0))
     == ##_module.Stream.Cons);
}

function _module.Stream.Cons_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Stream.Cons_q(d) } 
  _module.Stream.Cons_q(d) <==> DatatypeCtorId(d) == ##_module.Stream.Cons);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Stream.Cons_q(d) } 
  _module.Stream.Cons_q(d)
     ==> (exists a#13#0#0: Box, a#13#1#0: DatatypeType :: 
      d == #_module.Stream.Cons(a#13#0#0, a#13#1#0)));

// Constructor $Is
axiom (forall _module.Stream$T: Ty, a#14#0#0: Box, a#14#1#0: DatatypeType :: 
  { $Is(#_module.Stream.Cons(a#14#0#0, a#14#1#0), 
      Tclass._module.Stream(_module.Stream$T)) } 
  $Is(#_module.Stream.Cons(a#14#0#0, a#14#1#0), 
      Tclass._module.Stream(_module.Stream$T))
     <==> $IsBox(a#14#0#0, _module.Stream$T)
       && $Is(a#14#1#0, Tclass._module.Stream(_module.Stream$T)));

// Constructor $IsAlloc
axiom (forall _module.Stream$T: Ty, a#14#0#0: Box, a#14#1#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#_module.Stream.Cons(a#14#0#0, a#14#1#0), 
      Tclass._module.Stream(_module.Stream$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.Stream.Cons(a#14#0#0, a#14#1#0), 
        Tclass._module.Stream(_module.Stream$T), 
        $h)
       <==> $IsAllocBox(a#14#0#0, _module.Stream$T, $h)
         && $IsAlloc(a#14#1#0, Tclass._module.Stream(_module.Stream$T), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.Stream$T: Ty, $h: Heap :: 
  { $IsAllocBox(_module.Stream.head(d), _module.Stream$T, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Stream.Cons_q(d)
       && $IsAlloc(d, Tclass._module.Stream(_module.Stream$T), $h)
     ==> $IsAllocBox(_module.Stream.head(d), _module.Stream$T, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.Stream$T: Ty, $h: Heap :: 
  { $IsAlloc(_module.Stream.tail(d), Tclass._module.Stream(_module.Stream$T), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Stream.Cons_q(d)
       && $IsAlloc(d, Tclass._module.Stream(_module.Stream$T), $h)
     ==> $IsAlloc(_module.Stream.tail(d), Tclass._module.Stream(_module.Stream$T), $h));

function _module.Stream.head(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#15#0#0: Box, a#15#1#0: DatatypeType :: 
  { #_module.Stream.Cons(a#15#0#0, a#15#1#0) } 
  _module.Stream.head(#_module.Stream.Cons(a#15#0#0, a#15#1#0)) == a#15#0#0);

function _module.Stream.tail(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#16#0#0: Box, a#16#1#0: DatatypeType :: 
  { #_module.Stream.Cons(a#16#0#0, a#16#1#0) } 
  _module.Stream.tail(#_module.Stream.Cons(a#16#0#0, a#16#1#0)) == a#16#1#0);

// Depth-one case-split function
function $IsA#_module.Stream(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Stream(d) } 
  $IsA#_module.Stream(d) ==> _module.Stream.Cons_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.Stream$T: Ty, d: DatatypeType :: 
  { _module.Stream.Cons_q(d), $Is(d, Tclass._module.Stream(_module.Stream$T)) } 
  $Is(d, Tclass._module.Stream(_module.Stream$T)) ==> _module.Stream.Cons_q(d));

function $Eq#_module.Stream(Ty, Ty, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall _module.Stream$T#l: Ty, 
    _module.Stream$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, $LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.Stream(_module.Stream$T#l))
       && $Is(d1, Tclass._module.Stream(_module.Stream$T#r))
     ==> ($Eq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, $LS(ly), d0, d1)
       <==> _module.Stream.Cons_q(d0)
         && _module.Stream.Cons_q(d1)
         && (_module.Stream.Cons_q(d0) && _module.Stream.Cons_q(d1)
           ==> _module.Stream.head(d0) == _module.Stream.head(d1)
             && $Eq#_module.Stream(_module.Stream$T#l, 
              _module.Stream$T#r, 
              ly, 
              _module.Stream.tail(d0), 
              _module.Stream.tail(d1)))));

// Unbump layer co-equality axiom
axiom (forall _module.Stream$T#l: Ty, 
    _module.Stream$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, $LS(ly), d0, d1) } 
  $Eq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, $LS(ly), d0, d1)
     <==> $Eq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, ly, d0, d1));

// Equality for codatatypes
axiom (forall _module.Stream$T#l: Ty, 
    _module.Stream$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, $LS(ly), d0, d1) } 
  $Eq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, $LS(ly), d0, d1)
     <==> d0 == d1);

function $PrefixEq#_module.Stream(Ty, Ty, Box, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall _module.Stream$T#l: Ty, 
    _module.Stream$T#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, k, $LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.Stream(_module.Stream$T#l))
       && $Is(d1, Tclass._module.Stream(_module.Stream$T#r))
     ==> ($PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, k, $LS(ly), d0, d1)
       <==> (0 < ORD#Offset(k)
           ==> _module.Stream.Cons_q(d0)
             && _module.Stream.Cons_q(d1)
             && (_module.Stream.Cons_q(d0) && _module.Stream.Cons_q(d1)
               ==> _module.Stream.head(d0) == _module.Stream.head(d1)
                 && $PrefixEq#_module.Stream(_module.Stream$T#l, 
                  _module.Stream$T#r, 
                  ORD#Minus(k, ORD#FromNat(1)), 
                  ly, 
                  _module.Stream.tail(d0), 
                  _module.Stream.tail(d1))))
         && (k != ORD#FromNat(0) && ORD#IsLimit(k)
           ==> $Eq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, ly, d0, d1))));

// Unbump layer co-equality axiom
axiom (forall _module.Stream$T#l: Ty, 
    _module.Stream$T#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, k, $LS(ly), d0, d1) } 
  k != ORD#FromNat(0)
     ==> ($PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, k, $LS(ly), d0, d1)
       <==> $PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, k, ly, d0, d1)));

// Coequality and prefix equality connection
axiom (forall _module.Stream$T#l: Ty, 
    _module.Stream$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, $LS(ly), d0, d1) } 
  $Eq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, $LS(ly), d0, d1)
     <==> (forall k: Box :: 
      { $PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, k, $LS(ly), d0, d1) } 
      $PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, k, $LS(ly), d0, d1)));

// Coequality and prefix equality connection
axiom (forall _module.Stream$T#l: Ty, 
    _module.Stream$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, $LS(ly), d0, d1) } 
  (forall k: int :: 
      { $PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, ORD#FromNat(k), $LS(ly), d0, d1) } 
      0 <= k
         ==> $PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, ORD#FromNat(k), $LS(ly), d0, d1))
     ==> $Eq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, $LS(ly), d0, d1));

// Prefix equality consequence
axiom (forall _module.Stream$T#l: Ty, 
    _module.Stream$T#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType, 
    m: Box :: 
  { $PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, k, $LS(ly), d0, d1), $PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, m, $LS(ly), d0, d1) } 
  ORD#Less(k, m)
       && $PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, m, $LS(ly), d0, d1)
     ==> $PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, k, $LS(ly), d0, d1));

// Prefix equality shortcut
axiom (forall _module.Stream$T#l: Ty, 
    _module.Stream$T#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, k, $LS(ly), d0, d1) } 
  d0 == d1
     ==> $PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, k, $LS(ly), d0, d1));

const unique class._module.Stream: ClassName;

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

const unique tytagFamily$_#Func3: TyTagFamily;

const unique tytagFamily$_#PartialFunc3: TyTagFamily;

const unique tytagFamily$_#TotalFunc3: TyTagFamily;

const unique tytagFamily$Stream: TyTagFamily;

const unique tytagFamily$List: TyTagFamily;
