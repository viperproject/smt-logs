// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc-@PROC@.smt2 /normalizeNames:0 /emitDebugInformation:1 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy

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

// function declaration for _module._default.BigStep
function _module.__default.BigStep($ly: LayerType, c#0: DatatypeType, s#0: int, t#0: int) : bool
uses {
// definition axiom for _module.__default.BigStep (revealed)
axiom {:id "id0"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, c#0: DatatypeType, s#0: int, t#0: int :: 
    { _module.__default.BigStep($LS($ly), c#0, s#0, t#0) } 
    _module.__default.BigStep#canCall(c#0, s#0, t#0)
         || (1 < $FunctionContextHeight && $Is(c#0, Tclass._module.cmd()))
       ==> (!_module.cmd.Inc_q(c#0)
           ==> (_module.cmd.Seq_q(c#0)
               ==> (var c1#1 := _module.cmd._h1(c#0); 
                (var c0#1 := _module.cmd._h0(c#0); 
                  (forall s'#2: int :: 
                    { _module.__default.BigStep($ly, c1#1, s'#2, t#0) } 
                      { _module.__default.BigStep($ly, c0#1, s#0, s'#2) } 
                    _module.__default.BigStep#canCall(c0#1, s#0, s'#2)
                       && (_module.__default.BigStep($ly, c0#1, s#0, s'#2)
                         ==> _module.__default.BigStep#canCall(c1#1, s'#2, t#0))))))
             && (!_module.cmd.Seq_q(c#0)
               ==> (var body#1 := _module.cmd._h2(c#0); 
                s#0 != t#0
                   ==> (forall s'#3: int :: 
                    { _module.__default.BigStep($ly, c#0, s'#3, t#0) } 
                      { _module.__default.BigStep($ly, body#1, s#0, s'#3) } 
                    _module.__default.BigStep#canCall(body#1, s#0, s'#3)
                       && (_module.__default.BigStep($ly, body#1, s#0, s'#3)
                         ==> _module.__default.BigStep#canCall(c#0, s'#3, t#0))))))
         && _module.__default.BigStep($LS($ly), c#0, s#0, t#0)
           == (if _module.cmd.Inc_q(c#0)
             then t#0 == s#0 + 1
             else (if _module.cmd.Seq_q(c#0)
               then (var c1#0 := _module.cmd._h1(c#0); 
                (var c0#0 := _module.cmd._h0(c#0); 
                  (exists s'#0: int :: 
                    { _module.__default.BigStep($ly, c1#0, s'#0, t#0) } 
                      { _module.__default.BigStep($ly, c0#0, s#0, s'#0) } 
                    _module.__default.BigStep($ly, c0#0, s#0, s'#0)
                       && _module.__default.BigStep($ly, c1#0, s'#0, t#0))))
               else (var body#0 := _module.cmd._h2(c#0); 
                s#0 == t#0
                   || (exists s'#1: int :: 
                    { _module.__default.BigStep($ly, c#0, s'#1, t#0) } 
                      { _module.__default.BigStep($ly, body#0, s#0, s'#1) } 
                    _module.__default.BigStep($ly, body#0, s#0, s'#1)
                       && _module.__default.BigStep($ly, c#0, s'#1, t#0))))));
}

function _module.__default.BigStep#canCall(c#0: DatatypeType, s#0: int, t#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, c#0: DatatypeType, s#0: int, t#0: int :: 
  { _module.__default.BigStep($LS($ly), c#0, s#0, t#0) } 
  _module.__default.BigStep($LS($ly), c#0, s#0, t#0)
     == _module.__default.BigStep($ly, c#0, s#0, t#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, c#0: DatatypeType, s#0: int, t#0: int :: 
  { _module.__default.BigStep(AsFuelBottom($ly), c#0, s#0, t#0) } 
  _module.__default.BigStep($ly, c#0, s#0, t#0)
     == _module.__default.BigStep($LZ, c#0, s#0, t#0));

function Tclass._module.cmd() : Ty
uses {
// Tclass._module.cmd Tag
axiom Tag(Tclass._module.cmd()) == Tagclass._module.cmd
   && TagFamily(Tclass._module.cmd()) == tytagFamily$cmd;
}

const unique Tagclass._module.cmd: TyTag;

// Box/unbox axiom for Tclass._module.cmd
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.cmd()) } 
  $IsBox(bx, Tclass._module.cmd())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.cmd()));

function _module.__default.BigStep#requires(LayerType, DatatypeType, int, int) : bool;

// #requires axiom for _module.__default.BigStep
axiom (forall $ly: LayerType, c#0: DatatypeType, s#0: int, t#0: int :: 
  { _module.__default.BigStep#requires($ly, c#0, s#0, t#0) } 
  $Is(c#0, Tclass._module.cmd())
     ==> _module.__default.BigStep#requires($ly, c#0, s#0, t#0) == true);

// 1st prefix predicate axiom for _module.__default.BigStep_h
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, c#0: DatatypeType, s#0: int, t#0: int :: 
    { _module.__default.BigStep($LS($ly), c#0, s#0, t#0) } 
    $Is(c#0, Tclass._module.cmd())
         && _module.__default.BigStep($LS($ly), c#0, s#0, t#0)
       ==> (exists _k#0: Box :: 
        { _module.__default.BigStep_h($LS($ly), _k#0, c#0, s#0, t#0) } 
        _module.__default.BigStep_h($LS($ly), _k#0, c#0, s#0, t#0)));

// 2nd prefix predicate axiom
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, c#0: DatatypeType, s#0: int, t#0: int :: 
    { _module.__default.BigStep($LS($ly), c#0, s#0, t#0) } 
    $Is(c#0, Tclass._module.cmd())
         && (exists _k#0: Box :: 
          { _module.__default.BigStep_h($LS($ly), _k#0, c#0, s#0, t#0) } 
          _module.__default.BigStep_h($LS($ly), _k#0, c#0, s#0, t#0))
       ==> _module.__default.BigStep($LS($ly), c#0, s#0, t#0));

// 3rd prefix predicate axiom
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, c#0: DatatypeType, s#0: int, t#0: int, _k#0: Box :: 
    { _module.__default.BigStep_h($ly, _k#0, c#0, s#0, t#0) } 
    $Is(c#0, Tclass._module.cmd()) && _k#0 == ORD#FromNat(0)
       ==> !_module.__default.BigStep_h($ly, _k#0, c#0, s#0, t#0));

// targeted prefix predicate monotonicity axiom
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, 
      c#0: DatatypeType, 
      s#0: int, 
      t#0: int, 
      _k#0: Box, 
      _m: Box, 
      _limit: Box :: 
    { _module.__default.BigStep_h($ly, _k#0, c#0, s#0, t#0), ORD#LessThanLimit(_k#0, _limit), ORD#LessThanLimit(_m, _limit) } 
    ORD#Less(_k#0, _m)
       ==> 
      _module.__default.BigStep_h($ly, _k#0, c#0, s#0, t#0)
       ==> _module.__default.BigStep_h($ly, _m, c#0, s#0, t#0));

procedure {:verboseName "BigStep (well-formedness)"} CheckWellformed$$_module.__default.BigStep(c#0: DatatypeType where $Is(c#0, Tclass._module.cmd()), s#0: int, t#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.BigStep#
function _module.__default.BigStep_h($ly: LayerType, _k#0: Box, c#0: DatatypeType, s#0: int, t#0: int) : bool
uses {
// definition axiom for _module.__default.BigStep_h (revealed)
axiom {:id "id10"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, _k#0: Box, c#0: DatatypeType, s#0: int, t#0: int :: 
    { _module.__default.BigStep_h($LS($ly), _k#0, c#0, s#0, t#0) } 
    _module.__default.BigStep_h#canCall(_k#0, c#0, s#0, t#0)
         || (2 < $FunctionContextHeight && $Is(c#0, Tclass._module.cmd()))
       ==> (0 < ORD#Offset(_k#0)
           ==> 
          !_module.cmd.Inc_q(c#0)
           ==> (_module.cmd.Seq_q(c#0)
               ==> (var c1#3 := _module.cmd._h1(c#0); 
                (var c0#3 := _module.cmd._h0(c#0); 
                  (forall s'#10: int :: 
                    { _module.__default.BigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), c1#3, s'#10, t#0) } 
                      { _module.__default.BigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), c0#3, s#0, s'#10) } 
                    _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c0#3, s#0, s'#10)
                       && (_module.__default.BigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), c0#3, s#0, s'#10)
                         ==> _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c1#3, s'#10, t#0))))))
             && (!_module.cmd.Seq_q(c#0)
               ==> (var body#3 := _module.cmd._h2(c#0); 
                s#0 != t#0
                   ==> (forall s'#11: int :: 
                    { _module.__default.BigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), c#0, s'#11, t#0) } 
                      { _module.__default.BigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), body#3, s#0, s'#11) } 
                    _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), body#3, s#0, s'#11)
                       && (_module.__default.BigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), body#3, s#0, s'#11)
                         ==> _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c#0, s'#11, t#0))))))
         && (
          (0 < ORD#Offset(_k#0)
           ==> (if _module.cmd.Inc_q(c#0)
             then t#0 == s#0 + 1
             else (if _module.cmd.Seq_q(c#0)
               then (var c1#4 := _module.cmd._h1(c#0); 
                (var c0#4 := _module.cmd._h0(c#0); 
                  (exists s'#12: int :: 
                    { _module.__default.BigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), c1#4, s'#12, t#0) } 
                      { _module.__default.BigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), c0#4, s#0, s'#12) } 
                    _module.__default.BigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), c0#4, s#0, s'#12)
                       && _module.__default.BigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), c1#4, s'#12, t#0))))
               else (var body#4 := _module.cmd._h2(c#0); 
                s#0 == t#0
                   || (exists s'#13: int :: 
                    { _module.__default.BigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), c#0, s'#13, t#0) } 
                      { _module.__default.BigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), body#4, s#0, s'#13) } 
                    _module.__default.BigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), body#4, s#0, s'#13)
                       && _module.__default.BigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), c#0, s'#13, t#0))))))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#0: Box :: 
            { _module.__default.BigStep_h($ly, _k'#0, c#0, s#0, t#0) } 
            ORD#LessThanLimit(_k'#0, _k#0)
               ==> _module.__default.BigStep_h#canCall(_k'#0, c#0, s#0, t#0)))
         && _module.__default.BigStep_h($LS($ly), _k#0, c#0, s#0, t#0)
           == ((0 < ORD#Offset(_k#0)
               ==> (if _module.cmd.Inc_q(c#0)
                 then t#0 == s#0 + 1
                 else (if _module.cmd.Seq_q(c#0)
                   then (var c1#2 := _module.cmd._h1(c#0); 
                    (var c0#2 := _module.cmd._h0(c#0); 
                      (exists s'#8: int :: 
                        { _module.__default.BigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), c1#2, s'#8, t#0) } 
                          { _module.__default.BigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), c0#2, s#0, s'#8) } 
                        _module.__default.BigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), c0#2, s#0, s'#8)
                           && _module.__default.BigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), c1#2, s'#8, t#0))))
                   else (var body#2 := _module.cmd._h2(c#0); 
                    s#0 == t#0
                       || (exists s'#9: int :: 
                        { _module.__default.BigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), c#0, s'#9, t#0) } 
                          { _module.__default.BigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), body#2, s#0, s'#9) } 
                        _module.__default.BigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), body#2, s#0, s'#9)
                           && _module.__default.BigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), c#0, s'#9, t#0))))))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (exists _k'#0: Box :: 
                { _module.__default.BigStep_h($ly, _k'#0, c#0, s#0, t#0) } 
                ORD#LessThanLimit(_k'#0, _k#0)
                   && _module.__default.BigStep_h($ly, _k'#0, c#0, s#0, t#0)))));
// definition axiom for _module.__default.BigStep_h for decreasing-related literals (revealed)
axiom {:id "id11"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, _k#0: Box, c#0: DatatypeType, s#0: int, t#0: int :: 
    {:weight 3} { _module.__default.BigStep_h($LS($ly), Lit(_k#0), c#0, s#0, t#0) } 
    _module.__default.BigStep_h#canCall(Lit(_k#0), c#0, s#0, t#0)
         || (2 < $FunctionContextHeight && $Is(c#0, Tclass._module.cmd()))
       ==> (0 < ORD#Offset(_k#0)
           ==> 
          !_module.cmd.Inc_q(c#0)
           ==> (_module.cmd.Seq_q(c#0)
               ==> (var c1#6 := _module.cmd._h1(c#0); 
                (var c0#6 := _module.cmd._h0(c#0); 
                  (forall s'#16: int :: 
                    { _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c1#6, s'#16, t#0) } 
                      { _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c0#6, s#0, s'#16) } 
                    _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c0#6, s#0, s'#16)
                       && (_module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c0#6, s#0, s'#16)
                         ==> _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c1#6, s'#16, t#0))))))
             && (!_module.cmd.Seq_q(c#0)
               ==> (var body#6 := _module.cmd._h2(c#0); 
                s#0 != t#0
                   ==> (forall s'#17: int :: 
                    { _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c#0, s'#17, t#0) } 
                      { _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), body#6, s#0, s'#17) } 
                    _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), body#6, s#0, s'#17)
                       && (_module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), body#6, s#0, s'#17)
                         ==> _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c#0, s'#17, t#0))))))
         && (
          (0 < ORD#Offset(_k#0)
           ==> (if _module.cmd.Inc_q(c#0)
             then t#0 == s#0 + 1
             else (if _module.cmd.Seq_q(c#0)
               then (var c1#7 := _module.cmd._h1(c#0); 
                (var c0#7 := _module.cmd._h0(c#0); 
                  (exists s'#18: int :: 
                    { _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c1#7, s'#18, t#0) } 
                      { _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c0#7, s#0, s'#18) } 
                    _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c0#7, s#0, s'#18)
                       && _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c1#7, s'#18, t#0))))
               else (var body#7 := _module.cmd._h2(c#0); 
                s#0 == t#0
                   || (exists s'#19: int :: 
                    { _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c#0, s'#19, t#0) } 
                      { _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), body#7, s#0, s'#19) } 
                    _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), body#7, s#0, s'#19)
                       && _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c#0, s'#19, t#0))))))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#1: Box :: 
            { _module.__default.BigStep_h($LS($ly), _k'#1, c#0, s#0, t#0) } 
            ORD#LessThanLimit(_k'#1, _k#0)
               ==> _module.__default.BigStep_h#canCall(_k'#1, c#0, s#0, t#0)))
         && _module.__default.BigStep_h($LS($ly), Lit(_k#0), c#0, s#0, t#0)
           == ((0 < ORD#Offset(_k#0)
               ==> (if _module.cmd.Inc_q(c#0)
                 then t#0 == s#0 + 1
                 else (if _module.cmd.Seq_q(c#0)
                   then (var c1#5 := _module.cmd._h1(c#0); 
                    (var c0#5 := _module.cmd._h0(c#0); 
                      (exists s'#14: int :: 
                        { _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c1#5, s'#14, t#0) } 
                          { _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c0#5, s#0, s'#14) } 
                        _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c0#5, s#0, s'#14)
                           && _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c1#5, s'#14, t#0))))
                   else (var body#5 := _module.cmd._h2(c#0); 
                    s#0 == t#0
                       || (exists s'#15: int :: 
                        { _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c#0, s'#15, t#0) } 
                          { _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), body#5, s#0, s'#15) } 
                        _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), body#5, s#0, s'#15)
                           && _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c#0, s'#15, t#0))))))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (exists _k'#1: Box :: 
                { _module.__default.BigStep_h($LS($ly), _k'#1, c#0, s#0, t#0) } 
                ORD#LessThanLimit(_k'#1, _k#0)
                   && _module.__default.BigStep_h($LS($ly), _k'#1, c#0, s#0, t#0)))));
// definition axiom for _module.__default.BigStep_h for all literals (revealed)
axiom {:id "id12"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, _k#0: Box, c#0: DatatypeType, s#0: int, t#0: int :: 
    {:weight 3} { _module.__default.BigStep_h($LS($ly), Lit(_k#0), Lit(c#0), LitInt(s#0), LitInt(t#0)) } 
    _module.__default.BigStep_h#canCall(Lit(_k#0), Lit(c#0), LitInt(s#0), LitInt(t#0))
         || (2 < $FunctionContextHeight && $Is(c#0, Tclass._module.cmd()))
       ==> (0 < ORD#Offset(_k#0)
           ==> 
          !Lit(_module.cmd.Inc_q(Lit(c#0)))
           ==> (Lit(_module.cmd.Seq_q(Lit(c#0)))
               ==> (var c1#9 := Lit(_module.cmd._h1(Lit(c#0))); 
                (var c0#9 := Lit(_module.cmd._h0(Lit(c#0))); 
                  (forall s'#22: int :: 
                    { _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c1#9, s'#22, t#0) } 
                      { _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c0#9, s#0, s'#22) } 
                    _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c0#9, LitInt(s#0), s'#22)
                       && (_module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c0#9, LitInt(s#0), s'#22)
                         ==> _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c1#9, s'#22, LitInt(t#0)))))))
             && (!Lit(_module.cmd.Seq_q(Lit(c#0)))
               ==> (var body#9 := Lit(_module.cmd._h2(Lit(c#0))); 
                LitInt(s#0) != LitInt(t#0)
                   ==> (forall s'#23: int :: 
                    { _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c#0, s'#23, t#0) } 
                      { _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), body#9, s#0, s'#23) } 
                    _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), body#9, LitInt(s#0), s'#23)
                       && (_module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), body#9, LitInt(s#0), s'#23)
                         ==> _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), Lit(c#0), s'#23, LitInt(t#0)))))))
         && (
          (0 < ORD#Offset(_k#0)
           ==> (if _module.cmd.Inc_q(Lit(c#0))
             then LitInt(t#0) == LitInt(s#0 + 1)
             else (if _module.cmd.Seq_q(Lit(c#0))
               then (var c1#10 := Lit(_module.cmd._h1(Lit(c#0))); 
                (var c0#10 := Lit(_module.cmd._h0(Lit(c#0))); 
                  (exists s'#24: int :: 
                    { _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c1#10, s'#24, t#0) } 
                      { _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c0#10, s#0, s'#24) } 
                    _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c0#10, LitInt(s#0), s'#24)
                       && _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c1#10, s'#24, LitInt(t#0)))))
               else (var body#10 := Lit(_module.cmd._h2(Lit(c#0))); 
                LitInt(s#0) == LitInt(t#0)
                   || (exists s'#25: int :: 
                    { _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c#0, s'#25, t#0) } 
                      { _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), body#10, s#0, s'#25) } 
                    _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), body#10, LitInt(s#0), s'#25)
                       && _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), Lit(c#0), s'#25, LitInt(t#0)))))))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#2: Box :: 
            { _module.__default.BigStep_h($LS($ly), _k'#2, c#0, s#0, t#0) } 
            ORD#LessThanLimit(_k'#2, _k#0)
               ==> _module.__default.BigStep_h#canCall(_k'#2, c#0, s#0, t#0)))
         && _module.__default.BigStep_h($LS($ly), Lit(_k#0), Lit(c#0), LitInt(s#0), LitInt(t#0))
           == ((0 < ORD#Offset(_k#0)
               ==> (if _module.cmd.Inc_q(Lit(c#0))
                 then LitInt(t#0) == LitInt(s#0 + 1)
                 else (if _module.cmd.Seq_q(Lit(c#0))
                   then (var c1#8 := Lit(_module.cmd._h1(Lit(c#0))); 
                    (var c0#8 := Lit(_module.cmd._h0(Lit(c#0))); 
                      (exists s'#20: int :: 
                        { _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c1#8, s'#20, t#0) } 
                          { _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c0#8, s#0, s'#20) } 
                        _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c0#8, LitInt(s#0), s'#20)
                           && _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c1#8, s'#20, LitInt(t#0)))))
                   else (var body#8 := Lit(_module.cmd._h2(Lit(c#0))); 
                    LitInt(s#0) == LitInt(t#0)
                       || (exists s'#21: int :: 
                        { _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c#0, s'#21, t#0) } 
                          { _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), body#8, s#0, s'#21) } 
                        _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), body#8, LitInt(s#0), s'#21)
                           && _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), Lit(c#0), s'#21, LitInt(t#0)))))))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (exists _k'#2: Box :: 
                { _module.__default.BigStep_h($LS($ly), _k'#2, c#0, s#0, t#0) } 
                ORD#LessThanLimit(_k'#2, _k#0)
                   && _module.__default.BigStep_h($LS($ly), _k'#2, c#0, s#0, t#0)))));
}

function _module.__default.BigStep_h#canCall(_k#0: Box, c#0: DatatypeType, s#0: int, t#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, _k#0: Box, c#0: DatatypeType, s#0: int, t#0: int :: 
  { _module.__default.BigStep_h($LS($ly), _k#0, c#0, s#0, t#0) } 
  _module.__default.BigStep_h($LS($ly), _k#0, c#0, s#0, t#0)
     == _module.__default.BigStep_h($ly, _k#0, c#0, s#0, t#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, _k#0: Box, c#0: DatatypeType, s#0: int, t#0: int :: 
  { _module.__default.BigStep_h(AsFuelBottom($ly), _k#0, c#0, s#0, t#0) } 
  _module.__default.BigStep_h($ly, _k#0, c#0, s#0, t#0)
     == _module.__default.BigStep_h($LZ, _k#0, c#0, s#0, t#0));

function _module.__default.BigStep_h#requires(LayerType, Box, DatatypeType, int, int) : bool;

// #requires axiom for _module.__default.BigStep_h
axiom (forall $ly: LayerType, _k#0: Box, c#0: DatatypeType, s#0: int, t#0: int :: 
  { _module.__default.BigStep_h#requires($ly, _k#0, c#0, s#0, t#0) } 
  $Is(c#0, Tclass._module.cmd())
     ==> _module.__default.BigStep_h#requires($ly, _k#0, c#0, s#0, t#0) == true);

procedure {:verboseName "Monotonic0 (well-formedness)"} CheckWellFormed$$_module.__default.Monotonic0(c#0: DatatypeType
       where $Is(c#0, Tclass._module.cmd())
         && $IsAlloc(c#0, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#0), 
    s#0: int, 
    t#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Monotonic0 (call)"} Call$$_module.__default.Monotonic0(c#0: DatatypeType
       where $Is(c#0, Tclass._module.cmd())
         && $IsAlloc(c#0, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#0), 
    s#0: int, 
    t#0: int);
  // user-defined preconditions
  requires {:id "id15"} _module.__default.BigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.BigStep($LS($LZ), c#0, s#0, t#0)
       || (_module.cmd.Inc_q(c#0) ==> t#0 == s#0 + 1);
  requires {:id "id16"} _module.__default.BigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.BigStep($LS($LZ), c#0, s#0, t#0)
       || (!_module.cmd.Inc_q(c#0)
         ==> 
        _module.cmd.Seq_q(c#0)
         ==> (var c1#0 := _module.cmd._h1(c#0); 
          (var c0#0 := _module.cmd._h0(c#0); 
            (exists s'#0: int :: 
              { _module.__default.BigStep($LS($LZ), c1#0, s'#0, t#0) } 
                { _module.__default.BigStep($LS($LZ), c0#0, s#0, s'#0) } 
              _module.__default.BigStep($LS($LZ), c0#0, s#0, s'#0)
                 && _module.__default.BigStep($LS($LZ), c1#0, s'#0, t#0)))));
  requires {:id "id17"} _module.__default.BigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.BigStep($LS($LZ), c#0, s#0, t#0)
       || (!_module.cmd.Inc_q(c#0)
         ==> 
        !_module.cmd.Seq_q(c#0)
         ==> (var body#0 := _module.cmd._h2(c#0); 
          s#0 == t#0
             || (exists s'#1: int :: 
              { _module.__default.BigStep($LS($LS($LZ)), c#0, s'#1, t#0) } 
                { _module.__default.BigStep($LS($LS($LZ)), body#0, s#0, s'#1) } 
              _module.__default.BigStep($LS($LS($LZ)), body#0, s#0, s'#1)
                 && _module.__default.BigStep($LS($LS($LZ)), c#0, s'#1, t#0))));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id18"} s#0 <= t#0;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Monotonic0# (co-call)"} CoCall$$_module.__default.Monotonic0_h(_k#0: Box, 
    c#1: DatatypeType
       where $Is(c#1, Tclass._module.cmd())
         && $IsAlloc(c#1, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#1), 
    s#1: int, 
    t#1: int);
  // user-defined preconditions
  requires {:id "id19"} _module.__default.BigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.BigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (0 < ORD#Offset(_k#0) ==> _module.cmd.Inc_q(c#1) ==> t#1 == s#1 + 1);
  requires {:id "id20"} _module.__default.BigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.BigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (0 < ORD#Offset(_k#0)
         ==> 
        !_module.cmd.Inc_q(c#1)
         ==> 
        _module.cmd.Seq_q(c#1)
         ==> (var c1#2 := _module.cmd._h1(c#1); 
          (var c0#2 := _module.cmd._h0(c#1); 
            (exists s'#4: int :: 
              { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#2, s'#4, t#1) } 
                { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#2, s#1, s'#4) } 
              _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#2, s#1, s'#4)
                 && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#2, s'#4, t#1)))));
  requires {:id "id21"} _module.__default.BigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.BigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (0 < ORD#Offset(_k#0)
         ==> 
        !_module.cmd.Inc_q(c#1)
         ==> 
        !_module.cmd.Seq_q(c#1)
         ==> (var body#2 := _module.cmd._h2(c#1); 
          s#1 == t#1
             || (exists s'#5: int :: 
              { _module.__default.BigStep_h($LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), c#1, s'#5, t#1) } 
                { _module.__default.BigStep_h($LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), body#2, s#1, s'#5) } 
              _module.__default.BigStep_h($LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), body#2, s#1, s'#5)
                 && _module.__default.BigStep_h($LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), c#1, s'#5, t#1))));
  requires {:id "id22"} _module.__default.BigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.BigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (LitInt(0) == ORD#Offset(_k#0)
         ==> (exists _k'#0: Box :: 
          { _module.__default.BigStep_h($LS($LZ), _k'#0, c#1, s#1, t#1) } 
          ORD#LessThanLimit(_k'#0, _k#0)
             && _module.__default.BigStep_h($LS($LZ), _k'#0, c#1, s#1, t#1)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id23"} s#1 <= t#1;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Monotonic0# (correctness)"} Impl$$_module.__default.Monotonic0_h(_k#0: Box, 
    c#1: DatatypeType
       where $Is(c#1, Tclass._module.cmd())
         && $IsAlloc(c#1, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#1), 
    s#1: int, 
    t#1: int)
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id24"} _module.__default.BigStep_h#canCall(_k#0, c#1, s#1, t#1)
     && 
    _module.__default.BigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
     && 
    (0 < ORD#Offset(_k#0)
       ==> (if _module.cmd.Inc_q(c#1)
         then t#1 == s#1 + 1
         else (if _module.cmd.Seq_q(c#1)
           then (var c1#5 := _module.cmd._h1(c#1); 
            (var c0#5 := _module.cmd._h0(c#1); 
              (exists s'#10: int :: 
                { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#5, s'#10, t#1) } 
                  { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#5, s#1, s'#10) } 
                _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#5, s#1, s'#10)
                   && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#5, s'#10, t#1))))
           else (var body#5 := _module.cmd._h2(c#1); 
            s#1 == t#1
               || (exists s'#11: int :: 
                { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c#1, s'#11, t#1) } 
                  { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), body#5, s#1, s'#11) } 
                _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), body#5, s#1, s'#11)
                   && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c#1, s'#11, t#1))))))
     && (LitInt(0) == ORD#Offset(_k#0)
       ==> (exists _k'#1: Box :: 
        { _module.__default.BigStep_h($LS($LZ), _k'#1, c#1, s#1, t#1) } 
        ORD#LessThanLimit(_k'#1, _k#0)
           && _module.__default.BigStep_h($LS($LZ), _k'#1, c#1, s#1, t#1)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id25"} s#1 <= t#1;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Monotonic0# (correctness)"} Impl$$_module.__default.Monotonic0_h(_k#0: Box, c#1: DatatypeType, s#1: int, t#1: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: Monotonic0#, Impl$$_module.__default.Monotonic0_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.cmd(c#1);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box, $ih#c0#0: DatatypeType, $ih#s0#0: int, $ih#t0#0: int :: 
      { _module.__default.BigStep_h($LS($LZ), $ih#_k0#0, $ih#c0#0, $ih#s0#0, $ih#t0#0) } 
      $Is($ih#c0#0, Tclass._module.cmd())
           && _module.__default.BigStep_h($LS($LZ), $ih#_k0#0, $ih#c0#0, $ih#s0#0, $ih#t0#0)
           && (ORD#Less($ih#_k0#0, _k#0)
             || ($ih#_k0#0 == _k#0
               && (DtRank($ih#c0#0) < DtRank(c#1)
                 || (DtRank($ih#c0#0) == DtRank(c#1)
                   && ((0 <= $ih#s0#0 && $ih#s0#0 < s#1)
                     || ($ih#s0#0 == s#1 && 0 <= $ih#t0#0 && $ih#t0#0 < t#1))))))
         ==> $ih#s0#0 <= $ih#t0#0);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(27,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(27,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#2: Box, c#2: DatatypeType, s#2: int, t#2: int :: 
          { _module.__default.BigStep_h($LS($LZ), _k'#2, c#2, s#2, t#2) } 
          $Is(c#2, Tclass._module.cmd())
               && 
              ORD#Less(_k'#2, _k#0)
               && _module.__default.BigStep_h($LS($LZ), _k'#2, c#2, s#2, t#2)
             ==> s#2 <= t#2);
    }
}



procedure {:verboseName "Monotonic1 (well-formedness)"} CheckWellFormed$$_module.__default.Monotonic1(c#0: DatatypeType
       where $Is(c#0, Tclass._module.cmd())
         && $IsAlloc(c#0, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#0), 
    s#0: int, 
    t#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Monotonic1 (call)"} Call$$_module.__default.Monotonic1(c#0: DatatypeType
       where $Is(c#0, Tclass._module.cmd())
         && $IsAlloc(c#0, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#0), 
    s#0: int, 
    t#0: int);
  // user-defined preconditions
  requires {:id "id28"} _module.__default.BigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.BigStep($LS($LZ), c#0, s#0, t#0)
       || (_module.cmd.Inc_q(c#0) ==> t#0 == s#0 + 1);
  requires {:id "id29"} _module.__default.BigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.BigStep($LS($LZ), c#0, s#0, t#0)
       || (!_module.cmd.Inc_q(c#0)
         ==> 
        _module.cmd.Seq_q(c#0)
         ==> (var c1#0 := _module.cmd._h1(c#0); 
          (var c0#0 := _module.cmd._h0(c#0); 
            (exists s'#0: int :: 
              { _module.__default.BigStep($LS($LZ), c1#0, s'#0, t#0) } 
                { _module.__default.BigStep($LS($LZ), c0#0, s#0, s'#0) } 
              _module.__default.BigStep($LS($LZ), c0#0, s#0, s'#0)
                 && _module.__default.BigStep($LS($LZ), c1#0, s'#0, t#0)))));
  requires {:id "id30"} _module.__default.BigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.BigStep($LS($LZ), c#0, s#0, t#0)
       || (!_module.cmd.Inc_q(c#0)
         ==> 
        !_module.cmd.Seq_q(c#0)
         ==> (var body#0 := _module.cmd._h2(c#0); 
          s#0 == t#0
             || (exists s'#1: int :: 
              { _module.__default.BigStep($LS($LS($LZ)), c#0, s'#1, t#0) } 
                { _module.__default.BigStep($LS($LS($LZ)), body#0, s#0, s'#1) } 
              _module.__default.BigStep($LS($LS($LZ)), body#0, s#0, s'#1)
                 && _module.__default.BigStep($LS($LS($LZ)), c#0, s'#1, t#0))));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id31"} s#0 <= t#0;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Monotonic1# (co-call)"} CoCall$$_module.__default.Monotonic1_h(_k#0: Box, 
    c#1: DatatypeType
       where $Is(c#1, Tclass._module.cmd())
         && $IsAlloc(c#1, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#1), 
    s#1: int, 
    t#1: int);
  // user-defined preconditions
  requires {:id "id32"} _module.__default.BigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.BigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (0 < ORD#Offset(_k#0) ==> _module.cmd.Inc_q(c#1) ==> t#1 == s#1 + 1);
  requires {:id "id33"} _module.__default.BigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.BigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (0 < ORD#Offset(_k#0)
         ==> 
        !_module.cmd.Inc_q(c#1)
         ==> 
        _module.cmd.Seq_q(c#1)
         ==> (var c1#2 := _module.cmd._h1(c#1); 
          (var c0#2 := _module.cmd._h0(c#1); 
            (exists s'#4: int :: 
              { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#2, s'#4, t#1) } 
                { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#2, s#1, s'#4) } 
              _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#2, s#1, s'#4)
                 && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#2, s'#4, t#1)))));
  requires {:id "id34"} _module.__default.BigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.BigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (0 < ORD#Offset(_k#0)
         ==> 
        !_module.cmd.Inc_q(c#1)
         ==> 
        !_module.cmd.Seq_q(c#1)
         ==> (var body#2 := _module.cmd._h2(c#1); 
          s#1 == t#1
             || (exists s'#5: int :: 
              { _module.__default.BigStep_h($LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), c#1, s'#5, t#1) } 
                { _module.__default.BigStep_h($LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), body#2, s#1, s'#5) } 
              _module.__default.BigStep_h($LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), body#2, s#1, s'#5)
                 && _module.__default.BigStep_h($LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), c#1, s'#5, t#1))));
  requires {:id "id35"} _module.__default.BigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.BigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (LitInt(0) == ORD#Offset(_k#0)
         ==> (exists _k'#0: Box :: 
          { _module.__default.BigStep_h($LS($LZ), _k'#0, c#1, s#1, t#1) } 
          ORD#LessThanLimit(_k'#0, _k#0)
             && _module.__default.BigStep_h($LS($LZ), _k'#0, c#1, s#1, t#1)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id36"} s#1 <= t#1;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Monotonic1# (correctness)"} Impl$$_module.__default.Monotonic1_h(_k#0: Box, 
    c#1: DatatypeType
       where $Is(c#1, Tclass._module.cmd())
         && $IsAlloc(c#1, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#1), 
    s#1: int, 
    t#1: int)
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id37"} _module.__default.BigStep_h#canCall(_k#0, c#1, s#1, t#1)
     && 
    _module.__default.BigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
     && 
    (0 < ORD#Offset(_k#0)
       ==> (if _module.cmd.Inc_q(c#1)
         then t#1 == s#1 + 1
         else (if _module.cmd.Seq_q(c#1)
           then (var c1#5 := _module.cmd._h1(c#1); 
            (var c0#5 := _module.cmd._h0(c#1); 
              (exists s'#10: int :: 
                { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#5, s'#10, t#1) } 
                  { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#5, s#1, s'#10) } 
                _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#5, s#1, s'#10)
                   && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#5, s'#10, t#1))))
           else (var body#5 := _module.cmd._h2(c#1); 
            s#1 == t#1
               || (exists s'#11: int :: 
                { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c#1, s'#11, t#1) } 
                  { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), body#5, s#1, s'#11) } 
                _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), body#5, s#1, s'#11)
                   && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c#1, s'#11, t#1))))))
     && (LitInt(0) == ORD#Offset(_k#0)
       ==> (exists _k'#1: Box :: 
        { _module.__default.BigStep_h($LS($LZ), _k'#1, c#1, s#1, t#1) } 
        ORD#LessThanLimit(_k'#1, _k#0)
           && _module.__default.BigStep_h($LS($LZ), _k'#1, c#1, s#1, t#1)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id38"} s#1 <= t#1;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Monotonic1# (correctness)"} Impl$$_module.__default.Monotonic1_h(_k#0: Box, c#1: DatatypeType, s#1: int, t#1: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var _mcc#2#0: DatatypeType;
  var body#6: DatatypeType;
  var let#0_0_0#0#0: DatatypeType;
  var s'#12: int;
  var s'#13: int;
  var ##_k#0: Box;
  var ##c#1: DatatypeType;
  var ##s#1: int;
  var ##t#1: int;
  var ##_k#1: Box;
  var ##c#2: DatatypeType;
  var ##s#2: int;
  var ##t#2: int;
  var _k##0: Box;
  var c##0: DatatypeType;
  var s##0: int;
  var t##0: int;
  var _k##1: Box;
  var c##1: DatatypeType;
  var s##1: int;
  var t##1: int;
  var _mcc#0#0: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var c1#6: DatatypeType;
  var let#0_1_0#0#0: DatatypeType;
  var c0#6: DatatypeType;
  var let#0_1_1#0#0: DatatypeType;
  var s'#14: int;
  var s'#15: int;
  var ##_k#2: Box;
  var ##c#3: DatatypeType;
  var ##s#3: int;
  var ##t#3: int;
  var ##_k#3: Box;
  var ##c#4: DatatypeType;
  var ##s#4: int;
  var ##t#4: int;
  var _k##2: Box;
  var c##2: DatatypeType;
  var s##2: int;
  var t##2: int;
  var _k##3: Box;
  var c##3: DatatypeType;
  var s##3: int;
  var t##3: int;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: Monotonic1#, Impl$$_module.__default.Monotonic1_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.cmd(c#1);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box, $ih#c0#0: DatatypeType, $ih#s0#0: int, $ih#t0#0: int :: 
      { _module.__default.BigStep_h($LS($LZ), $ih#_k0#0, $ih#c0#0, $ih#s0#0, $ih#t0#0) } 
      $Is($ih#c0#0, Tclass._module.cmd())
           && _module.__default.BigStep_h($LS($LZ), $ih#_k0#0, $ih#c0#0, $ih#s0#0, $ih#t0#0)
           && (ORD#Less($ih#_k0#0, _k#0)
             || ($ih#_k0#0 == _k#0
               && (DtRank($ih#c0#0) < DtRank(c#1)
                 || (DtRank($ih#c0#0) == DtRank(c#1)
                   && ((0 <= $ih#s0#0 && $ih#s0#0 < s#1)
                     || ($ih#s0#0 == s#1 && 0 <= $ih#t0#0 && $ih#t0#0 < t#1))))))
         ==> $ih#s0#0 <= $ih#t0#0);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(35,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
        assume true;
        havoc _mcc#2#0;
        havoc _mcc#0#0, _mcc#1#0;
        if (c#1 == #_module.cmd.Inc())
        {
        }
        else if (c#1 == #_module.cmd.Seq(_mcc#0#0, _mcc#1#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.cmd())
               && $IsAlloc(_mcc#0#0, Tclass._module.cmd(), $Heap);
            assume $Is(_mcc#1#0, Tclass._module.cmd())
               && $IsAlloc(_mcc#1#0, Tclass._module.cmd(), $Heap);
            havoc c1#6;
            assume $Is(c1#6, Tclass._module.cmd()) && $IsAlloc(c1#6, Tclass._module.cmd(), $Heap);
            assume {:id "id53"} let#0_1_0#0#0 == _mcc#1#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_1_0#0#0, Tclass._module.cmd());
            assume {:id "id54"} c1#6 == let#0_1_0#0#0;
            havoc c0#6;
            assume $Is(c0#6, Tclass._module.cmd()) && $IsAlloc(c0#6, Tclass._module.cmd(), $Heap);
            assume {:id "id55"} let#0_1_1#0#0 == _mcc#0#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_1_1#0#0, Tclass._module.cmd());
            assume {:id "id56"} c0#6 == let#0_1_1#0#0;
            // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(39,12)
            havoc s'#15;
            if (true)
            {
                assert {:id "id57"} ORD#IsNat(Lit(ORD#FromNat(1)));
                assert {:id "id58"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                ##_k#2 := ORD#Minus(_k#0, ORD#FromNat(1));
                // assume allocatedness for argument to function
                assume $IsAlloc(##_k#2, TORDINAL, $Heap);
                ##c#3 := c0#6;
                // assume allocatedness for argument to function
                assume $IsAlloc(##c#3, Tclass._module.cmd(), $Heap);
                ##s#3 := s#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#3, TInt, $Heap);
                ##t#3 := s'#15;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#3, TInt, $Heap);
                assume _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c0#6, s#1, s'#15);
                if (_module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#6, s#1, s'#15))
                {
                    assert {:id "id59"} ORD#IsNat(Lit(ORD#FromNat(1)));
                    assert {:id "id60"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                    ##_k#3 := ORD#Minus(_k#0, ORD#FromNat(1));
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##_k#3, TORDINAL, $Heap);
                    ##c#4 := c1#6;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##c#4, Tclass._module.cmd(), $Heap);
                    ##s#4 := s'#15;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#4, TInt, $Heap);
                    ##t#4 := t#1;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#4, TInt, $Heap);
                    assume _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c1#6, s'#15, t#1);
                }

                assume _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c0#6, s#1, s'#15)
                   && (_module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#6, s#1, s'#15)
                     ==> _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c1#6, s'#15, t#1));
            }

            assert {:id "id61"} ($Is(LitInt(0), TInt)
                 && 
                _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#6, s#1, LitInt(0))
                 && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#6, LitInt(0), t#1))
               || (exists $as#s'0_1_0#0: int :: 
                _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#6, s#1, $as#s'0_1_0#0)
                   && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#6, $as#s'0_1_0#0, t#1));
            havoc s'#14;
            assume {:id "id62"} _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#6, s#1, s'#14)
               && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#6, s'#14, t#1);
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(40,15)
            // TrCallStmt: Before ProcessCallStmt
            assert {:id "id63"} ORD#IsNat(Lit(ORD#FromNat(1)));
            assert {:id "id64"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
            assume true;
            // ProcessCallStmt: CheckSubrange
            _k##2 := ORD#Minus(_k#0, ORD#FromNat(1));
            assume true;
            // ProcessCallStmt: CheckSubrange
            c##2 := c0#6;
            assume true;
            // ProcessCallStmt: CheckSubrange
            s##2 := s#1;
            assume true;
            // ProcessCallStmt: CheckSubrange
            t##2 := s'#14;
            call {:id "id65"} CoCall$$_module.__default.Monotonic1_h(_k##2, c##2, s##2, t##2);
            // TrCallStmt: After ProcessCallStmt
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(41,15)
            // TrCallStmt: Before ProcessCallStmt
            assert {:id "id66"} ORD#IsNat(Lit(ORD#FromNat(1)));
            assert {:id "id67"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
            assume true;
            // ProcessCallStmt: CheckSubrange
            _k##3 := ORD#Minus(_k#0, ORD#FromNat(1));
            assume true;
            // ProcessCallStmt: CheckSubrange
            c##3 := c1#6;
            assume true;
            // ProcessCallStmt: CheckSubrange
            s##3 := s'#14;
            assume true;
            // ProcessCallStmt: CheckSubrange
            t##3 := t#1;
            call {:id "id68"} CoCall$$_module.__default.Monotonic1_h(_k##3, c##3, s##3, t##3);
            // TrCallStmt: After ProcessCallStmt
        }
        else if (c#1 == #_module.cmd.Repeat(_mcc#2#0))
        {
            assume $Is(_mcc#2#0, Tclass._module.cmd())
               && $IsAlloc(_mcc#2#0, Tclass._module.cmd(), $Heap);
            havoc body#6;
            assume $Is(body#6, Tclass._module.cmd())
               && $IsAlloc(body#6, Tclass._module.cmd(), $Heap);
            assume {:id "id39"} let#0_0_0#0#0 == _mcc#2#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_0_0#0#0, Tclass._module.cmd());
            assume {:id "id40"} body#6 == let#0_0_0#0#0;
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(43,5)
            assume true;
            if (s#1 == t#1)
            {
            }
            else
            {
                // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(45,14)
                havoc s'#13;
                if (true)
                {
                    assert {:id "id41"} ORD#IsNat(Lit(ORD#FromNat(1)));
                    assert {:id "id42"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                    ##_k#0 := ORD#Minus(_k#0, ORD#FromNat(1));
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##_k#0, TORDINAL, $Heap);
                    ##c#1 := body#6;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##c#1, Tclass._module.cmd(), $Heap);
                    ##s#1 := s#1;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#1, TInt, $Heap);
                    ##t#1 := s'#13;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#1, TInt, $Heap);
                    assume _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), body#6, s#1, s'#13);
                    if (_module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), body#6, s#1, s'#13))
                    {
                        assert {:id "id43"} ORD#IsNat(Lit(ORD#FromNat(1)));
                        assert {:id "id44"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                        ##_k#1 := ORD#Minus(_k#0, ORD#FromNat(1));
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##_k#1, TORDINAL, $Heap);
                        ##c#2 := c#1;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##c#2, Tclass._module.cmd(), $Heap);
                        ##s#2 := s'#13;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##s#2, TInt, $Heap);
                        ##t#2 := t#1;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##t#2, TInt, $Heap);
                        assume _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c#1, s'#13, t#1);
                    }

                    assume _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), body#6, s#1, s'#13)
                       && (_module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), body#6, s#1, s'#13)
                         ==> _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c#1, s'#13, t#1));
                }

                assert {:id "id45"} ($Is(LitInt(0), TInt)
                     && 
                    _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), body#6, s#1, LitInt(0))
                     && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c#1, LitInt(0), t#1))
                   || (exists $as#s'0_0_1_0#0: int :: 
                    _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), body#6, s#1, $as#s'0_0_1_0#0)
                       && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c#1, $as#s'0_0_1_0#0, t#1));
                havoc s'#12;
                assume {:id "id46"} _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), body#6, s#1, s'#12)
                   && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c#1, s'#12, t#1);
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(46,17)
                // TrCallStmt: Before ProcessCallStmt
                assert {:id "id47"} ORD#IsNat(Lit(ORD#FromNat(1)));
                assert {:id "id48"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                assume true;
                // ProcessCallStmt: CheckSubrange
                _k##0 := ORD#Minus(_k#0, ORD#FromNat(1));
                assume true;
                // ProcessCallStmt: CheckSubrange
                c##0 := body#6;
                assume true;
                // ProcessCallStmt: CheckSubrange
                s##0 := s#1;
                assume true;
                // ProcessCallStmt: CheckSubrange
                t##0 := s'#12;
                call {:id "id49"} CoCall$$_module.__default.Monotonic1_h(_k##0, c##0, s##0, t##0);
                // TrCallStmt: After ProcessCallStmt
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(47,17)
                // TrCallStmt: Before ProcessCallStmt
                assert {:id "id50"} ORD#IsNat(Lit(ORD#FromNat(1)));
                assert {:id "id51"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                assume true;
                // ProcessCallStmt: CheckSubrange
                _k##1 := ORD#Minus(_k#0, ORD#FromNat(1));
                assume true;
                // ProcessCallStmt: CheckSubrange
                c##1 := c#1;
                assume true;
                // ProcessCallStmt: CheckSubrange
                s##1 := s'#12;
                assume true;
                // ProcessCallStmt: CheckSubrange
                t##1 := t#1;
                call {:id "id52"} CoCall$$_module.__default.Monotonic1_h(_k##1, c##1, s##1, t##1);
                // TrCallStmt: After ProcessCallStmt
            }
        }
        else
        {
            assume false;
        }
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(35,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#2: Box, c#2: DatatypeType, s#2: int, t#2: int :: 
          { _module.__default.BigStep_h($LS($LZ), _k'#2, c#2, s#2, t#2) } 
          $Is(c#2, Tclass._module.cmd())
               && 
              ORD#Less(_k'#2, _k#0)
               && _module.__default.BigStep_h($LS($LZ), _k'#2, c#2, s#2, t#2)
             ==> s#2 <= t#2);
    }
}



procedure {:verboseName "Monotonic2 (well-formedness)"} CheckWellFormed$$_module.__default.Monotonic2(c#0: DatatypeType
       where $Is(c#0, Tclass._module.cmd())
         && $IsAlloc(c#0, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#0), 
    s#0: int, 
    t#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Monotonic2 (call)"} Call$$_module.__default.Monotonic2(c#0: DatatypeType
       where $Is(c#0, Tclass._module.cmd())
         && $IsAlloc(c#0, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#0), 
    s#0: int, 
    t#0: int);
  // user-defined preconditions
  requires {:id "id71"} _module.__default.BigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.BigStep($LS($LZ), c#0, s#0, t#0)
       || (_module.cmd.Inc_q(c#0) ==> t#0 == s#0 + 1);
  requires {:id "id72"} _module.__default.BigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.BigStep($LS($LZ), c#0, s#0, t#0)
       || (!_module.cmd.Inc_q(c#0)
         ==> 
        _module.cmd.Seq_q(c#0)
         ==> (var c1#0 := _module.cmd._h1(c#0); 
          (var c0#0 := _module.cmd._h0(c#0); 
            (exists s'#0: int :: 
              { _module.__default.BigStep($LS($LZ), c1#0, s'#0, t#0) } 
                { _module.__default.BigStep($LS($LZ), c0#0, s#0, s'#0) } 
              _module.__default.BigStep($LS($LZ), c0#0, s#0, s'#0)
                 && _module.__default.BigStep($LS($LZ), c1#0, s'#0, t#0)))));
  requires {:id "id73"} _module.__default.BigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.BigStep($LS($LZ), c#0, s#0, t#0)
       || (!_module.cmd.Inc_q(c#0)
         ==> 
        !_module.cmd.Seq_q(c#0)
         ==> (var body#0 := _module.cmd._h2(c#0); 
          s#0 == t#0
             || (exists s'#1: int :: 
              { _module.__default.BigStep($LS($LS($LZ)), c#0, s'#1, t#0) } 
                { _module.__default.BigStep($LS($LS($LZ)), body#0, s#0, s'#1) } 
              _module.__default.BigStep($LS($LS($LZ)), body#0, s#0, s'#1)
                 && _module.__default.BigStep($LS($LS($LZ)), c#0, s'#1, t#0))));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id74"} s#0 <= t#0;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Monotonic2# (co-call)"} CoCall$$_module.__default.Monotonic2_h(_k#0: Box, 
    c#1: DatatypeType
       where $Is(c#1, Tclass._module.cmd())
         && $IsAlloc(c#1, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#1), 
    s#1: int, 
    t#1: int);
  // user-defined preconditions
  requires {:id "id75"} _module.__default.BigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.BigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (0 < ORD#Offset(_k#0) ==> _module.cmd.Inc_q(c#1) ==> t#1 == s#1 + 1);
  requires {:id "id76"} _module.__default.BigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.BigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (0 < ORD#Offset(_k#0)
         ==> 
        !_module.cmd.Inc_q(c#1)
         ==> 
        _module.cmd.Seq_q(c#1)
         ==> (var c1#2 := _module.cmd._h1(c#1); 
          (var c0#2 := _module.cmd._h0(c#1); 
            (exists s'#4: int :: 
              { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#2, s'#4, t#1) } 
                { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#2, s#1, s'#4) } 
              _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#2, s#1, s'#4)
                 && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#2, s'#4, t#1)))));
  requires {:id "id77"} _module.__default.BigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.BigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (0 < ORD#Offset(_k#0)
         ==> 
        !_module.cmd.Inc_q(c#1)
         ==> 
        !_module.cmd.Seq_q(c#1)
         ==> (var body#2 := _module.cmd._h2(c#1); 
          s#1 == t#1
             || (exists s'#5: int :: 
              { _module.__default.BigStep_h($LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), c#1, s'#5, t#1) } 
                { _module.__default.BigStep_h($LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), body#2, s#1, s'#5) } 
              _module.__default.BigStep_h($LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), body#2, s#1, s'#5)
                 && _module.__default.BigStep_h($LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), c#1, s'#5, t#1))));
  requires {:id "id78"} _module.__default.BigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.BigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (LitInt(0) == ORD#Offset(_k#0)
         ==> (exists _k'#0: Box :: 
          { _module.__default.BigStep_h($LS($LZ), _k'#0, c#1, s#1, t#1) } 
          ORD#LessThanLimit(_k'#0, _k#0)
             && _module.__default.BigStep_h($LS($LZ), _k'#0, c#1, s#1, t#1)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id79"} s#1 <= t#1;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Monotonic2# (correctness)"} Impl$$_module.__default.Monotonic2_h(_k#0: Box, 
    c#1: DatatypeType
       where $Is(c#1, Tclass._module.cmd())
         && $IsAlloc(c#1, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#1), 
    s#1: int, 
    t#1: int)
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id80"} _module.__default.BigStep_h#canCall(_k#0, c#1, s#1, t#1)
     && 
    _module.__default.BigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
     && 
    (0 < ORD#Offset(_k#0)
       ==> (if _module.cmd.Inc_q(c#1)
         then t#1 == s#1 + 1
         else (if _module.cmd.Seq_q(c#1)
           then (var c1#5 := _module.cmd._h1(c#1); 
            (var c0#5 := _module.cmd._h0(c#1); 
              (exists s'#10: int :: 
                { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#5, s'#10, t#1) } 
                  { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#5, s#1, s'#10) } 
                _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#5, s#1, s'#10)
                   && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#5, s'#10, t#1))))
           else (var body#5 := _module.cmd._h2(c#1); 
            s#1 == t#1
               || (exists s'#11: int :: 
                { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c#1, s'#11, t#1) } 
                  { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), body#5, s#1, s'#11) } 
                _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), body#5, s#1, s'#11)
                   && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c#1, s'#11, t#1))))))
     && (LitInt(0) == ORD#Offset(_k#0)
       ==> (exists _k'#1: Box :: 
        { _module.__default.BigStep_h($LS($LZ), _k'#1, c#1, s#1, t#1) } 
        ORD#LessThanLimit(_k'#1, _k#0)
           && _module.__default.BigStep_h($LS($LZ), _k'#1, c#1, s#1, t#1)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id81"} s#1 <= t#1;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Monotonic2# (correctness)"} Impl$$_module.__default.Monotonic2_h(_k#0: Box, c#1: DatatypeType, s#1: int, t#1: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: Monotonic2#, Impl$$_module.__default.Monotonic2_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(55,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(55,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#2: Box, c#2: DatatypeType, s#2: int, t#2: int :: 
          { _module.__default.BigStep_h($LS($LZ), _k'#2, c#2, s#2, t#2) } 
          $Is(c#2, Tclass._module.cmd())
               && 
              ORD#Less(_k'#2, _k#0)
               && _module.__default.BigStep_h($LS($LZ), _k'#2, c#2, s#2, t#2)
             ==> s#2 <= t#2);
    }
}



procedure {:verboseName "Monotonic3 (well-formedness)"} CheckWellFormed$$_module.__default.Monotonic3(c#0: DatatypeType
       where $Is(c#0, Tclass._module.cmd())
         && $IsAlloc(c#0, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#0), 
    s#0: int, 
    t#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Monotonic3 (call)"} Call$$_module.__default.Monotonic3(c#0: DatatypeType
       where $Is(c#0, Tclass._module.cmd())
         && $IsAlloc(c#0, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#0), 
    s#0: int, 
    t#0: int);
  // user-defined preconditions
  requires {:id "id84"} _module.__default.BigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.BigStep($LS($LZ), c#0, s#0, t#0)
       || (_module.cmd.Inc_q(c#0) ==> t#0 == s#0 + 1);
  requires {:id "id85"} _module.__default.BigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.BigStep($LS($LZ), c#0, s#0, t#0)
       || (!_module.cmd.Inc_q(c#0)
         ==> 
        _module.cmd.Seq_q(c#0)
         ==> (var c1#0 := _module.cmd._h1(c#0); 
          (var c0#0 := _module.cmd._h0(c#0); 
            (exists s'#0: int :: 
              { _module.__default.BigStep($LS($LZ), c1#0, s'#0, t#0) } 
                { _module.__default.BigStep($LS($LZ), c0#0, s#0, s'#0) } 
              _module.__default.BigStep($LS($LZ), c0#0, s#0, s'#0)
                 && _module.__default.BigStep($LS($LZ), c1#0, s'#0, t#0)))));
  requires {:id "id86"} _module.__default.BigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.BigStep($LS($LZ), c#0, s#0, t#0)
       || (!_module.cmd.Inc_q(c#0)
         ==> 
        !_module.cmd.Seq_q(c#0)
         ==> (var body#0 := _module.cmd._h2(c#0); 
          s#0 == t#0
             || (exists s'#1: int :: 
              { _module.__default.BigStep($LS($LS($LZ)), c#0, s'#1, t#0) } 
                { _module.__default.BigStep($LS($LS($LZ)), body#0, s#0, s'#1) } 
              _module.__default.BigStep($LS($LS($LZ)), body#0, s#0, s'#1)
                 && _module.__default.BigStep($LS($LS($LZ)), c#0, s'#1, t#0))));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id87"} s#0 <= t#0;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Monotonic3# (co-call)"} CoCall$$_module.__default.Monotonic3_h(_k#0: Box, 
    c#1: DatatypeType
       where $Is(c#1, Tclass._module.cmd())
         && $IsAlloc(c#1, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#1), 
    s#1: int, 
    t#1: int);
  // user-defined preconditions
  requires {:id "id88"} _module.__default.BigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.BigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (0 < ORD#Offset(_k#0) ==> _module.cmd.Inc_q(c#1) ==> t#1 == s#1 + 1);
  requires {:id "id89"} _module.__default.BigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.BigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (0 < ORD#Offset(_k#0)
         ==> 
        !_module.cmd.Inc_q(c#1)
         ==> 
        _module.cmd.Seq_q(c#1)
         ==> (var c1#2 := _module.cmd._h1(c#1); 
          (var c0#2 := _module.cmd._h0(c#1); 
            (exists s'#4: int :: 
              { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#2, s'#4, t#1) } 
                { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#2, s#1, s'#4) } 
              _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#2, s#1, s'#4)
                 && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#2, s'#4, t#1)))));
  requires {:id "id90"} _module.__default.BigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.BigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (0 < ORD#Offset(_k#0)
         ==> 
        !_module.cmd.Inc_q(c#1)
         ==> 
        !_module.cmd.Seq_q(c#1)
         ==> (var body#2 := _module.cmd._h2(c#1); 
          s#1 == t#1
             || (exists s'#5: int :: 
              { _module.__default.BigStep_h($LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), c#1, s'#5, t#1) } 
                { _module.__default.BigStep_h($LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), body#2, s#1, s'#5) } 
              _module.__default.BigStep_h($LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), body#2, s#1, s'#5)
                 && _module.__default.BigStep_h($LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), c#1, s'#5, t#1))));
  requires {:id "id91"} _module.__default.BigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.BigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (LitInt(0) == ORD#Offset(_k#0)
         ==> (exists _k'#0: Box :: 
          { _module.__default.BigStep_h($LS($LZ), _k'#0, c#1, s#1, t#1) } 
          ORD#LessThanLimit(_k'#0, _k#0)
             && _module.__default.BigStep_h($LS($LZ), _k'#0, c#1, s#1, t#1)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id92"} s#1 <= t#1;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Monotonic3# (correctness)"} Impl$$_module.__default.Monotonic3_h(_k#0: Box, 
    c#1: DatatypeType
       where $Is(c#1, Tclass._module.cmd())
         && $IsAlloc(c#1, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#1), 
    s#1: int, 
    t#1: int)
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id93"} _module.__default.BigStep_h#canCall(_k#0, c#1, s#1, t#1)
     && 
    _module.__default.BigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
     && 
    (0 < ORD#Offset(_k#0)
       ==> (if _module.cmd.Inc_q(c#1)
         then t#1 == s#1 + 1
         else (if _module.cmd.Seq_q(c#1)
           then (var c1#5 := _module.cmd._h1(c#1); 
            (var c0#5 := _module.cmd._h0(c#1); 
              (exists s'#10: int :: 
                { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#5, s'#10, t#1) } 
                  { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#5, s#1, s'#10) } 
                _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#5, s#1, s'#10)
                   && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#5, s'#10, t#1))))
           else (var body#5 := _module.cmd._h2(c#1); 
            s#1 == t#1
               || (exists s'#11: int :: 
                { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c#1, s'#11, t#1) } 
                  { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), body#5, s#1, s'#11) } 
                _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), body#5, s#1, s'#11)
                   && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c#1, s'#11, t#1))))))
     && (LitInt(0) == ORD#Offset(_k#0)
       ==> (exists _k'#1: Box :: 
        { _module.__default.BigStep_h($LS($LZ), _k'#1, c#1, s#1, t#1) } 
        ORD#LessThanLimit(_k'#1, _k#0)
           && _module.__default.BigStep_h($LS($LZ), _k'#1, c#1, s#1, t#1)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id94"} s#1 <= t#1;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Monotonic3# (correctness)"} Impl$$_module.__default.Monotonic3_h(_k#0: Box, c#1: DatatypeType, s#1: int, t#1: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var _mcc#2#0: DatatypeType;
  var body#6: DatatypeType;
  var let#0_0_0#0#0: DatatypeType;
  var s'#12: int;
  var s'#13: int;
  var ##_k#0: Box;
  var ##c#1: DatatypeType;
  var ##s#1: int;
  var ##t#1: int;
  var ##_k#1: Box;
  var ##c#2: DatatypeType;
  var ##s#2: int;
  var ##t#2: int;
  var _k##0: Box;
  var c##0: DatatypeType;
  var s##0: int;
  var t##0: int;
  var _k##1: Box;
  var c##1: DatatypeType;
  var s##1: int;
  var t##1: int;
  var _mcc#0#0: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var c1#6: DatatypeType;
  var let#0_1_0#0#0: DatatypeType;
  var c0#6: DatatypeType;
  var let#0_1_1#0#0: DatatypeType;
  var s'#14: int;
  var s'#15: int;
  var ##_k#2: Box;
  var ##c#3: DatatypeType;
  var ##s#3: int;
  var ##t#3: int;
  var ##_k#3: Box;
  var ##c#4: DatatypeType;
  var ##s#4: int;
  var ##t#4: int;
  var _k##2: Box;
  var c##2: DatatypeType;
  var s##2: int;
  var t##2: int;
  var _k##3: Box;
  var c##3: DatatypeType;
  var s##3: int;
  var t##3: int;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: Monotonic3#, Impl$$_module.__default.Monotonic3_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(62,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
        assume true;
        havoc _mcc#2#0;
        havoc _mcc#0#0, _mcc#1#0;
        if (c#1 == #_module.cmd.Inc())
        {
        }
        else if (c#1 == #_module.cmd.Seq(_mcc#0#0, _mcc#1#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.cmd())
               && $IsAlloc(_mcc#0#0, Tclass._module.cmd(), $Heap);
            assume $Is(_mcc#1#0, Tclass._module.cmd())
               && $IsAlloc(_mcc#1#0, Tclass._module.cmd(), $Heap);
            havoc c1#6;
            assume $Is(c1#6, Tclass._module.cmd()) && $IsAlloc(c1#6, Tclass._module.cmd(), $Heap);
            assume {:id "id109"} let#0_1_0#0#0 == _mcc#1#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_1_0#0#0, Tclass._module.cmd());
            assume {:id "id110"} c1#6 == let#0_1_0#0#0;
            havoc c0#6;
            assume $Is(c0#6, Tclass._module.cmd()) && $IsAlloc(c0#6, Tclass._module.cmd(), $Heap);
            assume {:id "id111"} let#0_1_1#0#0 == _mcc#0#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_1_1#0#0, Tclass._module.cmd());
            assume {:id "id112"} c0#6 == let#0_1_1#0#0;
            // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(66,12)
            havoc s'#15;
            if (true)
            {
                assert {:id "id113"} ORD#IsNat(Lit(ORD#FromNat(1)));
                assert {:id "id114"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                ##_k#2 := ORD#Minus(_k#0, ORD#FromNat(1));
                // assume allocatedness for argument to function
                assume $IsAlloc(##_k#2, TORDINAL, $Heap);
                ##c#3 := c0#6;
                // assume allocatedness for argument to function
                assume $IsAlloc(##c#3, Tclass._module.cmd(), $Heap);
                ##s#3 := s#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#3, TInt, $Heap);
                ##t#3 := s'#15;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#3, TInt, $Heap);
                assume _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c0#6, s#1, s'#15);
                if (_module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#6, s#1, s'#15))
                {
                    assert {:id "id115"} ORD#IsNat(Lit(ORD#FromNat(1)));
                    assert {:id "id116"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                    ##_k#3 := ORD#Minus(_k#0, ORD#FromNat(1));
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##_k#3, TORDINAL, $Heap);
                    ##c#4 := c1#6;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##c#4, Tclass._module.cmd(), $Heap);
                    ##s#4 := s'#15;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#4, TInt, $Heap);
                    ##t#4 := t#1;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#4, TInt, $Heap);
                    assume _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c1#6, s'#15, t#1);
                }

                assume _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c0#6, s#1, s'#15)
                   && (_module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#6, s#1, s'#15)
                     ==> _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c1#6, s'#15, t#1));
            }

            assert {:id "id117"} ($Is(LitInt(0), TInt)
                 && 
                _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#6, s#1, LitInt(0))
                 && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#6, LitInt(0), t#1))
               || (exists $as#s'0_1_0#0: int :: 
                _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#6, s#1, $as#s'0_1_0#0)
                   && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#6, $as#s'0_1_0#0, t#1));
            havoc s'#14;
            assume {:id "id118"} _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#6, s#1, s'#14)
               && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#6, s'#14, t#1);
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(67,15)
            // TrCallStmt: Before ProcessCallStmt
            assert {:id "id119"} ORD#IsNat(Lit(ORD#FromNat(1)));
            assert {:id "id120"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
            assume true;
            // ProcessCallStmt: CheckSubrange
            _k##2 := ORD#Minus(_k#0, ORD#FromNat(1));
            assume true;
            // ProcessCallStmt: CheckSubrange
            c##2 := c0#6;
            assume true;
            // ProcessCallStmt: CheckSubrange
            s##2 := s#1;
            assume true;
            // ProcessCallStmt: CheckSubrange
            t##2 := s'#14;
            call {:id "id121"} CoCall$$_module.__default.Monotonic3_h(_k##2, c##2, s##2, t##2);
            // TrCallStmt: After ProcessCallStmt
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(68,15)
            // TrCallStmt: Before ProcessCallStmt
            assert {:id "id122"} ORD#IsNat(Lit(ORD#FromNat(1)));
            assert {:id "id123"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
            assume true;
            // ProcessCallStmt: CheckSubrange
            _k##3 := ORD#Minus(_k#0, ORD#FromNat(1));
            assume true;
            // ProcessCallStmt: CheckSubrange
            c##3 := c1#6;
            assume true;
            // ProcessCallStmt: CheckSubrange
            s##3 := s'#14;
            assume true;
            // ProcessCallStmt: CheckSubrange
            t##3 := t#1;
            call {:id "id124"} CoCall$$_module.__default.Monotonic3_h(_k##3, c##3, s##3, t##3);
            // TrCallStmt: After ProcessCallStmt
        }
        else if (c#1 == #_module.cmd.Repeat(_mcc#2#0))
        {
            assume $Is(_mcc#2#0, Tclass._module.cmd())
               && $IsAlloc(_mcc#2#0, Tclass._module.cmd(), $Heap);
            havoc body#6;
            assume $Is(body#6, Tclass._module.cmd())
               && $IsAlloc(body#6, Tclass._module.cmd(), $Heap);
            assume {:id "id95"} let#0_0_0#0#0 == _mcc#2#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_0_0#0#0, Tclass._module.cmd());
            assume {:id "id96"} body#6 == let#0_0_0#0#0;
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(70,5)
            assume true;
            if (s#1 == t#1)
            {
            }
            else
            {
                // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(72,14)
                havoc s'#13;
                if (true)
                {
                    assert {:id "id97"} ORD#IsNat(Lit(ORD#FromNat(1)));
                    assert {:id "id98"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                    ##_k#0 := ORD#Minus(_k#0, ORD#FromNat(1));
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##_k#0, TORDINAL, $Heap);
                    ##c#1 := body#6;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##c#1, Tclass._module.cmd(), $Heap);
                    ##s#1 := s#1;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#1, TInt, $Heap);
                    ##t#1 := s'#13;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#1, TInt, $Heap);
                    assume _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), body#6, s#1, s'#13);
                    if (_module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), body#6, s#1, s'#13))
                    {
                        assert {:id "id99"} ORD#IsNat(Lit(ORD#FromNat(1)));
                        assert {:id "id100"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                        ##_k#1 := ORD#Minus(_k#0, ORD#FromNat(1));
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##_k#1, TORDINAL, $Heap);
                        ##c#2 := c#1;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##c#2, Tclass._module.cmd(), $Heap);
                        ##s#2 := s'#13;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##s#2, TInt, $Heap);
                        ##t#2 := t#1;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##t#2, TInt, $Heap);
                        assume _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c#1, s'#13, t#1);
                    }

                    assume _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), body#6, s#1, s'#13)
                       && (_module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), body#6, s#1, s'#13)
                         ==> _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c#1, s'#13, t#1));
                }

                assert {:id "id101"} ($Is(LitInt(0), TInt)
                     && 
                    _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), body#6, s#1, LitInt(0))
                     && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c#1, LitInt(0), t#1))
                   || (exists $as#s'0_0_1_0#0: int :: 
                    _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), body#6, s#1, $as#s'0_0_1_0#0)
                       && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c#1, $as#s'0_0_1_0#0, t#1));
                havoc s'#12;
                assume {:id "id102"} _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), body#6, s#1, s'#12)
                   && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c#1, s'#12, t#1);
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(73,17)
                // TrCallStmt: Before ProcessCallStmt
                assert {:id "id103"} ORD#IsNat(Lit(ORD#FromNat(1)));
                assert {:id "id104"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                assume true;
                // ProcessCallStmt: CheckSubrange
                _k##0 := ORD#Minus(_k#0, ORD#FromNat(1));
                assume true;
                // ProcessCallStmt: CheckSubrange
                c##0 := body#6;
                assume true;
                // ProcessCallStmt: CheckSubrange
                s##0 := s#1;
                assume true;
                // ProcessCallStmt: CheckSubrange
                t##0 := s'#12;
                call {:id "id105"} CoCall$$_module.__default.Monotonic3_h(_k##0, c##0, s##0, t##0);
                // TrCallStmt: After ProcessCallStmt
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(74,17)
                // TrCallStmt: Before ProcessCallStmt
                assert {:id "id106"} ORD#IsNat(Lit(ORD#FromNat(1)));
                assert {:id "id107"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                assume true;
                // ProcessCallStmt: CheckSubrange
                _k##1 := ORD#Minus(_k#0, ORD#FromNat(1));
                assume true;
                // ProcessCallStmt: CheckSubrange
                c##1 := c#1;
                assume true;
                // ProcessCallStmt: CheckSubrange
                s##1 := s'#12;
                assume true;
                // ProcessCallStmt: CheckSubrange
                t##1 := t#1;
                call {:id "id108"} CoCall$$_module.__default.Monotonic3_h(_k##1, c##1, s##1, t##1);
                // TrCallStmt: After ProcessCallStmt
            }
        }
        else
        {
            assume false;
        }
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(62,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#2: Box, c#2: DatatypeType, s#2: int, t#2: int :: 
          { _module.__default.BigStep_h($LS($LZ), _k'#2, c#2, s#2, t#2) } 
          $Is(c#2, Tclass._module.cmd())
               && 
              ORD#Less(_k'#2, _k#0)
               && _module.__default.BigStep_h($LS($LZ), _k'#2, c#2, s#2, t#2)
             ==> s#2 <= t#2);
    }
}



procedure {:verboseName "BadMonotonic0 (well-formedness)"} CheckWellFormed$$_module.__default.BadMonotonic0(c#0: DatatypeType
       where $Is(c#0, Tclass._module.cmd())
         && $IsAlloc(c#0, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#0), 
    s#0: int, 
    t#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "BadMonotonic0 (call)"} Call$$_module.__default.BadMonotonic0(c#0: DatatypeType
       where $Is(c#0, Tclass._module.cmd())
         && $IsAlloc(c#0, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#0), 
    s#0: int, 
    t#0: int);
  // user-defined preconditions
  requires {:id "id127"} _module.__default.BigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.BigStep($LS($LZ), c#0, s#0, t#0)
       || (_module.cmd.Inc_q(c#0) ==> t#0 == s#0 + 1);
  requires {:id "id128"} _module.__default.BigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.BigStep($LS($LZ), c#0, s#0, t#0)
       || (!_module.cmd.Inc_q(c#0)
         ==> 
        _module.cmd.Seq_q(c#0)
         ==> (var c1#0 := _module.cmd._h1(c#0); 
          (var c0#0 := _module.cmd._h0(c#0); 
            (exists s'#0: int :: 
              { _module.__default.BigStep($LS($LZ), c1#0, s'#0, t#0) } 
                { _module.__default.BigStep($LS($LZ), c0#0, s#0, s'#0) } 
              _module.__default.BigStep($LS($LZ), c0#0, s#0, s'#0)
                 && _module.__default.BigStep($LS($LZ), c1#0, s'#0, t#0)))));
  requires {:id "id129"} _module.__default.BigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.BigStep($LS($LZ), c#0, s#0, t#0)
       || (!_module.cmd.Inc_q(c#0)
         ==> 
        !_module.cmd.Seq_q(c#0)
         ==> (var body#0 := _module.cmd._h2(c#0); 
          s#0 == t#0
             || (exists s'#1: int :: 
              { _module.__default.BigStep($LS($LS($LZ)), c#0, s'#1, t#0) } 
                { _module.__default.BigStep($LS($LS($LZ)), body#0, s#0, s'#1) } 
              _module.__default.BigStep($LS($LS($LZ)), body#0, s#0, s'#1)
                 && _module.__default.BigStep($LS($LS($LZ)), c#0, s'#1, t#0))));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id130"} s#0 == t#0;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "BadMonotonic0# (co-call)"} CoCall$$_module.__default.BadMonotonic0_h(_k#0: Box, 
    c#1: DatatypeType
       where $Is(c#1, Tclass._module.cmd())
         && $IsAlloc(c#1, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#1), 
    s#1: int, 
    t#1: int);
  // user-defined preconditions
  requires {:id "id131"} _module.__default.BigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.BigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (0 < ORD#Offset(_k#0) ==> _module.cmd.Inc_q(c#1) ==> t#1 == s#1 + 1);
  requires {:id "id132"} _module.__default.BigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.BigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (0 < ORD#Offset(_k#0)
         ==> 
        !_module.cmd.Inc_q(c#1)
         ==> 
        _module.cmd.Seq_q(c#1)
         ==> (var c1#2 := _module.cmd._h1(c#1); 
          (var c0#2 := _module.cmd._h0(c#1); 
            (exists s'#4: int :: 
              { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#2, s'#4, t#1) } 
                { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#2, s#1, s'#4) } 
              _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#2, s#1, s'#4)
                 && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#2, s'#4, t#1)))));
  requires {:id "id133"} _module.__default.BigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.BigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (0 < ORD#Offset(_k#0)
         ==> 
        !_module.cmd.Inc_q(c#1)
         ==> 
        !_module.cmd.Seq_q(c#1)
         ==> (var body#2 := _module.cmd._h2(c#1); 
          s#1 == t#1
             || (exists s'#5: int :: 
              { _module.__default.BigStep_h($LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), c#1, s'#5, t#1) } 
                { _module.__default.BigStep_h($LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), body#2, s#1, s'#5) } 
              _module.__default.BigStep_h($LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), body#2, s#1, s'#5)
                 && _module.__default.BigStep_h($LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), c#1, s'#5, t#1))));
  requires {:id "id134"} _module.__default.BigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.BigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (LitInt(0) == ORD#Offset(_k#0)
         ==> (exists _k'#0: Box :: 
          { _module.__default.BigStep_h($LS($LZ), _k'#0, c#1, s#1, t#1) } 
          ORD#LessThanLimit(_k'#0, _k#0)
             && _module.__default.BigStep_h($LS($LZ), _k'#0, c#1, s#1, t#1)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id135"} s#1 == t#1;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "BadMonotonic0# (correctness)"} Impl$$_module.__default.BadMonotonic0_h(_k#0: Box, 
    c#1: DatatypeType
       where $Is(c#1, Tclass._module.cmd())
         && $IsAlloc(c#1, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#1), 
    s#1: int, 
    t#1: int)
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id136"} _module.__default.BigStep_h#canCall(_k#0, c#1, s#1, t#1)
     && 
    _module.__default.BigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
     && 
    (0 < ORD#Offset(_k#0)
       ==> (if _module.cmd.Inc_q(c#1)
         then t#1 == s#1 + 1
         else (if _module.cmd.Seq_q(c#1)
           then (var c1#5 := _module.cmd._h1(c#1); 
            (var c0#5 := _module.cmd._h0(c#1); 
              (exists s'#10: int :: 
                { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#5, s'#10, t#1) } 
                  { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#5, s#1, s'#10) } 
                _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#5, s#1, s'#10)
                   && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#5, s'#10, t#1))))
           else (var body#5 := _module.cmd._h2(c#1); 
            s#1 == t#1
               || (exists s'#11: int :: 
                { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c#1, s'#11, t#1) } 
                  { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), body#5, s#1, s'#11) } 
                _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), body#5, s#1, s'#11)
                   && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c#1, s'#11, t#1))))))
     && (LitInt(0) == ORD#Offset(_k#0)
       ==> (exists _k'#1: Box :: 
        { _module.__default.BigStep_h($LS($LZ), _k'#1, c#1, s#1, t#1) } 
        ORD#LessThanLimit(_k'#1, _k#0)
           && _module.__default.BigStep_h($LS($LZ), _k'#1, c#1, s#1, t#1)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id137"} s#1 == t#1;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "BadMonotonic0# (correctness)"} Impl$$_module.__default.BadMonotonic0_h(_k#0: Box, c#1: DatatypeType, s#1: int, t#1: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: BadMonotonic0#, Impl$$_module.__default.BadMonotonic0_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.cmd(c#1);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box, $ih#c0#0: DatatypeType, $ih#s0#0: int, $ih#t0#0: int :: 
      { _module.__default.BigStep_h($LS($LZ), $ih#_k0#0, $ih#c0#0, $ih#s0#0, $ih#t0#0) } 
      $Is($ih#c0#0, Tclass._module.cmd())
           && _module.__default.BigStep_h($LS($LZ), $ih#_k0#0, $ih#c0#0, $ih#s0#0, $ih#t0#0)
           && (ORD#Less($ih#_k0#0, _k#0)
             || ($ih#_k0#0 == _k#0
               && (DtRank($ih#c0#0) < DtRank(c#1)
                 || (DtRank($ih#c0#0) == DtRank(c#1)
                   && ((0 <= $ih#s0#0 && $ih#s0#0 < s#1)
                     || ($ih#s0#0 == s#1 && 0 <= $ih#t0#0 && $ih#t0#0 < t#1))))))
         ==> $ih#s0#0 == $ih#t0#0);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(84,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(84,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#2: Box, c#2: DatatypeType, s#2: int, t#2: int :: 
          { _module.__default.BigStep_h($LS($LZ), _k'#2, c#2, s#2, t#2) } 
          $Is(c#2, Tclass._module.cmd())
               && 
              ORD#Less(_k'#2, _k#0)
               && _module.__default.BigStep_h($LS($LZ), _k'#2, c#2, s#2, t#2)
             ==> s#2 == t#2);
    }
}



procedure {:verboseName "BadMonotonic1 (well-formedness)"} CheckWellFormed$$_module.__default.BadMonotonic1(c#0: DatatypeType
       where $Is(c#0, Tclass._module.cmd())
         && $IsAlloc(c#0, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#0), 
    s#0: int, 
    t#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "BadMonotonic1 (call)"} Call$$_module.__default.BadMonotonic1(c#0: DatatypeType
       where $Is(c#0, Tclass._module.cmd())
         && $IsAlloc(c#0, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#0), 
    s#0: int, 
    t#0: int);
  // user-defined preconditions
  requires {:id "id140"} _module.__default.BigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.BigStep($LS($LZ), c#0, s#0, t#0)
       || (_module.cmd.Inc_q(c#0) ==> t#0 == s#0 + 1);
  requires {:id "id141"} _module.__default.BigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.BigStep($LS($LZ), c#0, s#0, t#0)
       || (!_module.cmd.Inc_q(c#0)
         ==> 
        _module.cmd.Seq_q(c#0)
         ==> (var c1#0 := _module.cmd._h1(c#0); 
          (var c0#0 := _module.cmd._h0(c#0); 
            (exists s'#0: int :: 
              { _module.__default.BigStep($LS($LZ), c1#0, s'#0, t#0) } 
                { _module.__default.BigStep($LS($LZ), c0#0, s#0, s'#0) } 
              _module.__default.BigStep($LS($LZ), c0#0, s#0, s'#0)
                 && _module.__default.BigStep($LS($LZ), c1#0, s'#0, t#0)))));
  requires {:id "id142"} _module.__default.BigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.BigStep($LS($LZ), c#0, s#0, t#0)
       || (!_module.cmd.Inc_q(c#0)
         ==> 
        !_module.cmd.Seq_q(c#0)
         ==> (var body#0 := _module.cmd._h2(c#0); 
          s#0 == t#0
             || (exists s'#1: int :: 
              { _module.__default.BigStep($LS($LS($LZ)), c#0, s'#1, t#0) } 
                { _module.__default.BigStep($LS($LS($LZ)), body#0, s#0, s'#1) } 
              _module.__default.BigStep($LS($LS($LZ)), body#0, s#0, s'#1)
                 && _module.__default.BigStep($LS($LS($LZ)), c#0, s'#1, t#0))));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id143"} s#0 == t#0;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "BadMonotonic1# (co-call)"} CoCall$$_module.__default.BadMonotonic1_h(_k#0: Box, 
    c#1: DatatypeType
       where $Is(c#1, Tclass._module.cmd())
         && $IsAlloc(c#1, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#1), 
    s#1: int, 
    t#1: int);
  // user-defined preconditions
  requires {:id "id144"} _module.__default.BigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.BigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (0 < ORD#Offset(_k#0) ==> _module.cmd.Inc_q(c#1) ==> t#1 == s#1 + 1);
  requires {:id "id145"} _module.__default.BigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.BigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (0 < ORD#Offset(_k#0)
         ==> 
        !_module.cmd.Inc_q(c#1)
         ==> 
        _module.cmd.Seq_q(c#1)
         ==> (var c1#2 := _module.cmd._h1(c#1); 
          (var c0#2 := _module.cmd._h0(c#1); 
            (exists s'#4: int :: 
              { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#2, s'#4, t#1) } 
                { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#2, s#1, s'#4) } 
              _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#2, s#1, s'#4)
                 && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#2, s'#4, t#1)))));
  requires {:id "id146"} _module.__default.BigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.BigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (0 < ORD#Offset(_k#0)
         ==> 
        !_module.cmd.Inc_q(c#1)
         ==> 
        !_module.cmd.Seq_q(c#1)
         ==> (var body#2 := _module.cmd._h2(c#1); 
          s#1 == t#1
             || (exists s'#5: int :: 
              { _module.__default.BigStep_h($LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), c#1, s'#5, t#1) } 
                { _module.__default.BigStep_h($LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), body#2, s#1, s'#5) } 
              _module.__default.BigStep_h($LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), body#2, s#1, s'#5)
                 && _module.__default.BigStep_h($LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), c#1, s'#5, t#1))));
  requires {:id "id147"} _module.__default.BigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.BigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (LitInt(0) == ORD#Offset(_k#0)
         ==> (exists _k'#0: Box :: 
          { _module.__default.BigStep_h($LS($LZ), _k'#0, c#1, s#1, t#1) } 
          ORD#LessThanLimit(_k'#0, _k#0)
             && _module.__default.BigStep_h($LS($LZ), _k'#0, c#1, s#1, t#1)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id148"} s#1 == t#1;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "BadMonotonic1# (correctness)"} Impl$$_module.__default.BadMonotonic1_h(_k#0: Box, 
    c#1: DatatypeType
       where $Is(c#1, Tclass._module.cmd())
         && $IsAlloc(c#1, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#1), 
    s#1: int, 
    t#1: int)
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id149"} _module.__default.BigStep_h#canCall(_k#0, c#1, s#1, t#1)
     && 
    _module.__default.BigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
     && 
    (0 < ORD#Offset(_k#0)
       ==> (if _module.cmd.Inc_q(c#1)
         then t#1 == s#1 + 1
         else (if _module.cmd.Seq_q(c#1)
           then (var c1#5 := _module.cmd._h1(c#1); 
            (var c0#5 := _module.cmd._h0(c#1); 
              (exists s'#10: int :: 
                { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#5, s'#10, t#1) } 
                  { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#5, s#1, s'#10) } 
                _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#5, s#1, s'#10)
                   && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#5, s'#10, t#1))))
           else (var body#5 := _module.cmd._h2(c#1); 
            s#1 == t#1
               || (exists s'#11: int :: 
                { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c#1, s'#11, t#1) } 
                  { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), body#5, s#1, s'#11) } 
                _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), body#5, s#1, s'#11)
                   && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c#1, s'#11, t#1))))))
     && (LitInt(0) == ORD#Offset(_k#0)
       ==> (exists _k'#1: Box :: 
        { _module.__default.BigStep_h($LS($LZ), _k'#1, c#1, s#1, t#1) } 
        ORD#LessThanLimit(_k'#1, _k#0)
           && _module.__default.BigStep_h($LS($LZ), _k'#1, c#1, s#1, t#1)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id150"} s#1 == t#1;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "BadMonotonic1# (correctness)"} Impl$$_module.__default.BadMonotonic1_h(_k#0: Box, c#1: DatatypeType, s#1: int, t#1: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var _mcc#2#0: DatatypeType;
  var body#6: DatatypeType;
  var let#0_0_0#0#0: DatatypeType;
  var s'#12: int;
  var s'#13: int;
  var ##_k#0: Box;
  var ##c#1: DatatypeType;
  var ##s#1: int;
  var ##t#1: int;
  var ##_k#1: Box;
  var ##c#2: DatatypeType;
  var ##s#2: int;
  var ##t#2: int;
  var _k##0: Box;
  var c##0: DatatypeType;
  var s##0: int;
  var t##0: int;
  var _k##1: Box;
  var c##1: DatatypeType;
  var s##1: int;
  var t##1: int;
  var _mcc#0#0: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var c1#6: DatatypeType;
  var let#0_1_0#0#0: DatatypeType;
  var c0#6: DatatypeType;
  var let#0_1_1#0#0: DatatypeType;
  var s'#14: int;
  var s'#15: int;
  var ##_k#2: Box;
  var ##c#3: DatatypeType;
  var ##s#3: int;
  var ##t#3: int;
  var ##_k#3: Box;
  var ##c#4: DatatypeType;
  var ##s#4: int;
  var ##t#4: int;
  var _k##2: Box;
  var c##2: DatatypeType;
  var s##2: int;
  var t##2: int;
  var _k##3: Box;
  var c##3: DatatypeType;
  var s##3: int;
  var t##3: int;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: BadMonotonic1#, Impl$$_module.__default.BadMonotonic1_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.cmd(c#1);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box, $ih#c0#0: DatatypeType, $ih#s0#0: int, $ih#t0#0: int :: 
      { _module.__default.BigStep_h($LS($LZ), $ih#_k0#0, $ih#c0#0, $ih#s0#0, $ih#t0#0) } 
      $Is($ih#c0#0, Tclass._module.cmd())
           && _module.__default.BigStep_h($LS($LZ), $ih#_k0#0, $ih#c0#0, $ih#s0#0, $ih#t0#0)
           && (ORD#Less($ih#_k0#0, _k#0)
             || ($ih#_k0#0 == _k#0
               && (DtRank($ih#c0#0) < DtRank(c#1)
                 || (DtRank($ih#c0#0) == DtRank(c#1)
                   && ((0 <= $ih#s0#0 && $ih#s0#0 < s#1)
                     || ($ih#s0#0 == s#1 && 0 <= $ih#t0#0 && $ih#t0#0 < t#1))))))
         ==> $ih#s0#0 == $ih#t0#0);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(91,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
        assume true;
        havoc _mcc#2#0;
        havoc _mcc#0#0, _mcc#1#0;
        if (c#1 == #_module.cmd.Inc())
        {
        }
        else if (c#1 == #_module.cmd.Seq(_mcc#0#0, _mcc#1#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.cmd())
               && $IsAlloc(_mcc#0#0, Tclass._module.cmd(), $Heap);
            assume $Is(_mcc#1#0, Tclass._module.cmd())
               && $IsAlloc(_mcc#1#0, Tclass._module.cmd(), $Heap);
            havoc c1#6;
            assume $Is(c1#6, Tclass._module.cmd()) && $IsAlloc(c1#6, Tclass._module.cmd(), $Heap);
            assume {:id "id165"} let#0_1_0#0#0 == _mcc#1#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_1_0#0#0, Tclass._module.cmd());
            assume {:id "id166"} c1#6 == let#0_1_0#0#0;
            havoc c0#6;
            assume $Is(c0#6, Tclass._module.cmd()) && $IsAlloc(c0#6, Tclass._module.cmd(), $Heap);
            assume {:id "id167"} let#0_1_1#0#0 == _mcc#0#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_1_1#0#0, Tclass._module.cmd());
            assume {:id "id168"} c0#6 == let#0_1_1#0#0;
            // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(95,12)
            havoc s'#15;
            if (true)
            {
                assert {:id "id169"} ORD#IsNat(Lit(ORD#FromNat(1)));
                assert {:id "id170"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                ##_k#2 := ORD#Minus(_k#0, ORD#FromNat(1));
                // assume allocatedness for argument to function
                assume $IsAlloc(##_k#2, TORDINAL, $Heap);
                ##c#3 := c0#6;
                // assume allocatedness for argument to function
                assume $IsAlloc(##c#3, Tclass._module.cmd(), $Heap);
                ##s#3 := s#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#3, TInt, $Heap);
                ##t#3 := s'#15;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#3, TInt, $Heap);
                assume _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c0#6, s#1, s'#15);
                if (_module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#6, s#1, s'#15))
                {
                    assert {:id "id171"} ORD#IsNat(Lit(ORD#FromNat(1)));
                    assert {:id "id172"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                    ##_k#3 := ORD#Minus(_k#0, ORD#FromNat(1));
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##_k#3, TORDINAL, $Heap);
                    ##c#4 := c1#6;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##c#4, Tclass._module.cmd(), $Heap);
                    ##s#4 := s'#15;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#4, TInt, $Heap);
                    ##t#4 := t#1;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#4, TInt, $Heap);
                    assume _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c1#6, s'#15, t#1);
                }

                assume _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c0#6, s#1, s'#15)
                   && (_module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#6, s#1, s'#15)
                     ==> _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c1#6, s'#15, t#1));
            }

            assert {:id "id173"} ($Is(LitInt(0), TInt)
                 && 
                _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#6, s#1, LitInt(0))
                 && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#6, LitInt(0), t#1))
               || (exists $as#s'0_1_0#0: int :: 
                _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#6, s#1, $as#s'0_1_0#0)
                   && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#6, $as#s'0_1_0#0, t#1));
            havoc s'#14;
            assume {:id "id174"} _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#6, s#1, s'#14)
               && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#6, s'#14, t#1);
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(96,18)
            // TrCallStmt: Before ProcessCallStmt
            assert {:id "id175"} ORD#IsNat(Lit(ORD#FromNat(1)));
            assert {:id "id176"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
            assume true;
            // ProcessCallStmt: CheckSubrange
            _k##2 := ORD#Minus(_k#0, ORD#FromNat(1));
            assume true;
            // ProcessCallStmt: CheckSubrange
            c##2 := c0#6;
            assume true;
            // ProcessCallStmt: CheckSubrange
            s##2 := s#1;
            assume true;
            // ProcessCallStmt: CheckSubrange
            t##2 := s'#14;
            call {:id "id177"} CoCall$$_module.__default.BadMonotonic1_h(_k##2, c##2, s##2, t##2);
            // TrCallStmt: After ProcessCallStmt
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(97,18)
            // TrCallStmt: Before ProcessCallStmt
            assert {:id "id178"} ORD#IsNat(Lit(ORD#FromNat(1)));
            assert {:id "id179"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
            assume true;
            // ProcessCallStmt: CheckSubrange
            _k##3 := ORD#Minus(_k#0, ORD#FromNat(1));
            assume true;
            // ProcessCallStmt: CheckSubrange
            c##3 := c1#6;
            assume true;
            // ProcessCallStmt: CheckSubrange
            s##3 := s'#14;
            assume true;
            // ProcessCallStmt: CheckSubrange
            t##3 := t#1;
            call {:id "id180"} CoCall$$_module.__default.BadMonotonic1_h(_k##3, c##3, s##3, t##3);
            // TrCallStmt: After ProcessCallStmt
        }
        else if (c#1 == #_module.cmd.Repeat(_mcc#2#0))
        {
            assume $Is(_mcc#2#0, Tclass._module.cmd())
               && $IsAlloc(_mcc#2#0, Tclass._module.cmd(), $Heap);
            havoc body#6;
            assume $Is(body#6, Tclass._module.cmd())
               && $IsAlloc(body#6, Tclass._module.cmd(), $Heap);
            assume {:id "id151"} let#0_0_0#0#0 == _mcc#2#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_0_0#0#0, Tclass._module.cmd());
            assume {:id "id152"} body#6 == let#0_0_0#0#0;
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(99,5)
            assume true;
            if (s#1 == t#1)
            {
            }
            else
            {
                // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(101,14)
                havoc s'#13;
                if (true)
                {
                    assert {:id "id153"} ORD#IsNat(Lit(ORD#FromNat(1)));
                    assert {:id "id154"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                    ##_k#0 := ORD#Minus(_k#0, ORD#FromNat(1));
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##_k#0, TORDINAL, $Heap);
                    ##c#1 := body#6;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##c#1, Tclass._module.cmd(), $Heap);
                    ##s#1 := s#1;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#1, TInt, $Heap);
                    ##t#1 := s'#13;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#1, TInt, $Heap);
                    assume _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), body#6, s#1, s'#13);
                    if (_module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), body#6, s#1, s'#13))
                    {
                        assert {:id "id155"} ORD#IsNat(Lit(ORD#FromNat(1)));
                        assert {:id "id156"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                        ##_k#1 := ORD#Minus(_k#0, ORD#FromNat(1));
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##_k#1, TORDINAL, $Heap);
                        ##c#2 := c#1;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##c#2, Tclass._module.cmd(), $Heap);
                        ##s#2 := s'#13;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##s#2, TInt, $Heap);
                        ##t#2 := t#1;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##t#2, TInt, $Heap);
                        assume _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c#1, s'#13, t#1);
                    }

                    assume _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), body#6, s#1, s'#13)
                       && (_module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), body#6, s#1, s'#13)
                         ==> _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c#1, s'#13, t#1));
                }

                assert {:id "id157"} ($Is(LitInt(0), TInt)
                     && 
                    _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), body#6, s#1, LitInt(0))
                     && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c#1, LitInt(0), t#1))
                   || (exists $as#s'0_0_1_0#0: int :: 
                    _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), body#6, s#1, $as#s'0_0_1_0#0)
                       && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c#1, $as#s'0_0_1_0#0, t#1));
                havoc s'#12;
                assume {:id "id158"} _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), body#6, s#1, s'#12)
                   && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c#1, s'#12, t#1);
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(102,20)
                // TrCallStmt: Before ProcessCallStmt
                assert {:id "id159"} ORD#IsNat(Lit(ORD#FromNat(1)));
                assert {:id "id160"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                assume true;
                // ProcessCallStmt: CheckSubrange
                _k##0 := ORD#Minus(_k#0, ORD#FromNat(1));
                assume true;
                // ProcessCallStmt: CheckSubrange
                c##0 := body#6;
                assume true;
                // ProcessCallStmt: CheckSubrange
                s##0 := s#1;
                assume true;
                // ProcessCallStmt: CheckSubrange
                t##0 := s'#12;
                call {:id "id161"} CoCall$$_module.__default.BadMonotonic1_h(_k##0, c##0, s##0, t##0);
                // TrCallStmt: After ProcessCallStmt
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(103,20)
                // TrCallStmt: Before ProcessCallStmt
                assert {:id "id162"} ORD#IsNat(Lit(ORD#FromNat(1)));
                assert {:id "id163"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                assume true;
                // ProcessCallStmt: CheckSubrange
                _k##1 := ORD#Minus(_k#0, ORD#FromNat(1));
                assume true;
                // ProcessCallStmt: CheckSubrange
                c##1 := c#1;
                assume true;
                // ProcessCallStmt: CheckSubrange
                s##1 := s'#12;
                assume true;
                // ProcessCallStmt: CheckSubrange
                t##1 := t#1;
                call {:id "id164"} CoCall$$_module.__default.BadMonotonic1_h(_k##1, c##1, s##1, t##1);
                // TrCallStmt: After ProcessCallStmt
            }
        }
        else
        {
            assume false;
        }
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(91,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#2: Box, c#2: DatatypeType, s#2: int, t#2: int :: 
          { _module.__default.BigStep_h($LS($LZ), _k'#2, c#2, s#2, t#2) } 
          $Is(c#2, Tclass._module.cmd())
               && 
              ORD#Less(_k'#2, _k#0)
               && _module.__default.BigStep_h($LS($LZ), _k'#2, c#2, s#2, t#2)
             ==> s#2 == t#2);
    }
}



procedure {:verboseName "BadMonotonic2 (well-formedness)"} CheckWellFormed$$_module.__default.BadMonotonic2(c#0: DatatypeType
       where $Is(c#0, Tclass._module.cmd())
         && $IsAlloc(c#0, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#0), 
    s#0: int, 
    t#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "BadMonotonic2 (call)"} Call$$_module.__default.BadMonotonic2(c#0: DatatypeType
       where $Is(c#0, Tclass._module.cmd())
         && $IsAlloc(c#0, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#0), 
    s#0: int, 
    t#0: int);
  // user-defined preconditions
  requires {:id "id183"} _module.__default.BigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.BigStep($LS($LZ), c#0, s#0, t#0)
       || (_module.cmd.Inc_q(c#0) ==> t#0 == s#0 + 1);
  requires {:id "id184"} _module.__default.BigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.BigStep($LS($LZ), c#0, s#0, t#0)
       || (!_module.cmd.Inc_q(c#0)
         ==> 
        _module.cmd.Seq_q(c#0)
         ==> (var c1#0 := _module.cmd._h1(c#0); 
          (var c0#0 := _module.cmd._h0(c#0); 
            (exists s'#0: int :: 
              { _module.__default.BigStep($LS($LZ), c1#0, s'#0, t#0) } 
                { _module.__default.BigStep($LS($LZ), c0#0, s#0, s'#0) } 
              _module.__default.BigStep($LS($LZ), c0#0, s#0, s'#0)
                 && _module.__default.BigStep($LS($LZ), c1#0, s'#0, t#0)))));
  requires {:id "id185"} _module.__default.BigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.BigStep($LS($LZ), c#0, s#0, t#0)
       || (!_module.cmd.Inc_q(c#0)
         ==> 
        !_module.cmd.Seq_q(c#0)
         ==> (var body#0 := _module.cmd._h2(c#0); 
          s#0 == t#0
             || (exists s'#1: int :: 
              { _module.__default.BigStep($LS($LS($LZ)), c#0, s'#1, t#0) } 
                { _module.__default.BigStep($LS($LS($LZ)), body#0, s#0, s'#1) } 
              _module.__default.BigStep($LS($LS($LZ)), body#0, s#0, s'#1)
                 && _module.__default.BigStep($LS($LS($LZ)), c#0, s'#1, t#0))));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id186"} s#0 == t#0;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "BadMonotonic2# (co-call)"} CoCall$$_module.__default.BadMonotonic2_h(_k#0: Box, 
    c#1: DatatypeType
       where $Is(c#1, Tclass._module.cmd())
         && $IsAlloc(c#1, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#1), 
    s#1: int, 
    t#1: int);
  // user-defined preconditions
  requires {:id "id187"} _module.__default.BigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.BigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (0 < ORD#Offset(_k#0) ==> _module.cmd.Inc_q(c#1) ==> t#1 == s#1 + 1);
  requires {:id "id188"} _module.__default.BigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.BigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (0 < ORD#Offset(_k#0)
         ==> 
        !_module.cmd.Inc_q(c#1)
         ==> 
        _module.cmd.Seq_q(c#1)
         ==> (var c1#2 := _module.cmd._h1(c#1); 
          (var c0#2 := _module.cmd._h0(c#1); 
            (exists s'#4: int :: 
              { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#2, s'#4, t#1) } 
                { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#2, s#1, s'#4) } 
              _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#2, s#1, s'#4)
                 && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#2, s'#4, t#1)))));
  requires {:id "id189"} _module.__default.BigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.BigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (0 < ORD#Offset(_k#0)
         ==> 
        !_module.cmd.Inc_q(c#1)
         ==> 
        !_module.cmd.Seq_q(c#1)
         ==> (var body#2 := _module.cmd._h2(c#1); 
          s#1 == t#1
             || (exists s'#5: int :: 
              { _module.__default.BigStep_h($LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), c#1, s'#5, t#1) } 
                { _module.__default.BigStep_h($LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), body#2, s#1, s'#5) } 
              _module.__default.BigStep_h($LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), body#2, s#1, s'#5)
                 && _module.__default.BigStep_h($LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), c#1, s'#5, t#1))));
  requires {:id "id190"} _module.__default.BigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.BigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (LitInt(0) == ORD#Offset(_k#0)
         ==> (exists _k'#0: Box :: 
          { _module.__default.BigStep_h($LS($LZ), _k'#0, c#1, s#1, t#1) } 
          ORD#LessThanLimit(_k'#0, _k#0)
             && _module.__default.BigStep_h($LS($LZ), _k'#0, c#1, s#1, t#1)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id191"} s#1 == t#1;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "BadMonotonic2# (correctness)"} Impl$$_module.__default.BadMonotonic2_h(_k#0: Box, 
    c#1: DatatypeType
       where $Is(c#1, Tclass._module.cmd())
         && $IsAlloc(c#1, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#1), 
    s#1: int, 
    t#1: int)
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id192"} _module.__default.BigStep_h#canCall(_k#0, c#1, s#1, t#1)
     && 
    _module.__default.BigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
     && 
    (0 < ORD#Offset(_k#0)
       ==> (if _module.cmd.Inc_q(c#1)
         then t#1 == s#1 + 1
         else (if _module.cmd.Seq_q(c#1)
           then (var c1#5 := _module.cmd._h1(c#1); 
            (var c0#5 := _module.cmd._h0(c#1); 
              (exists s'#10: int :: 
                { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#5, s'#10, t#1) } 
                  { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#5, s#1, s'#10) } 
                _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#5, s#1, s'#10)
                   && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#5, s'#10, t#1))))
           else (var body#5 := _module.cmd._h2(c#1); 
            s#1 == t#1
               || (exists s'#11: int :: 
                { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c#1, s'#11, t#1) } 
                  { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), body#5, s#1, s'#11) } 
                _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), body#5, s#1, s'#11)
                   && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c#1, s'#11, t#1))))))
     && (LitInt(0) == ORD#Offset(_k#0)
       ==> (exists _k'#1: Box :: 
        { _module.__default.BigStep_h($LS($LZ), _k'#1, c#1, s#1, t#1) } 
        ORD#LessThanLimit(_k'#1, _k#0)
           && _module.__default.BigStep_h($LS($LZ), _k'#1, c#1, s#1, t#1)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id193"} s#1 == t#1;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "BadMonotonic2# (correctness)"} Impl$$_module.__default.BadMonotonic2_h(_k#0: Box, c#1: DatatypeType, s#1: int, t#1: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: BadMonotonic2#, Impl$$_module.__default.BadMonotonic2_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(111,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(111,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#2: Box, c#2: DatatypeType, s#2: int, t#2: int :: 
          { _module.__default.BigStep_h($LS($LZ), _k'#2, c#2, s#2, t#2) } 
          $Is(c#2, Tclass._module.cmd())
               && 
              ORD#Less(_k'#2, _k#0)
               && _module.__default.BigStep_h($LS($LZ), _k'#2, c#2, s#2, t#2)
             ==> s#2 == t#2);
    }
}



procedure {:verboseName "BadMonotonic3 (well-formedness)"} CheckWellFormed$$_module.__default.BadMonotonic3(c#0: DatatypeType
       where $Is(c#0, Tclass._module.cmd())
         && $IsAlloc(c#0, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#0), 
    s#0: int, 
    t#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "BadMonotonic3 (call)"} Call$$_module.__default.BadMonotonic3(c#0: DatatypeType
       where $Is(c#0, Tclass._module.cmd())
         && $IsAlloc(c#0, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#0), 
    s#0: int, 
    t#0: int);
  // user-defined preconditions
  requires {:id "id196"} _module.__default.BigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.BigStep($LS($LZ), c#0, s#0, t#0)
       || (_module.cmd.Inc_q(c#0) ==> t#0 == s#0 + 1);
  requires {:id "id197"} _module.__default.BigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.BigStep($LS($LZ), c#0, s#0, t#0)
       || (!_module.cmd.Inc_q(c#0)
         ==> 
        _module.cmd.Seq_q(c#0)
         ==> (var c1#0 := _module.cmd._h1(c#0); 
          (var c0#0 := _module.cmd._h0(c#0); 
            (exists s'#0: int :: 
              { _module.__default.BigStep($LS($LZ), c1#0, s'#0, t#0) } 
                { _module.__default.BigStep($LS($LZ), c0#0, s#0, s'#0) } 
              _module.__default.BigStep($LS($LZ), c0#0, s#0, s'#0)
                 && _module.__default.BigStep($LS($LZ), c1#0, s'#0, t#0)))));
  requires {:id "id198"} _module.__default.BigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.BigStep($LS($LZ), c#0, s#0, t#0)
       || (!_module.cmd.Inc_q(c#0)
         ==> 
        !_module.cmd.Seq_q(c#0)
         ==> (var body#0 := _module.cmd._h2(c#0); 
          s#0 == t#0
             || (exists s'#1: int :: 
              { _module.__default.BigStep($LS($LS($LZ)), c#0, s'#1, t#0) } 
                { _module.__default.BigStep($LS($LS($LZ)), body#0, s#0, s'#1) } 
              _module.__default.BigStep($LS($LS($LZ)), body#0, s#0, s'#1)
                 && _module.__default.BigStep($LS($LS($LZ)), c#0, s'#1, t#0))));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id199"} s#0 == t#0;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "BadMonotonic3# (co-call)"} CoCall$$_module.__default.BadMonotonic3_h(_k#0: Box, 
    c#1: DatatypeType
       where $Is(c#1, Tclass._module.cmd())
         && $IsAlloc(c#1, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#1), 
    s#1: int, 
    t#1: int);
  // user-defined preconditions
  requires {:id "id200"} _module.__default.BigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.BigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (0 < ORD#Offset(_k#0) ==> _module.cmd.Inc_q(c#1) ==> t#1 == s#1 + 1);
  requires {:id "id201"} _module.__default.BigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.BigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (0 < ORD#Offset(_k#0)
         ==> 
        !_module.cmd.Inc_q(c#1)
         ==> 
        _module.cmd.Seq_q(c#1)
         ==> (var c1#2 := _module.cmd._h1(c#1); 
          (var c0#2 := _module.cmd._h0(c#1); 
            (exists s'#4: int :: 
              { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#2, s'#4, t#1) } 
                { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#2, s#1, s'#4) } 
              _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#2, s#1, s'#4)
                 && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#2, s'#4, t#1)))));
  requires {:id "id202"} _module.__default.BigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.BigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (0 < ORD#Offset(_k#0)
         ==> 
        !_module.cmd.Inc_q(c#1)
         ==> 
        !_module.cmd.Seq_q(c#1)
         ==> (var body#2 := _module.cmd._h2(c#1); 
          s#1 == t#1
             || (exists s'#5: int :: 
              { _module.__default.BigStep_h($LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), c#1, s'#5, t#1) } 
                { _module.__default.BigStep_h($LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), body#2, s#1, s'#5) } 
              _module.__default.BigStep_h($LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), body#2, s#1, s'#5)
                 && _module.__default.BigStep_h($LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), c#1, s'#5, t#1))));
  requires {:id "id203"} _module.__default.BigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.BigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (LitInt(0) == ORD#Offset(_k#0)
         ==> (exists _k'#0: Box :: 
          { _module.__default.BigStep_h($LS($LZ), _k'#0, c#1, s#1, t#1) } 
          ORD#LessThanLimit(_k'#0, _k#0)
             && _module.__default.BigStep_h($LS($LZ), _k'#0, c#1, s#1, t#1)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id204"} s#1 == t#1;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "BadMonotonic3# (correctness)"} Impl$$_module.__default.BadMonotonic3_h(_k#0: Box, 
    c#1: DatatypeType
       where $Is(c#1, Tclass._module.cmd())
         && $IsAlloc(c#1, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#1), 
    s#1: int, 
    t#1: int)
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id205"} _module.__default.BigStep_h#canCall(_k#0, c#1, s#1, t#1)
     && 
    _module.__default.BigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
     && 
    (0 < ORD#Offset(_k#0)
       ==> (if _module.cmd.Inc_q(c#1)
         then t#1 == s#1 + 1
         else (if _module.cmd.Seq_q(c#1)
           then (var c1#5 := _module.cmd._h1(c#1); 
            (var c0#5 := _module.cmd._h0(c#1); 
              (exists s'#10: int :: 
                { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#5, s'#10, t#1) } 
                  { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#5, s#1, s'#10) } 
                _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#5, s#1, s'#10)
                   && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#5, s'#10, t#1))))
           else (var body#5 := _module.cmd._h2(c#1); 
            s#1 == t#1
               || (exists s'#11: int :: 
                { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c#1, s'#11, t#1) } 
                  { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), body#5, s#1, s'#11) } 
                _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), body#5, s#1, s'#11)
                   && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c#1, s'#11, t#1))))))
     && (LitInt(0) == ORD#Offset(_k#0)
       ==> (exists _k'#1: Box :: 
        { _module.__default.BigStep_h($LS($LZ), _k'#1, c#1, s#1, t#1) } 
        ORD#LessThanLimit(_k'#1, _k#0)
           && _module.__default.BigStep_h($LS($LZ), _k'#1, c#1, s#1, t#1)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id206"} s#1 == t#1;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "BadMonotonic3# (correctness)"} Impl$$_module.__default.BadMonotonic3_h(_k#0: Box, c#1: DatatypeType, s#1: int, t#1: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var _mcc#2#0: DatatypeType;
  var body#6: DatatypeType;
  var let#0_0_0#0#0: DatatypeType;
  var s'#12: int;
  var s'#13: int;
  var ##_k#0: Box;
  var ##c#1: DatatypeType;
  var ##s#1: int;
  var ##t#1: int;
  var ##_k#1: Box;
  var ##c#2: DatatypeType;
  var ##s#2: int;
  var ##t#2: int;
  var _k##0: Box;
  var c##0: DatatypeType;
  var s##0: int;
  var t##0: int;
  var _k##1: Box;
  var c##1: DatatypeType;
  var s##1: int;
  var t##1: int;
  var _mcc#0#0: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var c1#6: DatatypeType;
  var let#0_1_0#0#0: DatatypeType;
  var c0#6: DatatypeType;
  var let#0_1_1#0#0: DatatypeType;
  var s'#14: int;
  var s'#15: int;
  var ##_k#2: Box;
  var ##c#3: DatatypeType;
  var ##s#3: int;
  var ##t#3: int;
  var ##_k#3: Box;
  var ##c#4: DatatypeType;
  var ##s#4: int;
  var ##t#4: int;
  var _k##2: Box;
  var c##2: DatatypeType;
  var s##2: int;
  var t##2: int;
  var _k##3: Box;
  var c##3: DatatypeType;
  var s##3: int;
  var t##3: int;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: BadMonotonic3#, Impl$$_module.__default.BadMonotonic3_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(118,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
        assume true;
        havoc _mcc#2#0;
        havoc _mcc#0#0, _mcc#1#0;
        if (c#1 == #_module.cmd.Inc())
        {
        }
        else if (c#1 == #_module.cmd.Seq(_mcc#0#0, _mcc#1#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.cmd())
               && $IsAlloc(_mcc#0#0, Tclass._module.cmd(), $Heap);
            assume $Is(_mcc#1#0, Tclass._module.cmd())
               && $IsAlloc(_mcc#1#0, Tclass._module.cmd(), $Heap);
            havoc c1#6;
            assume $Is(c1#6, Tclass._module.cmd()) && $IsAlloc(c1#6, Tclass._module.cmd(), $Heap);
            assume {:id "id221"} let#0_1_0#0#0 == _mcc#1#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_1_0#0#0, Tclass._module.cmd());
            assume {:id "id222"} c1#6 == let#0_1_0#0#0;
            havoc c0#6;
            assume $Is(c0#6, Tclass._module.cmd()) && $IsAlloc(c0#6, Tclass._module.cmd(), $Heap);
            assume {:id "id223"} let#0_1_1#0#0 == _mcc#0#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_1_1#0#0, Tclass._module.cmd());
            assume {:id "id224"} c0#6 == let#0_1_1#0#0;
            // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(122,12)
            havoc s'#15;
            if (true)
            {
                assert {:id "id225"} ORD#IsNat(Lit(ORD#FromNat(1)));
                assert {:id "id226"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                ##_k#2 := ORD#Minus(_k#0, ORD#FromNat(1));
                // assume allocatedness for argument to function
                assume $IsAlloc(##_k#2, TORDINAL, $Heap);
                ##c#3 := c0#6;
                // assume allocatedness for argument to function
                assume $IsAlloc(##c#3, Tclass._module.cmd(), $Heap);
                ##s#3 := s#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#3, TInt, $Heap);
                ##t#3 := s'#15;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#3, TInt, $Heap);
                assume _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c0#6, s#1, s'#15);
                if (_module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#6, s#1, s'#15))
                {
                    assert {:id "id227"} ORD#IsNat(Lit(ORD#FromNat(1)));
                    assert {:id "id228"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                    ##_k#3 := ORD#Minus(_k#0, ORD#FromNat(1));
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##_k#3, TORDINAL, $Heap);
                    ##c#4 := c1#6;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##c#4, Tclass._module.cmd(), $Heap);
                    ##s#4 := s'#15;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#4, TInt, $Heap);
                    ##t#4 := t#1;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#4, TInt, $Heap);
                    assume _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c1#6, s'#15, t#1);
                }

                assume _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c0#6, s#1, s'#15)
                   && (_module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#6, s#1, s'#15)
                     ==> _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c1#6, s'#15, t#1));
            }

            assert {:id "id229"} ($Is(LitInt(0), TInt)
                 && 
                _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#6, s#1, LitInt(0))
                 && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#6, LitInt(0), t#1))
               || (exists $as#s'0_1_0#0: int :: 
                _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#6, s#1, $as#s'0_1_0#0)
                   && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#6, $as#s'0_1_0#0, t#1));
            havoc s'#14;
            assume {:id "id230"} _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#6, s#1, s'#14)
               && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#6, s'#14, t#1);
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(123,18)
            // TrCallStmt: Before ProcessCallStmt
            assert {:id "id231"} ORD#IsNat(Lit(ORD#FromNat(1)));
            assert {:id "id232"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
            assume true;
            // ProcessCallStmt: CheckSubrange
            _k##2 := ORD#Minus(_k#0, ORD#FromNat(1));
            assume true;
            // ProcessCallStmt: CheckSubrange
            c##2 := c0#6;
            assume true;
            // ProcessCallStmt: CheckSubrange
            s##2 := s#1;
            assume true;
            // ProcessCallStmt: CheckSubrange
            t##2 := s'#14;
            call {:id "id233"} CoCall$$_module.__default.BadMonotonic3_h(_k##2, c##2, s##2, t##2);
            // TrCallStmt: After ProcessCallStmt
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(124,18)
            // TrCallStmt: Before ProcessCallStmt
            assert {:id "id234"} ORD#IsNat(Lit(ORD#FromNat(1)));
            assert {:id "id235"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
            assume true;
            // ProcessCallStmt: CheckSubrange
            _k##3 := ORD#Minus(_k#0, ORD#FromNat(1));
            assume true;
            // ProcessCallStmt: CheckSubrange
            c##3 := c1#6;
            assume true;
            // ProcessCallStmt: CheckSubrange
            s##3 := s'#14;
            assume true;
            // ProcessCallStmt: CheckSubrange
            t##3 := t#1;
            call {:id "id236"} CoCall$$_module.__default.BadMonotonic3_h(_k##3, c##3, s##3, t##3);
            // TrCallStmt: After ProcessCallStmt
        }
        else if (c#1 == #_module.cmd.Repeat(_mcc#2#0))
        {
            assume $Is(_mcc#2#0, Tclass._module.cmd())
               && $IsAlloc(_mcc#2#0, Tclass._module.cmd(), $Heap);
            havoc body#6;
            assume $Is(body#6, Tclass._module.cmd())
               && $IsAlloc(body#6, Tclass._module.cmd(), $Heap);
            assume {:id "id207"} let#0_0_0#0#0 == _mcc#2#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_0_0#0#0, Tclass._module.cmd());
            assume {:id "id208"} body#6 == let#0_0_0#0#0;
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(126,5)
            assume true;
            if (s#1 == t#1)
            {
            }
            else
            {
                // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(128,14)
                havoc s'#13;
                if (true)
                {
                    assert {:id "id209"} ORD#IsNat(Lit(ORD#FromNat(1)));
                    assert {:id "id210"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                    ##_k#0 := ORD#Minus(_k#0, ORD#FromNat(1));
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##_k#0, TORDINAL, $Heap);
                    ##c#1 := body#6;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##c#1, Tclass._module.cmd(), $Heap);
                    ##s#1 := s#1;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#1, TInt, $Heap);
                    ##t#1 := s'#13;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#1, TInt, $Heap);
                    assume _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), body#6, s#1, s'#13);
                    if (_module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), body#6, s#1, s'#13))
                    {
                        assert {:id "id211"} ORD#IsNat(Lit(ORD#FromNat(1)));
                        assert {:id "id212"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                        ##_k#1 := ORD#Minus(_k#0, ORD#FromNat(1));
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##_k#1, TORDINAL, $Heap);
                        ##c#2 := c#1;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##c#2, Tclass._module.cmd(), $Heap);
                        ##s#2 := s'#13;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##s#2, TInt, $Heap);
                        ##t#2 := t#1;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##t#2, TInt, $Heap);
                        assume _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c#1, s'#13, t#1);
                    }

                    assume _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), body#6, s#1, s'#13)
                       && (_module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), body#6, s#1, s'#13)
                         ==> _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c#1, s'#13, t#1));
                }

                assert {:id "id213"} ($Is(LitInt(0), TInt)
                     && 
                    _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), body#6, s#1, LitInt(0))
                     && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c#1, LitInt(0), t#1))
                   || (exists $as#s'0_0_1_0#0: int :: 
                    _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), body#6, s#1, $as#s'0_0_1_0#0)
                       && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c#1, $as#s'0_0_1_0#0, t#1));
                havoc s'#12;
                assume {:id "id214"} _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), body#6, s#1, s'#12)
                   && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c#1, s'#12, t#1);
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(129,20)
                // TrCallStmt: Before ProcessCallStmt
                assert {:id "id215"} ORD#IsNat(Lit(ORD#FromNat(1)));
                assert {:id "id216"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                assume true;
                // ProcessCallStmt: CheckSubrange
                _k##0 := ORD#Minus(_k#0, ORD#FromNat(1));
                assume true;
                // ProcessCallStmt: CheckSubrange
                c##0 := body#6;
                assume true;
                // ProcessCallStmt: CheckSubrange
                s##0 := s#1;
                assume true;
                // ProcessCallStmt: CheckSubrange
                t##0 := s'#12;
                call {:id "id217"} CoCall$$_module.__default.BadMonotonic3_h(_k##0, c##0, s##0, t##0);
                // TrCallStmt: After ProcessCallStmt
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(130,20)
                // TrCallStmt: Before ProcessCallStmt
                assert {:id "id218"} ORD#IsNat(Lit(ORD#FromNat(1)));
                assert {:id "id219"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                assume true;
                // ProcessCallStmt: CheckSubrange
                _k##1 := ORD#Minus(_k#0, ORD#FromNat(1));
                assume true;
                // ProcessCallStmt: CheckSubrange
                c##1 := c#1;
                assume true;
                // ProcessCallStmt: CheckSubrange
                s##1 := s'#12;
                assume true;
                // ProcessCallStmt: CheckSubrange
                t##1 := t#1;
                call {:id "id220"} CoCall$$_module.__default.BadMonotonic3_h(_k##1, c##1, s##1, t##1);
                // TrCallStmt: After ProcessCallStmt
            }
        }
        else
        {
            assume false;
        }
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(118,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#2: Box, c#2: DatatypeType, s#2: int, t#2: int :: 
          { _module.__default.BigStep_h($LS($LZ), _k'#2, c#2, s#2, t#2) } 
          $Is(c#2, Tclass._module.cmd())
               && 
              ORD#Less(_k'#2, _k#0)
               && _module.__default.BigStep_h($LS($LZ), _k'#2, c#2, s#2, t#2)
             ==> s#2 == t#2);
    }
}



// function declaration for _module._default.NatBigStep
function _module.__default.NatBigStep($ly: LayerType, c#0: DatatypeType, s#0: int, t#0: int) : bool
uses {
// definition axiom for _module.__default.NatBigStep (revealed)
axiom {:id "id237"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, c#0: DatatypeType, s#0: int, t#0: int :: 
    { _module.__default.NatBigStep($LS($ly), c#0, s#0, t#0) } 
    _module.__default.NatBigStep#canCall(c#0, s#0, t#0)
         || (1 < $FunctionContextHeight && $Is(c#0, Tclass._module.cmd()))
       ==> (!_module.cmd.Inc_q(c#0)
           ==> (_module.cmd.Seq_q(c#0)
               ==> (var c1#1 := _module.cmd._h1(c#0); 
                (var c0#1 := _module.cmd._h0(c#0); 
                  (forall s'#2: int :: 
                    { _module.__default.NatBigStep($ly, c1#1, s'#2, t#0) } 
                      { _module.__default.NatBigStep($ly, c0#1, s#0, s'#2) } 
                    _module.__default.NatBigStep#canCall(c0#1, s#0, s'#2)
                       && (_module.__default.NatBigStep($ly, c0#1, s#0, s'#2)
                         ==> _module.__default.NatBigStep#canCall(c1#1, s'#2, t#0))))))
             && (!_module.cmd.Seq_q(c#0)
               ==> (var body#1 := _module.cmd._h2(c#0); 
                s#0 != t#0
                   ==> (forall s'#3: int :: 
                    { _module.__default.NatBigStep($ly, c#0, s'#3, t#0) } 
                      { _module.__default.NatBigStep($ly, body#1, s#0, s'#3) } 
                    _module.__default.NatBigStep#canCall(body#1, s#0, s'#3)
                       && (_module.__default.NatBigStep($ly, body#1, s#0, s'#3)
                         ==> _module.__default.NatBigStep#canCall(c#0, s'#3, t#0))))))
         && _module.__default.NatBigStep($LS($ly), c#0, s#0, t#0)
           == (if _module.cmd.Inc_q(c#0)
             then t#0 == s#0 + 1
             else (if _module.cmd.Seq_q(c#0)
               then (var c1#0 := _module.cmd._h1(c#0); 
                (var c0#0 := _module.cmd._h0(c#0); 
                  (exists s'#0: int :: 
                    { _module.__default.NatBigStep($ly, c1#0, s'#0, t#0) } 
                      { _module.__default.NatBigStep($ly, c0#0, s#0, s'#0) } 
                    _module.__default.NatBigStep($ly, c0#0, s#0, s'#0)
                       && _module.__default.NatBigStep($ly, c1#0, s'#0, t#0))))
               else (var body#0 := _module.cmd._h2(c#0); 
                s#0 == t#0
                   || (exists s'#1: int :: 
                    { _module.__default.NatBigStep($ly, c#0, s'#1, t#0) } 
                      { _module.__default.NatBigStep($ly, body#0, s#0, s'#1) } 
                    _module.__default.NatBigStep($ly, body#0, s#0, s'#1)
                       && _module.__default.NatBigStep($ly, c#0, s'#1, t#0))))));
}

function _module.__default.NatBigStep#canCall(c#0: DatatypeType, s#0: int, t#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, c#0: DatatypeType, s#0: int, t#0: int :: 
  { _module.__default.NatBigStep($LS($ly), c#0, s#0, t#0) } 
  _module.__default.NatBigStep($LS($ly), c#0, s#0, t#0)
     == _module.__default.NatBigStep($ly, c#0, s#0, t#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, c#0: DatatypeType, s#0: int, t#0: int :: 
  { _module.__default.NatBigStep(AsFuelBottom($ly), c#0, s#0, t#0) } 
  _module.__default.NatBigStep($ly, c#0, s#0, t#0)
     == _module.__default.NatBigStep($LZ, c#0, s#0, t#0));

function _module.__default.NatBigStep#requires(LayerType, DatatypeType, int, int) : bool;

// #requires axiom for _module.__default.NatBigStep
axiom (forall $ly: LayerType, c#0: DatatypeType, s#0: int, t#0: int :: 
  { _module.__default.NatBigStep#requires($ly, c#0, s#0, t#0) } 
  $Is(c#0, Tclass._module.cmd())
     ==> _module.__default.NatBigStep#requires($ly, c#0, s#0, t#0) == true);

// 1st prefix predicate axiom for _module.__default.NatBigStep_h
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, c#0: DatatypeType, s#0: int, t#0: int :: 
    { _module.__default.NatBigStep($LS($ly), c#0, s#0, t#0) } 
    $Is(c#0, Tclass._module.cmd())
         && _module.__default.NatBigStep($LS($ly), c#0, s#0, t#0)
       ==> (exists _k#0: int :: 
        { _module.__default.NatBigStep_h($LS($ly), _k#0, c#0, s#0, t#0) } 
        LitInt(0) <= _k#0
           && _module.__default.NatBigStep_h($LS($ly), _k#0, c#0, s#0, t#0)));

// 2nd prefix predicate axiom
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, c#0: DatatypeType, s#0: int, t#0: int :: 
    { _module.__default.NatBigStep($LS($ly), c#0, s#0, t#0) } 
    $Is(c#0, Tclass._module.cmd())
         && (exists _k#0: int :: 
          { _module.__default.NatBigStep_h($LS($ly), _k#0, c#0, s#0, t#0) } 
          LitInt(0) <= _k#0
             && _module.__default.NatBigStep_h($LS($ly), _k#0, c#0, s#0, t#0))
       ==> _module.__default.NatBigStep($LS($ly), c#0, s#0, t#0));

// 3rd prefix predicate axiom
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, c#0: DatatypeType, s#0: int, t#0: int, _k#0: int :: 
    { _module.__default.NatBigStep_h($ly, _k#0, c#0, s#0, t#0) } 
    $Is(c#0, Tclass._module.cmd()) && _k#0 == 0
       ==> !_module.__default.NatBigStep_h($ly, _k#0, c#0, s#0, t#0));

procedure {:verboseName "NatBigStep (well-formedness)"} CheckWellformed$$_module.__default.NatBigStep(c#0: DatatypeType where $Is(c#0, Tclass._module.cmd()), s#0: int, t#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.NatBigStep#
function _module.__default.NatBigStep_h($ly: LayerType, _k#0: int, c#0: DatatypeType, s#0: int, t#0: int) : bool
uses {
// definition axiom for _module.__default.NatBigStep_h (revealed)
axiom {:id "id247"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, _k#0: int, c#0: DatatypeType, s#0: int, t#0: int :: 
    { _module.__default.NatBigStep_h($LS($ly), _k#0, c#0, s#0, t#0) } 
    _module.__default.NatBigStep_h#canCall(_k#0, c#0, s#0, t#0)
         || (2 < $FunctionContextHeight
           && 
          LitInt(0) <= _k#0
           && $Is(c#0, Tclass._module.cmd()))
       ==> (0 < _k#0
           ==> 
          !_module.cmd.Inc_q(c#0)
           ==> (_module.cmd.Seq_q(c#0)
               ==> (var c1#3 := _module.cmd._h1(c#0); 
                (var c0#3 := _module.cmd._h0(c#0); 
                  (forall s'#10: int :: 
                    { _module.__default.NatBigStep_h($ly, _k#0 - 1, c1#3, s'#10, t#0) } 
                      { _module.__default.NatBigStep_h($ly, _k#0 - 1, c0#3, s#0, s'#10) } 
                    _module.__default.NatBigStep_h#canCall(_k#0 - 1, c0#3, s#0, s'#10)
                       && (_module.__default.NatBigStep_h($ly, _k#0 - 1, c0#3, s#0, s'#10)
                         ==> _module.__default.NatBigStep_h#canCall(_k#0 - 1, c1#3, s'#10, t#0))))))
             && (!_module.cmd.Seq_q(c#0)
               ==> (var body#3 := _module.cmd._h2(c#0); 
                s#0 != t#0
                   ==> (forall s'#11: int :: 
                    { _module.__default.NatBigStep_h($ly, _k#0 - 1, c#0, s'#11, t#0) } 
                      { _module.__default.NatBigStep_h($ly, _k#0 - 1, body#3, s#0, s'#11) } 
                    _module.__default.NatBigStep_h#canCall(_k#0 - 1, body#3, s#0, s'#11)
                       && (_module.__default.NatBigStep_h($ly, _k#0 - 1, body#3, s#0, s'#11)
                         ==> _module.__default.NatBigStep_h#canCall(_k#0 - 1, c#0, s'#11, t#0))))))
         && _module.__default.NatBigStep_h($LS($ly), _k#0, c#0, s#0, t#0)
           == (0 < _k#0
             && (if _module.cmd.Inc_q(c#0)
               then t#0 == s#0 + 1
               else (if _module.cmd.Seq_q(c#0)
                 then (var c1#2 := _module.cmd._h1(c#0); 
                  (var c0#2 := _module.cmd._h0(c#0); 
                    (exists s'#8: int :: 
                      { _module.__default.NatBigStep_h($ly, _k#0 - 1, c1#2, s'#8, t#0) } 
                        { _module.__default.NatBigStep_h($ly, _k#0 - 1, c0#2, s#0, s'#8) } 
                      _module.__default.NatBigStep_h($ly, _k#0 - 1, c0#2, s#0, s'#8)
                         && _module.__default.NatBigStep_h($ly, _k#0 - 1, c1#2, s'#8, t#0))))
                 else (var body#2 := _module.cmd._h2(c#0); 
                  s#0 == t#0
                     || (exists s'#9: int :: 
                      { _module.__default.NatBigStep_h($ly, _k#0 - 1, c#0, s'#9, t#0) } 
                        { _module.__default.NatBigStep_h($ly, _k#0 - 1, body#2, s#0, s'#9) } 
                      _module.__default.NatBigStep_h($ly, _k#0 - 1, body#2, s#0, s'#9)
                         && _module.__default.NatBigStep_h($ly, _k#0 - 1, c#0, s'#9, t#0)))))));
// definition axiom for _module.__default.NatBigStep_h for decreasing-related literals (revealed)
axiom {:id "id248"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, _k#0: int, c#0: DatatypeType, s#0: int, t#0: int :: 
    {:weight 3} { _module.__default.NatBigStep_h($LS($ly), LitInt(_k#0), c#0, s#0, t#0) } 
    _module.__default.NatBigStep_h#canCall(LitInt(_k#0), c#0, s#0, t#0)
         || (2 < $FunctionContextHeight
           && 
          LitInt(0) <= _k#0
           && $Is(c#0, Tclass._module.cmd()))
       ==> (0 < _k#0
           ==> 
          !_module.cmd.Inc_q(c#0)
           ==> (_module.cmd.Seq_q(c#0)
               ==> (var c1#5 := _module.cmd._h1(c#0); 
                (var c0#5 := _module.cmd._h0(c#0); 
                  (forall s'#14: int :: 
                    { _module.__default.NatBigStep_h($LS($ly), _k#0 - 1, c1#5, s'#14, t#0) } 
                      { _module.__default.NatBigStep_h($LS($ly), _k#0 - 1, c0#5, s#0, s'#14) } 
                    _module.__default.NatBigStep_h#canCall(_k#0 - 1, c0#5, s#0, s'#14)
                       && (_module.__default.NatBigStep_h($LS($ly), _k#0 - 1, c0#5, s#0, s'#14)
                         ==> _module.__default.NatBigStep_h#canCall(_k#0 - 1, c1#5, s'#14, t#0))))))
             && (!_module.cmd.Seq_q(c#0)
               ==> (var body#5 := _module.cmd._h2(c#0); 
                s#0 != t#0
                   ==> (forall s'#15: int :: 
                    { _module.__default.NatBigStep_h($LS($ly), _k#0 - 1, c#0, s'#15, t#0) } 
                      { _module.__default.NatBigStep_h($LS($ly), _k#0 - 1, body#5, s#0, s'#15) } 
                    _module.__default.NatBigStep_h#canCall(_k#0 - 1, body#5, s#0, s'#15)
                       && (_module.__default.NatBigStep_h($LS($ly), _k#0 - 1, body#5, s#0, s'#15)
                         ==> _module.__default.NatBigStep_h#canCall(_k#0 - 1, c#0, s'#15, t#0))))))
         && _module.__default.NatBigStep_h($LS($ly), LitInt(_k#0), c#0, s#0, t#0)
           == (0 < _k#0
             && (if _module.cmd.Inc_q(c#0)
               then t#0 == s#0 + 1
               else (if _module.cmd.Seq_q(c#0)
                 then (var c1#4 := _module.cmd._h1(c#0); 
                  (var c0#4 := _module.cmd._h0(c#0); 
                    (exists s'#12: int :: 
                      { _module.__default.NatBigStep_h($LS($ly), _k#0 - 1, c1#4, s'#12, t#0) } 
                        { _module.__default.NatBigStep_h($LS($ly), _k#0 - 1, c0#4, s#0, s'#12) } 
                      _module.__default.NatBigStep_h($LS($ly), _k#0 - 1, c0#4, s#0, s'#12)
                         && _module.__default.NatBigStep_h($LS($ly), _k#0 - 1, c1#4, s'#12, t#0))))
                 else (var body#4 := _module.cmd._h2(c#0); 
                  s#0 == t#0
                     || (exists s'#13: int :: 
                      { _module.__default.NatBigStep_h($LS($ly), _k#0 - 1, c#0, s'#13, t#0) } 
                        { _module.__default.NatBigStep_h($LS($ly), _k#0 - 1, body#4, s#0, s'#13) } 
                      _module.__default.NatBigStep_h($LS($ly), _k#0 - 1, body#4, s#0, s'#13)
                         && _module.__default.NatBigStep_h($LS($ly), _k#0 - 1, c#0, s'#13, t#0)))))));
// definition axiom for _module.__default.NatBigStep_h for all literals (revealed)
axiom {:id "id249"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, _k#0: int, c#0: DatatypeType, s#0: int, t#0: int :: 
    {:weight 3} { _module.__default.NatBigStep_h($LS($ly), LitInt(_k#0), Lit(c#0), LitInt(s#0), LitInt(t#0)) } 
    _module.__default.NatBigStep_h#canCall(LitInt(_k#0), Lit(c#0), LitInt(s#0), LitInt(t#0))
         || (2 < $FunctionContextHeight
           && 
          LitInt(0) <= _k#0
           && $Is(c#0, Tclass._module.cmd()))
       ==> (0 < _k#0
           ==> 
          !Lit(_module.cmd.Inc_q(Lit(c#0)))
           ==> (Lit(_module.cmd.Seq_q(Lit(c#0)))
               ==> (var c1#7 := Lit(_module.cmd._h1(Lit(c#0))); 
                (var c0#7 := Lit(_module.cmd._h0(Lit(c#0))); 
                  (forall s'#18: int :: 
                    { _module.__default.NatBigStep_h($LS($ly), _k#0 - 1, c1#7, s'#18, t#0) } 
                      { _module.__default.NatBigStep_h($LS($ly), _k#0 - 1, c0#7, s#0, s'#18) } 
                    _module.__default.NatBigStep_h#canCall(_k#0 - 1, c0#7, LitInt(s#0), s'#18)
                       && (_module.__default.NatBigStep_h($LS($ly), _k#0 - 1, c0#7, LitInt(s#0), s'#18)
                         ==> _module.__default.NatBigStep_h#canCall(_k#0 - 1, c1#7, s'#18, LitInt(t#0)))))))
             && (!Lit(_module.cmd.Seq_q(Lit(c#0)))
               ==> (var body#7 := Lit(_module.cmd._h2(Lit(c#0))); 
                LitInt(s#0) != LitInt(t#0)
                   ==> (forall s'#19: int :: 
                    { _module.__default.NatBigStep_h($LS($ly), _k#0 - 1, c#0, s'#19, t#0) } 
                      { _module.__default.NatBigStep_h($LS($ly), _k#0 - 1, body#7, s#0, s'#19) } 
                    _module.__default.NatBigStep_h#canCall(_k#0 - 1, body#7, LitInt(s#0), s'#19)
                       && (_module.__default.NatBigStep_h($LS($ly), _k#0 - 1, body#7, LitInt(s#0), s'#19)
                         ==> _module.__default.NatBigStep_h#canCall(_k#0 - 1, Lit(c#0), s'#19, LitInt(t#0)))))))
         && _module.__default.NatBigStep_h($LS($ly), LitInt(_k#0), Lit(c#0), LitInt(s#0), LitInt(t#0))
           == (0 < _k#0
             && (if _module.cmd.Inc_q(Lit(c#0))
               then LitInt(t#0) == LitInt(s#0 + 1)
               else (if _module.cmd.Seq_q(Lit(c#0))
                 then (var c1#6 := Lit(_module.cmd._h1(Lit(c#0))); 
                  (var c0#6 := Lit(_module.cmd._h0(Lit(c#0))); 
                    (exists s'#16: int :: 
                      { _module.__default.NatBigStep_h($LS($ly), _k#0 - 1, c1#6, s'#16, t#0) } 
                        { _module.__default.NatBigStep_h($LS($ly), _k#0 - 1, c0#6, s#0, s'#16) } 
                      _module.__default.NatBigStep_h($LS($ly), _k#0 - 1, c0#6, LitInt(s#0), s'#16)
                         && _module.__default.NatBigStep_h($LS($ly), _k#0 - 1, c1#6, s'#16, LitInt(t#0)))))
                 else (var body#6 := Lit(_module.cmd._h2(Lit(c#0))); 
                  LitInt(s#0) == LitInt(t#0)
                     || (exists s'#17: int :: 
                      { _module.__default.NatBigStep_h($LS($ly), _k#0 - 1, c#0, s'#17, t#0) } 
                        { _module.__default.NatBigStep_h($LS($ly), _k#0 - 1, body#6, s#0, s'#17) } 
                      _module.__default.NatBigStep_h($LS($ly), _k#0 - 1, body#6, LitInt(s#0), s'#17)
                         && _module.__default.NatBigStep_h($LS($ly), _k#0 - 1, Lit(c#0), s'#17, LitInt(t#0))))))));
}

function _module.__default.NatBigStep_h#canCall(_k#0: int, c#0: DatatypeType, s#0: int, t#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, _k#0: int, c#0: DatatypeType, s#0: int, t#0: int :: 
  { _module.__default.NatBigStep_h($LS($ly), _k#0, c#0, s#0, t#0) } 
  _module.__default.NatBigStep_h($LS($ly), _k#0, c#0, s#0, t#0)
     == _module.__default.NatBigStep_h($ly, _k#0, c#0, s#0, t#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, _k#0: int, c#0: DatatypeType, s#0: int, t#0: int :: 
  { _module.__default.NatBigStep_h(AsFuelBottom($ly), _k#0, c#0, s#0, t#0) } 
  _module.__default.NatBigStep_h($ly, _k#0, c#0, s#0, t#0)
     == _module.__default.NatBigStep_h($LZ, _k#0, c#0, s#0, t#0));

function _module.__default.NatBigStep_h#requires(LayerType, int, DatatypeType, int, int) : bool;

// #requires axiom for _module.__default.NatBigStep_h
axiom (forall $ly: LayerType, _k#0: int, c#0: DatatypeType, s#0: int, t#0: int :: 
  { _module.__default.NatBigStep_h#requires($ly, _k#0, c#0, s#0, t#0) } 
  LitInt(0) <= _k#0 && $Is(c#0, Tclass._module.cmd())
     ==> _module.__default.NatBigStep_h#requires($ly, _k#0, c#0, s#0, t#0) == true);

procedure {:verboseName "NatMonotonic0 (well-formedness)"} CheckWellFormed$$_module.__default.NatMonotonic0(c#0: DatatypeType
       where $Is(c#0, Tclass._module.cmd())
         && $IsAlloc(c#0, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#0), 
    s#0: int, 
    t#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "NatMonotonic0 (call)"} Call$$_module.__default.NatMonotonic0(c#0: DatatypeType
       where $Is(c#0, Tclass._module.cmd())
         && $IsAlloc(c#0, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#0), 
    s#0: int, 
    t#0: int);
  // user-defined preconditions
  requires {:id "id252"} _module.__default.NatBigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.NatBigStep($LS($LZ), c#0, s#0, t#0)
       || (_module.cmd.Inc_q(c#0) ==> t#0 == s#0 + 1);
  requires {:id "id253"} _module.__default.NatBigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.NatBigStep($LS($LZ), c#0, s#0, t#0)
       || (!_module.cmd.Inc_q(c#0)
         ==> 
        _module.cmd.Seq_q(c#0)
         ==> (var c1#0 := _module.cmd._h1(c#0); 
          (var c0#0 := _module.cmd._h0(c#0); 
            (exists s'#0: int :: 
              { _module.__default.NatBigStep($LS($LZ), c1#0, s'#0, t#0) } 
                { _module.__default.NatBigStep($LS($LZ), c0#0, s#0, s'#0) } 
              _module.__default.NatBigStep($LS($LZ), c0#0, s#0, s'#0)
                 && _module.__default.NatBigStep($LS($LZ), c1#0, s'#0, t#0)))));
  requires {:id "id254"} _module.__default.NatBigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.NatBigStep($LS($LZ), c#0, s#0, t#0)
       || (!_module.cmd.Inc_q(c#0)
         ==> 
        !_module.cmd.Seq_q(c#0)
         ==> (var body#0 := _module.cmd._h2(c#0); 
          s#0 == t#0
             || (exists s'#1: int :: 
              { _module.__default.NatBigStep($LS($LS($LZ)), c#0, s'#1, t#0) } 
                { _module.__default.NatBigStep($LS($LS($LZ)), body#0, s#0, s'#1) } 
              _module.__default.NatBigStep($LS($LS($LZ)), body#0, s#0, s'#1)
                 && _module.__default.NatBigStep($LS($LS($LZ)), c#0, s'#1, t#0))));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id255"} s#0 <= t#0;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "NatMonotonic0# (co-call)"} CoCall$$_module.__default.NatMonotonic0_h(_k#0: int where LitInt(0) <= _k#0, 
    c#1: DatatypeType
       where $Is(c#1, Tclass._module.cmd())
         && $IsAlloc(c#1, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#1), 
    s#1: int, 
    t#1: int);
  // user-defined preconditions
  requires {:id "id256"} _module.__default.NatBigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.NatBigStep_h($LS($LZ), _k#0, c#1, s#1, t#1) || 0 < _k#0;
  requires {:id "id257"} _module.__default.NatBigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.NatBigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (_module.cmd.Inc_q(c#1) ==> t#1 == s#1 + 1);
  requires {:id "id258"} _module.__default.NatBigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.NatBigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (!_module.cmd.Inc_q(c#1)
         ==> 
        _module.cmd.Seq_q(c#1)
         ==> (var c1#2 := _module.cmd._h1(c#1); 
          (var c0#2 := _module.cmd._h0(c#1); 
            (exists s'#4: int :: 
              { _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c1#2, s'#4, t#1) } 
                { _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c0#2, s#1, s'#4) } 
              _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c0#2, s#1, s'#4)
                 && _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c1#2, s'#4, t#1)))));
  requires {:id "id259"} _module.__default.NatBigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.NatBigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (!_module.cmd.Inc_q(c#1)
         ==> 
        !_module.cmd.Seq_q(c#1)
         ==> (var body#2 := _module.cmd._h2(c#1); 
          s#1 == t#1
             || (exists s'#5: int :: 
              { _module.__default.NatBigStep_h($LS($LS($LZ)), _k#0 - 1, c#1, s'#5, t#1) } 
                { _module.__default.NatBigStep_h($LS($LS($LZ)), _k#0 - 1, body#2, s#1, s'#5) } 
              _module.__default.NatBigStep_h($LS($LS($LZ)), _k#0 - 1, body#2, s#1, s'#5)
                 && _module.__default.NatBigStep_h($LS($LS($LZ)), _k#0 - 1, c#1, s'#5, t#1))));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id260"} s#1 <= t#1;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "NatMonotonic0# (correctness)"} Impl$$_module.__default.NatMonotonic0_h(_k#0: int where LitInt(0) <= _k#0, 
    c#1: DatatypeType
       where $Is(c#1, Tclass._module.cmd())
         && $IsAlloc(c#1, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#1), 
    s#1: int, 
    t#1: int)
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id261"} _module.__default.NatBigStep_h#canCall(_k#0, c#1, s#1, t#1)
     && 
    _module.__default.NatBigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
     && 
    0 < _k#0
     && (if _module.cmd.Inc_q(c#1)
       then t#1 == s#1 + 1
       else (if _module.cmd.Seq_q(c#1)
         then (var c1#5 := _module.cmd._h1(c#1); 
          (var c0#5 := _module.cmd._h0(c#1); 
            (exists s'#10: int :: 
              { _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c1#5, s'#10, t#1) } 
                { _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c0#5, s#1, s'#10) } 
              _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c0#5, s#1, s'#10)
                 && _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c1#5, s'#10, t#1))))
         else (var body#5 := _module.cmd._h2(c#1); 
          s#1 == t#1
             || (exists s'#11: int :: 
              { _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c#1, s'#11, t#1) } 
                { _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, body#5, s#1, s'#11) } 
              _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, body#5, s#1, s'#11)
                 && _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c#1, s'#11, t#1)))));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id262"} s#1 <= t#1;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NatMonotonic0# (correctness)"} Impl$$_module.__default.NatMonotonic0_h(_k#0: int, c#1: DatatypeType, s#1: int, t#1: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;

    // AddMethodImpl: NatMonotonic0#, Impl$$_module.__default.NatMonotonic0_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.cmd(c#1);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: int, $ih#c0#0: DatatypeType, $ih#s0#0: int, $ih#t0#0: int :: 
      { _module.__default.NatBigStep_h($LS($LZ), $ih#_k0#0, $ih#c0#0, $ih#s0#0, $ih#t0#0) } 
      LitInt(0) <= $ih#_k0#0
           && $Is($ih#c0#0, Tclass._module.cmd())
           && _module.__default.NatBigStep_h($LS($LZ), $ih#_k0#0, $ih#c0#0, $ih#s0#0, $ih#t0#0)
           && ((0 <= $ih#_k0#0 && $ih#_k0#0 < _k#0)
             || ($ih#_k0#0 == _k#0
               && (DtRank($ih#c0#0) < DtRank(c#1)
                 || (DtRank($ih#c0#0) == DtRank(c#1)
                   && ((0 <= $ih#s0#0 && $ih#s0#0 < s#1)
                     || ($ih#s0#0 == s#1 && 0 <= $ih#t0#0 && $ih#t0#0 < t#1))))))
         ==> $ih#s0#0 <= $ih#t0#0);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(154,1)
    assume true;
    if (0 < _k#0)
    {
    }
    else
    {
    }
}



procedure {:verboseName "NatMonotonic1 (well-formedness)"} CheckWellFormed$$_module.__default.NatMonotonic1(c#0: DatatypeType
       where $Is(c#0, Tclass._module.cmd())
         && $IsAlloc(c#0, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#0), 
    s#0: int, 
    t#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "NatMonotonic1 (call)"} Call$$_module.__default.NatMonotonic1(c#0: DatatypeType
       where $Is(c#0, Tclass._module.cmd())
         && $IsAlloc(c#0, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#0), 
    s#0: int, 
    t#0: int);
  // user-defined preconditions
  requires {:id "id265"} _module.__default.NatBigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.NatBigStep($LS($LZ), c#0, s#0, t#0)
       || (_module.cmd.Inc_q(c#0) ==> t#0 == s#0 + 1);
  requires {:id "id266"} _module.__default.NatBigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.NatBigStep($LS($LZ), c#0, s#0, t#0)
       || (!_module.cmd.Inc_q(c#0)
         ==> 
        _module.cmd.Seq_q(c#0)
         ==> (var c1#0 := _module.cmd._h1(c#0); 
          (var c0#0 := _module.cmd._h0(c#0); 
            (exists s'#0: int :: 
              { _module.__default.NatBigStep($LS($LZ), c1#0, s'#0, t#0) } 
                { _module.__default.NatBigStep($LS($LZ), c0#0, s#0, s'#0) } 
              _module.__default.NatBigStep($LS($LZ), c0#0, s#0, s'#0)
                 && _module.__default.NatBigStep($LS($LZ), c1#0, s'#0, t#0)))));
  requires {:id "id267"} _module.__default.NatBigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.NatBigStep($LS($LZ), c#0, s#0, t#0)
       || (!_module.cmd.Inc_q(c#0)
         ==> 
        !_module.cmd.Seq_q(c#0)
         ==> (var body#0 := _module.cmd._h2(c#0); 
          s#0 == t#0
             || (exists s'#1: int :: 
              { _module.__default.NatBigStep($LS($LS($LZ)), c#0, s'#1, t#0) } 
                { _module.__default.NatBigStep($LS($LS($LZ)), body#0, s#0, s'#1) } 
              _module.__default.NatBigStep($LS($LS($LZ)), body#0, s#0, s'#1)
                 && _module.__default.NatBigStep($LS($LS($LZ)), c#0, s'#1, t#0))));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id268"} s#0 <= t#0;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "NatMonotonic1# (co-call)"} CoCall$$_module.__default.NatMonotonic1_h(_k#0: int where LitInt(0) <= _k#0, 
    c#1: DatatypeType
       where $Is(c#1, Tclass._module.cmd())
         && $IsAlloc(c#1, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#1), 
    s#1: int, 
    t#1: int);
  // user-defined preconditions
  requires {:id "id269"} _module.__default.NatBigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.NatBigStep_h($LS($LZ), _k#0, c#1, s#1, t#1) || 0 < _k#0;
  requires {:id "id270"} _module.__default.NatBigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.NatBigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (_module.cmd.Inc_q(c#1) ==> t#1 == s#1 + 1);
  requires {:id "id271"} _module.__default.NatBigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.NatBigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (!_module.cmd.Inc_q(c#1)
         ==> 
        _module.cmd.Seq_q(c#1)
         ==> (var c1#2 := _module.cmd._h1(c#1); 
          (var c0#2 := _module.cmd._h0(c#1); 
            (exists s'#4: int :: 
              { _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c1#2, s'#4, t#1) } 
                { _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c0#2, s#1, s'#4) } 
              _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c0#2, s#1, s'#4)
                 && _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c1#2, s'#4, t#1)))));
  requires {:id "id272"} _module.__default.NatBigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.NatBigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (!_module.cmd.Inc_q(c#1)
         ==> 
        !_module.cmd.Seq_q(c#1)
         ==> (var body#2 := _module.cmd._h2(c#1); 
          s#1 == t#1
             || (exists s'#5: int :: 
              { _module.__default.NatBigStep_h($LS($LS($LZ)), _k#0 - 1, c#1, s'#5, t#1) } 
                { _module.__default.NatBigStep_h($LS($LS($LZ)), _k#0 - 1, body#2, s#1, s'#5) } 
              _module.__default.NatBigStep_h($LS($LS($LZ)), _k#0 - 1, body#2, s#1, s'#5)
                 && _module.__default.NatBigStep_h($LS($LS($LZ)), _k#0 - 1, c#1, s'#5, t#1))));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id273"} s#1 <= t#1;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "NatMonotonic1# (correctness)"} Impl$$_module.__default.NatMonotonic1_h(_k#0: int where LitInt(0) <= _k#0, 
    c#1: DatatypeType
       where $Is(c#1, Tclass._module.cmd())
         && $IsAlloc(c#1, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#1), 
    s#1: int, 
    t#1: int)
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id274"} _module.__default.NatBigStep_h#canCall(_k#0, c#1, s#1, t#1)
     && 
    _module.__default.NatBigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
     && 
    0 < _k#0
     && (if _module.cmd.Inc_q(c#1)
       then t#1 == s#1 + 1
       else (if _module.cmd.Seq_q(c#1)
         then (var c1#5 := _module.cmd._h1(c#1); 
          (var c0#5 := _module.cmd._h0(c#1); 
            (exists s'#10: int :: 
              { _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c1#5, s'#10, t#1) } 
                { _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c0#5, s#1, s'#10) } 
              _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c0#5, s#1, s'#10)
                 && _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c1#5, s'#10, t#1))))
         else (var body#5 := _module.cmd._h2(c#1); 
          s#1 == t#1
             || (exists s'#11: int :: 
              { _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c#1, s'#11, t#1) } 
                { _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, body#5, s#1, s'#11) } 
              _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, body#5, s#1, s'#11)
                 && _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c#1, s'#11, t#1)))));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id275"} s#1 <= t#1;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NatMonotonic1# (correctness)"} Impl$$_module.__default.NatMonotonic1_h(_k#0: int, c#1: DatatypeType, s#1: int, t#1: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var _mcc#2#0: DatatypeType;
  var body#6: DatatypeType;
  var let#0_0_0#0#0: DatatypeType;
  var s'#12: int;
  var s'#13: int;
  var ##_k#0: int;
  var ##c#1: DatatypeType;
  var ##s#1: int;
  var ##t#1: int;
  var ##_k#1: int;
  var ##c#2: DatatypeType;
  var ##s#2: int;
  var ##t#2: int;
  var _k##0: int;
  var c##0: DatatypeType;
  var s##0: int;
  var t##0: int;
  var _k##1: int;
  var c##1: DatatypeType;
  var s##1: int;
  var t##1: int;
  var _mcc#0#0: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var c1#6: DatatypeType;
  var let#0_1_0#0#0: DatatypeType;
  var c0#6: DatatypeType;
  var let#0_1_1#0#0: DatatypeType;
  var s'#14: int;
  var s'#15: int;
  var ##_k#2: int;
  var ##c#3: DatatypeType;
  var ##s#3: int;
  var ##t#3: int;
  var ##_k#3: int;
  var ##c#4: DatatypeType;
  var ##s#4: int;
  var ##t#4: int;
  var _k##2: int;
  var c##2: DatatypeType;
  var s##2: int;
  var t##2: int;
  var _k##3: int;
  var c##3: DatatypeType;
  var s##3: int;
  var t##3: int;

    // AddMethodImpl: NatMonotonic1#, Impl$$_module.__default.NatMonotonic1_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.cmd(c#1);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: int, $ih#c0#0: DatatypeType, $ih#s0#0: int, $ih#t0#0: int :: 
      { _module.__default.NatBigStep_h($LS($LZ), $ih#_k0#0, $ih#c0#0, $ih#s0#0, $ih#t0#0) } 
      LitInt(0) <= $ih#_k0#0
           && $Is($ih#c0#0, Tclass._module.cmd())
           && _module.__default.NatBigStep_h($LS($LZ), $ih#_k0#0, $ih#c0#0, $ih#s0#0, $ih#t0#0)
           && ((0 <= $ih#_k0#0 && $ih#_k0#0 < _k#0)
             || ($ih#_k0#0 == _k#0
               && (DtRank($ih#c0#0) < DtRank(c#1)
                 || (DtRank($ih#c0#0) == DtRank(c#1)
                   && ((0 <= $ih#s0#0 && $ih#s0#0 < s#1)
                     || ($ih#s0#0 == s#1 && 0 <= $ih#t0#0 && $ih#t0#0 < t#1))))))
         ==> $ih#s0#0 <= $ih#t0#0);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(162,1)
    assume true;
    if (0 < _k#0)
    {
        assume true;
        havoc _mcc#2#0;
        havoc _mcc#0#0, _mcc#1#0;
        if (c#1 == #_module.cmd.Inc())
        {
        }
        else if (c#1 == #_module.cmd.Seq(_mcc#0#0, _mcc#1#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.cmd())
               && $IsAlloc(_mcc#0#0, Tclass._module.cmd(), $Heap);
            assume $Is(_mcc#1#0, Tclass._module.cmd())
               && $IsAlloc(_mcc#1#0, Tclass._module.cmd(), $Heap);
            havoc c1#6;
            assume $Is(c1#6, Tclass._module.cmd()) && $IsAlloc(c1#6, Tclass._module.cmd(), $Heap);
            assume {:id "id286"} let#0_1_0#0#0 == _mcc#1#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_1_0#0#0, Tclass._module.cmd());
            assume {:id "id287"} c1#6 == let#0_1_0#0#0;
            havoc c0#6;
            assume $Is(c0#6, Tclass._module.cmd()) && $IsAlloc(c0#6, Tclass._module.cmd(), $Heap);
            assume {:id "id288"} let#0_1_1#0#0 == _mcc#0#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_1_1#0#0, Tclass._module.cmd());
            assume {:id "id289"} c0#6 == let#0_1_1#0#0;
            // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(166,12)
            havoc s'#15;
            if (true)
            {
                assert {:id "id290"} $Is(_k#0 - 1, Tclass._System.nat());
                ##_k#2 := _k#0 - 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##_k#2, Tclass._System.nat(), $Heap);
                ##c#3 := c0#6;
                // assume allocatedness for argument to function
                assume $IsAlloc(##c#3, Tclass._module.cmd(), $Heap);
                ##s#3 := s#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#3, TInt, $Heap);
                ##t#3 := s'#15;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#3, TInt, $Heap);
                assume _module.__default.NatBigStep_h#canCall(_k#0 - 1, c0#6, s#1, s'#15);
                if (_module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c0#6, s#1, s'#15))
                {
                    assert {:id "id291"} $Is(_k#0 - 1, Tclass._System.nat());
                    ##_k#3 := _k#0 - 1;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##_k#3, Tclass._System.nat(), $Heap);
                    ##c#4 := c1#6;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##c#4, Tclass._module.cmd(), $Heap);
                    ##s#4 := s'#15;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#4, TInt, $Heap);
                    ##t#4 := t#1;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#4, TInt, $Heap);
                    assume _module.__default.NatBigStep_h#canCall(_k#0 - 1, c1#6, s'#15, t#1);
                }

                assume _module.__default.NatBigStep_h#canCall(_k#0 - 1, c0#6, s#1, s'#15)
                   && (_module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c0#6, s#1, s'#15)
                     ==> _module.__default.NatBigStep_h#canCall(_k#0 - 1, c1#6, s'#15, t#1));
            }

            assert {:id "id292"} ($Is(LitInt(0), TInt)
                 && 
                _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c0#6, s#1, LitInt(0))
                 && _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c1#6, LitInt(0), t#1))
               || (exists $as#s'0_1_0#0: int :: 
                _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c0#6, s#1, $as#s'0_1_0#0)
                   && _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c1#6, $as#s'0_1_0#0, t#1));
            havoc s'#14;
            assume {:id "id293"} _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c0#6, s#1, s'#14)
               && _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c1#6, s'#14, t#1);
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(167,18)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id294"} $Is(_k#0 - 1, Tclass._System.nat());
            _k##2 := _k#0 - 1;
            assume true;
            // ProcessCallStmt: CheckSubrange
            c##2 := c0#6;
            assume true;
            // ProcessCallStmt: CheckSubrange
            s##2 := s#1;
            assume true;
            // ProcessCallStmt: CheckSubrange
            t##2 := s'#14;
            call {:id "id295"} CoCall$$_module.__default.NatMonotonic1_h(_k##2, c##2, s##2, t##2);
            // TrCallStmt: After ProcessCallStmt
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(168,18)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id296"} $Is(_k#0 - 1, Tclass._System.nat());
            _k##3 := _k#0 - 1;
            assume true;
            // ProcessCallStmt: CheckSubrange
            c##3 := c1#6;
            assume true;
            // ProcessCallStmt: CheckSubrange
            s##3 := s'#14;
            assume true;
            // ProcessCallStmt: CheckSubrange
            t##3 := t#1;
            call {:id "id297"} CoCall$$_module.__default.NatMonotonic1_h(_k##3, c##3, s##3, t##3);
            // TrCallStmt: After ProcessCallStmt
        }
        else if (c#1 == #_module.cmd.Repeat(_mcc#2#0))
        {
            assume $Is(_mcc#2#0, Tclass._module.cmd())
               && $IsAlloc(_mcc#2#0, Tclass._module.cmd(), $Heap);
            havoc body#6;
            assume $Is(body#6, Tclass._module.cmd())
               && $IsAlloc(body#6, Tclass._module.cmd(), $Heap);
            assume {:id "id276"} let#0_0_0#0#0 == _mcc#2#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_0_0#0#0, Tclass._module.cmd());
            assume {:id "id277"} body#6 == let#0_0_0#0#0;
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(170,5)
            assume true;
            if (s#1 == t#1)
            {
            }
            else
            {
                // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(172,14)
                havoc s'#13;
                if (true)
                {
                    assert {:id "id278"} $Is(_k#0 - 1, Tclass._System.nat());
                    ##_k#0 := _k#0 - 1;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##_k#0, Tclass._System.nat(), $Heap);
                    ##c#1 := body#6;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##c#1, Tclass._module.cmd(), $Heap);
                    ##s#1 := s#1;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#1, TInt, $Heap);
                    ##t#1 := s'#13;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#1, TInt, $Heap);
                    assume _module.__default.NatBigStep_h#canCall(_k#0 - 1, body#6, s#1, s'#13);
                    if (_module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, body#6, s#1, s'#13))
                    {
                        assert {:id "id279"} $Is(_k#0 - 1, Tclass._System.nat());
                        ##_k#1 := _k#0 - 1;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##_k#1, Tclass._System.nat(), $Heap);
                        ##c#2 := c#1;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##c#2, Tclass._module.cmd(), $Heap);
                        ##s#2 := s'#13;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##s#2, TInt, $Heap);
                        ##t#2 := t#1;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##t#2, TInt, $Heap);
                        assume _module.__default.NatBigStep_h#canCall(_k#0 - 1, c#1, s'#13, t#1);
                    }

                    assume _module.__default.NatBigStep_h#canCall(_k#0 - 1, body#6, s#1, s'#13)
                       && (_module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, body#6, s#1, s'#13)
                         ==> _module.__default.NatBigStep_h#canCall(_k#0 - 1, c#1, s'#13, t#1));
                }

                assert {:id "id280"} ($Is(LitInt(0), TInt)
                     && 
                    _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, body#6, s#1, LitInt(0))
                     && _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c#1, LitInt(0), t#1))
                   || (exists $as#s'0_0_1_0#0: int :: 
                    _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, body#6, s#1, $as#s'0_0_1_0#0)
                       && _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c#1, $as#s'0_0_1_0#0, t#1));
                havoc s'#12;
                assume {:id "id281"} _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, body#6, s#1, s'#12)
                   && _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c#1, s'#12, t#1);
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(173,20)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                assert {:id "id282"} $Is(_k#0 - 1, Tclass._System.nat());
                _k##0 := _k#0 - 1;
                assume true;
                // ProcessCallStmt: CheckSubrange
                c##0 := body#6;
                assume true;
                // ProcessCallStmt: CheckSubrange
                s##0 := s#1;
                assume true;
                // ProcessCallStmt: CheckSubrange
                t##0 := s'#12;
                call {:id "id283"} CoCall$$_module.__default.NatMonotonic1_h(_k##0, c##0, s##0, t##0);
                // TrCallStmt: After ProcessCallStmt
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(174,20)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                assert {:id "id284"} $Is(_k#0 - 1, Tclass._System.nat());
                _k##1 := _k#0 - 1;
                assume true;
                // ProcessCallStmt: CheckSubrange
                c##1 := c#1;
                assume true;
                // ProcessCallStmt: CheckSubrange
                s##1 := s'#12;
                assume true;
                // ProcessCallStmt: CheckSubrange
                t##1 := t#1;
                call {:id "id285"} CoCall$$_module.__default.NatMonotonic1_h(_k##1, c##1, s##1, t##1);
                // TrCallStmt: After ProcessCallStmt
            }
        }
        else
        {
            assume false;
        }
    }
    else
    {
    }
}



procedure {:verboseName "NatMonotonic2 (well-formedness)"} CheckWellFormed$$_module.__default.NatMonotonic2(c#0: DatatypeType
       where $Is(c#0, Tclass._module.cmd())
         && $IsAlloc(c#0, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#0), 
    s#0: int, 
    t#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "NatMonotonic2 (call)"} Call$$_module.__default.NatMonotonic2(c#0: DatatypeType
       where $Is(c#0, Tclass._module.cmd())
         && $IsAlloc(c#0, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#0), 
    s#0: int, 
    t#0: int);
  // user-defined preconditions
  requires {:id "id300"} _module.__default.NatBigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.NatBigStep($LS($LZ), c#0, s#0, t#0)
       || (_module.cmd.Inc_q(c#0) ==> t#0 == s#0 + 1);
  requires {:id "id301"} _module.__default.NatBigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.NatBigStep($LS($LZ), c#0, s#0, t#0)
       || (!_module.cmd.Inc_q(c#0)
         ==> 
        _module.cmd.Seq_q(c#0)
         ==> (var c1#0 := _module.cmd._h1(c#0); 
          (var c0#0 := _module.cmd._h0(c#0); 
            (exists s'#0: int :: 
              { _module.__default.NatBigStep($LS($LZ), c1#0, s'#0, t#0) } 
                { _module.__default.NatBigStep($LS($LZ), c0#0, s#0, s'#0) } 
              _module.__default.NatBigStep($LS($LZ), c0#0, s#0, s'#0)
                 && _module.__default.NatBigStep($LS($LZ), c1#0, s'#0, t#0)))));
  requires {:id "id302"} _module.__default.NatBigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.NatBigStep($LS($LZ), c#0, s#0, t#0)
       || (!_module.cmd.Inc_q(c#0)
         ==> 
        !_module.cmd.Seq_q(c#0)
         ==> (var body#0 := _module.cmd._h2(c#0); 
          s#0 == t#0
             || (exists s'#1: int :: 
              { _module.__default.NatBigStep($LS($LS($LZ)), c#0, s'#1, t#0) } 
                { _module.__default.NatBigStep($LS($LS($LZ)), body#0, s#0, s'#1) } 
              _module.__default.NatBigStep($LS($LS($LZ)), body#0, s#0, s'#1)
                 && _module.__default.NatBigStep($LS($LS($LZ)), c#0, s'#1, t#0))));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id303"} s#0 <= t#0;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "NatMonotonic2# (co-call)"} CoCall$$_module.__default.NatMonotonic2_h(_k#0: int where LitInt(0) <= _k#0, 
    c#1: DatatypeType
       where $Is(c#1, Tclass._module.cmd())
         && $IsAlloc(c#1, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#1), 
    s#1: int, 
    t#1: int);
  // user-defined preconditions
  requires {:id "id304"} _module.__default.NatBigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.NatBigStep_h($LS($LZ), _k#0, c#1, s#1, t#1) || 0 < _k#0;
  requires {:id "id305"} _module.__default.NatBigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.NatBigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (_module.cmd.Inc_q(c#1) ==> t#1 == s#1 + 1);
  requires {:id "id306"} _module.__default.NatBigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.NatBigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (!_module.cmd.Inc_q(c#1)
         ==> 
        _module.cmd.Seq_q(c#1)
         ==> (var c1#2 := _module.cmd._h1(c#1); 
          (var c0#2 := _module.cmd._h0(c#1); 
            (exists s'#4: int :: 
              { _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c1#2, s'#4, t#1) } 
                { _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c0#2, s#1, s'#4) } 
              _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c0#2, s#1, s'#4)
                 && _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c1#2, s'#4, t#1)))));
  requires {:id "id307"} _module.__default.NatBigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.NatBigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (!_module.cmd.Inc_q(c#1)
         ==> 
        !_module.cmd.Seq_q(c#1)
         ==> (var body#2 := _module.cmd._h2(c#1); 
          s#1 == t#1
             || (exists s'#5: int :: 
              { _module.__default.NatBigStep_h($LS($LS($LZ)), _k#0 - 1, c#1, s'#5, t#1) } 
                { _module.__default.NatBigStep_h($LS($LS($LZ)), _k#0 - 1, body#2, s#1, s'#5) } 
              _module.__default.NatBigStep_h($LS($LS($LZ)), _k#0 - 1, body#2, s#1, s'#5)
                 && _module.__default.NatBigStep_h($LS($LS($LZ)), _k#0 - 1, c#1, s'#5, t#1))));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id308"} s#1 <= t#1;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "NatMonotonic2# (correctness)"} Impl$$_module.__default.NatMonotonic2_h(_k#0: int where LitInt(0) <= _k#0, 
    c#1: DatatypeType
       where $Is(c#1, Tclass._module.cmd())
         && $IsAlloc(c#1, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#1), 
    s#1: int, 
    t#1: int)
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id309"} _module.__default.NatBigStep_h#canCall(_k#0, c#1, s#1, t#1)
     && 
    _module.__default.NatBigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
     && 
    0 < _k#0
     && (if _module.cmd.Inc_q(c#1)
       then t#1 == s#1 + 1
       else (if _module.cmd.Seq_q(c#1)
         then (var c1#5 := _module.cmd._h1(c#1); 
          (var c0#5 := _module.cmd._h0(c#1); 
            (exists s'#10: int :: 
              { _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c1#5, s'#10, t#1) } 
                { _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c0#5, s#1, s'#10) } 
              _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c0#5, s#1, s'#10)
                 && _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c1#5, s'#10, t#1))))
         else (var body#5 := _module.cmd._h2(c#1); 
          s#1 == t#1
             || (exists s'#11: int :: 
              { _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c#1, s'#11, t#1) } 
                { _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, body#5, s#1, s'#11) } 
              _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, body#5, s#1, s'#11)
                 && _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c#1, s'#11, t#1)))));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id310"} s#1 <= t#1;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NatMonotonic2# (correctness)"} Impl$$_module.__default.NatMonotonic2_h(_k#0: int, c#1: DatatypeType, s#1: int, t#1: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: NatMonotonic2#, Impl$$_module.__default.NatMonotonic2_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(182,1)
    assume true;
    if (0 < _k#0)
    {
    }
    else
    {
    }
}



procedure {:verboseName "NatMonotonic3 (well-formedness)"} CheckWellFormed$$_module.__default.NatMonotonic3(c#0: DatatypeType
       where $Is(c#0, Tclass._module.cmd())
         && $IsAlloc(c#0, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#0), 
    s#0: int, 
    t#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "NatMonotonic3 (call)"} Call$$_module.__default.NatMonotonic3(c#0: DatatypeType
       where $Is(c#0, Tclass._module.cmd())
         && $IsAlloc(c#0, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#0), 
    s#0: int, 
    t#0: int);
  // user-defined preconditions
  requires {:id "id313"} _module.__default.NatBigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.NatBigStep($LS($LZ), c#0, s#0, t#0)
       || (_module.cmd.Inc_q(c#0) ==> t#0 == s#0 + 1);
  requires {:id "id314"} _module.__default.NatBigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.NatBigStep($LS($LZ), c#0, s#0, t#0)
       || (!_module.cmd.Inc_q(c#0)
         ==> 
        _module.cmd.Seq_q(c#0)
         ==> (var c1#0 := _module.cmd._h1(c#0); 
          (var c0#0 := _module.cmd._h0(c#0); 
            (exists s'#0: int :: 
              { _module.__default.NatBigStep($LS($LZ), c1#0, s'#0, t#0) } 
                { _module.__default.NatBigStep($LS($LZ), c0#0, s#0, s'#0) } 
              _module.__default.NatBigStep($LS($LZ), c0#0, s#0, s'#0)
                 && _module.__default.NatBigStep($LS($LZ), c1#0, s'#0, t#0)))));
  requires {:id "id315"} _module.__default.NatBigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.NatBigStep($LS($LZ), c#0, s#0, t#0)
       || (!_module.cmd.Inc_q(c#0)
         ==> 
        !_module.cmd.Seq_q(c#0)
         ==> (var body#0 := _module.cmd._h2(c#0); 
          s#0 == t#0
             || (exists s'#1: int :: 
              { _module.__default.NatBigStep($LS($LS($LZ)), c#0, s'#1, t#0) } 
                { _module.__default.NatBigStep($LS($LS($LZ)), body#0, s#0, s'#1) } 
              _module.__default.NatBigStep($LS($LS($LZ)), body#0, s#0, s'#1)
                 && _module.__default.NatBigStep($LS($LS($LZ)), c#0, s'#1, t#0))));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id316"} s#0 <= t#0;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "NatMonotonic3# (co-call)"} CoCall$$_module.__default.NatMonotonic3_h(_k#0: int where LitInt(0) <= _k#0, 
    c#1: DatatypeType
       where $Is(c#1, Tclass._module.cmd())
         && $IsAlloc(c#1, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#1), 
    s#1: int, 
    t#1: int);
  // user-defined preconditions
  requires {:id "id317"} _module.__default.NatBigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.NatBigStep_h($LS($LZ), _k#0, c#1, s#1, t#1) || 0 < _k#0;
  requires {:id "id318"} _module.__default.NatBigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.NatBigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (_module.cmd.Inc_q(c#1) ==> t#1 == s#1 + 1);
  requires {:id "id319"} _module.__default.NatBigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.NatBigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (!_module.cmd.Inc_q(c#1)
         ==> 
        _module.cmd.Seq_q(c#1)
         ==> (var c1#2 := _module.cmd._h1(c#1); 
          (var c0#2 := _module.cmd._h0(c#1); 
            (exists s'#4: int :: 
              { _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c1#2, s'#4, t#1) } 
                { _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c0#2, s#1, s'#4) } 
              _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c0#2, s#1, s'#4)
                 && _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c1#2, s'#4, t#1)))));
  requires {:id "id320"} _module.__default.NatBigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.NatBigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (!_module.cmd.Inc_q(c#1)
         ==> 
        !_module.cmd.Seq_q(c#1)
         ==> (var body#2 := _module.cmd._h2(c#1); 
          s#1 == t#1
             || (exists s'#5: int :: 
              { _module.__default.NatBigStep_h($LS($LS($LZ)), _k#0 - 1, c#1, s'#5, t#1) } 
                { _module.__default.NatBigStep_h($LS($LS($LZ)), _k#0 - 1, body#2, s#1, s'#5) } 
              _module.__default.NatBigStep_h($LS($LS($LZ)), _k#0 - 1, body#2, s#1, s'#5)
                 && _module.__default.NatBigStep_h($LS($LS($LZ)), _k#0 - 1, c#1, s'#5, t#1))));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id321"} s#1 <= t#1;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "NatMonotonic3# (correctness)"} Impl$$_module.__default.NatMonotonic3_h(_k#0: int where LitInt(0) <= _k#0, 
    c#1: DatatypeType
       where $Is(c#1, Tclass._module.cmd())
         && $IsAlloc(c#1, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#1), 
    s#1: int, 
    t#1: int)
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id322"} _module.__default.NatBigStep_h#canCall(_k#0, c#1, s#1, t#1)
     && 
    _module.__default.NatBigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
     && 
    0 < _k#0
     && (if _module.cmd.Inc_q(c#1)
       then t#1 == s#1 + 1
       else (if _module.cmd.Seq_q(c#1)
         then (var c1#5 := _module.cmd._h1(c#1); 
          (var c0#5 := _module.cmd._h0(c#1); 
            (exists s'#10: int :: 
              { _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c1#5, s'#10, t#1) } 
                { _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c0#5, s#1, s'#10) } 
              _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c0#5, s#1, s'#10)
                 && _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c1#5, s'#10, t#1))))
         else (var body#5 := _module.cmd._h2(c#1); 
          s#1 == t#1
             || (exists s'#11: int :: 
              { _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c#1, s'#11, t#1) } 
                { _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, body#5, s#1, s'#11) } 
              _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, body#5, s#1, s'#11)
                 && _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c#1, s'#11, t#1)))));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id323"} s#1 <= t#1;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NatMonotonic3# (correctness)"} Impl$$_module.__default.NatMonotonic3_h(_k#0: int, c#1: DatatypeType, s#1: int, t#1: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var _mcc#2#0: DatatypeType;
  var body#6: DatatypeType;
  var let#0_0_0#0#0: DatatypeType;
  var s'#12: int;
  var s'#13: int;
  var ##_k#0: int;
  var ##c#1: DatatypeType;
  var ##s#1: int;
  var ##t#1: int;
  var ##_k#1: int;
  var ##c#2: DatatypeType;
  var ##s#2: int;
  var ##t#2: int;
  var _k##0: int;
  var c##0: DatatypeType;
  var s##0: int;
  var t##0: int;
  var _k##1: int;
  var c##1: DatatypeType;
  var s##1: int;
  var t##1: int;
  var _mcc#0#0: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var c1#6: DatatypeType;
  var let#0_1_0#0#0: DatatypeType;
  var c0#6: DatatypeType;
  var let#0_1_1#0#0: DatatypeType;
  var s'#14: int;
  var s'#15: int;
  var ##_k#2: int;
  var ##c#3: DatatypeType;
  var ##s#3: int;
  var ##t#3: int;
  var ##_k#3: int;
  var ##c#4: DatatypeType;
  var ##s#4: int;
  var ##t#4: int;
  var _k##2: int;
  var c##2: DatatypeType;
  var s##2: int;
  var t##2: int;
  var _k##3: int;
  var c##3: DatatypeType;
  var s##3: int;
  var t##3: int;

    // AddMethodImpl: NatMonotonic3#, Impl$$_module.__default.NatMonotonic3_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(189,1)
    assume true;
    if (0 < _k#0)
    {
        assume true;
        havoc _mcc#2#0;
        havoc _mcc#0#0, _mcc#1#0;
        if (c#1 == #_module.cmd.Inc())
        {
        }
        else if (c#1 == #_module.cmd.Seq(_mcc#0#0, _mcc#1#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.cmd())
               && $IsAlloc(_mcc#0#0, Tclass._module.cmd(), $Heap);
            assume $Is(_mcc#1#0, Tclass._module.cmd())
               && $IsAlloc(_mcc#1#0, Tclass._module.cmd(), $Heap);
            havoc c1#6;
            assume $Is(c1#6, Tclass._module.cmd()) && $IsAlloc(c1#6, Tclass._module.cmd(), $Heap);
            assume {:id "id334"} let#0_1_0#0#0 == _mcc#1#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_1_0#0#0, Tclass._module.cmd());
            assume {:id "id335"} c1#6 == let#0_1_0#0#0;
            havoc c0#6;
            assume $Is(c0#6, Tclass._module.cmd()) && $IsAlloc(c0#6, Tclass._module.cmd(), $Heap);
            assume {:id "id336"} let#0_1_1#0#0 == _mcc#0#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_1_1#0#0, Tclass._module.cmd());
            assume {:id "id337"} c0#6 == let#0_1_1#0#0;
            // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(193,12)
            havoc s'#15;
            if (true)
            {
                assert {:id "id338"} $Is(_k#0 - 1, Tclass._System.nat());
                ##_k#2 := _k#0 - 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##_k#2, Tclass._System.nat(), $Heap);
                ##c#3 := c0#6;
                // assume allocatedness for argument to function
                assume $IsAlloc(##c#3, Tclass._module.cmd(), $Heap);
                ##s#3 := s#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#3, TInt, $Heap);
                ##t#3 := s'#15;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#3, TInt, $Heap);
                assume _module.__default.NatBigStep_h#canCall(_k#0 - 1, c0#6, s#1, s'#15);
                if (_module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c0#6, s#1, s'#15))
                {
                    assert {:id "id339"} $Is(_k#0 - 1, Tclass._System.nat());
                    ##_k#3 := _k#0 - 1;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##_k#3, Tclass._System.nat(), $Heap);
                    ##c#4 := c1#6;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##c#4, Tclass._module.cmd(), $Heap);
                    ##s#4 := s'#15;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#4, TInt, $Heap);
                    ##t#4 := t#1;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#4, TInt, $Heap);
                    assume _module.__default.NatBigStep_h#canCall(_k#0 - 1, c1#6, s'#15, t#1);
                }

                assume _module.__default.NatBigStep_h#canCall(_k#0 - 1, c0#6, s#1, s'#15)
                   && (_module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c0#6, s#1, s'#15)
                     ==> _module.__default.NatBigStep_h#canCall(_k#0 - 1, c1#6, s'#15, t#1));
            }

            assert {:id "id340"} ($Is(LitInt(0), TInt)
                 && 
                _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c0#6, s#1, LitInt(0))
                 && _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c1#6, LitInt(0), t#1))
               || (exists $as#s'0_1_0#0: int :: 
                _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c0#6, s#1, $as#s'0_1_0#0)
                   && _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c1#6, $as#s'0_1_0#0, t#1));
            havoc s'#14;
            assume {:id "id341"} _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c0#6, s#1, s'#14)
               && _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c1#6, s'#14, t#1);
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(194,18)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id342"} $Is(_k#0 - 1, Tclass._System.nat());
            _k##2 := _k#0 - 1;
            assume true;
            // ProcessCallStmt: CheckSubrange
            c##2 := c0#6;
            assume true;
            // ProcessCallStmt: CheckSubrange
            s##2 := s#1;
            assume true;
            // ProcessCallStmt: CheckSubrange
            t##2 := s'#14;
            call {:id "id343"} CoCall$$_module.__default.NatMonotonic3_h(_k##2, c##2, s##2, t##2);
            // TrCallStmt: After ProcessCallStmt
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(195,18)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id344"} $Is(_k#0 - 1, Tclass._System.nat());
            _k##3 := _k#0 - 1;
            assume true;
            // ProcessCallStmt: CheckSubrange
            c##3 := c1#6;
            assume true;
            // ProcessCallStmt: CheckSubrange
            s##3 := s'#14;
            assume true;
            // ProcessCallStmt: CheckSubrange
            t##3 := t#1;
            call {:id "id345"} CoCall$$_module.__default.NatMonotonic3_h(_k##3, c##3, s##3, t##3);
            // TrCallStmt: After ProcessCallStmt
        }
        else if (c#1 == #_module.cmd.Repeat(_mcc#2#0))
        {
            assume $Is(_mcc#2#0, Tclass._module.cmd())
               && $IsAlloc(_mcc#2#0, Tclass._module.cmd(), $Heap);
            havoc body#6;
            assume $Is(body#6, Tclass._module.cmd())
               && $IsAlloc(body#6, Tclass._module.cmd(), $Heap);
            assume {:id "id324"} let#0_0_0#0#0 == _mcc#2#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_0_0#0#0, Tclass._module.cmd());
            assume {:id "id325"} body#6 == let#0_0_0#0#0;
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(197,5)
            assume true;
            if (s#1 == t#1)
            {
            }
            else
            {
                // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(199,14)
                havoc s'#13;
                if (true)
                {
                    assert {:id "id326"} $Is(_k#0 - 1, Tclass._System.nat());
                    ##_k#0 := _k#0 - 1;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##_k#0, Tclass._System.nat(), $Heap);
                    ##c#1 := body#6;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##c#1, Tclass._module.cmd(), $Heap);
                    ##s#1 := s#1;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#1, TInt, $Heap);
                    ##t#1 := s'#13;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#1, TInt, $Heap);
                    assume _module.__default.NatBigStep_h#canCall(_k#0 - 1, body#6, s#1, s'#13);
                    if (_module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, body#6, s#1, s'#13))
                    {
                        assert {:id "id327"} $Is(_k#0 - 1, Tclass._System.nat());
                        ##_k#1 := _k#0 - 1;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##_k#1, Tclass._System.nat(), $Heap);
                        ##c#2 := c#1;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##c#2, Tclass._module.cmd(), $Heap);
                        ##s#2 := s'#13;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##s#2, TInt, $Heap);
                        ##t#2 := t#1;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##t#2, TInt, $Heap);
                        assume _module.__default.NatBigStep_h#canCall(_k#0 - 1, c#1, s'#13, t#1);
                    }

                    assume _module.__default.NatBigStep_h#canCall(_k#0 - 1, body#6, s#1, s'#13)
                       && (_module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, body#6, s#1, s'#13)
                         ==> _module.__default.NatBigStep_h#canCall(_k#0 - 1, c#1, s'#13, t#1));
                }

                assert {:id "id328"} ($Is(LitInt(0), TInt)
                     && 
                    _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, body#6, s#1, LitInt(0))
                     && _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c#1, LitInt(0), t#1))
                   || (exists $as#s'0_0_1_0#0: int :: 
                    _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, body#6, s#1, $as#s'0_0_1_0#0)
                       && _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c#1, $as#s'0_0_1_0#0, t#1));
                havoc s'#12;
                assume {:id "id329"} _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, body#6, s#1, s'#12)
                   && _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c#1, s'#12, t#1);
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(200,20)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                assert {:id "id330"} $Is(_k#0 - 1, Tclass._System.nat());
                _k##0 := _k#0 - 1;
                assume true;
                // ProcessCallStmt: CheckSubrange
                c##0 := body#6;
                assume true;
                // ProcessCallStmt: CheckSubrange
                s##0 := s#1;
                assume true;
                // ProcessCallStmt: CheckSubrange
                t##0 := s'#12;
                call {:id "id331"} CoCall$$_module.__default.NatMonotonic3_h(_k##0, c##0, s##0, t##0);
                // TrCallStmt: After ProcessCallStmt
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(201,20)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                assert {:id "id332"} $Is(_k#0 - 1, Tclass._System.nat());
                _k##1 := _k#0 - 1;
                assume true;
                // ProcessCallStmt: CheckSubrange
                c##1 := c#1;
                assume true;
                // ProcessCallStmt: CheckSubrange
                s##1 := s'#12;
                assume true;
                // ProcessCallStmt: CheckSubrange
                t##1 := t#1;
                call {:id "id333"} CoCall$$_module.__default.NatMonotonic3_h(_k##1, c##1, s##1, t##1);
                // TrCallStmt: After ProcessCallStmt
            }
        }
        else
        {
            assume false;
        }
    }
    else
    {
    }
}



procedure {:verboseName "BadNatMonotonic0 (well-formedness)"} CheckWellFormed$$_module.__default.BadNatMonotonic0(c#0: DatatypeType
       where $Is(c#0, Tclass._module.cmd())
         && $IsAlloc(c#0, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#0), 
    s#0: int, 
    t#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "BadNatMonotonic0 (call)"} Call$$_module.__default.BadNatMonotonic0(c#0: DatatypeType
       where $Is(c#0, Tclass._module.cmd())
         && $IsAlloc(c#0, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#0), 
    s#0: int, 
    t#0: int);
  // user-defined preconditions
  requires {:id "id348"} _module.__default.NatBigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.NatBigStep($LS($LZ), c#0, s#0, t#0)
       || (_module.cmd.Inc_q(c#0) ==> t#0 == s#0 + 1);
  requires {:id "id349"} _module.__default.NatBigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.NatBigStep($LS($LZ), c#0, s#0, t#0)
       || (!_module.cmd.Inc_q(c#0)
         ==> 
        _module.cmd.Seq_q(c#0)
         ==> (var c1#0 := _module.cmd._h1(c#0); 
          (var c0#0 := _module.cmd._h0(c#0); 
            (exists s'#0: int :: 
              { _module.__default.NatBigStep($LS($LZ), c1#0, s'#0, t#0) } 
                { _module.__default.NatBigStep($LS($LZ), c0#0, s#0, s'#0) } 
              _module.__default.NatBigStep($LS($LZ), c0#0, s#0, s'#0)
                 && _module.__default.NatBigStep($LS($LZ), c1#0, s'#0, t#0)))));
  requires {:id "id350"} _module.__default.NatBigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.NatBigStep($LS($LZ), c#0, s#0, t#0)
       || (!_module.cmd.Inc_q(c#0)
         ==> 
        !_module.cmd.Seq_q(c#0)
         ==> (var body#0 := _module.cmd._h2(c#0); 
          s#0 == t#0
             || (exists s'#1: int :: 
              { _module.__default.NatBigStep($LS($LS($LZ)), c#0, s'#1, t#0) } 
                { _module.__default.NatBigStep($LS($LS($LZ)), body#0, s#0, s'#1) } 
              _module.__default.NatBigStep($LS($LS($LZ)), body#0, s#0, s'#1)
                 && _module.__default.NatBigStep($LS($LS($LZ)), c#0, s'#1, t#0))));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id351"} s#0 == t#0;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "BadNatMonotonic0# (co-call)"} CoCall$$_module.__default.BadNatMonotonic0_h(_k#0: int where LitInt(0) <= _k#0, 
    c#1: DatatypeType
       where $Is(c#1, Tclass._module.cmd())
         && $IsAlloc(c#1, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#1), 
    s#1: int, 
    t#1: int);
  // user-defined preconditions
  requires {:id "id352"} _module.__default.NatBigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.NatBigStep_h($LS($LZ), _k#0, c#1, s#1, t#1) || 0 < _k#0;
  requires {:id "id353"} _module.__default.NatBigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.NatBigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (_module.cmd.Inc_q(c#1) ==> t#1 == s#1 + 1);
  requires {:id "id354"} _module.__default.NatBigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.NatBigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (!_module.cmd.Inc_q(c#1)
         ==> 
        _module.cmd.Seq_q(c#1)
         ==> (var c1#2 := _module.cmd._h1(c#1); 
          (var c0#2 := _module.cmd._h0(c#1); 
            (exists s'#4: int :: 
              { _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c1#2, s'#4, t#1) } 
                { _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c0#2, s#1, s'#4) } 
              _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c0#2, s#1, s'#4)
                 && _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c1#2, s'#4, t#1)))));
  requires {:id "id355"} _module.__default.NatBigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.NatBigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (!_module.cmd.Inc_q(c#1)
         ==> 
        !_module.cmd.Seq_q(c#1)
         ==> (var body#2 := _module.cmd._h2(c#1); 
          s#1 == t#1
             || (exists s'#5: int :: 
              { _module.__default.NatBigStep_h($LS($LS($LZ)), _k#0 - 1, c#1, s'#5, t#1) } 
                { _module.__default.NatBigStep_h($LS($LS($LZ)), _k#0 - 1, body#2, s#1, s'#5) } 
              _module.__default.NatBigStep_h($LS($LS($LZ)), _k#0 - 1, body#2, s#1, s'#5)
                 && _module.__default.NatBigStep_h($LS($LS($LZ)), _k#0 - 1, c#1, s'#5, t#1))));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id356"} s#1 == t#1;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "BadNatMonotonic0# (correctness)"} Impl$$_module.__default.BadNatMonotonic0_h(_k#0: int where LitInt(0) <= _k#0, 
    c#1: DatatypeType
       where $Is(c#1, Tclass._module.cmd())
         && $IsAlloc(c#1, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#1), 
    s#1: int, 
    t#1: int)
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id357"} _module.__default.NatBigStep_h#canCall(_k#0, c#1, s#1, t#1)
     && 
    _module.__default.NatBigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
     && 
    0 < _k#0
     && (if _module.cmd.Inc_q(c#1)
       then t#1 == s#1 + 1
       else (if _module.cmd.Seq_q(c#1)
         then (var c1#5 := _module.cmd._h1(c#1); 
          (var c0#5 := _module.cmd._h0(c#1); 
            (exists s'#10: int :: 
              { _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c1#5, s'#10, t#1) } 
                { _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c0#5, s#1, s'#10) } 
              _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c0#5, s#1, s'#10)
                 && _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c1#5, s'#10, t#1))))
         else (var body#5 := _module.cmd._h2(c#1); 
          s#1 == t#1
             || (exists s'#11: int :: 
              { _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c#1, s'#11, t#1) } 
                { _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, body#5, s#1, s'#11) } 
              _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, body#5, s#1, s'#11)
                 && _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c#1, s'#11, t#1)))));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id358"} s#1 == t#1;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "BadNatMonotonic0# (correctness)"} Impl$$_module.__default.BadNatMonotonic0_h(_k#0: int, c#1: DatatypeType, s#1: int, t#1: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;

    // AddMethodImpl: BadNatMonotonic0#, Impl$$_module.__default.BadNatMonotonic0_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.cmd(c#1);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: int, $ih#c0#0: DatatypeType, $ih#s0#0: int, $ih#t0#0: int :: 
      { _module.__default.NatBigStep_h($LS($LZ), $ih#_k0#0, $ih#c0#0, $ih#s0#0, $ih#t0#0) } 
      LitInt(0) <= $ih#_k0#0
           && $Is($ih#c0#0, Tclass._module.cmd())
           && _module.__default.NatBigStep_h($LS($LZ), $ih#_k0#0, $ih#c0#0, $ih#s0#0, $ih#t0#0)
           && ((0 <= $ih#_k0#0 && $ih#_k0#0 < _k#0)
             || ($ih#_k0#0 == _k#0
               && (DtRank($ih#c0#0) < DtRank(c#1)
                 || (DtRank($ih#c0#0) == DtRank(c#1)
                   && ((0 <= $ih#s0#0 && $ih#s0#0 < s#1)
                     || ($ih#s0#0 == s#1 && 0 <= $ih#t0#0 && $ih#t0#0 < t#1))))))
         ==> $ih#s0#0 == $ih#t0#0);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(211,1)
    assume true;
    if (0 < _k#0)
    {
    }
    else
    {
    }
}



procedure {:verboseName "BadNatMonotonic1 (well-formedness)"} CheckWellFormed$$_module.__default.BadNatMonotonic1(c#0: DatatypeType
       where $Is(c#0, Tclass._module.cmd())
         && $IsAlloc(c#0, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#0), 
    s#0: int, 
    t#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "BadNatMonotonic1 (call)"} Call$$_module.__default.BadNatMonotonic1(c#0: DatatypeType
       where $Is(c#0, Tclass._module.cmd())
         && $IsAlloc(c#0, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#0), 
    s#0: int, 
    t#0: int);
  // user-defined preconditions
  requires {:id "id361"} _module.__default.NatBigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.NatBigStep($LS($LZ), c#0, s#0, t#0)
       || (_module.cmd.Inc_q(c#0) ==> t#0 == s#0 + 1);
  requires {:id "id362"} _module.__default.NatBigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.NatBigStep($LS($LZ), c#0, s#0, t#0)
       || (!_module.cmd.Inc_q(c#0)
         ==> 
        _module.cmd.Seq_q(c#0)
         ==> (var c1#0 := _module.cmd._h1(c#0); 
          (var c0#0 := _module.cmd._h0(c#0); 
            (exists s'#0: int :: 
              { _module.__default.NatBigStep($LS($LZ), c1#0, s'#0, t#0) } 
                { _module.__default.NatBigStep($LS($LZ), c0#0, s#0, s'#0) } 
              _module.__default.NatBigStep($LS($LZ), c0#0, s#0, s'#0)
                 && _module.__default.NatBigStep($LS($LZ), c1#0, s'#0, t#0)))));
  requires {:id "id363"} _module.__default.NatBigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.NatBigStep($LS($LZ), c#0, s#0, t#0)
       || (!_module.cmd.Inc_q(c#0)
         ==> 
        !_module.cmd.Seq_q(c#0)
         ==> (var body#0 := _module.cmd._h2(c#0); 
          s#0 == t#0
             || (exists s'#1: int :: 
              { _module.__default.NatBigStep($LS($LS($LZ)), c#0, s'#1, t#0) } 
                { _module.__default.NatBigStep($LS($LS($LZ)), body#0, s#0, s'#1) } 
              _module.__default.NatBigStep($LS($LS($LZ)), body#0, s#0, s'#1)
                 && _module.__default.NatBigStep($LS($LS($LZ)), c#0, s'#1, t#0))));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id364"} s#0 == t#0;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "BadNatMonotonic1# (co-call)"} CoCall$$_module.__default.BadNatMonotonic1_h(_k#0: int where LitInt(0) <= _k#0, 
    c#1: DatatypeType
       where $Is(c#1, Tclass._module.cmd())
         && $IsAlloc(c#1, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#1), 
    s#1: int, 
    t#1: int);
  // user-defined preconditions
  requires {:id "id365"} _module.__default.NatBigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.NatBigStep_h($LS($LZ), _k#0, c#1, s#1, t#1) || 0 < _k#0;
  requires {:id "id366"} _module.__default.NatBigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.NatBigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (_module.cmd.Inc_q(c#1) ==> t#1 == s#1 + 1);
  requires {:id "id367"} _module.__default.NatBigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.NatBigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (!_module.cmd.Inc_q(c#1)
         ==> 
        _module.cmd.Seq_q(c#1)
         ==> (var c1#2 := _module.cmd._h1(c#1); 
          (var c0#2 := _module.cmd._h0(c#1); 
            (exists s'#4: int :: 
              { _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c1#2, s'#4, t#1) } 
                { _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c0#2, s#1, s'#4) } 
              _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c0#2, s#1, s'#4)
                 && _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c1#2, s'#4, t#1)))));
  requires {:id "id368"} _module.__default.NatBigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.NatBigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (!_module.cmd.Inc_q(c#1)
         ==> 
        !_module.cmd.Seq_q(c#1)
         ==> (var body#2 := _module.cmd._h2(c#1); 
          s#1 == t#1
             || (exists s'#5: int :: 
              { _module.__default.NatBigStep_h($LS($LS($LZ)), _k#0 - 1, c#1, s'#5, t#1) } 
                { _module.__default.NatBigStep_h($LS($LS($LZ)), _k#0 - 1, body#2, s#1, s'#5) } 
              _module.__default.NatBigStep_h($LS($LS($LZ)), _k#0 - 1, body#2, s#1, s'#5)
                 && _module.__default.NatBigStep_h($LS($LS($LZ)), _k#0 - 1, c#1, s'#5, t#1))));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id369"} s#1 == t#1;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "BadNatMonotonic1# (correctness)"} Impl$$_module.__default.BadNatMonotonic1_h(_k#0: int where LitInt(0) <= _k#0, 
    c#1: DatatypeType
       where $Is(c#1, Tclass._module.cmd())
         && $IsAlloc(c#1, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#1), 
    s#1: int, 
    t#1: int)
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id370"} _module.__default.NatBigStep_h#canCall(_k#0, c#1, s#1, t#1)
     && 
    _module.__default.NatBigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
     && 
    0 < _k#0
     && (if _module.cmd.Inc_q(c#1)
       then t#1 == s#1 + 1
       else (if _module.cmd.Seq_q(c#1)
         then (var c1#5 := _module.cmd._h1(c#1); 
          (var c0#5 := _module.cmd._h0(c#1); 
            (exists s'#10: int :: 
              { _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c1#5, s'#10, t#1) } 
                { _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c0#5, s#1, s'#10) } 
              _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c0#5, s#1, s'#10)
                 && _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c1#5, s'#10, t#1))))
         else (var body#5 := _module.cmd._h2(c#1); 
          s#1 == t#1
             || (exists s'#11: int :: 
              { _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c#1, s'#11, t#1) } 
                { _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, body#5, s#1, s'#11) } 
              _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, body#5, s#1, s'#11)
                 && _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c#1, s'#11, t#1)))));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id371"} s#1 == t#1;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "BadNatMonotonic1# (correctness)"} Impl$$_module.__default.BadNatMonotonic1_h(_k#0: int, c#1: DatatypeType, s#1: int, t#1: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var _mcc#2#0: DatatypeType;
  var body#6: DatatypeType;
  var let#0_0_0#0#0: DatatypeType;
  var s'#12: int;
  var s'#13: int;
  var ##_k#0: int;
  var ##c#1: DatatypeType;
  var ##s#1: int;
  var ##t#1: int;
  var ##_k#1: int;
  var ##c#2: DatatypeType;
  var ##s#2: int;
  var ##t#2: int;
  var _k##0: int;
  var c##0: DatatypeType;
  var s##0: int;
  var t##0: int;
  var _k##1: int;
  var c##1: DatatypeType;
  var s##1: int;
  var t##1: int;
  var _mcc#0#0: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var c1#6: DatatypeType;
  var let#0_1_0#0#0: DatatypeType;
  var c0#6: DatatypeType;
  var let#0_1_1#0#0: DatatypeType;
  var s'#14: int;
  var s'#15: int;
  var ##_k#2: int;
  var ##c#3: DatatypeType;
  var ##s#3: int;
  var ##t#3: int;
  var ##_k#3: int;
  var ##c#4: DatatypeType;
  var ##s#4: int;
  var ##t#4: int;
  var _k##2: int;
  var c##2: DatatypeType;
  var s##2: int;
  var t##2: int;
  var _k##3: int;
  var c##3: DatatypeType;
  var s##3: int;
  var t##3: int;

    // AddMethodImpl: BadNatMonotonic1#, Impl$$_module.__default.BadNatMonotonic1_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.cmd(c#1);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: int, $ih#c0#0: DatatypeType, $ih#s0#0: int, $ih#t0#0: int :: 
      { _module.__default.NatBigStep_h($LS($LZ), $ih#_k0#0, $ih#c0#0, $ih#s0#0, $ih#t0#0) } 
      LitInt(0) <= $ih#_k0#0
           && $Is($ih#c0#0, Tclass._module.cmd())
           && _module.__default.NatBigStep_h($LS($LZ), $ih#_k0#0, $ih#c0#0, $ih#s0#0, $ih#t0#0)
           && ((0 <= $ih#_k0#0 && $ih#_k0#0 < _k#0)
             || ($ih#_k0#0 == _k#0
               && (DtRank($ih#c0#0) < DtRank(c#1)
                 || (DtRank($ih#c0#0) == DtRank(c#1)
                   && ((0 <= $ih#s0#0 && $ih#s0#0 < s#1)
                     || ($ih#s0#0 == s#1 && 0 <= $ih#t0#0 && $ih#t0#0 < t#1))))))
         ==> $ih#s0#0 == $ih#t0#0);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(218,1)
    assume true;
    if (0 < _k#0)
    {
        assume true;
        havoc _mcc#2#0;
        havoc _mcc#0#0, _mcc#1#0;
        if (c#1 == #_module.cmd.Inc())
        {
        }
        else if (c#1 == #_module.cmd.Seq(_mcc#0#0, _mcc#1#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.cmd())
               && $IsAlloc(_mcc#0#0, Tclass._module.cmd(), $Heap);
            assume $Is(_mcc#1#0, Tclass._module.cmd())
               && $IsAlloc(_mcc#1#0, Tclass._module.cmd(), $Heap);
            havoc c1#6;
            assume $Is(c1#6, Tclass._module.cmd()) && $IsAlloc(c1#6, Tclass._module.cmd(), $Heap);
            assume {:id "id382"} let#0_1_0#0#0 == _mcc#1#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_1_0#0#0, Tclass._module.cmd());
            assume {:id "id383"} c1#6 == let#0_1_0#0#0;
            havoc c0#6;
            assume $Is(c0#6, Tclass._module.cmd()) && $IsAlloc(c0#6, Tclass._module.cmd(), $Heap);
            assume {:id "id384"} let#0_1_1#0#0 == _mcc#0#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_1_1#0#0, Tclass._module.cmd());
            assume {:id "id385"} c0#6 == let#0_1_1#0#0;
            // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(222,12)
            havoc s'#15;
            if (true)
            {
                assert {:id "id386"} $Is(_k#0 - 1, Tclass._System.nat());
                ##_k#2 := _k#0 - 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##_k#2, Tclass._System.nat(), $Heap);
                ##c#3 := c0#6;
                // assume allocatedness for argument to function
                assume $IsAlloc(##c#3, Tclass._module.cmd(), $Heap);
                ##s#3 := s#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#3, TInt, $Heap);
                ##t#3 := s'#15;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#3, TInt, $Heap);
                assume _module.__default.NatBigStep_h#canCall(_k#0 - 1, c0#6, s#1, s'#15);
                if (_module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c0#6, s#1, s'#15))
                {
                    assert {:id "id387"} $Is(_k#0 - 1, Tclass._System.nat());
                    ##_k#3 := _k#0 - 1;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##_k#3, Tclass._System.nat(), $Heap);
                    ##c#4 := c1#6;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##c#4, Tclass._module.cmd(), $Heap);
                    ##s#4 := s'#15;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#4, TInt, $Heap);
                    ##t#4 := t#1;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#4, TInt, $Heap);
                    assume _module.__default.NatBigStep_h#canCall(_k#0 - 1, c1#6, s'#15, t#1);
                }

                assume _module.__default.NatBigStep_h#canCall(_k#0 - 1, c0#6, s#1, s'#15)
                   && (_module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c0#6, s#1, s'#15)
                     ==> _module.__default.NatBigStep_h#canCall(_k#0 - 1, c1#6, s'#15, t#1));
            }

            assert {:id "id388"} ($Is(LitInt(0), TInt)
                 && 
                _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c0#6, s#1, LitInt(0))
                 && _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c1#6, LitInt(0), t#1))
               || (exists $as#s'0_1_0#0: int :: 
                _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c0#6, s#1, $as#s'0_1_0#0)
                   && _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c1#6, $as#s'0_1_0#0, t#1));
            havoc s'#14;
            assume {:id "id389"} _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c0#6, s#1, s'#14)
               && _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c1#6, s'#14, t#1);
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(223,21)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id390"} $Is(_k#0 - 1, Tclass._System.nat());
            _k##2 := _k#0 - 1;
            assume true;
            // ProcessCallStmt: CheckSubrange
            c##2 := c0#6;
            assume true;
            // ProcessCallStmt: CheckSubrange
            s##2 := s#1;
            assume true;
            // ProcessCallStmt: CheckSubrange
            t##2 := s'#14;
            call {:id "id391"} CoCall$$_module.__default.BadNatMonotonic1_h(_k##2, c##2, s##2, t##2);
            // TrCallStmt: After ProcessCallStmt
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(224,21)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id392"} $Is(_k#0 - 1, Tclass._System.nat());
            _k##3 := _k#0 - 1;
            assume true;
            // ProcessCallStmt: CheckSubrange
            c##3 := c1#6;
            assume true;
            // ProcessCallStmt: CheckSubrange
            s##3 := s'#14;
            assume true;
            // ProcessCallStmt: CheckSubrange
            t##3 := t#1;
            call {:id "id393"} CoCall$$_module.__default.BadNatMonotonic1_h(_k##3, c##3, s##3, t##3);
            // TrCallStmt: After ProcessCallStmt
        }
        else if (c#1 == #_module.cmd.Repeat(_mcc#2#0))
        {
            assume $Is(_mcc#2#0, Tclass._module.cmd())
               && $IsAlloc(_mcc#2#0, Tclass._module.cmd(), $Heap);
            havoc body#6;
            assume $Is(body#6, Tclass._module.cmd())
               && $IsAlloc(body#6, Tclass._module.cmd(), $Heap);
            assume {:id "id372"} let#0_0_0#0#0 == _mcc#2#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_0_0#0#0, Tclass._module.cmd());
            assume {:id "id373"} body#6 == let#0_0_0#0#0;
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(226,5)
            assume true;
            if (s#1 == t#1)
            {
            }
            else
            {
                // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(228,14)
                havoc s'#13;
                if (true)
                {
                    assert {:id "id374"} $Is(_k#0 - 1, Tclass._System.nat());
                    ##_k#0 := _k#0 - 1;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##_k#0, Tclass._System.nat(), $Heap);
                    ##c#1 := body#6;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##c#1, Tclass._module.cmd(), $Heap);
                    ##s#1 := s#1;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#1, TInt, $Heap);
                    ##t#1 := s'#13;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#1, TInt, $Heap);
                    assume _module.__default.NatBigStep_h#canCall(_k#0 - 1, body#6, s#1, s'#13);
                    if (_module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, body#6, s#1, s'#13))
                    {
                        assert {:id "id375"} $Is(_k#0 - 1, Tclass._System.nat());
                        ##_k#1 := _k#0 - 1;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##_k#1, Tclass._System.nat(), $Heap);
                        ##c#2 := c#1;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##c#2, Tclass._module.cmd(), $Heap);
                        ##s#2 := s'#13;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##s#2, TInt, $Heap);
                        ##t#2 := t#1;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##t#2, TInt, $Heap);
                        assume _module.__default.NatBigStep_h#canCall(_k#0 - 1, c#1, s'#13, t#1);
                    }

                    assume _module.__default.NatBigStep_h#canCall(_k#0 - 1, body#6, s#1, s'#13)
                       && (_module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, body#6, s#1, s'#13)
                         ==> _module.__default.NatBigStep_h#canCall(_k#0 - 1, c#1, s'#13, t#1));
                }

                assert {:id "id376"} ($Is(LitInt(0), TInt)
                     && 
                    _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, body#6, s#1, LitInt(0))
                     && _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c#1, LitInt(0), t#1))
                   || (exists $as#s'0_0_1_0#0: int :: 
                    _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, body#6, s#1, $as#s'0_0_1_0#0)
                       && _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c#1, $as#s'0_0_1_0#0, t#1));
                havoc s'#12;
                assume {:id "id377"} _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, body#6, s#1, s'#12)
                   && _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c#1, s'#12, t#1);
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(229,23)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                assert {:id "id378"} $Is(_k#0 - 1, Tclass._System.nat());
                _k##0 := _k#0 - 1;
                assume true;
                // ProcessCallStmt: CheckSubrange
                c##0 := body#6;
                assume true;
                // ProcessCallStmt: CheckSubrange
                s##0 := s#1;
                assume true;
                // ProcessCallStmt: CheckSubrange
                t##0 := s'#12;
                call {:id "id379"} CoCall$$_module.__default.BadNatMonotonic1_h(_k##0, c##0, s##0, t##0);
                // TrCallStmt: After ProcessCallStmt
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(230,23)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                assert {:id "id380"} $Is(_k#0 - 1, Tclass._System.nat());
                _k##1 := _k#0 - 1;
                assume true;
                // ProcessCallStmt: CheckSubrange
                c##1 := c#1;
                assume true;
                // ProcessCallStmt: CheckSubrange
                s##1 := s'#12;
                assume true;
                // ProcessCallStmt: CheckSubrange
                t##1 := t#1;
                call {:id "id381"} CoCall$$_module.__default.BadNatMonotonic1_h(_k##1, c##1, s##1, t##1);
                // TrCallStmt: After ProcessCallStmt
            }
        }
        else
        {
            assume false;
        }
    }
    else
    {
    }
}



procedure {:verboseName "BadNatMonotonic2 (well-formedness)"} CheckWellFormed$$_module.__default.BadNatMonotonic2(c#0: DatatypeType
       where $Is(c#0, Tclass._module.cmd())
         && $IsAlloc(c#0, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#0), 
    s#0: int, 
    t#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "BadNatMonotonic2 (call)"} Call$$_module.__default.BadNatMonotonic2(c#0: DatatypeType
       where $Is(c#0, Tclass._module.cmd())
         && $IsAlloc(c#0, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#0), 
    s#0: int, 
    t#0: int);
  // user-defined preconditions
  requires {:id "id396"} _module.__default.NatBigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.NatBigStep($LS($LZ), c#0, s#0, t#0)
       || (_module.cmd.Inc_q(c#0) ==> t#0 == s#0 + 1);
  requires {:id "id397"} _module.__default.NatBigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.NatBigStep($LS($LZ), c#0, s#0, t#0)
       || (!_module.cmd.Inc_q(c#0)
         ==> 
        _module.cmd.Seq_q(c#0)
         ==> (var c1#0 := _module.cmd._h1(c#0); 
          (var c0#0 := _module.cmd._h0(c#0); 
            (exists s'#0: int :: 
              { _module.__default.NatBigStep($LS($LZ), c1#0, s'#0, t#0) } 
                { _module.__default.NatBigStep($LS($LZ), c0#0, s#0, s'#0) } 
              _module.__default.NatBigStep($LS($LZ), c0#0, s#0, s'#0)
                 && _module.__default.NatBigStep($LS($LZ), c1#0, s'#0, t#0)))));
  requires {:id "id398"} _module.__default.NatBigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.NatBigStep($LS($LZ), c#0, s#0, t#0)
       || (!_module.cmd.Inc_q(c#0)
         ==> 
        !_module.cmd.Seq_q(c#0)
         ==> (var body#0 := _module.cmd._h2(c#0); 
          s#0 == t#0
             || (exists s'#1: int :: 
              { _module.__default.NatBigStep($LS($LS($LZ)), c#0, s'#1, t#0) } 
                { _module.__default.NatBigStep($LS($LS($LZ)), body#0, s#0, s'#1) } 
              _module.__default.NatBigStep($LS($LS($LZ)), body#0, s#0, s'#1)
                 && _module.__default.NatBigStep($LS($LS($LZ)), c#0, s'#1, t#0))));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id399"} s#0 == t#0;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "BadNatMonotonic2# (co-call)"} CoCall$$_module.__default.BadNatMonotonic2_h(_k#0: int where LitInt(0) <= _k#0, 
    c#1: DatatypeType
       where $Is(c#1, Tclass._module.cmd())
         && $IsAlloc(c#1, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#1), 
    s#1: int, 
    t#1: int);
  // user-defined preconditions
  requires {:id "id400"} _module.__default.NatBigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.NatBigStep_h($LS($LZ), _k#0, c#1, s#1, t#1) || 0 < _k#0;
  requires {:id "id401"} _module.__default.NatBigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.NatBigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (_module.cmd.Inc_q(c#1) ==> t#1 == s#1 + 1);
  requires {:id "id402"} _module.__default.NatBigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.NatBigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (!_module.cmd.Inc_q(c#1)
         ==> 
        _module.cmd.Seq_q(c#1)
         ==> (var c1#2 := _module.cmd._h1(c#1); 
          (var c0#2 := _module.cmd._h0(c#1); 
            (exists s'#4: int :: 
              { _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c1#2, s'#4, t#1) } 
                { _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c0#2, s#1, s'#4) } 
              _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c0#2, s#1, s'#4)
                 && _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c1#2, s'#4, t#1)))));
  requires {:id "id403"} _module.__default.NatBigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.NatBigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (!_module.cmd.Inc_q(c#1)
         ==> 
        !_module.cmd.Seq_q(c#1)
         ==> (var body#2 := _module.cmd._h2(c#1); 
          s#1 == t#1
             || (exists s'#5: int :: 
              { _module.__default.NatBigStep_h($LS($LS($LZ)), _k#0 - 1, c#1, s'#5, t#1) } 
                { _module.__default.NatBigStep_h($LS($LS($LZ)), _k#0 - 1, body#2, s#1, s'#5) } 
              _module.__default.NatBigStep_h($LS($LS($LZ)), _k#0 - 1, body#2, s#1, s'#5)
                 && _module.__default.NatBigStep_h($LS($LS($LZ)), _k#0 - 1, c#1, s'#5, t#1))));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id404"} s#1 == t#1;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "BadNatMonotonic2# (correctness)"} Impl$$_module.__default.BadNatMonotonic2_h(_k#0: int where LitInt(0) <= _k#0, 
    c#1: DatatypeType
       where $Is(c#1, Tclass._module.cmd())
         && $IsAlloc(c#1, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#1), 
    s#1: int, 
    t#1: int)
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id405"} _module.__default.NatBigStep_h#canCall(_k#0, c#1, s#1, t#1)
     && 
    _module.__default.NatBigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
     && 
    0 < _k#0
     && (if _module.cmd.Inc_q(c#1)
       then t#1 == s#1 + 1
       else (if _module.cmd.Seq_q(c#1)
         then (var c1#5 := _module.cmd._h1(c#1); 
          (var c0#5 := _module.cmd._h0(c#1); 
            (exists s'#10: int :: 
              { _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c1#5, s'#10, t#1) } 
                { _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c0#5, s#1, s'#10) } 
              _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c0#5, s#1, s'#10)
                 && _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c1#5, s'#10, t#1))))
         else (var body#5 := _module.cmd._h2(c#1); 
          s#1 == t#1
             || (exists s'#11: int :: 
              { _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c#1, s'#11, t#1) } 
                { _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, body#5, s#1, s'#11) } 
              _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, body#5, s#1, s'#11)
                 && _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c#1, s'#11, t#1)))));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id406"} s#1 == t#1;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "BadNatMonotonic2# (correctness)"} Impl$$_module.__default.BadNatMonotonic2_h(_k#0: int, c#1: DatatypeType, s#1: int, t#1: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: BadNatMonotonic2#, Impl$$_module.__default.BadNatMonotonic2_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(238,1)
    assume true;
    if (0 < _k#0)
    {
    }
    else
    {
    }
}



procedure {:verboseName "BadNatMonotonic3 (well-formedness)"} CheckWellFormed$$_module.__default.BadNatMonotonic3(c#0: DatatypeType
       where $Is(c#0, Tclass._module.cmd())
         && $IsAlloc(c#0, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#0), 
    s#0: int, 
    t#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "BadNatMonotonic3 (call)"} Call$$_module.__default.BadNatMonotonic3(c#0: DatatypeType
       where $Is(c#0, Tclass._module.cmd())
         && $IsAlloc(c#0, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#0), 
    s#0: int, 
    t#0: int);
  // user-defined preconditions
  requires {:id "id409"} _module.__default.NatBigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.NatBigStep($LS($LZ), c#0, s#0, t#0)
       || (_module.cmd.Inc_q(c#0) ==> t#0 == s#0 + 1);
  requires {:id "id410"} _module.__default.NatBigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.NatBigStep($LS($LZ), c#0, s#0, t#0)
       || (!_module.cmd.Inc_q(c#0)
         ==> 
        _module.cmd.Seq_q(c#0)
         ==> (var c1#0 := _module.cmd._h1(c#0); 
          (var c0#0 := _module.cmd._h0(c#0); 
            (exists s'#0: int :: 
              { _module.__default.NatBigStep($LS($LZ), c1#0, s'#0, t#0) } 
                { _module.__default.NatBigStep($LS($LZ), c0#0, s#0, s'#0) } 
              _module.__default.NatBigStep($LS($LZ), c0#0, s#0, s'#0)
                 && _module.__default.NatBigStep($LS($LZ), c1#0, s'#0, t#0)))));
  requires {:id "id411"} _module.__default.NatBigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.NatBigStep($LS($LZ), c#0, s#0, t#0)
       || (!_module.cmd.Inc_q(c#0)
         ==> 
        !_module.cmd.Seq_q(c#0)
         ==> (var body#0 := _module.cmd._h2(c#0); 
          s#0 == t#0
             || (exists s'#1: int :: 
              { _module.__default.NatBigStep($LS($LS($LZ)), c#0, s'#1, t#0) } 
                { _module.__default.NatBigStep($LS($LS($LZ)), body#0, s#0, s'#1) } 
              _module.__default.NatBigStep($LS($LS($LZ)), body#0, s#0, s'#1)
                 && _module.__default.NatBigStep($LS($LS($LZ)), c#0, s'#1, t#0))));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id412"} s#0 == t#0;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "BadNatMonotonic3# (co-call)"} CoCall$$_module.__default.BadNatMonotonic3_h(_k#0: int where LitInt(0) <= _k#0, 
    c#1: DatatypeType
       where $Is(c#1, Tclass._module.cmd())
         && $IsAlloc(c#1, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#1), 
    s#1: int, 
    t#1: int);
  // user-defined preconditions
  requires {:id "id413"} _module.__default.NatBigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.NatBigStep_h($LS($LZ), _k#0, c#1, s#1, t#1) || 0 < _k#0;
  requires {:id "id414"} _module.__default.NatBigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.NatBigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (_module.cmd.Inc_q(c#1) ==> t#1 == s#1 + 1);
  requires {:id "id415"} _module.__default.NatBigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.NatBigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (!_module.cmd.Inc_q(c#1)
         ==> 
        _module.cmd.Seq_q(c#1)
         ==> (var c1#2 := _module.cmd._h1(c#1); 
          (var c0#2 := _module.cmd._h0(c#1); 
            (exists s'#4: int :: 
              { _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c1#2, s'#4, t#1) } 
                { _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c0#2, s#1, s'#4) } 
              _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c0#2, s#1, s'#4)
                 && _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c1#2, s'#4, t#1)))));
  requires {:id "id416"} _module.__default.NatBigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.NatBigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (!_module.cmd.Inc_q(c#1)
         ==> 
        !_module.cmd.Seq_q(c#1)
         ==> (var body#2 := _module.cmd._h2(c#1); 
          s#1 == t#1
             || (exists s'#5: int :: 
              { _module.__default.NatBigStep_h($LS($LS($LZ)), _k#0 - 1, c#1, s'#5, t#1) } 
                { _module.__default.NatBigStep_h($LS($LS($LZ)), _k#0 - 1, body#2, s#1, s'#5) } 
              _module.__default.NatBigStep_h($LS($LS($LZ)), _k#0 - 1, body#2, s#1, s'#5)
                 && _module.__default.NatBigStep_h($LS($LS($LZ)), _k#0 - 1, c#1, s'#5, t#1))));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id417"} s#1 == t#1;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "BadNatMonotonic3# (correctness)"} Impl$$_module.__default.BadNatMonotonic3_h(_k#0: int where LitInt(0) <= _k#0, 
    c#1: DatatypeType
       where $Is(c#1, Tclass._module.cmd())
         && $IsAlloc(c#1, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#1), 
    s#1: int, 
    t#1: int)
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id418"} _module.__default.NatBigStep_h#canCall(_k#0, c#1, s#1, t#1)
     && 
    _module.__default.NatBigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
     && 
    0 < _k#0
     && (if _module.cmd.Inc_q(c#1)
       then t#1 == s#1 + 1
       else (if _module.cmd.Seq_q(c#1)
         then (var c1#5 := _module.cmd._h1(c#1); 
          (var c0#5 := _module.cmd._h0(c#1); 
            (exists s'#10: int :: 
              { _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c1#5, s'#10, t#1) } 
                { _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c0#5, s#1, s'#10) } 
              _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c0#5, s#1, s'#10)
                 && _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c1#5, s'#10, t#1))))
         else (var body#5 := _module.cmd._h2(c#1); 
          s#1 == t#1
             || (exists s'#11: int :: 
              { _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c#1, s'#11, t#1) } 
                { _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, body#5, s#1, s'#11) } 
              _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, body#5, s#1, s'#11)
                 && _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c#1, s'#11, t#1)))));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id419"} s#1 == t#1;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "BadNatMonotonic3# (correctness)"} Impl$$_module.__default.BadNatMonotonic3_h(_k#0: int, c#1: DatatypeType, s#1: int, t#1: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var _mcc#2#0: DatatypeType;
  var body#6: DatatypeType;
  var let#0_0_0#0#0: DatatypeType;
  var s'#12: int;
  var s'#13: int;
  var ##_k#0: int;
  var ##c#1: DatatypeType;
  var ##s#1: int;
  var ##t#1: int;
  var ##_k#1: int;
  var ##c#2: DatatypeType;
  var ##s#2: int;
  var ##t#2: int;
  var _k##0: int;
  var c##0: DatatypeType;
  var s##0: int;
  var t##0: int;
  var _k##1: int;
  var c##1: DatatypeType;
  var s##1: int;
  var t##1: int;
  var _mcc#0#0: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var c1#6: DatatypeType;
  var let#0_1_0#0#0: DatatypeType;
  var c0#6: DatatypeType;
  var let#0_1_1#0#0: DatatypeType;
  var s'#14: int;
  var s'#15: int;
  var ##_k#2: int;
  var ##c#3: DatatypeType;
  var ##s#3: int;
  var ##t#3: int;
  var ##_k#3: int;
  var ##c#4: DatatypeType;
  var ##s#4: int;
  var ##t#4: int;
  var _k##2: int;
  var c##2: DatatypeType;
  var s##2: int;
  var t##2: int;
  var _k##3: int;
  var c##3: DatatypeType;
  var s##3: int;
  var t##3: int;

    // AddMethodImpl: BadNatMonotonic3#, Impl$$_module.__default.BadNatMonotonic3_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(245,1)
    assume true;
    if (0 < _k#0)
    {
        assume true;
        havoc _mcc#2#0;
        havoc _mcc#0#0, _mcc#1#0;
        if (c#1 == #_module.cmd.Inc())
        {
        }
        else if (c#1 == #_module.cmd.Seq(_mcc#0#0, _mcc#1#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.cmd())
               && $IsAlloc(_mcc#0#0, Tclass._module.cmd(), $Heap);
            assume $Is(_mcc#1#0, Tclass._module.cmd())
               && $IsAlloc(_mcc#1#0, Tclass._module.cmd(), $Heap);
            havoc c1#6;
            assume $Is(c1#6, Tclass._module.cmd()) && $IsAlloc(c1#6, Tclass._module.cmd(), $Heap);
            assume {:id "id430"} let#0_1_0#0#0 == _mcc#1#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_1_0#0#0, Tclass._module.cmd());
            assume {:id "id431"} c1#6 == let#0_1_0#0#0;
            havoc c0#6;
            assume $Is(c0#6, Tclass._module.cmd()) && $IsAlloc(c0#6, Tclass._module.cmd(), $Heap);
            assume {:id "id432"} let#0_1_1#0#0 == _mcc#0#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_1_1#0#0, Tclass._module.cmd());
            assume {:id "id433"} c0#6 == let#0_1_1#0#0;
            // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(249,12)
            havoc s'#15;
            if (true)
            {
                assert {:id "id434"} $Is(_k#0 - 1, Tclass._System.nat());
                ##_k#2 := _k#0 - 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##_k#2, Tclass._System.nat(), $Heap);
                ##c#3 := c0#6;
                // assume allocatedness for argument to function
                assume $IsAlloc(##c#3, Tclass._module.cmd(), $Heap);
                ##s#3 := s#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#3, TInt, $Heap);
                ##t#3 := s'#15;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#3, TInt, $Heap);
                assume _module.__default.NatBigStep_h#canCall(_k#0 - 1, c0#6, s#1, s'#15);
                if (_module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c0#6, s#1, s'#15))
                {
                    assert {:id "id435"} $Is(_k#0 - 1, Tclass._System.nat());
                    ##_k#3 := _k#0 - 1;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##_k#3, Tclass._System.nat(), $Heap);
                    ##c#4 := c1#6;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##c#4, Tclass._module.cmd(), $Heap);
                    ##s#4 := s'#15;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#4, TInt, $Heap);
                    ##t#4 := t#1;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#4, TInt, $Heap);
                    assume _module.__default.NatBigStep_h#canCall(_k#0 - 1, c1#6, s'#15, t#1);
                }

                assume _module.__default.NatBigStep_h#canCall(_k#0 - 1, c0#6, s#1, s'#15)
                   && (_module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c0#6, s#1, s'#15)
                     ==> _module.__default.NatBigStep_h#canCall(_k#0 - 1, c1#6, s'#15, t#1));
            }

            assert {:id "id436"} ($Is(LitInt(0), TInt)
                 && 
                _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c0#6, s#1, LitInt(0))
                 && _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c1#6, LitInt(0), t#1))
               || (exists $as#s'0_1_0#0: int :: 
                _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c0#6, s#1, $as#s'0_1_0#0)
                   && _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c1#6, $as#s'0_1_0#0, t#1));
            havoc s'#14;
            assume {:id "id437"} _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c0#6, s#1, s'#14)
               && _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c1#6, s'#14, t#1);
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(250,21)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id438"} $Is(_k#0 - 1, Tclass._System.nat());
            _k##2 := _k#0 - 1;
            assume true;
            // ProcessCallStmt: CheckSubrange
            c##2 := c0#6;
            assume true;
            // ProcessCallStmt: CheckSubrange
            s##2 := s#1;
            assume true;
            // ProcessCallStmt: CheckSubrange
            t##2 := s'#14;
            call {:id "id439"} CoCall$$_module.__default.BadNatMonotonic3_h(_k##2, c##2, s##2, t##2);
            // TrCallStmt: After ProcessCallStmt
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(251,21)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id440"} $Is(_k#0 - 1, Tclass._System.nat());
            _k##3 := _k#0 - 1;
            assume true;
            // ProcessCallStmt: CheckSubrange
            c##3 := c1#6;
            assume true;
            // ProcessCallStmt: CheckSubrange
            s##3 := s'#14;
            assume true;
            // ProcessCallStmt: CheckSubrange
            t##3 := t#1;
            call {:id "id441"} CoCall$$_module.__default.BadNatMonotonic3_h(_k##3, c##3, s##3, t##3);
            // TrCallStmt: After ProcessCallStmt
        }
        else if (c#1 == #_module.cmd.Repeat(_mcc#2#0))
        {
            assume $Is(_mcc#2#0, Tclass._module.cmd())
               && $IsAlloc(_mcc#2#0, Tclass._module.cmd(), $Heap);
            havoc body#6;
            assume $Is(body#6, Tclass._module.cmd())
               && $IsAlloc(body#6, Tclass._module.cmd(), $Heap);
            assume {:id "id420"} let#0_0_0#0#0 == _mcc#2#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_0_0#0#0, Tclass._module.cmd());
            assume {:id "id421"} body#6 == let#0_0_0#0#0;
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(253,5)
            assume true;
            if (s#1 == t#1)
            {
            }
            else
            {
                // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(255,14)
                havoc s'#13;
                if (true)
                {
                    assert {:id "id422"} $Is(_k#0 - 1, Tclass._System.nat());
                    ##_k#0 := _k#0 - 1;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##_k#0, Tclass._System.nat(), $Heap);
                    ##c#1 := body#6;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##c#1, Tclass._module.cmd(), $Heap);
                    ##s#1 := s#1;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#1, TInt, $Heap);
                    ##t#1 := s'#13;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#1, TInt, $Heap);
                    assume _module.__default.NatBigStep_h#canCall(_k#0 - 1, body#6, s#1, s'#13);
                    if (_module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, body#6, s#1, s'#13))
                    {
                        assert {:id "id423"} $Is(_k#0 - 1, Tclass._System.nat());
                        ##_k#1 := _k#0 - 1;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##_k#1, Tclass._System.nat(), $Heap);
                        ##c#2 := c#1;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##c#2, Tclass._module.cmd(), $Heap);
                        ##s#2 := s'#13;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##s#2, TInt, $Heap);
                        ##t#2 := t#1;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##t#2, TInt, $Heap);
                        assume _module.__default.NatBigStep_h#canCall(_k#0 - 1, c#1, s'#13, t#1);
                    }

                    assume _module.__default.NatBigStep_h#canCall(_k#0 - 1, body#6, s#1, s'#13)
                       && (_module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, body#6, s#1, s'#13)
                         ==> _module.__default.NatBigStep_h#canCall(_k#0 - 1, c#1, s'#13, t#1));
                }

                assert {:id "id424"} ($Is(LitInt(0), TInt)
                     && 
                    _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, body#6, s#1, LitInt(0))
                     && _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c#1, LitInt(0), t#1))
                   || (exists $as#s'0_0_1_0#0: int :: 
                    _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, body#6, s#1, $as#s'0_0_1_0#0)
                       && _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c#1, $as#s'0_0_1_0#0, t#1));
                havoc s'#12;
                assume {:id "id425"} _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, body#6, s#1, s'#12)
                   && _module.__default.NatBigStep_h($LS($LZ), _k#0 - 1, c#1, s'#12, t#1);
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(256,23)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                assert {:id "id426"} $Is(_k#0 - 1, Tclass._System.nat());
                _k##0 := _k#0 - 1;
                assume true;
                // ProcessCallStmt: CheckSubrange
                c##0 := body#6;
                assume true;
                // ProcessCallStmt: CheckSubrange
                s##0 := s#1;
                assume true;
                // ProcessCallStmt: CheckSubrange
                t##0 := s'#12;
                call {:id "id427"} CoCall$$_module.__default.BadNatMonotonic3_h(_k##0, c##0, s##0, t##0);
                // TrCallStmt: After ProcessCallStmt
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(257,23)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                assert {:id "id428"} $Is(_k#0 - 1, Tclass._System.nat());
                _k##1 := _k#0 - 1;
                assume true;
                // ProcessCallStmt: CheckSubrange
                c##1 := c#1;
                assume true;
                // ProcessCallStmt: CheckSubrange
                s##1 := s'#12;
                assume true;
                // ProcessCallStmt: CheckSubrange
                t##1 := t#1;
                call {:id "id429"} CoCall$$_module.__default.BadNatMonotonic3_h(_k##1, c##1, s##1, t##1);
                // TrCallStmt: After ProcessCallStmt
            }
        }
        else
        {
            assume false;
        }
    }
    else
    {
    }
}



// function declaration for _module._default.CoBigStep
function _module.__default.CoBigStep($ly: LayerType, c#0: DatatypeType, s#0: int, t#0: int) : bool
uses {
// definition axiom for _module.__default.CoBigStep (revealed)
axiom {:id "id442"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, c#0: DatatypeType, s#0: int, t#0: int :: 
    { _module.__default.CoBigStep($LS($ly), c#0, s#0, t#0) } 
    _module.__default.CoBigStep#canCall(c#0, s#0, t#0)
         || (1 < $FunctionContextHeight && $Is(c#0, Tclass._module.cmd()))
       ==> (!_module.cmd.Inc_q(c#0)
           ==> (_module.cmd.Seq_q(c#0)
               ==> (var c1#1 := _module.cmd._h1(c#0); 
                (var c0#1 := _module.cmd._h0(c#0); 
                  (forall s'#2: int :: 
                    { _module.__default.CoBigStep($ly, c1#1, s'#2, t#0) } 
                      { _module.__default.CoBigStep($ly, c0#1, s#0, s'#2) } 
                    _module.__default.CoBigStep#canCall(c0#1, s#0, s'#2)
                       && (_module.__default.CoBigStep($ly, c0#1, s#0, s'#2)
                         ==> _module.__default.CoBigStep#canCall(c1#1, s'#2, t#0))))))
             && (!_module.cmd.Seq_q(c#0)
               ==> (var body#1 := _module.cmd._h2(c#0); 
                s#0 != t#0
                   ==> (forall s'#3: int :: 
                    { _module.__default.CoBigStep($ly, c#0, s'#3, t#0) } 
                      { _module.__default.CoBigStep($ly, body#1, s#0, s'#3) } 
                    _module.__default.CoBigStep#canCall(body#1, s#0, s'#3)
                       && (_module.__default.CoBigStep($ly, body#1, s#0, s'#3)
                         ==> _module.__default.CoBigStep#canCall(c#0, s'#3, t#0))))))
         && _module.__default.CoBigStep($LS($ly), c#0, s#0, t#0)
           == (if _module.cmd.Inc_q(c#0)
             then t#0 == s#0 + 1
             else (if _module.cmd.Seq_q(c#0)
               then (var c1#0 := _module.cmd._h1(c#0); 
                (var c0#0 := _module.cmd._h0(c#0); 
                  (exists s'#0: int :: 
                    { _module.__default.CoBigStep($ly, c1#0, s'#0, t#0) } 
                      { _module.__default.CoBigStep($ly, c0#0, s#0, s'#0) } 
                    _module.__default.CoBigStep($ly, c0#0, s#0, s'#0)
                       && _module.__default.CoBigStep($ly, c1#0, s'#0, t#0))))
               else (var body#0 := _module.cmd._h2(c#0); 
                s#0 == t#0
                   || (exists s'#1: int :: 
                    { _module.__default.CoBigStep($ly, c#0, s'#1, t#0) } 
                      { _module.__default.CoBigStep($ly, body#0, s#0, s'#1) } 
                    _module.__default.CoBigStep($ly, body#0, s#0, s'#1)
                       && _module.__default.CoBigStep($ly, c#0, s'#1, t#0))))));
}

function _module.__default.CoBigStep#canCall(c#0: DatatypeType, s#0: int, t#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, c#0: DatatypeType, s#0: int, t#0: int :: 
  { _module.__default.CoBigStep($LS($ly), c#0, s#0, t#0) } 
  _module.__default.CoBigStep($LS($ly), c#0, s#0, t#0)
     == _module.__default.CoBigStep($ly, c#0, s#0, t#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, c#0: DatatypeType, s#0: int, t#0: int :: 
  { _module.__default.CoBigStep(AsFuelBottom($ly), c#0, s#0, t#0) } 
  _module.__default.CoBigStep($ly, c#0, s#0, t#0)
     == _module.__default.CoBigStep($LZ, c#0, s#0, t#0));

function _module.__default.CoBigStep#requires(LayerType, DatatypeType, int, int) : bool;

// #requires axiom for _module.__default.CoBigStep
axiom (forall $ly: LayerType, c#0: DatatypeType, s#0: int, t#0: int :: 
  { _module.__default.CoBigStep#requires($ly, c#0, s#0, t#0) } 
  $Is(c#0, Tclass._module.cmd())
     ==> _module.__default.CoBigStep#requires($ly, c#0, s#0, t#0) == true);

// 1st prefix predicate axiom for _module.__default.CoBigStep_h
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, c#0: DatatypeType, s#0: int, t#0: int :: 
    { _module.__default.CoBigStep($LS($ly), c#0, s#0, t#0) } 
    $Is(c#0, Tclass._module.cmd())
         && _module.__default.CoBigStep($LS($ly), c#0, s#0, t#0)
       ==> (forall _k#0: Box :: 
        { _module.__default.CoBigStep_h($LS($ly), _k#0, c#0, s#0, t#0) } 
        _module.__default.CoBigStep_h($LS($ly), _k#0, c#0, s#0, t#0)));

// 2nd prefix predicate axiom
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, c#0: DatatypeType, s#0: int, t#0: int :: 
    { _module.__default.CoBigStep($LS($ly), c#0, s#0, t#0) } 
    $Is(c#0, Tclass._module.cmd())
         && (forall _k#0: Box :: 
          { _module.__default.CoBigStep_h($LS($ly), _k#0, c#0, s#0, t#0) } 
          _module.__default.CoBigStep_h($LS($ly), _k#0, c#0, s#0, t#0))
       ==> _module.__default.CoBigStep($LS($ly), c#0, s#0, t#0));

// 3rd prefix predicate axiom
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, c#0: DatatypeType, s#0: int, t#0: int, _k#0: Box :: 
    { _module.__default.CoBigStep_h($ly, _k#0, c#0, s#0, t#0) } 
    $Is(c#0, Tclass._module.cmd()) && _k#0 == ORD#FromNat(0)
       ==> _module.__default.CoBigStep_h($ly, _k#0, c#0, s#0, t#0));

procedure {:verboseName "CoBigStep (well-formedness)"} CheckWellformed$$_module.__default.CoBigStep(c#0: DatatypeType where $Is(c#0, Tclass._module.cmd()), s#0: int, t#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.CoBigStep#
function _module.__default.CoBigStep_h($ly: LayerType, _k#0: Box, c#0: DatatypeType, s#0: int, t#0: int) : bool
uses {
// definition axiom for _module.__default.CoBigStep_h (revealed)
axiom {:id "id452"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, _k#0: Box, c#0: DatatypeType, s#0: int, t#0: int :: 
    { _module.__default.CoBigStep_h($LS($ly), _k#0, c#0, s#0, t#0) } 
    _module.__default.CoBigStep_h#canCall(_k#0, c#0, s#0, t#0)
         || (2 < $FunctionContextHeight && $Is(c#0, Tclass._module.cmd()))
       ==> (0 < ORD#Offset(_k#0)
           ==> 
          !_module.cmd.Inc_q(c#0)
           ==> (_module.cmd.Seq_q(c#0)
               ==> (var c1#3 := _module.cmd._h1(c#0); 
                (var c0#3 := _module.cmd._h0(c#0); 
                  (forall s'#10: int :: 
                    { _module.__default.CoBigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), c1#3, s'#10, t#0) } 
                      { _module.__default.CoBigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), c0#3, s#0, s'#10) } 
                    _module.__default.CoBigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c0#3, s#0, s'#10)
                       && (_module.__default.CoBigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), c0#3, s#0, s'#10)
                         ==> _module.__default.CoBigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c1#3, s'#10, t#0))))))
             && (!_module.cmd.Seq_q(c#0)
               ==> (var body#3 := _module.cmd._h2(c#0); 
                s#0 != t#0
                   ==> (forall s'#11: int :: 
                    { _module.__default.CoBigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), c#0, s'#11, t#0) } 
                      { _module.__default.CoBigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), body#3, s#0, s'#11) } 
                    _module.__default.CoBigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), body#3, s#0, s'#11)
                       && (_module.__default.CoBigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), body#3, s#0, s'#11)
                         ==> _module.__default.CoBigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c#0, s'#11, t#0))))))
         && (
          (0 < ORD#Offset(_k#0)
           ==> (if _module.cmd.Inc_q(c#0)
             then t#0 == s#0 + 1
             else (if _module.cmd.Seq_q(c#0)
               then (var c1#4 := _module.cmd._h1(c#0); 
                (var c0#4 := _module.cmd._h0(c#0); 
                  (exists s'#12: int :: 
                    { _module.__default.CoBigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), c1#4, s'#12, t#0) } 
                      { _module.__default.CoBigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), c0#4, s#0, s'#12) } 
                    _module.__default.CoBigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), c0#4, s#0, s'#12)
                       && _module.__default.CoBigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), c1#4, s'#12, t#0))))
               else (var body#4 := _module.cmd._h2(c#0); 
                s#0 == t#0
                   || (exists s'#13: int :: 
                    { _module.__default.CoBigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), c#0, s'#13, t#0) } 
                      { _module.__default.CoBigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), body#4, s#0, s'#13) } 
                    _module.__default.CoBigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), body#4, s#0, s'#13)
                       && _module.__default.CoBigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), c#0, s'#13, t#0))))))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#0: Box :: 
            { _module.__default.CoBigStep_h($ly, _k'#0, c#0, s#0, t#0) } 
            ORD#Less(_k'#0, _k#0)
               ==> _module.__default.CoBigStep_h#canCall(_k'#0, c#0, s#0, t#0)))
         && _module.__default.CoBigStep_h($LS($ly), _k#0, c#0, s#0, t#0)
           == ((0 < ORD#Offset(_k#0)
               ==> (if _module.cmd.Inc_q(c#0)
                 then t#0 == s#0 + 1
                 else (if _module.cmd.Seq_q(c#0)
                   then (var c1#2 := _module.cmd._h1(c#0); 
                    (var c0#2 := _module.cmd._h0(c#0); 
                      (exists s'#8: int :: 
                        { _module.__default.CoBigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), c1#2, s'#8, t#0) } 
                          { _module.__default.CoBigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), c0#2, s#0, s'#8) } 
                        _module.__default.CoBigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), c0#2, s#0, s'#8)
                           && _module.__default.CoBigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), c1#2, s'#8, t#0))))
                   else (var body#2 := _module.cmd._h2(c#0); 
                    s#0 == t#0
                       || (exists s'#9: int :: 
                        { _module.__default.CoBigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), c#0, s'#9, t#0) } 
                          { _module.__default.CoBigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), body#2, s#0, s'#9) } 
                        _module.__default.CoBigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), body#2, s#0, s'#9)
                           && _module.__default.CoBigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), c#0, s'#9, t#0))))))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#0: Box :: 
                { _module.__default.CoBigStep_h($ly, _k'#0, c#0, s#0, t#0) } 
                ORD#Less(_k'#0, _k#0)
                   ==> _module.__default.CoBigStep_h($ly, _k'#0, c#0, s#0, t#0)))));
// definition axiom for _module.__default.CoBigStep_h for decreasing-related literals (revealed)
axiom {:id "id453"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, _k#0: Box, c#0: DatatypeType, s#0: int, t#0: int :: 
    {:weight 3} { _module.__default.CoBigStep_h($LS($ly), Lit(_k#0), c#0, s#0, t#0) } 
    _module.__default.CoBigStep_h#canCall(Lit(_k#0), c#0, s#0, t#0)
         || (2 < $FunctionContextHeight && $Is(c#0, Tclass._module.cmd()))
       ==> (0 < ORD#Offset(_k#0)
           ==> 
          !_module.cmd.Inc_q(c#0)
           ==> (_module.cmd.Seq_q(c#0)
               ==> (var c1#6 := _module.cmd._h1(c#0); 
                (var c0#6 := _module.cmd._h0(c#0); 
                  (forall s'#16: int :: 
                    { _module.__default.CoBigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c1#6, s'#16, t#0) } 
                      { _module.__default.CoBigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c0#6, s#0, s'#16) } 
                    _module.__default.CoBigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c0#6, s#0, s'#16)
                       && (_module.__default.CoBigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c0#6, s#0, s'#16)
                         ==> _module.__default.CoBigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c1#6, s'#16, t#0))))))
             && (!_module.cmd.Seq_q(c#0)
               ==> (var body#6 := _module.cmd._h2(c#0); 
                s#0 != t#0
                   ==> (forall s'#17: int :: 
                    { _module.__default.CoBigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c#0, s'#17, t#0) } 
                      { _module.__default.CoBigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), body#6, s#0, s'#17) } 
                    _module.__default.CoBigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), body#6, s#0, s'#17)
                       && (_module.__default.CoBigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), body#6, s#0, s'#17)
                         ==> _module.__default.CoBigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c#0, s'#17, t#0))))))
         && (
          (0 < ORD#Offset(_k#0)
           ==> (if _module.cmd.Inc_q(c#0)
             then t#0 == s#0 + 1
             else (if _module.cmd.Seq_q(c#0)
               then (var c1#7 := _module.cmd._h1(c#0); 
                (var c0#7 := _module.cmd._h0(c#0); 
                  (exists s'#18: int :: 
                    { _module.__default.CoBigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c1#7, s'#18, t#0) } 
                      { _module.__default.CoBigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c0#7, s#0, s'#18) } 
                    _module.__default.CoBigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c0#7, s#0, s'#18)
                       && _module.__default.CoBigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c1#7, s'#18, t#0))))
               else (var body#7 := _module.cmd._h2(c#0); 
                s#0 == t#0
                   || (exists s'#19: int :: 
                    { _module.__default.CoBigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c#0, s'#19, t#0) } 
                      { _module.__default.CoBigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), body#7, s#0, s'#19) } 
                    _module.__default.CoBigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), body#7, s#0, s'#19)
                       && _module.__default.CoBigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c#0, s'#19, t#0))))))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#1: Box :: 
            { _module.__default.CoBigStep_h($LS($ly), _k'#1, c#0, s#0, t#0) } 
            ORD#Less(_k'#1, _k#0)
               ==> _module.__default.CoBigStep_h#canCall(_k'#1, c#0, s#0, t#0)))
         && _module.__default.CoBigStep_h($LS($ly), Lit(_k#0), c#0, s#0, t#0)
           == ((0 < ORD#Offset(_k#0)
               ==> (if _module.cmd.Inc_q(c#0)
                 then t#0 == s#0 + 1
                 else (if _module.cmd.Seq_q(c#0)
                   then (var c1#5 := _module.cmd._h1(c#0); 
                    (var c0#5 := _module.cmd._h0(c#0); 
                      (exists s'#14: int :: 
                        { _module.__default.CoBigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c1#5, s'#14, t#0) } 
                          { _module.__default.CoBigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c0#5, s#0, s'#14) } 
                        _module.__default.CoBigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c0#5, s#0, s'#14)
                           && _module.__default.CoBigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c1#5, s'#14, t#0))))
                   else (var body#5 := _module.cmd._h2(c#0); 
                    s#0 == t#0
                       || (exists s'#15: int :: 
                        { _module.__default.CoBigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c#0, s'#15, t#0) } 
                          { _module.__default.CoBigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), body#5, s#0, s'#15) } 
                        _module.__default.CoBigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), body#5, s#0, s'#15)
                           && _module.__default.CoBigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c#0, s'#15, t#0))))))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#1: Box :: 
                { _module.__default.CoBigStep_h($LS($ly), _k'#1, c#0, s#0, t#0) } 
                ORD#Less(_k'#1, _k#0)
                   ==> _module.__default.CoBigStep_h($LS($ly), _k'#1, c#0, s#0, t#0)))));
// definition axiom for _module.__default.CoBigStep_h for all literals (revealed)
axiom {:id "id454"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, _k#0: Box, c#0: DatatypeType, s#0: int, t#0: int :: 
    {:weight 3} { _module.__default.CoBigStep_h($LS($ly), Lit(_k#0), Lit(c#0), LitInt(s#0), LitInt(t#0)) } 
    _module.__default.CoBigStep_h#canCall(Lit(_k#0), Lit(c#0), LitInt(s#0), LitInt(t#0))
         || (2 < $FunctionContextHeight && $Is(c#0, Tclass._module.cmd()))
       ==> (0 < ORD#Offset(_k#0)
           ==> 
          !Lit(_module.cmd.Inc_q(Lit(c#0)))
           ==> (Lit(_module.cmd.Seq_q(Lit(c#0)))
               ==> (var c1#9 := Lit(_module.cmd._h1(Lit(c#0))); 
                (var c0#9 := Lit(_module.cmd._h0(Lit(c#0))); 
                  (forall s'#22: int :: 
                    { _module.__default.CoBigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c1#9, s'#22, t#0) } 
                      { _module.__default.CoBigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c0#9, s#0, s'#22) } 
                    _module.__default.CoBigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c0#9, LitInt(s#0), s'#22)
                       && (_module.__default.CoBigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c0#9, LitInt(s#0), s'#22)
                         ==> _module.__default.CoBigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c1#9, s'#22, LitInt(t#0)))))))
             && (!Lit(_module.cmd.Seq_q(Lit(c#0)))
               ==> (var body#9 := Lit(_module.cmd._h2(Lit(c#0))); 
                LitInt(s#0) != LitInt(t#0)
                   ==> (forall s'#23: int :: 
                    { _module.__default.CoBigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c#0, s'#23, t#0) } 
                      { _module.__default.CoBigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), body#9, s#0, s'#23) } 
                    _module.__default.CoBigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), body#9, LitInt(s#0), s'#23)
                       && (_module.__default.CoBigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), body#9, LitInt(s#0), s'#23)
                         ==> _module.__default.CoBigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), Lit(c#0), s'#23, LitInt(t#0)))))))
         && (
          (0 < ORD#Offset(_k#0)
           ==> (if _module.cmd.Inc_q(Lit(c#0))
             then LitInt(t#0) == LitInt(s#0 + 1)
             else (if _module.cmd.Seq_q(Lit(c#0))
               then (var c1#10 := Lit(_module.cmd._h1(Lit(c#0))); 
                (var c0#10 := Lit(_module.cmd._h0(Lit(c#0))); 
                  (exists s'#24: int :: 
                    { _module.__default.CoBigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c1#10, s'#24, t#0) } 
                      { _module.__default.CoBigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c0#10, s#0, s'#24) } 
                    _module.__default.CoBigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c0#10, LitInt(s#0), s'#24)
                       && _module.__default.CoBigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c1#10, s'#24, LitInt(t#0)))))
               else (var body#10 := Lit(_module.cmd._h2(Lit(c#0))); 
                LitInt(s#0) == LitInt(t#0)
                   || (exists s'#25: int :: 
                    { _module.__default.CoBigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c#0, s'#25, t#0) } 
                      { _module.__default.CoBigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), body#10, s#0, s'#25) } 
                    _module.__default.CoBigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), body#10, LitInt(s#0), s'#25)
                       && _module.__default.CoBigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), Lit(c#0), s'#25, LitInt(t#0)))))))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#2: Box :: 
            { _module.__default.CoBigStep_h($LS($ly), _k'#2, c#0, s#0, t#0) } 
            ORD#Less(_k'#2, _k#0)
               ==> _module.__default.CoBigStep_h#canCall(_k'#2, c#0, s#0, t#0)))
         && _module.__default.CoBigStep_h($LS($ly), Lit(_k#0), Lit(c#0), LitInt(s#0), LitInt(t#0))
           == ((0 < ORD#Offset(_k#0)
               ==> (if _module.cmd.Inc_q(Lit(c#0))
                 then LitInt(t#0) == LitInt(s#0 + 1)
                 else (if _module.cmd.Seq_q(Lit(c#0))
                   then (var c1#8 := Lit(_module.cmd._h1(Lit(c#0))); 
                    (var c0#8 := Lit(_module.cmd._h0(Lit(c#0))); 
                      (exists s'#20: int :: 
                        { _module.__default.CoBigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c1#8, s'#20, t#0) } 
                          { _module.__default.CoBigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c0#8, s#0, s'#20) } 
                        _module.__default.CoBigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c0#8, LitInt(s#0), s'#20)
                           && _module.__default.CoBigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c1#8, s'#20, LitInt(t#0)))))
                   else (var body#8 := Lit(_module.cmd._h2(Lit(c#0))); 
                    LitInt(s#0) == LitInt(t#0)
                       || (exists s'#21: int :: 
                        { _module.__default.CoBigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c#0, s'#21, t#0) } 
                          { _module.__default.CoBigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), body#8, s#0, s'#21) } 
                        _module.__default.CoBigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), body#8, LitInt(s#0), s'#21)
                           && _module.__default.CoBigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), Lit(c#0), s'#21, LitInt(t#0)))))))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#2: Box :: 
                { _module.__default.CoBigStep_h($LS($ly), _k'#2, c#0, s#0, t#0) } 
                ORD#Less(_k'#2, _k#0)
                   ==> _module.__default.CoBigStep_h($LS($ly), _k'#2, c#0, s#0, t#0)))));
}

function _module.__default.CoBigStep_h#canCall(_k#0: Box, c#0: DatatypeType, s#0: int, t#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, _k#0: Box, c#0: DatatypeType, s#0: int, t#0: int :: 
  { _module.__default.CoBigStep_h($LS($ly), _k#0, c#0, s#0, t#0) } 
  _module.__default.CoBigStep_h($LS($ly), _k#0, c#0, s#0, t#0)
     == _module.__default.CoBigStep_h($ly, _k#0, c#0, s#0, t#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, _k#0: Box, c#0: DatatypeType, s#0: int, t#0: int :: 
  { _module.__default.CoBigStep_h(AsFuelBottom($ly), _k#0, c#0, s#0, t#0) } 
  _module.__default.CoBigStep_h($ly, _k#0, c#0, s#0, t#0)
     == _module.__default.CoBigStep_h($LZ, _k#0, c#0, s#0, t#0));

function _module.__default.CoBigStep_h#requires(LayerType, Box, DatatypeType, int, int) : bool;

// #requires axiom for _module.__default.CoBigStep_h
axiom (forall $ly: LayerType, _k#0: Box, c#0: DatatypeType, s#0: int, t#0: int :: 
  { _module.__default.CoBigStep_h#requires($ly, _k#0, c#0, s#0, t#0) } 
  $Is(c#0, Tclass._module.cmd())
     ==> _module.__default.CoBigStep_h#requires($ly, _k#0, c#0, s#0, t#0) == true);

procedure {:verboseName "FromAndToAnywhere (well-formedness)"} CheckWellFormed$$_module.__default.FromAndToAnywhere(s#0: int, t#0: int);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "FromAndToAnywhere (call)"} Call$$_module.__default.FromAndToAnywhere(s#0: int, t#0: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.CoBigStep#canCall(Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))), 
    s#0, 
    t#0);
  free ensures {:id "id456"} _module.__default.CoBigStep#canCall(Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))), 
      s#0, 
      t#0)
     && 
    _module.__default.CoBigStep($LS($LZ), 
      Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))), 
      s#0, 
      t#0)
     && (if _module.cmd.Inc_q(Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))))
       then t#0 == s#0 + 1
       else (if _module.cmd.Seq_q(Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))))
         then (var c1#1 := Lit(_module.cmd._h1(Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))))); 
          (var c0#1 := Lit(_module.cmd._h0(Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))))); 
            (exists s'#2: int :: 
              { _module.__default.CoBigStep($LS($LZ), c1#1, s'#2, t#0) } 
                { _module.__default.CoBigStep($LS($LZ), c0#1, s#0, s'#2) } 
              _module.__default.CoBigStep($LS($LZ), c0#1, s#0, s'#2)
                 && _module.__default.CoBigStep($LS($LZ), c1#1, s'#2, t#0))))
         else (var body#1 := Lit(_module.cmd._h2(Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))))); 
          s#0 == t#0
             || (exists s'#3: int :: 
              { _module.__default.CoBigStep($LS($LZ), 
                  #_module.cmd.Repeat(#_module.cmd.Seq(#_module.cmd.Inc(), #_module.cmd.Inc())), 
                  s'#3, 
                  t#0) } 
                { _module.__default.CoBigStep($LS($LZ), body#1, s#0, s'#3) } 
              _module.__default.CoBigStep($LS($LZ), body#1, s#0, s'#3)
                 && _module.__default.CoBigStep($LS($LZ), 
                  Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))), 
                  s'#3, 
                  t#0)))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "FromAndToAnywhere# (co-call)"} CoCall$$_module.__default.FromAndToAnywhere_h(_k#0: Box, s#1: int, t#1: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.CoBigStep_h#canCall(_k#0, 
    Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))), 
    s#1, 
    t#1);
  free ensures {:id "id457"} _module.__default.CoBigStep_h#canCall(_k#0, 
      Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))), 
      s#1, 
      t#1)
     && 
    _module.__default.CoBigStep_h($LS($LZ), 
      _k#0, 
      Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))), 
      s#1, 
      t#1)
     && 
    (0 < ORD#Offset(_k#0)
       ==> (if _module.cmd.Inc_q(Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))))
         then t#1 == s#1 + 1
         else (if _module.cmd.Seq_q(Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))))
           then (var c1#3 := Lit(_module.cmd._h1(Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))))); 
            (var c0#3 := Lit(_module.cmd._h0(Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))))); 
              (exists s'#6: int :: 
                { _module.__default.CoBigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#3, s'#6, t#1) } 
                  { _module.__default.CoBigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#3, s#1, s'#6) } 
                _module.__default.CoBigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#3, s#1, s'#6)
                   && _module.__default.CoBigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#3, s'#6, t#1))))
           else (var body#3 := Lit(_module.cmd._h2(Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))))); 
            s#1 == t#1
               || (exists s'#7: int :: 
                { _module.__default.CoBigStep_h($LS($LZ), 
                    ORD#Minus(_k#0, ORD#FromNat(1)), 
                    #_module.cmd.Repeat(#_module.cmd.Seq(#_module.cmd.Inc(), #_module.cmd.Inc())), 
                    s'#7, 
                    t#1) } 
                  { _module.__default.CoBigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), body#3, s#1, s'#7) } 
                _module.__default.CoBigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), body#3, s#1, s'#7)
                   && _module.__default.CoBigStep_h($LS($LZ), 
                    ORD#Minus(_k#0, ORD#FromNat(1)), 
                    Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))), 
                    s'#7, 
                    t#1))))))
     && (LitInt(0) == ORD#Offset(_k#0)
       ==> (forall _k'#0: Box :: 
        { _module.__default.CoBigStep_h($LS($LZ), 
            _k'#0, 
            #_module.cmd.Repeat(#_module.cmd.Seq(#_module.cmd.Inc(), #_module.cmd.Inc())), 
            s#1, 
            t#1) } 
        ORD#Less(_k'#0, _k#0)
           ==> _module.__default.CoBigStep_h($LS($LZ), 
            _k'#0, 
            Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))), 
            s#1, 
            t#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "FromAndToAnywhere# (correctness)"} Impl$$_module.__default.FromAndToAnywhere_h(_k#0: Box, s#1: int, t#1: int) returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.CoBigStep_h#canCall(_k#0, 
    Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))), 
    s#1, 
    t#1);
  ensures {:id "id458"} _module.__default.CoBigStep_h#canCall(_k#0, 
      Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))), 
      s#1, 
      t#1)
     ==> _module.__default.CoBigStep_h($LS($LZ), 
        _k#0, 
        Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))), 
        s#1, 
        t#1)
       || (0 < ORD#Offset(_k#0)
         ==> 
        Lit(_module.cmd.Inc_q(Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc())))))))
         ==> t#1 == s#1 + 1);
  ensures {:id "id459"} _module.__default.CoBigStep_h#canCall(_k#0, 
      Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))), 
      s#1, 
      t#1)
     ==> _module.__default.CoBigStep_h($LS($LZ), 
        _k#0, 
        Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))), 
        s#1, 
        t#1)
       || (0 < ORD#Offset(_k#0)
         ==> 
        !Lit(_module.cmd.Inc_q(Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc())))))))
         ==> 
        Lit(_module.cmd.Seq_q(Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc())))))))
         ==> (var c1#4 := Lit(_module.cmd._h1(Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))))); 
          (var c0#4 := Lit(_module.cmd._h0(Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))))); 
            (exists s'#8: int :: 
              { _module.__default.CoBigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#4, s'#8, t#1) } 
                { _module.__default.CoBigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#4, s#1, s'#8) } 
              _module.__default.CoBigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#4, s#1, s'#8)
                 && _module.__default.CoBigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#4, s'#8, t#1)))));
  ensures {:id "id460"} _module.__default.CoBigStep_h#canCall(_k#0, 
      Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))), 
      s#1, 
      t#1)
     ==> _module.__default.CoBigStep_h($LS($LZ), 
        _k#0, 
        Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))), 
        s#1, 
        t#1)
       || (0 < ORD#Offset(_k#0)
         ==> 
        !Lit(_module.cmd.Inc_q(Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc())))))))
         ==> 
        !Lit(_module.cmd.Seq_q(Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc())))))))
         ==> (var body#4 := Lit(_module.cmd._h2(Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))))); 
          s#1 == t#1
             || (exists s'#9: int :: 
              { _module.__default.CoBigStep_h($LS($LS($LZ)), 
                  ORD#Minus(_k#0, ORD#FromNat(1)), 
                  #_module.cmd.Repeat(#_module.cmd.Seq(#_module.cmd.Inc(), #_module.cmd.Inc())), 
                  s'#9, 
                  t#1) } 
                { _module.__default.CoBigStep_h($LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), body#4, s#1, s'#9) } 
              _module.__default.CoBigStep_h($LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), body#4, s#1, s'#9)
                 && _module.__default.CoBigStep_h($LS($LS($LZ)), 
                  ORD#Minus(_k#0, ORD#FromNat(1)), 
                  Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))), 
                  s'#9, 
                  t#1))));
  ensures {:id "id461"} _module.__default.CoBigStep_h#canCall(_k#0, 
      Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))), 
      s#1, 
      t#1)
     ==> _module.__default.CoBigStep_h($LS($LZ), 
        _k#0, 
        Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))), 
        s#1, 
        t#1)
       || (LitInt(0) == ORD#Offset(_k#0)
         ==> (forall _k'#1: Box :: 
          { _module.__default.CoBigStep_h($LS($LS($LZ)), 
              _k'#1, 
              #_module.cmd.Repeat(#_module.cmd.Seq(#_module.cmd.Inc(), #_module.cmd.Inc())), 
              s#1, 
              t#1) } 
          ORD#Less(_k'#1, _k#0)
             ==> _module.__default.CoBigStep_h($LS($LS($LZ)), 
              _k'#1, 
              Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))), 
              s#1, 
              t#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FromAndToAnywhere# (correctness)"} Impl$$_module.__default.FromAndToAnywhere_h(_k#0: Box, s#1: int, t#1: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var s'#12: int;
  var s''#0: int;
  var $rhs#0_1_0: int;
  var $rhs#0_1_1: int;
  var s##0: int;
  var ##_k#0: Box;
  var ##c#1: DatatypeType;
  var ##s#1: int;
  var ##t#1: int;
  var ##_k#1: Box;
  var ##c#2: DatatypeType;
  var ##s#2: int;
  var ##t#2: int;
  var _k##0: Box;
  var s##1: int;
  var t##0: int;
  var ##_k#2: Box;
  var ##c#3: DatatypeType;
  var ##s#3: int;
  var ##t#3: int;
  var ##_k#3: Box;
  var ##c#4: DatatypeType;
  var ##s#4: int;
  var ##t#4: int;
  var ##_k#4: Box;
  var ##c#5: DatatypeType;
  var ##s#5: int;
  var ##t#5: int;
  var ##_k#5: Box;
  var ##c#6: DatatypeType;
  var ##s#6: int;
  var ##t#6: int;
  var ##_k#6: Box;
  var ##c#7: DatatypeType;
  var ##s#7: int;
  var ##t#7: int;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: FromAndToAnywhere#, Impl$$_module.__default.FromAndToAnywhere_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box, $ih#s0#0: int, $ih#t0#0: int :: 
      { _module.__default.CoBigStep_h($LS($LZ), 
          $ih#_k0#0, 
          Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))), 
          $ih#s0#0, 
          $ih#t0#0) } 
      Lit(true)
           && (ORD#Less($ih#_k0#0, _k#0)
             || ($ih#_k0#0 == _k#0
               && ((0 <= $ih#s0#0 && $ih#s0#0 < s#1)
                 || ($ih#s0#0 == s#1 && 0 <= $ih#t0#0 && $ih#t0#0 < t#1))))
         ==> _module.__default.CoBigStep_h($LS($LZ), 
          $ih#_k0#0, 
          Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))), 
          $ih#s0#0, 
          $ih#t0#0));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(277,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(278,3)
        assume true;
        if (s#1 == t#1)
        {
        }
        else
        {
            // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(280,17)
            assume true;
            assume true;
            assume true;
            $rhs#0_1_0 := s#1 + 1;
            assume true;
            $rhs#0_1_1 := s#1 + 2;
            s'#12 := $rhs#0_1_0;
            s''#0 := $rhs#0_1_1;
            // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(281,5)
            // Assume Fuel Constant
            if (*)
            {
                // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(281,5)
                assume true;
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(281,5)
                assume {:id "id483"} ORD#IsNat(Lit(ORD#FromNat(1)));
                assume {:id "id484"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                ##_k#4 := ORD#Minus(_k#0, ORD#FromNat(1));
                // assume allocatedness for argument to function
                assume $IsAlloc(##_k#4, TORDINAL, $Heap);
                ##c#5 := Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc())));
                // assume allocatedness for argument to function
                assume $IsAlloc(##c#5, Tclass._module.cmd(), $Heap);
                ##s#5 := s#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#5, TInt, $Heap);
                ##t#5 := s''#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#5, TInt, $Heap);
                assume _module.__default.CoBigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                  Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))), 
                  s#1, 
                  s''#0);
                if (_module.__default.CoBigStep_h($LS($LZ), 
                  ORD#Minus(_k#0, ORD#FromNat(1)), 
                  Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))), 
                  s#1, 
                  s''#0))
                {
                    assume {:id "id485"} ORD#IsNat(Lit(ORD#FromNat(1)));
                    assume {:id "id486"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                    ##_k#5 := ORD#Minus(_k#0, ORD#FromNat(1));
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##_k#5, TORDINAL, $Heap);
                    ##c#6 := Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc())))));
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##c#6, Tclass._module.cmd(), $Heap);
                    ##s#6 := s''#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#6, TInt, $Heap);
                    ##t#6 := t#1;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#6, TInt, $Heap);
                    assume _module.__default.CoBigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                      Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))), 
                      s''#0, 
                      t#1);
                }

                assume _module.__default.CoBigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                    Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))), 
                    s#1, 
                    s''#0)
                   && (_module.__default.CoBigStep_h($LS($LZ), 
                      ORD#Minus(_k#0, ORD#FromNat(1)), 
                      Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))), 
                      s#1, 
                      s''#0)
                     ==> _module.__default.CoBigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                      Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))), 
                      s''#0, 
                      t#1));
                // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(281,5)
                assume {:id "id487"} _module.__default.CoBigStep_h($LS($LZ), 
                    ORD#Minus(_k#0, ORD#FromNat(1)), 
                    Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))), 
                    s#1, 
                    s''#0)
                   && _module.__default.CoBigStep_h($LS($LZ), 
                    ORD#Minus(_k#0, ORD#FromNat(1)), 
                    Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))), 
                    s''#0, 
                    t#1);
                // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(281,5)
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(281,5)
                ##_k#6 := _k#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##_k#6, TORDINAL, $Heap);
                ##c#7 := Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc())))));
                // assume allocatedness for argument to function
                assume $IsAlloc(##c#7, Tclass._module.cmd(), $Heap);
                ##s#7 := s#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#7, TInt, $Heap);
                ##t#7 := t#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#7, TInt, $Heap);
                assume _module.__default.CoBigStep_h#canCall(_k#0, 
                  Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))), 
                  s#1, 
                  t#1);
                assume _module.__default.CoBigStep_h#canCall(_k#0, 
                  Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))), 
                  s#1, 
                  t#1);
                // ----- assert line0 <== line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(281,5)
                assert {:id "id488"} {:subsumption 0} _module.__default.CoBigStep_h($LS($LZ), 
                      ORD#Minus(_k#0, ORD#FromNat(1)), 
                      Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))), 
                      s#1, 
                      s''#0)
                     && _module.__default.CoBigStep_h($LS($LZ), 
                      ORD#Minus(_k#0, ORD#FromNat(1)), 
                      Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))), 
                      s''#0, 
                      t#1)
                   ==> 
                  _module.__default.CoBigStep_h#canCall(_k#0, 
                    Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))), 
                    s#1, 
                    t#1)
                   ==> _module.__default.CoBigStep_h($LS($LZ), 
                      _k#0, 
                      Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))), 
                      s#1, 
                      t#1)
                     || (0 < ORD#Offset(_k#0)
                       ==> 
                      Lit(_module.cmd.Inc_q(Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc())))))))
                       ==> t#1 == s#1 + 1);
                assert {:id "id489"} {:subsumption 0} _module.__default.CoBigStep_h($LS($LZ), 
                      ORD#Minus(_k#0, ORD#FromNat(1)), 
                      Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))), 
                      s#1, 
                      s''#0)
                     && _module.__default.CoBigStep_h($LS($LZ), 
                      ORD#Minus(_k#0, ORD#FromNat(1)), 
                      Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))), 
                      s''#0, 
                      t#1)
                   ==> 
                  _module.__default.CoBigStep_h#canCall(_k#0, 
                    Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))), 
                    s#1, 
                    t#1)
                   ==> _module.__default.CoBigStep_h($LS($LZ), 
                      _k#0, 
                      Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))), 
                      s#1, 
                      t#1)
                     || (0 < ORD#Offset(_k#0)
                       ==> 
                      !Lit(_module.cmd.Inc_q(Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc())))))))
                       ==> 
                      Lit(_module.cmd.Seq_q(Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc())))))))
                       ==> (var c1#6 := Lit(_module.cmd._h1(Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))))); 
                        (var c0#6 := Lit(_module.cmd._h0(Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))))); 
                          (exists s'#13: int :: 
                            { _module.__default.CoBigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#6, s'#13, t#1) } 
                              { _module.__default.CoBigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#6, s#1, s'#13) } 
                            _module.__default.CoBigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#6, s#1, s'#13)
                               && _module.__default.CoBigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#6, s'#13, t#1)))));
                assert {:id "id490"} {:subsumption 0} _module.__default.CoBigStep_h($LS($LZ), 
                      ORD#Minus(_k#0, ORD#FromNat(1)), 
                      Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))), 
                      s#1, 
                      s''#0)
                     && _module.__default.CoBigStep_h($LS($LZ), 
                      ORD#Minus(_k#0, ORD#FromNat(1)), 
                      Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))), 
                      s''#0, 
                      t#1)
                   ==> 
                  _module.__default.CoBigStep_h#canCall(_k#0, 
                    Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))), 
                    s#1, 
                    t#1)
                   ==> _module.__default.CoBigStep_h($LS($LZ), 
                      _k#0, 
                      Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))), 
                      s#1, 
                      t#1)
                     || (0 < ORD#Offset(_k#0)
                       ==> 
                      !Lit(_module.cmd.Inc_q(Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc())))))))
                       ==> 
                      !Lit(_module.cmd.Seq_q(Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc())))))))
                       ==> (var body#6 := Lit(_module.cmd._h2(Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))))); 
                        s#1 == t#1
                           || (exists s'#14: int :: 
                            { _module.__default.CoBigStep_h($LS($LS($LZ)), 
                                ORD#Minus(_k#0, ORD#FromNat(1)), 
                                #_module.cmd.Repeat(#_module.cmd.Seq(#_module.cmd.Inc(), #_module.cmd.Inc())), 
                                s'#14, 
                                t#1) } 
                              { _module.__default.CoBigStep_h($LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), body#6, s#1, s'#14) } 
                            _module.__default.CoBigStep_h($LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), body#6, s#1, s'#14)
                               && _module.__default.CoBigStep_h($LS($LS($LZ)), 
                                ORD#Minus(_k#0, ORD#FromNat(1)), 
                                Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))), 
                                s'#14, 
                                t#1))));
                assert {:id "id491"} {:subsumption 0} _module.__default.CoBigStep_h($LS($LZ), 
                      ORD#Minus(_k#0, ORD#FromNat(1)), 
                      Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))), 
                      s#1, 
                      s''#0)
                     && _module.__default.CoBigStep_h($LS($LZ), 
                      ORD#Minus(_k#0, ORD#FromNat(1)), 
                      Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))), 
                      s''#0, 
                      t#1)
                   ==> 
                  _module.__default.CoBigStep_h#canCall(_k#0, 
                    Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))), 
                    s#1, 
                    t#1)
                   ==> _module.__default.CoBigStep_h($LS($LZ), 
                      _k#0, 
                      Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))), 
                      s#1, 
                      t#1)
                     || (LitInt(0) == ORD#Offset(_k#0)
                       ==> (forall _k'#2: Box :: 
                        { _module.__default.CoBigStep_h($LS($LS($LZ)), 
                            _k'#2, 
                            #_module.cmd.Repeat(#_module.cmd.Seq(#_module.cmd.Inc(), #_module.cmd.Inc())), 
                            s#1, 
                            t#1) } 
                        ORD#Less(_k'#2, _k#0)
                           ==> _module.__default.CoBigStep_h($LS($LS($LZ)), 
                            _k'#2, 
                            Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))), 
                            s#1, 
                            t#1)));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(281,5)
                assume {:id "id471"} ORD#IsNat(Lit(ORD#FromNat(1)));
                assume {:id "id472"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                ##_k#1 := ORD#Minus(_k#0, ORD#FromNat(1));
                // assume allocatedness for argument to function
                assume $IsAlloc(##_k#1, TORDINAL, $Heap);
                ##c#2 := Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc())));
                // assume allocatedness for argument to function
                assume $IsAlloc(##c#2, Tclass._module.cmd(), $Heap);
                ##s#2 := s#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#2, TInt, $Heap);
                ##t#2 := s''#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#2, TInt, $Heap);
                assume _module.__default.CoBigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                  Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))), 
                  s#1, 
                  s''#0);
                assume _module.__default.CoBigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                  Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))), 
                  s#1, 
                  s''#0);
                // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(281,5)
                assume {:id "id473"} _module.__default.CoBigStep_h($LS($LZ), 
                  ORD#Minus(_k#0, ORD#FromNat(1)), 
                  Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))), 
                  s#1, 
                  s''#0);
                // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(281,5)
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(285,29)
                // TrCallStmt: Before ProcessCallStmt
                assert {:id "id474"} ORD#IsNat(Lit(ORD#FromNat(1)));
                assert {:id "id475"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                assume true;
                // ProcessCallStmt: CheckSubrange
                _k##0 := ORD#Minus(_k#0, ORD#FromNat(1));
                assume true;
                // ProcessCallStmt: CheckSubrange
                s##1 := s''#0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                t##0 := t#1;
                call {:id "id476"} CoCall$$_module.__default.FromAndToAnywhere_h(_k##0, s##1, t##0);
                // TrCallStmt: After ProcessCallStmt
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(281,5)
                assert {:id "id477"} ORD#IsNat(Lit(ORD#FromNat(1)));
                assert {:id "id478"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                ##_k#2 := ORD#Minus(_k#0, ORD#FromNat(1));
                // assume allocatedness for argument to function
                assume $IsAlloc(##_k#2, TORDINAL, $Heap);
                ##c#3 := Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc())));
                // assume allocatedness for argument to function
                assume $IsAlloc(##c#3, Tclass._module.cmd(), $Heap);
                ##s#3 := s#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#3, TInt, $Heap);
                ##t#3 := s''#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#3, TInt, $Heap);
                assume _module.__default.CoBigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                  Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))), 
                  s#1, 
                  s''#0);
                if (_module.__default.CoBigStep_h($LS($LZ), 
                  ORD#Minus(_k#0, ORD#FromNat(1)), 
                  Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))), 
                  s#1, 
                  s''#0))
                {
                    assert {:id "id479"} ORD#IsNat(Lit(ORD#FromNat(1)));
                    assert {:id "id480"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                    ##_k#3 := ORD#Minus(_k#0, ORD#FromNat(1));
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##_k#3, TORDINAL, $Heap);
                    ##c#4 := Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc())))));
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##c#4, Tclass._module.cmd(), $Heap);
                    ##s#4 := s''#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#4, TInt, $Heap);
                    ##t#4 := t#1;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#4, TInt, $Heap);
                    assume _module.__default.CoBigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                      Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))), 
                      s''#0, 
                      t#1);
                }

                assume _module.__default.CoBigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                    Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))), 
                    s#1, 
                    s''#0)
                   && (_module.__default.CoBigStep_h($LS($LZ), 
                      ORD#Minus(_k#0, ORD#FromNat(1)), 
                      Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))), 
                      s#1, 
                      s''#0)
                     ==> _module.__default.CoBigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                      Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))), 
                      s''#0, 
                      t#1));
                // ----- assert line1 <== line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(281,5)
                assert {:id "id481"} {:subsumption 0} _module.__default.CoBigStep_h($LS($LZ), 
                    ORD#Minus(_k#0, ORD#FromNat(1)), 
                    Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))), 
                    s#1, 
                    s''#0)
                   ==> 
                  _module.__default.CoBigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                    Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))), 
                    s#1, 
                    s''#0)
                   ==> _module.__default.CoBigStep_h($LS($LZ), 
                    ORD#Minus(_k#0, ORD#FromNat(1)), 
                    Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))), 
                    s#1, 
                    s''#0);
                assert {:id "id482"} {:subsumption 0} _module.__default.CoBigStep_h($LS($LZ), 
                    ORD#Minus(_k#0, ORD#FromNat(1)), 
                    Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))), 
                    s#1, 
                    s''#0)
                   ==> 
                  _module.__default.CoBigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                    Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))), 
                    s''#0, 
                    t#1)
                   ==> _module.__default.CoBigStep_h($LS($LZ), 
                    ORD#Minus(_k#0, ORD#FromNat(1)), 
                    Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))), 
                    s''#0, 
                    t#1);
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(281,5)
                assume true;
                // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(281,5)
                assume {:id "id466"} true;
                // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(281,5)
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(287,22)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                s##0 := s#1;
                call {:id "id467"} Call$$_module.__default.StepIncInc(s##0);
                // TrCallStmt: After ProcessCallStmt
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(281,5)
                assert {:id "id468"} ORD#IsNat(Lit(ORD#FromNat(1)));
                assert {:id "id469"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                ##_k#0 := ORD#Minus(_k#0, ORD#FromNat(1));
                // assume allocatedness for argument to function
                assume $IsAlloc(##_k#0, TORDINAL, $Heap);
                ##c#1 := Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc())));
                // assume allocatedness for argument to function
                assume $IsAlloc(##c#1, Tclass._module.cmd(), $Heap);
                ##s#1 := s#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#1, TInt, $Heap);
                ##t#1 := s''#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#1, TInt, $Heap);
                assume _module.__default.CoBigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                  Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))), 
                  s#1, 
                  s''#0);
                assume _module.__default.CoBigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                  Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))), 
                  s#1, 
                  s''#0);
                // ----- assert line2 <== line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(281,5)
                assert {:id "id470"} {:subsumption 0} Lit(true)
                   ==> 
                  _module.__default.CoBigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                    Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))), 
                    s#1, 
                    s''#0)
                   ==> _module.__default.CoBigStep_h($LS($LZ), 
                    ORD#Minus(_k#0, ORD#FromNat(1)), 
                    Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))), 
                    s#1, 
                    s''#0);
                assume false;
            }

            assume {:id "id492"} true
               ==> _module.__default.CoBigStep_h($LS($LZ), 
                _k#0, 
                Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))), 
                s#1, 
                t#1);
        }
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(277,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#3: Box, s#2: int, t#2: int :: 
          { _module.__default.CoBigStep_h($LS($LZ), 
              _k'#3, 
              #_module.cmd.Repeat(#_module.cmd.Seq(#_module.cmd.Inc(), #_module.cmd.Inc())), 
              s#2, 
              t#2) } 
          ORD#Less(_k'#3, _k#0)
             ==> _module.__default.CoBigStep_h($LS($LZ), 
              _k'#3, 
              Lit(#_module.cmd.Repeat(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))))), 
              s#2, 
              t#2));
    }
}



procedure {:verboseName "StepIncInc (well-formedness)"} CheckWellFormed$$_module.__default.StepIncInc(s#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "StepIncInc (call)"} Call$$_module.__default.StepIncInc(s#0: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.CoBigStep#canCall(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))), 
    s#0, 
    s#0 + 2);
  free ensures {:id "id494"} _module.__default.CoBigStep#canCall(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))), 
      s#0, 
      s#0 + 2)
     && _module.__default.CoBigStep($LS($LZ), 
      Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))), 
      s#0, 
      s#0 + 2);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "StepIncInc (correctness)"} Impl$$_module.__default.StepIncInc(s#0: int) returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.CoBigStep#canCall(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))), 
    s#0, 
    s#0 + 2);
  ensures {:id "id495"} _module.__default.CoBigStep#canCall(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))), 
      s#0, 
      s#0 + 2)
     ==> _module.__default.CoBigStep($LS($LZ), 
      Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))), 
      s#0, 
      s#0 + 2);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "StepIncInc (correctness)"} Impl$$_module.__default.StepIncInc(s#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##c#0_0_0: DatatypeType;
  var ##s#0_0_0: int;
  var ##t#0_0_0: int;
  var ##c#0_0_1: DatatypeType;
  var ##s#0_0_1: int;
  var ##t#0_0_1: int;
  var ##c#0_0_2: DatatypeType;
  var ##s#0_0_2: int;
  var ##t#0_0_2: int;
  var ##c#0_0: DatatypeType;
  var ##s#0_0: int;
  var ##t#0_0: int;
  var ##c#0_1: DatatypeType;
  var ##s#0_1: int;
  var ##t#0_1: int;

    // AddMethodImpl: StepIncInc, Impl$$_module.__default.StepIncInc
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(296,3)
    // Assume Fuel Constant
    if (*)
    {
        // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(296,3)
        ##c#0_0 := Lit(#_module.cmd.Inc());
        // assume allocatedness for argument to function
        assume $IsAlloc(##c#0_0, Tclass._module.cmd(), $Heap);
        ##s#0_0 := s#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##s#0_0, TInt, $Heap);
        ##t#0_0 := s#0 + 1;
        // assume allocatedness for argument to function
        assume $IsAlloc(##t#0_0, TInt, $Heap);
        assume _module.__default.CoBigStep#canCall(Lit(#_module.cmd.Inc()), s#0, s#0 + 1);
        if (_module.__default.CoBigStep($LS($LZ), Lit(#_module.cmd.Inc()), s#0, s#0 + 1))
        {
            ##c#0_1 := Lit(#_module.cmd.Inc());
            // assume allocatedness for argument to function
            assume $IsAlloc(##c#0_1, Tclass._module.cmd(), $Heap);
            ##s#0_1 := s#0 + 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0_1, TInt, $Heap);
            ##t#0_1 := s#0 + 2;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#0_1, TInt, $Heap);
            assume _module.__default.CoBigStep#canCall(Lit(#_module.cmd.Inc()), s#0 + 1, s#0 + 2);
        }

        assume _module.__default.CoBigStep#canCall(Lit(#_module.cmd.Inc()), s#0, s#0 + 1)
           && (_module.__default.CoBigStep($LS($LZ), Lit(#_module.cmd.Inc()), s#0, s#0 + 1)
             ==> _module.__default.CoBigStep#canCall(Lit(#_module.cmd.Inc()), s#0 + 1, s#0 + 2));
        assume false;
    }
    else if (*)
    {
        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(296,3)
        ##c#0_0_0 := Lit(#_module.cmd.Inc());
        // assume allocatedness for argument to function
        assume $IsAlloc(##c#0_0_0, Tclass._module.cmd(), $Heap);
        ##s#0_0_0 := s#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##s#0_0_0, TInt, $Heap);
        ##t#0_0_0 := s#0 + 1;
        // assume allocatedness for argument to function
        assume $IsAlloc(##t#0_0_0, TInt, $Heap);
        assume _module.__default.CoBigStep#canCall(Lit(#_module.cmd.Inc()), s#0, s#0 + 1);
        if (_module.__default.CoBigStep($LS($LZ), Lit(#_module.cmd.Inc()), s#0, s#0 + 1))
        {
            ##c#0_0_1 := Lit(#_module.cmd.Inc());
            // assume allocatedness for argument to function
            assume $IsAlloc(##c#0_0_1, Tclass._module.cmd(), $Heap);
            ##s#0_0_1 := s#0 + 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0_0_1, TInt, $Heap);
            ##t#0_0_1 := s#0 + 2;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#0_0_1, TInt, $Heap);
            assume _module.__default.CoBigStep#canCall(Lit(#_module.cmd.Inc()), s#0 + 1, s#0 + 2);
        }

        assume _module.__default.CoBigStep#canCall(Lit(#_module.cmd.Inc()), s#0, s#0 + 1)
           && (_module.__default.CoBigStep($LS($LZ), Lit(#_module.cmd.Inc()), s#0, s#0 + 1)
             ==> _module.__default.CoBigStep#canCall(Lit(#_module.cmd.Inc()), s#0 + 1, s#0 + 2));
        // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(296,3)
        assume {:id "id496"} _module.__default.CoBigStep($LS($LZ), Lit(#_module.cmd.Inc()), s#0, s#0 + 1)
           && _module.__default.CoBigStep($LS($LZ), Lit(#_module.cmd.Inc()), s#0 + 1, s#0 + 2);
        // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(296,3)
        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(296,3)
        ##c#0_0_2 := Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc())));
        // assume allocatedness for argument to function
        assume $IsAlloc(##c#0_0_2, Tclass._module.cmd(), $Heap);
        ##s#0_0_2 := s#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##s#0_0_2, TInt, $Heap);
        ##t#0_0_2 := s#0 + 2;
        // assume allocatedness for argument to function
        assume $IsAlloc(##t#0_0_2, TInt, $Heap);
        assume _module.__default.CoBigStep#canCall(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))), 
          s#0, 
          s#0 + 2);
        assume _module.__default.CoBigStep#canCall(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))), 
          s#0, 
          s#0 + 2);
        // ----- assert line0 <== line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(296,3)
        assert {:id "id497"} {:subsumption 0} _module.__default.CoBigStep($LS($LZ), Lit(#_module.cmd.Inc()), s#0, s#0 + 1)
             && _module.__default.CoBigStep($LS($LZ), Lit(#_module.cmd.Inc()), s#0 + 1, s#0 + 2)
           ==> 
          _module.__default.CoBigStep#canCall(Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))), 
            s#0, 
            s#0 + 2)
           ==> _module.__default.CoBigStep($LS($LZ), 
            Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))), 
            s#0, 
            s#0 + 2);
        assume false;
    }

    assume {:id "id498"} _module.__default.CoBigStep($LS($LZ), Lit(#_module.cmd.Inc()), s#0, s#0 + 1)
         && _module.__default.CoBigStep($LS($LZ), Lit(#_module.cmd.Inc()), s#0 + 1, s#0 + 2)
       ==> _module.__default.CoBigStep($LS($LZ), 
        Lit(#_module.cmd.Seq(Lit(#_module.cmd.Inc()), Lit(#_module.cmd.Inc()))), 
        s#0, 
        s#0 + 2);
}



procedure {:verboseName "CoMonotonic (well-formedness)"} CheckWellFormed$$_module.__default.CoMonotonic(c#0: DatatypeType
       where $Is(c#0, Tclass._module.cmd())
         && $IsAlloc(c#0, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#0), 
    s#0: int, 
    t#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "CoMonotonic (call)"} Call$$_module.__default.CoMonotonic(c#0: DatatypeType
       where $Is(c#0, Tclass._module.cmd())
         && $IsAlloc(c#0, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#0), 
    s#0: int, 
    t#0: int);
  // user-defined preconditions
  requires {:id "id501"} _module.__default.CoBigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.CoBigStep($LS($LZ), c#0, s#0, t#0)
       || (_module.cmd.Inc_q(c#0) ==> t#0 == s#0 + 1);
  requires {:id "id502"} _module.__default.CoBigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.CoBigStep($LS($LZ), c#0, s#0, t#0)
       || (!_module.cmd.Inc_q(c#0)
         ==> 
        _module.cmd.Seq_q(c#0)
         ==> (var c1#0 := _module.cmd._h1(c#0); 
          (var c0#0 := _module.cmd._h0(c#0); 
            (exists s'#0: int :: 
              { _module.__default.CoBigStep($LS($LZ), c1#0, s'#0, t#0) } 
                { _module.__default.CoBigStep($LS($LZ), c0#0, s#0, s'#0) } 
              _module.__default.CoBigStep($LS($LZ), c0#0, s#0, s'#0)
                 && _module.__default.CoBigStep($LS($LZ), c1#0, s'#0, t#0)))));
  requires {:id "id503"} _module.__default.CoBigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.CoBigStep($LS($LZ), c#0, s#0, t#0)
       || (!_module.cmd.Inc_q(c#0)
         ==> 
        !_module.cmd.Seq_q(c#0)
         ==> (var body#0 := _module.cmd._h2(c#0); 
          s#0 == t#0
             || (exists s'#1: int :: 
              { _module.__default.CoBigStep($LS($LS($LZ)), c#0, s'#1, t#0) } 
                { _module.__default.CoBigStep($LS($LS($LZ)), body#0, s#0, s'#1) } 
              _module.__default.CoBigStep($LS($LS($LZ)), body#0, s#0, s'#1)
                 && _module.__default.CoBigStep($LS($LS($LZ)), c#0, s'#1, t#0))));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id504"} s#0 <= t#0;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "CoMonotonic (correctness)"} Impl$$_module.__default.CoMonotonic(c#0: DatatypeType
       where $Is(c#0, Tclass._module.cmd())
         && $IsAlloc(c#0, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#0), 
    s#0: int, 
    t#0: int)
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id505"} _module.__default.CoBigStep#canCall(c#0, s#0, t#0)
     && 
    _module.__default.CoBigStep($LS($LZ), c#0, s#0, t#0)
     && (if _module.cmd.Inc_q(c#0)
       then t#0 == s#0 + 1
       else (if _module.cmd.Seq_q(c#0)
         then (var c1#3 := _module.cmd._h1(c#0); 
          (var c0#3 := _module.cmd._h0(c#0); 
            (exists s'#6: int :: 
              { _module.__default.CoBigStep($LS($LZ), c1#3, s'#6, t#0) } 
                { _module.__default.CoBigStep($LS($LZ), c0#3, s#0, s'#6) } 
              _module.__default.CoBigStep($LS($LZ), c0#3, s#0, s'#6)
                 && _module.__default.CoBigStep($LS($LZ), c1#3, s'#6, t#0))))
         else (var body#3 := _module.cmd._h2(c#0); 
          s#0 == t#0
             || (exists s'#7: int :: 
              { _module.__default.CoBigStep($LS($LZ), c#0, s'#7, t#0) } 
                { _module.__default.CoBigStep($LS($LZ), body#3, s#0, s'#7) } 
              _module.__default.CoBigStep($LS($LZ), body#3, s#0, s'#7)
                 && _module.__default.CoBigStep($LS($LZ), c#0, s'#7, t#0)))));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id506"} s#0 <= t#0;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "CoMonotonic (correctness)"} Impl$$_module.__default.CoMonotonic(c#0: DatatypeType, s#0: int, t#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var _mcc#2#0_0: DatatypeType;
  var body#0_0: DatatypeType;
  var let#0_0#0#0: DatatypeType;
  var s'#0_1_0: int;
  var s'#0_1_1: int;
  var ##c#0_1_0: DatatypeType;
  var ##s#0_1_0: int;
  var ##t#0_1_0: int;
  var ##c#0_1_1: DatatypeType;
  var ##s#0_1_1: int;
  var ##t#0_1_1: int;
  var c##0_1_0: DatatypeType;
  var s##0_1_0: int;
  var t##0_1_0: int;
  var c##0_1_1: DatatypeType;
  var s##0_1_1: int;
  var t##0_1_1: int;
  var _mcc#0#1_0: DatatypeType;
  var _mcc#1#1_0: DatatypeType;
  var c1#1_0: DatatypeType;
  var let#1_0#0#0: DatatypeType;
  var c0#1_0: DatatypeType;
  var let#1_1#0#0: DatatypeType;
  var s'#1_0: int;
  var s'#1_1: int;
  var ##c#1_0: DatatypeType;
  var ##s#1_0: int;
  var ##t#1_0: int;
  var ##c#1_1: DatatypeType;
  var ##s#1_1: int;
  var ##t#1_1: int;
  var c##1_0: DatatypeType;
  var s##1_0: int;
  var t##1_0: int;
  var c##1_1: DatatypeType;
  var s##1_1: int;
  var t##1_1: int;

    // AddMethodImpl: CoMonotonic, Impl$$_module.__default.CoMonotonic
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.cmd(c#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#c0#0: DatatypeType, $ih#s0#0: int, $ih#t0#0: int :: 
      { _module.__default.CoBigStep($LS($LZ), $ih#c0#0, $ih#s0#0, $ih#t0#0) } 
      $Is($ih#c0#0, Tclass._module.cmd())
           && _module.__default.CoBigStep($LS($LZ), $ih#c0#0, $ih#s0#0, $ih#t0#0)
           && (DtRank($ih#c0#0) < DtRank(c#0)
             || (DtRank($ih#c0#0) == DtRank(c#0)
               && ((0 <= $ih#s0#0 && $ih#s0#0 < s#0)
                 || ($ih#s0#0 == s#0 && 0 <= $ih#t0#0 && $ih#t0#0 < t#0))))
         ==> $ih#s0#0 <= $ih#t0#0);
    $_reverifyPost := false;
    assume true;
    havoc _mcc#2#0_0;
    havoc _mcc#0#1_0, _mcc#1#1_0;
    if (c#0 == #_module.cmd.Inc())
    {
    }
    else if (c#0 == #_module.cmd.Seq(_mcc#0#1_0, _mcc#1#1_0))
    {
        assume $Is(_mcc#0#1_0, Tclass._module.cmd());
        assume $Is(_mcc#1#1_0, Tclass._module.cmd());
        havoc c1#1_0;
        assume $Is(c1#1_0, Tclass._module.cmd())
           && $IsAlloc(c1#1_0, Tclass._module.cmd(), $Heap);
        assume {:id "id519"} let#1_0#0#0 == _mcc#1#1_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#1_0#0#0, Tclass._module.cmd());
        assume {:id "id520"} c1#1_0 == let#1_0#0#0;
        havoc c0#1_0;
        assume $Is(c0#1_0, Tclass._module.cmd())
           && $IsAlloc(c0#1_0, Tclass._module.cmd(), $Heap);
        assume {:id "id521"} let#1_1#0#0 == _mcc#0#1_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#1_1#0#0, Tclass._module.cmd());
        assume {:id "id522"} c0#1_0 == let#1_1#0#0;
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(310,12)
        havoc s'#1_1;
        if (true)
        {
            ##c#1_0 := c0#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##c#1_0, Tclass._module.cmd(), $Heap);
            ##s#1_0 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#1_0, TInt, $Heap);
            ##t#1_0 := s'#1_1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#1_0, TInt, $Heap);
            assume _module.__default.CoBigStep#canCall(c0#1_0, s#0, s'#1_1);
            if (_module.__default.CoBigStep($LS($LZ), c0#1_0, s#0, s'#1_1))
            {
                ##c#1_1 := c1#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##c#1_1, Tclass._module.cmd(), $Heap);
                ##s#1_1 := s'#1_1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#1_1, TInt, $Heap);
                ##t#1_1 := t#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#1_1, TInt, $Heap);
                assume _module.__default.CoBigStep#canCall(c1#1_0, s'#1_1, t#0);
            }

            assume _module.__default.CoBigStep#canCall(c0#1_0, s#0, s'#1_1)
               && (_module.__default.CoBigStep($LS($LZ), c0#1_0, s#0, s'#1_1)
                 ==> _module.__default.CoBigStep#canCall(c1#1_0, s'#1_1, t#0));
        }

        assert {:id "id523"} ($Is(LitInt(0), TInt)
             && 
            _module.__default.CoBigStep($LS($LZ), c0#1_0, s#0, LitInt(0))
             && _module.__default.CoBigStep($LS($LZ), c1#1_0, LitInt(0), t#0))
           || (exists $as#s'1_0#1_0: int :: 
            _module.__default.CoBigStep($LS($LZ), c0#1_0, s#0, $as#s'1_0#1_0)
               && _module.__default.CoBigStep($LS($LZ), c1#1_0, $as#s'1_0#1_0, t#0));
        havoc s'#1_0;
        assume {:id "id524"} _module.__default.CoBigStep($LS($LZ), c0#1_0, s#0, s'#1_0)
           && _module.__default.CoBigStep($LS($LZ), c1#1_0, s'#1_0, t#0);
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(311,16)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        c##1_0 := c0#1_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        s##1_0 := s#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        t##1_0 := s'#1_0;
        assert {:id "id525"} 0 <= s#0 || DtRank(c##1_0) < DtRank(c#0) || s##1_0 == s#0;
        assert {:id "id526"} 0 <= t#0 || DtRank(c##1_0) < DtRank(c#0) || s##1_0 < s#0 || t##1_0 == t#0;
        assert {:id "id527"} DtRank(c##1_0) < DtRank(c#0)
           || (DtRank(c##1_0) == DtRank(c#0)
             && (s##1_0 < s#0 || (s##1_0 == s#0 && t##1_0 < t#0)));
        call {:id "id528"} Call$$_module.__default.CoMonotonic(c##1_0, s##1_0, t##1_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(312,16)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        c##1_1 := c1#1_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        s##1_1 := s'#1_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        t##1_1 := t#0;
        assert {:id "id529"} 0 <= s#0 || DtRank(c##1_1) < DtRank(c#0) || s##1_1 == s#0;
        assert {:id "id530"} 0 <= t#0 || DtRank(c##1_1) < DtRank(c#0) || s##1_1 < s#0 || t##1_1 == t#0;
        assert {:id "id531"} DtRank(c##1_1) < DtRank(c#0)
           || (DtRank(c##1_1) == DtRank(c#0)
             && (s##1_1 < s#0 || (s##1_1 == s#0 && t##1_1 < t#0)));
        call {:id "id532"} Call$$_module.__default.CoMonotonic(c##1_1, s##1_1, t##1_1);
        // TrCallStmt: After ProcessCallStmt
    }
    else if (c#0 == #_module.cmd.Repeat(_mcc#2#0_0))
    {
        assume $Is(_mcc#2#0_0, Tclass._module.cmd());
        havoc body#0_0;
        assume $Is(body#0_0, Tclass._module.cmd())
           && $IsAlloc(body#0_0, Tclass._module.cmd(), $Heap);
        assume {:id "id507"} let#0_0#0#0 == _mcc#2#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_0#0#0, Tclass._module.cmd());
        assume {:id "id508"} body#0_0 == let#0_0#0#0;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(314,5)
        assume true;
        if (s#0 == t#0)
        {
        }
        else
        {
            // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(316,14)
            havoc s'#0_1_1;
            if (true)
            {
                ##c#0_1_0 := body#0_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##c#0_1_0, Tclass._module.cmd(), $Heap);
                ##s#0_1_0 := s#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#0_1_0, TInt, $Heap);
                ##t#0_1_0 := s'#0_1_1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#0_1_0, TInt, $Heap);
                assume _module.__default.CoBigStep#canCall(body#0_0, s#0, s'#0_1_1);
                if (_module.__default.CoBigStep($LS($LZ), body#0_0, s#0, s'#0_1_1))
                {
                    ##c#0_1_1 := c#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##c#0_1_1, Tclass._module.cmd(), $Heap);
                    ##s#0_1_1 := s'#0_1_1;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#0_1_1, TInt, $Heap);
                    ##t#0_1_1 := t#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#0_1_1, TInt, $Heap);
                    assume _module.__default.CoBigStep#canCall(c#0, s'#0_1_1, t#0);
                }

                assume _module.__default.CoBigStep#canCall(body#0_0, s#0, s'#0_1_1)
                   && (_module.__default.CoBigStep($LS($LZ), body#0_0, s#0, s'#0_1_1)
                     ==> _module.__default.CoBigStep#canCall(c#0, s'#0_1_1, t#0));
            }

            assert {:id "id509"} ($Is(LitInt(0), TInt)
                 && 
                _module.__default.CoBigStep($LS($LZ), body#0_0, s#0, LitInt(0))
                 && _module.__default.CoBigStep($LS($LZ), c#0, LitInt(0), t#0))
               || (exists $as#s'0_1_0#0_1_0: int :: 
                _module.__default.CoBigStep($LS($LZ), body#0_0, s#0, $as#s'0_1_0#0_1_0)
                   && _module.__default.CoBigStep($LS($LZ), c#0, $as#s'0_1_0#0_1_0, t#0));
            havoc s'#0_1_0;
            assume {:id "id510"} _module.__default.CoBigStep($LS($LZ), body#0_0, s#0, s'#0_1_0)
               && _module.__default.CoBigStep($LS($LZ), c#0, s'#0_1_0, t#0);
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(317,18)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            c##0_1_0 := body#0_0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            s##0_1_0 := s#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            t##0_1_0 := s'#0_1_0;
            assert {:id "id511"} 0 <= s#0 || DtRank(c##0_1_0) < DtRank(c#0) || s##0_1_0 == s#0;
            assert {:id "id512"} 0 <= t#0 || DtRank(c##0_1_0) < DtRank(c#0) || s##0_1_0 < s#0 || t##0_1_0 == t#0;
            assert {:id "id513"} DtRank(c##0_1_0) < DtRank(c#0)
               || (DtRank(c##0_1_0) == DtRank(c#0)
                 && (s##0_1_0 < s#0 || (s##0_1_0 == s#0 && t##0_1_0 < t#0)));
            call {:id "id514"} Call$$_module.__default.CoMonotonic(c##0_1_0, s##0_1_0, t##0_1_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/Inc.dfy(318,18)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            c##0_1_1 := c#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            s##0_1_1 := s'#0_1_0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            t##0_1_1 := t#0;
            assert {:id "id515"} 0 <= s#0 || DtRank(c##0_1_1) < DtRank(c#0) || s##0_1_1 == s#0;
            assert {:id "id516"} 0 <= t#0 || DtRank(c##0_1_1) < DtRank(c#0) || s##0_1_1 < s#0 || t##0_1_1 == t#0;
            assert {:id "id517"} DtRank(c##0_1_1) < DtRank(c#0)
               || (DtRank(c##0_1_1) == DtRank(c#0)
                 && (s##0_1_1 < s#0 || (s##0_1_1 == s#0 && t##0_1_1 < t#0)));
            call {:id "id518"} Call$$_module.__default.CoMonotonic(c##0_1_1, s##0_1_1, t##0_1_1);
            // TrCallStmt: After ProcessCallStmt
        }
    }
    else
    {
        assume false;
    }
}



// Constructor function declaration
function #_module.cmd.Inc() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.cmd.Inc()) == ##_module.cmd.Inc;
// Constructor $Is
axiom $Is(#_module.cmd.Inc(), Tclass._module.cmd());
// Constructor literal
axiom #_module.cmd.Inc() == Lit(#_module.cmd.Inc());
}

const unique ##_module.cmd.Inc: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.cmd.Inc()) == ##_module.cmd.Inc;
}

function _module.cmd.Inc_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.cmd.Inc_q(d) } 
  _module.cmd.Inc_q(d) <==> DatatypeCtorId(d) == ##_module.cmd.Inc);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.cmd.Inc_q(d) } 
  _module.cmd.Inc_q(d) ==> d == #_module.cmd.Inc());

// Constructor function declaration
function #_module.cmd.Seq(DatatypeType, DatatypeType) : DatatypeType;

const unique ##_module.cmd.Seq: DtCtorId
uses {
// Constructor identifier
axiom (forall a#4#0#0: DatatypeType, a#4#1#0: DatatypeType :: 
  { #_module.cmd.Seq(a#4#0#0, a#4#1#0) } 
  DatatypeCtorId(#_module.cmd.Seq(a#4#0#0, a#4#1#0)) == ##_module.cmd.Seq);
}

function _module.cmd.Seq_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.cmd.Seq_q(d) } 
  _module.cmd.Seq_q(d) <==> DatatypeCtorId(d) == ##_module.cmd.Seq);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.cmd.Seq_q(d) } 
  _module.cmd.Seq_q(d)
     ==> (exists a#5#0#0: DatatypeType, a#5#1#0: DatatypeType :: 
      d == #_module.cmd.Seq(a#5#0#0, a#5#1#0)));

// Constructor $Is
axiom (forall a#6#0#0: DatatypeType, a#6#1#0: DatatypeType :: 
  { $Is(#_module.cmd.Seq(a#6#0#0, a#6#1#0), Tclass._module.cmd()) } 
  $Is(#_module.cmd.Seq(a#6#0#0, a#6#1#0), Tclass._module.cmd())
     <==> $Is(a#6#0#0, Tclass._module.cmd()) && $Is(a#6#1#0, Tclass._module.cmd()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.cmd._h0(d), Tclass._module.cmd(), $h) } 
  $IsGoodHeap($h) && _module.cmd.Seq_q(d) && $IsAlloc(d, Tclass._module.cmd(), $h)
     ==> $IsAlloc(_module.cmd._h0(d), Tclass._module.cmd(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.cmd._h1(d), Tclass._module.cmd(), $h) } 
  $IsGoodHeap($h) && _module.cmd.Seq_q(d) && $IsAlloc(d, Tclass._module.cmd(), $h)
     ==> $IsAlloc(_module.cmd._h1(d), Tclass._module.cmd(), $h));

// Constructor literal
axiom (forall a#7#0#0: DatatypeType, a#7#1#0: DatatypeType :: 
  { #_module.cmd.Seq(Lit(a#7#0#0), Lit(a#7#1#0)) } 
  #_module.cmd.Seq(Lit(a#7#0#0), Lit(a#7#1#0))
     == Lit(#_module.cmd.Seq(a#7#0#0, a#7#1#0)));

function _module.cmd._h0(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#8#0#0: DatatypeType, a#8#1#0: DatatypeType :: 
  { #_module.cmd.Seq(a#8#0#0, a#8#1#0) } 
  _module.cmd._h0(#_module.cmd.Seq(a#8#0#0, a#8#1#0)) == a#8#0#0);

// Inductive rank
axiom (forall a#9#0#0: DatatypeType, a#9#1#0: DatatypeType :: 
  { #_module.cmd.Seq(a#9#0#0, a#9#1#0) } 
  DtRank(a#9#0#0) < DtRank(#_module.cmd.Seq(a#9#0#0, a#9#1#0)));

function _module.cmd._h1(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#10#0#0: DatatypeType, a#10#1#0: DatatypeType :: 
  { #_module.cmd.Seq(a#10#0#0, a#10#1#0) } 
  _module.cmd._h1(#_module.cmd.Seq(a#10#0#0, a#10#1#0)) == a#10#1#0);

// Inductive rank
axiom (forall a#11#0#0: DatatypeType, a#11#1#0: DatatypeType :: 
  { #_module.cmd.Seq(a#11#0#0, a#11#1#0) } 
  DtRank(a#11#1#0) < DtRank(#_module.cmd.Seq(a#11#0#0, a#11#1#0)));

// Constructor function declaration
function #_module.cmd.Repeat(DatatypeType) : DatatypeType;

const unique ##_module.cmd.Repeat: DtCtorId
uses {
// Constructor identifier
axiom (forall a#12#0#0: DatatypeType :: 
  { #_module.cmd.Repeat(a#12#0#0) } 
  DatatypeCtorId(#_module.cmd.Repeat(a#12#0#0)) == ##_module.cmd.Repeat);
}

function _module.cmd.Repeat_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.cmd.Repeat_q(d) } 
  _module.cmd.Repeat_q(d) <==> DatatypeCtorId(d) == ##_module.cmd.Repeat);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.cmd.Repeat_q(d) } 
  _module.cmd.Repeat_q(d)
     ==> (exists a#13#0#0: DatatypeType :: d == #_module.cmd.Repeat(a#13#0#0)));

// Constructor $Is
axiom (forall a#14#0#0: DatatypeType :: 
  { $Is(#_module.cmd.Repeat(a#14#0#0), Tclass._module.cmd()) } 
  $Is(#_module.cmd.Repeat(a#14#0#0), Tclass._module.cmd())
     <==> $Is(a#14#0#0, Tclass._module.cmd()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.cmd._h2(d), Tclass._module.cmd(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.cmd.Repeat_q(d)
       && $IsAlloc(d, Tclass._module.cmd(), $h)
     ==> $IsAlloc(_module.cmd._h2(d), Tclass._module.cmd(), $h));

// Constructor literal
axiom (forall a#15#0#0: DatatypeType :: 
  { #_module.cmd.Repeat(Lit(a#15#0#0)) } 
  #_module.cmd.Repeat(Lit(a#15#0#0)) == Lit(#_module.cmd.Repeat(a#15#0#0)));

function _module.cmd._h2(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#16#0#0: DatatypeType :: 
  { #_module.cmd.Repeat(a#16#0#0) } 
  _module.cmd._h2(#_module.cmd.Repeat(a#16#0#0)) == a#16#0#0);

// Inductive rank
axiom (forall a#17#0#0: DatatypeType :: 
  { #_module.cmd.Repeat(a#17#0#0) } 
  DtRank(a#17#0#0) < DtRank(#_module.cmd.Repeat(a#17#0#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.cmd(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.cmd())
     ==> $IsAlloc(d, Tclass._module.cmd(), $h));

// Depth-one case-split function
function $IsA#_module.cmd(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.cmd(d) } 
  $IsA#_module.cmd(d)
     ==> _module.cmd.Inc_q(d) || _module.cmd.Seq_q(d) || _module.cmd.Repeat_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.cmd.Repeat_q(d), $Is(d, Tclass._module.cmd()) } 
    { _module.cmd.Seq_q(d), $Is(d, Tclass._module.cmd()) } 
    { _module.cmd.Inc_q(d), $Is(d, Tclass._module.cmd()) } 
  $Is(d, Tclass._module.cmd())
     ==> _module.cmd.Inc_q(d) || _module.cmd.Seq_q(d) || _module.cmd.Repeat_q(d));

// Datatype extensional equality declaration
function _module.cmd#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.cmd.Inc
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.cmd#Equal(a, b), _module.cmd.Inc_q(a) } 
    { _module.cmd#Equal(a, b), _module.cmd.Inc_q(b) } 
  _module.cmd.Inc_q(a) && _module.cmd.Inc_q(b) ==> _module.cmd#Equal(a, b));

// Datatype extensional equality definition: #_module.cmd.Seq
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.cmd#Equal(a, b), _module.cmd.Seq_q(a) } 
    { _module.cmd#Equal(a, b), _module.cmd.Seq_q(b) } 
  _module.cmd.Seq_q(a) && _module.cmd.Seq_q(b)
     ==> (_module.cmd#Equal(a, b)
       <==> _module.cmd#Equal(_module.cmd._h0(a), _module.cmd._h0(b))
         && _module.cmd#Equal(_module.cmd._h1(a), _module.cmd._h1(b))));

// Datatype extensional equality definition: #_module.cmd.Repeat
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.cmd#Equal(a, b), _module.cmd.Repeat_q(a) } 
    { _module.cmd#Equal(a, b), _module.cmd.Repeat_q(b) } 
  _module.cmd.Repeat_q(a) && _module.cmd.Repeat_q(b)
     ==> (_module.cmd#Equal(a, b)
       <==> _module.cmd#Equal(_module.cmd._h2(a), _module.cmd._h2(b))));

// Datatype extensionality axiom: _module.cmd
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.cmd#Equal(a, b) } 
  _module.cmd#Equal(a, b) <==> a == b);

const unique class._module.cmd: ClassName;

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

const unique tytagFamily$_#Func3: TyTagFamily;

const unique tytagFamily$_#PartialFunc3: TyTagFamily;

const unique tytagFamily$_#TotalFunc3: TyTagFamily;

const unique tytagFamily$_#Func4: TyTagFamily;

const unique tytagFamily$_#PartialFunc4: TyTagFamily;

const unique tytagFamily$_#TotalFunc4: TyTagFamily;

const unique tytagFamily$cmd: TyTagFamily;
