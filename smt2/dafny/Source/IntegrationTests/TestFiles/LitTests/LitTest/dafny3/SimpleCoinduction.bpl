// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/SimpleCoinduction.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/SimpleCoinduction-@PROC@.smt2 /normalizeNames:0 /emitDebugInformation:1 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/SimpleCoinduction.dfy

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

// function declaration for _module._default.Pos
function _module.__default.Pos($ly: LayerType, s#0: DatatypeType) : bool
uses {
// definition axiom for _module.__default.Pos (revealed)
axiom {:id "id0"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, s#0: DatatypeType :: 
    { _module.__default.Pos($LS($ly), s#0) } 
    _module.__default.Pos#canCall(s#0)
         || (1 < $FunctionContextHeight && $Is(s#0, Tclass._module.Stream(TInt)))
       ==> _module.Stream.Cons_q(s#0)
         && ($Unbox(_module.Stream.head(s#0)): int > 0
           ==> _module.Stream.Cons_q(s#0)
             && _module.__default.Pos#canCall(_module.Stream.tail(s#0)))
         && _module.__default.Pos($LS($ly), s#0)
           == ($Unbox(_module.Stream.head(s#0)): int > 0
             && _module.__default.Pos($ly, _module.Stream.tail(s#0))));
}

function _module.__default.Pos#canCall(s#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, s#0: DatatypeType :: 
  { _module.__default.Pos($LS($ly), s#0) } 
  _module.__default.Pos($LS($ly), s#0) == _module.__default.Pos($ly, s#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, s#0: DatatypeType :: 
  { _module.__default.Pos(AsFuelBottom($ly), s#0) } 
  _module.__default.Pos($ly, s#0) == _module.__default.Pos($LZ, s#0));

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

function _module.__default.Pos#requires(LayerType, DatatypeType) : bool;

// #requires axiom for _module.__default.Pos
axiom (forall $ly: LayerType, s#0: DatatypeType :: 
  { _module.__default.Pos#requires($ly, s#0) } 
  $Is(s#0, Tclass._module.Stream(TInt))
     ==> _module.__default.Pos#requires($ly, s#0) == true);

// 1st prefix predicate axiom for _module.__default.Pos_h
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, s#0: DatatypeType :: 
    { _module.__default.Pos($LS($ly), s#0) } 
    $Is(s#0, Tclass._module.Stream(TInt)) && _module.__default.Pos($LS($ly), s#0)
       ==> (forall _k#0: Box :: 
        { _module.__default.Pos_h($LS($ly), _k#0, s#0) } 
        _module.__default.Pos_h($LS($ly), _k#0, s#0)));

// 2nd prefix predicate axiom
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, s#0: DatatypeType :: 
    { _module.__default.Pos($LS($ly), s#0) } 
    $Is(s#0, Tclass._module.Stream(TInt))
         && (forall _k#0: Box :: 
          { _module.__default.Pos_h($LS($ly), _k#0, s#0) } 
          _module.__default.Pos_h($LS($ly), _k#0, s#0))
       ==> _module.__default.Pos($LS($ly), s#0));

// 3rd prefix predicate axiom
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, s#0: DatatypeType, _k#0: Box :: 
    { _module.__default.Pos_h($ly, _k#0, s#0) } 
    $Is(s#0, Tclass._module.Stream(TInt)) && _k#0 == ORD#FromNat(0)
       ==> _module.__default.Pos_h($ly, _k#0, s#0));

procedure {:verboseName "Pos (well-formedness)"} CheckWellformed$$_module.__default.Pos(s#0: DatatypeType where $Is(s#0, Tclass._module.Stream(TInt)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.Pos#
function _module.__default.Pos_h($ly: LayerType, _k#0: Box, s#0: DatatypeType) : bool
uses {
// definition axiom for _module.__default.Pos_h (revealed)
axiom {:id "id2"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, _k#0: Box, s#0: DatatypeType :: 
    { _module.__default.Pos_h($LS($ly), _k#0, s#0) } 
    _module.__default.Pos_h#canCall(_k#0, s#0)
         || (2 < $FunctionContextHeight && $Is(s#0, Tclass._module.Stream(TInt)))
       ==> (0 < ORD#Offset(_k#0)
           ==> _module.Stream.Cons_q(s#0)
             && ($Unbox(_module.Stream.head(s#0)): int > 0
               ==> _module.Stream.Cons_q(s#0)
                 && _module.__default.Pos_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), _module.Stream.tail(s#0))))
         && (
          (0 < ORD#Offset(_k#0)
           ==> $Unbox(_module.Stream.head(s#0)): int > 0
             && _module.__default.Pos_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), _module.Stream.tail(s#0)))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#0: Box :: 
            { _module.__default.Pos_h($ly, _k'#0, s#0) } 
            ORD#Less(_k'#0, _k#0) ==> _module.__default.Pos_h#canCall(_k'#0, s#0)))
         && _module.__default.Pos_h($LS($ly), _k#0, s#0)
           == ((0 < ORD#Offset(_k#0)
               ==> $Unbox(_module.Stream.head(s#0)): int > 0
                 && _module.__default.Pos_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), _module.Stream.tail(s#0)))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#0: Box :: 
                { _module.__default.Pos_h($ly, _k'#0, s#0) } 
                ORD#Less(_k'#0, _k#0) ==> _module.__default.Pos_h($ly, _k'#0, s#0)))));
// definition axiom for _module.__default.Pos_h for decreasing-related literals (revealed)
axiom {:id "id3"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, _k#0: Box, s#0: DatatypeType :: 
    {:weight 3} { _module.__default.Pos_h($LS($ly), Lit(_k#0), s#0) } 
    _module.__default.Pos_h#canCall(Lit(_k#0), s#0)
         || (2 < $FunctionContextHeight && $Is(s#0, Tclass._module.Stream(TInt)))
       ==> (0 < ORD#Offset(_k#0)
           ==> _module.Stream.Cons_q(s#0)
             && ($Unbox(_module.Stream.head(s#0)): int > 0
               ==> _module.Stream.Cons_q(s#0)
                 && _module.__default.Pos_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), _module.Stream.tail(s#0))))
         && (
          (0 < ORD#Offset(_k#0)
           ==> $Unbox(_module.Stream.head(s#0)): int > 0
             && _module.__default.Pos_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), _module.Stream.tail(s#0)))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#1: Box :: 
            { _module.__default.Pos_h($LS($ly), _k'#1, s#0) } 
            ORD#Less(_k'#1, _k#0) ==> _module.__default.Pos_h#canCall(_k'#1, s#0)))
         && _module.__default.Pos_h($LS($ly), Lit(_k#0), s#0)
           == ((0 < ORD#Offset(_k#0)
               ==> $Unbox(_module.Stream.head(s#0)): int > 0
                 && _module.__default.Pos_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), _module.Stream.tail(s#0)))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#1: Box :: 
                { _module.__default.Pos_h($LS($ly), _k'#1, s#0) } 
                ORD#Less(_k'#1, _k#0) ==> _module.__default.Pos_h($LS($ly), _k'#1, s#0)))));
// definition axiom for _module.__default.Pos_h for all literals (revealed)
axiom {:id "id4"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, _k#0: Box, s#0: DatatypeType :: 
    {:weight 3} { _module.__default.Pos_h($LS($ly), Lit(_k#0), Lit(s#0)) } 
    _module.__default.Pos_h#canCall(Lit(_k#0), Lit(s#0))
         || (2 < $FunctionContextHeight && $Is(s#0, Tclass._module.Stream(TInt)))
       ==> (0 < ORD#Offset(_k#0)
           ==> _module.Stream.Cons_q(Lit(s#0))
             && (Lit($Unbox(_module.Stream.head(Lit(s#0))): int > 0)
               ==> _module.Stream.Cons_q(Lit(s#0))
                 && _module.__default.Pos_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), Lit(_module.Stream.tail(Lit(s#0))))))
         && (
          (0 < ORD#Offset(_k#0)
           ==> $Unbox(_module.Stream.head(Lit(s#0))): int > 0
             && _module.__default.Pos_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), Lit(_module.Stream.tail(Lit(s#0)))))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#2: Box :: 
            { _module.__default.Pos_h($LS($ly), _k'#2, s#0) } 
            ORD#Less(_k'#2, _k#0) ==> _module.__default.Pos_h#canCall(_k'#2, s#0)))
         && _module.__default.Pos_h($LS($ly), Lit(_k#0), Lit(s#0))
           == ((0 < ORD#Offset(_k#0)
               ==> $Unbox(_module.Stream.head(Lit(s#0))): int > 0
                 && _module.__default.Pos_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), Lit(_module.Stream.tail(Lit(s#0)))))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#2: Box :: 
                { _module.__default.Pos_h($LS($ly), _k'#2, s#0) } 
                ORD#Less(_k'#2, _k#0) ==> _module.__default.Pos_h($LS($ly), _k'#2, s#0)))));
}

function _module.__default.Pos_h#canCall(_k#0: Box, s#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, _k#0: Box, s#0: DatatypeType :: 
  { _module.__default.Pos_h($LS($ly), _k#0, s#0) } 
  _module.__default.Pos_h($LS($ly), _k#0, s#0)
     == _module.__default.Pos_h($ly, _k#0, s#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, _k#0: Box, s#0: DatatypeType :: 
  { _module.__default.Pos_h(AsFuelBottom($ly), _k#0, s#0) } 
  _module.__default.Pos_h($ly, _k#0, s#0)
     == _module.__default.Pos_h($LZ, _k#0, s#0));

function _module.__default.Pos_h#requires(LayerType, Box, DatatypeType) : bool;

// #requires axiom for _module.__default.Pos_h
axiom (forall $ly: LayerType, _k#0: Box, s#0: DatatypeType :: 
  { _module.__default.Pos_h#requires($ly, _k#0, s#0) } 
  $Is(s#0, Tclass._module.Stream(TInt))
     ==> _module.__default.Pos_h#requires($ly, _k#0, s#0) == true);

// function declaration for _module._default.Up
function _module.__default.Up($ly: LayerType, n#0: int) : DatatypeType
uses {
// consequence axiom for _module.__default.Up
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.Up($ly, n#0) } 
    _module.__default.Up#canCall(n#0) || 1 < $FunctionContextHeight
       ==> $Is(_module.__default.Up($ly, n#0), Tclass._module.Stream(TInt)));
// definition axiom for _module.__default.Up (revealed)
axiom {:id "id5"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.Up($LS($ly), n#0) } 
    _module.__default.Up#canCall(n#0) || 1 < $FunctionContextHeight
       ==> _module.__default.Up#canCall(n#0 + 1)
         && _module.__default.Up($LS($ly), n#0)
           == #_module.Stream.Cons($Box(n#0), _module.__default.Up($ly, n#0 + 1)));
}

function _module.__default.Up#canCall(n#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.Up($LS($ly), n#0) } 
  _module.__default.Up($LS($ly), n#0) == _module.__default.Up($ly, n#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.Up(AsFuelBottom($ly), n#0) } 
  _module.__default.Up($ly, n#0) == _module.__default.Up($LZ, n#0));

function _module.__default.Up#requires(LayerType, int) : bool;

// #requires axiom for _module.__default.Up
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.Up#requires($ly, n#0) } 
  _module.__default.Up#requires($ly, n#0) == true);

procedure {:verboseName "Up (well-formedness)"} CheckWellformed$$_module.__default.Up(n#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.Inc
function _module.__default.Inc($ly: LayerType, s#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.Inc
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, s#0: DatatypeType :: 
    { _module.__default.Inc($ly, s#0) } 
    _module.__default.Inc#canCall(s#0)
         || (1 < $FunctionContextHeight && $Is(s#0, Tclass._module.Stream(TInt)))
       ==> $Is(_module.__default.Inc($ly, s#0), Tclass._module.Stream(TInt)));
// definition axiom for _module.__default.Inc (revealed)
axiom {:id "id7"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, s#0: DatatypeType :: 
    { _module.__default.Inc($LS($ly), s#0) } 
    _module.__default.Inc#canCall(s#0)
         || (1 < $FunctionContextHeight && $Is(s#0, Tclass._module.Stream(TInt)))
       ==> _module.Stream.Cons_q(s#0)
         && 
        _module.Stream.Cons_q(s#0)
         && _module.__default.Inc#canCall(_module.Stream.tail(s#0))
         && _module.__default.Inc($LS($ly), s#0)
           == #_module.Stream.Cons($Box($Unbox(_module.Stream.head(s#0)): int + 1), 
            _module.__default.Inc($ly, _module.Stream.tail(s#0))));
}

function _module.__default.Inc#canCall(s#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, s#0: DatatypeType :: 
  { _module.__default.Inc($LS($ly), s#0) } 
  _module.__default.Inc($LS($ly), s#0) == _module.__default.Inc($ly, s#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, s#0: DatatypeType :: 
  { _module.__default.Inc(AsFuelBottom($ly), s#0) } 
  _module.__default.Inc($ly, s#0) == _module.__default.Inc($LZ, s#0));

function _module.__default.Inc#requires(LayerType, DatatypeType) : bool;

// #requires axiom for _module.__default.Inc
axiom (forall $ly: LayerType, s#0: DatatypeType :: 
  { _module.__default.Inc#requires($ly, s#0) } 
  $Is(s#0, Tclass._module.Stream(TInt))
     ==> _module.__default.Inc#requires($ly, s#0) == true);

procedure {:verboseName "Inc (well-formedness)"} CheckWellformed$$_module.__default.Inc(s#0: DatatypeType where $Is(s#0, Tclass._module.Stream(TInt)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "UpLemma (well-formedness)"} CheckWellFormed$$_module.__default.UpLemma(k#0: int where LitInt(0) <= k#0, n#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "UpLemma (well-formedness)"} CheckWellFormed$$_module.__default.UpLemma(k#0: int, n#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##s#0: DatatypeType;
  var ##n#0: int;
  var ##n#1: int;


    // AddMethodImpl: UpLemma, CheckWellFormed$$_module.__default.UpLemma
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume old($Heap) == $Heap;
    ##n#0 := n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#0, TInt, $Heap);
    assume _module.__default.Up#canCall(n#0);
    assume _module.Stream.Cons_q(_module.__default.Up($LS($LZ), n#0));
    ##s#0 := _module.__default.Up($LS($LZ), n#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#0, Tclass._module.Stream(TInt), $Heap);
    assume _module.__default.Inc#canCall(_module.__default.Up($LS($LZ), n#0));
    assume _module.Stream.Cons_q(_module.__default.Inc($LS($LZ), _module.__default.Up($LS($LZ), n#0)));
    ##n#1 := n#0 + 1;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#1, TInt, $Heap);
    assume _module.__default.Up#canCall(n#0 + 1);
    assume _module.Stream.Cons_q(_module.__default.Up($LS($LZ), n#0 + 1));
    assert {:id "id9"} 0 <= k#0;
    assume {:id "id10"} $PrefixEq#_module.Stream(TInt, 
      TInt, 
      ORD#FromNat(k#0), 
      $LS($LS($LZ)), 
      _module.__default.Inc($LS($LZ), _module.__default.Up($LS($LZ), n#0)), 
      _module.__default.Up($LS($LZ), n#0 + 1));
}



procedure {:verboseName "UpLemma (call)"} Call$$_module.__default.UpLemma(k#0: int where LitInt(0) <= k#0, n#0: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Up#canCall(n#0)
     && _module.__default.Inc#canCall(_module.__default.Up($LS($LZ), n#0))
     && _module.__default.Up#canCall(n#0 + 1);
  free ensures {:id "id11"} $PrefixEq#_module.Stream(TInt, 
    TInt, 
    ORD#FromNat(k#0), 
    $LS($LS($LZ)), 
    _module.__default.Inc($LS($LZ), _module.__default.Up($LS($LZ), n#0)), 
    _module.__default.Up($LS($LZ), n#0 + 1));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "UpLemma (correctness)"} Impl$$_module.__default.UpLemma(k#0: int where LitInt(0) <= k#0, n#0: int) returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Up#canCall(n#0)
     && _module.__default.Inc#canCall(_module.__default.Up($LS($LZ), n#0))
     && _module.__default.Up#canCall(n#0 + 1);
  ensures {:id "id12"} $PrefixEq#_module.Stream(TInt, 
      TInt, 
      ORD#FromNat(k#0), 
      $LS($LS($LZ)), 
      _module.__default.Inc($LS($LZ), _module.__default.Up($LS($LZ), n#0)), 
      _module.__default.Up($LS($LZ), n#0 + 1))
     || (0 < k#0
       ==> 
      _module.Stream.Cons_q(_module.__default.Inc($LS($LS($LZ)), _module.__default.Up($LS($LS($LZ)), n#0)))
       ==> _module.Stream.Cons_q(_module.__default.Up($LS($LS($LZ)), n#0 + 1))
         && 
        $Unbox(_module.Stream.head(_module.__default.Inc($LS($LS($LZ)), _module.__default.Up($LS($LS($LZ)), n#0)))): int
           == $Unbox(_module.Stream.head(_module.__default.Up($LS($LS($LZ)), n#0 + 1))): int
         && $PrefixEq#_module.Stream(TInt, 
          TInt, 
          ORD#FromNat(k#0 - 1), 
          $LS($LS($LZ)), 
          _module.Stream.tail(_module.__default.Inc($LS($LS($LZ)), _module.__default.Up($LS($LS($LZ)), n#0))), 
          _module.Stream.tail(_module.__default.Up($LS($LS($LZ)), n#0 + 1))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "UpLemma (correctness)"} Impl$$_module.__default.UpLemma(k#0: int, n#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var k##0_0: int;
  var n##0_0: int;

    // AddMethodImpl: UpLemma, Impl$$_module.__default.UpLemma
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/SimpleCoinduction.dfy(27,3)
    assume true;
    if (k#0 != 0)
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/SimpleCoinduction.dfy(28,12)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id13"} $Is(k#0 - 1, Tclass._System.nat());
        k##0_0 := k#0 - 1;
        assume true;
        // ProcessCallStmt: CheckSubrange
        n##0_0 := n#0 + 1;
        assert {:id "id14"} 0 <= k#0 || k##0_0 == k#0;
        assert {:id "id15"} 0 <= n#0 || k##0_0 < k#0 || n##0_0 == n#0;
        assert {:id "id16"} k##0_0 < k#0 || (k##0_0 == k#0 && n##0_0 < n#0);
        call {:id "id17"} Call$$_module.__default.UpLemma(k##0_0, n##0_0);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
    }
}



procedure {:verboseName "CoUpLemma (well-formedness)"} CheckWellFormed$$_module.__default.CoUpLemma(n#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "CoUpLemma (call)"} Call$$_module.__default.CoUpLemma(n#0: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Stream(_module.__default.Inc($LS($LZ), _module.__default.Up($LS($LZ), n#0)))
     && $IsA#_module.Stream(_module.__default.Up($LS($LZ), n#0 + 1))
     && 
    _module.__default.Up#canCall(n#0)
     && _module.__default.Inc#canCall(_module.__default.Up($LS($LZ), n#0))
     && _module.__default.Up#canCall(n#0 + 1);
  ensures {:id "id19"} $Eq#_module.Stream(TInt, 
    TInt, 
    $LS($LS($LZ)), 
    _module.__default.Inc($LS($LS($LZ)), _module.__default.Up($LS($LS($LZ)), n#0)), 
    _module.__default.Up($LS($LS($LZ)), n#0 + 1));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "CoUpLemma# (co-call)"} CoCall$$_module.__default.CoUpLemma_h(_k#0: Box, n#1: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Up#canCall(n#1)
     && _module.__default.Inc#canCall(_module.__default.Up($LS($LZ), n#1))
     && _module.__default.Up#canCall(n#1 + 1);
  free ensures {:id "id20"} $PrefixEq#_module.Stream(TInt, 
    TInt, 
    _k#0, 
    $LS($LS($LZ)), 
    _module.__default.Inc($LS($LZ), _module.__default.Up($LS($LZ), n#1)), 
    _module.__default.Up($LS($LZ), n#1 + 1));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "CoUpLemma# (correctness)"} Impl$$_module.__default.CoUpLemma_h(_k#0: Box, n#1: int) returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Up#canCall(n#1)
     && _module.__default.Inc#canCall(_module.__default.Up($LS($LZ), n#1))
     && _module.__default.Up#canCall(n#1 + 1);
  ensures {:id "id21"} $PrefixEq#_module.Stream(TInt, 
      TInt, 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.Inc($LS($LZ), _module.__default.Up($LS($LZ), n#1)), 
      _module.__default.Up($LS($LZ), n#1 + 1))
     || (0 < ORD#Offset(_k#0)
       ==> 
      _module.Stream.Cons_q(_module.__default.Inc($LS($LS($LZ)), _module.__default.Up($LS($LS($LZ)), n#1)))
       ==> _module.Stream.Cons_q(_module.__default.Up($LS($LS($LZ)), n#1 + 1))
         && 
        $Unbox(_module.Stream.head(_module.__default.Inc($LS($LS($LZ)), _module.__default.Up($LS($LS($LZ)), n#1)))): int
           == $Unbox(_module.Stream.head(_module.__default.Up($LS($LS($LZ)), n#1 + 1))): int
         && $PrefixEq#_module.Stream(TInt, 
          TInt, 
          ORD#Minus(_k#0, ORD#FromNat(1)), 
          $LS($LS($LZ)), 
          _module.Stream.tail(_module.__default.Inc($LS($LS($LZ)), _module.__default.Up($LS($LS($LZ)), n#1))), 
          _module.Stream.tail(_module.__default.Up($LS($LS($LZ)), n#1 + 1))));
  ensures {:id "id22"} $PrefixEq#_module.Stream(TInt, 
      TInt, 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.Inc($LS($LZ), _module.__default.Up($LS($LZ), n#1)), 
      _module.__default.Up($LS($LZ), n#1 + 1))
     || 
    (0 < ORD#Offset(_k#0)
       ==> 
      _module.Stream.Cons_q(_module.__default.Inc($LS($LS($LZ)), _module.__default.Up($LS($LS($LZ)), n#1)))
       ==> _module.Stream.Cons_q(_module.__default.Up($LS($LS($LZ)), n#1 + 1))
         && 
        $Unbox(_module.Stream.head(_module.__default.Inc($LS($LS($LZ)), _module.__default.Up($LS($LS($LZ)), n#1)))): int
           == $Unbox(_module.Stream.head(_module.__default.Up($LS($LS($LZ)), n#1 + 1))): int
         && $PrefixEq#_module.Stream(TInt, 
          TInt, 
          ORD#Minus(_k#0, ORD#FromNat(1)), 
          $LS($LS($LZ)), 
          _module.Stream.tail(_module.__default.Inc($LS($LS($LZ)), _module.__default.Up($LS($LS($LZ)), n#1))), 
          _module.Stream.tail(_module.__default.Up($LS($LS($LZ)), n#1 + 1))))
     || (_k#0 != ORD#FromNat(0) && ORD#IsLimit(_k#0)
       ==> $Eq#_module.Stream(TInt, 
        TInt, 
        $LS($LS($LZ)), 
        _module.__default.Inc($LS($LZ), _module.__default.Up($LS($LZ), n#1)), 
        _module.__default.Up($LS($LZ), n#1 + 1)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "CoUpLemma# (correctness)"} Impl$$_module.__default.CoUpLemma_h(_k#0: Box, n#1: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var _k##0: Box;
  var n##0: int;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: CoUpLemma#, Impl$$_module.__default.CoUpLemma_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/SimpleCoinduction.dfy(34,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/SimpleCoinduction.dfy(35,12)
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id23"} ORD#IsNat(Lit(ORD#FromNat(1)));
        assert {:id "id24"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
        assume true;
        // ProcessCallStmt: CheckSubrange
        _k##0 := ORD#Minus(_k#0, ORD#FromNat(1));
        assume true;
        // ProcessCallStmt: CheckSubrange
        n##0 := n#1 + 1;
        call {:id "id25"} CoCall$$_module.__default.CoUpLemma_h(_k##0, n##0);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/SimpleCoinduction.dfy(34,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#0: Box, n#2: int, _t#0#0: int :: 
          { _module.__default.Up($LS($LZ), _t#0#0), _module.__default.Up($LS($LZ), n#2), ORD#Less(_k'#0, _k#0) } 
          _t#0#0 == n#2 + 1 && ORD#Less(_k'#0, _k#0)
             ==> $PrefixEq#_module.Stream(TInt, 
              TInt, 
              _k'#0, 
              $LS($LS($LZ)), 
              _module.__default.Inc($LS($LZ), _module.__default.Up($LS($LZ), n#2)), 
              _module.__default.Up($LS($LZ), _t#0#0)));
    }
}



procedure {:verboseName "UpLemma_Auto (well-formedness)"} CheckWellFormed$$_module.__default.UpLemma__Auto(k#0: int where LitInt(0) <= k#0, n#0: int, nn#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "UpLemma_Auto (well-formedness)"} CheckWellFormed$$_module.__default.UpLemma__Auto(k#0: int, n#0: int, nn#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##s#0: DatatypeType;
  var ##n#0: int;
  var ##n#1: int;


    // AddMethodImpl: UpLemma_Auto, CheckWellFormed$$_module.__default.UpLemma__Auto
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume old($Heap) == $Heap;
    if (*)
    {
        assume {:id "id26"} nn#0 == n#0 + 1;
        ##n#0 := n#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0, TInt, $Heap);
        assume _module.__default.Up#canCall(n#0);
        assume _module.Stream.Cons_q(_module.__default.Up($LS($LZ), n#0));
        ##s#0 := _module.__default.Up($LS($LZ), n#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##s#0, Tclass._module.Stream(TInt), $Heap);
        assume _module.__default.Inc#canCall(_module.__default.Up($LS($LZ), n#0));
        assume _module.Stream.Cons_q(_module.__default.Inc($LS($LZ), _module.__default.Up($LS($LZ), n#0)));
        ##n#1 := nn#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#1, TInt, $Heap);
        assume _module.__default.Up#canCall(nn#0);
        assume _module.Stream.Cons_q(_module.__default.Up($LS($LZ), nn#0));
        assert {:id "id27"} 0 <= k#0;
        assume {:id "id28"} $PrefixEq#_module.Stream(TInt, 
          TInt, 
          ORD#FromNat(k#0), 
          $LS($LS($LZ)), 
          _module.__default.Inc($LS($LZ), _module.__default.Up($LS($LZ), n#0)), 
          _module.__default.Up($LS($LZ), nn#0));
    }
    else
    {
        assume {:id "id29"} nn#0 == n#0 + 1
           ==> $PrefixEq#_module.Stream(TInt, 
            TInt, 
            ORD#FromNat(k#0), 
            $LS($LS($LZ)), 
            _module.__default.Inc($LS($LZ), _module.__default.Up($LS($LZ), n#0)), 
            _module.__default.Up($LS($LZ), nn#0));
    }
}



procedure {:verboseName "UpLemma_Auto (call)"} Call$$_module.__default.UpLemma__Auto(k#0: int where LitInt(0) <= k#0, n#0: int, nn#0: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures nn#0 == n#0 + 1
     ==> _module.__default.Up#canCall(n#0)
       && _module.__default.Inc#canCall(_module.__default.Up($LS($LZ), n#0))
       && _module.__default.Up#canCall(nn#0);
  free ensures {:id "id30"} nn#0 == n#0 + 1
     ==> $PrefixEq#_module.Stream(TInt, 
      TInt, 
      ORD#FromNat(k#0), 
      $LS($LS($LZ)), 
      _module.__default.Inc($LS($LZ), _module.__default.Up($LS($LZ), n#0)), 
      _module.__default.Up($LS($LZ), nn#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "UpLemma_Auto (correctness)"} Impl$$_module.__default.UpLemma__Auto(k#0: int where LitInt(0) <= k#0, n#0: int, nn#0: int)
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures nn#0 == n#0 + 1
     ==> _module.__default.Up#canCall(n#0)
       && _module.__default.Inc#canCall(_module.__default.Up($LS($LZ), n#0))
       && _module.__default.Up#canCall(nn#0);
  ensures {:id "id31"} nn#0 == n#0 + 1
     ==> $PrefixEq#_module.Stream(TInt, 
        TInt, 
        ORD#FromNat(k#0), 
        $LS($LS($LZ)), 
        _module.__default.Inc($LS($LZ), _module.__default.Up($LS($LZ), n#0)), 
        _module.__default.Up($LS($LZ), nn#0))
       || (0 < k#0
         ==> 
        _module.Stream.Cons_q(_module.__default.Inc($LS($LS($LZ)), _module.__default.Up($LS($LS($LZ)), n#0)))
         ==> _module.Stream.Cons_q(_module.__default.Up($LS($LS($LZ)), nn#0))
           && 
          $Unbox(_module.Stream.head(_module.__default.Inc($LS($LS($LZ)), _module.__default.Up($LS($LS($LZ)), n#0)))): int
             == $Unbox(_module.Stream.head(_module.__default.Up($LS($LS($LZ)), nn#0))): int
           && $PrefixEq#_module.Stream(TInt, 
            TInt, 
            ORD#FromNat(k#0 - 1), 
            $LS($LS($LZ)), 
            _module.Stream.tail(_module.__default.Inc($LS($LS($LZ)), _module.__default.Up($LS($LS($LZ)), n#0))), 
            _module.Stream.tail(_module.__default.Up($LS($LS($LZ)), nn#0))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "UpLemma_Auto (correctness)"} Impl$$_module.__default.UpLemma__Auto(k#0: int, n#0: int, nn#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;

    // AddMethodImpl: UpLemma_Auto, Impl$$_module.__default.UpLemma__Auto
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#k0#0: int, $ih#n0#0: int, $ih#nn0#0: int :: 
      { $PrefixEq#_module.Stream(TInt, 
          TInt, 
          ORD#FromNat($ih#k0#0), 
          $LS($LS($LZ)), 
          _module.__default.Inc($LS($LZ), _module.__default.Up($LS($LZ), $ih#n0#0)), 
          _module.__default.Up($LS($LZ), $ih#nn0#0)) } 
      LitInt(0) <= $ih#k0#0
           && Lit(true)
           && ((0 <= $ih#k0#0 && $ih#k0#0 < k#0)
             || ($ih#k0#0 == k#0
               && ((0 <= $ih#n0#0 && $ih#n0#0 < n#0)
                 || ($ih#n0#0 == n#0 && 0 <= $ih#nn0#0 && $ih#nn0#0 < nn#0))))
         ==> 
        $ih#nn0#0 == $ih#n0#0 + 1
         ==> $PrefixEq#_module.Stream(TInt, 
          TInt, 
          ORD#FromNat($ih#k0#0), 
          $LS($LS($LZ)), 
          _module.__default.Inc($LS($LZ), _module.__default.Up($LS($LZ), $ih#n0#0)), 
          _module.__default.Up($LS($LZ), $ih#nn0#0)));
    $_reverifyPost := false;
}



procedure {:verboseName "CoUpLemma_Auto (well-formedness)"} CheckWellFormed$$_module.__default.CoUpLemma__Auto(n#0: int, nn#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "CoUpLemma_Auto (call)"} Call$$_module.__default.CoUpLemma__Auto(n#0: int, nn#0: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures nn#0 == n#0 + 1
     ==> $IsA#_module.Stream(_module.__default.Inc($LS($LZ), _module.__default.Up($LS($LZ), n#0)))
       && $IsA#_module.Stream(_module.__default.Up($LS($LZ), nn#0))
       && 
      _module.__default.Up#canCall(n#0)
       && _module.__default.Inc#canCall(_module.__default.Up($LS($LZ), n#0))
       && _module.__default.Up#canCall(nn#0);
  ensures {:id "id35"} nn#0 == n#0 + 1
     ==> $Eq#_module.Stream(TInt, 
      TInt, 
      $LS($LS($LZ)), 
      _module.__default.Inc($LS($LS($LZ)), _module.__default.Up($LS($LS($LZ)), n#0)), 
      _module.__default.Up($LS($LS($LZ)), nn#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "CoUpLemma_Auto# (co-call)"} CoCall$$_module.__default.CoUpLemma__Auto_h(_k#0: Box, n#1: int, nn#1: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures nn#1 == n#1 + 1
     ==> _module.__default.Up#canCall(n#1)
       && _module.__default.Inc#canCall(_module.__default.Up($LS($LZ), n#1))
       && _module.__default.Up#canCall(nn#1);
  free ensures {:id "id36"} nn#1 == n#1 + 1
     ==> $PrefixEq#_module.Stream(TInt, 
      TInt, 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.Inc($LS($LZ), _module.__default.Up($LS($LZ), n#1)), 
      _module.__default.Up($LS($LZ), nn#1));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "CoUpLemma_Auto# (correctness)"} Impl$$_module.__default.CoUpLemma__Auto_h(_k#0: Box, n#1: int, nn#1: int) returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures nn#1 == n#1 + 1
     ==> _module.__default.Up#canCall(n#1)
       && _module.__default.Inc#canCall(_module.__default.Up($LS($LZ), n#1))
       && _module.__default.Up#canCall(nn#1);
  ensures {:id "id37"} nn#1 == n#1 + 1
     ==> $PrefixEq#_module.Stream(TInt, 
        TInt, 
        _k#0, 
        $LS($LS($LZ)), 
        _module.__default.Inc($LS($LZ), _module.__default.Up($LS($LZ), n#1)), 
        _module.__default.Up($LS($LZ), nn#1))
       || (0 < ORD#Offset(_k#0)
         ==> 
        _module.Stream.Cons_q(_module.__default.Inc($LS($LS($LZ)), _module.__default.Up($LS($LS($LZ)), n#1)))
         ==> _module.Stream.Cons_q(_module.__default.Up($LS($LS($LZ)), nn#1))
           && 
          $Unbox(_module.Stream.head(_module.__default.Inc($LS($LS($LZ)), _module.__default.Up($LS($LS($LZ)), n#1)))): int
             == $Unbox(_module.Stream.head(_module.__default.Up($LS($LS($LZ)), nn#1))): int
           && $PrefixEq#_module.Stream(TInt, 
            TInt, 
            ORD#Minus(_k#0, ORD#FromNat(1)), 
            $LS($LS($LZ)), 
            _module.Stream.tail(_module.__default.Inc($LS($LS($LZ)), _module.__default.Up($LS($LS($LZ)), n#1))), 
            _module.Stream.tail(_module.__default.Up($LS($LS($LZ)), nn#1))));
  ensures {:id "id38"} nn#1 == n#1 + 1
     ==> $PrefixEq#_module.Stream(TInt, 
        TInt, 
        _k#0, 
        $LS($LS($LZ)), 
        _module.__default.Inc($LS($LZ), _module.__default.Up($LS($LZ), n#1)), 
        _module.__default.Up($LS($LZ), nn#1))
       || 
      (0 < ORD#Offset(_k#0)
         ==> 
        _module.Stream.Cons_q(_module.__default.Inc($LS($LS($LZ)), _module.__default.Up($LS($LS($LZ)), n#1)))
         ==> _module.Stream.Cons_q(_module.__default.Up($LS($LS($LZ)), nn#1))
           && 
          $Unbox(_module.Stream.head(_module.__default.Inc($LS($LS($LZ)), _module.__default.Up($LS($LS($LZ)), n#1)))): int
             == $Unbox(_module.Stream.head(_module.__default.Up($LS($LS($LZ)), nn#1))): int
           && $PrefixEq#_module.Stream(TInt, 
            TInt, 
            ORD#Minus(_k#0, ORD#FromNat(1)), 
            $LS($LS($LZ)), 
            _module.Stream.tail(_module.__default.Inc($LS($LS($LZ)), _module.__default.Up($LS($LS($LZ)), n#1))), 
            _module.Stream.tail(_module.__default.Up($LS($LS($LZ)), nn#1))))
       || (_k#0 != ORD#FromNat(0) && ORD#IsLimit(_k#0)
         ==> $Eq#_module.Stream(TInt, 
          TInt, 
          $LS($LS($LZ)), 
          _module.__default.Inc($LS($LZ), _module.__default.Up($LS($LZ), n#1)), 
          _module.__default.Up($LS($LZ), nn#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "CoUpLemma_Auto# (correctness)"} Impl$$_module.__default.CoUpLemma__Auto_h(_k#0: Box, n#1: int, nn#1: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: CoUpLemma_Auto#, Impl$$_module.__default.CoUpLemma__Auto_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box, $ih#n0#0: int, $ih#nn0#0: int :: 
      { $PrefixEq#_module.Stream(TInt, 
          TInt, 
          $ih#_k0#0, 
          $LS($LS($LZ)), 
          _module.__default.Inc($LS($LZ), _module.__default.Up($LS($LZ), $ih#n0#0)), 
          _module.__default.Up($LS($LZ), $ih#nn0#0)) } 
      Lit(true)
           && (ORD#Less($ih#_k0#0, _k#0)
             || ($ih#_k0#0 == _k#0
               && ((0 <= $ih#n0#0 && $ih#n0#0 < n#1)
                 || ($ih#n0#0 == n#1 && 0 <= $ih#nn0#0 && $ih#nn0#0 < nn#1))))
         ==> 
        $ih#nn0#0 == $ih#n0#0 + 1
         ==> $PrefixEq#_module.Stream(TInt, 
          TInt, 
          $ih#_k0#0, 
          $LS($LS($LZ)), 
          _module.__default.Inc($LS($LZ), _module.__default.Up($LS($LZ), $ih#n0#0)), 
          _module.__default.Up($LS($LZ), $ih#nn0#0)));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/SimpleCoinduction.dfy(45,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/SimpleCoinduction.dfy(45,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#0: Box, n#2: int, nn#2: int :: 
          { _module.__default.Up($LS($LZ), nn#2), _module.__default.Up($LS($LZ), n#2), ORD#Less(_k'#0, _k#0) } 
          ORD#Less(_k'#0, _k#0)
             ==> 
            nn#2 == n#2 + 1
             ==> $PrefixEq#_module.Stream(TInt, 
              TInt, 
              _k'#0, 
              $LS($LS($LZ)), 
              _module.__default.Inc($LS($LZ), _module.__default.Up($LS($LZ), n#2)), 
              _module.__default.Up($LS($LZ), nn#2)));
    }
}



// function declaration for _module._default.Repeat
function _module.__default.Repeat($ly: LayerType, n#0: int) : DatatypeType
uses {
// consequence axiom for _module.__default.Repeat
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.Repeat($ly, n#0) } 
    _module.__default.Repeat#canCall(n#0) || 1 < $FunctionContextHeight
       ==> $Is(_module.__default.Repeat($ly, n#0), Tclass._module.Stream(TInt)));
// definition axiom for _module.__default.Repeat (revealed)
axiom {:id "id39"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.Repeat($LS($ly), n#0) } 
    _module.__default.Repeat#canCall(n#0) || 1 < $FunctionContextHeight
       ==> _module.__default.Repeat#canCall(n#0)
         && _module.__default.Repeat($LS($ly), n#0)
           == #_module.Stream.Cons($Box(n#0), _module.__default.Repeat($ly, n#0)));
}

function _module.__default.Repeat#canCall(n#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.Repeat($LS($ly), n#0) } 
  _module.__default.Repeat($LS($ly), n#0) == _module.__default.Repeat($ly, n#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.Repeat(AsFuelBottom($ly), n#0) } 
  _module.__default.Repeat($ly, n#0) == _module.__default.Repeat($LZ, n#0));

function _module.__default.Repeat#requires(LayerType, int) : bool;

// #requires axiom for _module.__default.Repeat
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.Repeat#requires($ly, n#0) } 
  _module.__default.Repeat#requires($ly, n#0) == true);

procedure {:verboseName "Repeat (well-formedness)"} CheckWellformed$$_module.__default.Repeat(n#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "RepeatLemma (well-formedness)"} CheckWellFormed$$_module.__default.RepeatLemma(n#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "RepeatLemma (call)"} Call$$_module.__default.RepeatLemma(n#0: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Stream(_module.__default.Inc($LS($LZ), _module.__default.Repeat($LS($LZ), n#0)))
     && $IsA#_module.Stream(_module.__default.Repeat($LS($LZ), n#0 + 1))
     && 
    _module.__default.Repeat#canCall(n#0)
     && _module.__default.Inc#canCall(_module.__default.Repeat($LS($LZ), n#0))
     && _module.__default.Repeat#canCall(n#0 + 1);
  ensures {:id "id42"} $Eq#_module.Stream(TInt, 
    TInt, 
    $LS($LS($LZ)), 
    _module.__default.Inc($LS($LS($LZ)), _module.__default.Repeat($LS($LS($LZ)), n#0)), 
    _module.__default.Repeat($LS($LS($LZ)), n#0 + 1));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "RepeatLemma# (co-call)"} CoCall$$_module.__default.RepeatLemma_h(_k#0: Box, n#1: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Repeat#canCall(n#1)
     && _module.__default.Inc#canCall(_module.__default.Repeat($LS($LZ), n#1))
     && _module.__default.Repeat#canCall(n#1 + 1);
  free ensures {:id "id43"} $PrefixEq#_module.Stream(TInt, 
    TInt, 
    _k#0, 
    $LS($LS($LZ)), 
    _module.__default.Inc($LS($LZ), _module.__default.Repeat($LS($LZ), n#1)), 
    _module.__default.Repeat($LS($LZ), n#1 + 1));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "RepeatLemma# (correctness)"} Impl$$_module.__default.RepeatLemma_h(_k#0: Box, n#1: int) returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Repeat#canCall(n#1)
     && _module.__default.Inc#canCall(_module.__default.Repeat($LS($LZ), n#1))
     && _module.__default.Repeat#canCall(n#1 + 1);
  ensures {:id "id44"} $PrefixEq#_module.Stream(TInt, 
      TInt, 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.Inc($LS($LZ), _module.__default.Repeat($LS($LZ), n#1)), 
      _module.__default.Repeat($LS($LZ), n#1 + 1))
     || (0 < ORD#Offset(_k#0)
       ==> 
      _module.Stream.Cons_q(_module.__default.Inc($LS($LS($LZ)), _module.__default.Repeat($LS($LS($LZ)), n#1)))
       ==> _module.Stream.Cons_q(_module.__default.Repeat($LS($LS($LZ)), n#1 + 1))
         && 
        $Unbox(_module.Stream.head(_module.__default.Inc($LS($LS($LZ)), _module.__default.Repeat($LS($LS($LZ)), n#1)))): int
           == $Unbox(_module.Stream.head(_module.__default.Repeat($LS($LS($LZ)), n#1 + 1))): int
         && $PrefixEq#_module.Stream(TInt, 
          TInt, 
          ORD#Minus(_k#0, ORD#FromNat(1)), 
          $LS($LS($LZ)), 
          _module.Stream.tail(_module.__default.Inc($LS($LS($LZ)), _module.__default.Repeat($LS($LS($LZ)), n#1))), 
          _module.Stream.tail(_module.__default.Repeat($LS($LS($LZ)), n#1 + 1))));
  ensures {:id "id45"} $PrefixEq#_module.Stream(TInt, 
      TInt, 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.Inc($LS($LZ), _module.__default.Repeat($LS($LZ), n#1)), 
      _module.__default.Repeat($LS($LZ), n#1 + 1))
     || 
    (0 < ORD#Offset(_k#0)
       ==> 
      _module.Stream.Cons_q(_module.__default.Inc($LS($LS($LZ)), _module.__default.Repeat($LS($LS($LZ)), n#1)))
       ==> _module.Stream.Cons_q(_module.__default.Repeat($LS($LS($LZ)), n#1 + 1))
         && 
        $Unbox(_module.Stream.head(_module.__default.Inc($LS($LS($LZ)), _module.__default.Repeat($LS($LS($LZ)), n#1)))): int
           == $Unbox(_module.Stream.head(_module.__default.Repeat($LS($LS($LZ)), n#1 + 1))): int
         && $PrefixEq#_module.Stream(TInt, 
          TInt, 
          ORD#Minus(_k#0, ORD#FromNat(1)), 
          $LS($LS($LZ)), 
          _module.Stream.tail(_module.__default.Inc($LS($LS($LZ)), _module.__default.Repeat($LS($LS($LZ)), n#1))), 
          _module.Stream.tail(_module.__default.Repeat($LS($LS($LZ)), n#1 + 1))))
     || (_k#0 != ORD#FromNat(0) && ORD#IsLimit(_k#0)
       ==> $Eq#_module.Stream(TInt, 
        TInt, 
        $LS($LS($LZ)), 
        _module.__default.Inc($LS($LZ), _module.__default.Repeat($LS($LZ), n#1)), 
        _module.__default.Repeat($LS($LZ), n#1 + 1)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "RepeatLemma# (correctness)"} Impl$$_module.__default.RepeatLemma_h(_k#0: Box, n#1: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var _k##0: Box;
  var n##0: int;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: RepeatLemma#, Impl$$_module.__default.RepeatLemma_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/SimpleCoinduction.dfy(57,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/SimpleCoinduction.dfy(58,14)
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id46"} ORD#IsNat(Lit(ORD#FromNat(1)));
        assert {:id "id47"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
        assume true;
        // ProcessCallStmt: CheckSubrange
        _k##0 := ORD#Minus(_k#0, ORD#FromNat(1));
        assume true;
        // ProcessCallStmt: CheckSubrange
        n##0 := n#1;
        call {:id "id48"} CoCall$$_module.__default.RepeatLemma_h(_k##0, n##0);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/SimpleCoinduction.dfy(57,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#0: Box, n#2: int, _t#0#0: int :: 
          { _module.__default.Repeat($LS($LZ), _t#0#0), _module.__default.Repeat($LS($LZ), n#2), ORD#Less(_k'#0, _k#0) } 
          _t#0#0 == n#2 + 1 && ORD#Less(_k'#0, _k#0)
             ==> $PrefixEq#_module.Stream(TInt, 
              TInt, 
              _k'#0, 
              $LS($LS($LZ)), 
              _module.__default.Inc($LS($LZ), _module.__default.Repeat($LS($LZ), n#2)), 
              _module.__default.Repeat($LS($LZ), _t#0#0)));
    }
}



// function declaration for _module._default.True
function _module.__default.True(_module._default.True$_T0: Ty, $ly: LayerType, s#0: DatatypeType) : bool
uses {
// definition axiom for _module.__default.True (revealed)
axiom {:id "id49"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.True$_T0: Ty, $ly: LayerType, s#0: DatatypeType :: 
    { _module.__default.True(_module._default.True$_T0, $LS($ly), s#0) } 
    _module.__default.True#canCall(_module._default.True$_T0, s#0)
         || (1 < $FunctionContextHeight
           && $Is(s#0, Tclass._module.Stream(_module._default.True$_T0)))
       ==> _module.Stream.Cons_q(s#0)
         && _module.__default.True#canCall(_module._default.True$_T0, _module.Stream.tail(s#0))
         && _module.__default.True(_module._default.True$_T0, $LS($ly), s#0)
           == _module.__default.True(_module._default.True$_T0, $ly, _module.Stream.tail(s#0)));
}

function _module.__default.True#canCall(_module._default.True$_T0: Ty, s#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall _module._default.True$_T0: Ty, $ly: LayerType, s#0: DatatypeType :: 
  { _module.__default.True(_module._default.True$_T0, $LS($ly), s#0) } 
  _module.__default.True(_module._default.True$_T0, $LS($ly), s#0)
     == _module.__default.True(_module._default.True$_T0, $ly, s#0));

// fuel synonym axiom
axiom (forall _module._default.True$_T0: Ty, $ly: LayerType, s#0: DatatypeType :: 
  { _module.__default.True(_module._default.True$_T0, AsFuelBottom($ly), s#0) } 
  _module.__default.True(_module._default.True$_T0, $ly, s#0)
     == _module.__default.True(_module._default.True$_T0, $LZ, s#0));

function _module.__default.True#requires(Ty, LayerType, DatatypeType) : bool;

// #requires axiom for _module.__default.True
axiom (forall _module._default.True$_T0: Ty, $ly: LayerType, s#0: DatatypeType :: 
  { _module.__default.True#requires(_module._default.True$_T0, $ly, s#0) } 
  $Is(s#0, Tclass._module.Stream(_module._default.True$_T0))
     ==> _module.__default.True#requires(_module._default.True$_T0, $ly, s#0) == true);

// 1st prefix predicate axiom for _module.__default.True_h
axiom 2 <= $FunctionContextHeight
   ==> (forall _module._default.True#$_T0: Ty, $ly: LayerType, s#0: DatatypeType :: 
    { _module.__default.True(_module._default.True#$_T0, $LS($ly), s#0) } 
    $Is(s#0, Tclass._module.Stream(_module._default.True#$_T0))
         && _module.__default.True(_module._default.True#$_T0, $LS($ly), s#0)
       ==> (forall _k#0: Box :: 
        { _module.__default.True_h(_module._default.True#$_T0, $LS($ly), _k#0, s#0) } 
        _module.__default.True_h(_module._default.True#$_T0, $LS($ly), _k#0, s#0)));

// 2nd prefix predicate axiom
axiom 2 <= $FunctionContextHeight
   ==> (forall _module._default.True#$_T0: Ty, $ly: LayerType, s#0: DatatypeType :: 
    { _module.__default.True(_module._default.True#$_T0, $LS($ly), s#0) } 
    $Is(s#0, Tclass._module.Stream(_module._default.True#$_T0))
         && (forall _k#0: Box :: 
          { _module.__default.True_h(_module._default.True#$_T0, $LS($ly), _k#0, s#0) } 
          _module.__default.True_h(_module._default.True#$_T0, $LS($ly), _k#0, s#0))
       ==> _module.__default.True(_module._default.True#$_T0, $LS($ly), s#0));

// 3rd prefix predicate axiom
axiom 2 <= $FunctionContextHeight
   ==> (forall _module._default.True#$_T0: Ty, $ly: LayerType, s#0: DatatypeType, _k#0: Box :: 
    { _module.__default.True_h(_module._default.True#$_T0, $ly, _k#0, s#0) } 
    $Is(s#0, Tclass._module.Stream(_module._default.True#$_T0))
         && _k#0 == ORD#FromNat(0)
       ==> _module.__default.True_h(_module._default.True#$_T0, $ly, _k#0, s#0));

procedure {:verboseName "True (well-formedness)"} CheckWellformed$$_module.__default.True(_module._default.True$_T0: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.True$_T0)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.True#
function _module.__default.True_h(_module._default.True#$_T0: Ty, $ly: LayerType, _k#0: Box, s#0: DatatypeType)
   : bool
uses {
// definition axiom for _module.__default.True_h (revealed)
axiom {:id "id51"} 2 <= $FunctionContextHeight
   ==> (forall _module._default.True#$_T0: Ty, $ly: LayerType, _k#0: Box, s#0: DatatypeType :: 
    { _module.__default.True_h(_module._default.True#$_T0, $LS($ly), _k#0, s#0) } 
    _module.__default.True_h#canCall(_module._default.True#$_T0, _k#0, s#0)
         || (2 < $FunctionContextHeight
           && $Is(s#0, Tclass._module.Stream(_module._default.True#$_T0)))
       ==> (0 < ORD#Offset(_k#0)
           ==> _module.Stream.Cons_q(s#0)
             && _module.__default.True_h#canCall(_module._default.True#$_T0, 
              ORD#Minus(_k#0, ORD#FromNat(1)), 
              _module.Stream.tail(s#0)))
         && (
          (0 < ORD#Offset(_k#0)
           ==> _module.__default.True_h(_module._default.True#$_T0, 
            $ly, 
            ORD#Minus(_k#0, ORD#FromNat(1)), 
            _module.Stream.tail(s#0)))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#0: Box :: 
            { _module.__default.True_h(_module._default.True#$_T0, $ly, _k'#0, s#0) } 
            ORD#Less(_k'#0, _k#0)
               ==> _module.__default.True_h#canCall(_module._default.True#$_T0, _k'#0, s#0)))
         && _module.__default.True_h(_module._default.True#$_T0, $LS($ly), _k#0, s#0)
           == ((0 < ORD#Offset(_k#0)
               ==> _module.__default.True_h(_module._default.True#$_T0, 
                $ly, 
                ORD#Minus(_k#0, ORD#FromNat(1)), 
                _module.Stream.tail(s#0)))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#0: Box :: 
                { _module.__default.True_h(_module._default.True#$_T0, $ly, _k'#0, s#0) } 
                ORD#Less(_k'#0, _k#0)
                   ==> _module.__default.True_h(_module._default.True#$_T0, $ly, _k'#0, s#0)))));
// definition axiom for _module.__default.True_h for decreasing-related literals (revealed)
axiom {:id "id52"} 2 <= $FunctionContextHeight
   ==> (forall _module._default.True#$_T0: Ty, $ly: LayerType, _k#0: Box, s#0: DatatypeType :: 
    {:weight 3} { _module.__default.True_h(_module._default.True#$_T0, $LS($ly), Lit(_k#0), s#0) } 
    _module.__default.True_h#canCall(_module._default.True#$_T0, Lit(_k#0), s#0)
         || (2 < $FunctionContextHeight
           && $Is(s#0, Tclass._module.Stream(_module._default.True#$_T0)))
       ==> (0 < ORD#Offset(_k#0)
           ==> _module.Stream.Cons_q(s#0)
             && _module.__default.True_h#canCall(_module._default.True#$_T0, 
              ORD#Minus(_k#0, ORD#FromNat(1)), 
              _module.Stream.tail(s#0)))
         && (
          (0 < ORD#Offset(_k#0)
           ==> _module.__default.True_h(_module._default.True#$_T0, 
            $LS($ly), 
            ORD#Minus(_k#0, ORD#FromNat(1)), 
            _module.Stream.tail(s#0)))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#1: Box :: 
            { _module.__default.True_h(_module._default.True#$_T0, $LS($ly), _k'#1, s#0) } 
            ORD#Less(_k'#1, _k#0)
               ==> _module.__default.True_h#canCall(_module._default.True#$_T0, _k'#1, s#0)))
         && _module.__default.True_h(_module._default.True#$_T0, $LS($ly), Lit(_k#0), s#0)
           == ((0 < ORD#Offset(_k#0)
               ==> _module.__default.True_h(_module._default.True#$_T0, 
                $LS($ly), 
                ORD#Minus(_k#0, ORD#FromNat(1)), 
                _module.Stream.tail(s#0)))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#1: Box :: 
                { _module.__default.True_h(_module._default.True#$_T0, $LS($ly), _k'#1, s#0) } 
                ORD#Less(_k'#1, _k#0)
                   ==> _module.__default.True_h(_module._default.True#$_T0, $LS($ly), _k'#1, s#0)))));
// definition axiom for _module.__default.True_h for all literals (revealed)
axiom {:id "id53"} 2 <= $FunctionContextHeight
   ==> (forall _module._default.True#$_T0: Ty, $ly: LayerType, _k#0: Box, s#0: DatatypeType :: 
    {:weight 3} { _module.__default.True_h(_module._default.True#$_T0, $LS($ly), Lit(_k#0), Lit(s#0)) } 
    _module.__default.True_h#canCall(_module._default.True#$_T0, Lit(_k#0), Lit(s#0))
         || (2 < $FunctionContextHeight
           && $Is(s#0, Tclass._module.Stream(_module._default.True#$_T0)))
       ==> (0 < ORD#Offset(_k#0)
           ==> _module.Stream.Cons_q(Lit(s#0))
             && _module.__default.True_h#canCall(_module._default.True#$_T0, 
              ORD#Minus(_k#0, ORD#FromNat(1)), 
              Lit(_module.Stream.tail(Lit(s#0)))))
         && (
          (0 < ORD#Offset(_k#0)
           ==> _module.__default.True_h(_module._default.True#$_T0, 
            $LS($ly), 
            ORD#Minus(_k#0, ORD#FromNat(1)), 
            Lit(_module.Stream.tail(Lit(s#0)))))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#2: Box :: 
            { _module.__default.True_h(_module._default.True#$_T0, $LS($ly), _k'#2, s#0) } 
            ORD#Less(_k'#2, _k#0)
               ==> _module.__default.True_h#canCall(_module._default.True#$_T0, _k'#2, s#0)))
         && _module.__default.True_h(_module._default.True#$_T0, $LS($ly), Lit(_k#0), Lit(s#0))
           == ((0 < ORD#Offset(_k#0)
               ==> _module.__default.True_h(_module._default.True#$_T0, 
                $LS($ly), 
                ORD#Minus(_k#0, ORD#FromNat(1)), 
                Lit(_module.Stream.tail(Lit(s#0)))))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#2: Box :: 
                { _module.__default.True_h(_module._default.True#$_T0, $LS($ly), _k'#2, s#0) } 
                ORD#Less(_k'#2, _k#0)
                   ==> _module.__default.True_h(_module._default.True#$_T0, $LS($ly), _k'#2, s#0)))));
}

function _module.__default.True_h#canCall(_module._default.True#$_T0: Ty, _k#0: Box, s#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall _module._default.True#$_T0: Ty, $ly: LayerType, _k#0: Box, s#0: DatatypeType :: 
  { _module.__default.True_h(_module._default.True#$_T0, $LS($ly), _k#0, s#0) } 
  _module.__default.True_h(_module._default.True#$_T0, $LS($ly), _k#0, s#0)
     == _module.__default.True_h(_module._default.True#$_T0, $ly, _k#0, s#0));

// fuel synonym axiom
axiom (forall _module._default.True#$_T0: Ty, $ly: LayerType, _k#0: Box, s#0: DatatypeType :: 
  { _module.__default.True_h(_module._default.True#$_T0, AsFuelBottom($ly), _k#0, s#0) } 
  _module.__default.True_h(_module._default.True#$_T0, $ly, _k#0, s#0)
     == _module.__default.True_h(_module._default.True#$_T0, $LZ, _k#0, s#0));

function _module.__default.True_h#requires(Ty, LayerType, Box, DatatypeType) : bool;

// #requires axiom for _module.__default.True_h
axiom (forall _module._default.True#$_T0: Ty, $ly: LayerType, _k#0: Box, s#0: DatatypeType :: 
  { _module.__default.True_h#requires(_module._default.True#$_T0, $ly, _k#0, s#0) } 
  $Is(s#0, Tclass._module.Stream(_module._default.True#$_T0))
     ==> _module.__default.True_h#requires(_module._default.True#$_T0, $ly, _k#0, s#0)
       == true);

procedure {:verboseName "AlwaysTrue (well-formedness)"} CheckWellFormed$$_module.__default.AlwaysTrue(_module._default.AlwaysTrue$_T0: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.AlwaysTrue$_T0))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.AlwaysTrue$_T0), $Heap)
         && $IsA#_module.Stream(s#0));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "AlwaysTrue (call)"} Call$$_module.__default.AlwaysTrue(_module._default.AlwaysTrue$_T0: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.AlwaysTrue$_T0))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.AlwaysTrue$_T0), $Heap)
         && $IsA#_module.Stream(s#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.True#canCall(_module._default.AlwaysTrue$_T0, s#0);
  free ensures {:id "id55"} _module.__default.True#canCall(_module._default.AlwaysTrue$_T0, s#0)
     && 
    _module.__default.True(_module._default.AlwaysTrue$_T0, $LS($LZ), s#0)
     && _module.__default.True(_module._default.AlwaysTrue$_T0, $LS($LZ), _module.Stream.tail(s#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "AlwaysTrue# (co-call)"} CoCall$$_module.__default.AlwaysTrue_h(_module._default.AlwaysTrue#$_T0: Ty, 
    _k#0: Box, 
    s#1: DatatypeType
       where $Is(s#1, Tclass._module.Stream(_module._default.AlwaysTrue#$_T0))
         && $IsAlloc(s#1, Tclass._module.Stream(_module._default.AlwaysTrue#$_T0), $Heap)
         && $IsA#_module.Stream(s#1));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.True_h#canCall(_module._default.AlwaysTrue#$_T0, _k#0, s#1);
  free ensures {:id "id56"} _module.__default.True_h#canCall(_module._default.AlwaysTrue#$_T0, _k#0, s#1)
     && 
    _module.__default.True_h(_module._default.AlwaysTrue#$_T0, $LS($LZ), _k#0, s#1)
     && 
    (0 < ORD#Offset(_k#0)
       ==> _module.__default.True_h(_module._default.AlwaysTrue#$_T0, 
        $LS($LZ), 
        ORD#Minus(_k#0, ORD#FromNat(1)), 
        _module.Stream.tail(s#1)))
     && (LitInt(0) == ORD#Offset(_k#0)
       ==> (forall _k'#0: Box :: 
        { _module.__default.True_h(_module._default.AlwaysTrue#$_T0, $LS($LZ), _k'#0, s#1) } 
        ORD#Less(_k'#0, _k#0)
           ==> _module.__default.True_h(_module._default.AlwaysTrue#$_T0, $LS($LZ), _k'#0, s#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "AlwaysTrue# (correctness)"} Impl$$_module.__default.AlwaysTrue_h(_module._default.AlwaysTrue#$_T0: Ty, 
    _k#0: Box, 
    s#1: DatatypeType
       where $Is(s#1, Tclass._module.Stream(_module._default.AlwaysTrue#$_T0))
         && $IsAlloc(s#1, Tclass._module.Stream(_module._default.AlwaysTrue#$_T0), $Heap)
         && $IsA#_module.Stream(s#1))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.True_h#canCall(_module._default.AlwaysTrue#$_T0, _k#0, s#1);
  ensures {:id "id57"} _module.__default.True_h#canCall(_module._default.AlwaysTrue#$_T0, _k#0, s#1)
     ==> _module.__default.True_h(_module._default.AlwaysTrue#$_T0, $LS($LZ), _k#0, s#1)
       || (0 < ORD#Offset(_k#0)
         ==> _module.__default.True_h(_module._default.AlwaysTrue#$_T0, 
          $LS($LS($LZ)), 
          ORD#Minus(_k#0, ORD#FromNat(1)), 
          _module.Stream.tail(s#1)));
  ensures {:id "id58"} _module.__default.True_h#canCall(_module._default.AlwaysTrue#$_T0, _k#0, s#1)
     ==> _module.__default.True_h(_module._default.AlwaysTrue#$_T0, $LS($LZ), _k#0, s#1)
       || (LitInt(0) == ORD#Offset(_k#0)
         ==> (forall _k'#1: Box :: 
          { _module.__default.True_h(_module._default.AlwaysTrue#$_T0, $LS($LS($LZ)), _k'#1, s#1) } 
          ORD#Less(_k'#1, _k#0)
             ==> _module.__default.True_h(_module._default.AlwaysTrue#$_T0, $LS($LS($LZ)), _k'#1, s#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AlwaysTrue# (correctness)"} Impl$$_module.__default.AlwaysTrue_h(_module._default.AlwaysTrue#$_T0: Ty, _k#0: Box, s#1: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: AlwaysTrue#, Impl$$_module.__default.AlwaysTrue_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Stream(s#1);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box, $ih#s0#0: DatatypeType :: 
      { _module.__default.True_h(_module._default.AlwaysTrue#$_T0, $LS($LZ), $ih#_k0#0, $ih#s0#0) } 
      $Is($ih#s0#0, Tclass._module.Stream(_module._default.AlwaysTrue#$_T0))
           && Lit(true)
           && ORD#Less($ih#_k0#0, _k#0)
         ==> _module.__default.True_h(_module._default.AlwaysTrue#$_T0, $LS($LZ), $ih#_k0#0, $ih#s0#0));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/SimpleCoinduction.dfy(70,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/SimpleCoinduction.dfy(70,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#2: Box, s#2: DatatypeType :: 
          { _module.__default.True_h(_module._default.AlwaysTrue#$_T0, $LS($LZ), _k'#2, s#2) } 
          $Is(s#2, Tclass._module.Stream(_module._default.AlwaysTrue#$_T0))
               && ORD#Less(_k'#2, _k#0)
             ==> _module.__default.True_h(_module._default.AlwaysTrue#$_T0, $LS($LZ), _k'#2, s#2));
    }
}



// function declaration for _module._default.AlsoTrue
function _module.__default.AlsoTrue(_module._default.AlsoTrue$_T0: Ty, $ly: LayerType, s#0: DatatypeType) : bool
uses {
// definition axiom for _module.__default.AlsoTrue (revealed)
axiom {:id "id59"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.AlsoTrue$_T0: Ty, $ly: LayerType, s#0: DatatypeType :: 
    { _module.__default.AlsoTrue(_module._default.AlsoTrue$_T0, $LS($ly), s#0) } 
    _module.__default.AlsoTrue#canCall(_module._default.AlsoTrue$_T0, s#0)
         || (1 < $FunctionContextHeight
           && $Is(s#0, Tclass._module.Stream(_module._default.AlsoTrue$_T0)))
       ==> _module.__default.AlsoTrue#canCall(_module._default.AlsoTrue$_T0, s#0)
         && _module.__default.AlsoTrue(_module._default.AlsoTrue$_T0, $LS($ly), s#0)
           == _module.__default.AlsoTrue(_module._default.AlsoTrue$_T0, $ly, s#0));
}

function _module.__default.AlsoTrue#canCall(_module._default.AlsoTrue$_T0: Ty, s#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall _module._default.AlsoTrue$_T0: Ty, $ly: LayerType, s#0: DatatypeType :: 
  { _module.__default.AlsoTrue(_module._default.AlsoTrue$_T0, $LS($ly), s#0) } 
  _module.__default.AlsoTrue(_module._default.AlsoTrue$_T0, $LS($ly), s#0)
     == _module.__default.AlsoTrue(_module._default.AlsoTrue$_T0, $ly, s#0));

// fuel synonym axiom
axiom (forall _module._default.AlsoTrue$_T0: Ty, $ly: LayerType, s#0: DatatypeType :: 
  { _module.__default.AlsoTrue(_module._default.AlsoTrue$_T0, AsFuelBottom($ly), s#0) } 
  _module.__default.AlsoTrue(_module._default.AlsoTrue$_T0, $ly, s#0)
     == _module.__default.AlsoTrue(_module._default.AlsoTrue$_T0, $LZ, s#0));

function _module.__default.AlsoTrue#requires(Ty, LayerType, DatatypeType) : bool;

// #requires axiom for _module.__default.AlsoTrue
axiom (forall _module._default.AlsoTrue$_T0: Ty, $ly: LayerType, s#0: DatatypeType :: 
  { _module.__default.AlsoTrue#requires(_module._default.AlsoTrue$_T0, $ly, s#0) } 
  $Is(s#0, Tclass._module.Stream(_module._default.AlsoTrue$_T0))
     ==> _module.__default.AlsoTrue#requires(_module._default.AlsoTrue$_T0, $ly, s#0)
       == true);

// 1st prefix predicate axiom for _module.__default.AlsoTrue_h
axiom 2 <= $FunctionContextHeight
   ==> (forall _module._default.AlsoTrue#$_T0: Ty, $ly: LayerType, s#0: DatatypeType :: 
    { _module.__default.AlsoTrue(_module._default.AlsoTrue#$_T0, $LS($ly), s#0) } 
    $Is(s#0, Tclass._module.Stream(_module._default.AlsoTrue#$_T0))
         && _module.__default.AlsoTrue(_module._default.AlsoTrue#$_T0, $LS($ly), s#0)
       ==> (forall _k#0: Box :: 
        { _module.__default.AlsoTrue_h(_module._default.AlsoTrue#$_T0, $LS($ly), _k#0, s#0) } 
        _module.__default.AlsoTrue_h(_module._default.AlsoTrue#$_T0, $LS($ly), _k#0, s#0)));

// 2nd prefix predicate axiom
axiom 2 <= $FunctionContextHeight
   ==> (forall _module._default.AlsoTrue#$_T0: Ty, $ly: LayerType, s#0: DatatypeType :: 
    { _module.__default.AlsoTrue(_module._default.AlsoTrue#$_T0, $LS($ly), s#0) } 
    $Is(s#0, Tclass._module.Stream(_module._default.AlsoTrue#$_T0))
         && (forall _k#0: Box :: 
          { _module.__default.AlsoTrue_h(_module._default.AlsoTrue#$_T0, $LS($ly), _k#0, s#0) } 
          _module.__default.AlsoTrue_h(_module._default.AlsoTrue#$_T0, $LS($ly), _k#0, s#0))
       ==> _module.__default.AlsoTrue(_module._default.AlsoTrue#$_T0, $LS($ly), s#0));

// 3rd prefix predicate axiom
axiom 2 <= $FunctionContextHeight
   ==> (forall _module._default.AlsoTrue#$_T0: Ty, $ly: LayerType, s#0: DatatypeType, _k#0: Box :: 
    { _module.__default.AlsoTrue_h(_module._default.AlsoTrue#$_T0, $ly, _k#0, s#0) } 
    $Is(s#0, Tclass._module.Stream(_module._default.AlsoTrue#$_T0))
         && _k#0 == ORD#FromNat(0)
       ==> _module.__default.AlsoTrue_h(_module._default.AlsoTrue#$_T0, $ly, _k#0, s#0));

procedure {:verboseName "AlsoTrue (well-formedness)"} CheckWellformed$$_module.__default.AlsoTrue(_module._default.AlsoTrue$_T0: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.AlsoTrue$_T0)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.AlsoTrue#
function _module.__default.AlsoTrue_h(_module._default.AlsoTrue#$_T0: Ty, $ly: LayerType, _k#0: Box, s#0: DatatypeType)
   : bool
uses {
// definition axiom for _module.__default.AlsoTrue_h (revealed)
axiom {:id "id61"} 2 <= $FunctionContextHeight
   ==> (forall _module._default.AlsoTrue#$_T0: Ty, $ly: LayerType, _k#0: Box, s#0: DatatypeType :: 
    { _module.__default.AlsoTrue_h(_module._default.AlsoTrue#$_T0, $LS($ly), _k#0, s#0) } 
    _module.__default.AlsoTrue_h#canCall(_module._default.AlsoTrue#$_T0, _k#0, s#0)
         || (2 < $FunctionContextHeight
           && $Is(s#0, Tclass._module.Stream(_module._default.AlsoTrue#$_T0)))
       ==> (0 < ORD#Offset(_k#0)
           ==> _module.__default.AlsoTrue_h#canCall(_module._default.AlsoTrue#$_T0, ORD#Minus(_k#0, ORD#FromNat(1)), s#0))
         && (
          (0 < ORD#Offset(_k#0)
           ==> _module.__default.AlsoTrue_h(_module._default.AlsoTrue#$_T0, $ly, ORD#Minus(_k#0, ORD#FromNat(1)), s#0))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#0: Box :: 
            { _module.__default.AlsoTrue_h(_module._default.AlsoTrue#$_T0, $ly, _k'#0, s#0) } 
            ORD#Less(_k'#0, _k#0)
               ==> _module.__default.AlsoTrue_h#canCall(_module._default.AlsoTrue#$_T0, _k'#0, s#0)))
         && _module.__default.AlsoTrue_h(_module._default.AlsoTrue#$_T0, $LS($ly), _k#0, s#0)
           == ((0 < ORD#Offset(_k#0)
               ==> _module.__default.AlsoTrue_h(_module._default.AlsoTrue#$_T0, $ly, ORD#Minus(_k#0, ORD#FromNat(1)), s#0))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#0: Box :: 
                { _module.__default.AlsoTrue_h(_module._default.AlsoTrue#$_T0, $ly, _k'#0, s#0) } 
                ORD#Less(_k'#0, _k#0)
                   ==> _module.__default.AlsoTrue_h(_module._default.AlsoTrue#$_T0, $ly, _k'#0, s#0)))));
// definition axiom for _module.__default.AlsoTrue_h for decreasing-related literals (revealed)
axiom {:id "id62"} 2 <= $FunctionContextHeight
   ==> (forall _module._default.AlsoTrue#$_T0: Ty, $ly: LayerType, _k#0: Box, s#0: DatatypeType :: 
    {:weight 3} { _module.__default.AlsoTrue_h(_module._default.AlsoTrue#$_T0, $LS($ly), Lit(_k#0), s#0) } 
    _module.__default.AlsoTrue_h#canCall(_module._default.AlsoTrue#$_T0, Lit(_k#0), s#0)
         || (2 < $FunctionContextHeight
           && $Is(s#0, Tclass._module.Stream(_module._default.AlsoTrue#$_T0)))
       ==> (0 < ORD#Offset(_k#0)
           ==> _module.__default.AlsoTrue_h#canCall(_module._default.AlsoTrue#$_T0, ORD#Minus(_k#0, ORD#FromNat(1)), s#0))
         && (
          (0 < ORD#Offset(_k#0)
           ==> _module.__default.AlsoTrue_h(_module._default.AlsoTrue#$_T0, $LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), s#0))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#1: Box :: 
            { _module.__default.AlsoTrue_h(_module._default.AlsoTrue#$_T0, $LS($ly), _k'#1, s#0) } 
            ORD#Less(_k'#1, _k#0)
               ==> _module.__default.AlsoTrue_h#canCall(_module._default.AlsoTrue#$_T0, _k'#1, s#0)))
         && _module.__default.AlsoTrue_h(_module._default.AlsoTrue#$_T0, $LS($ly), Lit(_k#0), s#0)
           == ((0 < ORD#Offset(_k#0)
               ==> _module.__default.AlsoTrue_h(_module._default.AlsoTrue#$_T0, $LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), s#0))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#1: Box :: 
                { _module.__default.AlsoTrue_h(_module._default.AlsoTrue#$_T0, $LS($ly), _k'#1, s#0) } 
                ORD#Less(_k'#1, _k#0)
                   ==> _module.__default.AlsoTrue_h(_module._default.AlsoTrue#$_T0, $LS($ly), _k'#1, s#0)))));
// definition axiom for _module.__default.AlsoTrue_h for all literals (revealed)
axiom {:id "id63"} 2 <= $FunctionContextHeight
   ==> (forall _module._default.AlsoTrue#$_T0: Ty, $ly: LayerType, _k#0: Box, s#0: DatatypeType :: 
    {:weight 3} { _module.__default.AlsoTrue_h(_module._default.AlsoTrue#$_T0, $LS($ly), Lit(_k#0), Lit(s#0)) } 
    _module.__default.AlsoTrue_h#canCall(_module._default.AlsoTrue#$_T0, Lit(_k#0), Lit(s#0))
         || (2 < $FunctionContextHeight
           && $Is(s#0, Tclass._module.Stream(_module._default.AlsoTrue#$_T0)))
       ==> (0 < ORD#Offset(_k#0)
           ==> _module.__default.AlsoTrue_h#canCall(_module._default.AlsoTrue#$_T0, ORD#Minus(_k#0, ORD#FromNat(1)), Lit(s#0)))
         && (
          (0 < ORD#Offset(_k#0)
           ==> _module.__default.AlsoTrue_h(_module._default.AlsoTrue#$_T0, 
            $LS($ly), 
            ORD#Minus(_k#0, ORD#FromNat(1)), 
            Lit(s#0)))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#2: Box :: 
            { _module.__default.AlsoTrue_h(_module._default.AlsoTrue#$_T0, $LS($ly), _k'#2, s#0) } 
            ORD#Less(_k'#2, _k#0)
               ==> _module.__default.AlsoTrue_h#canCall(_module._default.AlsoTrue#$_T0, _k'#2, s#0)))
         && _module.__default.AlsoTrue_h(_module._default.AlsoTrue#$_T0, $LS($ly), Lit(_k#0), Lit(s#0))
           == ((0 < ORD#Offset(_k#0)
               ==> _module.__default.AlsoTrue_h(_module._default.AlsoTrue#$_T0, 
                $LS($ly), 
                ORD#Minus(_k#0, ORD#FromNat(1)), 
                Lit(s#0)))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#2: Box :: 
                { _module.__default.AlsoTrue_h(_module._default.AlsoTrue#$_T0, $LS($ly), _k'#2, s#0) } 
                ORD#Less(_k'#2, _k#0)
                   ==> _module.__default.AlsoTrue_h(_module._default.AlsoTrue#$_T0, $LS($ly), _k'#2, s#0)))));
}

function _module.__default.AlsoTrue_h#canCall(_module._default.AlsoTrue#$_T0: Ty, _k#0: Box, s#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall _module._default.AlsoTrue#$_T0: Ty, $ly: LayerType, _k#0: Box, s#0: DatatypeType :: 
  { _module.__default.AlsoTrue_h(_module._default.AlsoTrue#$_T0, $LS($ly), _k#0, s#0) } 
  _module.__default.AlsoTrue_h(_module._default.AlsoTrue#$_T0, $LS($ly), _k#0, s#0)
     == _module.__default.AlsoTrue_h(_module._default.AlsoTrue#$_T0, $ly, _k#0, s#0));

// fuel synonym axiom
axiom (forall _module._default.AlsoTrue#$_T0: Ty, $ly: LayerType, _k#0: Box, s#0: DatatypeType :: 
  { _module.__default.AlsoTrue_h(_module._default.AlsoTrue#$_T0, AsFuelBottom($ly), _k#0, s#0) } 
  _module.__default.AlsoTrue_h(_module._default.AlsoTrue#$_T0, $ly, _k#0, s#0)
     == _module.__default.AlsoTrue_h(_module._default.AlsoTrue#$_T0, $LZ, _k#0, s#0));

function _module.__default.AlsoTrue_h#requires(Ty, LayerType, Box, DatatypeType) : bool;

// #requires axiom for _module.__default.AlsoTrue_h
axiom (forall _module._default.AlsoTrue#$_T0: Ty, $ly: LayerType, _k#0: Box, s#0: DatatypeType :: 
  { _module.__default.AlsoTrue_h#requires(_module._default.AlsoTrue#$_T0, $ly, _k#0, s#0) } 
  $Is(s#0, Tclass._module.Stream(_module._default.AlsoTrue#$_T0))
     ==> _module.__default.AlsoTrue_h#requires(_module._default.AlsoTrue#$_T0, $ly, _k#0, s#0)
       == true);

procedure {:verboseName "AlsoAlwaysTrue (well-formedness)"} CheckWellFormed$$_module.__default.AlsoAlwaysTrue(_module._default.AlsoAlwaysTrue$_T0: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.AlsoAlwaysTrue$_T0))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.AlsoAlwaysTrue$_T0), $Heap)
         && $IsA#_module.Stream(s#0));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "AlsoAlwaysTrue (call)"} Call$$_module.__default.AlsoAlwaysTrue(_module._default.AlsoAlwaysTrue$_T0: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.AlsoAlwaysTrue$_T0))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.AlsoAlwaysTrue$_T0), $Heap)
         && $IsA#_module.Stream(s#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.AlsoTrue#canCall(_module._default.AlsoAlwaysTrue$_T0, s#0);
  free ensures {:id "id65"} _module.__default.AlsoTrue#canCall(_module._default.AlsoAlwaysTrue$_T0, s#0)
     && 
    _module.__default.AlsoTrue(_module._default.AlsoAlwaysTrue$_T0, $LS($LZ), s#0)
     && _module.__default.AlsoTrue(_module._default.AlsoAlwaysTrue$_T0, $LS($LZ), s#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "AlsoAlwaysTrue# (co-call)"} CoCall$$_module.__default.AlsoAlwaysTrue_h(_module._default.AlsoAlwaysTrue#$_T0: Ty, 
    _k#0: Box, 
    s#1: DatatypeType
       where $Is(s#1, Tclass._module.Stream(_module._default.AlsoAlwaysTrue#$_T0))
         && $IsAlloc(s#1, Tclass._module.Stream(_module._default.AlsoAlwaysTrue#$_T0), $Heap)
         && $IsA#_module.Stream(s#1));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.AlsoTrue_h#canCall(_module._default.AlsoAlwaysTrue#$_T0, _k#0, s#1);
  free ensures {:id "id66"} _module.__default.AlsoTrue_h#canCall(_module._default.AlsoAlwaysTrue#$_T0, _k#0, s#1)
     && 
    _module.__default.AlsoTrue_h(_module._default.AlsoAlwaysTrue#$_T0, $LS($LZ), _k#0, s#1)
     && 
    (0 < ORD#Offset(_k#0)
       ==> _module.__default.AlsoTrue_h(_module._default.AlsoAlwaysTrue#$_T0, 
        $LS($LZ), 
        ORD#Minus(_k#0, ORD#FromNat(1)), 
        s#1))
     && (LitInt(0) == ORD#Offset(_k#0)
       ==> (forall _k'#0: Box :: 
        { _module.__default.AlsoTrue_h(_module._default.AlsoAlwaysTrue#$_T0, $LS($LZ), _k'#0, s#1) } 
        ORD#Less(_k'#0, _k#0)
           ==> _module.__default.AlsoTrue_h(_module._default.AlsoAlwaysTrue#$_T0, $LS($LZ), _k'#0, s#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "AlsoAlwaysTrue# (correctness)"} Impl$$_module.__default.AlsoAlwaysTrue_h(_module._default.AlsoAlwaysTrue#$_T0: Ty, 
    _k#0: Box, 
    s#1: DatatypeType
       where $Is(s#1, Tclass._module.Stream(_module._default.AlsoAlwaysTrue#$_T0))
         && $IsAlloc(s#1, Tclass._module.Stream(_module._default.AlsoAlwaysTrue#$_T0), $Heap)
         && $IsA#_module.Stream(s#1))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.AlsoTrue_h#canCall(_module._default.AlsoAlwaysTrue#$_T0, _k#0, s#1);
  ensures {:id "id67"} _module.__default.AlsoTrue_h#canCall(_module._default.AlsoAlwaysTrue#$_T0, _k#0, s#1)
     ==> _module.__default.AlsoTrue_h(_module._default.AlsoAlwaysTrue#$_T0, $LS($LZ), _k#0, s#1)
       || (0 < ORD#Offset(_k#0)
         ==> _module.__default.AlsoTrue_h(_module._default.AlsoAlwaysTrue#$_T0, 
          $LS($LS($LZ)), 
          ORD#Minus(_k#0, ORD#FromNat(1)), 
          s#1));
  ensures {:id "id68"} _module.__default.AlsoTrue_h#canCall(_module._default.AlsoAlwaysTrue#$_T0, _k#0, s#1)
     ==> _module.__default.AlsoTrue_h(_module._default.AlsoAlwaysTrue#$_T0, $LS($LZ), _k#0, s#1)
       || (LitInt(0) == ORD#Offset(_k#0)
         ==> (forall _k'#1: Box :: 
          { _module.__default.AlsoTrue_h(_module._default.AlsoAlwaysTrue#$_T0, $LS($LS($LZ)), _k'#1, s#1) } 
          ORD#Less(_k'#1, _k#0)
             ==> _module.__default.AlsoTrue_h(_module._default.AlsoAlwaysTrue#$_T0, $LS($LS($LZ)), _k'#1, s#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AlsoAlwaysTrue# (correctness)"} Impl$$_module.__default.AlsoAlwaysTrue_h(_module._default.AlsoAlwaysTrue#$_T0: Ty, _k#0: Box, s#1: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: AlsoAlwaysTrue#, Impl$$_module.__default.AlsoAlwaysTrue_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Stream(s#1);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box, $ih#s0#0: DatatypeType :: 
      { _module.__default.AlsoTrue_h(_module._default.AlsoAlwaysTrue#$_T0, $LS($LZ), $ih#_k0#0, $ih#s0#0) } 
      $Is($ih#s0#0, Tclass._module.Stream(_module._default.AlsoAlwaysTrue#$_T0))
           && Lit(true)
           && ORD#Less($ih#_k0#0, _k#0)
         ==> _module.__default.AlsoTrue_h(_module._default.AlsoAlwaysTrue#$_T0, $LS($LZ), $ih#_k0#0, $ih#s0#0));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/SimpleCoinduction.dfy(80,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/SimpleCoinduction.dfy(80,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#2: Box, s#2: DatatypeType :: 
          { _module.__default.AlsoTrue_h(_module._default.AlsoAlwaysTrue#$_T0, $LS($LZ), _k'#2, s#2) } 
          $Is(s#2, Tclass._module.Stream(_module._default.AlsoAlwaysTrue#$_T0))
               && ORD#Less(_k'#2, _k#0)
             ==> _module.__default.AlsoTrue_h(_module._default.AlsoAlwaysTrue#$_T0, $LS($LZ), _k'#2, s#2));
    }
}



// function declaration for _module._default.TT
function _module.__default.TT($ly: LayerType, y#0: int) : bool
uses {
// definition axiom for _module.__default.TT (revealed)
axiom {:id "id69"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, y#0: int :: 
    { _module.__default.TT($LS($ly), y#0) } 
    _module.__default.TT#canCall(y#0) || 0 < $FunctionContextHeight
       ==> _module.__default.TT#canCall(y#0 + 1)
         && _module.__default.TT($LS($ly), y#0) == _module.__default.TT($ly, y#0 + 1));
}

function _module.__default.TT#canCall(y#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, y#0: int :: 
  { _module.__default.TT($LS($ly), y#0) } 
  _module.__default.TT($LS($ly), y#0) == _module.__default.TT($ly, y#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, y#0: int :: 
  { _module.__default.TT(AsFuelBottom($ly), y#0) } 
  _module.__default.TT($ly, y#0) == _module.__default.TT($LZ, y#0));

function _module.__default.TT#requires(LayerType, int) : bool;

// #requires axiom for _module.__default.TT
axiom (forall $ly: LayerType, y#0: int :: 
  { _module.__default.TT#requires($ly, y#0) } 
  _module.__default.TT#requires($ly, y#0) == true);

// 1st prefix predicate axiom for _module.__default.TT_h
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, y#0: int :: 
    { _module.__default.TT($LS($ly), y#0) } 
    _module.__default.TT($LS($ly), y#0)
       ==> (forall _k#0: Box :: 
        { _module.__default.TT_h($LS($ly), _k#0, y#0) } 
        _module.__default.TT_h($LS($ly), _k#0, y#0)));

// 2nd prefix predicate axiom
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, y#0: int :: 
    { _module.__default.TT($LS($ly), y#0) } 
    (forall _k#0: Box :: 
        { _module.__default.TT_h($LS($ly), _k#0, y#0) } 
        _module.__default.TT_h($LS($ly), _k#0, y#0))
       ==> _module.__default.TT($LS($ly), y#0));

// 3rd prefix predicate axiom
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, y#0: int, _k#0: Box :: 
    { _module.__default.TT_h($ly, _k#0, y#0) } 
    _k#0 == ORD#FromNat(0) ==> _module.__default.TT_h($ly, _k#0, y#0));

procedure {:verboseName "TT (well-formedness)"} CheckWellformed$$_module.__default.TT(y#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.TT#
function _module.__default.TT_h($ly: LayerType, _k#0: Box, y#0: int) : bool
uses {
// definition axiom for _module.__default.TT_h (revealed)
axiom {:id "id71"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, _k#0: Box, y#0: int :: 
    { _module.__default.TT_h($LS($ly), _k#0, y#0) } 
    _module.__default.TT_h#canCall(_k#0, y#0) || 1 < $FunctionContextHeight
       ==> (0 < ORD#Offset(_k#0)
           ==> _module.__default.TT_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), y#0 + 1))
         && (
          (0 < ORD#Offset(_k#0)
           ==> _module.__default.TT_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), y#0 + 1))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#0: Box :: 
            { _module.__default.TT_h($ly, _k'#0, y#0) } 
            ORD#Less(_k'#0, _k#0) ==> _module.__default.TT_h#canCall(_k'#0, y#0)))
         && _module.__default.TT_h($LS($ly), _k#0, y#0)
           == ((0 < ORD#Offset(_k#0)
               ==> _module.__default.TT_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), y#0 + 1))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#0: Box :: 
                { _module.__default.TT_h($ly, _k'#0, y#0) } 
                ORD#Less(_k'#0, _k#0) ==> _module.__default.TT_h($ly, _k'#0, y#0)))));
// definition axiom for _module.__default.TT_h for decreasing-related literals (revealed)
axiom {:id "id72"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, _k#0: Box, y#0: int :: 
    {:weight 3} { _module.__default.TT_h($LS($ly), Lit(_k#0), y#0) } 
    _module.__default.TT_h#canCall(Lit(_k#0), y#0) || 1 < $FunctionContextHeight
       ==> (0 < ORD#Offset(_k#0)
           ==> _module.__default.TT_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), y#0 + 1))
         && (
          (0 < ORD#Offset(_k#0)
           ==> _module.__default.TT_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), y#0 + 1))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#1: Box :: 
            { _module.__default.TT_h($LS($ly), _k'#1, y#0) } 
            ORD#Less(_k'#1, _k#0) ==> _module.__default.TT_h#canCall(_k'#1, y#0)))
         && _module.__default.TT_h($LS($ly), Lit(_k#0), y#0)
           == ((0 < ORD#Offset(_k#0)
               ==> _module.__default.TT_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), y#0 + 1))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#1: Box :: 
                { _module.__default.TT_h($LS($ly), _k'#1, y#0) } 
                ORD#Less(_k'#1, _k#0) ==> _module.__default.TT_h($LS($ly), _k'#1, y#0)))));
// definition axiom for _module.__default.TT_h for all literals (revealed)
axiom {:id "id73"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, _k#0: Box, y#0: int :: 
    {:weight 3} { _module.__default.TT_h($LS($ly), Lit(_k#0), LitInt(y#0)) } 
    _module.__default.TT_h#canCall(Lit(_k#0), LitInt(y#0))
         || 1 < $FunctionContextHeight
       ==> (0 < ORD#Offset(_k#0)
           ==> _module.__default.TT_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), LitInt(y#0 + 1)))
         && (
          (0 < ORD#Offset(_k#0)
           ==> _module.__default.TT_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), LitInt(y#0 + 1)))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#2: Box :: 
            { _module.__default.TT_h($LS($ly), _k'#2, y#0) } 
            ORD#Less(_k'#2, _k#0) ==> _module.__default.TT_h#canCall(_k'#2, y#0)))
         && _module.__default.TT_h($LS($ly), Lit(_k#0), LitInt(y#0))
           == ((0 < ORD#Offset(_k#0)
               ==> _module.__default.TT_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), LitInt(y#0 + 1)))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#2: Box :: 
                { _module.__default.TT_h($LS($ly), _k'#2, y#0) } 
                ORD#Less(_k'#2, _k#0) ==> _module.__default.TT_h($LS($ly), _k'#2, y#0)))));
}

function _module.__default.TT_h#canCall(_k#0: Box, y#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, _k#0: Box, y#0: int :: 
  { _module.__default.TT_h($LS($ly), _k#0, y#0) } 
  _module.__default.TT_h($LS($ly), _k#0, y#0)
     == _module.__default.TT_h($ly, _k#0, y#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, _k#0: Box, y#0: int :: 
  { _module.__default.TT_h(AsFuelBottom($ly), _k#0, y#0) } 
  _module.__default.TT_h($ly, _k#0, y#0) == _module.__default.TT_h($LZ, _k#0, y#0));

function _module.__default.TT_h#requires(LayerType, Box, int) : bool;

// #requires axiom for _module.__default.TT_h
axiom (forall $ly: LayerType, _k#0: Box, y#0: int :: 
  { _module.__default.TT_h#requires($ly, _k#0, y#0) } 
  _module.__default.TT_h#requires($ly, _k#0, y#0) == true);

procedure {:verboseName "AlwaysTT (well-formedness)"} CheckWellFormed$$_module.__default.AlwaysTT(y#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "AlwaysTT (call)"} Call$$_module.__default.AlwaysTT(y#0: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.TT#canCall(y#0);
  free ensures {:id "id75"} _module.__default.TT#canCall(y#0)
     && 
    _module.__default.TT($LS($LZ), y#0)
     && _module.__default.TT($LS($LZ), y#0 + 1);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "AlwaysTT# (co-call)"} CoCall$$_module.__default.AlwaysTT_h(_k#0: Box, y#1: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.TT_h#canCall(_k#0, y#1);
  free ensures {:id "id76"} _module.__default.TT_h#canCall(_k#0, y#1)
     && 
    _module.__default.TT_h($LS($LZ), _k#0, y#1)
     && 
    (0 < ORD#Offset(_k#0)
       ==> _module.__default.TT_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), y#1 + 1))
     && (LitInt(0) == ORD#Offset(_k#0)
       ==> (forall _k'#0: Box :: 
        { _module.__default.TT_h($LS($LZ), _k'#0, y#1) } 
        ORD#Less(_k'#0, _k#0) ==> _module.__default.TT_h($LS($LZ), _k'#0, y#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "AlwaysTT# (correctness)"} Impl$$_module.__default.AlwaysTT_h(_k#0: Box, y#1: int) returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.TT_h#canCall(_k#0, y#1);
  ensures {:id "id77"} _module.__default.TT_h#canCall(_k#0, y#1)
     ==> _module.__default.TT_h($LS($LZ), _k#0, y#1)
       || (0 < ORD#Offset(_k#0)
         ==> _module.__default.TT_h($LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), y#1 + 1));
  ensures {:id "id78"} _module.__default.TT_h#canCall(_k#0, y#1)
     ==> _module.__default.TT_h($LS($LZ), _k#0, y#1)
       || (LitInt(0) == ORD#Offset(_k#0)
         ==> (forall _k'#1: Box :: 
          { _module.__default.TT_h($LS($LS($LZ)), _k'#1, y#1) } 
          ORD#Less(_k'#1, _k#0) ==> _module.__default.TT_h($LS($LS($LZ)), _k'#1, y#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AlwaysTT# (correctness)"} Impl$$_module.__default.AlwaysTT_h(_k#0: Box, y#1: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: AlwaysTT#, Impl$$_module.__default.AlwaysTT_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box, $ih#y0#0: int :: 
      { _module.__default.TT_h($LS($LZ), $ih#_k0#0, $ih#y0#0) } 
      Lit(true)
           && (ORD#Less($ih#_k0#0, _k#0)
             || ($ih#_k0#0 == _k#0 && 0 <= $ih#y0#0 && $ih#y0#0 < y#1))
         ==> _module.__default.TT_h($LS($LZ), $ih#_k0#0, $ih#y0#0));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/SimpleCoinduction.dfy(90,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/SimpleCoinduction.dfy(90,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#2: Box, y#2: int :: 
          { _module.__default.TT_h($LS($LZ), _k'#2, y#2) } 
          ORD#Less(_k'#2, _k#0) ==> _module.__default.TT_h($LS($LZ), _k'#2, y#2));
    }
}



// function declaration for _module._default.Append
function _module.__default.Append(_module._default.Append$_T0: Ty, 
    $ly: LayerType, 
    M#0: DatatypeType, 
    N#0: DatatypeType)
   : DatatypeType
uses {
// consequence axiom for _module.__default.Append
axiom 1 <= $FunctionContextHeight
   ==> (forall _module._default.Append$_T0: Ty, 
      $ly: LayerType, 
      M#0: DatatypeType, 
      N#0: DatatypeType :: 
    { _module.__default.Append(_module._default.Append$_T0, $ly, M#0, N#0) } 
    _module.__default.Append#canCall(_module._default.Append$_T0, M#0, N#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(M#0, Tclass._module.IList(_module._default.Append$_T0))
           && $Is(N#0, Tclass._module.IList(_module._default.Append$_T0)))
       ==> $Is(_module.__default.Append(_module._default.Append$_T0, $ly, M#0, N#0), 
        Tclass._module.IList(_module._default.Append$_T0)));
// alloc consequence axiom for _module.__default.Append
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      _module._default.Append$_T0: Ty, 
      $ly: LayerType, 
      M#0: DatatypeType, 
      N#0: DatatypeType :: 
    { $IsAlloc(_module.__default.Append(_module._default.Append$_T0, $ly, M#0, N#0), 
        Tclass._module.IList(_module._default.Append$_T0), 
        $Heap) } 
    (_module.__default.Append#canCall(_module._default.Append$_T0, M#0, N#0)
           || (1 < $FunctionContextHeight
             && 
            $Is(M#0, Tclass._module.IList(_module._default.Append$_T0))
             && $IsAlloc(M#0, Tclass._module.IList(_module._default.Append$_T0), $Heap)
             && 
            $Is(N#0, Tclass._module.IList(_module._default.Append$_T0))
             && $IsAlloc(N#0, Tclass._module.IList(_module._default.Append$_T0), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.__default.Append(_module._default.Append$_T0, $ly, M#0, N#0), 
        Tclass._module.IList(_module._default.Append$_T0), 
        $Heap));
// definition axiom for _module.__default.Append (revealed)
axiom {:id "id79"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.Append$_T0: Ty, 
      $ly: LayerType, 
      M#0: DatatypeType, 
      N#0: DatatypeType :: 
    { _module.__default.Append(_module._default.Append$_T0, $LS($ly), M#0, N#0) } 
    _module.__default.Append#canCall(_module._default.Append$_T0, M#0, N#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(M#0, Tclass._module.IList(_module._default.Append$_T0))
           && $Is(N#0, Tclass._module.IList(_module._default.Append$_T0)))
       ==> (!_module.IList.Nil_q(M#0)
           ==> (var M'#1 := _module.IList.tail(M#0); 
            _module.__default.Append#canCall(_module._default.Append$_T0, M'#1, N#0)))
         && _module.__default.Append(_module._default.Append$_T0, $LS($ly), M#0, N#0)
           == (if _module.IList.Nil_q(M#0)
             then N#0
             else (var M'#0 := _module.IList.tail(M#0); 
              (var x#0 := _module.IList.head(M#0); 
                #_module.IList.ICons(x#0, _module.__default.Append(_module._default.Append$_T0, $ly, M'#0, N#0))))));
}

function _module.__default.Append#canCall(_module._default.Append$_T0: Ty, M#0: DatatypeType, N#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall _module._default.Append$_T0: Ty, 
    $ly: LayerType, 
    M#0: DatatypeType, 
    N#0: DatatypeType :: 
  { _module.__default.Append(_module._default.Append$_T0, $LS($ly), M#0, N#0) } 
  _module.__default.Append(_module._default.Append$_T0, $LS($ly), M#0, N#0)
     == _module.__default.Append(_module._default.Append$_T0, $ly, M#0, N#0));

// fuel synonym axiom
axiom (forall _module._default.Append$_T0: Ty, 
    $ly: LayerType, 
    M#0: DatatypeType, 
    N#0: DatatypeType :: 
  { _module.__default.Append(_module._default.Append$_T0, AsFuelBottom($ly), M#0, N#0) } 
  _module.__default.Append(_module._default.Append$_T0, $ly, M#0, N#0)
     == _module.__default.Append(_module._default.Append$_T0, $LZ, M#0, N#0));

function Tclass._module.IList(Ty) : Ty;

const unique Tagclass._module.IList: TyTag;

// Tclass._module.IList Tag
axiom (forall _module.IList$T: Ty :: 
  { Tclass._module.IList(_module.IList$T) } 
  Tag(Tclass._module.IList(_module.IList$T)) == Tagclass._module.IList
     && TagFamily(Tclass._module.IList(_module.IList$T)) == tytagFamily$IList);

function Tclass._module.IList_0(Ty) : Ty;

// Tclass._module.IList injectivity 0
axiom (forall _module.IList$T: Ty :: 
  { Tclass._module.IList(_module.IList$T) } 
  Tclass._module.IList_0(Tclass._module.IList(_module.IList$T)) == _module.IList$T);

// Box/unbox axiom for Tclass._module.IList
axiom (forall _module.IList$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.IList(_module.IList$T)) } 
  $IsBox(bx, Tclass._module.IList(_module.IList$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.IList(_module.IList$T)));

function _module.__default.Append#requires(Ty, LayerType, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.Append
axiom (forall _module._default.Append$_T0: Ty, 
    $ly: LayerType, 
    M#0: DatatypeType, 
    N#0: DatatypeType :: 
  { _module.__default.Append#requires(_module._default.Append$_T0, $ly, M#0, N#0) } 
  $Is(M#0, Tclass._module.IList(_module._default.Append$_T0))
       && $Is(N#0, Tclass._module.IList(_module._default.Append$_T0))
     ==> _module.__default.Append#requires(_module._default.Append$_T0, $ly, M#0, N#0)
       == true);

procedure {:verboseName "Append (well-formedness)"} CheckWellformed$$_module.__default.Append(_module._default.Append$_T0: Ty, 
    M#0: DatatypeType
       where $Is(M#0, Tclass._module.IList(_module._default.Append$_T0)), 
    N#0: DatatypeType
       where $Is(N#0, Tclass._module.IList(_module._default.Append$_T0)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.zeros
function _module.__default.zeros($ly: LayerType) : DatatypeType
uses {
// consequence axiom for _module.__default.zeros
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType :: 
    { _module.__default.zeros($ly) } 
    _module.__default.zeros#canCall() || 1 < $FunctionContextHeight
       ==> $Is(_module.__default.zeros($ly), Tclass._module.IList(TInt)));
// definition axiom for _module.__default.zeros (revealed)
axiom {:id "id86"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType :: 
    { _module.__default.zeros($LS($ly)) } 
    _module.__default.zeros#canCall() || 1 < $FunctionContextHeight
       ==> _module.__default.zeros#canCall()
         && _module.__default.zeros($LS($ly))
           == Lit(#_module.IList.ICons($Box(LitInt(0)), Lit(_module.__default.zeros($ly)))));
}

function _module.__default.zeros#canCall() : bool;

// layer synonym axiom
axiom (forall $ly: LayerType :: 
  { _module.__default.zeros($LS($ly)) } 
  _module.__default.zeros($LS($ly)) == _module.__default.zeros($ly));

// fuel synonym axiom
axiom (forall $ly: LayerType :: 
  { _module.__default.zeros(AsFuelBottom($ly)) } 
  _module.__default.zeros($ly) == _module.__default.zeros($LZ));

function _module.__default.zeros#requires(LayerType) : bool;

// #requires axiom for _module.__default.zeros
axiom (forall $ly: LayerType :: 
  { _module.__default.zeros#requires($ly) } 
  _module.__default.zeros#requires($ly) == true);

procedure {:verboseName "zeros (well-formedness)"} CheckWellformed$$_module.__default.zeros();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.ones
function _module.__default.ones($ly: LayerType) : DatatypeType
uses {
// consequence axiom for _module.__default.ones
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType :: 
    { _module.__default.ones($ly) } 
    _module.__default.ones#canCall() || 1 < $FunctionContextHeight
       ==> $Is(_module.__default.ones($ly), Tclass._module.IList(TInt)));
// definition axiom for _module.__default.ones (revealed)
axiom {:id "id88"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType :: 
    { _module.__default.ones($LS($ly)) } 
    _module.__default.ones#canCall() || 1 < $FunctionContextHeight
       ==> _module.__default.ones#canCall()
         && _module.__default.ones($LS($ly))
           == Lit(#_module.IList.ICons($Box(LitInt(1)), Lit(_module.__default.ones($ly)))));
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



// function declaration for _module._default.AtMost
function _module.__default.AtMost($ly: LayerType, a#0: DatatypeType, b#0: DatatypeType) : bool
uses {
// definition axiom for _module.__default.AtMost (revealed)
axiom {:id "id90"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, a#0: DatatypeType, b#0: DatatypeType :: 
    { _module.__default.AtMost($LS($ly), a#0, b#0) } 
    _module.__default.AtMost#canCall(a#0, b#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(a#0, Tclass._module.IList(TInt))
           && $Is(b#0, Tclass._module.IList(TInt)))
       ==> (!_module.IList.Nil_q(a#0)
           ==> (var t#1 := _module.IList.tail(a#0); 
            (var h#1 := $Unbox(_module.IList.head(a#0)): int; 
              _module.IList.ICons_q(b#0)
                 ==> 
                h#1 <= $Unbox(_module.IList.head(b#0)): int
                 ==> _module.__default.AtMost#canCall(t#1, _module.IList.tail(b#0)))))
         && _module.__default.AtMost($LS($ly), a#0, b#0)
           == (if _module.IList.Nil_q(a#0)
             then true
             else (var t#0 := _module.IList.tail(a#0); 
              (var h#0 := $Unbox(_module.IList.head(a#0)): int; 
                _module.IList.ICons_q(b#0)
                   && h#0 <= $Unbox(_module.IList.head(b#0)): int
                   && _module.__default.AtMost($ly, t#0, _module.IList.tail(b#0))))));
}

function _module.__default.AtMost#canCall(a#0: DatatypeType, b#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, a#0: DatatypeType, b#0: DatatypeType :: 
  { _module.__default.AtMost($LS($ly), a#0, b#0) } 
  _module.__default.AtMost($LS($ly), a#0, b#0)
     == _module.__default.AtMost($ly, a#0, b#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, a#0: DatatypeType, b#0: DatatypeType :: 
  { _module.__default.AtMost(AsFuelBottom($ly), a#0, b#0) } 
  _module.__default.AtMost($ly, a#0, b#0)
     == _module.__default.AtMost($LZ, a#0, b#0));

function _module.__default.AtMost#requires(LayerType, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.AtMost
axiom (forall $ly: LayerType, a#0: DatatypeType, b#0: DatatypeType :: 
  { _module.__default.AtMost#requires($ly, a#0, b#0) } 
  $Is(a#0, Tclass._module.IList(TInt)) && $Is(b#0, Tclass._module.IList(TInt))
     ==> _module.__default.AtMost#requires($ly, a#0, b#0) == true);

// 1st prefix predicate axiom for _module.__default.AtMost_h
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, a#0: DatatypeType, b#0: DatatypeType :: 
    { _module.__default.AtMost($LS($ly), a#0, b#0) } 
    $Is(a#0, Tclass._module.IList(TInt))
         && $Is(b#0, Tclass._module.IList(TInt))
         && _module.__default.AtMost($LS($ly), a#0, b#0)
       ==> (forall _k#0: Box :: 
        { _module.__default.AtMost_h($LS($ly), _k#0, a#0, b#0) } 
        _module.__default.AtMost_h($LS($ly), _k#0, a#0, b#0)));

// 2nd prefix predicate axiom
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, a#0: DatatypeType, b#0: DatatypeType :: 
    { _module.__default.AtMost($LS($ly), a#0, b#0) } 
    $Is(a#0, Tclass._module.IList(TInt))
         && $Is(b#0, Tclass._module.IList(TInt))
         && (forall _k#0: Box :: 
          { _module.__default.AtMost_h($LS($ly), _k#0, a#0, b#0) } 
          _module.__default.AtMost_h($LS($ly), _k#0, a#0, b#0))
       ==> _module.__default.AtMost($LS($ly), a#0, b#0));

// 3rd prefix predicate axiom
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, a#0: DatatypeType, b#0: DatatypeType, _k#0: Box :: 
    { _module.__default.AtMost_h($ly, _k#0, a#0, b#0) } 
    $Is(a#0, Tclass._module.IList(TInt))
         && $Is(b#0, Tclass._module.IList(TInt))
         && _k#0 == ORD#FromNat(0)
       ==> _module.__default.AtMost_h($ly, _k#0, a#0, b#0));

procedure {:verboseName "AtMost (well-formedness)"} CheckWellformed$$_module.__default.AtMost(a#0: DatatypeType where $Is(a#0, Tclass._module.IList(TInt)), 
    b#0: DatatypeType where $Is(b#0, Tclass._module.IList(TInt)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AtMost (well-formedness)"} CheckWellformed$$_module.__default.AtMost(a#0: DatatypeType, b#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: int;
  var _mcc#1#0: DatatypeType;
  var t#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var h#Z#0: int;
  var let#1#0#0: int;
  var ##a#0: DatatypeType;
  var ##b#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
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
        if (a#0 == #_module.IList.Nil())
        {
            assume {:id "id98"} _module.__default.AtMost($LS($LZ), a#0, b#0) == Lit(true);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.AtMost($LS($LZ), a#0, b#0), TBool);
            return;
        }
        else if (a#0 == #_module.IList.ICons($Box(_mcc#0#0), _mcc#1#0))
        {
            assume $Is(_mcc#1#0, Tclass._module.IList(TInt));
            havoc t#Z#0;
            assume {:id "id91"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.IList(TInt));
            assume {:id "id92"} t#Z#0 == let#0#0#0;
            havoc h#Z#0;
            assume {:id "id93"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, TInt);
            assume {:id "id94"} h#Z#0 == let#1#0#0;
            if (_module.IList.ICons_q(b#0))
            {
                assert {:id "id95"} _module.IList.ICons_q(b#0);
            }

            if (_module.IList.ICons_q(b#0) && h#Z#0 <= $Unbox(_module.IList.head(b#0)): int)
            {
                ##a#0 := t#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#0, Tclass._module.IList(TInt), $Heap);
                assert {:id "id96"} _module.IList.ICons_q(b#0);
                ##b#0 := _module.IList.tail(b#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#0, Tclass._module.IList(TInt), $Heap);
                assume _module.__default.AtMost#canCall(t#Z#0, _module.IList.tail(b#0));
            }

            assume {:id "id97"} _module.__default.AtMost($LS($LZ), a#0, b#0)
               == (
                _module.IList.ICons_q(b#0)
                 && h#Z#0 <= $Unbox(_module.IList.head(b#0)): int
                 && _module.__default.AtMost($LS($LZ), t#Z#0, _module.IList.tail(b#0)));
            assume _module.IList.ICons_q(b#0)
               ==> 
              h#Z#0 <= $Unbox(_module.IList.head(b#0)): int
               ==> _module.__default.AtMost#canCall(t#Z#0, _module.IList.tail(b#0));
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.AtMost($LS($LZ), a#0, b#0), TBool);
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.AtMost#
function _module.__default.AtMost_h($ly: LayerType, _k#0: Box, a#0: DatatypeType, b#0: DatatypeType) : bool
uses {
// definition axiom for _module.__default.AtMost_h (revealed)
axiom {:id "id99"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, _k#0: Box, a#0: DatatypeType, b#0: DatatypeType :: 
    { _module.__default.AtMost_h($LS($ly), _k#0, a#0, b#0) } 
    _module.__default.AtMost_h#canCall(_k#0, a#0, b#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(a#0, Tclass._module.IList(TInt))
           && $Is(b#0, Tclass._module.IList(TInt)))
       ==> (0 < ORD#Offset(_k#0)
           ==> 
          !_module.IList.Nil_q(a#0)
           ==> (var t#3 := _module.IList.tail(a#0); 
            (var h#3 := $Unbox(_module.IList.head(a#0)): int; 
              _module.IList.ICons_q(b#0)
                 ==> 
                h#3 <= $Unbox(_module.IList.head(b#0)): int
                 ==> _module.__default.AtMost_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), t#3, _module.IList.tail(b#0)))))
         && (
          (0 < ORD#Offset(_k#0)
           ==> (if _module.IList.Nil_q(a#0)
             then true
             else (var t#4 := _module.IList.tail(a#0); 
              (var h#4 := $Unbox(_module.IList.head(a#0)): int; 
                _module.IList.ICons_q(b#0)
                   && h#4 <= $Unbox(_module.IList.head(b#0)): int
                   && _module.__default.AtMost_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), t#4, _module.IList.tail(b#0))))))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#0: Box :: 
            { _module.__default.AtMost_h($ly, _k'#0, a#0, b#0) } 
            ORD#Less(_k'#0, _k#0) ==> _module.__default.AtMost_h#canCall(_k'#0, a#0, b#0)))
         && _module.__default.AtMost_h($LS($ly), _k#0, a#0, b#0)
           == ((0 < ORD#Offset(_k#0)
               ==> (if _module.IList.Nil_q(a#0)
                 then true
                 else (var t#2 := _module.IList.tail(a#0); 
                  (var h#2 := $Unbox(_module.IList.head(a#0)): int; 
                    _module.IList.ICons_q(b#0)
                       && h#2 <= $Unbox(_module.IList.head(b#0)): int
                       && _module.__default.AtMost_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), t#2, _module.IList.tail(b#0))))))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#0: Box :: 
                { _module.__default.AtMost_h($ly, _k'#0, a#0, b#0) } 
                ORD#Less(_k'#0, _k#0) ==> _module.__default.AtMost_h($ly, _k'#0, a#0, b#0)))));
// definition axiom for _module.__default.AtMost_h for decreasing-related literals (revealed)
axiom {:id "id100"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, _k#0: Box, a#0: DatatypeType, b#0: DatatypeType :: 
    {:weight 3} { _module.__default.AtMost_h($LS($ly), Lit(_k#0), a#0, b#0) } 
    _module.__default.AtMost_h#canCall(Lit(_k#0), a#0, b#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(a#0, Tclass._module.IList(TInt))
           && $Is(b#0, Tclass._module.IList(TInt)))
       ==> (0 < ORD#Offset(_k#0)
           ==> 
          !_module.IList.Nil_q(a#0)
           ==> (var t#6 := _module.IList.tail(a#0); 
            (var h#6 := $Unbox(_module.IList.head(a#0)): int; 
              _module.IList.ICons_q(b#0)
                 ==> 
                h#6 <= $Unbox(_module.IList.head(b#0)): int
                 ==> _module.__default.AtMost_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), t#6, _module.IList.tail(b#0)))))
         && (
          (0 < ORD#Offset(_k#0)
           ==> (if _module.IList.Nil_q(a#0)
             then true
             else (var t#7 := _module.IList.tail(a#0); 
              (var h#7 := $Unbox(_module.IList.head(a#0)): int; 
                _module.IList.ICons_q(b#0)
                   && h#7 <= $Unbox(_module.IList.head(b#0)): int
                   && _module.__default.AtMost_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), t#7, _module.IList.tail(b#0))))))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#1: Box :: 
            { _module.__default.AtMost_h($LS($ly), _k'#1, a#0, b#0) } 
            ORD#Less(_k'#1, _k#0) ==> _module.__default.AtMost_h#canCall(_k'#1, a#0, b#0)))
         && _module.__default.AtMost_h($LS($ly), Lit(_k#0), a#0, b#0)
           == ((0 < ORD#Offset(_k#0)
               ==> (if _module.IList.Nil_q(a#0)
                 then true
                 else (var t#5 := _module.IList.tail(a#0); 
                  (var h#5 := $Unbox(_module.IList.head(a#0)): int; 
                    _module.IList.ICons_q(b#0)
                       && h#5 <= $Unbox(_module.IList.head(b#0)): int
                       && _module.__default.AtMost_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), t#5, _module.IList.tail(b#0))))))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#1: Box :: 
                { _module.__default.AtMost_h($LS($ly), _k'#1, a#0, b#0) } 
                ORD#Less(_k'#1, _k#0) ==> _module.__default.AtMost_h($LS($ly), _k'#1, a#0, b#0)))));
// definition axiom for _module.__default.AtMost_h for all literals (revealed)
axiom {:id "id101"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, _k#0: Box, a#0: DatatypeType, b#0: DatatypeType :: 
    {:weight 3} { _module.__default.AtMost_h($LS($ly), Lit(_k#0), Lit(a#0), Lit(b#0)) } 
    _module.__default.AtMost_h#canCall(Lit(_k#0), Lit(a#0), Lit(b#0))
         || (2 < $FunctionContextHeight
           && 
          $Is(a#0, Tclass._module.IList(TInt))
           && $Is(b#0, Tclass._module.IList(TInt)))
       ==> (0 < ORD#Offset(_k#0)
           ==> 
          !Lit(_module.IList.Nil_q(Lit(a#0)))
           ==> (var t#9 := Lit(_module.IList.tail(Lit(a#0))); 
            (var h#9 := LitInt($Unbox(_module.IList.head(Lit(a#0))): int); 
              Lit(_module.IList.ICons_q(Lit(b#0)))
                 ==> 
                h#9 <= LitInt($Unbox(_module.IList.head(Lit(b#0))): int)
                 ==> _module.__default.AtMost_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), t#9, Lit(_module.IList.tail(Lit(b#0)))))))
         && (
          (0 < ORD#Offset(_k#0)
           ==> (if _module.IList.Nil_q(Lit(a#0))
             then true
             else (var t#10 := Lit(_module.IList.tail(Lit(a#0))); 
              (var h#10 := LitInt($Unbox(_module.IList.head(Lit(a#0))): int); 
                _module.IList.ICons_q(Lit(b#0))
                   && h#10 <= LitInt($Unbox(_module.IList.head(Lit(b#0))): int)
                   && _module.__default.AtMost_h($LS($ly), 
                    ORD#Minus(_k#0, ORD#FromNat(1)), 
                    t#10, 
                    Lit(_module.IList.tail(Lit(b#0))))))))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#2: Box :: 
            { _module.__default.AtMost_h($LS($ly), _k'#2, a#0, b#0) } 
            ORD#Less(_k'#2, _k#0) ==> _module.__default.AtMost_h#canCall(_k'#2, a#0, b#0)))
         && _module.__default.AtMost_h($LS($ly), Lit(_k#0), Lit(a#0), Lit(b#0))
           == ((0 < ORD#Offset(_k#0)
               ==> (if _module.IList.Nil_q(Lit(a#0))
                 then true
                 else (var t#8 := Lit(_module.IList.tail(Lit(a#0))); 
                  (var h#8 := LitInt($Unbox(_module.IList.head(Lit(a#0))): int); 
                    _module.IList.ICons_q(Lit(b#0))
                       && h#8 <= LitInt($Unbox(_module.IList.head(Lit(b#0))): int)
                       && _module.__default.AtMost_h($LS($ly), 
                        ORD#Minus(_k#0, ORD#FromNat(1)), 
                        t#8, 
                        Lit(_module.IList.tail(Lit(b#0))))))))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#2: Box :: 
                { _module.__default.AtMost_h($LS($ly), _k'#2, a#0, b#0) } 
                ORD#Less(_k'#2, _k#0) ==> _module.__default.AtMost_h($LS($ly), _k'#2, a#0, b#0)))));
}

function _module.__default.AtMost_h#canCall(_k#0: Box, a#0: DatatypeType, b#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, _k#0: Box, a#0: DatatypeType, b#0: DatatypeType :: 
  { _module.__default.AtMost_h($LS($ly), _k#0, a#0, b#0) } 
  _module.__default.AtMost_h($LS($ly), _k#0, a#0, b#0)
     == _module.__default.AtMost_h($ly, _k#0, a#0, b#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, _k#0: Box, a#0: DatatypeType, b#0: DatatypeType :: 
  { _module.__default.AtMost_h(AsFuelBottom($ly), _k#0, a#0, b#0) } 
  _module.__default.AtMost_h($ly, _k#0, a#0, b#0)
     == _module.__default.AtMost_h($LZ, _k#0, a#0, b#0));

function _module.__default.AtMost_h#requires(LayerType, Box, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.AtMost_h
axiom (forall $ly: LayerType, _k#0: Box, a#0: DatatypeType, b#0: DatatypeType :: 
  { _module.__default.AtMost_h#requires($ly, _k#0, a#0, b#0) } 
  $Is(a#0, Tclass._module.IList(TInt)) && $Is(b#0, Tclass._module.IList(TInt))
     ==> _module.__default.AtMost_h#requires($ly, _k#0, a#0, b#0) == true);

procedure {:verboseName "ZerosAndOnes_Theorem0 (well-formedness)"} CheckWellFormed$$_module.__default.ZerosAndOnes__Theorem0();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ZerosAndOnes_Theorem0 (call)"} Call$$_module.__default.ZerosAndOnes__Theorem0();
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.zeros#canCall()
     && _module.__default.ones#canCall()
     && _module.__default.AtMost#canCall(Lit(_module.__default.zeros($LS($LZ))), Lit(_module.__default.ones($LS($LZ))));
  free ensures {:id "id103"} _module.__default.AtMost#canCall(Lit(_module.__default.zeros($LS($LZ))), Lit(_module.__default.ones($LS($LZ))))
     && 
    Lit(_module.__default.AtMost($LS($LZ), 
        Lit(_module.__default.zeros($LS($LZ))), 
        Lit(_module.__default.ones($LS($LZ)))))
     && (if _module.IList.Nil_q(Lit(_module.__default.zeros($LS($LZ))))
       then true
       else (var t#1 := Lit(_module.IList.tail(Lit(_module.__default.zeros($LS($LZ))))); 
        (var h#1 := LitInt($Unbox(_module.IList.head(Lit(_module.__default.zeros($LS($LZ))))): int); 
          _module.IList.ICons_q(Lit(_module.__default.ones($LS($LZ))))
             && h#1
               <= LitInt($Unbox(_module.IList.head(Lit(_module.__default.ones($LS($LZ))))): int)
             && _module.__default.AtMost($LS($LZ), t#1, Lit(_module.IList.tail(Lit(_module.__default.ones($LS($LZ)))))))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "ZerosAndOnes_Theorem0# (co-call)"} CoCall$$_module.__default.ZerosAndOnes__Theorem0_h(_k#0: Box);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.zeros#canCall()
     && _module.__default.ones#canCall()
     && _module.__default.AtMost_h#canCall(_k#0, 
      Lit(_module.__default.zeros($LS($LZ))), 
      Lit(_module.__default.ones($LS($LZ))));
  free ensures {:id "id104"} _module.__default.AtMost_h#canCall(_k#0, 
      Lit(_module.__default.zeros($LS($LZ))), 
      Lit(_module.__default.ones($LS($LZ))))
     && 
    _module.__default.AtMost_h($LS($LZ), 
      _k#0, 
      Lit(_module.__default.zeros($LS($LZ))), 
      Lit(_module.__default.ones($LS($LZ))))
     && 
    (0 < ORD#Offset(_k#0)
       ==> (if _module.IList.Nil_q(Lit(_module.__default.zeros($LS($LZ))))
         then true
         else (var t#3 := Lit(_module.IList.tail(Lit(_module.__default.zeros($LS($LZ))))); 
          (var h#3 := LitInt($Unbox(_module.IList.head(Lit(_module.__default.zeros($LS($LZ))))): int); 
            _module.IList.ICons_q(Lit(_module.__default.ones($LS($LZ))))
               && h#3
                 <= LitInt($Unbox(_module.IList.head(Lit(_module.__default.ones($LS($LZ))))): int)
               && _module.__default.AtMost_h($LS($LZ), 
                ORD#Minus(_k#0, ORD#FromNat(1)), 
                t#3, 
                Lit(_module.IList.tail(Lit(_module.__default.ones($LS($LZ))))))))))
     && (LitInt(0) == ORD#Offset(_k#0)
       ==> (forall _k'#0: Box :: 
        { _module.__default.AtMost_h($LS($LZ), 
            _k'#0, 
            _module.__default.zeros($LS($LZ)), 
            _module.__default.ones($LS($LZ))) } 
        ORD#Less(_k'#0, _k#0)
           ==> _module.__default.AtMost_h($LS($LZ), 
            _k'#0, 
            Lit(_module.__default.zeros($LS($LZ))), 
            Lit(_module.__default.ones($LS($LZ))))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "ZerosAndOnes_Theorem0# (correctness)"} Impl$$_module.__default.ZerosAndOnes__Theorem0_h(_k#0: Box) returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.zeros#canCall()
     && _module.__default.ones#canCall()
     && _module.__default.AtMost_h#canCall(_k#0, 
      Lit(_module.__default.zeros($LS($LZ))), 
      Lit(_module.__default.ones($LS($LZ))));
  ensures {:id "id105"} _module.__default.AtMost_h#canCall(_k#0, 
      Lit(_module.__default.zeros($LS($LZ))), 
      Lit(_module.__default.ones($LS($LZ))))
     ==> _module.__default.AtMost_h($LS($LZ), 
        _k#0, 
        Lit(_module.__default.zeros($LS($LZ))), 
        Lit(_module.__default.ones($LS($LZ))))
       || (0 < ORD#Offset(_k#0)
         ==> 
        Lit(_module.IList.Nil_q(Lit(_module.__default.zeros($LS($LZ)))))
         ==> Lit(true));
  ensures {:id "id106"} _module.__default.AtMost_h#canCall(_k#0, 
      Lit(_module.__default.zeros($LS($LZ))), 
      Lit(_module.__default.ones($LS($LZ))))
     ==> _module.__default.AtMost_h($LS($LZ), 
        _k#0, 
        Lit(_module.__default.zeros($LS($LZ))), 
        Lit(_module.__default.ones($LS($LZ))))
       || (0 < ORD#Offset(_k#0)
         ==> 
        !Lit(_module.IList.Nil_q(Lit(_module.__default.zeros($LS($LZ)))))
         ==> (var t#4 := Lit(_module.IList.tail(Lit(_module.__default.zeros($LS($LS($LZ)))))); 
          (var h#4 := LitInt($Unbox(_module.IList.head(Lit(_module.__default.zeros($LS($LS($LZ)))))): int); 
            Lit(_module.IList.ICons_q(Lit(_module.__default.ones($LS($LS($LZ)))))))));
  ensures {:id "id107"} _module.__default.AtMost_h#canCall(_k#0, 
      Lit(_module.__default.zeros($LS($LZ))), 
      Lit(_module.__default.ones($LS($LZ))))
     ==> _module.__default.AtMost_h($LS($LZ), 
        _k#0, 
        Lit(_module.__default.zeros($LS($LZ))), 
        Lit(_module.__default.ones($LS($LZ))))
       || (0 < ORD#Offset(_k#0)
         ==> 
        !Lit(_module.IList.Nil_q(Lit(_module.__default.zeros($LS($LZ)))))
         ==> (var t#4 := Lit(_module.IList.tail(Lit(_module.__default.zeros($LS($LS($LZ)))))); 
          (var h#4 := LitInt($Unbox(_module.IList.head(Lit(_module.__default.zeros($LS($LS($LZ)))))): int); 
            h#4
               <= LitInt($Unbox(_module.IList.head(Lit(_module.__default.ones($LS($LS($LZ)))))): int))));
  ensures {:id "id108"} _module.__default.AtMost_h#canCall(_k#0, 
      Lit(_module.__default.zeros($LS($LZ))), 
      Lit(_module.__default.ones($LS($LZ))))
     ==> _module.__default.AtMost_h($LS($LZ), 
        _k#0, 
        Lit(_module.__default.zeros($LS($LZ))), 
        Lit(_module.__default.ones($LS($LZ))))
       || (0 < ORD#Offset(_k#0)
         ==> 
        !Lit(_module.IList.Nil_q(Lit(_module.__default.zeros($LS($LZ)))))
         ==> (var t#4 := Lit(_module.IList.tail(Lit(_module.__default.zeros($LS($LS($LZ)))))); 
          (var h#4 := LitInt($Unbox(_module.IList.head(Lit(_module.__default.zeros($LS($LS($LZ)))))): int); 
            _module.__default.AtMost_h($LS($LS($LZ)), 
              ORD#Minus(_k#0, ORD#FromNat(1)), 
              t#4, 
              Lit(_module.IList.tail(Lit(_module.__default.ones($LS($LS($LZ))))))))));
  ensures {:id "id109"} _module.__default.AtMost_h#canCall(_k#0, 
      Lit(_module.__default.zeros($LS($LZ))), 
      Lit(_module.__default.ones($LS($LZ))))
     ==> _module.__default.AtMost_h($LS($LZ), 
        _k#0, 
        Lit(_module.__default.zeros($LS($LZ))), 
        Lit(_module.__default.ones($LS($LZ))))
       || (LitInt(0) == ORD#Offset(_k#0)
         ==> (forall _k'#1: Box :: 
          { _module.__default.AtMost_h($LS($LS($LZ)), 
              _k'#1, 
              _module.__default.zeros($LS($LS($LZ))), 
              _module.__default.ones($LS($LS($LZ)))) } 
          ORD#Less(_k'#1, _k#0)
             ==> _module.__default.AtMost_h($LS($LS($LZ)), 
              _k'#1, 
              Lit(_module.__default.zeros($LS($LS($LZ)))), 
              Lit(_module.__default.ones($LS($LS($LZ)))))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ZerosAndOnes_Theorem0# (correctness)"} Impl$$_module.__default.ZerosAndOnes__Theorem0_h(_k#0: Box) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: ZerosAndOnes_Theorem0#, Impl$$_module.__default.ZerosAndOnes__Theorem0_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box :: 
      { _module.__default.AtMost_h($LS($LZ), 
          $ih#_k0#0, 
          Lit(_module.__default.zeros($LS($LZ))), 
          Lit(_module.__default.ones($LS($LZ)))) } 
      Lit(true) && ORD#Less($ih#_k0#0, _k#0)
         ==> _module.__default.AtMost_h($LS($LZ), 
          $ih#_k0#0, 
          Lit(_module.__default.zeros($LS($LZ))), 
          Lit(_module.__default.ones($LS($LZ)))));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/SimpleCoinduction.dfy(121,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/SimpleCoinduction.dfy(121,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#2: Box :: 
          { _module.__default.AtMost_h($LS($LZ), 
              _k'#2, 
              _module.__default.zeros($LS($LZ)), 
              _module.__default.ones($LS($LZ))) } 
            { ORD#Less(_k'#2, _k#0) } 
          ORD#Less(_k'#2, _k#0)
             ==> _module.__default.AtMost_h($LS($LZ), 
              _k'#2, 
              Lit(_module.__default.zeros($LS($LZ))), 
              Lit(_module.__default.ones($LS($LZ)))));
    }
}



procedure {:verboseName "ZerosAndOnes_Theorem1 (well-formedness)"} CheckWellFormed$$_module.__default.ZerosAndOnes__Theorem1();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ZerosAndOnes_Theorem1 (call)"} Call$$_module.__default.ZerosAndOnes__Theorem1();
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.IList(Lit(_module.__default.Append(TInt, 
          $LS($LZ), 
          Lit(_module.__default.zeros($LS($LZ))), 
          Lit(_module.__default.ones($LS($LZ))))))
     && $IsA#_module.IList(Lit(_module.__default.zeros($LS($LZ))))
     && 
    _module.__default.zeros#canCall()
     && _module.__default.ones#canCall()
     && _module.__default.Append#canCall(TInt, 
      Lit(_module.__default.zeros($LS($LZ))), 
      Lit(_module.__default.ones($LS($LZ))))
     && _module.__default.zeros#canCall();
  ensures {:id "id111"} $Eq#_module.IList(TInt, 
    TInt, 
    $LS($LS($LZ)), 
    _module.__default.Append(TInt, 
      $LS($LS($LZ)), 
      Lit(_module.__default.zeros($LS($LS($LZ)))), 
      Lit(_module.__default.ones($LS($LS($LZ))))), 
    _module.__default.zeros($LS($LS($LZ))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "ZerosAndOnes_Theorem1# (co-call)"} CoCall$$_module.__default.ZerosAndOnes__Theorem1_h(_k#0: Box);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.zeros#canCall()
     && _module.__default.ones#canCall()
     && _module.__default.Append#canCall(TInt, 
      Lit(_module.__default.zeros($LS($LZ))), 
      Lit(_module.__default.ones($LS($LZ))))
     && _module.__default.zeros#canCall();
  free ensures {:id "id112"} $PrefixEq#_module.IList(TInt, 
    TInt, 
    _k#0, 
    $LS($LS($LZ)), 
    Lit(_module.__default.Append(TInt, 
        $LS($LZ), 
        Lit(_module.__default.zeros($LS($LZ))), 
        Lit(_module.__default.ones($LS($LZ))))), 
    Lit(_module.__default.zeros($LS($LZ))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "ZerosAndOnes_Theorem1# (correctness)"} Impl$$_module.__default.ZerosAndOnes__Theorem1_h(_k#0: Box) returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.zeros#canCall()
     && _module.__default.ones#canCall()
     && _module.__default.Append#canCall(TInt, 
      Lit(_module.__default.zeros($LS($LZ))), 
      Lit(_module.__default.ones($LS($LZ))))
     && _module.__default.zeros#canCall();
  ensures {:id "id113"} $PrefixEq#_module.IList(TInt, 
      TInt, 
      _k#0, 
      $LS($LS($LZ)), 
      Lit(_module.__default.Append(TInt, 
          $LS($LZ), 
          Lit(_module.__default.zeros($LS($LZ))), 
          Lit(_module.__default.ones($LS($LZ))))), 
      Lit(_module.__default.zeros($LS($LZ))))
     || (0 < ORD#Offset(_k#0)
       ==> 
      _module.IList.Nil_q(Lit(_module.__default.Append(TInt, 
            $LS($LS($LZ)), 
            Lit(_module.__default.zeros($LS($LS($LZ)))), 
            Lit(_module.__default.ones($LS($LS($LZ)))))))
       ==> _module.IList.Nil_q(Lit(_module.__default.zeros($LS($LS($LZ))))));
  ensures {:id "id114"} $PrefixEq#_module.IList(TInt, 
      TInt, 
      _k#0, 
      $LS($LS($LZ)), 
      Lit(_module.__default.Append(TInt, 
          $LS($LZ), 
          Lit(_module.__default.zeros($LS($LZ))), 
          Lit(_module.__default.ones($LS($LZ))))), 
      Lit(_module.__default.zeros($LS($LZ))))
     || (0 < ORD#Offset(_k#0)
       ==> 
      _module.IList.ICons_q(Lit(_module.__default.Append(TInt, 
            $LS($LS($LZ)), 
            Lit(_module.__default.zeros($LS($LS($LZ)))), 
            Lit(_module.__default.ones($LS($LS($LZ)))))))
       ==> _module.IList.ICons_q(Lit(_module.__default.zeros($LS($LS($LZ)))))
         && 
        $Unbox(_module.IList.head(Lit(_module.__default.Append(TInt, 
                  $LS($LS($LZ)), 
                  Lit(_module.__default.zeros($LS($LS($LZ)))), 
                  Lit(_module.__default.ones($LS($LS($LZ)))))))): int
           == $Unbox(_module.IList.head(Lit(_module.__default.zeros($LS($LS($LZ)))))): int
         && $PrefixEq#_module.IList(TInt, 
          TInt, 
          ORD#Minus(_k#0, ORD#FromNat(1)), 
          $LS($LS($LZ)), 
          _module.IList.tail(Lit(_module.__default.Append(TInt, 
                $LS($LS($LZ)), 
                Lit(_module.__default.zeros($LS($LS($LZ)))), 
                Lit(_module.__default.ones($LS($LS($LZ))))))), 
          _module.IList.tail(Lit(_module.__default.zeros($LS($LS($LZ)))))));
  ensures {:id "id115"} $PrefixEq#_module.IList(TInt, 
      TInt, 
      _k#0, 
      $LS($LS($LZ)), 
      Lit(_module.__default.Append(TInt, 
          $LS($LZ), 
          Lit(_module.__default.zeros($LS($LZ))), 
          Lit(_module.__default.ones($LS($LZ))))), 
      Lit(_module.__default.zeros($LS($LZ))))
     || 
    (0 < ORD#Offset(_k#0)
       ==> (_module.IList.Nil_q(Lit(_module.__default.Append(TInt, 
                $LS($LS($LZ)), 
                Lit(_module.__default.zeros($LS($LS($LZ)))), 
                Lit(_module.__default.ones($LS($LS($LZ)))))))
           ==> _module.IList.Nil_q(Lit(_module.__default.zeros($LS($LS($LZ))))))
         && (_module.IList.ICons_q(Lit(_module.__default.Append(TInt, 
                $LS($LS($LZ)), 
                Lit(_module.__default.zeros($LS($LS($LZ)))), 
                Lit(_module.__default.ones($LS($LS($LZ)))))))
           ==> _module.IList.ICons_q(Lit(_module.__default.zeros($LS($LS($LZ)))))
             && 
            $Unbox(_module.IList.head(Lit(_module.__default.Append(TInt, 
                      $LS($LS($LZ)), 
                      Lit(_module.__default.zeros($LS($LS($LZ)))), 
                      Lit(_module.__default.ones($LS($LS($LZ)))))))): int
               == $Unbox(_module.IList.head(Lit(_module.__default.zeros($LS($LS($LZ)))))): int
             && $PrefixEq#_module.IList(TInt, 
              TInt, 
              ORD#Minus(_k#0, ORD#FromNat(1)), 
              $LS($LS($LZ)), 
              _module.IList.tail(Lit(_module.__default.Append(TInt, 
                    $LS($LS($LZ)), 
                    Lit(_module.__default.zeros($LS($LS($LZ)))), 
                    Lit(_module.__default.ones($LS($LS($LZ))))))), 
              _module.IList.tail(Lit(_module.__default.zeros($LS($LS($LZ))))))))
     || (_k#0 != ORD#FromNat(0) && ORD#IsLimit(_k#0)
       ==> $Eq#_module.IList(TInt, 
        TInt, 
        $LS($LS($LZ)), 
        Lit(_module.__default.Append(TInt, 
            $LS($LZ), 
            Lit(_module.__default.zeros($LS($LZ))), 
            Lit(_module.__default.ones($LS($LZ))))), 
        Lit(_module.__default.zeros($LS($LZ)))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ZerosAndOnes_Theorem1# (correctness)"} Impl$$_module.__default.ZerosAndOnes__Theorem1_h(_k#0: Box) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: ZerosAndOnes_Theorem1#, Impl$$_module.__default.ZerosAndOnes__Theorem1_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box :: 
      { $PrefixEq#_module.IList(TInt, 
          TInt, 
          $ih#_k0#0, 
          $LS($LS($LZ)), 
          Lit(_module.__default.Append(TInt, 
              $LS($LZ), 
              Lit(_module.__default.zeros($LS($LZ))), 
              Lit(_module.__default.ones($LS($LZ))))), 
          Lit(_module.__default.zeros($LS($LZ)))) } 
      Lit(true) && ORD#Less($ih#_k0#0, _k#0)
         ==> $PrefixEq#_module.IList(TInt, 
          TInt, 
          $ih#_k0#0, 
          $LS($LS($LZ)), 
          Lit(_module.__default.Append(TInt, 
              $LS($LZ), 
              Lit(_module.__default.zeros($LS($LZ))), 
              Lit(_module.__default.ones($LS($LZ))))), 
          Lit(_module.__default.zeros($LS($LZ)))));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/SimpleCoinduction.dfy(126,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/SimpleCoinduction.dfy(126,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#0: Box :: 
          { $PrefixEq#_module.IList(TInt, 
              TInt, 
              _k'#0, 
              $LS($LS($LZ)), 
              _module.__default.Append(TInt, 
                $LS($LZ), 
                _module.__default.zeros($LS($LZ)), 
                _module.__default.ones($LS($LZ))), 
              _module.__default.zeros($LS($LZ))) } 
            { ORD#Less(_k'#0, _k#0) } 
          ORD#Less(_k'#0, _k#0)
             ==> $PrefixEq#_module.IList(TInt, 
              TInt, 
              _k'#0, 
              $LS($LS($LZ)), 
              Lit(_module.__default.Append(TInt, 
                  $LS($LZ), 
                  Lit(_module.__default.zeros($LS($LZ))), 
                  Lit(_module.__default.ones($LS($LZ))))), 
              Lit(_module.__default.zeros($LS($LZ)))));
    }
}



// Constructor function declaration
function #_module.Stream.Cons(Box, DatatypeType) : DatatypeType;

const unique ##_module.Stream.Cons: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: Box, a#0#1#0: DatatypeType :: 
  { #_module.Stream.Cons(a#0#0#0, a#0#1#0) } 
  DatatypeCtorId(#_module.Stream.Cons(a#0#0#0, a#0#1#0)) == ##_module.Stream.Cons);
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
     ==> (exists a#1#0#0: Box, a#1#1#0: DatatypeType :: 
      d == #_module.Stream.Cons(a#1#0#0, a#1#1#0)));

// Constructor $Is
axiom (forall _module.Stream$T: Ty, a#2#0#0: Box, a#2#1#0: DatatypeType :: 
  { $Is(#_module.Stream.Cons(a#2#0#0, a#2#1#0), Tclass._module.Stream(_module.Stream$T)) } 
  $Is(#_module.Stream.Cons(a#2#0#0, a#2#1#0), Tclass._module.Stream(_module.Stream$T))
     <==> $IsBox(a#2#0#0, _module.Stream$T)
       && $Is(a#2#1#0, Tclass._module.Stream(_module.Stream$T)));

// Constructor $IsAlloc
axiom (forall _module.Stream$T: Ty, a#2#0#0: Box, a#2#1#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#_module.Stream.Cons(a#2#0#0, a#2#1#0), 
      Tclass._module.Stream(_module.Stream$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.Stream.Cons(a#2#0#0, a#2#1#0), 
        Tclass._module.Stream(_module.Stream$T), 
        $h)
       <==> $IsAllocBox(a#2#0#0, _module.Stream$T, $h)
         && $IsAlloc(a#2#1#0, Tclass._module.Stream(_module.Stream$T), $h)));

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
axiom (forall a#3#0#0: Box, a#3#1#0: DatatypeType :: 
  { #_module.Stream.Cons(a#3#0#0, a#3#1#0) } 
  _module.Stream.head(#_module.Stream.Cons(a#3#0#0, a#3#1#0)) == a#3#0#0);

function _module.Stream.tail(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#4#0#0: Box, a#4#1#0: DatatypeType :: 
  { #_module.Stream.Cons(a#4#0#0, a#4#1#0) } 
  _module.Stream.tail(#_module.Stream.Cons(a#4#0#0, a#4#1#0)) == a#4#1#0);

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

// Constructor function declaration
function #_module.IList.Nil() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.IList.Nil()) == ##_module.IList.Nil;
}

const unique ##_module.IList.Nil: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.IList.Nil()) == ##_module.IList.Nil;
}

function _module.IList.Nil_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.IList.Nil_q(d) } 
  _module.IList.Nil_q(d) <==> DatatypeCtorId(d) == ##_module.IList.Nil);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.IList.Nil_q(d) } 
  _module.IList.Nil_q(d) ==> d == #_module.IList.Nil());

// Constructor $Is
axiom (forall _module.IList$T: Ty :: 
  { $Is(#_module.IList.Nil(), Tclass._module.IList(_module.IList$T)) } 
  $Is(#_module.IList.Nil(), Tclass._module.IList(_module.IList$T)));

// Constructor $IsAlloc
axiom (forall _module.IList$T: Ty, $h: Heap :: 
  { $IsAlloc(#_module.IList.Nil(), Tclass._module.IList(_module.IList$T), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#_module.IList.Nil(), Tclass._module.IList(_module.IList$T), $h));

// Constructor function declaration
function #_module.IList.ICons(Box, DatatypeType) : DatatypeType;

const unique ##_module.IList.ICons: DtCtorId
uses {
// Constructor identifier
axiom (forall a#8#0#0: Box, a#8#1#0: DatatypeType :: 
  { #_module.IList.ICons(a#8#0#0, a#8#1#0) } 
  DatatypeCtorId(#_module.IList.ICons(a#8#0#0, a#8#1#0)) == ##_module.IList.ICons);
}

function _module.IList.ICons_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.IList.ICons_q(d) } 
  _module.IList.ICons_q(d) <==> DatatypeCtorId(d) == ##_module.IList.ICons);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.IList.ICons_q(d) } 
  _module.IList.ICons_q(d)
     ==> (exists a#9#0#0: Box, a#9#1#0: DatatypeType :: 
      d == #_module.IList.ICons(a#9#0#0, a#9#1#0)));

// Constructor $Is
axiom (forall _module.IList$T: Ty, a#10#0#0: Box, a#10#1#0: DatatypeType :: 
  { $Is(#_module.IList.ICons(a#10#0#0, a#10#1#0), Tclass._module.IList(_module.IList$T)) } 
  $Is(#_module.IList.ICons(a#10#0#0, a#10#1#0), Tclass._module.IList(_module.IList$T))
     <==> $IsBox(a#10#0#0, _module.IList$T)
       && $Is(a#10#1#0, Tclass._module.IList(_module.IList$T)));

// Constructor $IsAlloc
axiom (forall _module.IList$T: Ty, a#10#0#0: Box, a#10#1#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#_module.IList.ICons(a#10#0#0, a#10#1#0), 
      Tclass._module.IList(_module.IList$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.IList.ICons(a#10#0#0, a#10#1#0), 
        Tclass._module.IList(_module.IList$T), 
        $h)
       <==> $IsAllocBox(a#10#0#0, _module.IList$T, $h)
         && $IsAlloc(a#10#1#0, Tclass._module.IList(_module.IList$T), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.IList$T: Ty, $h: Heap :: 
  { $IsAllocBox(_module.IList.head(d), _module.IList$T, $h) } 
  $IsGoodHeap($h)
       && 
      _module.IList.ICons_q(d)
       && $IsAlloc(d, Tclass._module.IList(_module.IList$T), $h)
     ==> $IsAllocBox(_module.IList.head(d), _module.IList$T, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.IList$T: Ty, $h: Heap :: 
  { $IsAlloc(_module.IList.tail(d), Tclass._module.IList(_module.IList$T), $h) } 
  $IsGoodHeap($h)
       && 
      _module.IList.ICons_q(d)
       && $IsAlloc(d, Tclass._module.IList(_module.IList$T), $h)
     ==> $IsAlloc(_module.IList.tail(d), Tclass._module.IList(_module.IList$T), $h));

function _module.IList.head(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#11#0#0: Box, a#11#1#0: DatatypeType :: 
  { #_module.IList.ICons(a#11#0#0, a#11#1#0) } 
  _module.IList.head(#_module.IList.ICons(a#11#0#0, a#11#1#0)) == a#11#0#0);

function _module.IList.tail(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#12#0#0: Box, a#12#1#0: DatatypeType :: 
  { #_module.IList.ICons(a#12#0#0, a#12#1#0) } 
  _module.IList.tail(#_module.IList.ICons(a#12#0#0, a#12#1#0)) == a#12#1#0);

// Depth-one case-split function
function $IsA#_module.IList(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.IList(d) } 
  $IsA#_module.IList(d) ==> _module.IList.Nil_q(d) || _module.IList.ICons_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.IList$T: Ty, d: DatatypeType :: 
  { _module.IList.ICons_q(d), $Is(d, Tclass._module.IList(_module.IList$T)) } 
    { _module.IList.Nil_q(d), $Is(d, Tclass._module.IList(_module.IList$T)) } 
  $Is(d, Tclass._module.IList(_module.IList$T))
     ==> _module.IList.Nil_q(d) || _module.IList.ICons_q(d));

function $Eq#_module.IList(Ty, Ty, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall _module.IList$T#l: Ty, 
    _module.IList$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.IList(_module.IList$T#l, _module.IList$T#r, $LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.IList(_module.IList$T#l))
       && $Is(d1, Tclass._module.IList(_module.IList$T#r))
     ==> ($Eq#_module.IList(_module.IList$T#l, _module.IList$T#r, $LS(ly), d0, d1)
       <==> (_module.IList.Nil_q(d0) && _module.IList.Nil_q(d1))
         || (
          _module.IList.ICons_q(d0)
           && _module.IList.ICons_q(d1)
           && (_module.IList.ICons_q(d0) && _module.IList.ICons_q(d1)
             ==> _module.IList.head(d0) == _module.IList.head(d1)
               && $Eq#_module.IList(_module.IList$T#l, 
                _module.IList$T#r, 
                ly, 
                _module.IList.tail(d0), 
                _module.IList.tail(d1))))));

// Unbump layer co-equality axiom
axiom (forall _module.IList$T#l: Ty, 
    _module.IList$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.IList(_module.IList$T#l, _module.IList$T#r, $LS(ly), d0, d1) } 
  $Eq#_module.IList(_module.IList$T#l, _module.IList$T#r, $LS(ly), d0, d1)
     <==> $Eq#_module.IList(_module.IList$T#l, _module.IList$T#r, ly, d0, d1));

// Equality for codatatypes
axiom (forall _module.IList$T#l: Ty, 
    _module.IList$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.IList(_module.IList$T#l, _module.IList$T#r, $LS(ly), d0, d1) } 
  $Eq#_module.IList(_module.IList$T#l, _module.IList$T#r, $LS(ly), d0, d1)
     <==> d0 == d1);

function $PrefixEq#_module.IList(Ty, Ty, Box, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall _module.IList$T#l: Ty, 
    _module.IList$T#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.IList(_module.IList$T#l, _module.IList$T#r, k, $LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.IList(_module.IList$T#l))
       && $Is(d1, Tclass._module.IList(_module.IList$T#r))
     ==> ($PrefixEq#_module.IList(_module.IList$T#l, _module.IList$T#r, k, $LS(ly), d0, d1)
       <==> (0 < ORD#Offset(k)
           ==> (_module.IList.Nil_q(d0) && _module.IList.Nil_q(d1))
             || (
              _module.IList.ICons_q(d0)
               && _module.IList.ICons_q(d1)
               && (_module.IList.ICons_q(d0) && _module.IList.ICons_q(d1)
                 ==> _module.IList.head(d0) == _module.IList.head(d1)
                   && $PrefixEq#_module.IList(_module.IList$T#l, 
                    _module.IList$T#r, 
                    ORD#Minus(k, ORD#FromNat(1)), 
                    ly, 
                    _module.IList.tail(d0), 
                    _module.IList.tail(d1)))))
         && (k != ORD#FromNat(0) && ORD#IsLimit(k)
           ==> $Eq#_module.IList(_module.IList$T#l, _module.IList$T#r, ly, d0, d1))));

// Unbump layer co-equality axiom
axiom (forall _module.IList$T#l: Ty, 
    _module.IList$T#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.IList(_module.IList$T#l, _module.IList$T#r, k, $LS(ly), d0, d1) } 
  k != ORD#FromNat(0)
     ==> ($PrefixEq#_module.IList(_module.IList$T#l, _module.IList$T#r, k, $LS(ly), d0, d1)
       <==> $PrefixEq#_module.IList(_module.IList$T#l, _module.IList$T#r, k, ly, d0, d1)));

// Coequality and prefix equality connection
axiom (forall _module.IList$T#l: Ty, 
    _module.IList$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.IList(_module.IList$T#l, _module.IList$T#r, $LS(ly), d0, d1) } 
  $Eq#_module.IList(_module.IList$T#l, _module.IList$T#r, $LS(ly), d0, d1)
     <==> (forall k: Box :: 
      { $PrefixEq#_module.IList(_module.IList$T#l, _module.IList$T#r, k, $LS(ly), d0, d1) } 
      $PrefixEq#_module.IList(_module.IList$T#l, _module.IList$T#r, k, $LS(ly), d0, d1)));

// Coequality and prefix equality connection
axiom (forall _module.IList$T#l: Ty, 
    _module.IList$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.IList(_module.IList$T#l, _module.IList$T#r, $LS(ly), d0, d1) } 
  (forall k: int :: 
      { $PrefixEq#_module.IList(_module.IList$T#l, _module.IList$T#r, ORD#FromNat(k), $LS(ly), d0, d1) } 
      0 <= k
         ==> $PrefixEq#_module.IList(_module.IList$T#l, _module.IList$T#r, ORD#FromNat(k), $LS(ly), d0, d1))
     ==> $Eq#_module.IList(_module.IList$T#l, _module.IList$T#r, $LS(ly), d0, d1));

// Prefix equality consequence
axiom (forall _module.IList$T#l: Ty, 
    _module.IList$T#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType, 
    m: Box :: 
  { $PrefixEq#_module.IList(_module.IList$T#l, _module.IList$T#r, k, $LS(ly), d0, d1), $PrefixEq#_module.IList(_module.IList$T#l, _module.IList$T#r, m, $LS(ly), d0, d1) } 
  ORD#Less(k, m)
       && $PrefixEq#_module.IList(_module.IList$T#l, _module.IList$T#r, m, $LS(ly), d0, d1)
     ==> $PrefixEq#_module.IList(_module.IList$T#l, _module.IList$T#r, k, $LS(ly), d0, d1));

// Prefix equality shortcut
axiom (forall _module.IList$T#l: Ty, 
    _module.IList$T#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.IList(_module.IList$T#l, _module.IList$T#r, k, $LS(ly), d0, d1) } 
  d0 == d1
     ==> $PrefixEq#_module.IList(_module.IList$T#l, _module.IList$T#r, k, $LS(ly), d0, d1));

const unique class._module.IList: ClassName;

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

const unique tytagFamily$IList: TyTagFamily;
