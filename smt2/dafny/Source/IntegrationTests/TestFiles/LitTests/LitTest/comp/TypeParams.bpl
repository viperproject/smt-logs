// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams-@PROC@.smt2 /normalizeNames:0 /emitDebugInformation:1 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy

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

// Box/unbox axiom for bv12
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(12)) } 
  $IsBox(bx, TBitvector(12))
     ==> $Box($Unbox(bx): bv12) == bx && $Is($Unbox(bx): bv12, TBitvector(12)));

axiom (forall v: bv12 :: { $Is(v, TBitvector(12)) } $Is(v, TBitvector(12)));

axiom (forall v: bv12, heap: Heap :: 
  { $IsAlloc(v, TBitvector(12), heap) } 
  $IsAlloc(v, TBitvector(12), heap));

function {:bvbuiltin "bvand"} and_bv12(bv12, bv12) : bv12;

function {:bvbuiltin "bvor"} or_bv12(bv12, bv12) : bv12;

function {:bvbuiltin "bvxor"} xor_bv12(bv12, bv12) : bv12;

function {:bvbuiltin "bvnot"} not_bv12(bv12) : bv12;

function {:bvbuiltin "bvadd"} add_bv12(bv12, bv12) : bv12;

function {:bvbuiltin "bvsub"} sub_bv12(bv12, bv12) : bv12;

function {:bvbuiltin "bvmul"} mul_bv12(bv12, bv12) : bv12;

function {:bvbuiltin "bvudiv"} div_bv12(bv12, bv12) : bv12;

function {:bvbuiltin "bvurem"} mod_bv12(bv12, bv12) : bv12;

function {:bvbuiltin "bvult"} lt_bv12(bv12, bv12) : bool;

function {:bvbuiltin "bvule"} le_bv12(bv12, bv12) : bool;

function {:bvbuiltin "bvuge"} ge_bv12(bv12, bv12) : bool;

function {:bvbuiltin "bvugt"} gt_bv12(bv12, bv12) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv12(bv12, bv12) : bv12;

function {:bvbuiltin "bvlshr"} RightShift_bv12(bv12, bv12) : bv12;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv12(bv12, bv12) : bv12;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv12(bv12, bv12) : bv12;

function {:bvbuiltin "(_ int2bv 12)"} nat_to_bv12(int) : bv12;

function {:bvbuiltin "bv2int"} smt_nat_from_bv12(bv12) : int;

function nat_from_bv12(bv12) : int;

axiom (forall b: bv12 :: 
  { nat_from_bv12(b) } 
  0 <= nat_from_bv12(b)
     && nat_from_bv12(b) < 4096
     && nat_from_bv12(b) == smt_nat_from_bv12(b));

// Box/unbox axiom for bv20
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(20)) } 
  $IsBox(bx, TBitvector(20))
     ==> $Box($Unbox(bx): bv20) == bx && $Is($Unbox(bx): bv20, TBitvector(20)));

axiom (forall v: bv20 :: { $Is(v, TBitvector(20)) } $Is(v, TBitvector(20)));

axiom (forall v: bv20, heap: Heap :: 
  { $IsAlloc(v, TBitvector(20), heap) } 
  $IsAlloc(v, TBitvector(20), heap));

function {:bvbuiltin "bvand"} and_bv20(bv20, bv20) : bv20;

function {:bvbuiltin "bvor"} or_bv20(bv20, bv20) : bv20;

function {:bvbuiltin "bvxor"} xor_bv20(bv20, bv20) : bv20;

function {:bvbuiltin "bvnot"} not_bv20(bv20) : bv20;

function {:bvbuiltin "bvadd"} add_bv20(bv20, bv20) : bv20;

function {:bvbuiltin "bvsub"} sub_bv20(bv20, bv20) : bv20;

function {:bvbuiltin "bvmul"} mul_bv20(bv20, bv20) : bv20;

function {:bvbuiltin "bvudiv"} div_bv20(bv20, bv20) : bv20;

function {:bvbuiltin "bvurem"} mod_bv20(bv20, bv20) : bv20;

function {:bvbuiltin "bvult"} lt_bv20(bv20, bv20) : bool;

function {:bvbuiltin "bvule"} le_bv20(bv20, bv20) : bool;

function {:bvbuiltin "bvuge"} ge_bv20(bv20, bv20) : bool;

function {:bvbuiltin "bvugt"} gt_bv20(bv20, bv20) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv20(bv20, bv20) : bv20;

function {:bvbuiltin "bvlshr"} RightShift_bv20(bv20, bv20) : bv20;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv20(bv20, bv20) : bv20;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv20(bv20, bv20) : bv20;

function {:bvbuiltin "(_ int2bv 20)"} nat_to_bv20(int) : bv20;

function {:bvbuiltin "bv2int"} smt_nat_from_bv20(bv20) : int;

function nat_from_bv20(bv20) : int;

axiom (forall b: bv20 :: 
  { nat_from_bv20(b) } 
  0 <= nat_from_bv20(b)
     && nat_from_bv20(b) < 1048576
     && nat_from_bv20(b) == smt_nat_from_bv20(b));

// Box/unbox axiom for bv7
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(7)) } 
  $IsBox(bx, TBitvector(7))
     ==> $Box($Unbox(bx): bv7) == bx && $Is($Unbox(bx): bv7, TBitvector(7)));

axiom (forall v: bv7 :: { $Is(v, TBitvector(7)) } $Is(v, TBitvector(7)));

axiom (forall v: bv7, heap: Heap :: 
  { $IsAlloc(v, TBitvector(7), heap) } 
  $IsAlloc(v, TBitvector(7), heap));

function {:bvbuiltin "bvand"} and_bv7(bv7, bv7) : bv7;

function {:bvbuiltin "bvor"} or_bv7(bv7, bv7) : bv7;

function {:bvbuiltin "bvxor"} xor_bv7(bv7, bv7) : bv7;

function {:bvbuiltin "bvnot"} not_bv7(bv7) : bv7;

function {:bvbuiltin "bvadd"} add_bv7(bv7, bv7) : bv7;

function {:bvbuiltin "bvsub"} sub_bv7(bv7, bv7) : bv7;

function {:bvbuiltin "bvmul"} mul_bv7(bv7, bv7) : bv7;

function {:bvbuiltin "bvudiv"} div_bv7(bv7, bv7) : bv7;

function {:bvbuiltin "bvurem"} mod_bv7(bv7, bv7) : bv7;

function {:bvbuiltin "bvult"} lt_bv7(bv7, bv7) : bool;

function {:bvbuiltin "bvule"} le_bv7(bv7, bv7) : bool;

function {:bvbuiltin "bvuge"} ge_bv7(bv7, bv7) : bool;

function {:bvbuiltin "bvugt"} gt_bv7(bv7, bv7) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv7(bv7, bv7) : bv7;

function {:bvbuiltin "bvlshr"} RightShift_bv7(bv7, bv7) : bv7;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv7(bv7, bv7) : bv7;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv7(bv7, bv7) : bv7;

function {:bvbuiltin "(_ int2bv 7)"} nat_to_bv7(int) : bv7;

function {:bvbuiltin "bv2int"} smt_nat_from_bv7(bv7) : int;

function nat_from_bv7(bv7) : int;

axiom (forall b: bv7 :: 
  { nat_from_bv7(b) } 
  0 <= nat_from_bv7(b)
     && nat_from_bv7(b) < 128
     && nat_from_bv7(b) == smt_nat_from_bv7(b));

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

const unique class._System.array3?: ClassName;

function Tclass._System.array3?(Ty) : Ty;

const unique Tagclass._System.array3?: TyTag;

// Tclass._System.array3? Tag
axiom (forall _System.array3$arg: Ty :: 
  { Tclass._System.array3?(_System.array3$arg) } 
  Tag(Tclass._System.array3?(_System.array3$arg)) == Tagclass._System.array3?
     && TagFamily(Tclass._System.array3?(_System.array3$arg)) == tytagFamily$array3);

function Tclass._System.array3?_0(Ty) : Ty;

// Tclass._System.array3? injectivity 0
axiom (forall _System.array3$arg: Ty :: 
  { Tclass._System.array3?(_System.array3$arg) } 
  Tclass._System.array3?_0(Tclass._System.array3?(_System.array3$arg))
     == _System.array3$arg);

// Box/unbox axiom for Tclass._System.array3?
axiom (forall _System.array3$arg: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.array3?(_System.array3$arg)) } 
  $IsBox(bx, Tclass._System.array3?(_System.array3$arg))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._System.array3?(_System.array3$arg)));

axiom (forall o: ref :: { _System.array3.Length0(o) } 0 <= _System.array3.Length0(o));

axiom (forall o: ref :: { _System.array3.Length1(o) } 0 <= _System.array3.Length1(o));

axiom (forall o: ref :: { _System.array3.Length2(o) } 0 <= _System.array3.Length2(o));

// array3.: Type axiom
axiom (forall _System.array3$arg: Ty, $h: Heap, $o: ref, $i0: int, $i1: int, $i2: int :: 
  { read($h, $o, MultiIndexField(MultiIndexField(IndexField($i0), $i1), $i2)), Tclass._System.array3?(_System.array3$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array3?(_System.array3$arg)
       && 
      0 <= $i0
       && $i0 < _System.array3.Length0($o)
       && 
      0 <= $i1
       && $i1 < _System.array3.Length1($o)
       && 
      0 <= $i2
       && $i2 < _System.array3.Length2($o)
     ==> $IsBox(read($h, $o, MultiIndexField(MultiIndexField(IndexField($i0), $i1), $i2)), 
      _System.array3$arg));

// array3.: Allocation axiom
axiom (forall _System.array3$arg: Ty, $h: Heap, $o: ref, $i0: int, $i1: int, $i2: int :: 
  { read($h, $o, MultiIndexField(MultiIndexField(IndexField($i0), $i1), $i2)), Tclass._System.array3?(_System.array3$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array3?(_System.array3$arg)
       && 
      0 <= $i0
       && $i0 < _System.array3.Length0($o)
       && 
      0 <= $i1
       && $i1 < _System.array3.Length1($o)
       && 
      0 <= $i2
       && $i2 < _System.array3.Length2($o)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, MultiIndexField(MultiIndexField(IndexField($i0), $i1), $i2)), 
      _System.array3$arg, 
      $h));

// $Is axiom for array type array3
axiom (forall _System.array3$arg: Ty, $o: ref :: 
  { $Is($o, Tclass._System.array3?(_System.array3$arg)) } 
  $Is($o, Tclass._System.array3?(_System.array3$arg))
     <==> $o == null || dtype($o) == Tclass._System.array3?(_System.array3$arg));

// $IsAlloc axiom for array type array3
axiom (forall _System.array3$arg: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._System.array3?(_System.array3$arg), $h) } 
  $IsAlloc($o, Tclass._System.array3?(_System.array3$arg), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function _System.array3.Length0(ref) : int;

// array3.Length0: Type axiom
axiom (forall _System.array3$arg: Ty, $o: ref :: 
  { _System.array3.Length0($o), Tclass._System.array3?(_System.array3$arg) } 
  $o != null && dtype($o) == Tclass._System.array3?(_System.array3$arg)
     ==> $Is(_System.array3.Length0($o), TInt));

// array3.Length0: Allocation axiom
axiom (forall _System.array3$arg: Ty, $h: Heap, $o: ref :: 
  { _System.array3.Length0($o), $Unbox(read($h, $o, alloc)): bool, Tclass._System.array3?(_System.array3$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array3?(_System.array3$arg)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_System.array3.Length0($o), TInt, $h));

function _System.array3.Length1(ref) : int;

// array3.Length1: Type axiom
axiom (forall _System.array3$arg: Ty, $o: ref :: 
  { _System.array3.Length1($o), Tclass._System.array3?(_System.array3$arg) } 
  $o != null && dtype($o) == Tclass._System.array3?(_System.array3$arg)
     ==> $Is(_System.array3.Length1($o), TInt));

// array3.Length1: Allocation axiom
axiom (forall _System.array3$arg: Ty, $h: Heap, $o: ref :: 
  { _System.array3.Length1($o), $Unbox(read($h, $o, alloc)): bool, Tclass._System.array3?(_System.array3$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array3?(_System.array3$arg)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_System.array3.Length1($o), TInt, $h));

function _System.array3.Length2(ref) : int;

// array3.Length2: Type axiom
axiom (forall _System.array3$arg: Ty, $o: ref :: 
  { _System.array3.Length2($o), Tclass._System.array3?(_System.array3$arg) } 
  $o != null && dtype($o) == Tclass._System.array3?(_System.array3$arg)
     ==> $Is(_System.array3.Length2($o), TInt));

// array3.Length2: Allocation axiom
axiom (forall _System.array3$arg: Ty, $h: Heap, $o: ref :: 
  { _System.array3.Length2($o), $Unbox(read($h, $o, alloc)): bool, Tclass._System.array3?(_System.array3$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array3?(_System.array3$arg)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_System.array3.Length2($o), TInt, $h));

function Tclass._System.array3(Ty) : Ty;

const unique Tagclass._System.array3: TyTag;

// Tclass._System.array3 Tag
axiom (forall _System.array3$arg: Ty :: 
  { Tclass._System.array3(_System.array3$arg) } 
  Tag(Tclass._System.array3(_System.array3$arg)) == Tagclass._System.array3
     && TagFamily(Tclass._System.array3(_System.array3$arg)) == tytagFamily$array3);

function Tclass._System.array3_0(Ty) : Ty;

// Tclass._System.array3 injectivity 0
axiom (forall _System.array3$arg: Ty :: 
  { Tclass._System.array3(_System.array3$arg) } 
  Tclass._System.array3_0(Tclass._System.array3(_System.array3$arg))
     == _System.array3$arg);

// Box/unbox axiom for Tclass._System.array3
axiom (forall _System.array3$arg: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.array3(_System.array3$arg)) } 
  $IsBox(bx, Tclass._System.array3(_System.array3$arg))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._System.array3(_System.array3$arg)));

// $Is axiom for non-null type _System.array3
axiom (forall _System.array3$arg: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._System.array3(_System.array3$arg)) } 
    { $Is(c#0, Tclass._System.array3?(_System.array3$arg)) } 
  $Is(c#0, Tclass._System.array3(_System.array3$arg))
     <==> $Is(c#0, Tclass._System.array3?(_System.array3$arg)) && c#0 != null);

// $IsAlloc axiom for non-null type _System.array3
axiom (forall _System.array3$arg: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._System.array3(_System.array3$arg), $h) } 
    { $IsAlloc(c#0, Tclass._System.array3?(_System.array3$arg), $h) } 
  $IsAlloc(c#0, Tclass._System.array3(_System.array3$arg), $h)
     <==> $IsAlloc(c#0, Tclass._System.array3?(_System.array3$arg), $h));

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

procedure {:verboseName "Main (well-formedness)"} CheckWellFormed$$_module.__default.Main();
  free requires 4 == $FunctionContextHeight;
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
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.Color() : Ty
uses {
// Tclass._module.Color Tag
axiom Tag(Tclass._module.Color()) == Tagclass._module.Color
   && TagFamily(Tclass._module.Color()) == tytagFamily$Color;
}

const unique Tagclass._module.Color: TyTag;

// Box/unbox axiom for Tclass._module.Color
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Color()) } 
  $IsBox(bx, Tclass._module.Color())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Color()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Main (correctness)"} Impl$$_module.__default.Main() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: Main, Impl$$_module.__default.Main
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(20,23)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id0"} Call$$_module.__default.Standard(TSet(Tclass._module.Color()));
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(21,5)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1"} Call$$_module.__default.Tp();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(22,13)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id2"} Call$$_module.__default.TraitClass();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(23,9)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id3"} Call$$_module.__default.Direct();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(24,14)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id4"} Call$$_module.__default.Regressions();
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "Standard (well-formedness)"} CheckWellFormed$$_module.__default.Standard(_module._default.Standard$T: Ty);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Standard (call)"} Call$$_module.__default.Standard(_module._default.Standard$T: Ty);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Standard (correctness)"} Impl$$_module.__default.Standard(_module._default.Standard$T: Ty) returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.Six() : Ty
uses {
// Tclass._module.Six Tag
axiom Tag(Tclass._module.Six()) == Tagclass._module.Six
   && TagFamily(Tclass._module.Six()) == tytagFamily$Six;
}

const unique Tagclass._module.Six: TyTag;

// Box/unbox axiom for Tclass._module.Six
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Six()) } 
  $IsBox(bx, Tclass._module.Six())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.Six()));

function Tclass._module.Even() : Ty
uses {
// Tclass._module.Even Tag
axiom Tag(Tclass._module.Even()) == Tagclass._module.Even
   && TagFamily(Tclass._module.Even()) == tytagFamily$Even;
}

const unique Tagclass._module.Even: TyTag;

// Box/unbox axiom for Tclass._module.Even
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Even()) } 
  $IsBox(bx, Tclass._module.Even())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.Even()));

function Tclass._module.DtZ(Ty) : Ty;

const unique Tagclass._module.DtZ: TyTag;

// Tclass._module.DtZ Tag
axiom (forall _module.DtZ$G: Ty :: 
  { Tclass._module.DtZ(_module.DtZ$G) } 
  Tag(Tclass._module.DtZ(_module.DtZ$G)) == Tagclass._module.DtZ
     && TagFamily(Tclass._module.DtZ(_module.DtZ$G)) == tytagFamily$DtZ);

function Tclass._module.DtZ_0(Ty) : Ty;

// Tclass._module.DtZ injectivity 0
axiom (forall _module.DtZ$G: Ty :: 
  { Tclass._module.DtZ(_module.DtZ$G) } 
  Tclass._module.DtZ_0(Tclass._module.DtZ(_module.DtZ$G)) == _module.DtZ$G);

// Box/unbox axiom for Tclass._module.DtZ
axiom (forall _module.DtZ$G: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.DtZ(_module.DtZ$G)) } 
  $IsBox(bx, Tclass._module.DtZ(_module.DtZ$G))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.DtZ(_module.DtZ$G)));

function Tclass._module.MyClass?() : Ty
uses {
// Tclass._module.MyClass? Tag
axiom Tag(Tclass._module.MyClass?()) == Tagclass._module.MyClass?
   && TagFamily(Tclass._module.MyClass?()) == tytagFamily$MyClass;
}

const unique Tagclass._module.MyClass?: TyTag;

// Box/unbox axiom for Tclass._module.MyClass?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.MyClass?()) } 
  $IsBox(bx, Tclass._module.MyClass?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.MyClass?()));

function Tclass._module.ReallyJustANullableMyClass() : Ty
uses {
// Tclass._module.ReallyJustANullableMyClass Tag
axiom Tag(Tclass._module.ReallyJustANullableMyClass())
     == Tagclass._module.ReallyJustANullableMyClass
   && TagFamily(Tclass._module.ReallyJustANullableMyClass())
     == tytagFamily$ReallyJustANullableMyClass;
}

const unique Tagclass._module.ReallyJustANullableMyClass: TyTag;

// Box/unbox axiom for Tclass._module.ReallyJustANullableMyClass
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.ReallyJustANullableMyClass()) } 
  $IsBox(bx, Tclass._module.ReallyJustANullableMyClass())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.ReallyJustANullableMyClass()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Standard (correctness)"} Impl$$_module.__default.Standard(_module._default.Standard$T: Ty) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: int;
  var $rhs##0: int;
  var $tmp##0: Box;
  var b#0: int where b#0 <= LitInt(6);
  var $rhs##1: int;
  var $tmp##1: Box;
  var c#0: int where Mod(c#0, LitInt(2)) == LitInt(0);
  var d#0: bool;
  var $rhs##2: int;
  var $rhs##3: bool;
  var $tmp##2: Box;
  var $tmp##3: Box;
  var e#0: DatatypeType
     where $Is(e#0, Tclass._module.Color()) && $IsAlloc(e#0, Tclass._module.Color(), $Heap);
  var $rhs##4: DatatypeType;
  var $tmp##4: Box;
  var f#0: real;
  var $rhs##5: real;
  var $tmp##5: Box;
  var g#0: Box
     where $IsBox(g#0, _module._default.Standard$T)
       && $IsAllocBox(g#0, _module._default.Standard$T, $Heap);
  var $rhs##6: Box;
  var h#0: DatatypeType
     where $Is(h#0, Tclass._module.DtZ(Tclass._module.Color()))
       && $IsAlloc(h#0, Tclass._module.DtZ(Tclass._module.Color()), $Heap);
  var $rhs##7: DatatypeType;
  var $tmp##6: Box;
  var x0#0: ref
     where $Is(x0#0, Tclass._System.object?())
       && $IsAlloc(x0#0, Tclass._System.object?(), $Heap);
  var $rhs##8: ref;
  var $tmp##7: Box;
  var x1#0: ref
     where $Is(x1#0, Tclass._System.array?(TBool))
       && $IsAlloc(x1#0, Tclass._System.array?(TBool), $Heap);
  var $rhs##9: ref;
  var $tmp##8: Box;
  var x2#0: ref
     where $Is(x2#0, Tclass._System.array3?(TInt))
       && $IsAlloc(x2#0, Tclass._System.array3?(TInt), $Heap);
  var $rhs##10: ref;
  var $tmp##9: Box;
  var x3#0: ref
     where $Is(x3#0, Tclass._module.MyClass?())
       && $IsAlloc(x3#0, Tclass._module.MyClass?(), $Heap);
  var $rhs##11: ref;
  var $tmp##10: Box;
  var x4#0: ref
     where $Is(x4#0, Tclass._module.ReallyJustANullableMyClass())
       && $IsAlloc(x4#0, Tclass._module.ReallyJustANullableMyClass(), $Heap);
  var $rhs##12: ref;
  var $tmp##11: Box;
  var s0#0: Set where $Is(s0#0, TSet(TReal)) && $IsAlloc(s0#0, TSet(TReal), $Heap);
  var $rhs##13: Set;
  var $tmp##12: Box;
  var s1#0: MultiSet
     where $Is(s1#0, TMultiSet(TReal)) && $IsAlloc(s1#0, TMultiSet(TReal), $Heap);
  var $rhs##14: MultiSet;
  var $tmp##13: Box;
  var s2#0: Seq where $Is(s2#0, TSeq(TReal)) && $IsAlloc(s2#0, TSeq(TReal), $Heap);
  var $rhs##15: Seq;
  var $tmp##14: Box;
  var s3#0: Map
     where $Is(s3#0, TMap(TReal, Tclass._module.Color()))
       && $IsAlloc(s3#0, TMap(TReal, Tclass._module.Color()), $Heap);
  var $rhs##16: Map;
  var $tmp##15: Box;
  var s4#0: ISet where $Is(s4#0, TISet(TReal)) && $IsAlloc(s4#0, TISet(TReal), $Heap);
  var $rhs##17: ISet;
  var $tmp##16: Box;
  var s5#0: IMap
     where $Is(s5#0, TIMap(TReal, Tclass._module.Color()))
       && $IsAlloc(s5#0, TIMap(TReal, Tclass._module.Color()), $Heap);
  var $rhs##18: IMap;
  var $tmp##17: Box;
  var k0#0: HandleType
     where $Is(k0#0, Tclass._System.___hPartialFunc1(TReal, TBool))
       && $IsAlloc(k0#0, Tclass._System.___hPartialFunc1(TReal, TBool), $Heap);
  var $rhs##19: HandleType;
  var $tmp##18: Box;
  var k1#0: HandleType
     where $Is(k1#0, Tclass._System.___hFunc1(TReal, TBool))
       && $IsAlloc(k1#0, Tclass._System.___hFunc1(TReal, TBool), $Heap);
  var $rhs##20: HandleType;
  var $tmp##19: Box;
  var k2#0: HandleType
     where $Is(k2#0, Tclass._System.___hPartialFunc0(TInt))
       && $IsAlloc(k2#0, Tclass._System.___hPartialFunc0(TInt), $Heap);
  var $rhs##21: HandleType;
  var $tmp##20: Box;
  var k3#0: HandleType
     where $Is(k3#0, 
        Tclass._System.___hPartialFunc2(Tclass._module.Color(), TSet(TBitvector(12)), TBitvector(20)))
       && $IsAlloc(k3#0, 
        Tclass._System.___hPartialFunc2(Tclass._module.Color(), TSet(TBitvector(12)), TBitvector(20)), 
        $Heap);
  var $rhs##22: HandleType;
  var $tmp##21: Box;

    // AddMethodImpl: Standard, Impl$$_module.__default.Standard
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(28,23)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id5"} $tmp##0 := Call$$_module.__default.Gimmie(TInt);
    havoc $rhs##0;
    assume $rhs##0 == $Unbox($tmp##0): int;
    // TrCallStmt: After ProcessCallStmt
    a#0 := $rhs##0;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(29,23)
    assume true;
    // TrCallStmt: Adding lhs with type Six
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id7"} $tmp##1 := Call$$_module.__default.Gimmie(Tclass._module.Six());
    havoc $rhs##1;
    assume $rhs##1 == $Unbox($tmp##1): int;
    // TrCallStmt: After ProcessCallStmt
    b#0 := $rhs##1;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(30,37)
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type Even
    // TrCallStmt: Adding lhs with type bool
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id9"} $tmp##2, $tmp##3 := Call$$_module.__default.GimmieMore(Tclass._module.Even(), TBool);
    havoc $rhs##2;
    assume $rhs##2 == $Unbox($tmp##2): int;
    havoc $rhs##3;
    assume $rhs##3 == $Unbox($tmp##3): bool;
    // TrCallStmt: After ProcessCallStmt
    c#0 := $rhs##2;
    d#0 := $rhs##3;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(31,25)
    assume true;
    // TrCallStmt: Adding lhs with type Color
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id12"} $tmp##4 := Call$$_module.__default.Gimmie(Tclass._module.Color());
    havoc $rhs##4;
    assume $rhs##4 == $Unbox($tmp##4): DatatypeType;
    // TrCallStmt: After ProcessCallStmt
    e#0 := $rhs##4;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(32,24)
    assume true;
    // TrCallStmt: Adding lhs with type real
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id14"} $tmp##5 := Call$$_module.__default.Gimmie(TReal);
    havoc $rhs##5;
    assume $rhs##5 == $Unbox($tmp##5): real;
    // TrCallStmt: After ProcessCallStmt
    f#0 := $rhs##5;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(33,21)
    assume true;
    // TrCallStmt: Adding lhs with type T
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id16"} $rhs##6 := Call$$_module.__default.Gimmie(_module._default.Standard$T);
    // TrCallStmt: After ProcessCallStmt
    g#0 := $rhs##6;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(34,30)
    assume true;
    // TrCallStmt: Adding lhs with type DtZ<Color>
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id18"} $tmp##6 := Call$$_module.__default.Gimmie(Tclass._module.DtZ(Tclass._module.Color()));
    havoc $rhs##7;
    assume $rhs##7 == $Unbox($tmp##6): DatatypeType;
    // TrCallStmt: After ProcessCallStmt
    h#0 := $rhs##7;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(35,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(38,28)
    assume true;
    // TrCallStmt: Adding lhs with type object?
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id20"} $tmp##7 := Call$$_module.__default.Gimmie(Tclass._System.object?());
    havoc $rhs##8;
    assume $rhs##8 == $Unbox($tmp##7): ref;
    // TrCallStmt: After ProcessCallStmt
    x0#0 := $rhs##8;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(39,33)
    assume true;
    // TrCallStmt: Adding lhs with type array?<bool>
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id22"} $tmp##8 := Call$$_module.__default.Gimmie(Tclass._System.array?(TBool));
    havoc $rhs##9;
    assume $rhs##9 == $Unbox($tmp##8): ref;
    // TrCallStmt: After ProcessCallStmt
    x1#0 := $rhs##9;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(40,33)
    assume true;
    // TrCallStmt: Adding lhs with type array3?<int>
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id24"} $tmp##9 := Call$$_module.__default.Gimmie(Tclass._System.array3?(TInt));
    havoc $rhs##10;
    assume $rhs##10 == $Unbox($tmp##9): ref;
    // TrCallStmt: After ProcessCallStmt
    x2#0 := $rhs##10;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(41,29)
    assume true;
    // TrCallStmt: Adding lhs with type MyClass?
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id26"} $tmp##10 := Call$$_module.__default.Gimmie(Tclass._module.MyClass?());
    havoc $rhs##11;
    assume $rhs##11 == $Unbox($tmp##10): ref;
    // TrCallStmt: After ProcessCallStmt
    x3#0 := $rhs##11;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(42,47)
    assume true;
    // TrCallStmt: Adding lhs with type ReallyJustANullableMyClass
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id28"} $tmp##11 := Call$$_module.__default.Gimmie(Tclass._module.ReallyJustANullableMyClass());
    havoc $rhs##12;
    assume $rhs##12 == $Unbox($tmp##11): ref;
    // TrCallStmt: After ProcessCallStmt
    x4#0 := $rhs##12;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(43,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(46,30)
    assume true;
    // TrCallStmt: Adding lhs with type set<real>
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id30"} $tmp##12 := Call$$_module.__default.Gimmie(TSet(TReal));
    havoc $rhs##13;
    assume $rhs##13 == $Unbox($tmp##12): Set;
    // TrCallStmt: After ProcessCallStmt
    s0#0 := $rhs##13;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(47,35)
    assume true;
    // TrCallStmt: Adding lhs with type multiset<real>
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id32"} $tmp##13 := Call$$_module.__default.Gimmie(TMultiSet(TReal));
    havoc $rhs##14;
    assume $rhs##14 == $Unbox($tmp##13): MultiSet;
    // TrCallStmt: After ProcessCallStmt
    s1#0 := $rhs##14;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(48,30)
    assume true;
    // TrCallStmt: Adding lhs with type seq<real>
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id34"} $tmp##14 := Call$$_module.__default.Gimmie(TSeq(TReal));
    havoc $rhs##15;
    assume $rhs##15 == $Unbox($tmp##14): Seq;
    // TrCallStmt: After ProcessCallStmt
    s2#0 := $rhs##15;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(49,36)
    assume true;
    // TrCallStmt: Adding lhs with type map<real, Color>
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id36"} $tmp##15 := Call$$_module.__default.Gimmie(TMap(TReal, Tclass._module.Color()));
    havoc $rhs##16;
    assume $rhs##16 == $Unbox($tmp##15): Map;
    // TrCallStmt: After ProcessCallStmt
    s3#0 := $rhs##16;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(50,31)
    assume true;
    // TrCallStmt: Adding lhs with type iset<real>
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id38"} $tmp##16 := Call$$_module.__default.Gimmie(TISet(TReal));
    havoc $rhs##17;
    assume $rhs##17 == $Unbox($tmp##16): ISet;
    // TrCallStmt: After ProcessCallStmt
    s4#0 := $rhs##17;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(51,37)
    assume true;
    // TrCallStmt: Adding lhs with type imap<real, Color>
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id40"} $tmp##17 := Call$$_module.__default.Gimmie(TIMap(TReal, Tclass._module.Color()));
    havoc $rhs##18;
    assume $rhs##18 == $Unbox($tmp##17): IMap;
    // TrCallStmt: After ProcessCallStmt
    s5#0 := $rhs##18;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(52,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(55,34)
    assume true;
    // TrCallStmt: Adding lhs with type real --> bool
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id42"} $tmp##18 := Call$$_module.__default.Gimmie(Tclass._System.___hPartialFunc1(TReal, TBool));
    havoc $rhs##19;
    assume $rhs##19 == $Unbox($tmp##18): HandleType;
    // TrCallStmt: After ProcessCallStmt
    k0#0 := $rhs##19;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(56,33)
    assume true;
    // TrCallStmt: Adding lhs with type real ~> bool
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id44"} $tmp##19 := Call$$_module.__default.Gimmie(Tclass._System.___hFunc1(TReal, TBool));
    havoc $rhs##20;
    assume $rhs##20 == $Unbox($tmp##19): HandleType;
    // TrCallStmt: After ProcessCallStmt
    k1#0 := $rhs##20;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(57,31)
    assume true;
    // TrCallStmt: Adding lhs with type () --> int
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id46"} $tmp##20 := Call$$_module.__default.Gimmie(Tclass._System.___hPartialFunc0(TInt));
    havoc $rhs##21;
    assume $rhs##21 == $Unbox($tmp##20): HandleType;
    // TrCallStmt: After ProcessCallStmt
    k2#0 := $rhs##21;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(58,47)
    assume true;
    // TrCallStmt: Adding lhs with type (Color, set<bv12>) --> bv20
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id48"} $tmp##21 := Call$$_module.__default.Gimmie(Tclass._System.___hPartialFunc2(Tclass._module.Color(), TSet(TBitvector(12)), TBitvector(20)));
    havoc $rhs##22;
    assume $rhs##22 == $Unbox($tmp##21): HandleType;
    // TrCallStmt: After ProcessCallStmt
    k3#0 := $rhs##22;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(59,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
}



procedure {:verboseName "Gimmie (well-formedness)"} CheckWellFormed$$_module.__default.Gimmie(_module._default.Gimmie$R: Ty)
   returns (r#0: Box
       where $IsBox(r#0, _module._default.Gimmie$R)
         && $IsAllocBox(r#0, _module._default.Gimmie$R, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Gimmie (call)"} Call$$_module.__default.Gimmie(_module._default.Gimmie$R: Ty)
   returns (r#0: Box
       where $IsBox(r#0, _module._default.Gimmie$R)
         && $IsAllocBox(r#0, _module._default.Gimmie$R, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Gimmie (correctness)"} Impl$$_module.__default.Gimmie(_module._default.Gimmie$R: Ty)
   returns (r#0: Box
       where $IsBox(r#0, _module._default.Gimmie$R)
         && $IsAllocBox(r#0, _module._default.Gimmie$R, $Heap), 
    $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "GimmieMore (well-formedness)"} CheckWellFormed$$_module.__default.GimmieMore(_module._default.GimmieMore$R: Ty, _module._default.GimmieMore$S: Ty)
   returns (r#0: Box
       where $IsBox(r#0, _module._default.GimmieMore$R)
         && $IsAllocBox(r#0, _module._default.GimmieMore$R, $Heap), 
    s#0: Box
       where $IsBox(s#0, _module._default.GimmieMore$S)
         && $IsAllocBox(s#0, _module._default.GimmieMore$S, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GimmieMore (call)"} Call$$_module.__default.GimmieMore(_module._default.GimmieMore$R: Ty, _module._default.GimmieMore$S: Ty)
   returns (r#0: Box
       where $IsBox(r#0, _module._default.GimmieMore$R)
         && $IsAllocBox(r#0, _module._default.GimmieMore$R, $Heap), 
    s#0: Box
       where $IsBox(s#0, _module._default.GimmieMore$S)
         && $IsAllocBox(s#0, _module._default.GimmieMore$S, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "GimmieMore (correctness)"} Impl$$_module.__default.GimmieMore(_module._default.GimmieMore$R: Ty, _module._default.GimmieMore$S: Ty)
   returns (r#0: Box
       where $IsBox(r#0, _module._default.GimmieMore$R)
         && $IsAllocBox(r#0, _module._default.GimmieMore$R, $Heap), 
    s#0: Box
       where $IsBox(s#0, _module._default.GimmieMore$S)
         && $IsAllocBox(s#0, _module._default.GimmieMore$S, $Heap), 
    $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Tp (well-formedness)"} CheckWellFormed$$_module.__default.Tp();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Tp (call)"} Call$$_module.__default.Tp();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Tp (correctness)"} Impl$$_module.__default.Tp() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.Cl(Ty, Ty, Ty) : Ty;

const unique Tagclass._module.Cl: TyTag;

// Tclass._module.Cl Tag
axiom (forall _module.Cl$X: Ty, _module.Cl$Y: Ty, _module.Cl$Z: Ty :: 
  { Tclass._module.Cl(_module.Cl$X, _module.Cl$Y, _module.Cl$Z) } 
  Tag(Tclass._module.Cl(_module.Cl$X, _module.Cl$Y, _module.Cl$Z))
       == Tagclass._module.Cl
     && TagFamily(Tclass._module.Cl(_module.Cl$X, _module.Cl$Y, _module.Cl$Z))
       == tytagFamily$Cl);

function Tclass._module.Cl_0(Ty) : Ty;

// Tclass._module.Cl injectivity 0
axiom (forall _module.Cl$X: Ty, _module.Cl$Y: Ty, _module.Cl$Z: Ty :: 
  { Tclass._module.Cl(_module.Cl$X, _module.Cl$Y, _module.Cl$Z) } 
  Tclass._module.Cl_0(Tclass._module.Cl(_module.Cl$X, _module.Cl$Y, _module.Cl$Z))
     == _module.Cl$X);

function Tclass._module.Cl_1(Ty) : Ty;

// Tclass._module.Cl injectivity 1
axiom (forall _module.Cl$X: Ty, _module.Cl$Y: Ty, _module.Cl$Z: Ty :: 
  { Tclass._module.Cl(_module.Cl$X, _module.Cl$Y, _module.Cl$Z) } 
  Tclass._module.Cl_1(Tclass._module.Cl(_module.Cl$X, _module.Cl$Y, _module.Cl$Z))
     == _module.Cl$Y);

function Tclass._module.Cl_2(Ty) : Ty;

// Tclass._module.Cl injectivity 2
axiom (forall _module.Cl$X: Ty, _module.Cl$Y: Ty, _module.Cl$Z: Ty :: 
  { Tclass._module.Cl(_module.Cl$X, _module.Cl$Y, _module.Cl$Z) } 
  Tclass._module.Cl_2(Tclass._module.Cl(_module.Cl$X, _module.Cl$Y, _module.Cl$Z))
     == _module.Cl$Z);

// Box/unbox axiom for Tclass._module.Cl
axiom (forall _module.Cl$X: Ty, _module.Cl$Y: Ty, _module.Cl$Z: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Cl(_module.Cl$X, _module.Cl$Y, _module.Cl$Z)) } 
  $IsBox(bx, Tclass._module.Cl(_module.Cl$X, _module.Cl$Y, _module.Cl$Z))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.Cl(_module.Cl$X, _module.Cl$Y, _module.Cl$Z)));

function Tclass._module.NonemptyList(Ty) : Ty;

const unique Tagclass._module.NonemptyList: TyTag;

// Tclass._module.NonemptyList Tag
axiom (forall _module.NonemptyList$G: Ty :: 
  { Tclass._module.NonemptyList(_module.NonemptyList$G) } 
  Tag(Tclass._module.NonemptyList(_module.NonemptyList$G))
       == Tagclass._module.NonemptyList
     && TagFamily(Tclass._module.NonemptyList(_module.NonemptyList$G))
       == tytagFamily$NonemptyList);

function Tclass._module.NonemptyList_0(Ty) : Ty;

// Tclass._module.NonemptyList injectivity 0
axiom (forall _module.NonemptyList$G: Ty :: 
  { Tclass._module.NonemptyList(_module.NonemptyList$G) } 
  Tclass._module.NonemptyList_0(Tclass._module.NonemptyList(_module.NonemptyList$G))
     == _module.NonemptyList$G);

// Box/unbox axiom for Tclass._module.NonemptyList
axiom (forall _module.NonemptyList$G: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.NonemptyList(_module.NonemptyList$G)) } 
  $IsBox(bx, Tclass._module.NonemptyList(_module.NonemptyList$G))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.NonemptyList(_module.NonemptyList$G)));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Tp (correctness)"} Impl$$_module.__default.Tp() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#c#0: bool;
  var c#0: ref
     where defass#c#0
       ==> $Is(c#0, Tclass._module.Cl(TInt, TSeq(TBool), TChar))
         && $IsAlloc(c#0, Tclass._module.Cl(TInt, TSeq(TBool), TChar), $Heap);
  var $nw: ref;
  var zed##0: char;
  var defass#d#0: bool;
  var d#0: ref
     where defass#d#0
       ==> $Is(d#0, Tclass._module.Cl(TBool, Tclass._module.Color(), TInt))
         && $IsAlloc(d#0, Tclass._module.Cl(TBool, Tclass._module.Color(), TInt), $Heap);
  var zed##1: int;
  var n#0: DatatypeType
     where $Is(n#0, Tclass._module.NonemptyList(TBitvector(7)))
       && $IsAlloc(n#0, Tclass._module.NonemptyList(TBitvector(7)), $Heap);
  var $rhs##0: DatatypeType;
  var $tmp##0: Box;

    // AddMethodImpl: Tp, Impl$$_module.__default.Tp
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(68,9)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(68,12)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    zed##0 := Lit(char#FromInt(81));
    call {:id "id50"} $nw := Call$$_module.Cl.__ctor(TInt, TSeq(TBool), TChar, $Box(zed##0));
    // TrCallStmt: After ProcessCallStmt
    c#0 := $nw;
    defass#c#0 := true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(69,10)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id52"} defass#c#0;
    assume true;
    assert {:id "id53"} c#0 != null;
    call {:id "id54"} Call$$_module.Cl.Print(TInt, TSeq(TBool), TChar, c#0);
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(70,9)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(70,12)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    zed##1 := LitInt(42);
    call {:id "id55"} $nw := Call$$_module.Cl.__ctor(TBool, Tclass._module.Color(), TInt, $Box(zed##1));
    // TrCallStmt: After ProcessCallStmt
    d#0 := $nw;
    defass#d#0 := true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(71,10)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id57"} defass#d#0;
    assume true;
    assert {:id "id58"} d#0 != null;
    call {:id "id59"} Call$$_module.Cl.Print(TBool, Tclass._module.Color(), TInt, d#0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(72,37)
    assume true;
    // TrCallStmt: Adding lhs with type NonemptyList<bv7>
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id60"} $tmp##0 := Call$$_module.__default.Gimmie(Tclass._module.NonemptyList(TBitvector(7)));
    havoc $rhs##0;
    assume $rhs##0 == $Unbox($tmp##0): DatatypeType;
    // TrCallStmt: After ProcessCallStmt
    n#0 := $rhs##0;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(73,3)
    assume true;
    assume true;
}



procedure {:verboseName "TraitClass (well-formedness)"} CheckWellFormed$$_module.__default.TraitClass();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TraitClass (call)"} Call$$_module.__default.TraitClass();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TraitClass (correctness)"} Impl$$_module.__default.TraitClass() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.HClass() : Ty
uses {
// Tclass._module.HClass Tag
axiom Tag(Tclass._module.HClass()) == Tagclass._module.HClass
   && TagFamily(Tclass._module.HClass()) == tytagFamily$HClass;
}

const unique Tagclass._module.HClass: TyTag;

// Box/unbox axiom for Tclass._module.HClass
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.HClass()) } 
  $IsBox(bx, Tclass._module.HClass())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.HClass()));

function _module.HTrait.h0(this: ref) : DatatypeType
uses {
// HTrait.h0: Type axiom
axiom 1 < $FunctionContextHeight
   ==> (forall $o: ref :: 
    { _module.HTrait.h0($o) } 
    $o != null && $Is($o, Tclass._module.HTrait?())
       ==> $Is(_module.HTrait.h0($o), Tclass._module.Stream(TInt)));
// HTrait.h0: Allocation axiom
axiom 1 < $FunctionContextHeight
   ==> (forall $h: Heap, $o: ref :: 
    { _module.HTrait.h0($o), $Unbox(read($h, $o, alloc)): bool } 
    $IsGoodHeap($h)
         && 
        $o != null
         && $Is($o, Tclass._module.HTrait?())
         && $Unbox(read($h, $o, alloc)): bool
       ==> $IsAlloc(_module.HTrait.h0($o), Tclass._module.Stream(TInt), $h));
}

function _module.HClass.k0(this: ref) : DatatypeType
uses {
// HClass.k0: Type axiom
axiom 1 < $FunctionContextHeight
   ==> (forall $o: ref :: 
    { _module.HClass.k0($o) } 
    $o != null && dtype($o) == Tclass._module.HClass?()
       ==> $Is(_module.HClass.k0($o), Tclass._module.Stream(TInt)));
// HClass.k0: Allocation axiom
axiom 1 < $FunctionContextHeight
   ==> (forall $h: Heap, $o: ref :: 
    { _module.HClass.k0($o), $Unbox(read($h, $o, alloc)): bool } 
    $IsGoodHeap($h)
         && 
        $o != null
         && dtype($o) == Tclass._module.HClass?()
         && $Unbox(read($h, $o, alloc)): bool
       ==> $IsAlloc(_module.HClass.k0($o), Tclass._module.Stream(TInt), $h));
}

function Tclass._module.WClass(Ty) : Ty;

const unique Tagclass._module.WClass: TyTag;

// Tclass._module.WClass Tag
axiom (forall _module.WClass$W: Ty :: 
  { Tclass._module.WClass(_module.WClass$W) } 
  Tag(Tclass._module.WClass(_module.WClass$W)) == Tagclass._module.WClass
     && TagFamily(Tclass._module.WClass(_module.WClass$W)) == tytagFamily$WClass);

function Tclass._module.WClass_0(Ty) : Ty;

// Tclass._module.WClass injectivity 0
axiom (forall _module.WClass$W: Ty :: 
  { Tclass._module.WClass(_module.WClass$W) } 
  Tclass._module.WClass_0(Tclass._module.WClass(_module.WClass$W))
     == _module.WClass$W);

// Box/unbox axiom for Tclass._module.WClass
axiom (forall _module.WClass$W: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.WClass(_module.WClass$W)) } 
  $IsBox(bx, Tclass._module.WClass(_module.WClass$W))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.WClass(_module.WClass$W)));

function _module.WClass.k0(_module.WClass$W: Ty, this: ref) : DatatypeType
uses {
// WClass.k0: Type axiom
axiom 1 < $FunctionContextHeight
   ==> (forall _module.WClass$W: Ty, $o: ref :: 
    { _module.WClass.k0(_module.WClass$W, $o) } 
    $o != null && dtype($o) == Tclass._module.WClass?(_module.WClass$W)
       ==> $Is(_module.WClass.k0(_module.WClass$W, $o), Tclass._module.Stream(_module.WClass$W)));
// WClass.k0: Allocation axiom
axiom 1 < $FunctionContextHeight
   ==> (forall _module.WClass$W: Ty, $h: Heap, $o: ref :: 
    { _module.WClass.k0(_module.WClass$W, $o), $Unbox(read($h, $o, alloc)): bool } 
    $IsGoodHeap($h)
         && 
        $o != null
         && dtype($o) == Tclass._module.WClass?(_module.WClass$W)
         && $Unbox(read($h, $o, alloc)): bool
       ==> $IsAlloc(_module.WClass.k0(_module.WClass$W, $o), 
        Tclass._module.Stream(_module.WClass$W), 
        $h));
}

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TraitClass (correctness)"} Impl$$_module.__default.TraitClass() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#a#0: bool;
  var a#0: ref
     where defass#a#0
       ==> $Is(a#0, Tclass._module.HClass())
         && $IsAlloc(a#0, Tclass._module.HClass(), $Heap);
  var $nw: ref;
  var x#0: int;
  var $rhs##0: int;
  var s##0: DatatypeType;
  var $tmp##0: Box;
  var $rhs##1: int;
  var s##1: DatatypeType;
  var $tmp##1: Box;
  var $rhs##2: int;
  var s##2: DatatypeType;
  var $tmp##2: Box;
  var $rhs##3: int;
  var s##3: DatatypeType;
  var $tmp##3: Box;
  var defass#b#0: bool;
  var b#0: ref
     where defass#b#0
       ==> $Is(b#0, Tclass._module.WClass(TBool))
         && $IsAlloc(b#0, Tclass._module.WClass(TBool), $Heap);
  var w##0: bool;
  var y#0: bool;
  var $rhs##4: bool;
  var s##4: DatatypeType;
  var $tmp##4: Box;
  var $rhs##5: bool;
  var s##5: DatatypeType;
  var $tmp##5: Box;

    // AddMethodImpl: TraitClass, Impl$$_module.__default.TraitClass
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(130,9)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(130,23)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id62"} $nw := Call$$_module.HClass.Make();
    // TrCallStmt: After ProcessCallStmt
    a#0 := $nw;
    defass#a#0 := true;
    havoc x#0;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(132,19)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id64"} defass#a#0;
    assert {:id "id65"} a#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##0 := _module.HTrait.h0(a#0);
    call {:id "id66"} $tmp##0 := Call$$_module.HTrait.Cadr(TInt, s##0);
    havoc $rhs##0;
    assume $rhs##0 == $Unbox($tmp##0): int;
    // TrCallStmt: After ProcessCallStmt
    x#0 := $rhs##0;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(132,27)
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(133,19)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id68"} defass#a#0;
    assert {:id "id69"} a#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##1 := $Unbox(read($Heap, a#0, _module.HTrait.h1)): DatatypeType;
    call {:id "id70"} $tmp##1 := Call$$_module.HTrait.Cadr(TInt, s##1);
    havoc $rhs##1;
    assume $rhs##1 == $Unbox($tmp##1): int;
    // TrCallStmt: After ProcessCallStmt
    x#0 := $rhs##1;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(133,27)
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(134,19)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id72"} defass#a#0;
    assert {:id "id73"} a#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##2 := _module.HClass.k0(a#0);
    call {:id "id74"} $tmp##2 := Call$$_module.HTrait.Cadr(TInt, s##2);
    havoc $rhs##2;
    assume $rhs##2 == $Unbox($tmp##2): int;
    // TrCallStmt: After ProcessCallStmt
    x#0 := $rhs##2;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(134,27)
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(135,19)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id76"} defass#a#0;
    assert {:id "id77"} a#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##3 := $Unbox(read($Heap, a#0, _module.HClass.k1)): DatatypeType;
    call {:id "id78"} $tmp##3 := Call$$_module.HTrait.Cadr(TInt, s##3);
    havoc $rhs##3;
    assume $rhs##3 == $Unbox($tmp##3): int;
    // TrCallStmt: After ProcessCallStmt
    x#0 := $rhs##3;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(135,27)
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(137,9)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(137,23)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    w##0 := Lit(true);
    call {:id "id80"} $nw := Call$$_module.WClass.Make(TBool, $Box(w##0));
    // TrCallStmt: After ProcessCallStmt
    b#0 := $nw;
    defass#b#0 := true;
    havoc y#0;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(139,19)
    assume true;
    // TrCallStmt: Adding lhs with type bool
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id82"} defass#b#0;
    assert {:id "id83"} b#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##4 := _module.WClass.k0(TBool, b#0);
    call {:id "id84"} $tmp##4 := Call$$_module.HTrait.Cadr(TBool, s##4);
    havoc $rhs##4;
    assume $rhs##4 == $Unbox($tmp##4): bool;
    // TrCallStmt: After ProcessCallStmt
    y#0 := $rhs##4;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(139,27)
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(140,19)
    assume true;
    // TrCallStmt: Adding lhs with type bool
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id86"} defass#b#0;
    assert {:id "id87"} b#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##5 := $Unbox(read($Heap, b#0, _module.WClass.k1)): DatatypeType;
    call {:id "id88"} $tmp##5 := Call$$_module.HTrait.Cadr(TBool, s##5);
    havoc $rhs##5;
    assume $rhs##5 == $Unbox($tmp##5): bool;
    // TrCallStmt: After ProcessCallStmt
    y#0 := $rhs##5;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(140,27)
    assume true;
    assume true;
}



// function declaration for _module._default.FauxEvva
function _module.__default.FauxEvva(_module._default.FauxEvva$G: Ty, $ly: LayerType, g#0: Box) : DatatypeType
uses {
// consequence axiom for _module.__default.FauxEvva
axiom 1 <= $FunctionContextHeight
   ==> (forall _module._default.FauxEvva$G: Ty, $ly: LayerType, g#0: Box :: 
    { _module.__default.FauxEvva(_module._default.FauxEvva$G, $ly, g#0) } 
    _module.__default.FauxEvva#canCall(_module._default.FauxEvva$G, g#0)
         || (1 < $FunctionContextHeight && $IsBox(g#0, _module._default.FauxEvva$G))
       ==> $Is(_module.__default.FauxEvva(_module._default.FauxEvva$G, $ly, g#0), 
        Tclass._module.IList(_module._default.FauxEvva$G)));
// alloc consequence axiom for _module.__default.FauxEvva
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, _module._default.FauxEvva$G: Ty, $ly: LayerType, g#0: Box :: 
    { $IsAlloc(_module.__default.FauxEvva(_module._default.FauxEvva$G, $ly, g#0), 
        Tclass._module.IList(_module._default.FauxEvva$G), 
        $Heap) } 
    (_module.__default.FauxEvva#canCall(_module._default.FauxEvva$G, g#0)
           || (1 < $FunctionContextHeight
             && 
            $IsBox(g#0, _module._default.FauxEvva$G)
             && $IsAllocBox(g#0, _module._default.FauxEvva$G, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.__default.FauxEvva(_module._default.FauxEvva$G, $ly, g#0), 
        Tclass._module.IList(_module._default.FauxEvva$G), 
        $Heap));
// definition axiom for _module.__default.FauxEvva (revealed)
axiom {:id "id90"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.FauxEvva$G: Ty, $ly: LayerType, g#0: Box :: 
    { _module.__default.FauxEvva(_module._default.FauxEvva$G, $LS($ly), g#0) } 
    _module.__default.FauxEvva#canCall(_module._default.FauxEvva$G, g#0)
         || (1 < $FunctionContextHeight && $IsBox(g#0, _module._default.FauxEvva$G))
       ==> _module.__default.FauxEvva#canCall(_module._default.FauxEvva$G, g#0)
         && _module.__default.FauxEvva(_module._default.FauxEvva$G, $LS($ly), g#0)
           == #_module.IList.ICons(g#0, _module.__default.FauxEvva(_module._default.FauxEvva$G, $ly, g#0)));
}

function _module.__default.FauxEvva#canCall(_module._default.FauxEvva$G: Ty, g#0: Box) : bool;

// layer synonym axiom
axiom (forall _module._default.FauxEvva$G: Ty, $ly: LayerType, g#0: Box :: 
  { _module.__default.FauxEvva(_module._default.FauxEvva$G, $LS($ly), g#0) } 
  _module.__default.FauxEvva(_module._default.FauxEvva$G, $LS($ly), g#0)
     == _module.__default.FauxEvva(_module._default.FauxEvva$G, $ly, g#0));

// fuel synonym axiom
axiom (forall _module._default.FauxEvva$G: Ty, $ly: LayerType, g#0: Box :: 
  { _module.__default.FauxEvva(_module._default.FauxEvva$G, AsFuelBottom($ly), g#0) } 
  _module.__default.FauxEvva(_module._default.FauxEvva$G, $ly, g#0)
     == _module.__default.FauxEvva(_module._default.FauxEvva$G, $LZ, g#0));

function Tclass._module.IList(Ty) : Ty;

const unique Tagclass._module.IList: TyTag;

// Tclass._module.IList Tag
axiom (forall _module.IList$G: Ty :: 
  { Tclass._module.IList(_module.IList$G) } 
  Tag(Tclass._module.IList(_module.IList$G)) == Tagclass._module.IList
     && TagFamily(Tclass._module.IList(_module.IList$G)) == tytagFamily$IList);

function Tclass._module.IList_0(Ty) : Ty;

// Tclass._module.IList injectivity 0
axiom (forall _module.IList$G: Ty :: 
  { Tclass._module.IList(_module.IList$G) } 
  Tclass._module.IList_0(Tclass._module.IList(_module.IList$G)) == _module.IList$G);

// Box/unbox axiom for Tclass._module.IList
axiom (forall _module.IList$G: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.IList(_module.IList$G)) } 
  $IsBox(bx, Tclass._module.IList(_module.IList$G))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.IList(_module.IList$G)));

function _module.__default.FauxEvva#requires(Ty, LayerType, Box) : bool;

// #requires axiom for _module.__default.FauxEvva
axiom (forall _module._default.FauxEvva$G: Ty, $ly: LayerType, g#0: Box :: 
  { _module.__default.FauxEvva#requires(_module._default.FauxEvva$G, $ly, g#0) } 
  $IsBox(g#0, _module._default.FauxEvva$G)
     ==> _module.__default.FauxEvva#requires(_module._default.FauxEvva$G, $ly, g#0)
       == true);

procedure {:verboseName "FauxEvva (well-formedness)"} CheckWellformed$$_module.__default.FauxEvva(_module._default.FauxEvva$G: Ty, 
    g#0: Box where $IsBox(g#0, _module._default.FauxEvva$G));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.FullStreamAhead
function _module.__default.FullStreamAhead(_module._default.FullStreamAhead$G: Ty, $ly: LayerType, g#0: Box) : DatatypeType
uses {
// consequence axiom for _module.__default.FullStreamAhead
axiom 1 <= $FunctionContextHeight
   ==> (forall _module._default.FullStreamAhead$G: Ty, $ly: LayerType, g#0: Box :: 
    { _module.__default.FullStreamAhead(_module._default.FullStreamAhead$G, $ly, g#0) } 
    _module.__default.FullStreamAhead#canCall(_module._default.FullStreamAhead$G, g#0)
         || (1 < $FunctionContextHeight && $IsBox(g#0, _module._default.FullStreamAhead$G))
       ==> $Is(_module.__default.FullStreamAhead(_module._default.FullStreamAhead$G, $ly, g#0), 
        Tclass._module.Stream(_module._default.FullStreamAhead$G)));
// alloc consequence axiom for _module.__default.FullStreamAhead
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, _module._default.FullStreamAhead$G: Ty, $ly: LayerType, g#0: Box :: 
    { $IsAlloc(_module.__default.FullStreamAhead(_module._default.FullStreamAhead$G, $ly, g#0), 
        Tclass._module.Stream(_module._default.FullStreamAhead$G), 
        $Heap) } 
    (_module.__default.FullStreamAhead#canCall(_module._default.FullStreamAhead$G, g#0)
           || (1 < $FunctionContextHeight
             && 
            $IsBox(g#0, _module._default.FullStreamAhead$G)
             && $IsAllocBox(g#0, _module._default.FullStreamAhead$G, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.__default.FullStreamAhead(_module._default.FullStreamAhead$G, $ly, g#0), 
        Tclass._module.Stream(_module._default.FullStreamAhead$G), 
        $Heap));
// definition axiom for _module.__default.FullStreamAhead (revealed)
axiom {:id "id92"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.FullStreamAhead$G: Ty, $ly: LayerType, g#0: Box :: 
    { _module.__default.FullStreamAhead(_module._default.FullStreamAhead$G, $LS($ly), g#0) } 
    _module.__default.FullStreamAhead#canCall(_module._default.FullStreamAhead$G, g#0)
         || (1 < $FunctionContextHeight && $IsBox(g#0, _module._default.FullStreamAhead$G))
       ==> _module.__default.FullStreamAhead#canCall(_module._default.FullStreamAhead$G, g#0)
         && _module.__default.FullStreamAhead(_module._default.FullStreamAhead$G, $LS($ly), g#0)
           == #_module.Stream.Next(g#0, 
            _module.__default.FullStreamAhead(_module._default.FullStreamAhead$G, $ly, g#0)));
}

function _module.__default.FullStreamAhead#canCall(_module._default.FullStreamAhead$G: Ty, g#0: Box) : bool;

// layer synonym axiom
axiom (forall _module._default.FullStreamAhead$G: Ty, $ly: LayerType, g#0: Box :: 
  { _module.__default.FullStreamAhead(_module._default.FullStreamAhead$G, $LS($ly), g#0) } 
  _module.__default.FullStreamAhead(_module._default.FullStreamAhead$G, $LS($ly), g#0)
     == _module.__default.FullStreamAhead(_module._default.FullStreamAhead$G, $ly, g#0));

// fuel synonym axiom
axiom (forall _module._default.FullStreamAhead$G: Ty, $ly: LayerType, g#0: Box :: 
  { _module.__default.FullStreamAhead(_module._default.FullStreamAhead$G, AsFuelBottom($ly), g#0) } 
  _module.__default.FullStreamAhead(_module._default.FullStreamAhead$G, $ly, g#0)
     == _module.__default.FullStreamAhead(_module._default.FullStreamAhead$G, $LZ, g#0));

function Tclass._module.Stream(Ty) : Ty;

const unique Tagclass._module.Stream: TyTag;

// Tclass._module.Stream Tag
axiom (forall _module.Stream$G: Ty :: 
  { Tclass._module.Stream(_module.Stream$G) } 
  Tag(Tclass._module.Stream(_module.Stream$G)) == Tagclass._module.Stream
     && TagFamily(Tclass._module.Stream(_module.Stream$G)) == tytagFamily$Stream);

function Tclass._module.Stream_0(Ty) : Ty;

// Tclass._module.Stream injectivity 0
axiom (forall _module.Stream$G: Ty :: 
  { Tclass._module.Stream(_module.Stream$G) } 
  Tclass._module.Stream_0(Tclass._module.Stream(_module.Stream$G))
     == _module.Stream$G);

// Box/unbox axiom for Tclass._module.Stream
axiom (forall _module.Stream$G: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Stream(_module.Stream$G)) } 
  $IsBox(bx, Tclass._module.Stream(_module.Stream$G))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Stream(_module.Stream$G)));

function _module.__default.FullStreamAhead#requires(Ty, LayerType, Box) : bool;

// #requires axiom for _module.__default.FullStreamAhead
axiom (forall _module._default.FullStreamAhead$G: Ty, $ly: LayerType, g#0: Box :: 
  { _module.__default.FullStreamAhead#requires(_module._default.FullStreamAhead$G, $ly, g#0) } 
  $IsBox(g#0, _module._default.FullStreamAhead$G)
     ==> _module.__default.FullStreamAhead#requires(_module._default.FullStreamAhead$G, $ly, g#0)
       == true);

procedure {:verboseName "FullStreamAhead (well-formedness)"} CheckWellformed$$_module.__default.FullStreamAhead(_module._default.FullStreamAhead$G: Ty, 
    g#0: Box where $IsBox(g#0, _module._default.FullStreamAhead$G));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Direct (well-formedness)"} CheckWellFormed$$_module.__default.Direct();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Direct (call)"} Call$$_module.__default.Direct();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Direct (correctness)"} Impl$$_module.__default.Direct() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.EmptyList(Ty) : Ty;

const unique Tagclass._module.EmptyList: TyTag;

// Tclass._module.EmptyList Tag
axiom (forall _module.EmptyList$G: Ty :: 
  { Tclass._module.EmptyList(_module.EmptyList$G) } 
  Tag(Tclass._module.EmptyList(_module.EmptyList$G)) == Tagclass._module.EmptyList
     && TagFamily(Tclass._module.EmptyList(_module.EmptyList$G))
       == tytagFamily$EmptyList);

function Tclass._module.EmptyList_0(Ty) : Ty;

// Tclass._module.EmptyList injectivity 0
axiom (forall _module.EmptyList$G: Ty :: 
  { Tclass._module.EmptyList(_module.EmptyList$G) } 
  Tclass._module.EmptyList_0(Tclass._module.EmptyList(_module.EmptyList$G))
     == _module.EmptyList$G);

// Box/unbox axiom for Tclass._module.EmptyList
axiom (forall _module.EmptyList$G: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.EmptyList(_module.EmptyList$G)) } 
  $IsBox(bx, Tclass._module.EmptyList(_module.EmptyList$G))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.EmptyList(_module.EmptyList$G)));

function Tclass._module.AlwaysNothing() : Ty
uses {
// Tclass._module.AlwaysNothing Tag
axiom Tag(Tclass._module.AlwaysNothing()) == Tagclass._module.AlwaysNothing
   && TagFamily(Tclass._module.AlwaysNothing()) == tytagFamily$AlwaysNothing;
}

const unique Tagclass._module.AlwaysNothing: TyTag;

// Box/unbox axiom for Tclass._module.AlwaysNothing
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.AlwaysNothing()) } 
  $IsBox(bx, Tclass._module.AlwaysNothing())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.AlwaysNothing()));

function Tclass._module.NonemptyCoList(Ty) : Ty;

const unique Tagclass._module.NonemptyCoList: TyTag;

// Tclass._module.NonemptyCoList Tag
axiom (forall _module.NonemptyCoList$G: Ty :: 
  { Tclass._module.NonemptyCoList(_module.NonemptyCoList$G) } 
  Tag(Tclass._module.NonemptyCoList(_module.NonemptyCoList$G))
       == Tagclass._module.NonemptyCoList
     && TagFamily(Tclass._module.NonemptyCoList(_module.NonemptyCoList$G))
       == tytagFamily$NonemptyCoList);

function Tclass._module.NonemptyCoList_0(Ty) : Ty;

// Tclass._module.NonemptyCoList injectivity 0
axiom (forall _module.NonemptyCoList$G: Ty :: 
  { Tclass._module.NonemptyCoList(_module.NonemptyCoList$G) } 
  Tclass._module.NonemptyCoList_0(Tclass._module.NonemptyCoList(_module.NonemptyCoList$G))
     == _module.NonemptyCoList$G);

// Box/unbox axiom for Tclass._module.NonemptyCoList
axiom (forall _module.NonemptyCoList$G: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.NonemptyCoList(_module.NonemptyCoList$G)) } 
  $IsBox(bx, Tclass._module.NonemptyCoList(_module.NonemptyCoList$G))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass._module.NonemptyCoList(_module.NonemptyCoList$G)));

function Tclass._module.PinkColor() : Ty
uses {
// Tclass._module.PinkColor Tag
axiom Tag(Tclass._module.PinkColor()) == Tagclass._module.PinkColor
   && TagFamily(Tclass._module.PinkColor()) == tytagFamily$PinkColor;
}

const unique Tagclass._module.PinkColor: TyTag;

// Box/unbox axiom for Tclass._module.PinkColor
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.PinkColor()) } 
  $IsBox(bx, Tclass._module.PinkColor())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.PinkColor()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Direct (correctness)"} Impl$$_module.__default.Direct() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s0#0: DatatypeType
     where $Is(s0#0, Tclass._module.IList(TInt))
       && $IsAlloc(s0#0, Tclass._module.IList(TInt), $Heap);
  var s1#0: DatatypeType
     where $Is(s1#0, Tclass._module.IList(TBool))
       && $IsAlloc(s1#0, Tclass._module.IList(TBool), $Heap);
  var s2#0: DatatypeType
     where $Is(s2#0, Tclass._module.Stream(TReal))
       && $IsAlloc(s2#0, Tclass._module.Stream(TReal), $Heap);
  var s3#0: DatatypeType
     where $Is(s3#0, Tclass._module.EmptyList(Tclass._module.Color()))
       && $IsAlloc(s3#0, Tclass._module.EmptyList(Tclass._module.Color()), $Heap);
  var s4#0: DatatypeType
     where $Is(s4#0, Tclass._module.AlwaysNothing())
       && $IsAlloc(s4#0, Tclass._module.AlwaysNothing(), $Heap);
  var $rhs#0: DatatypeType;
  var $rhs#1: DatatypeType;
  var $rhs#2: DatatypeType;
  var ##g#0: real;
  var $rhs#3: DatatypeType;
  var n0#0: DatatypeType
     where $Is(n0#0, Tclass._module.NonemptyList(TBitvector(7)))
       && $IsAlloc(n0#0, Tclass._module.NonemptyList(TBitvector(7)), $Heap);
  var n1#0: DatatypeType
     where $Is(n1#0, Tclass._module.NonemptyCoList(TBitvector(7)))
       && $IsAlloc(n1#0, Tclass._module.NonemptyCoList(TBitvector(7)), $Heap);
  var a#0: DatatypeType
     where $Is(a#0, Tclass._module.PinkColor())
       && $IsAlloc(a#0, Tclass._module.PinkColor(), $Heap);
  var b#0: int where LitInt(8) <= b#0;
  var c#0: int where Mod(c#0, LitInt(2)) == LitInt(1);
  var k0#0: HandleType
     where $Is(k0#0, Tclass._System.___hPartialFunc1(TReal, TBool))
       && $IsAlloc(k0#0, Tclass._System.___hPartialFunc1(TReal, TBool), $Heap);
  var k1#0: HandleType
     where $Is(k1#0, Tclass._System.___hFunc1(TReal, TBool))
       && $IsAlloc(k1#0, Tclass._System.___hFunc1(TReal, TBool), $Heap);
  var k2#0: HandleType
     where $Is(k2#0, Tclass._System.___hPartialFunc0(TInt))
       && $IsAlloc(k2#0, Tclass._System.___hPartialFunc0(TInt), $Heap);
  var k3#0: HandleType
     where $Is(k3#0, 
        Tclass._System.___hPartialFunc2(Tclass._module.Color(), TSet(TBitvector(12)), TBitvector(20)))
       && $IsAlloc(k3#0, 
        Tclass._System.___hPartialFunc2(Tclass._module.Color(), TSet(TBitvector(12)), TBitvector(20)), 
        $Heap);
  var m0#0: HandleType
     where $Is(m0#0, Tclass._System.___hTotalFunc1(TReal, TBool))
       && $IsAlloc(m0#0, Tclass._System.___hTotalFunc1(TReal, TBool), $Heap);
  var m1#0: HandleType
     where $Is(m1#0, Tclass._System.___hTotalFunc0(TInt))
       && $IsAlloc(m1#0, Tclass._System.___hTotalFunc0(TInt), $Heap);
  var m2#0: HandleType
     where $Is(m2#0, 
        Tclass._System.___hTotalFunc2(Tclass._module.Color(), TSet(TBitvector(12)), TBitvector(20)))
       && $IsAlloc(m2#0, 
        Tclass._System.___hTotalFunc2(Tclass._module.Color(), TSet(TBitvector(12)), TBitvector(20)), 
        $Heap);

    // AddMethodImpl: Direct, Impl$$_module.__default.Direct
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    havoc s0#0 /* where $Is(s0#0, Tclass._module.IList(TInt))
       && $IsAlloc(s0#0, Tclass._module.IList(TInt), $Heap) */;
    havoc s1#0 /* where $Is(s1#0, Tclass._module.IList(TBool))
       && $IsAlloc(s1#0, Tclass._module.IList(TBool), $Heap) */;
    havoc s2#0 /* where $Is(s2#0, Tclass._module.Stream(TReal))
       && $IsAlloc(s2#0, Tclass._module.Stream(TReal), $Heap) */;
    havoc s3#0 /* where $Is(s3#0, Tclass._module.EmptyList(Tclass._module.Color()))
       && $IsAlloc(s3#0, Tclass._module.EmptyList(Tclass._module.Color()), $Heap) */;
    havoc s4#0 /* where $Is(s4#0, Tclass._module.AlwaysNothing())
       && $IsAlloc(s4#0, Tclass._module.AlwaysNothing(), $Heap) */;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(167,3)
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(168,18)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    $rhs#0 := Lit(#_module.IList.INil());
    assume true;
    $rhs#1 := Lit(#_module.IList.INil());
    ##g#0 := LitReal(24e-1);
    // assume allocatedness for argument to function
    assume $IsAlloc(##g#0, TReal, $Heap);
    assume _module.__default.FullStreamAhead#canCall(TReal, $Box(LitReal(24e-1)));
    assume _module.Stream.Next_q(Lit(_module.__default.FullStreamAhead(TReal, $LS($LZ), $Box(LitReal(24e-1)))));
    assume _module.__default.FullStreamAhead#canCall(TReal, $Box(LitReal(24e-1)));
    $rhs#2 := Lit(_module.__default.FullStreamAhead(TReal, $LS($LZ), $Box(LitReal(24e-1))));
    assert {:id "id97"} $Is(Lit(#_module.IList.INil()), Tclass._module.EmptyList(Tclass._module.Color()));
    assume true;
    $rhs#3 := Lit(#_module.IList.INil());
    s0#0 := $rhs#0;
    s1#0 := $rhs#1;
    s2#0 := $rhs#2;
    s3#0 := $rhs#3;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(169,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    havoc n0#0 /* where $Is(n0#0, Tclass._module.NonemptyList(TBitvector(7)))
       && $IsAlloc(n0#0, Tclass._module.NonemptyList(TBitvector(7)), $Heap) */;
    havoc n1#0 /* where $Is(n1#0, Tclass._module.NonemptyCoList(TBitvector(7)))
       && $IsAlloc(n1#0, Tclass._module.NonemptyCoList(TBitvector(7)), $Heap) */;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(173,3)
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(175,6)
    assume true;
    assume true;
    n1#0 := Lit(#_module.NonemptyCoList.CoAtom($Box(Lit(109bv7))));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(176,3)
    assume true;
    assume true;
    havoc a#0 /* where $Is(a#0, Tclass._module.PinkColor())
       && $IsAlloc(a#0, Tclass._module.PinkColor(), $Heap) */;
    havoc b#0 /* where LitInt(8) <= b#0 */;
    havoc c#0 /* where Mod(c#0, LitInt(2)) == LitInt(1) */;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(181,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    havoc k0#0 /* where $Is(k0#0, Tclass._System.___hPartialFunc1(TReal, TBool))
       && $IsAlloc(k0#0, Tclass._System.___hPartialFunc1(TReal, TBool), $Heap) */;
    havoc k1#0 /* where $Is(k1#0, Tclass._System.___hFunc1(TReal, TBool))
       && $IsAlloc(k1#0, Tclass._System.___hFunc1(TReal, TBool), $Heap) */;
    havoc k2#0 /* where $Is(k2#0, Tclass._System.___hPartialFunc0(TInt))
       && $IsAlloc(k2#0, Tclass._System.___hPartialFunc0(TInt), $Heap) */;
    havoc k3#0 /* where $Is(k3#0, 
        Tclass._System.___hPartialFunc2(Tclass._module.Color(), TSet(TBitvector(12)), TBitvector(20)))
       && $IsAlloc(k3#0, 
        Tclass._System.___hPartialFunc2(Tclass._module.Color(), TSet(TBitvector(12)), TBitvector(20)), 
        $Heap) */;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(187,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    havoc m0#0 /* where $Is(m0#0, Tclass._System.___hTotalFunc1(TReal, TBool))
       && $IsAlloc(m0#0, Tclass._System.___hTotalFunc1(TReal, TBool), $Heap) */;
    havoc m1#0 /* where $Is(m1#0, Tclass._System.___hTotalFunc0(TInt))
       && $IsAlloc(m1#0, Tclass._System.___hTotalFunc0(TInt), $Heap) */;
    havoc m2#0 /* where $Is(m2#0, 
        Tclass._System.___hTotalFunc2(Tclass._module.Color(), TSet(TBitvector(12)), TBitvector(20)))
       && $IsAlloc(m2#0, 
        Tclass._System.___hTotalFunc2(Tclass._module.Color(), TSet(TBitvector(12)), TBitvector(20)), 
        $Heap) */;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(192,3)
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(193,3)
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(194,3)
    assume true;
    assume true;
}



procedure {:verboseName "Regressions (well-formedness)"} CheckWellFormed$$_module.__default.Regressions();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Regressions (call)"} Call$$_module.__default.Regressions();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Regressions (correctness)"} Impl$$_module.__default.Regressions() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.TypeParamWithDefault(Ty) : Ty;

const unique Tagclass._module.TypeParamWithDefault: TyTag;

// Tclass._module.TypeParamWithDefault Tag
axiom (forall _module.TypeParamWithDefault$G: Ty :: 
  { Tclass._module.TypeParamWithDefault(_module.TypeParamWithDefault$G) } 
  Tag(Tclass._module.TypeParamWithDefault(_module.TypeParamWithDefault$G))
       == Tagclass._module.TypeParamWithDefault
     && TagFamily(Tclass._module.TypeParamWithDefault(_module.TypeParamWithDefault$G))
       == tytagFamily$TypeParamWithDefault);

function Tclass._module.TypeParamWithDefault_0(Ty) : Ty;

// Tclass._module.TypeParamWithDefault injectivity 0
axiom (forall _module.TypeParamWithDefault$G: Ty :: 
  { Tclass._module.TypeParamWithDefault(_module.TypeParamWithDefault$G) } 
  Tclass._module.TypeParamWithDefault_0(Tclass._module.TypeParamWithDefault(_module.TypeParamWithDefault$G))
     == _module.TypeParamWithDefault$G);

// Box/unbox axiom for Tclass._module.TypeParamWithDefault
axiom (forall _module.TypeParamWithDefault$G: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.TypeParamWithDefault(_module.TypeParamWithDefault$G)) } 
  $IsBox(bx, Tclass._module.TypeParamWithDefault(_module.TypeParamWithDefault$G))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, 
        Tclass._module.TypeParamWithDefault(_module.TypeParamWithDefault$G)));

function Tclass._module.TypeParamWithDefault?(Ty) : Ty;

const unique Tagclass._module.TypeParamWithDefault?: TyTag;

// Tclass._module.TypeParamWithDefault? Tag
axiom (forall _module.TypeParamWithDefault$G: Ty :: 
  { Tclass._module.TypeParamWithDefault?(_module.TypeParamWithDefault$G) } 
  Tag(Tclass._module.TypeParamWithDefault?(_module.TypeParamWithDefault$G))
       == Tagclass._module.TypeParamWithDefault?
     && TagFamily(Tclass._module.TypeParamWithDefault?(_module.TypeParamWithDefault$G))
       == tytagFamily$TypeParamWithDefault);

function Tclass._module.TypeParamWithDefault?_0(Ty) : Ty;

// Tclass._module.TypeParamWithDefault? injectivity 0
axiom (forall _module.TypeParamWithDefault$G: Ty :: 
  { Tclass._module.TypeParamWithDefault?(_module.TypeParamWithDefault$G) } 
  Tclass._module.TypeParamWithDefault?_0(Tclass._module.TypeParamWithDefault?(_module.TypeParamWithDefault$G))
     == _module.TypeParamWithDefault$G);

// Box/unbox axiom for Tclass._module.TypeParamWithDefault?
axiom (forall _module.TypeParamWithDefault$G: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.TypeParamWithDefault?(_module.TypeParamWithDefault$G)) } 
  $IsBox(bx, Tclass._module.TypeParamWithDefault?(_module.TypeParamWithDefault$G))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, 
        Tclass._module.TypeParamWithDefault?(_module.TypeParamWithDefault$G)));

function _module.TypeParamWithDefault.g(_module.TypeParamWithDefault$G: Ty, this: ref) : Box
uses {
// TypeParamWithDefault.g: Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.TypeParamWithDefault$G: Ty, $o: ref :: 
    { _module.TypeParamWithDefault.g(_module.TypeParamWithDefault$G, $o) } 
    $o != null
         && dtype($o)
           == Tclass._module.TypeParamWithDefault?(_module.TypeParamWithDefault$G)
       ==> $IsBox(_module.TypeParamWithDefault.g(_module.TypeParamWithDefault$G, $o), 
        _module.TypeParamWithDefault$G));
// TypeParamWithDefault.g: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.TypeParamWithDefault$G: Ty, $h: Heap, $o: ref :: 
    { _module.TypeParamWithDefault.g(_module.TypeParamWithDefault$G, $o), $Unbox(read($h, $o, alloc)): bool } 
    $IsGoodHeap($h)
         && 
        $o != null
         && dtype($o)
           == Tclass._module.TypeParamWithDefault?(_module.TypeParamWithDefault$G)
         && $Unbox(read($h, $o, alloc)): bool
       ==> $IsAllocBox(_module.TypeParamWithDefault.g(_module.TypeParamWithDefault$G, $o), 
        _module.TypeParamWithDefault$G, 
        $h));
}

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Regressions (correctness)"} Impl$$_module.__default.Regressions() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#k#0: bool;
  var k#0: ref
     where defass#k#0
       ==> $Is(k#0, Tclass._module.TypeParamWithDefault(TInt))
         && $IsAlloc(k#0, Tclass._module.TypeParamWithDefault(TInt), $Heap);
  var $nw: ref;
  var x#0: int;
  var y#0: int;
  var $rhs##0: int;
  var $tmp##0: Box;

    // AddMethodImpl: Regressions, Impl$$_module.__default.Regressions
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(203,9)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.TypeParamWithDefault?(TInt));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    k#0 := $nw;
    defass#k#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(204,9)
    assume true;
    assert {:id "id105"} defass#k#0;
    assert {:id "id106"} k#0 != null;
    assume true;
    x#0 := $Unbox(_module.TypeParamWithDefault.g(TInt, k#0)): int;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(205,15)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id108"} defass#k#0;
    assume true;
    assert {:id "id109"} k#0 != null;
    call {:id "id110"} $tmp##0 := Call$$_module.TypeParamWithDefault.M(TInt, k#0);
    havoc $rhs##0;
    assume $rhs##0 == $Unbox($tmp##0): int;
    // TrCallStmt: After ProcessCallStmt
    y#0 := $rhs##0;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(206,3)
    assume true;
    assume true;
    assume true;
    assume true;
}



// Constructor function declaration
function #_module.Color.Orange() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Color.Orange()) == ##_module.Color.Orange;
// Constructor $Is
axiom $Is(#_module.Color.Orange(), Tclass._module.Color());
// Constructor literal
axiom #_module.Color.Orange() == Lit(#_module.Color.Orange());
}

const unique ##_module.Color.Orange: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Color.Orange()) == ##_module.Color.Orange;
}

function _module.Color.Orange_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Color.Orange_q(d) } 
  _module.Color.Orange_q(d) <==> DatatypeCtorId(d) == ##_module.Color.Orange);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Color.Orange_q(d) } 
  _module.Color.Orange_q(d) ==> d == #_module.Color.Orange());

// Constructor function declaration
function #_module.Color.Pink() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Color.Pink()) == ##_module.Color.Pink;
// Constructor $Is
axiom $Is(#_module.Color.Pink(), Tclass._module.Color());
// Constructor literal
axiom #_module.Color.Pink() == Lit(#_module.Color.Pink());
}

const unique ##_module.Color.Pink: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Color.Pink()) == ##_module.Color.Pink;
}

function _module.Color.Pink_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Color.Pink_q(d) } 
  _module.Color.Pink_q(d) <==> DatatypeCtorId(d) == ##_module.Color.Pink);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Color.Pink_q(d) } 
  _module.Color.Pink_q(d) ==> d == #_module.Color.Pink());

// Constructor function declaration
function #_module.Color.Teal() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Color.Teal()) == ##_module.Color.Teal;
// Constructor $Is
axiom $Is(#_module.Color.Teal(), Tclass._module.Color());
// Constructor literal
axiom #_module.Color.Teal() == Lit(#_module.Color.Teal());
}

const unique ##_module.Color.Teal: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Color.Teal()) == ##_module.Color.Teal;
}

function _module.Color.Teal_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Color.Teal_q(d) } 
  _module.Color.Teal_q(d) <==> DatatypeCtorId(d) == ##_module.Color.Teal);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Color.Teal_q(d) } 
  _module.Color.Teal_q(d) ==> d == #_module.Color.Teal());

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.Color(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.Color())
     ==> $IsAlloc(d, Tclass._module.Color(), $h));

// Depth-one case-split function
function $IsA#_module.Color(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Color(d) } 
  $IsA#_module.Color(d)
     ==> _module.Color.Orange_q(d) || _module.Color.Pink_q(d) || _module.Color.Teal_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.Color.Teal_q(d), $Is(d, Tclass._module.Color()) } 
    { _module.Color.Pink_q(d), $Is(d, Tclass._module.Color()) } 
    { _module.Color.Orange_q(d), $Is(d, Tclass._module.Color()) } 
  $Is(d, Tclass._module.Color())
     ==> _module.Color.Orange_q(d) || _module.Color.Pink_q(d) || _module.Color.Teal_q(d));

// Datatype extensional equality declaration
function _module.Color#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Color.Orange
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Color#Equal(a, b), _module.Color.Orange_q(a) } 
    { _module.Color#Equal(a, b), _module.Color.Orange_q(b) } 
  _module.Color.Orange_q(a) && _module.Color.Orange_q(b)
     ==> _module.Color#Equal(a, b));

// Datatype extensional equality definition: #_module.Color.Pink
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Color#Equal(a, b), _module.Color.Pink_q(a) } 
    { _module.Color#Equal(a, b), _module.Color.Pink_q(b) } 
  _module.Color.Pink_q(a) && _module.Color.Pink_q(b) ==> _module.Color#Equal(a, b));

// Datatype extensional equality definition: #_module.Color.Teal
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Color#Equal(a, b), _module.Color.Teal_q(a) } 
    { _module.Color#Equal(a, b), _module.Color.Teal_q(b) } 
  _module.Color.Teal_q(a) && _module.Color.Teal_q(b) ==> _module.Color#Equal(a, b));

// Datatype extensionality axiom: _module.Color
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Color#Equal(a, b) } 
  _module.Color#Equal(a, b) <==> a == b);

const unique class._module.Color: ClassName;

procedure {:verboseName "Six (well-formedness)"} CheckWellFormed$$_module.Six(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Six (well-formedness)"} CheckWellFormed$$_module.Six(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for subset type Six
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of subset type constraint
        assume {:id "id112"} x#0 <= LitInt(6);
        assume false;
    }

    if (*)
    {
        // check well-formedness of subset type witness, and that it satisfies the constraint
        assume true;
        assert {:id "id113"} LitInt(0) <= LitInt(6);
        assume false;
    }
}



// $Is axiom for subset type _module.Six
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.Six()) } 
  $Is(x#0, Tclass._module.Six()) <==> x#0 <= LitInt(6));

// $IsAlloc axiom for subset type _module.Six
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.Six(), $h) } 
  $IsAlloc(x#0, Tclass._module.Six(), $h));

procedure {:verboseName "Even (well-formedness)"} CheckWellFormed$$_module.Even(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Even (well-formedness)"} CheckWellFormed$$_module.Even(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype Even
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        assert {:id "id114"} LitInt(2) != 0;
        assume {:id "id115"} Mod(x#0, LitInt(2)) == LitInt(0);
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id116"} LitInt(Mod(0, LitInt(2))) == LitInt(0);
        assume false;
    }
}



// $Is axiom for newtype _module.Even
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.Even()) } 
  $Is(x#0, Tclass._module.Even()) <==> Mod(x#0, LitInt(2)) == LitInt(0));

// $IsAlloc axiom for newtype _module.Even
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.Even(), $h) } 
  $IsAlloc(x#0, Tclass._module.Even(), $h));

const unique class._module.Even: ClassName;

procedure {:verboseName "PinkColor (well-formedness)"} CheckWellFormed$$_module.PinkColor(c#0: DatatypeType);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "PinkColor (well-formedness)"} CheckWellFormed$$_module.PinkColor(c#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for subset type PinkColor
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of subset type constraint
        assume $Is(c#0, Tclass._module.Color());
        assume {:id "id117"} !_module.Color#Equal(c#0, #_module.Color.Orange());
        assume false;
    }

    if (*)
    {
        // check well-formedness of subset type witness, and that it satisfies the constraint
        assume true;
        assert {:id "id118"} !_module.Color#Equal(#_module.Color.Pink(), #_module.Color.Orange());
        assume false;
    }
}



// $Is axiom for subset type _module.PinkColor
axiom (forall c#0: DatatypeType :: 
  { $Is(c#0, Tclass._module.PinkColor()) } 
  $Is(c#0, Tclass._module.PinkColor())
     <==> $Is(c#0, Tclass._module.Color())
       && !_module.Color#Equal(c#0, #_module.Color.Orange()));

// $IsAlloc axiom for subset type _module.PinkColor
axiom (forall c#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.PinkColor(), $h) } 
  $IsAlloc(c#0, Tclass._module.PinkColor(), $h)
     <==> $IsAlloc(c#0, Tclass._module.Color(), $h));

procedure {:verboseName "Eight (well-formedness)"} CheckWellFormed$$_module.Eight(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Eight (well-formedness)"} CheckWellFormed$$_module.Eight(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for subset type Eight
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of subset type constraint
        assume {:id "id119"} LitInt(8) <= x#0;
        assume false;
    }

    if (*)
    {
        // check well-formedness of subset type witness, and that it satisfies the constraint
        assume true;
        assert {:id "id120"} LitInt(8) <= LitInt(19);
        assume false;
    }
}



function Tclass._module.Eight() : Ty
uses {
// Tclass._module.Eight Tag
axiom Tag(Tclass._module.Eight()) == Tagclass._module.Eight
   && TagFamily(Tclass._module.Eight()) == tytagFamily$Eight;
}

const unique Tagclass._module.Eight: TyTag;

// Box/unbox axiom for Tclass._module.Eight
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Eight()) } 
  $IsBox(bx, Tclass._module.Eight())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.Eight()));

// $Is axiom for subset type _module.Eight
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.Eight()) } 
  $Is(x#0, Tclass._module.Eight()) <==> LitInt(8) <= x#0);

// $IsAlloc axiom for subset type _module.Eight
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.Eight(), $h) } 
  $IsAlloc(x#0, Tclass._module.Eight(), $h));

procedure {:verboseName "Odd (well-formedness)"} CheckWellFormed$$_module.Odd(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Odd (well-formedness)"} CheckWellFormed$$_module.Odd(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype Odd
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        assert {:id "id121"} LitInt(2) != 0;
        assume {:id "id122"} Mod(x#0, LitInt(2)) == LitInt(1);
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id123"} LitInt(Mod(-3, LitInt(2))) == LitInt(1);
        assume false;
    }
}



function Tclass._module.Odd() : Ty
uses {
// Tclass._module.Odd Tag
axiom Tag(Tclass._module.Odd()) == Tagclass._module.Odd
   && TagFamily(Tclass._module.Odd()) == tytagFamily$Odd;
}

const unique Tagclass._module.Odd: TyTag;

// Box/unbox axiom for Tclass._module.Odd
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Odd()) } 
  $IsBox(bx, Tclass._module.Odd())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.Odd()));

// $Is axiom for newtype _module.Odd
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.Odd()) } 
  $Is(x#0, Tclass._module.Odd()) <==> Mod(x#0, LitInt(2)) == LitInt(1));

// $IsAlloc axiom for newtype _module.Odd
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.Odd(), $h) } 
  $IsAlloc(x#0, Tclass._module.Odd(), $h));

const unique class._module.Odd: ClassName;

const unique class._module.MyClass?: ClassName;

// $Is axiom for class MyClass
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.MyClass?()) } 
  $Is($o, Tclass._module.MyClass?())
     <==> $o == null || dtype($o) == Tclass._module.MyClass?());

// $IsAlloc axiom for class MyClass
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.MyClass?(), $h) } 
  $IsAlloc($o, Tclass._module.MyClass?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.MyClass.f: Field
uses {
axiom FDim(_module.MyClass.f) == 0
   && FieldOfDecl(class._module.MyClass?, field$f) == _module.MyClass.f
   && !$IsGhostField(_module.MyClass.f);
}

// MyClass.f: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.MyClass.f)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.MyClass?()
     ==> $Is($Unbox(read($h, $o, _module.MyClass.f)): int, TInt));

// MyClass.f: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.MyClass.f)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.MyClass?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.MyClass.f)): int, TInt, $h));

function Tclass._module.MyClass() : Ty
uses {
// Tclass._module.MyClass Tag
axiom Tag(Tclass._module.MyClass()) == Tagclass._module.MyClass
   && TagFamily(Tclass._module.MyClass()) == tytagFamily$MyClass;
}

const unique Tagclass._module.MyClass: TyTag;

// Box/unbox axiom for Tclass._module.MyClass
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.MyClass()) } 
  $IsBox(bx, Tclass._module.MyClass())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.MyClass()));

// $Is axiom for non-null type _module.MyClass
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.MyClass()) } { $Is(c#0, Tclass._module.MyClass?()) } 
  $Is(c#0, Tclass._module.MyClass())
     <==> $Is(c#0, Tclass._module.MyClass?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.MyClass
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.MyClass(), $h) } 
    { $IsAlloc(c#0, Tclass._module.MyClass?(), $h) } 
  $IsAlloc(c#0, Tclass._module.MyClass(), $h)
     <==> $IsAlloc(c#0, Tclass._module.MyClass?(), $h));

procedure {:verboseName "ReallyJustANullableMyClass (well-formedness)"} CheckWellFormed$$_module.ReallyJustANullableMyClass(c#0: ref);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ReallyJustANullableMyClass (well-formedness)"} CheckWellFormed$$_module.ReallyJustANullableMyClass(c#0: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var newtype$check#0: ref;


    // AddWellformednessCheck for subset type ReallyJustANullableMyClass
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of subset type constraint
        assume $Is(c#0, Tclass._module.MyClass?());
        assume {:id "id124"} true;
        assume false;
    }

    if (*)
    {
        // check well-formedness of subset type witness, and that it satisfies the constraint
        newtype$check#0 := null;
        assume true;
        assert {:id "id125"} Lit(true);
        assume false;
    }
}



// $Is axiom for subset type _module.ReallyJustANullableMyClass
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.ReallyJustANullableMyClass()) } 
  $Is(c#0, Tclass._module.ReallyJustANullableMyClass())
     <==> $Is(c#0, Tclass._module.MyClass?()) && Lit(true));

// $IsAlloc axiom for subset type _module.ReallyJustANullableMyClass
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.ReallyJustANullableMyClass(), $h) } 
  $IsAlloc(c#0, Tclass._module.ReallyJustANullableMyClass(), $h)
     <==> $IsAlloc(c#0, Tclass._module.MyClass?(), $h));

// Constructor function declaration
function #_module.Dt.D0(Box) : DatatypeType;

const unique ##_module.Dt.D0: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: Box :: 
  { #_module.Dt.D0(a#0#0#0) } 
  DatatypeCtorId(#_module.Dt.D0(a#0#0#0)) == ##_module.Dt.D0);
}

function _module.Dt.D0_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Dt.D0_q(d) } 
  _module.Dt.D0_q(d) <==> DatatypeCtorId(d) == ##_module.Dt.D0);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Dt.D0_q(d) } 
  _module.Dt.D0_q(d) ==> (exists a#1#0#0: Box :: d == #_module.Dt.D0(a#1#0#0)));

function Tclass._module.Dt(Ty) : Ty;

const unique Tagclass._module.Dt: TyTag;

// Tclass._module.Dt Tag
axiom (forall _module.Dt$G: Ty :: 
  { Tclass._module.Dt(_module.Dt$G) } 
  Tag(Tclass._module.Dt(_module.Dt$G)) == Tagclass._module.Dt
     && TagFamily(Tclass._module.Dt(_module.Dt$G)) == tytagFamily$Dt);

function Tclass._module.Dt_0(Ty) : Ty;

// Tclass._module.Dt injectivity 0
axiom (forall _module.Dt$G: Ty :: 
  { Tclass._module.Dt(_module.Dt$G) } 
  Tclass._module.Dt_0(Tclass._module.Dt(_module.Dt$G)) == _module.Dt$G);

// Box/unbox axiom for Tclass._module.Dt
axiom (forall _module.Dt$G: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Dt(_module.Dt$G)) } 
  $IsBox(bx, Tclass._module.Dt(_module.Dt$G))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Dt(_module.Dt$G)));

// Constructor $Is
axiom (forall _module.Dt$G: Ty, a#2#0#0: Box :: 
  { $Is(#_module.Dt.D0(a#2#0#0), Tclass._module.Dt(_module.Dt$G)) } 
  $Is(#_module.Dt.D0(a#2#0#0), Tclass._module.Dt(_module.Dt$G))
     <==> $IsBox(a#2#0#0, _module.Dt$G));

// Constructor $IsAlloc
axiom (forall _module.Dt$G: Ty, a#2#0#0: Box, $h: Heap :: 
  { $IsAlloc(#_module.Dt.D0(a#2#0#0), Tclass._module.Dt(_module.Dt$G), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.Dt.D0(a#2#0#0), Tclass._module.Dt(_module.Dt$G), $h)
       <==> $IsAllocBox(a#2#0#0, _module.Dt$G, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.Dt$G: Ty, $h: Heap :: 
  { $IsAllocBox(_module.Dt._h0(d), _module.Dt$G, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Dt.D0_q(d)
       && $IsAlloc(d, Tclass._module.Dt(_module.Dt$G), $h)
     ==> $IsAllocBox(_module.Dt._h0(d), _module.Dt$G, $h));

// Constructor literal
axiom (forall a#3#0#0: Box :: 
  { #_module.Dt.D0(Lit(a#3#0#0)) } 
  #_module.Dt.D0(Lit(a#3#0#0)) == Lit(#_module.Dt.D0(a#3#0#0)));

function _module.Dt._h0(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#4#0#0: Box :: 
  { #_module.Dt.D0(a#4#0#0) } 
  _module.Dt._h0(#_module.Dt.D0(a#4#0#0)) == a#4#0#0);

// Inductive rank
axiom (forall a#5#0#0: Box :: 
  { #_module.Dt.D0(a#5#0#0) } 
  BoxRank(a#5#0#0) < DtRank(#_module.Dt.D0(a#5#0#0)));

// Constructor function declaration
function #_module.Dt.D1(Box) : DatatypeType;

const unique ##_module.Dt.D1: DtCtorId
uses {
// Constructor identifier
axiom (forall a#6#0#0: Box :: 
  { #_module.Dt.D1(a#6#0#0) } 
  DatatypeCtorId(#_module.Dt.D1(a#6#0#0)) == ##_module.Dt.D1);
}

function _module.Dt.D1_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Dt.D1_q(d) } 
  _module.Dt.D1_q(d) <==> DatatypeCtorId(d) == ##_module.Dt.D1);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Dt.D1_q(d) } 
  _module.Dt.D1_q(d) ==> (exists a#7#0#0: Box :: d == #_module.Dt.D1(a#7#0#0)));

// Constructor $Is
axiom (forall _module.Dt$G: Ty, a#8#0#0: Box :: 
  { $Is(#_module.Dt.D1(a#8#0#0), Tclass._module.Dt(_module.Dt$G)) } 
  $Is(#_module.Dt.D1(a#8#0#0), Tclass._module.Dt(_module.Dt$G))
     <==> $IsBox(a#8#0#0, _module.Dt$G));

// Constructor $IsAlloc
axiom (forall _module.Dt$G: Ty, a#8#0#0: Box, $h: Heap :: 
  { $IsAlloc(#_module.Dt.D1(a#8#0#0), Tclass._module.Dt(_module.Dt$G), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.Dt.D1(a#8#0#0), Tclass._module.Dt(_module.Dt$G), $h)
       <==> $IsAllocBox(a#8#0#0, _module.Dt$G, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.Dt$G: Ty, $h: Heap :: 
  { $IsAllocBox(_module.Dt._h1(d), _module.Dt$G, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Dt.D1_q(d)
       && $IsAlloc(d, Tclass._module.Dt(_module.Dt$G), $h)
     ==> $IsAllocBox(_module.Dt._h1(d), _module.Dt$G, $h));

// Constructor literal
axiom (forall a#9#0#0: Box :: 
  { #_module.Dt.D1(Lit(a#9#0#0)) } 
  #_module.Dt.D1(Lit(a#9#0#0)) == Lit(#_module.Dt.D1(a#9#0#0)));

function _module.Dt._h1(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#10#0#0: Box :: 
  { #_module.Dt.D1(a#10#0#0) } 
  _module.Dt._h1(#_module.Dt.D1(a#10#0#0)) == a#10#0#0);

// Inductive rank
axiom (forall a#11#0#0: Box :: 
  { #_module.Dt.D1(a#11#0#0) } 
  BoxRank(a#11#0#0) < DtRank(#_module.Dt.D1(a#11#0#0)));

// Depth-one case-split function
function $IsA#_module.Dt(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Dt(d) } 
  $IsA#_module.Dt(d) ==> _module.Dt.D0_q(d) || _module.Dt.D1_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.Dt$G: Ty, d: DatatypeType :: 
  { _module.Dt.D1_q(d), $Is(d, Tclass._module.Dt(_module.Dt$G)) } 
    { _module.Dt.D0_q(d), $Is(d, Tclass._module.Dt(_module.Dt$G)) } 
  $Is(d, Tclass._module.Dt(_module.Dt$G))
     ==> _module.Dt.D0_q(d) || _module.Dt.D1_q(d));

// Datatype extensional equality declaration
function _module.Dt#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Dt.D0
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Dt#Equal(a, b), _module.Dt.D0_q(a) } 
    { _module.Dt#Equal(a, b), _module.Dt.D0_q(b) } 
  _module.Dt.D0_q(a) && _module.Dt.D0_q(b)
     ==> (_module.Dt#Equal(a, b) <==> _module.Dt._h0(a) == _module.Dt._h0(b)));

// Datatype extensional equality definition: #_module.Dt.D1
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Dt#Equal(a, b), _module.Dt.D1_q(a) } 
    { _module.Dt#Equal(a, b), _module.Dt.D1_q(b) } 
  _module.Dt.D1_q(a) && _module.Dt.D1_q(b)
     ==> (_module.Dt#Equal(a, b) <==> _module.Dt._h1(a) == _module.Dt._h1(b)));

// Datatype extensionality axiom: _module.Dt
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Dt#Equal(a, b) } 
  _module.Dt#Equal(a, b) <==> a == b);

const unique class._module.Dt: ClassName;

// Constructor function declaration
function #_module.DtZ.DZ0(Box) : DatatypeType;

const unique ##_module.DtZ.DZ0: DtCtorId
uses {
// Constructor identifier
axiom (forall a#12#0#0: Box :: 
  { #_module.DtZ.DZ0(a#12#0#0) } 
  DatatypeCtorId(#_module.DtZ.DZ0(a#12#0#0)) == ##_module.DtZ.DZ0);
}

function _module.DtZ.DZ0_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.DtZ.DZ0_q(d) } 
  _module.DtZ.DZ0_q(d) <==> DatatypeCtorId(d) == ##_module.DtZ.DZ0);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.DtZ.DZ0_q(d) } 
  _module.DtZ.DZ0_q(d)
     ==> (exists a#13#0#0: Box :: d == #_module.DtZ.DZ0(a#13#0#0)));

// Constructor $Is
axiom (forall _module.DtZ$G: Ty, a#14#0#0: Box :: 
  { $Is(#_module.DtZ.DZ0(a#14#0#0), Tclass._module.DtZ(_module.DtZ$G)) } 
  $Is(#_module.DtZ.DZ0(a#14#0#0), Tclass._module.DtZ(_module.DtZ$G))
     <==> $IsBox(a#14#0#0, _module.DtZ$G));

// Constructor $IsAlloc
axiom (forall _module.DtZ$G: Ty, a#14#0#0: Box, $h: Heap :: 
  { $IsAlloc(#_module.DtZ.DZ0(a#14#0#0), Tclass._module.DtZ(_module.DtZ$G), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.DtZ.DZ0(a#14#0#0), Tclass._module.DtZ(_module.DtZ$G), $h)
       <==> $IsAllocBox(a#14#0#0, _module.DtZ$G, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.DtZ$G: Ty, $h: Heap :: 
  { $IsAllocBox(_module.DtZ._h2(d), _module.DtZ$G, $h) } 
  $IsGoodHeap($h)
       && 
      _module.DtZ.DZ0_q(d)
       && $IsAlloc(d, Tclass._module.DtZ(_module.DtZ$G), $h)
     ==> $IsAllocBox(_module.DtZ._h2(d), _module.DtZ$G, $h));

// Constructor literal
axiom (forall a#15#0#0: Box :: 
  { #_module.DtZ.DZ0(Lit(a#15#0#0)) } 
  #_module.DtZ.DZ0(Lit(a#15#0#0)) == Lit(#_module.DtZ.DZ0(a#15#0#0)));

function _module.DtZ._h2(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#16#0#0: Box :: 
  { #_module.DtZ.DZ0(a#16#0#0) } 
  _module.DtZ._h2(#_module.DtZ.DZ0(a#16#0#0)) == a#16#0#0);

// Inductive rank
axiom (forall a#17#0#0: Box :: 
  { #_module.DtZ.DZ0(a#17#0#0) } 
  BoxRank(a#17#0#0) < DtRank(#_module.DtZ.DZ0(a#17#0#0)));

// Depth-one case-split function
function $IsA#_module.DtZ(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.DtZ(d) } 
  $IsA#_module.DtZ(d) ==> _module.DtZ.DZ0_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.DtZ$G: Ty, d: DatatypeType :: 
  { _module.DtZ.DZ0_q(d), $Is(d, Tclass._module.DtZ(_module.DtZ$G)) } 
  $Is(d, Tclass._module.DtZ(_module.DtZ$G)) ==> _module.DtZ.DZ0_q(d));

// Datatype extensional equality declaration
function _module.DtZ#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.DtZ.DZ0
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.DtZ#Equal(a, b) } 
  _module.DtZ#Equal(a, b) <==> _module.DtZ._h2(a) == _module.DtZ._h2(b));

// Datatype extensionality axiom: _module.DtZ
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.DtZ#Equal(a, b) } 
  _module.DtZ#Equal(a, b) <==> a == b);

const unique class._module.DtZ: ClassName;

const unique class._module.Cl?: ClassName;

function Tclass._module.Cl?(Ty, Ty, Ty) : Ty;

const unique Tagclass._module.Cl?: TyTag;

// Tclass._module.Cl? Tag
axiom (forall _module.Cl$X: Ty, _module.Cl$Y: Ty, _module.Cl$Z: Ty :: 
  { Tclass._module.Cl?(_module.Cl$X, _module.Cl$Y, _module.Cl$Z) } 
  Tag(Tclass._module.Cl?(_module.Cl$X, _module.Cl$Y, _module.Cl$Z))
       == Tagclass._module.Cl?
     && TagFamily(Tclass._module.Cl?(_module.Cl$X, _module.Cl$Y, _module.Cl$Z))
       == tytagFamily$Cl);

function Tclass._module.Cl?_0(Ty) : Ty;

// Tclass._module.Cl? injectivity 0
axiom (forall _module.Cl$X: Ty, _module.Cl$Y: Ty, _module.Cl$Z: Ty :: 
  { Tclass._module.Cl?(_module.Cl$X, _module.Cl$Y, _module.Cl$Z) } 
  Tclass._module.Cl?_0(Tclass._module.Cl?(_module.Cl$X, _module.Cl$Y, _module.Cl$Z))
     == _module.Cl$X);

function Tclass._module.Cl?_1(Ty) : Ty;

// Tclass._module.Cl? injectivity 1
axiom (forall _module.Cl$X: Ty, _module.Cl$Y: Ty, _module.Cl$Z: Ty :: 
  { Tclass._module.Cl?(_module.Cl$X, _module.Cl$Y, _module.Cl$Z) } 
  Tclass._module.Cl?_1(Tclass._module.Cl?(_module.Cl$X, _module.Cl$Y, _module.Cl$Z))
     == _module.Cl$Y);

function Tclass._module.Cl?_2(Ty) : Ty;

// Tclass._module.Cl? injectivity 2
axiom (forall _module.Cl$X: Ty, _module.Cl$Y: Ty, _module.Cl$Z: Ty :: 
  { Tclass._module.Cl?(_module.Cl$X, _module.Cl$Y, _module.Cl$Z) } 
  Tclass._module.Cl?_2(Tclass._module.Cl?(_module.Cl$X, _module.Cl$Y, _module.Cl$Z))
     == _module.Cl$Z);

// Box/unbox axiom for Tclass._module.Cl?
axiom (forall _module.Cl$X: Ty, _module.Cl$Y: Ty, _module.Cl$Z: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Cl?(_module.Cl$X, _module.Cl$Y, _module.Cl$Z)) } 
  $IsBox(bx, Tclass._module.Cl?(_module.Cl$X, _module.Cl$Y, _module.Cl$Z))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.Cl?(_module.Cl$X, _module.Cl$Y, _module.Cl$Z)));

// $Is axiom for class Cl
axiom (forall _module.Cl$X: Ty, _module.Cl$Y: Ty, _module.Cl$Z: Ty, $o: ref :: 
  { $Is($o, Tclass._module.Cl?(_module.Cl$X, _module.Cl$Y, _module.Cl$Z)) } 
  $Is($o, Tclass._module.Cl?(_module.Cl$X, _module.Cl$Y, _module.Cl$Z))
     <==> $o == null
       || dtype($o) == Tclass._module.Cl?(_module.Cl$X, _module.Cl$Y, _module.Cl$Z));

// $IsAlloc axiom for class Cl
axiom (forall _module.Cl$X: Ty, _module.Cl$Y: Ty, _module.Cl$Z: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Cl?(_module.Cl$X, _module.Cl$Y, _module.Cl$Z), $h) } 
  $IsAlloc($o, Tclass._module.Cl?(_module.Cl$X, _module.Cl$Y, _module.Cl$Z), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.Cl.x: Field
uses {
axiom FDim(_module.Cl.x) == 0
   && FieldOfDecl(class._module.Cl?, field$x) == _module.Cl.x
   && !$IsGhostField(_module.Cl.x);
}

// Cl.x: Type axiom
axiom (forall _module.Cl$X: Ty, _module.Cl$Y: Ty, _module.Cl$Z: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, _module.Cl.x), Tclass._module.Cl?(_module.Cl$X, _module.Cl$Y, _module.Cl$Z) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Cl?(_module.Cl$X, _module.Cl$Y, _module.Cl$Z)
     ==> $IsBox(read($h, $o, _module.Cl.x), _module.Cl$X));

// Cl.x: Allocation axiom
axiom (forall _module.Cl$X: Ty, _module.Cl$Y: Ty, _module.Cl$Z: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, _module.Cl.x), Tclass._module.Cl?(_module.Cl$X, _module.Cl$Y, _module.Cl$Z) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Cl?(_module.Cl$X, _module.Cl$Y, _module.Cl$Z)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, _module.Cl.x), _module.Cl$X, $h));

const _module.Cl.y: Field
uses {
axiom FDim(_module.Cl.y) == 0
   && FieldOfDecl(class._module.Cl?, field$y) == _module.Cl.y
   && !$IsGhostField(_module.Cl.y);
}

// Cl.y: Type axiom
axiom (forall _module.Cl$X: Ty, _module.Cl$Y: Ty, _module.Cl$Z: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, _module.Cl.y), Tclass._module.Cl?(_module.Cl$X, _module.Cl$Y, _module.Cl$Z) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Cl?(_module.Cl$X, _module.Cl$Y, _module.Cl$Z)
     ==> $IsBox(read($h, $o, _module.Cl.y), _module.Cl$Y));

// Cl.y: Allocation axiom
axiom (forall _module.Cl$X: Ty, _module.Cl$Y: Ty, _module.Cl$Z: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, _module.Cl.y), Tclass._module.Cl?(_module.Cl$X, _module.Cl$Y, _module.Cl$Z) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Cl?(_module.Cl$X, _module.Cl$Y, _module.Cl$Z)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, _module.Cl.y), _module.Cl$Y, $h));

const _module.Cl.zed: Field
uses {
axiom FDim(_module.Cl.zed) == 0
   && FieldOfDecl(class._module.Cl?, field$zed) == _module.Cl.zed
   && !$IsGhostField(_module.Cl.zed);
}

// Cl.zed: Type axiom
axiom (forall _module.Cl$X: Ty, _module.Cl$Y: Ty, _module.Cl$Z: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, _module.Cl.zed), Tclass._module.Cl?(_module.Cl$X, _module.Cl$Y, _module.Cl$Z) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Cl?(_module.Cl$X, _module.Cl$Y, _module.Cl$Z)
     ==> $IsBox(read($h, $o, _module.Cl.zed), _module.Cl$Z));

// Cl.zed: Allocation axiom
axiom (forall _module.Cl$X: Ty, _module.Cl$Y: Ty, _module.Cl$Z: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, _module.Cl.zed), Tclass._module.Cl?(_module.Cl$X, _module.Cl$Y, _module.Cl$Z) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Cl?(_module.Cl$X, _module.Cl$Y, _module.Cl$Z)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, _module.Cl.zed), _module.Cl$Z, $h));

const _module.Cl.u: Field
uses {
axiom FDim(_module.Cl.u) == 0
   && FieldOfDecl(class._module.Cl?, field$u) == _module.Cl.u
   && !$IsGhostField(_module.Cl.u);
}

// Cl.u: Type axiom
axiom (forall _module.Cl$X: Ty, _module.Cl$Y: Ty, _module.Cl$Z: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Cl.u)): Set, Tclass._module.Cl?(_module.Cl$X, _module.Cl$Y, _module.Cl$Z) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Cl?(_module.Cl$X, _module.Cl$Y, _module.Cl$Z)
     ==> $Is($Unbox(read($h, $o, _module.Cl.u)): Set, TSet(_module.Cl$X)));

// Cl.u: Allocation axiom
axiom (forall _module.Cl$X: Ty, _module.Cl$Y: Ty, _module.Cl$Z: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Cl.u)): Set, Tclass._module.Cl?(_module.Cl$X, _module.Cl$Y, _module.Cl$Z) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Cl?(_module.Cl$X, _module.Cl$Y, _module.Cl$Z)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Cl.u)): Set, TSet(_module.Cl$X), $h));

procedure {:verboseName "Cl._ctor (well-formedness)"} CheckWellFormed$$_module.Cl.__ctor(_module.Cl$X: Ty, 
    _module.Cl$Y: Ty, 
    _module.Cl$Z: Ty, 
    zed#0: Box
       where $IsBox(zed#0, _module.Cl$Z) && $IsAllocBox(zed#0, _module.Cl$Z, $Heap))
   returns (this: ref);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Cl._ctor (call)"} Call$$_module.Cl.__ctor(_module.Cl$X: Ty, 
    _module.Cl$Y: Ty, 
    _module.Cl$Z: Ty, 
    zed#0: Box
       where $IsBox(zed#0, _module.Cl$Z) && $IsAllocBox(zed#0, _module.Cl$Z, $Heap))
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Cl(_module.Cl$X, _module.Cl$Y, _module.Cl$Z))
         && $IsAlloc(this, Tclass._module.Cl(_module.Cl$X, _module.Cl$Y, _module.Cl$Z), $Heap));
  modifies $Heap;
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Cl._ctor (correctness)"} Impl$$_module.Cl.__ctor(_module.Cl$X: Ty, 
    _module.Cl$Y: Ty, 
    _module.Cl$Z: Ty, 
    zed#0: Box
       where $IsBox(zed#0, _module.Cl$Z) && $IsAllocBox(zed#0, _module.Cl$Z, $Heap))
   returns (this: ref, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Cl._ctor (correctness)"} Impl$$_module.Cl.__ctor(_module.Cl$X: Ty, _module.Cl$Y: Ty, _module.Cl$Z: Ty, zed#0: Box)
   returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.x: Box;
  var this.y: Box;
  var this.zed: Box;
  var this.u: Set;
  var defass#this.zed: bool;

    // AddMethodImpl: _ctor, Impl$$_module.Cl.__ctor
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(86,25)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(87,14)
    assume true;
    assume true;
    this.zed := zed#0;
    defass#this.zed := true;
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(86,25)
    assert {:id "id127"} defass#this.zed;
    assume this != null
       && $Is(this, Tclass._module.Cl?(_module.Cl$X, _module.Cl$Y, _module.Cl$Z));
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume read($Heap, this, _module.Cl.x) == this.x;
    assume read($Heap, this, _module.Cl.y) == this.y;
    assume read($Heap, this, _module.Cl.zed) == this.zed;
    assume $Unbox(read($Heap, this, _module.Cl.u)): Set == this.u;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(86,25)
}



procedure {:verboseName "Cl.Print (well-formedness)"} CheckWellFormed$$_module.Cl.Print(_module.Cl$X: Ty, 
    _module.Cl$Y: Ty, 
    _module.Cl$Z: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Cl(_module.Cl$X, _module.Cl$Y, _module.Cl$Z))
         && $IsAlloc(this, Tclass._module.Cl(_module.Cl$X, _module.Cl$Y, _module.Cl$Z), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Cl.Print (call)"} Call$$_module.Cl.Print(_module.Cl$X: Ty, 
    _module.Cl$Y: Ty, 
    _module.Cl$Z: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Cl(_module.Cl$X, _module.Cl$Y, _module.Cl$Z))
         && $IsAlloc(this, Tclass._module.Cl(_module.Cl$X, _module.Cl$Y, _module.Cl$Z), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Cl.Print (correctness)"} Impl$$_module.Cl.Print(_module.Cl$X: Ty, 
    _module.Cl$Y: Ty, 
    _module.Cl$Z: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Cl(_module.Cl$X, _module.Cl$Y, _module.Cl$Z))
         && $IsAlloc(this, Tclass._module.Cl(_module.Cl$X, _module.Cl$Y, _module.Cl$Z), $Heap))
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



// $Is axiom for non-null type _module.Cl
axiom (forall _module.Cl$X: Ty, _module.Cl$Y: Ty, _module.Cl$Z: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._module.Cl(_module.Cl$X, _module.Cl$Y, _module.Cl$Z)) } 
    { $Is(c#0, Tclass._module.Cl?(_module.Cl$X, _module.Cl$Y, _module.Cl$Z)) } 
  $Is(c#0, Tclass._module.Cl(_module.Cl$X, _module.Cl$Y, _module.Cl$Z))
     <==> $Is(c#0, Tclass._module.Cl?(_module.Cl$X, _module.Cl$Y, _module.Cl$Z))
       && c#0 != null);

// $IsAlloc axiom for non-null type _module.Cl
axiom (forall _module.Cl$X: Ty, _module.Cl$Y: Ty, _module.Cl$Z: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Cl(_module.Cl$X, _module.Cl$Y, _module.Cl$Z), $h) } 
    { $IsAlloc(c#0, Tclass._module.Cl?(_module.Cl$X, _module.Cl$Y, _module.Cl$Z), $h) } 
  $IsAlloc(c#0, Tclass._module.Cl(_module.Cl$X, _module.Cl$Y, _module.Cl$Z), $h)
     <==> $IsAlloc(c#0, Tclass._module.Cl?(_module.Cl$X, _module.Cl$Y, _module.Cl$Z), $h));

const unique class._module.HTrait?: ClassName;

function Tclass._module.HTrait?() : Ty
uses {
// Tclass._module.HTrait? Tag
axiom Tag(Tclass._module.HTrait?()) == Tagclass._module.HTrait?
   && TagFamily(Tclass._module.HTrait?()) == tytagFamily$HTrait;
}

const unique Tagclass._module.HTrait?: TyTag;

// Box/unbox axiom for Tclass._module.HTrait?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.HTrait?()) } 
  $IsBox(bx, Tclass._module.HTrait?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.HTrait?()));

// $Is axiom for trait HTrait
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.HTrait?()) } 
  $Is($o, Tclass._module.HTrait?())
     <==> $o == null || implements$_module.HTrait(dtype($o)));

// $IsAlloc axiom for trait HTrait
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.HTrait?(), $h) } 
  $IsAlloc($o, Tclass._module.HTrait?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$_module.HTrait(ty: Ty) : bool;

const _module.HTrait.h1: Field
uses {
axiom FDim(_module.HTrait.h1) == 0
   && FieldOfDecl(class._module.HTrait?, field$h1) == _module.HTrait.h1
   && !$IsGhostField(_module.HTrait.h1);
}

// HTrait.h1: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.HTrait.h1)): DatatypeType } 
  $IsGoodHeap($h) && $o != null && $Is($o, Tclass._module.HTrait?())
     ==> $Is($Unbox(read($h, $o, _module.HTrait.h1)): DatatypeType, 
      Tclass._module.Stream(TInt)));

// HTrait.h1: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.HTrait.h1)): DatatypeType } 
  $IsGoodHeap($h)
       && 
      $o != null
       && $Is($o, Tclass._module.HTrait?())
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.HTrait.h1)): DatatypeType, 
      Tclass._module.Stream(TInt), 
      $h));

procedure {:verboseName "HTrait.Cadr (well-formedness)"} CheckWellFormed$$_module.HTrait.Cadr(_module.HTrait.Cadr$X: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module.HTrait.Cadr$X))
         && $IsAlloc(s#0, Tclass._module.Stream(_module.HTrait.Cadr$X), $Heap)
         && $IsA#_module.Stream(s#0))
   returns (cadr#0: Box
       where $IsBox(cadr#0, _module.HTrait.Cadr$X)
         && $IsAllocBox(cadr#0, _module.HTrait.Cadr$X, $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "HTrait.Cadr (call)"} Call$$_module.HTrait.Cadr(_module.HTrait.Cadr$X: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module.HTrait.Cadr$X))
         && $IsAlloc(s#0, Tclass._module.Stream(_module.HTrait.Cadr$X), $Heap)
         && $IsA#_module.Stream(s#0))
   returns (cadr#0: Box
       where $IsBox(cadr#0, _module.HTrait.Cadr$X)
         && $IsAllocBox(cadr#0, _module.HTrait.Cadr$X, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "HTrait.Cadr (correctness)"} Impl$$_module.HTrait.Cadr(_module.HTrait.Cadr$X: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module.HTrait.Cadr$X))
         && $IsAlloc(s#0, Tclass._module.Stream(_module.HTrait.Cadr$X), $Heap)
         && $IsA#_module.Stream(s#0))
   returns (defass#cadr#0: bool, 
    cadr#0: Box
       where defass#cadr#0
         ==> $IsBox(cadr#0, _module.HTrait.Cadr$X)
           && $IsAllocBox(cadr#0, _module.HTrait.Cadr$X, $Heap), 
    $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "HTrait.Cadr (correctness)"} Impl$$_module.HTrait.Cadr(_module.HTrait.Cadr$X: Ty, s#0: DatatypeType)
   returns (defass#cadr#0: bool, cadr#0: Box, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var _mcc#0#0_0: Box;
  var _mcc#1#0_0: DatatypeType;
  var _mcc#2#0_0_0: Box;
  var _mcc#3#0_0_0: DatatypeType;
  var x#0_0_0: Box;
  var let#0_0_0#0#0: Box;

    // AddMethodImpl: Cadr, Impl$$_module.HTrait.Cadr
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    assume true;
    havoc _mcc#0#0_0, _mcc#1#0_0;
    if (s#0 == #_module.Stream.Next(_mcc#0#0_0, _mcc#1#0_0))
    {
        assume $IsBox(_mcc#0#0_0, _module.HTrait.Cadr$X)
           && $IsAllocBox(_mcc#0#0_0, _module.HTrait.Cadr$X, $Heap);
        assume $Is(_mcc#1#0_0, Tclass._module.Stream(_module.HTrait.Cadr$X))
           && $IsAlloc(_mcc#1#0_0, Tclass._module.Stream(_module.HTrait.Cadr$X), $Heap);
        assume true;
        havoc _mcc#2#0_0_0, _mcc#3#0_0_0;
        if (_mcc#1#0_0 == #_module.Stream.Next(_mcc#2#0_0_0, _mcc#3#0_0_0))
        {
            assume $IsBox(_mcc#2#0_0_0, _module.HTrait.Cadr$X)
               && $IsAllocBox(_mcc#2#0_0_0, _module.HTrait.Cadr$X, $Heap);
            assume $Is(_mcc#3#0_0_0, Tclass._module.Stream(_module.HTrait.Cadr$X))
               && $IsAlloc(_mcc#3#0_0_0, Tclass._module.Stream(_module.HTrait.Cadr$X), $Heap);
            havoc x#0_0_0;
            assume $IsBox(x#0_0_0, _module.HTrait.Cadr$X)
               && $IsAllocBox(x#0_0_0, _module.HTrait.Cadr$X, $Heap);
            assume {:id "id128"} let#0_0_0#0#0 == _mcc#2#0_0_0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $IsBox(let#0_0_0#0#0, _module.HTrait.Cadr$X);
            assume {:id "id129"} x#0_0_0 == let#0_0_0#0#0;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(104,38)
            assume true;
            assume true;
            cadr#0 := x#0_0_0;
            defass#cadr#0 := true;
        }
        else
        {
            assume false;
        }
    }
    else
    {
        assume false;
    }

    assert {:id "id131"} defass#cadr#0;
}



function Tclass._module.HTrait() : Ty
uses {
// Tclass._module.HTrait Tag
axiom Tag(Tclass._module.HTrait()) == Tagclass._module.HTrait
   && TagFamily(Tclass._module.HTrait()) == tytagFamily$HTrait;
}

const unique Tagclass._module.HTrait: TyTag;

// Box/unbox axiom for Tclass._module.HTrait
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.HTrait()) } 
  $IsBox(bx, Tclass._module.HTrait())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.HTrait()));

// $Is axiom for non-null type _module.HTrait
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.HTrait()) } { $Is(c#0, Tclass._module.HTrait?()) } 
  $Is(c#0, Tclass._module.HTrait())
     <==> $Is(c#0, Tclass._module.HTrait?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.HTrait
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.HTrait(), $h) } 
    { $IsAlloc(c#0, Tclass._module.HTrait?(), $h) } 
  $IsAlloc(c#0, Tclass._module.HTrait(), $h)
     <==> $IsAlloc(c#0, Tclass._module.HTrait?(), $h));

const unique class._module.HClass?: ClassName;

function Tclass._module.HClass?() : Ty
uses {
// Tclass._module.HClass? Tag
axiom Tag(Tclass._module.HClass?()) == Tagclass._module.HClass?
   && TagFamily(Tclass._module.HClass?()) == tytagFamily$HClass;
axiom implements$_module.HTrait(Tclass._module.HClass?());
}

const unique Tagclass._module.HClass?: TyTag;

// Box/unbox axiom for Tclass._module.HClass?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.HClass?()) } 
  $IsBox(bx, Tclass._module.HClass?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.HClass?()));

// $Is axiom for class HClass
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.HClass?()) } 
  $Is($o, Tclass._module.HClass?())
     <==> $o == null || dtype($o) == Tclass._module.HClass?());

// $IsAlloc axiom for class HClass
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.HClass?(), $h) } 
  $IsAlloc($o, Tclass._module.HClass?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.HClass.k1: Field
uses {
axiom FDim(_module.HClass.k1) == 0
   && FieldOfDecl(class._module.HClass?, field$k1) == _module.HClass.k1
   && !$IsGhostField(_module.HClass.k1);
}

// HClass.k1: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.HClass.k1)): DatatypeType } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.HClass?()
     ==> $Is($Unbox(read($h, $o, _module.HClass.k1)): DatatypeType, 
      Tclass._module.Stream(TInt)));

// HClass.k1: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.HClass.k1)): DatatypeType } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.HClass?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.HClass.k1)): DatatypeType, 
      Tclass._module.Stream(TInt), 
      $h));

procedure {:verboseName "HClass.Make (well-formedness)"} CheckWellFormed$$_module.HClass.Make() returns (this: ref);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "HClass.Make (call)"} Call$$_module.HClass.Make()
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.HClass())
         && $IsAlloc(this, Tclass._module.HClass(), $Heap));
  modifies $Heap;
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "HClass.Make (correctness)"} Impl$$_module.HClass.Make() returns (this: ref, $_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// $Is axiom for non-null type _module.HClass
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.HClass()) } { $Is(c#0, Tclass._module.HClass?()) } 
  $Is(c#0, Tclass._module.HClass())
     <==> $Is(c#0, Tclass._module.HClass?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.HClass
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.HClass(), $h) } 
    { $IsAlloc(c#0, Tclass._module.HClass?(), $h) } 
  $IsAlloc(c#0, Tclass._module.HClass(), $h)
     <==> $IsAlloc(c#0, Tclass._module.HClass?(), $h));

const unique class._module.WClass?: ClassName;

function Tclass._module.WClass?(Ty) : Ty;

const unique Tagclass._module.WClass?: TyTag;

// Tclass._module.WClass? Tag
axiom (forall _module.WClass$W: Ty :: 
  { Tclass._module.WClass?(_module.WClass$W) } 
  Tag(Tclass._module.WClass?(_module.WClass$W)) == Tagclass._module.WClass?
     && TagFamily(Tclass._module.WClass?(_module.WClass$W)) == tytagFamily$WClass);

function Tclass._module.WClass?_0(Ty) : Ty;

// Tclass._module.WClass? injectivity 0
axiom (forall _module.WClass$W: Ty :: 
  { Tclass._module.WClass?(_module.WClass$W) } 
  Tclass._module.WClass?_0(Tclass._module.WClass?(_module.WClass$W))
     == _module.WClass$W);

// Box/unbox axiom for Tclass._module.WClass?
axiom (forall _module.WClass$W: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.WClass?(_module.WClass$W)) } 
  $IsBox(bx, Tclass._module.WClass?(_module.WClass$W))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.WClass?(_module.WClass$W)));

// $Is axiom for class WClass
axiom (forall _module.WClass$W: Ty, $o: ref :: 
  { $Is($o, Tclass._module.WClass?(_module.WClass$W)) } 
  $Is($o, Tclass._module.WClass?(_module.WClass$W))
     <==> $o == null || dtype($o) == Tclass._module.WClass?(_module.WClass$W));

// $IsAlloc axiom for class WClass
axiom (forall _module.WClass$W: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.WClass?(_module.WClass$W), $h) } 
  $IsAlloc($o, Tclass._module.WClass?(_module.WClass$W), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.WClass.k1: Field
uses {
axiom FDim(_module.WClass.k1) == 0
   && FieldOfDecl(class._module.WClass?, field$k1) == _module.WClass.k1
   && !$IsGhostField(_module.WClass.k1);
}

// WClass.k1: Type axiom
axiom (forall _module.WClass$W: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.WClass.k1)): DatatypeType, Tclass._module.WClass?(_module.WClass$W) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.WClass?(_module.WClass$W)
     ==> $Is($Unbox(read($h, $o, _module.WClass.k1)): DatatypeType, 
      Tclass._module.Stream(_module.WClass$W)));

// WClass.k1: Allocation axiom
axiom (forall _module.WClass$W: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.WClass.k1)): DatatypeType, Tclass._module.WClass?(_module.WClass$W) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.WClass?(_module.WClass$W)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.WClass.k1)): DatatypeType, 
      Tclass._module.Stream(_module.WClass$W), 
      $h));

procedure {:verboseName "WClass.Make (well-formedness)"} CheckWellFormed$$_module.WClass.Make(_module.WClass$W: Ty, 
    w#0: Box
       where $IsBox(w#0, _module.WClass$W) && $IsAllocBox(w#0, _module.WClass$W, $Heap))
   returns (this: ref);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "WClass.Make (call)"} Call$$_module.WClass.Make(_module.WClass$W: Ty, 
    w#0: Box
       where $IsBox(w#0, _module.WClass$W) && $IsAllocBox(w#0, _module.WClass$W, $Heap))
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.WClass(_module.WClass$W))
         && $IsAlloc(this, Tclass._module.WClass(_module.WClass$W), $Heap));
  modifies $Heap;
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "WClass.Make (correctness)"} Impl$$_module.WClass.Make(_module.WClass$W: Ty, 
    w#0: Box
       where $IsBox(w#0, _module.WClass$W) && $IsAllocBox(w#0, _module.WClass$W, $Heap))
   returns (this: ref, $_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "WClass.Make (correctness)"} Impl$$_module.WClass.Make(_module.WClass$W: Ty, w#0: Box) returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.k0: DatatypeType;
  var this.k1: DatatypeType;
  var defass#this.k0: bool;
  var defass#this.k1: bool;
  var ##w#0: Box;
  var ##w#1: Box;

    // AddMethodImpl: Make, Impl$$_module.WClass.Make
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(120,26)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(121,8)
    assume true;
    ##w#0 := w#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##w#0, _module.WClass$W, $Heap);
    assume _module.WClass.Generate#canCall(_module.WClass$W, w#0);
    assume _module.Stream.Next_q(_module.WClass.Generate(_module.WClass$W, $LS($LZ), w#0));
    assume _module.WClass.Generate#canCall(_module.WClass$W, w#0);
    this.k0 := _module.WClass.Generate(_module.WClass$W, $LS($LZ), w#0);
    defass#this.k0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(122,8)
    assume true;
    ##w#1 := w#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##w#1, _module.WClass$W, $Heap);
    assume _module.WClass.Generate#canCall(_module.WClass$W, w#0);
    assume _module.Stream.Next_q(_module.WClass.Generate(_module.WClass$W, $LS($LZ), w#0));
    assume _module.WClass.Generate#canCall(_module.WClass$W, w#0);
    this.k1 := _module.WClass.Generate(_module.WClass$W, $LS($LZ), w#0);
    defass#this.k1 := true;
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(120,26)
    assert {:id "id138"} defass#this.k0;
    assert {:id "id139"} defass#this.k1;
    assume this != null && $Is(this, Tclass._module.WClass?(_module.WClass$W));
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume _module.WClass.k0(_module.WClass$W, this) == this.k0;
    assume $Unbox(read($Heap, this, _module.WClass.k1)): DatatypeType == this.k1;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeParams.dfy(120,26)
}



// function declaration for _module.WClass.Generate
function _module.WClass.Generate(_module.WClass$W: Ty, $ly: LayerType, w#0: Box) : DatatypeType
uses {
// consequence axiom for _module.WClass.Generate
axiom 1 <= $FunctionContextHeight
   ==> (forall _module.WClass$W: Ty, $ly: LayerType, w#0: Box :: 
    { _module.WClass.Generate(_module.WClass$W, $ly, w#0) } 
    _module.WClass.Generate#canCall(_module.WClass$W, w#0)
         || (1 < $FunctionContextHeight && $IsBox(w#0, _module.WClass$W))
       ==> $Is(_module.WClass.Generate(_module.WClass$W, $ly, w#0), 
        Tclass._module.Stream(_module.WClass$W)));
// alloc consequence axiom for _module.WClass.Generate
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, _module.WClass$W: Ty, $ly: LayerType, w#0: Box :: 
    { $IsAlloc(_module.WClass.Generate(_module.WClass$W, $ly, w#0), 
        Tclass._module.Stream(_module.WClass$W), 
        $Heap) } 
    (_module.WClass.Generate#canCall(_module.WClass$W, w#0)
           || (1 < $FunctionContextHeight
             && 
            $IsBox(w#0, _module.WClass$W)
             && $IsAllocBox(w#0, _module.WClass$W, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.WClass.Generate(_module.WClass$W, $ly, w#0), 
        Tclass._module.Stream(_module.WClass$W), 
        $Heap));
// definition axiom for _module.WClass.Generate (revealed)
axiom {:id "id140"} 1 <= $FunctionContextHeight
   ==> (forall _module.WClass$W: Ty, $ly: LayerType, w#0: Box :: 
    { _module.WClass.Generate(_module.WClass$W, $LS($ly), w#0) } 
    _module.WClass.Generate#canCall(_module.WClass$W, w#0)
         || (1 < $FunctionContextHeight && $IsBox(w#0, _module.WClass$W))
       ==> _module.WClass.Generate#canCall(_module.WClass$W, w#0)
         && _module.WClass.Generate(_module.WClass$W, $LS($ly), w#0)
           == #_module.Stream.Next(w#0, _module.WClass.Generate(_module.WClass$W, $ly, w#0)));
}

function _module.WClass.Generate#canCall(_module.WClass$W: Ty, w#0: Box) : bool;

// layer synonym axiom
axiom (forall _module.WClass$W: Ty, $ly: LayerType, w#0: Box :: 
  { _module.WClass.Generate(_module.WClass$W, $LS($ly), w#0) } 
  _module.WClass.Generate(_module.WClass$W, $LS($ly), w#0)
     == _module.WClass.Generate(_module.WClass$W, $ly, w#0));

// fuel synonym axiom
axiom (forall _module.WClass$W: Ty, $ly: LayerType, w#0: Box :: 
  { _module.WClass.Generate(_module.WClass$W, AsFuelBottom($ly), w#0) } 
  _module.WClass.Generate(_module.WClass$W, $ly, w#0)
     == _module.WClass.Generate(_module.WClass$W, $LZ, w#0));

function _module.WClass.Generate#requires(Ty, LayerType, Box) : bool;

// #requires axiom for _module.WClass.Generate
axiom (forall _module.WClass$W: Ty, $ly: LayerType, w#0: Box :: 
  { _module.WClass.Generate#requires(_module.WClass$W, $ly, w#0) } 
  $IsBox(w#0, _module.WClass$W)
     ==> _module.WClass.Generate#requires(_module.WClass$W, $ly, w#0) == true);

procedure {:verboseName "WClass.Generate (well-formedness)"} CheckWellformed$$_module.WClass.Generate(_module.WClass$W: Ty, w#0: Box where $IsBox(w#0, _module.WClass$W));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// $Is axiom for non-null type _module.WClass
axiom (forall _module.WClass$W: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._module.WClass(_module.WClass$W)) } 
    { $Is(c#0, Tclass._module.WClass?(_module.WClass$W)) } 
  $Is(c#0, Tclass._module.WClass(_module.WClass$W))
     <==> $Is(c#0, Tclass._module.WClass?(_module.WClass$W)) && c#0 != null);

// $IsAlloc axiom for non-null type _module.WClass
axiom (forall _module.WClass$W: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.WClass(_module.WClass$W), $h) } 
    { $IsAlloc(c#0, Tclass._module.WClass?(_module.WClass$W), $h) } 
  $IsAlloc(c#0, Tclass._module.WClass(_module.WClass$W), $h)
     <==> $IsAlloc(c#0, Tclass._module.WClass?(_module.WClass$W), $h));

// Constructor function declaration
function #_module.IList.ICons(Box, DatatypeType) : DatatypeType;

const unique ##_module.IList.ICons: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: Box, a#0#1#0: DatatypeType :: 
  { #_module.IList.ICons(a#0#0#0, a#0#1#0) } 
  DatatypeCtorId(#_module.IList.ICons(a#0#0#0, a#0#1#0)) == ##_module.IList.ICons);
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
     ==> (exists a#1#0#0: Box, a#1#1#0: DatatypeType :: 
      d == #_module.IList.ICons(a#1#0#0, a#1#1#0)));

// Constructor $Is
axiom (forall _module.IList$G: Ty, a#2#0#0: Box, a#2#1#0: DatatypeType :: 
  { $Is(#_module.IList.ICons(a#2#0#0, a#2#1#0), Tclass._module.IList(_module.IList$G)) } 
  $Is(#_module.IList.ICons(a#2#0#0, a#2#1#0), Tclass._module.IList(_module.IList$G))
     <==> $IsBox(a#2#0#0, _module.IList$G)
       && $Is(a#2#1#0, Tclass._module.IList(_module.IList$G)));

// Constructor $IsAlloc
axiom (forall _module.IList$G: Ty, a#2#0#0: Box, a#2#1#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#_module.IList.ICons(a#2#0#0, a#2#1#0), 
      Tclass._module.IList(_module.IList$G), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.IList.ICons(a#2#0#0, a#2#1#0), 
        Tclass._module.IList(_module.IList$G), 
        $h)
       <==> $IsAllocBox(a#2#0#0, _module.IList$G, $h)
         && $IsAlloc(a#2#1#0, Tclass._module.IList(_module.IList$G), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.IList$G: Ty, $h: Heap :: 
  { $IsAllocBox(_module.IList._h5(d), _module.IList$G, $h) } 
  $IsGoodHeap($h)
       && 
      _module.IList.ICons_q(d)
       && $IsAlloc(d, Tclass._module.IList(_module.IList$G), $h)
     ==> $IsAllocBox(_module.IList._h5(d), _module.IList$G, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.IList$G: Ty, $h: Heap :: 
  { $IsAlloc(_module.IList._h6(d), Tclass._module.IList(_module.IList$G), $h) } 
  $IsGoodHeap($h)
       && 
      _module.IList.ICons_q(d)
       && $IsAlloc(d, Tclass._module.IList(_module.IList$G), $h)
     ==> $IsAlloc(_module.IList._h6(d), Tclass._module.IList(_module.IList$G), $h));

function _module.IList._h5(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#3#0#0: Box, a#3#1#0: DatatypeType :: 
  { #_module.IList.ICons(a#3#0#0, a#3#1#0) } 
  _module.IList._h5(#_module.IList.ICons(a#3#0#0, a#3#1#0)) == a#3#0#0);

function _module.IList._h6(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#4#0#0: Box, a#4#1#0: DatatypeType :: 
  { #_module.IList.ICons(a#4#0#0, a#4#1#0) } 
  _module.IList._h6(#_module.IList.ICons(a#4#0#0, a#4#1#0)) == a#4#1#0);

// Constructor function declaration
function #_module.IList.INil() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.IList.INil()) == ##_module.IList.INil;
}

const unique ##_module.IList.INil: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.IList.INil()) == ##_module.IList.INil;
}

function _module.IList.INil_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.IList.INil_q(d) } 
  _module.IList.INil_q(d) <==> DatatypeCtorId(d) == ##_module.IList.INil);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.IList.INil_q(d) } 
  _module.IList.INil_q(d) ==> d == #_module.IList.INil());

// Constructor $Is
axiom (forall _module.IList$G: Ty :: 
  { $Is(#_module.IList.INil(), Tclass._module.IList(_module.IList$G)) } 
  $Is(#_module.IList.INil(), Tclass._module.IList(_module.IList$G)));

// Constructor $IsAlloc
axiom (forall _module.IList$G: Ty, $h: Heap :: 
  { $IsAlloc(#_module.IList.INil(), Tclass._module.IList(_module.IList$G), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#_module.IList.INil(), Tclass._module.IList(_module.IList$G), $h));

// Depth-one case-split function
function $IsA#_module.IList(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.IList(d) } 
  $IsA#_module.IList(d) ==> _module.IList.ICons_q(d) || _module.IList.INil_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.IList$G: Ty, d: DatatypeType :: 
  { _module.IList.INil_q(d), $Is(d, Tclass._module.IList(_module.IList$G)) } 
    { _module.IList.ICons_q(d), $Is(d, Tclass._module.IList(_module.IList$G)) } 
  $Is(d, Tclass._module.IList(_module.IList$G))
     ==> _module.IList.ICons_q(d) || _module.IList.INil_q(d));

function $Eq#_module.IList(Ty, Ty, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall _module.IList$G#l: Ty, 
    _module.IList$G#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.IList(_module.IList$G#l, _module.IList$G#r, $LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.IList(_module.IList$G#l))
       && $Is(d1, Tclass._module.IList(_module.IList$G#r))
     ==> ($Eq#_module.IList(_module.IList$G#l, _module.IList$G#r, $LS(ly), d0, d1)
       <==> (
          _module.IList.ICons_q(d0)
           && _module.IList.ICons_q(d1)
           && (_module.IList.ICons_q(d0) && _module.IList.ICons_q(d1)
             ==> _module.IList._h5(d0) == _module.IList._h5(d1)
               && $Eq#_module.IList(_module.IList$G#l, 
                _module.IList$G#r, 
                ly, 
                _module.IList._h6(d0), 
                _module.IList._h6(d1))))
         || (_module.IList.INil_q(d0) && _module.IList.INil_q(d1))));

// Unbump layer co-equality axiom
axiom (forall _module.IList$G#l: Ty, 
    _module.IList$G#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.IList(_module.IList$G#l, _module.IList$G#r, $LS(ly), d0, d1) } 
  $Eq#_module.IList(_module.IList$G#l, _module.IList$G#r, $LS(ly), d0, d1)
     <==> $Eq#_module.IList(_module.IList$G#l, _module.IList$G#r, ly, d0, d1));

// Equality for codatatypes
axiom (forall _module.IList$G#l: Ty, 
    _module.IList$G#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.IList(_module.IList$G#l, _module.IList$G#r, $LS(ly), d0, d1) } 
  $Eq#_module.IList(_module.IList$G#l, _module.IList$G#r, $LS(ly), d0, d1)
     <==> d0 == d1);

function $PrefixEq#_module.IList(Ty, Ty, Box, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall _module.IList$G#l: Ty, 
    _module.IList$G#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.IList(_module.IList$G#l, _module.IList$G#r, k, $LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.IList(_module.IList$G#l))
       && $Is(d1, Tclass._module.IList(_module.IList$G#r))
     ==> ($PrefixEq#_module.IList(_module.IList$G#l, _module.IList$G#r, k, $LS(ly), d0, d1)
       <==> (0 < ORD#Offset(k)
           ==> (
              _module.IList.ICons_q(d0)
               && _module.IList.ICons_q(d1)
               && (_module.IList.ICons_q(d0) && _module.IList.ICons_q(d1)
                 ==> _module.IList._h5(d0) == _module.IList._h5(d1)
                   && $PrefixEq#_module.IList(_module.IList$G#l, 
                    _module.IList$G#r, 
                    ORD#Minus(k, ORD#FromNat(1)), 
                    ly, 
                    _module.IList._h6(d0), 
                    _module.IList._h6(d1))))
             || (_module.IList.INil_q(d0) && _module.IList.INil_q(d1)))
         && (k != ORD#FromNat(0) && ORD#IsLimit(k)
           ==> $Eq#_module.IList(_module.IList$G#l, _module.IList$G#r, ly, d0, d1))));

// Unbump layer co-equality axiom
axiom (forall _module.IList$G#l: Ty, 
    _module.IList$G#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.IList(_module.IList$G#l, _module.IList$G#r, k, $LS(ly), d0, d1) } 
  k != ORD#FromNat(0)
     ==> ($PrefixEq#_module.IList(_module.IList$G#l, _module.IList$G#r, k, $LS(ly), d0, d1)
       <==> $PrefixEq#_module.IList(_module.IList$G#l, _module.IList$G#r, k, ly, d0, d1)));

// Coequality and prefix equality connection
axiom (forall _module.IList$G#l: Ty, 
    _module.IList$G#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.IList(_module.IList$G#l, _module.IList$G#r, $LS(ly), d0, d1) } 
  $Eq#_module.IList(_module.IList$G#l, _module.IList$G#r, $LS(ly), d0, d1)
     <==> (forall k: Box :: 
      { $PrefixEq#_module.IList(_module.IList$G#l, _module.IList$G#r, k, $LS(ly), d0, d1) } 
      $PrefixEq#_module.IList(_module.IList$G#l, _module.IList$G#r, k, $LS(ly), d0, d1)));

// Coequality and prefix equality connection
axiom (forall _module.IList$G#l: Ty, 
    _module.IList$G#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.IList(_module.IList$G#l, _module.IList$G#r, $LS(ly), d0, d1) } 
  (forall k: int :: 
      { $PrefixEq#_module.IList(_module.IList$G#l, _module.IList$G#r, ORD#FromNat(k), $LS(ly), d0, d1) } 
      0 <= k
         ==> $PrefixEq#_module.IList(_module.IList$G#l, _module.IList$G#r, ORD#FromNat(k), $LS(ly), d0, d1))
     ==> $Eq#_module.IList(_module.IList$G#l, _module.IList$G#r, $LS(ly), d0, d1));

// Prefix equality consequence
axiom (forall _module.IList$G#l: Ty, 
    _module.IList$G#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType, 
    m: Box :: 
  { $PrefixEq#_module.IList(_module.IList$G#l, _module.IList$G#r, k, $LS(ly), d0, d1), $PrefixEq#_module.IList(_module.IList$G#l, _module.IList$G#r, m, $LS(ly), d0, d1) } 
  ORD#Less(k, m)
       && $PrefixEq#_module.IList(_module.IList$G#l, _module.IList$G#r, m, $LS(ly), d0, d1)
     ==> $PrefixEq#_module.IList(_module.IList$G#l, _module.IList$G#r, k, $LS(ly), d0, d1));

// Prefix equality shortcut
axiom (forall _module.IList$G#l: Ty, 
    _module.IList$G#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.IList(_module.IList$G#l, _module.IList$G#r, k, $LS(ly), d0, d1) } 
  d0 == d1
     ==> $PrefixEq#_module.IList(_module.IList$G#l, _module.IList$G#r, k, $LS(ly), d0, d1));

const unique class._module.IList: ClassName;

// Constructor function declaration
function #_module.Stream.Next(Box, DatatypeType) : DatatypeType;

const unique ##_module.Stream.Next: DtCtorId
uses {
// Constructor identifier
axiom (forall a#8#0#0: Box, a#8#1#0: DatatypeType :: 
  { #_module.Stream.Next(a#8#0#0, a#8#1#0) } 
  DatatypeCtorId(#_module.Stream.Next(a#8#0#0, a#8#1#0)) == ##_module.Stream.Next);
}

function _module.Stream.Next_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Stream.Next_q(d) } 
  _module.Stream.Next_q(d) <==> DatatypeCtorId(d) == ##_module.Stream.Next);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Stream.Next_q(d) } 
  _module.Stream.Next_q(d)
     ==> (exists a#9#0#0: Box, a#9#1#0: DatatypeType :: 
      d == #_module.Stream.Next(a#9#0#0, a#9#1#0)));

// Constructor $Is
axiom (forall _module.Stream$G: Ty, a#10#0#0: Box, a#10#1#0: DatatypeType :: 
  { $Is(#_module.Stream.Next(a#10#0#0, a#10#1#0), 
      Tclass._module.Stream(_module.Stream$G)) } 
  $Is(#_module.Stream.Next(a#10#0#0, a#10#1#0), 
      Tclass._module.Stream(_module.Stream$G))
     <==> $IsBox(a#10#0#0, _module.Stream$G)
       && $Is(a#10#1#0, Tclass._module.Stream(_module.Stream$G)));

// Constructor $IsAlloc
axiom (forall _module.Stream$G: Ty, a#10#0#0: Box, a#10#1#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#_module.Stream.Next(a#10#0#0, a#10#1#0), 
      Tclass._module.Stream(_module.Stream$G), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.Stream.Next(a#10#0#0, a#10#1#0), 
        Tclass._module.Stream(_module.Stream$G), 
        $h)
       <==> $IsAllocBox(a#10#0#0, _module.Stream$G, $h)
         && $IsAlloc(a#10#1#0, Tclass._module.Stream(_module.Stream$G), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.Stream$G: Ty, $h: Heap :: 
  { $IsAllocBox(_module.Stream._h7(d), _module.Stream$G, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Stream.Next_q(d)
       && $IsAlloc(d, Tclass._module.Stream(_module.Stream$G), $h)
     ==> $IsAllocBox(_module.Stream._h7(d), _module.Stream$G, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.Stream$G: Ty, $h: Heap :: 
  { $IsAlloc(_module.Stream._h8(d), Tclass._module.Stream(_module.Stream$G), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Stream.Next_q(d)
       && $IsAlloc(d, Tclass._module.Stream(_module.Stream$G), $h)
     ==> $IsAlloc(_module.Stream._h8(d), Tclass._module.Stream(_module.Stream$G), $h));

function _module.Stream._h7(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#11#0#0: Box, a#11#1#0: DatatypeType :: 
  { #_module.Stream.Next(a#11#0#0, a#11#1#0) } 
  _module.Stream._h7(#_module.Stream.Next(a#11#0#0, a#11#1#0)) == a#11#0#0);

function _module.Stream._h8(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#12#0#0: Box, a#12#1#0: DatatypeType :: 
  { #_module.Stream.Next(a#12#0#0, a#12#1#0) } 
  _module.Stream._h8(#_module.Stream.Next(a#12#0#0, a#12#1#0)) == a#12#1#0);

// Depth-one case-split function
function $IsA#_module.Stream(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Stream(d) } 
  $IsA#_module.Stream(d) ==> _module.Stream.Next_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.Stream$G: Ty, d: DatatypeType :: 
  { _module.Stream.Next_q(d), $Is(d, Tclass._module.Stream(_module.Stream$G)) } 
  $Is(d, Tclass._module.Stream(_module.Stream$G)) ==> _module.Stream.Next_q(d));

function $Eq#_module.Stream(Ty, Ty, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall _module.Stream$G#l: Ty, 
    _module.Stream$G#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, $LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.Stream(_module.Stream$G#l))
       && $Is(d1, Tclass._module.Stream(_module.Stream$G#r))
     ==> ($Eq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, $LS(ly), d0, d1)
       <==> _module.Stream.Next_q(d0)
         && _module.Stream.Next_q(d1)
         && (_module.Stream.Next_q(d0) && _module.Stream.Next_q(d1)
           ==> _module.Stream._h7(d0) == _module.Stream._h7(d1)
             && $Eq#_module.Stream(_module.Stream$G#l, 
              _module.Stream$G#r, 
              ly, 
              _module.Stream._h8(d0), 
              _module.Stream._h8(d1)))));

// Unbump layer co-equality axiom
axiom (forall _module.Stream$G#l: Ty, 
    _module.Stream$G#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, $LS(ly), d0, d1) } 
  $Eq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, $LS(ly), d0, d1)
     <==> $Eq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, ly, d0, d1));

// Equality for codatatypes
axiom (forall _module.Stream$G#l: Ty, 
    _module.Stream$G#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, $LS(ly), d0, d1) } 
  $Eq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, $LS(ly), d0, d1)
     <==> d0 == d1);

function $PrefixEq#_module.Stream(Ty, Ty, Box, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall _module.Stream$G#l: Ty, 
    _module.Stream$G#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, k, $LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.Stream(_module.Stream$G#l))
       && $Is(d1, Tclass._module.Stream(_module.Stream$G#r))
     ==> ($PrefixEq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, k, $LS(ly), d0, d1)
       <==> (0 < ORD#Offset(k)
           ==> _module.Stream.Next_q(d0)
             && _module.Stream.Next_q(d1)
             && (_module.Stream.Next_q(d0) && _module.Stream.Next_q(d1)
               ==> _module.Stream._h7(d0) == _module.Stream._h7(d1)
                 && $PrefixEq#_module.Stream(_module.Stream$G#l, 
                  _module.Stream$G#r, 
                  ORD#Minus(k, ORD#FromNat(1)), 
                  ly, 
                  _module.Stream._h8(d0), 
                  _module.Stream._h8(d1))))
         && (k != ORD#FromNat(0) && ORD#IsLimit(k)
           ==> $Eq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, ly, d0, d1))));

// Unbump layer co-equality axiom
axiom (forall _module.Stream$G#l: Ty, 
    _module.Stream$G#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, k, $LS(ly), d0, d1) } 
  k != ORD#FromNat(0)
     ==> ($PrefixEq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, k, $LS(ly), d0, d1)
       <==> $PrefixEq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, k, ly, d0, d1)));

// Coequality and prefix equality connection
axiom (forall _module.Stream$G#l: Ty, 
    _module.Stream$G#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, $LS(ly), d0, d1) } 
  $Eq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, $LS(ly), d0, d1)
     <==> (forall k: Box :: 
      { $PrefixEq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, k, $LS(ly), d0, d1) } 
      $PrefixEq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, k, $LS(ly), d0, d1)));

// Coequality and prefix equality connection
axiom (forall _module.Stream$G#l: Ty, 
    _module.Stream$G#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, $LS(ly), d0, d1) } 
  (forall k: int :: 
      { $PrefixEq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, ORD#FromNat(k), $LS(ly), d0, d1) } 
      0 <= k
         ==> $PrefixEq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, ORD#FromNat(k), $LS(ly), d0, d1))
     ==> $Eq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, $LS(ly), d0, d1));

// Prefix equality consequence
axiom (forall _module.Stream$G#l: Ty, 
    _module.Stream$G#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType, 
    m: Box :: 
  { $PrefixEq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, k, $LS(ly), d0, d1), $PrefixEq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, m, $LS(ly), d0, d1) } 
  ORD#Less(k, m)
       && $PrefixEq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, m, $LS(ly), d0, d1)
     ==> $PrefixEq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, k, $LS(ly), d0, d1));

// Prefix equality shortcut
axiom (forall _module.Stream$G#l: Ty, 
    _module.Stream$G#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, k, $LS(ly), d0, d1) } 
  d0 == d1
     ==> $PrefixEq#_module.Stream(_module.Stream$G#l, _module.Stream$G#r, k, $LS(ly), d0, d1));

const unique class._module.Stream: ClassName;

procedure {:verboseName "EmptyList (well-formedness)"} CheckWellFormed$$_module.EmptyList(_module.EmptyList$G: Ty, xs#0: DatatypeType);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "EmptyList (well-formedness)"} CheckWellFormed$$_module.EmptyList(_module.EmptyList$G: Ty, xs#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for subset type EmptyList
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of subset type constraint
        assume $Is(xs#0, Tclass._module.IList(_module.EmptyList$G));
        assume {:id "id142"} !_module.IList.ICons_q(xs#0);
        assume false;
    }

    if (*)
    {
        // check well-formedness of subset type witness, and that it satisfies the constraint
        assume true;
        assert {:id "id143"} !Lit(_module.IList.ICons_q(Lit(#_module.IList.INil())));
        assume false;
    }
}



// $Is axiom for subset type _module.EmptyList
axiom (forall _module.EmptyList$G: Ty, xs#0: DatatypeType :: 
  { $Is(xs#0, Tclass._module.EmptyList(_module.EmptyList$G)) } 
  $Is(xs#0, Tclass._module.EmptyList(_module.EmptyList$G))
     <==> $Is(xs#0, Tclass._module.IList(_module.EmptyList$G))
       && !_module.IList.ICons_q(xs#0));

// $IsAlloc axiom for subset type _module.EmptyList
axiom (forall _module.EmptyList$G: Ty, xs#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(xs#0, Tclass._module.EmptyList(_module.EmptyList$G), $h) } 
  $IsAlloc(xs#0, Tclass._module.EmptyList(_module.EmptyList$G), $h)
     <==> $IsAlloc(xs#0, Tclass._module.IList(_module.EmptyList$G), $h));

procedure {:verboseName "AlwaysNothing (well-formedness)"} CheckWellFormed$$_module.AlwaysNothing(xs#0: DatatypeType);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AlwaysNothing (well-formedness)"} CheckWellFormed$$_module.AlwaysNothing(xs#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##g#0: DatatypeType;


    // AddWellformednessCheck for subset type AlwaysNothing
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of subset type constraint
        assume $Is(xs#0, Tclass._module.IList(Tclass._System.Tuple0()));
        assume {:id "id144"} !$Eq#_module.IList(Tclass._System.Tuple0(), 
          Tclass._System.Tuple0(), 
          $LS($LS($LZ)), 
          xs#0, 
          #_module.IList.INil());
        assume false;
    }

    if (*)
    {
        // check well-formedness of subset type witness, and that it satisfies the constraint
        ##g#0 := Lit(#_System._tuple#0._#Make0());
        // assume allocatedness for argument to function
        assume $IsAlloc(##g#0, Tclass._System.Tuple0(), $Heap);
        assume _module.__default.FauxEvva#canCall(Tclass._System.Tuple0(), $Box(Lit(#_System._tuple#0._#Make0())));
        assume $IsA#_module.IList(Lit(_module.__default.FauxEvva(Tclass._System.Tuple0(), $LS($LZ), $Box(Lit(#_System._tuple#0._#Make0())))))
           && _module.__default.FauxEvva#canCall(Tclass._System.Tuple0(), $Box(Lit(#_System._tuple#0._#Make0())));
        assert {:id "id145"} {:subsumption 0} !$Eq#_module.IList(Tclass._System.Tuple0(), 
          Tclass._System.Tuple0(), 
          $LS($LS($LZ)), 
          _module.__default.FauxEvva(Tclass._System.Tuple0(), $LS($LS($LZ)), $Box(Lit(#_System._tuple#0._#Make0()))), 
          #_module.IList.INil());
        assume false;
    }
}



// $Is axiom for subset type _module.AlwaysNothing
axiom (forall xs#0: DatatypeType :: 
  { $Is(xs#0, Tclass._module.AlwaysNothing()) } 
  $Is(xs#0, Tclass._module.AlwaysNothing())
     <==> $Is(xs#0, Tclass._module.IList(Tclass._System.Tuple0()))
       && !$Eq#_module.IList(Tclass._System.Tuple0(), 
        Tclass._System.Tuple0(), 
        $LS($LS($LZ)), 
        xs#0, 
        #_module.IList.INil()));

// $IsAlloc axiom for subset type _module.AlwaysNothing
axiom (forall xs#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(xs#0, Tclass._module.AlwaysNothing(), $h) } 
  $IsAlloc(xs#0, Tclass._module.AlwaysNothing(), $h)
     <==> $IsAlloc(xs#0, Tclass._module.IList(Tclass._System.Tuple0()), $h));

// Constructor function declaration
function #_module.NonemptyList.Atom(Box) : DatatypeType;

const unique ##_module.NonemptyList.Atom: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: Box :: 
  { #_module.NonemptyList.Atom(a#0#0#0) } 
  DatatypeCtorId(#_module.NonemptyList.Atom(a#0#0#0))
     == ##_module.NonemptyList.Atom);
}

function _module.NonemptyList.Atom_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.NonemptyList.Atom_q(d) } 
  _module.NonemptyList.Atom_q(d)
     <==> DatatypeCtorId(d) == ##_module.NonemptyList.Atom);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.NonemptyList.Atom_q(d) } 
  _module.NonemptyList.Atom_q(d)
     ==> (exists a#1#0#0: Box :: d == #_module.NonemptyList.Atom(a#1#0#0)));

// Constructor $Is
axiom (forall _module.NonemptyList$G: Ty, a#2#0#0: Box :: 
  { $Is(#_module.NonemptyList.Atom(a#2#0#0), 
      Tclass._module.NonemptyList(_module.NonemptyList$G)) } 
  $Is(#_module.NonemptyList.Atom(a#2#0#0), 
      Tclass._module.NonemptyList(_module.NonemptyList$G))
     <==> $IsBox(a#2#0#0, _module.NonemptyList$G));

// Constructor $IsAlloc
axiom (forall _module.NonemptyList$G: Ty, a#2#0#0: Box, $h: Heap :: 
  { $IsAlloc(#_module.NonemptyList.Atom(a#2#0#0), 
      Tclass._module.NonemptyList(_module.NonemptyList$G), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.NonemptyList.Atom(a#2#0#0), 
        Tclass._module.NonemptyList(_module.NonemptyList$G), 
        $h)
       <==> $IsAllocBox(a#2#0#0, _module.NonemptyList$G, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.NonemptyList$G: Ty, $h: Heap :: 
  { $IsAllocBox(_module.NonemptyList._h9(d), _module.NonemptyList$G, $h) } 
  $IsGoodHeap($h)
       && 
      _module.NonemptyList.Atom_q(d)
       && $IsAlloc(d, Tclass._module.NonemptyList(_module.NonemptyList$G), $h)
     ==> $IsAllocBox(_module.NonemptyList._h9(d), _module.NonemptyList$G, $h));

// Constructor literal
axiom (forall a#3#0#0: Box :: 
  { #_module.NonemptyList.Atom(Lit(a#3#0#0)) } 
  #_module.NonemptyList.Atom(Lit(a#3#0#0))
     == Lit(#_module.NonemptyList.Atom(a#3#0#0)));

function _module.NonemptyList._h9(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#4#0#0: Box :: 
  { #_module.NonemptyList.Atom(a#4#0#0) } 
  _module.NonemptyList._h9(#_module.NonemptyList.Atom(a#4#0#0)) == a#4#0#0);

// Inductive rank
axiom (forall a#5#0#0: Box :: 
  { #_module.NonemptyList.Atom(a#5#0#0) } 
  BoxRank(a#5#0#0) < DtRank(#_module.NonemptyList.Atom(a#5#0#0)));

// Constructor function declaration
function #_module.NonemptyList.NCons(Box, DatatypeType) : DatatypeType;

const unique ##_module.NonemptyList.NCons: DtCtorId
uses {
// Constructor identifier
axiom (forall a#6#0#0: Box, a#6#1#0: DatatypeType :: 
  { #_module.NonemptyList.NCons(a#6#0#0, a#6#1#0) } 
  DatatypeCtorId(#_module.NonemptyList.NCons(a#6#0#0, a#6#1#0))
     == ##_module.NonemptyList.NCons);
}

function _module.NonemptyList.NCons_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.NonemptyList.NCons_q(d) } 
  _module.NonemptyList.NCons_q(d)
     <==> DatatypeCtorId(d) == ##_module.NonemptyList.NCons);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.NonemptyList.NCons_q(d) } 
  _module.NonemptyList.NCons_q(d)
     ==> (exists a#7#0#0: Box, a#7#1#0: DatatypeType :: 
      d == #_module.NonemptyList.NCons(a#7#0#0, a#7#1#0)));

// Constructor $Is
axiom (forall _module.NonemptyList$G: Ty, a#8#0#0: Box, a#8#1#0: DatatypeType :: 
  { $Is(#_module.NonemptyList.NCons(a#8#0#0, a#8#1#0), 
      Tclass._module.NonemptyList(_module.NonemptyList$G)) } 
  $Is(#_module.NonemptyList.NCons(a#8#0#0, a#8#1#0), 
      Tclass._module.NonemptyList(_module.NonemptyList$G))
     <==> $IsBox(a#8#0#0, _module.NonemptyList$G)
       && $Is(a#8#1#0, Tclass._module.NonemptyList(_module.NonemptyList$G)));

// Constructor $IsAlloc
axiom (forall _module.NonemptyList$G: Ty, a#8#0#0: Box, a#8#1#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#_module.NonemptyList.NCons(a#8#0#0, a#8#1#0), 
      Tclass._module.NonemptyList(_module.NonemptyList$G), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.NonemptyList.NCons(a#8#0#0, a#8#1#0), 
        Tclass._module.NonemptyList(_module.NonemptyList$G), 
        $h)
       <==> $IsAllocBox(a#8#0#0, _module.NonemptyList$G, $h)
         && $IsAlloc(a#8#1#0, Tclass._module.NonemptyList(_module.NonemptyList$G), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.NonemptyList$G: Ty, $h: Heap :: 
  { $IsAllocBox(_module.NonemptyList._h10(d), _module.NonemptyList$G, $h) } 
  $IsGoodHeap($h)
       && 
      _module.NonemptyList.NCons_q(d)
       && $IsAlloc(d, Tclass._module.NonemptyList(_module.NonemptyList$G), $h)
     ==> $IsAllocBox(_module.NonemptyList._h10(d), _module.NonemptyList$G, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.NonemptyList$G: Ty, $h: Heap :: 
  { $IsAlloc(_module.NonemptyList._h11(d), 
      Tclass._module.NonemptyList(_module.NonemptyList$G), 
      $h) } 
  $IsGoodHeap($h)
       && 
      _module.NonemptyList.NCons_q(d)
       && $IsAlloc(d, Tclass._module.NonemptyList(_module.NonemptyList$G), $h)
     ==> $IsAlloc(_module.NonemptyList._h11(d), 
      Tclass._module.NonemptyList(_module.NonemptyList$G), 
      $h));

// Constructor literal
axiom (forall a#9#0#0: Box, a#9#1#0: DatatypeType :: 
  { #_module.NonemptyList.NCons(Lit(a#9#0#0), Lit(a#9#1#0)) } 
  #_module.NonemptyList.NCons(Lit(a#9#0#0), Lit(a#9#1#0))
     == Lit(#_module.NonemptyList.NCons(a#9#0#0, a#9#1#0)));

function _module.NonemptyList._h10(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#10#0#0: Box, a#10#1#0: DatatypeType :: 
  { #_module.NonemptyList.NCons(a#10#0#0, a#10#1#0) } 
  _module.NonemptyList._h10(#_module.NonemptyList.NCons(a#10#0#0, a#10#1#0))
     == a#10#0#0);

// Inductive rank
axiom (forall a#11#0#0: Box, a#11#1#0: DatatypeType :: 
  { #_module.NonemptyList.NCons(a#11#0#0, a#11#1#0) } 
  BoxRank(a#11#0#0) < DtRank(#_module.NonemptyList.NCons(a#11#0#0, a#11#1#0)));

function _module.NonemptyList._h11(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#12#0#0: Box, a#12#1#0: DatatypeType :: 
  { #_module.NonemptyList.NCons(a#12#0#0, a#12#1#0) } 
  _module.NonemptyList._h11(#_module.NonemptyList.NCons(a#12#0#0, a#12#1#0))
     == a#12#1#0);

// Inductive rank
axiom (forall a#13#0#0: Box, a#13#1#0: DatatypeType :: 
  { #_module.NonemptyList.NCons(a#13#0#0, a#13#1#0) } 
  DtRank(a#13#1#0) < DtRank(#_module.NonemptyList.NCons(a#13#0#0, a#13#1#0)));

// Depth-one case-split function
function $IsA#_module.NonemptyList(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.NonemptyList(d) } 
  $IsA#_module.NonemptyList(d)
     ==> _module.NonemptyList.Atom_q(d) || _module.NonemptyList.NCons_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.NonemptyList$G: Ty, d: DatatypeType :: 
  { _module.NonemptyList.NCons_q(d), $Is(d, Tclass._module.NonemptyList(_module.NonemptyList$G)) } 
    { _module.NonemptyList.Atom_q(d), $Is(d, Tclass._module.NonemptyList(_module.NonemptyList$G)) } 
  $Is(d, Tclass._module.NonemptyList(_module.NonemptyList$G))
     ==> _module.NonemptyList.Atom_q(d) || _module.NonemptyList.NCons_q(d));

// Datatype extensional equality declaration
function _module.NonemptyList#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.NonemptyList.Atom
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.NonemptyList#Equal(a, b), _module.NonemptyList.Atom_q(a) } 
    { _module.NonemptyList#Equal(a, b), _module.NonemptyList.Atom_q(b) } 
  _module.NonemptyList.Atom_q(a) && _module.NonemptyList.Atom_q(b)
     ==> (_module.NonemptyList#Equal(a, b)
       <==> _module.NonemptyList._h9(a) == _module.NonemptyList._h9(b)));

// Datatype extensional equality definition: #_module.NonemptyList.NCons
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.NonemptyList#Equal(a, b), _module.NonemptyList.NCons_q(a) } 
    { _module.NonemptyList#Equal(a, b), _module.NonemptyList.NCons_q(b) } 
  _module.NonemptyList.NCons_q(a) && _module.NonemptyList.NCons_q(b)
     ==> (_module.NonemptyList#Equal(a, b)
       <==> _module.NonemptyList._h10(a) == _module.NonemptyList._h10(b)
         && _module.NonemptyList#Equal(_module.NonemptyList._h11(a), _module.NonemptyList._h11(b))));

// Datatype extensionality axiom: _module.NonemptyList
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.NonemptyList#Equal(a, b) } 
  _module.NonemptyList#Equal(a, b) <==> a == b);

const unique class._module.NonemptyList: ClassName;

// Constructor function declaration
function #_module.NonemptyCoList.CoAtom(Box) : DatatypeType;

const unique ##_module.NonemptyCoList.CoAtom: DtCtorId
uses {
// Constructor identifier
axiom (forall a#14#0#0: Box :: 
  { #_module.NonemptyCoList.CoAtom(a#14#0#0) } 
  DatatypeCtorId(#_module.NonemptyCoList.CoAtom(a#14#0#0))
     == ##_module.NonemptyCoList.CoAtom);
}

function _module.NonemptyCoList.CoAtom_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.NonemptyCoList.CoAtom_q(d) } 
  _module.NonemptyCoList.CoAtom_q(d)
     <==> DatatypeCtorId(d) == ##_module.NonemptyCoList.CoAtom);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.NonemptyCoList.CoAtom_q(d) } 
  _module.NonemptyCoList.CoAtom_q(d)
     ==> (exists a#15#0#0: Box :: d == #_module.NonemptyCoList.CoAtom(a#15#0#0)));

// Constructor $Is
axiom (forall _module.NonemptyCoList$G: Ty, a#16#0#0: Box :: 
  { $Is(#_module.NonemptyCoList.CoAtom(a#16#0#0), 
      Tclass._module.NonemptyCoList(_module.NonemptyCoList$G)) } 
  $Is(#_module.NonemptyCoList.CoAtom(a#16#0#0), 
      Tclass._module.NonemptyCoList(_module.NonemptyCoList$G))
     <==> $IsBox(a#16#0#0, _module.NonemptyCoList$G));

// Constructor $IsAlloc
axiom (forall _module.NonemptyCoList$G: Ty, a#16#0#0: Box, $h: Heap :: 
  { $IsAlloc(#_module.NonemptyCoList.CoAtom(a#16#0#0), 
      Tclass._module.NonemptyCoList(_module.NonemptyCoList$G), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.NonemptyCoList.CoAtom(a#16#0#0), 
        Tclass._module.NonemptyCoList(_module.NonemptyCoList$G), 
        $h)
       <==> $IsAllocBox(a#16#0#0, _module.NonemptyCoList$G, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.NonemptyCoList$G: Ty, $h: Heap :: 
  { $IsAllocBox(_module.NonemptyCoList._h12(d), _module.NonemptyCoList$G, $h) } 
  $IsGoodHeap($h)
       && 
      _module.NonemptyCoList.CoAtom_q(d)
       && $IsAlloc(d, Tclass._module.NonemptyCoList(_module.NonemptyCoList$G), $h)
     ==> $IsAllocBox(_module.NonemptyCoList._h12(d), _module.NonemptyCoList$G, $h));

function _module.NonemptyCoList._h12(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#17#0#0: Box :: 
  { #_module.NonemptyCoList.CoAtom(a#17#0#0) } 
  _module.NonemptyCoList._h12(#_module.NonemptyCoList.CoAtom(a#17#0#0))
     == a#17#0#0);

// Constructor function declaration
function #_module.NonemptyCoList.CoNCons(Box, DatatypeType) : DatatypeType;

const unique ##_module.NonemptyCoList.CoNCons: DtCtorId
uses {
// Constructor identifier
axiom (forall a#18#0#0: Box, a#18#1#0: DatatypeType :: 
  { #_module.NonemptyCoList.CoNCons(a#18#0#0, a#18#1#0) } 
  DatatypeCtorId(#_module.NonemptyCoList.CoNCons(a#18#0#0, a#18#1#0))
     == ##_module.NonemptyCoList.CoNCons);
}

function _module.NonemptyCoList.CoNCons_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.NonemptyCoList.CoNCons_q(d) } 
  _module.NonemptyCoList.CoNCons_q(d)
     <==> DatatypeCtorId(d) == ##_module.NonemptyCoList.CoNCons);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.NonemptyCoList.CoNCons_q(d) } 
  _module.NonemptyCoList.CoNCons_q(d)
     ==> (exists a#19#0#0: Box, a#19#1#0: DatatypeType :: 
      d == #_module.NonemptyCoList.CoNCons(a#19#0#0, a#19#1#0)));

// Constructor $Is
axiom (forall _module.NonemptyCoList$G: Ty, a#20#0#0: Box, a#20#1#0: DatatypeType :: 
  { $Is(#_module.NonemptyCoList.CoNCons(a#20#0#0, a#20#1#0), 
      Tclass._module.NonemptyCoList(_module.NonemptyCoList$G)) } 
  $Is(#_module.NonemptyCoList.CoNCons(a#20#0#0, a#20#1#0), 
      Tclass._module.NonemptyCoList(_module.NonemptyCoList$G))
     <==> $IsBox(a#20#0#0, _module.NonemptyCoList$G)
       && $Is(a#20#1#0, Tclass._module.NonemptyList(_module.NonemptyCoList$G)));

// Constructor $IsAlloc
axiom (forall _module.NonemptyCoList$G: Ty, a#20#0#0: Box, a#20#1#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#_module.NonemptyCoList.CoNCons(a#20#0#0, a#20#1#0), 
      Tclass._module.NonemptyCoList(_module.NonemptyCoList$G), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.NonemptyCoList.CoNCons(a#20#0#0, a#20#1#0), 
        Tclass._module.NonemptyCoList(_module.NonemptyCoList$G), 
        $h)
       <==> $IsAllocBox(a#20#0#0, _module.NonemptyCoList$G, $h)
         && $IsAlloc(a#20#1#0, Tclass._module.NonemptyList(_module.NonemptyCoList$G), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.NonemptyCoList$G: Ty, $h: Heap :: 
  { $IsAllocBox(_module.NonemptyCoList._h13(d), _module.NonemptyCoList$G, $h) } 
  $IsGoodHeap($h)
       && 
      _module.NonemptyCoList.CoNCons_q(d)
       && $IsAlloc(d, Tclass._module.NonemptyCoList(_module.NonemptyCoList$G), $h)
     ==> $IsAllocBox(_module.NonemptyCoList._h13(d), _module.NonemptyCoList$G, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.NonemptyCoList$G: Ty, $h: Heap :: 
  { $IsAlloc(_module.NonemptyCoList._h14(d), 
      Tclass._module.NonemptyList(_module.NonemptyCoList$G), 
      $h) } 
  $IsGoodHeap($h)
       && 
      _module.NonemptyCoList.CoNCons_q(d)
       && $IsAlloc(d, Tclass._module.NonemptyCoList(_module.NonemptyCoList$G), $h)
     ==> $IsAlloc(_module.NonemptyCoList._h14(d), 
      Tclass._module.NonemptyList(_module.NonemptyCoList$G), 
      $h));

function _module.NonemptyCoList._h13(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#21#0#0: Box, a#21#1#0: DatatypeType :: 
  { #_module.NonemptyCoList.CoNCons(a#21#0#0, a#21#1#0) } 
  _module.NonemptyCoList._h13(#_module.NonemptyCoList.CoNCons(a#21#0#0, a#21#1#0))
     == a#21#0#0);

function _module.NonemptyCoList._h14(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#22#0#0: Box, a#22#1#0: DatatypeType :: 
  { #_module.NonemptyCoList.CoNCons(a#22#0#0, a#22#1#0) } 
  _module.NonemptyCoList._h14(#_module.NonemptyCoList.CoNCons(a#22#0#0, a#22#1#0))
     == a#22#1#0);

// Depth-one case-split function
function $IsA#_module.NonemptyCoList(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.NonemptyCoList(d) } 
  $IsA#_module.NonemptyCoList(d)
     ==> _module.NonemptyCoList.CoAtom_q(d) || _module.NonemptyCoList.CoNCons_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.NonemptyCoList$G: Ty, d: DatatypeType :: 
  { _module.NonemptyCoList.CoNCons_q(d), $Is(d, Tclass._module.NonemptyCoList(_module.NonemptyCoList$G)) } 
    { _module.NonemptyCoList.CoAtom_q(d), $Is(d, Tclass._module.NonemptyCoList(_module.NonemptyCoList$G)) } 
  $Is(d, Tclass._module.NonemptyCoList(_module.NonemptyCoList$G))
     ==> _module.NonemptyCoList.CoAtom_q(d) || _module.NonemptyCoList.CoNCons_q(d));

function $Eq#_module.NonemptyCoList(Ty, Ty, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall _module.NonemptyCoList$G#l: Ty, 
    _module.NonemptyCoList$G#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.NonemptyCoList(_module.NonemptyCoList$G#l, _module.NonemptyCoList$G#r, $LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.NonemptyCoList(_module.NonemptyCoList$G#l))
       && $Is(d1, Tclass._module.NonemptyCoList(_module.NonemptyCoList$G#r))
     ==> ($Eq#_module.NonemptyCoList(_module.NonemptyCoList$G#l, _module.NonemptyCoList$G#r, $LS(ly), d0, d1)
       <==> (
          _module.NonemptyCoList.CoAtom_q(d0)
           && _module.NonemptyCoList.CoAtom_q(d1)
           && (_module.NonemptyCoList.CoAtom_q(d0) && _module.NonemptyCoList.CoAtom_q(d1)
             ==> _module.NonemptyCoList._h12(d0) == _module.NonemptyCoList._h12(d1)))
         || (
          _module.NonemptyCoList.CoNCons_q(d0)
           && _module.NonemptyCoList.CoNCons_q(d1)
           && (_module.NonemptyCoList.CoNCons_q(d0) && _module.NonemptyCoList.CoNCons_q(d1)
             ==> _module.NonemptyCoList._h13(d0) == _module.NonemptyCoList._h13(d1)
               && _module.NonemptyList#Equal(_module.NonemptyCoList._h14(d0), _module.NonemptyCoList._h14(d1))))));

// Unbump layer co-equality axiom
axiom (forall _module.NonemptyCoList$G#l: Ty, 
    _module.NonemptyCoList$G#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.NonemptyCoList(_module.NonemptyCoList$G#l, _module.NonemptyCoList$G#r, $LS(ly), d0, d1) } 
  $Eq#_module.NonemptyCoList(_module.NonemptyCoList$G#l, _module.NonemptyCoList$G#r, $LS(ly), d0, d1)
     <==> $Eq#_module.NonemptyCoList(_module.NonemptyCoList$G#l, _module.NonemptyCoList$G#r, ly, d0, d1));

// Equality for codatatypes
axiom (forall _module.NonemptyCoList$G#l: Ty, 
    _module.NonemptyCoList$G#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.NonemptyCoList(_module.NonemptyCoList$G#l, _module.NonemptyCoList$G#r, $LS(ly), d0, d1) } 
  $Eq#_module.NonemptyCoList(_module.NonemptyCoList$G#l, _module.NonemptyCoList$G#r, $LS(ly), d0, d1)
     <==> d0 == d1);

function $PrefixEq#_module.NonemptyCoList(Ty, Ty, Box, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall _module.NonemptyCoList$G#l: Ty, 
    _module.NonemptyCoList$G#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.NonemptyCoList(_module.NonemptyCoList$G#l, _module.NonemptyCoList$G#r, k, $LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.NonemptyCoList(_module.NonemptyCoList$G#l))
       && $Is(d1, Tclass._module.NonemptyCoList(_module.NonemptyCoList$G#r))
     ==> ($PrefixEq#_module.NonemptyCoList(_module.NonemptyCoList$G#l, _module.NonemptyCoList$G#r, k, $LS(ly), d0, d1)
       <==> (0 < ORD#Offset(k)
           ==> (
              _module.NonemptyCoList.CoAtom_q(d0)
               && _module.NonemptyCoList.CoAtom_q(d1)
               && (_module.NonemptyCoList.CoAtom_q(d0) && _module.NonemptyCoList.CoAtom_q(d1)
                 ==> _module.NonemptyCoList._h12(d0) == _module.NonemptyCoList._h12(d1)))
             || (
              _module.NonemptyCoList.CoNCons_q(d0)
               && _module.NonemptyCoList.CoNCons_q(d1)
               && (_module.NonemptyCoList.CoNCons_q(d0) && _module.NonemptyCoList.CoNCons_q(d1)
                 ==> _module.NonemptyCoList._h13(d0) == _module.NonemptyCoList._h13(d1)
                   && _module.NonemptyList#Equal(_module.NonemptyCoList._h14(d0), _module.NonemptyCoList._h14(d1)))))
         && (k != ORD#FromNat(0) && ORD#IsLimit(k)
           ==> $Eq#_module.NonemptyCoList(_module.NonemptyCoList$G#l, _module.NonemptyCoList$G#r, ly, d0, d1))));

// Unbump layer co-equality axiom
axiom (forall _module.NonemptyCoList$G#l: Ty, 
    _module.NonemptyCoList$G#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.NonemptyCoList(_module.NonemptyCoList$G#l, _module.NonemptyCoList$G#r, k, $LS(ly), d0, d1) } 
  k != ORD#FromNat(0)
     ==> ($PrefixEq#_module.NonemptyCoList(_module.NonemptyCoList$G#l, _module.NonemptyCoList$G#r, k, $LS(ly), d0, d1)
       <==> $PrefixEq#_module.NonemptyCoList(_module.NonemptyCoList$G#l, _module.NonemptyCoList$G#r, k, ly, d0, d1)));

// Coequality and prefix equality connection
axiom (forall _module.NonemptyCoList$G#l: Ty, 
    _module.NonemptyCoList$G#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.NonemptyCoList(_module.NonemptyCoList$G#l, _module.NonemptyCoList$G#r, $LS(ly), d0, d1) } 
  $Eq#_module.NonemptyCoList(_module.NonemptyCoList$G#l, _module.NonemptyCoList$G#r, $LS(ly), d0, d1)
     <==> (forall k: Box :: 
      { $PrefixEq#_module.NonemptyCoList(_module.NonemptyCoList$G#l, _module.NonemptyCoList$G#r, k, $LS(ly), d0, d1) } 
      $PrefixEq#_module.NonemptyCoList(_module.NonemptyCoList$G#l, _module.NonemptyCoList$G#r, k, $LS(ly), d0, d1)));

// Coequality and prefix equality connection
axiom (forall _module.NonemptyCoList$G#l: Ty, 
    _module.NonemptyCoList$G#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.NonemptyCoList(_module.NonemptyCoList$G#l, _module.NonemptyCoList$G#r, $LS(ly), d0, d1) } 
  (forall k: int :: 
      { $PrefixEq#_module.NonemptyCoList(_module.NonemptyCoList$G#l, 
          _module.NonemptyCoList$G#r, 
          ORD#FromNat(k), 
          $LS(ly), 
          d0, 
          d1) } 
      0 <= k
         ==> $PrefixEq#_module.NonemptyCoList(_module.NonemptyCoList$G#l, 
          _module.NonemptyCoList$G#r, 
          ORD#FromNat(k), 
          $LS(ly), 
          d0, 
          d1))
     ==> $Eq#_module.NonemptyCoList(_module.NonemptyCoList$G#l, _module.NonemptyCoList$G#r, $LS(ly), d0, d1));

// Prefix equality consequence
axiom (forall _module.NonemptyCoList$G#l: Ty, 
    _module.NonemptyCoList$G#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType, 
    m: Box :: 
  { $PrefixEq#_module.NonemptyCoList(_module.NonemptyCoList$G#l, _module.NonemptyCoList$G#r, k, $LS(ly), d0, d1), $PrefixEq#_module.NonemptyCoList(_module.NonemptyCoList$G#l, _module.NonemptyCoList$G#r, m, $LS(ly), d0, d1) } 
  ORD#Less(k, m)
       && $PrefixEq#_module.NonemptyCoList(_module.NonemptyCoList$G#l, _module.NonemptyCoList$G#r, m, $LS(ly), d0, d1)
     ==> $PrefixEq#_module.NonemptyCoList(_module.NonemptyCoList$G#l, _module.NonemptyCoList$G#r, k, $LS(ly), d0, d1));

// Prefix equality shortcut
axiom (forall _module.NonemptyCoList$G#l: Ty, 
    _module.NonemptyCoList$G#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.NonemptyCoList(_module.NonemptyCoList$G#l, _module.NonemptyCoList$G#r, k, $LS(ly), d0, d1) } 
  d0 == d1
     ==> $PrefixEq#_module.NonemptyCoList(_module.NonemptyCoList$G#l, _module.NonemptyCoList$G#r, k, $LS(ly), d0, d1));

const unique class._module.NonemptyCoList: ClassName;

const unique class._module.TypeParamWithDefault?: ClassName;

// $Is axiom for class TypeParamWithDefault
axiom (forall _module.TypeParamWithDefault$G: Ty, $o: ref :: 
  { $Is($o, Tclass._module.TypeParamWithDefault?(_module.TypeParamWithDefault$G)) } 
  $Is($o, Tclass._module.TypeParamWithDefault?(_module.TypeParamWithDefault$G))
     <==> $o == null
       || dtype($o)
         == Tclass._module.TypeParamWithDefault?(_module.TypeParamWithDefault$G));

// $IsAlloc axiom for class TypeParamWithDefault
axiom (forall _module.TypeParamWithDefault$G: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.TypeParamWithDefault?(_module.TypeParamWithDefault$G), $h) } 
  $IsAlloc($o, Tclass._module.TypeParamWithDefault?(_module.TypeParamWithDefault$G), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

procedure {:verboseName "TypeParamWithDefault.M (well-formedness)"} CheckWellFormed$$_module.TypeParamWithDefault.M(_module.TypeParamWithDefault$G: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.TypeParamWithDefault(_module.TypeParamWithDefault$G))
         && $IsAlloc(this, Tclass._module.TypeParamWithDefault(_module.TypeParamWithDefault$G), $Heap))
   returns (h#0: Box
       where $IsBox(h#0, _module.TypeParamWithDefault$G)
         && $IsAllocBox(h#0, _module.TypeParamWithDefault$G, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TypeParamWithDefault.M (call)"} Call$$_module.TypeParamWithDefault.M(_module.TypeParamWithDefault$G: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.TypeParamWithDefault(_module.TypeParamWithDefault$G))
         && $IsAlloc(this, Tclass._module.TypeParamWithDefault(_module.TypeParamWithDefault$G), $Heap))
   returns (h#0: Box
       where $IsBox(h#0, _module.TypeParamWithDefault$G)
         && $IsAllocBox(h#0, _module.TypeParamWithDefault$G, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TypeParamWithDefault.M (correctness)"} Impl$$_module.TypeParamWithDefault.M(_module.TypeParamWithDefault$G: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.TypeParamWithDefault(_module.TypeParamWithDefault$G))
         && $IsAlloc(this, Tclass._module.TypeParamWithDefault(_module.TypeParamWithDefault$G), $Heap))
   returns (h#0: Box
       where $IsBox(h#0, _module.TypeParamWithDefault$G)
         && $IsAllocBox(h#0, _module.TypeParamWithDefault$G, $Heap), 
    $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// $Is axiom for non-null type _module.TypeParamWithDefault
axiom (forall _module.TypeParamWithDefault$G: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._module.TypeParamWithDefault(_module.TypeParamWithDefault$G)) } 
    { $Is(c#0, Tclass._module.TypeParamWithDefault?(_module.TypeParamWithDefault$G)) } 
  $Is(c#0, Tclass._module.TypeParamWithDefault(_module.TypeParamWithDefault$G))
     <==> $Is(c#0, Tclass._module.TypeParamWithDefault?(_module.TypeParamWithDefault$G))
       && c#0 != null);

// $IsAlloc axiom for non-null type _module.TypeParamWithDefault
axiom (forall _module.TypeParamWithDefault$G: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.TypeParamWithDefault(_module.TypeParamWithDefault$G), $h) } 
    { $IsAlloc(c#0, Tclass._module.TypeParamWithDefault?(_module.TypeParamWithDefault$G), $h) } 
  $IsAlloc(c#0, Tclass._module.TypeParamWithDefault(_module.TypeParamWithDefault$G), $h)
     <==> $IsAlloc(c#0, Tclass._module.TypeParamWithDefault?(_module.TypeParamWithDefault$G), $h));

// type axiom for trait parent: HClass? extends HTrait?
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.HClass?()) } 
  $Is($o, Tclass._module.HClass?()) ==> $Is($o, Tclass._module.HTrait?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.HClass?()) } 
  $IsBox(bx, Tclass._module.HClass?()) ==> $IsBox(bx, Tclass._module.HTrait?()));

// allocation axiom for trait parent: HClass? extends HTrait?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass._module.HClass?(), $heap) } 
  $IsAlloc($o, Tclass._module.HClass?(), $heap)
     ==> $IsAlloc($o, Tclass._module.HTrait?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass._module.HClass?(), $h) } 
  $IsAllocBox(bx, Tclass._module.HClass?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass._module.HTrait?(), $h));

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

const unique tytagFamily$array3: TyTagFamily;

const unique tytagFamily$_#Func3: TyTagFamily;

const unique tytagFamily$_#PartialFunc3: TyTagFamily;

const unique tytagFamily$_#TotalFunc3: TyTagFamily;

const unique tytagFamily$_#Func2: TyTagFamily;

const unique tytagFamily$_#PartialFunc2: TyTagFamily;

const unique tytagFamily$_#TotalFunc2: TyTagFamily;

const unique tytagFamily$Color: TyTagFamily;

const unique tytagFamily$Six: TyTagFamily;

const unique tytagFamily$Even: TyTagFamily;

const unique tytagFamily$DtZ: TyTagFamily;

const unique tytagFamily$MyClass: TyTagFamily;

const unique tytagFamily$ReallyJustANullableMyClass: TyTagFamily;

const unique tytagFamily$Cl: TyTagFamily;

const unique tytagFamily$NonemptyList: TyTagFamily;

const unique tytagFamily$HClass: TyTagFamily;

const unique tytagFamily$WClass: TyTagFamily;

const unique tytagFamily$IList: TyTagFamily;

const unique tytagFamily$Stream: TyTagFamily;

const unique tytagFamily$EmptyList: TyTagFamily;

const unique tytagFamily$AlwaysNothing: TyTagFamily;

const unique tytagFamily$NonemptyCoList: TyTagFamily;

const unique tytagFamily$PinkColor: TyTagFamily;

const unique tytagFamily$TypeParamWithDefault: TyTagFamily;

const unique tytagFamily$Eight: TyTagFamily;

const unique tytagFamily$Odd: TyTagFamily;

const unique tytagFamily$Dt: TyTagFamily;

const unique tytagFamily$HTrait: TyTagFamily;

const unique field$h1: NameFamily;

const unique field$k1: NameFamily;

const unique field$f: NameFamily;

const unique field$x: NameFamily;

const unique field$y: NameFamily;

const unique field$zed: NameFamily;

const unique field$u: NameFamily;
