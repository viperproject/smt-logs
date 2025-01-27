// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness-@PROC@.smt2 /normalizeNames:0 /emitDebugInformation:1 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy

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

// function declaration for _module._default.Postie0
function _module.__default.Postie0(c#0: ref) : ref
uses {
// consequence axiom for _module.__default.Postie0
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, c#0: ref :: 
    { _module.__default.Postie0(c#0), $IsGoodHeap($Heap) } 
    _module.__default.Postie0#canCall(c#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          $Is(c#0, Tclass._module.Mountain?())
           && $IsAlloc(c#0, Tclass._module.Mountain?(), $Heap)
           && c#0 != null)
       ==> _module.__default.Postie0(c#0) != null
         && $Unbox(read($Heap, _module.__default.Postie0(c#0), _module.Mountain.x)): int
           <= $Unbox(read($Heap, _module.__default.Postie0(c#0), _module.Mountain.x)): int
         && $Unbox(read($Heap, _module.__default.Postie0(c#0), _module.Mountain.x)): int
           == $Unbox(read($Heap, _module.__default.Postie0(c#0), _module.Mountain.x)): int
         && $Is(_module.__default.Postie0(c#0), Tclass._module.Mountain?()));
// alloc consequence axiom for _module.__default.Postie0
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, c#0: ref :: 
    { $IsAlloc(_module.__default.Postie0(c#0), Tclass._module.Mountain?(), $Heap) } 
    _module.__default.Postie0#canCall(c#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(c#0, Tclass._module.Mountain?())
           && $IsAlloc(c#0, Tclass._module.Mountain?(), $Heap)
           && c#0 != null)
       ==> $IsAlloc(_module.__default.Postie0(c#0), Tclass._module.Mountain?(), $Heap));
// definition axiom for _module.__default.Postie0 (revealed)
axiom {:id "id0"} 0 <= $FunctionContextHeight
   ==> (forall c#0: ref :: 
    { _module.__default.Postie0(c#0) } 
    _module.__default.Postie0#canCall(c#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(c#0, Tclass._module.Mountain?())
           && c#0 != null)
       ==> _module.__default.Postie0(c#0) == c#0);
// definition axiom for _module.__default.Postie0 for all literals (revealed)
axiom {:id "id1"} 0 <= $FunctionContextHeight
   ==> (forall c#0: ref :: 
    {:weight 3} { _module.__default.Postie0(Lit(c#0)) } 
    _module.__default.Postie0#canCall(Lit(c#0))
         || (0 < $FunctionContextHeight
           && 
          $Is(c#0, Tclass._module.Mountain?())
           && c#0 != null)
       ==> _module.__default.Postie0(Lit(c#0)) == Lit(c#0));
}

function _module.__default.Postie0#canCall(c#0: ref) : bool;

function Tclass._module.Mountain?() : Ty
uses {
// Tclass._module.Mountain? Tag
axiom Tag(Tclass._module.Mountain?()) == Tagclass._module.Mountain?
   && TagFamily(Tclass._module.Mountain?()) == tytagFamily$Mountain;
}

const unique Tagclass._module.Mountain?: TyTag;

// Box/unbox axiom for Tclass._module.Mountain?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Mountain?()) } 
  $IsBox(bx, Tclass._module.Mountain?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Mountain?()));

function _module.__default.Postie0#requires(ref) : bool;

// #requires axiom for _module.__default.Postie0
axiom (forall c#0: ref :: 
  { _module.__default.Postie0#requires(c#0) } 
  $Is(c#0, Tclass._module.Mountain?())
     ==> _module.__default.Postie0#requires(c#0) == (c#0 != null));

procedure {:verboseName "Postie0 (well-formedness)"} CheckWellformed$$_module.__default.Postie0(c#0: ref where $Is(c#0, Tclass._module.Mountain?()));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id2"} _module.__default.Postie0(c#0) != null;
  ensures {:id "id3"} $Unbox(read($Heap, _module.__default.Postie0(c#0), _module.Mountain.x)): int
     <= $Unbox(read($Heap, _module.__default.Postie0(c#0), _module.Mountain.x)): int;
  ensures {:id "id4"} $Unbox(read($Heap, _module.__default.Postie0(c#0), _module.Mountain.x)): int
     == $Unbox(read($Heap, _module.__default.Postie0(c#0), _module.Mountain.x)): int;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Postie0 (well-formedness)"} CheckWellformed$$_module.__default.Postie0(c#0: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var newtype$check#0: ref;
  var ##c#0: ref;
  var newtype$check#1: ref;
  var ##c#1: ref;
  var ##c#2: ref;
  var ##c#3: ref;
  var ##c#4: ref;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    newtype$check#0 := null;
    assume {:id "id5"} c#0 != null;
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.Postie0(c#0), Tclass._module.Mountain?());
        ##c#0 := c#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##c#0, Tclass._module.Mountain?(), $Heap);
        assert {:id "id6"} {:subsumption 0} ##c#0 != null;
        assume ##c#0 != null;
        assert {:id "id7"} c#0 == c#0 || (##c#0 == null && c#0 != null);
        assume c#0 == c#0 || _module.__default.Postie0#canCall(c#0);
        newtype$check#1 := null;
        assume {:id "id8"} _module.__default.Postie0(c#0) != null;
        ##c#1 := c#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##c#1, Tclass._module.Mountain?(), $Heap);
        assert {:id "id9"} {:subsumption 0} ##c#1 != null;
        assume ##c#1 != null;
        assert {:id "id10"} c#0 == c#0 || (##c#1 == null && c#0 != null);
        assume c#0 == c#0 || _module.__default.Postie0#canCall(c#0);
        assert {:id "id11"} _module.__default.Postie0(c#0) != null;
        ##c#2 := c#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##c#2, Tclass._module.Mountain?(), $Heap);
        assert {:id "id12"} {:subsumption 0} ##c#2 != null;
        assume ##c#2 != null;
        assert {:id "id13"} c#0 == c#0 || (##c#2 == null && c#0 != null);
        assume c#0 == c#0 || _module.__default.Postie0#canCall(c#0);
        assert {:id "id14"} _module.__default.Postie0(c#0) != null;
        assume {:id "id15"} $Unbox(read($Heap, _module.__default.Postie0(c#0), _module.Mountain.x)): int
           <= $Unbox(read($Heap, _module.__default.Postie0(c#0), _module.Mountain.x)): int;
        ##c#3 := c#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##c#3, Tclass._module.Mountain?(), $Heap);
        assert {:id "id16"} {:subsumption 0} ##c#3 != null;
        assume ##c#3 != null;
        assert {:id "id17"} c#0 == c#0 || (##c#3 == null && c#0 != null);
        assume c#0 == c#0 || _module.__default.Postie0#canCall(c#0);
        assert {:id "id18"} _module.__default.Postie0(c#0) != null;
        ##c#4 := c#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##c#4, Tclass._module.Mountain?(), $Heap);
        assert {:id "id19"} {:subsumption 0} ##c#4 != null;
        assume ##c#4 != null;
        assert {:id "id20"} c#0 == c#0 || (##c#4 == null && c#0 != null);
        assume c#0 == c#0 || _module.__default.Postie0#canCall(c#0);
        assert {:id "id21"} _module.__default.Postie0(c#0) != null;
        assume {:id "id22"} $Unbox(read($Heap, _module.__default.Postie0(c#0), _module.Mountain.x)): int
           == $Unbox(read($Heap, _module.__default.Postie0(c#0), _module.Mountain.x)): int;
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assume {:id "id23"} _module.__default.Postie0(c#0) == c#0;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.Postie0(c#0), Tclass._module.Mountain?());
        return;

        assume false;
    }
}



// function declaration for _module._default.Postie1
function _module.__default.Postie1(c#0: ref) : ref
uses {
// consequence axiom for _module.__default.Postie1
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, c#0: ref :: 
    { _module.__default.Postie1(c#0), $IsGoodHeap($Heap) } 
    _module.__default.Postie1#canCall(c#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          $Is(c#0, Tclass._module.Mountain?())
           && $IsAlloc(c#0, Tclass._module.Mountain?(), $Heap)
           && c#0 != null)
       ==> _module.__default.Postie1(c#0) != null
         && $Unbox(read($Heap, _module.__default.Postie1(c#0), _module.Mountain.x)): int
           == LitInt(5)
         && $Is(_module.__default.Postie1(c#0), Tclass._module.Mountain?()));
// alloc consequence axiom for _module.__default.Postie1
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, c#0: ref :: 
    { $IsAlloc(_module.__default.Postie1(c#0), Tclass._module.Mountain?(), $Heap) } 
    _module.__default.Postie1#canCall(c#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(c#0, Tclass._module.Mountain?())
           && $IsAlloc(c#0, Tclass._module.Mountain?(), $Heap)
           && c#0 != null)
       ==> $IsAlloc(_module.__default.Postie1(c#0), Tclass._module.Mountain?(), $Heap));
// definition axiom for _module.__default.Postie1 (revealed)
axiom {:id "id24"} 0 <= $FunctionContextHeight
   ==> (forall c#0: ref :: 
    { _module.__default.Postie1(c#0) } 
    _module.__default.Postie1#canCall(c#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(c#0, Tclass._module.Mountain?())
           && c#0 != null)
       ==> _module.__default.Postie1(c#0) == c#0);
// definition axiom for _module.__default.Postie1 for all literals (revealed)
axiom {:id "id25"} 0 <= $FunctionContextHeight
   ==> (forall c#0: ref :: 
    {:weight 3} { _module.__default.Postie1(Lit(c#0)) } 
    _module.__default.Postie1#canCall(Lit(c#0))
         || (0 < $FunctionContextHeight
           && 
          $Is(c#0, Tclass._module.Mountain?())
           && c#0 != null)
       ==> _module.__default.Postie1(Lit(c#0)) == Lit(c#0));
}

function _module.__default.Postie1#canCall(c#0: ref) : bool;

function _module.__default.Postie1#requires(ref) : bool;

// #requires axiom for _module.__default.Postie1
axiom (forall c#0: ref :: 
  { _module.__default.Postie1#requires(c#0) } 
  $Is(c#0, Tclass._module.Mountain?())
     ==> _module.__default.Postie1#requires(c#0) == (c#0 != null));

procedure {:verboseName "Postie1 (well-formedness)"} CheckWellformed$$_module.__default.Postie1(c#0: ref where $Is(c#0, Tclass._module.Mountain?()));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id26"} _module.__default.Postie1(c#0) != null;
  ensures {:id "id27"} $Unbox(read($Heap, _module.__default.Postie1(c#0), _module.Mountain.x)): int
     == LitInt(5);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Postie1 (well-formedness)"} CheckWellformed$$_module.__default.Postie1(c#0: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var newtype$check#0: ref;
  var ##c#0: ref;
  var newtype$check#1: ref;
  var ##c#1: ref;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    newtype$check#0 := null;
    assume {:id "id28"} c#0 != null;
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.Postie1(c#0), Tclass._module.Mountain?());
        ##c#0 := c#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##c#0, Tclass._module.Mountain?(), $Heap);
        assert {:id "id29"} {:subsumption 0} ##c#0 != null;
        assume ##c#0 != null;
        assert {:id "id30"} c#0 == c#0 || (##c#0 == null && c#0 != null);
        assume c#0 == c#0 || _module.__default.Postie1#canCall(c#0);
        newtype$check#1 := null;
        assume {:id "id31"} _module.__default.Postie1(c#0) != null;
        ##c#1 := c#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##c#1, Tclass._module.Mountain?(), $Heap);
        assert {:id "id32"} {:subsumption 0} ##c#1 != null;
        assume ##c#1 != null;
        assert {:id "id33"} c#0 == c#0 || (##c#1 == null && c#0 != null);
        assume c#0 == c#0 || _module.__default.Postie1#canCall(c#0);
        assert {:id "id34"} _module.__default.Postie1(c#0) != null;
        assume {:id "id35"} $Unbox(read($Heap, _module.__default.Postie1(c#0), _module.Mountain.x)): int
           == LitInt(5);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assume {:id "id36"} _module.__default.Postie1(c#0) == c#0;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.Postie1(c#0), Tclass._module.Mountain?());
        return;

        assume false;
    }
}



// function declaration for _module._default.Postie2
function _module.__default.Postie2($heap: Heap, c#0: ref) : ref
uses {
// consequence axiom for _module.__default.Postie2
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, c#0: ref :: 
    { _module.__default.Postie2($Heap, c#0) } 
    _module.__default.Postie2#canCall($Heap, c#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          $Is(c#0, Tclass._module.Mountain?())
           && $IsAlloc(c#0, Tclass._module.Mountain?(), $Heap)
           && 
          c#0 != null
           && $Unbox(read($Heap, c#0, _module.Mountain.x)): int == LitInt(5))
       ==> $Unbox(read($Heap, _module.__default.Postie2($Heap, c#0), _module.Mountain.x)): int
           == LitInt(5)
         && $Is(_module.__default.Postie2($Heap, c#0), Tclass._module.Mountain?()));
// alloc consequence axiom for _module.__default.Postie2
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, c#0: ref :: 
    { $IsAlloc(_module.__default.Postie2($Heap, c#0), Tclass._module.Mountain?(), $Heap) } 
    _module.__default.Postie2#canCall($Heap, c#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          $Is(c#0, Tclass._module.Mountain?())
           && $IsAlloc(c#0, Tclass._module.Mountain?(), $Heap)
           && 
          c#0 != null
           && $Unbox(read($Heap, c#0, _module.Mountain.x)): int == LitInt(5))
       ==> $IsAlloc(_module.__default.Postie2($Heap, c#0), Tclass._module.Mountain?(), $Heap));
// definition axiom for _module.__default.Postie2 (revealed)
axiom {:id "id37"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, c#0: ref :: 
    { _module.__default.Postie2($Heap, c#0), $IsGoodHeap($Heap) } 
    _module.__default.Postie2#canCall($Heap, c#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(c#0, Tclass._module.Mountain?())
           && 
          c#0 != null
           && $Unbox(read($Heap, c#0, _module.Mountain.x)): int == LitInt(5))
       ==> _module.__default.Postie2($Heap, c#0) == c#0);
}

function _module.__default.Postie2#canCall($heap: Heap, c#0: ref) : bool;

// frame axiom for _module.__default.Postie2
axiom (forall $h0: Heap, $h1: Heap, c#0: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.__default.Postie2($h1, c#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (_module.__default.Postie2#canCall($h0, c#0)
         || $Is(c#0, Tclass._module.Mountain?()))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == c#0 ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.__default.Postie2($h0, c#0) == _module.__default.Postie2($h1, c#0));

function _module.__default.Postie2#requires(Heap, ref) : bool;

// #requires axiom for _module.__default.Postie2
axiom (forall $Heap: Heap, c#0: ref :: 
  { _module.__default.Postie2#requires($Heap, c#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap) && $Is(c#0, Tclass._module.Mountain?())
     ==> _module.__default.Postie2#requires($Heap, c#0)
       == (c#0 != null && $Unbox(read($Heap, c#0, _module.Mountain.x)): int == LitInt(5)));

procedure {:verboseName "Postie2 (well-formedness)"} CheckWellformed$$_module.__default.Postie2(c#0: ref where $Is(c#0, Tclass._module.Mountain?()));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id38"} $Unbox(read($Heap, _module.__default.Postie2($Heap, c#0), _module.Mountain.x)): int
     == LitInt(5);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Postie2 (well-formedness)"} CheckWellformed$$_module.__default.Postie2(c#0: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var newtype$check#0: ref;
  var b$reqreads#0: bool;
  var ##c#0: ref;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == c#0);
    // Check well-formedness of preconditions, and then assume them
    newtype$check#0 := null;
    assume {:id "id39"} c#0 != null;
    assert {:id "id40"} c#0 != null;
    b$reqreads#0 := $_ReadsFrame[c#0, _module.Mountain.x];
    assume {:id "id41"} $Unbox(read($Heap, c#0, _module.Mountain.x)): int == LitInt(5);
    assert {:id "id42"} b$reqreads#0;
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.Postie2($Heap, c#0), Tclass._module.Mountain?());
        ##c#0 := c#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##c#0, Tclass._module.Mountain?(), $Heap);
        assert {:id "id43"} {:subsumption 0} ##c#0 != null;
        assert {:id "id44"} {:subsumption 0} $Unbox(read($Heap, ##c#0, _module.Mountain.x)): int == LitInt(5);
        assume ##c#0 != null
           && $Unbox(read($Heap, ##c#0, _module.Mountain.x)): int == LitInt(5);
        assert {:id "id45"} c#0 == c#0
           || 
          (Set#Subset(Set#UnionOne(Set#Empty(): Set, $Box(##c#0)), 
              Set#UnionOne(Set#Empty(): Set, $Box(c#0)))
             && !Set#Subset(Set#UnionOne(Set#Empty(): Set, $Box(c#0)), 
              Set#UnionOne(Set#Empty(): Set, $Box(##c#0))))
           || (Set#Equal(Set#UnionOne(Set#Empty(): Set, $Box(##c#0)), 
              Set#UnionOne(Set#Empty(): Set, $Box(c#0)))
             && 
            ##c#0 == null
             && c#0 != null);
        assume c#0 == c#0 || _module.__default.Postie2#canCall($Heap, c#0);
        assert {:id "id46"} _module.__default.Postie2($Heap, c#0) != null;
        assume {:id "id47"} $Unbox(read($Heap, _module.__default.Postie2($Heap, c#0), _module.Mountain.x)): int
           == LitInt(5);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assume {:id "id48"} _module.__default.Postie2($Heap, c#0) == c#0;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.Postie2($Heap, c#0), Tclass._module.Mountain?());
        return;

        assume false;
    }
}



// function declaration for _module._default.Postie3
function _module.__default.Postie3($heap: Heap, c#0: ref) : ref
uses {
// consequence axiom for _module.__default.Postie3
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, c#0: ref :: 
    { _module.__default.Postie3($Heap, c#0) } 
    _module.__default.Postie3#canCall($Heap, c#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          $Is(c#0, Tclass._module.Mountain?())
           && $IsAlloc(c#0, Tclass._module.Mountain?(), $Heap)
           && 
          c#0 != null
           && $Unbox(read($Heap, c#0, _module.Mountain.x)): int == LitInt(5))
       ==> _module.__default.Postie3($Heap, c#0) != null
         && $Unbox(read($Heap, _module.__default.Postie3($Heap, c#0), _module.Mountain.x)): int
           < 10
         && $Unbox(read($Heap, _module.__default.Postie3($Heap, c#0), _module.Mountain.x)): int
           == LitInt(5)
         && $Is(_module.__default.Postie3($Heap, c#0), Tclass._module.Mountain?()));
// alloc consequence axiom for _module.__default.Postie3
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, c#0: ref :: 
    { $IsAlloc(_module.__default.Postie3($Heap, c#0), Tclass._module.Mountain?(), $Heap) } 
    _module.__default.Postie3#canCall($Heap, c#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          $Is(c#0, Tclass._module.Mountain?())
           && $IsAlloc(c#0, Tclass._module.Mountain?(), $Heap)
           && 
          c#0 != null
           && $Unbox(read($Heap, c#0, _module.Mountain.x)): int == LitInt(5))
       ==> $IsAlloc(_module.__default.Postie3($Heap, c#0), Tclass._module.Mountain?(), $Heap));
// definition axiom for _module.__default.Postie3 (revealed)
axiom {:id "id49"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, c#0: ref :: 
    { _module.__default.Postie3($Heap, c#0), $IsGoodHeap($Heap) } 
    _module.__default.Postie3#canCall($Heap, c#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(c#0, Tclass._module.Mountain?())
           && 
          c#0 != null
           && $Unbox(read($Heap, c#0, _module.Mountain.x)): int == LitInt(5))
       ==> _module.__default.Postie3($Heap, c#0) == c#0);
}

function _module.__default.Postie3#canCall($heap: Heap, c#0: ref) : bool;

// frame axiom for _module.__default.Postie3
axiom (forall $h0: Heap, $h1: Heap, c#0: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.__default.Postie3($h1, c#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (_module.__default.Postie3#canCall($h0, c#0)
         || $Is(c#0, Tclass._module.Mountain?()))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == c#0 ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.__default.Postie3($h0, c#0) == _module.__default.Postie3($h1, c#0));

function _module.__default.Postie3#requires(Heap, ref) : bool;

// #requires axiom for _module.__default.Postie3
axiom (forall $Heap: Heap, c#0: ref :: 
  { _module.__default.Postie3#requires($Heap, c#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap) && $Is(c#0, Tclass._module.Mountain?())
     ==> _module.__default.Postie3#requires($Heap, c#0)
       == (c#0 != null && $Unbox(read($Heap, c#0, _module.Mountain.x)): int == LitInt(5)));

procedure {:verboseName "Postie3 (well-formedness)"} CheckWellformed$$_module.__default.Postie3(c#0: ref where $Is(c#0, Tclass._module.Mountain?()));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id50"} _module.__default.Postie3($Heap, c#0) != null;
  ensures {:id "id51"} $Unbox(read($Heap, _module.__default.Postie3($Heap, c#0), _module.Mountain.x)): int
     < 10;
  ensures {:id "id52"} $Unbox(read($Heap, _module.__default.Postie3($Heap, c#0), _module.Mountain.x)): int
     == LitInt(5);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Postie3 (well-formedness)"} CheckWellformed$$_module.__default.Postie3(c#0: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var newtype$check#0: ref;
  var b$reqreads#0: bool;
  var ##c#0: ref;
  var newtype$check#1: ref;
  var ##c#1: ref;
  var ##c#2: ref;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == c#0);
    // Check well-formedness of preconditions, and then assume them
    newtype$check#0 := null;
    assume {:id "id53"} c#0 != null;
    assert {:id "id54"} c#0 != null;
    b$reqreads#0 := $_ReadsFrame[c#0, _module.Mountain.x];
    assume {:id "id55"} $Unbox(read($Heap, c#0, _module.Mountain.x)): int == LitInt(5);
    assert {:id "id56"} b$reqreads#0;
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.Postie3($Heap, c#0), Tclass._module.Mountain?());
        ##c#0 := c#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##c#0, Tclass._module.Mountain?(), $Heap);
        assert {:id "id57"} {:subsumption 0} ##c#0 != null;
        assert {:id "id58"} {:subsumption 0} $Unbox(read($Heap, ##c#0, _module.Mountain.x)): int == LitInt(5);
        assume ##c#0 != null
           && $Unbox(read($Heap, ##c#0, _module.Mountain.x)): int == LitInt(5);
        assert {:id "id59"} c#0 == c#0
           || 
          (Set#Subset(Set#UnionOne(Set#Empty(): Set, $Box(##c#0)), 
              Set#UnionOne(Set#Empty(): Set, $Box(c#0)))
             && !Set#Subset(Set#UnionOne(Set#Empty(): Set, $Box(c#0)), 
              Set#UnionOne(Set#Empty(): Set, $Box(##c#0))))
           || (Set#Equal(Set#UnionOne(Set#Empty(): Set, $Box(##c#0)), 
              Set#UnionOne(Set#Empty(): Set, $Box(c#0)))
             && 
            ##c#0 == null
             && c#0 != null);
        assume c#0 == c#0 || _module.__default.Postie3#canCall($Heap, c#0);
        newtype$check#1 := null;
        assume {:id "id60"} _module.__default.Postie3($Heap, c#0) != null;
        ##c#1 := c#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##c#1, Tclass._module.Mountain?(), $Heap);
        assert {:id "id61"} {:subsumption 0} ##c#1 != null;
        assert {:id "id62"} {:subsumption 0} $Unbox(read($Heap, ##c#1, _module.Mountain.x)): int == LitInt(5);
        assume ##c#1 != null
           && $Unbox(read($Heap, ##c#1, _module.Mountain.x)): int == LitInt(5);
        assert {:id "id63"} c#0 == c#0
           || 
          (Set#Subset(Set#UnionOne(Set#Empty(): Set, $Box(##c#1)), 
              Set#UnionOne(Set#Empty(): Set, $Box(c#0)))
             && !Set#Subset(Set#UnionOne(Set#Empty(): Set, $Box(c#0)), 
              Set#UnionOne(Set#Empty(): Set, $Box(##c#1))))
           || (Set#Equal(Set#UnionOne(Set#Empty(): Set, $Box(##c#1)), 
              Set#UnionOne(Set#Empty(): Set, $Box(c#0)))
             && 
            ##c#1 == null
             && c#0 != null);
        assume c#0 == c#0 || _module.__default.Postie3#canCall($Heap, c#0);
        assert {:id "id64"} _module.__default.Postie3($Heap, c#0) != null;
        assume {:id "id65"} $Unbox(read($Heap, _module.__default.Postie3($Heap, c#0), _module.Mountain.x)): int
           < 10;
        ##c#2 := c#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##c#2, Tclass._module.Mountain?(), $Heap);
        assert {:id "id66"} {:subsumption 0} ##c#2 != null;
        assert {:id "id67"} {:subsumption 0} $Unbox(read($Heap, ##c#2, _module.Mountain.x)): int == LitInt(5);
        assume ##c#2 != null
           && $Unbox(read($Heap, ##c#2, _module.Mountain.x)): int == LitInt(5);
        assert {:id "id68"} c#0 == c#0
           || 
          (Set#Subset(Set#UnionOne(Set#Empty(): Set, $Box(##c#2)), 
              Set#UnionOne(Set#Empty(): Set, $Box(c#0)))
             && !Set#Subset(Set#UnionOne(Set#Empty(): Set, $Box(c#0)), 
              Set#UnionOne(Set#Empty(): Set, $Box(##c#2))))
           || (Set#Equal(Set#UnionOne(Set#Empty(): Set, $Box(##c#2)), 
              Set#UnionOne(Set#Empty(): Set, $Box(c#0)))
             && 
            ##c#2 == null
             && c#0 != null);
        assume c#0 == c#0 || _module.__default.Postie3#canCall($Heap, c#0);
        assert {:id "id69"} _module.__default.Postie3($Heap, c#0) != null;
        assume {:id "id70"} $Unbox(read($Heap, _module.__default.Postie3($Heap, c#0), _module.Mountain.x)): int
           == LitInt(5);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assume {:id "id71"} _module.__default.Postie3($Heap, c#0) == c#0;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.Postie3($Heap, c#0), Tclass._module.Mountain?());
        return;

        assume false;
    }
}



// function declaration for _module._default.Postie4
function _module.__default.Postie4($heap: Heap, c#0: ref) : ref
uses {
// consequence axiom for _module.__default.Postie4
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, c#0: ref :: 
    { _module.__default.Postie4($Heap, c#0) } 
    _module.__default.Postie4#canCall($Heap, c#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          $Is(c#0, Tclass._module.Mountain?())
           && $IsAlloc(c#0, Tclass._module.Mountain?(), $Heap)
           && 
          c#0 != null
           && $Unbox(read($Heap, c#0, _module.Mountain.x)): int <= LitInt(5))
       ==> _module.__default.Postie4($Heap, c#0) != null
         && $Unbox(read($Heap, _module.__default.Postie4($Heap, c#0), _module.Mountain.x)): int
           < 10
         && $Unbox(read($Heap, _module.__default.Postie4($Heap, c#0), _module.Mountain.x)): int
           == LitInt(5)
         && $Is(_module.__default.Postie4($Heap, c#0), Tclass._module.Mountain?()));
// alloc consequence axiom for _module.__default.Postie4
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, c#0: ref :: 
    { $IsAlloc(_module.__default.Postie4($Heap, c#0), Tclass._module.Mountain?(), $Heap) } 
    _module.__default.Postie4#canCall($Heap, c#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          $Is(c#0, Tclass._module.Mountain?())
           && $IsAlloc(c#0, Tclass._module.Mountain?(), $Heap)
           && 
          c#0 != null
           && $Unbox(read($Heap, c#0, _module.Mountain.x)): int <= LitInt(5))
       ==> $IsAlloc(_module.__default.Postie4($Heap, c#0), Tclass._module.Mountain?(), $Heap));
// definition axiom for _module.__default.Postie4 (revealed)
axiom {:id "id72"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, c#0: ref :: 
    { _module.__default.Postie4($Heap, c#0), $IsGoodHeap($Heap) } 
    _module.__default.Postie4#canCall($Heap, c#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(c#0, Tclass._module.Mountain?())
           && 
          c#0 != null
           && $Unbox(read($Heap, c#0, _module.Mountain.x)): int <= LitInt(5))
       ==> _module.__default.Postie4($Heap, c#0) == c#0);
}

function _module.__default.Postie4#canCall($heap: Heap, c#0: ref) : bool;

// frame axiom for _module.__default.Postie4
axiom (forall $h0: Heap, $h1: Heap, c#0: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.__default.Postie4($h1, c#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (_module.__default.Postie4#canCall($h0, c#0)
         || $Is(c#0, Tclass._module.Mountain?()))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == c#0 ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.__default.Postie4($h0, c#0) == _module.__default.Postie4($h1, c#0));

function _module.__default.Postie4#requires(Heap, ref) : bool;

// #requires axiom for _module.__default.Postie4
axiom (forall $Heap: Heap, c#0: ref :: 
  { _module.__default.Postie4#requires($Heap, c#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap) && $Is(c#0, Tclass._module.Mountain?())
     ==> _module.__default.Postie4#requires($Heap, c#0)
       == (c#0 != null && $Unbox(read($Heap, c#0, _module.Mountain.x)): int <= LitInt(5)));

procedure {:verboseName "Postie4 (well-formedness)"} CheckWellformed$$_module.__default.Postie4(c#0: ref where $Is(c#0, Tclass._module.Mountain?()));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id73"} _module.__default.Postie4($Heap, c#0) != null;
  ensures {:id "id74"} $Unbox(read($Heap, _module.__default.Postie4($Heap, c#0), _module.Mountain.x)): int
     < 10;
  ensures {:id "id75"} $Unbox(read($Heap, _module.__default.Postie4($Heap, c#0), _module.Mountain.x)): int
     == LitInt(5);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Postie4 (well-formedness)"} CheckWellformed$$_module.__default.Postie4(c#0: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var newtype$check#0: ref;
  var b$reqreads#0: bool;
  var ##c#0: ref;
  var newtype$check#1: ref;
  var ##c#1: ref;
  var ##c#2: ref;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == c#0);
    // Check well-formedness of preconditions, and then assume them
    newtype$check#0 := null;
    assume {:id "id76"} c#0 != null;
    assert {:id "id77"} c#0 != null;
    b$reqreads#0 := $_ReadsFrame[c#0, _module.Mountain.x];
    assume {:id "id78"} $Unbox(read($Heap, c#0, _module.Mountain.x)): int <= LitInt(5);
    assert {:id "id79"} b$reqreads#0;
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.Postie4($Heap, c#0), Tclass._module.Mountain?());
        ##c#0 := c#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##c#0, Tclass._module.Mountain?(), $Heap);
        assert {:id "id80"} {:subsumption 0} ##c#0 != null;
        assert {:id "id81"} {:subsumption 0} $Unbox(read($Heap, ##c#0, _module.Mountain.x)): int <= LitInt(5);
        assume ##c#0 != null
           && $Unbox(read($Heap, ##c#0, _module.Mountain.x)): int <= LitInt(5);
        assert {:id "id82"} c#0 == c#0
           || 
          (Set#Subset(Set#UnionOne(Set#Empty(): Set, $Box(##c#0)), 
              Set#UnionOne(Set#Empty(): Set, $Box(c#0)))
             && !Set#Subset(Set#UnionOne(Set#Empty(): Set, $Box(c#0)), 
              Set#UnionOne(Set#Empty(): Set, $Box(##c#0))))
           || (Set#Equal(Set#UnionOne(Set#Empty(): Set, $Box(##c#0)), 
              Set#UnionOne(Set#Empty(): Set, $Box(c#0)))
             && 
            ##c#0 == null
             && c#0 != null);
        assume c#0 == c#0 || _module.__default.Postie4#canCall($Heap, c#0);
        newtype$check#1 := null;
        assume {:id "id83"} _module.__default.Postie4($Heap, c#0) != null;
        ##c#1 := c#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##c#1, Tclass._module.Mountain?(), $Heap);
        assert {:id "id84"} {:subsumption 0} ##c#1 != null;
        assert {:id "id85"} {:subsumption 0} $Unbox(read($Heap, ##c#1, _module.Mountain.x)): int <= LitInt(5);
        assume ##c#1 != null
           && $Unbox(read($Heap, ##c#1, _module.Mountain.x)): int <= LitInt(5);
        assert {:id "id86"} c#0 == c#0
           || 
          (Set#Subset(Set#UnionOne(Set#Empty(): Set, $Box(##c#1)), 
              Set#UnionOne(Set#Empty(): Set, $Box(c#0)))
             && !Set#Subset(Set#UnionOne(Set#Empty(): Set, $Box(c#0)), 
              Set#UnionOne(Set#Empty(): Set, $Box(##c#1))))
           || (Set#Equal(Set#UnionOne(Set#Empty(): Set, $Box(##c#1)), 
              Set#UnionOne(Set#Empty(): Set, $Box(c#0)))
             && 
            ##c#1 == null
             && c#0 != null);
        assume c#0 == c#0 || _module.__default.Postie4#canCall($Heap, c#0);
        assert {:id "id87"} _module.__default.Postie4($Heap, c#0) != null;
        assume {:id "id88"} $Unbox(read($Heap, _module.__default.Postie4($Heap, c#0), _module.Mountain.x)): int
           < 10;
        ##c#2 := c#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##c#2, Tclass._module.Mountain?(), $Heap);
        assert {:id "id89"} {:subsumption 0} ##c#2 != null;
        assert {:id "id90"} {:subsumption 0} $Unbox(read($Heap, ##c#2, _module.Mountain.x)): int <= LitInt(5);
        assume ##c#2 != null
           && $Unbox(read($Heap, ##c#2, _module.Mountain.x)): int <= LitInt(5);
        assert {:id "id91"} c#0 == c#0
           || 
          (Set#Subset(Set#UnionOne(Set#Empty(): Set, $Box(##c#2)), 
              Set#UnionOne(Set#Empty(): Set, $Box(c#0)))
             && !Set#Subset(Set#UnionOne(Set#Empty(): Set, $Box(c#0)), 
              Set#UnionOne(Set#Empty(): Set, $Box(##c#2))))
           || (Set#Equal(Set#UnionOne(Set#Empty(): Set, $Box(##c#2)), 
              Set#UnionOne(Set#Empty(): Set, $Box(c#0)))
             && 
            ##c#2 == null
             && c#0 != null);
        assume c#0 == c#0 || _module.__default.Postie4#canCall($Heap, c#0);
        assert {:id "id92"} _module.__default.Postie4($Heap, c#0) != null;
        assume {:id "id93"} $Unbox(read($Heap, _module.__default.Postie4($Heap, c#0), _module.Mountain.x)): int
           == LitInt(5);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assume {:id "id94"} _module.__default.Postie4($Heap, c#0) == c#0;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.Postie4($Heap, c#0), Tclass._module.Mountain?());
        return;

        assume false;
    }
}



const unique class._module.SoWellformed?: ClassName;

function Tclass._module.SoWellformed?() : Ty
uses {
// Tclass._module.SoWellformed? Tag
axiom Tag(Tclass._module.SoWellformed?()) == Tagclass._module.SoWellformed?
   && TagFamily(Tclass._module.SoWellformed?()) == tytagFamily$SoWellformed;
}

const unique Tagclass._module.SoWellformed?: TyTag;

// Box/unbox axiom for Tclass._module.SoWellformed?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.SoWellformed?()) } 
  $IsBox(bx, Tclass._module.SoWellformed?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.SoWellformed?()));

// $Is axiom for class SoWellformed
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.SoWellformed?()) } 
  $Is($o, Tclass._module.SoWellformed?())
     <==> $o == null || dtype($o) == Tclass._module.SoWellformed?());

// $IsAlloc axiom for class SoWellformed
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.SoWellformed?(), $h) } 
  $IsAlloc($o, Tclass._module.SoWellformed?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.SoWellformed.xyz: Field
uses {
axiom FDim(_module.SoWellformed.xyz) == 0
   && FieldOfDecl(class._module.SoWellformed?, field$xyz) == _module.SoWellformed.xyz
   && !$IsGhostField(_module.SoWellformed.xyz);
}

// SoWellformed.xyz: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.SoWellformed.xyz)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.SoWellformed?()
     ==> $Is($Unbox(read($h, $o, _module.SoWellformed.xyz)): int, TInt));

// SoWellformed.xyz: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.SoWellformed.xyz)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.SoWellformed?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.SoWellformed.xyz)): int, TInt, $h));

const _module.SoWellformed.next: Field
uses {
axiom FDim(_module.SoWellformed.next) == 0
   && FieldOfDecl(class._module.SoWellformed?, field$next)
     == _module.SoWellformed.next
   && !$IsGhostField(_module.SoWellformed.next);
}

// SoWellformed.next: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.SoWellformed.next)): ref } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.SoWellformed?()
     ==> $Is($Unbox(read($h, $o, _module.SoWellformed.next)): ref, 
      Tclass._module.SoWellformed?()));

// SoWellformed.next: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.SoWellformed.next)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.SoWellformed?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.SoWellformed.next)): ref, 
      Tclass._module.SoWellformed?(), 
      $h));

// function declaration for _module.SoWellformed.F
function _module.SoWellformed.F(this: ref, x#0: int) : int
uses {
// definition axiom for _module.SoWellformed.F (revealed)
axiom {:id "id95"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, x#0: int :: 
    { _module.SoWellformed.F(this, x#0) } 
    _module.SoWellformed.F#canCall(this, x#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.SoWellformed()))
       ==> _module.SoWellformed.F(this, x#0) == Div(5, x#0));
// definition axiom for _module.SoWellformed.F for decreasing-related literals (revealed)
axiom {:id "id96"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, x#0: int :: 
    {:weight 3} { _module.SoWellformed.F(this, LitInt(x#0)) } 
    _module.SoWellformed.F#canCall(this, LitInt(x#0))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.SoWellformed()))
       ==> _module.SoWellformed.F(this, LitInt(x#0)) == LitInt(Div(5, LitInt(x#0))));
// definition axiom for _module.SoWellformed.F for all literals (revealed)
axiom {:id "id97"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, x#0: int :: 
    {:weight 3} { _module.SoWellformed.F(Lit(this), LitInt(x#0)) } 
    _module.SoWellformed.F#canCall(Lit(this), LitInt(x#0))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.SoWellformed()))
       ==> _module.SoWellformed.F(Lit(this), LitInt(x#0)) == LitInt(Div(5, LitInt(x#0))));
}

function _module.SoWellformed.F#canCall(this: ref, x#0: int) : bool;

function Tclass._module.SoWellformed() : Ty
uses {
// Tclass._module.SoWellformed Tag
axiom Tag(Tclass._module.SoWellformed()) == Tagclass._module.SoWellformed
   && TagFamily(Tclass._module.SoWellformed()) == tytagFamily$SoWellformed;
}

const unique Tagclass._module.SoWellformed: TyTag;

// Box/unbox axiom for Tclass._module.SoWellformed
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.SoWellformed()) } 
  $IsBox(bx, Tclass._module.SoWellformed())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.SoWellformed()));

function _module.SoWellformed.F#requires(ref, int) : bool;

// #requires axiom for _module.SoWellformed.F
axiom (forall this: ref, x#0: int :: 
  { _module.SoWellformed.F#requires(this, x#0) } 
  this != null && $Is(this, Tclass._module.SoWellformed())
     ==> _module.SoWellformed.F#requires(this, x#0) == true);

procedure {:verboseName "SoWellformed.F (well-formedness)"} CheckWellformed$$_module.SoWellformed.F(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SoWellformed())
         && $IsAlloc(this, Tclass._module.SoWellformed(), $Heap), 
    x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SoWellformed.F (well-formedness)"} CheckWellformed$$_module.SoWellformed.F(this: ref, x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


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
        assert {:id "id98"} x#0 != 0;
        assume {:id "id99"} _module.SoWellformed.F(this, x#0) == Div(5, x#0);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.SoWellformed.F(this, x#0), TInt);
        return;

        assume false;
    }
}



// function declaration for _module.SoWellformed.G
function _module.SoWellformed.G(this: ref, x#0: int) : int
uses {
// definition axiom for _module.SoWellformed.G (revealed)
axiom {:id "id100"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, x#0: int :: 
    { _module.SoWellformed.G(this, x#0) } 
    _module.SoWellformed.G#canCall(this, x#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.SoWellformed())
           && 0 < x#0)
       ==> _module.SoWellformed.G(this, x#0) == Div(5, x#0));
// definition axiom for _module.SoWellformed.G for decreasing-related literals (revealed)
axiom {:id "id101"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, x#0: int :: 
    {:weight 3} { _module.SoWellformed.G(this, LitInt(x#0)) } 
    _module.SoWellformed.G#canCall(this, LitInt(x#0))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.SoWellformed())
           && Lit(0 < x#0))
       ==> _module.SoWellformed.G(this, LitInt(x#0)) == LitInt(Div(5, LitInt(x#0))));
// definition axiom for _module.SoWellformed.G for all literals (revealed)
axiom {:id "id102"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, x#0: int :: 
    {:weight 3} { _module.SoWellformed.G(Lit(this), LitInt(x#0)) } 
    _module.SoWellformed.G#canCall(Lit(this), LitInt(x#0))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.SoWellformed())
           && Lit(0 < x#0))
       ==> _module.SoWellformed.G(Lit(this), LitInt(x#0)) == LitInt(Div(5, LitInt(x#0))));
}

function _module.SoWellformed.G#canCall(this: ref, x#0: int) : bool;

function _module.SoWellformed.G#requires(ref, int) : bool;

// #requires axiom for _module.SoWellformed.G
axiom (forall this: ref, x#0: int :: 
  { _module.SoWellformed.G#requires(this, x#0) } 
  this != null && $Is(this, Tclass._module.SoWellformed())
     ==> _module.SoWellformed.G#requires(this, x#0) == (0 < x#0));

procedure {:verboseName "SoWellformed.G (well-formedness)"} CheckWellformed$$_module.SoWellformed.G(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SoWellformed())
         && $IsAlloc(this, Tclass._module.SoWellformed(), $Heap), 
    x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SoWellformed.G (well-formedness)"} CheckWellformed$$_module.SoWellformed.G(this: ref, x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    assume {:id "id103"} 0 < x#0;
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
        assert {:id "id104"} x#0 != 0;
        assume {:id "id105"} _module.SoWellformed.G(this, x#0) == Div(5, x#0);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.SoWellformed.G(this, x#0), TInt);
        return;

        assume false;
    }
}



// function declaration for _module.SoWellformed.H
function _module.SoWellformed.H(this: ref, x#0: int) : int
uses {
// definition axiom for _module.SoWellformed.H (revealed)
axiom {:id "id106"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, x#0: int :: 
    { _module.SoWellformed.H(this, x#0) } 
    _module.SoWellformed.H#canCall(this, x#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.SoWellformed()))
       ==> _module.SoWellformed.H(this, x#0) == LitInt(12));
// definition axiom for _module.SoWellformed.H for decreasing-related literals (revealed)
axiom {:id "id107"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, x#0: int :: 
    {:weight 3} { _module.SoWellformed.H(this, LitInt(x#0)) } 
    _module.SoWellformed.H#canCall(this, LitInt(x#0))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.SoWellformed()))
       ==> _module.SoWellformed.H(this, LitInt(x#0)) == LitInt(12));
// definition axiom for _module.SoWellformed.H for all literals (revealed)
axiom {:id "id108"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, x#0: int :: 
    {:weight 3} { _module.SoWellformed.H(Lit(this), LitInt(x#0)) } 
    _module.SoWellformed.H#canCall(Lit(this), LitInt(x#0))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.SoWellformed()))
       ==> _module.SoWellformed.H(Lit(this), LitInt(x#0)) == LitInt(12));
}

function _module.SoWellformed.H#canCall(this: ref, x#0: int) : bool;

function _module.SoWellformed.H#requires(ref, int) : bool;

// #requires axiom for _module.SoWellformed.H
axiom (forall this: ref, x#0: int :: 
  { _module.SoWellformed.H#requires(this, x#0) } 
  this != null && $Is(this, Tclass._module.SoWellformed())
     ==> _module.SoWellformed.H#requires(this, x#0) == true);

procedure {:verboseName "SoWellformed.H (well-formedness)"} CheckWellformed$$_module.SoWellformed.H(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SoWellformed())
         && $IsAlloc(this, Tclass._module.SoWellformed(), $Heap), 
    x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SoWellformed.H (well-formedness)"} CheckWellformed$$_module.SoWellformed.H(this: ref, x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    assert {:id "id109"} x#0 != 0;
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assume {:id "id110"} _module.SoWellformed.H(this, x#0) == LitInt(12);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.SoWellformed.H(this, x#0), TInt);
        return;

        assume false;
    }
}



// function declaration for _module.SoWellformed.I
function _module.SoWellformed.I(this: ref, x#0: int) : int
uses {
// definition axiom for _module.SoWellformed.I (revealed)
axiom {:id "id111"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, x#0: int :: 
    { _module.SoWellformed.I(this, x#0) } 
    _module.SoWellformed.I#canCall(this, x#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.SoWellformed())
           && 0 < x#0)
       ==> _module.SoWellformed.I(this, x#0) == LitInt(12));
// definition axiom for _module.SoWellformed.I for decreasing-related literals (revealed)
axiom {:id "id112"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, x#0: int :: 
    {:weight 3} { _module.SoWellformed.I(this, LitInt(x#0)) } 
    _module.SoWellformed.I#canCall(this, LitInt(x#0))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.SoWellformed())
           && Lit(0 < x#0))
       ==> _module.SoWellformed.I(this, LitInt(x#0)) == LitInt(12));
// definition axiom for _module.SoWellformed.I for all literals (revealed)
axiom {:id "id113"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, x#0: int :: 
    {:weight 3} { _module.SoWellformed.I(Lit(this), LitInt(x#0)) } 
    _module.SoWellformed.I#canCall(Lit(this), LitInt(x#0))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.SoWellformed())
           && Lit(0 < x#0))
       ==> _module.SoWellformed.I(Lit(this), LitInt(x#0)) == LitInt(12));
}

function _module.SoWellformed.I#canCall(this: ref, x#0: int) : bool;

function _module.SoWellformed.I#requires(ref, int) : bool;

// #requires axiom for _module.SoWellformed.I
axiom (forall this: ref, x#0: int :: 
  { _module.SoWellformed.I#requires(this, x#0) } 
  this != null && $Is(this, Tclass._module.SoWellformed())
     ==> _module.SoWellformed.I#requires(this, x#0) == (0 < x#0));

procedure {:verboseName "SoWellformed.I (well-formedness)"} CheckWellformed$$_module.SoWellformed.I(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SoWellformed())
         && $IsAlloc(this, Tclass._module.SoWellformed(), $Heap), 
    x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SoWellformed.I (well-formedness)"} CheckWellformed$$_module.SoWellformed.I(this: ref, x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    assume {:id "id114"} 0 < x#0;
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    assert {:id "id115"} x#0 != 0;
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assume {:id "id116"} _module.SoWellformed.I(this, x#0) == LitInt(12);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.SoWellformed.I(this, x#0), TInt);
        return;

        assume false;
    }
}



procedure {:verboseName "SoWellformed.M (well-formedness)"} CheckWellFormed$$_module.SoWellformed.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SoWellformed())
         && $IsAlloc(this, Tclass._module.SoWellformed(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._module.SoWellformed?())
         && $IsAlloc(a#0, Tclass._module.SoWellformed?(), $Heap), 
    b#0: int)
   returns (c#0: bool, 
    d#0: ref
       where $Is(d#0, Tclass._module.SoWellformed?())
         && $IsAlloc(d#0, Tclass._module.SoWellformed?(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SoWellformed.M (well-formedness)"} CheckWellFormed$$_module.SoWellformed.M(this: ref, a#0: ref, b#0: int) returns (c#0: bool, d#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: M, CheckWellFormed$$_module.SoWellformed.M
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id117"} a#0 != null;
    assume {:id "id118"} $Unbox(read($Heap, a#0, _module.SoWellformed.xyz)): int == LitInt(7);
    assert {:id "id119"} b#0 != 0;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc c#0, d#0;
    if (*)
    {
        assume {:id "id120"} c#0;
        assert {:id "id121"} d#0 != null;
        assume {:id "id122"} $Unbox(read($Heap, d#0, _module.SoWellformed.xyz)): int == LitInt(-7);
    }
    else
    {
        assume {:id "id123"} c#0 ==> $Unbox(read($Heap, d#0, _module.SoWellformed.xyz)): int == LitInt(-7);
    }
}



procedure {:verboseName "SoWellformed.M (call)"} Call$$_module.SoWellformed.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SoWellformed())
         && $IsAlloc(this, Tclass._module.SoWellformed(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._module.SoWellformed?())
         && $IsAlloc(a#0, Tclass._module.SoWellformed?(), $Heap), 
    b#0: int)
   returns (c#0: bool, 
    d#0: ref
       where $Is(d#0, Tclass._module.SoWellformed?())
         && $IsAlloc(d#0, Tclass._module.SoWellformed?(), $Heap));
  // user-defined preconditions
  requires {:id "id124"} $Unbox(read($Heap, a#0, _module.SoWellformed.xyz)): int == LitInt(7);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id125"} c#0 ==> $Unbox(read($Heap, d#0, _module.SoWellformed.xyz)): int == LitInt(-7);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SoWellformed.M (correctness)"} Impl$$_module.SoWellformed.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SoWellformed())
         && $IsAlloc(this, Tclass._module.SoWellformed(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._module.SoWellformed?())
         && $IsAlloc(a#0, Tclass._module.SoWellformed?(), $Heap), 
    b#0: int)
   returns (c#0: bool, 
    d#0: ref
       where $Is(d#0, Tclass._module.SoWellformed?())
         && $IsAlloc(d#0, Tclass._module.SoWellformed?(), $Heap), 
    $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id126"} $Unbox(read($Heap, a#0, _module.SoWellformed.xyz)): int == LitInt(7);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id127"} c#0 ==> $Unbox(read($Heap, d#0, _module.SoWellformed.xyz)): int == LitInt(-7);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SoWellformed.M (correctness)"} Impl$$_module.SoWellformed.M(this: ref, a#0: ref, b#0: int)
   returns (c#0: bool, d#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: M, Impl$$_module.SoWellformed.M
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy(31,7)
    assume true;
    assume true;
    c#0 := Lit(false);
}



procedure {:verboseName "SoWellformed.N (well-formedness)"} CheckWellFormed$$_module.SoWellformed.N(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SoWellformed())
         && $IsAlloc(this, Tclass._module.SoWellformed(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._module.SoWellformed?())
         && $IsAlloc(a#0, Tclass._module.SoWellformed?(), $Heap), 
    b#0: int)
   returns (c#0: bool, 
    d#0: ref
       where $Is(d#0, Tclass._module.SoWellformed?())
         && $IsAlloc(d#0, Tclass._module.SoWellformed?(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SoWellformed.N (well-formedness)"} CheckWellFormed$$_module.SoWellformed.N(this: ref, a#0: ref, b#0: int) returns (c#0: bool, d#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#0: ref;


    // AddMethodImpl: N, CheckWellFormed$$_module.SoWellformed.N
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id129"} a#0 != null;
    newtype$check#0 := null;
    assume {:id "id130"} $Unbox(read($Heap, a#0, _module.SoWellformed.next)): ref != null;
    assert {:id "id131"} a#0 != null;
    assert {:id "id132"} $Unbox(read($Heap, a#0, _module.SoWellformed.next)): ref != null;
    assume {:id "id133"} $Unbox(read($Heap, 
          $Unbox(read($Heap, a#0, _module.SoWellformed.next)): ref, 
          _module.SoWellformed.xyz)): int
       == LitInt(7);
    assume {:id "id134"} b#0 < -2;
    assert {:id "id135"} b#0 != 0;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc c#0, d#0;
    if (*)
    {
        assume {:id "id136"} LitInt(0) <= b#0;
        assert {:id "id137"} d#0 != null;
        assume {:id "id138"} $Unbox(read($Heap, d#0, _module.SoWellformed.xyz)): int == LitInt(-7);
        assume {:id "id139"} !c#0;
    }
    else
    {
        assume {:id "id140"} LitInt(0) <= b#0
           ==> $Unbox(read($Heap, d#0, _module.SoWellformed.xyz)): int == LitInt(-7) && !c#0;
    }
}



procedure {:verboseName "SoWellformed.N (call)"} Call$$_module.SoWellformed.N(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SoWellformed())
         && $IsAlloc(this, Tclass._module.SoWellformed(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._module.SoWellformed?())
         && $IsAlloc(a#0, Tclass._module.SoWellformed?(), $Heap), 
    b#0: int)
   returns (c#0: bool, 
    d#0: ref
       where $Is(d#0, Tclass._module.SoWellformed?())
         && $IsAlloc(d#0, Tclass._module.SoWellformed?(), $Heap));
  // user-defined preconditions
  requires {:id "id141"} $Unbox(read($Heap, a#0, _module.SoWellformed.next)): ref != null;
  requires {:id "id142"} $Unbox(read($Heap, 
        $Unbox(read($Heap, a#0, _module.SoWellformed.next)): ref, 
        _module.SoWellformed.xyz)): int
     == LitInt(7);
  requires {:id "id143"} b#0 < -2;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id144"} LitInt(0) <= b#0
     ==> $Unbox(read($Heap, d#0, _module.SoWellformed.xyz)): int == LitInt(-7);
  ensures {:id "id145"} LitInt(0) <= b#0 ==> !c#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SoWellformed.N (correctness)"} Impl$$_module.SoWellformed.N(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SoWellformed())
         && $IsAlloc(this, Tclass._module.SoWellformed(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._module.SoWellformed?())
         && $IsAlloc(a#0, Tclass._module.SoWellformed?(), $Heap), 
    b#0: int)
   returns (c#0: bool, 
    d#0: ref
       where $Is(d#0, Tclass._module.SoWellformed?())
         && $IsAlloc(d#0, Tclass._module.SoWellformed?(), $Heap), 
    $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id146"} $Unbox(read($Heap, a#0, _module.SoWellformed.next)): ref != null;
  requires {:id "id147"} $Unbox(read($Heap, 
        $Unbox(read($Heap, a#0, _module.SoWellformed.next)): ref, 
        _module.SoWellformed.xyz)): int
     == LitInt(7);
  requires {:id "id148"} b#0 < -2;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id149"} LitInt(0) <= b#0
     ==> $Unbox(read($Heap, d#0, _module.SoWellformed.xyz)): int == LitInt(-7);
  ensures {:id "id150"} LitInt(0) <= b#0 ==> !c#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SoWellformed.N (correctness)"} Impl$$_module.SoWellformed.N(this: ref, a#0: ref, b#0: int)
   returns (c#0: bool, d#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: N, Impl$$_module.SoWellformed.N
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy(41,7)
    assume true;
    assume true;
    c#0 := Lit(true);
}



procedure {:verboseName "SoWellformed.O (well-formedness)"} CheckWellFormed$$_module.SoWellformed.O(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SoWellformed())
         && $IsAlloc(this, Tclass._module.SoWellformed(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._module.SoWellformed?())
         && $IsAlloc(a#0, Tclass._module.SoWellformed?(), $Heap), 
    b#0: int)
   returns (c#0: bool, 
    d#0: ref
       where $Is(d#0, Tclass._module.SoWellformed?())
         && $IsAlloc(d#0, Tclass._module.SoWellformed?(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SoWellformed.O (well-formedness)"} CheckWellFormed$$_module.SoWellformed.O(this: ref, a#0: ref, b#0: int) returns (c#0: bool, d#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: O, CheckWellFormed$$_module.SoWellformed.O
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == $Unbox(read($Heap, a#0, _module.SoWellformed.next)): ref);
    assert {:id "id152"} a#0 != null;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]
           || $o == $Unbox(read(old($Heap), a#0, _module.SoWellformed.next)): ref);
    assume $HeapSucc(old($Heap), $Heap);
    havoc c#0, d#0;
}



procedure {:verboseName "SoWellformed.O (call)"} Call$$_module.SoWellformed.O(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SoWellformed())
         && $IsAlloc(this, Tclass._module.SoWellformed(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._module.SoWellformed?())
         && $IsAlloc(a#0, Tclass._module.SoWellformed?(), $Heap), 
    b#0: int)
   returns (c#0: bool, 
    d#0: ref
       where $Is(d#0, Tclass._module.SoWellformed?())
         && $IsAlloc(d#0, Tclass._module.SoWellformed?(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || $o == $Unbox(read(old($Heap), a#0, _module.SoWellformed.next)): ref);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SoWellformed.O (correctness)"} Impl$$_module.SoWellformed.O(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SoWellformed())
         && $IsAlloc(this, Tclass._module.SoWellformed(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._module.SoWellformed?())
         && $IsAlloc(a#0, Tclass._module.SoWellformed?(), $Heap), 
    b#0: int)
   returns (c#0: bool, 
    d#0: ref
       where $Is(d#0, Tclass._module.SoWellformed?())
         && $IsAlloc(d#0, Tclass._module.SoWellformed?(), $Heap), 
    $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || $o == $Unbox(read(old($Heap), a#0, _module.SoWellformed.next)): ref);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SoWellformed.P (well-formedness)"} CheckWellFormed$$_module.SoWellformed.P(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SoWellformed())
         && $IsAlloc(this, Tclass._module.SoWellformed(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._module.SoWellformed?())
         && $IsAlloc(a#0, Tclass._module.SoWellformed?(), $Heap), 
    b#0: int)
   returns (c#0: bool, 
    d#0: ref
       where $Is(d#0, Tclass._module.SoWellformed?())
         && $IsAlloc(d#0, Tclass._module.SoWellformed?(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SoWellformed.P (well-formedness)"} CheckWellFormed$$_module.SoWellformed.P(this: ref, a#0: ref, b#0: int) returns (c#0: bool, d#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#0: ref;


    // AddMethodImpl: P, CheckWellFormed$$_module.SoWellformed.P
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    newtype$check#0 := null;
    assume {:id "id154"} $Unbox(read($Heap, this, _module.SoWellformed.next)): ref != null;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == this);
    assume $HeapSucc(old($Heap), $Heap);
    havoc c#0, d#0;
    assert {:id "id155"} $Unbox(read($Heap, this, _module.SoWellformed.next)): ref != null;
    assume {:id "id156"} $Unbox(read($Heap, 
          $Unbox(read($Heap, this, _module.SoWellformed.next)): ref, 
          _module.SoWellformed.xyz)): int
       < 100;
}



procedure {:verboseName "SoWellformed.P (call)"} Call$$_module.SoWellformed.P(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SoWellformed())
         && $IsAlloc(this, Tclass._module.SoWellformed(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._module.SoWellformed?())
         && $IsAlloc(a#0, Tclass._module.SoWellformed?(), $Heap), 
    b#0: int)
   returns (c#0: bool, 
    d#0: ref
       where $Is(d#0, Tclass._module.SoWellformed?())
         && $IsAlloc(d#0, Tclass._module.SoWellformed?(), $Heap));
  // user-defined preconditions
  requires {:id "id157"} $Unbox(read($Heap, this, _module.SoWellformed.next)): ref != null;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id158"} $Unbox(read($Heap, 
        $Unbox(read($Heap, this, _module.SoWellformed.next)): ref, 
        _module.SoWellformed.xyz)): int
     < 100;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SoWellformed.P (correctness)"} Impl$$_module.SoWellformed.P(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SoWellformed())
         && $IsAlloc(this, Tclass._module.SoWellformed(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._module.SoWellformed?())
         && $IsAlloc(a#0, Tclass._module.SoWellformed?(), $Heap), 
    b#0: int)
   returns (c#0: bool, 
    d#0: ref
       where $Is(d#0, Tclass._module.SoWellformed?())
         && $IsAlloc(d#0, Tclass._module.SoWellformed?(), $Heap), 
    $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id159"} $Unbox(read($Heap, this, _module.SoWellformed.next)): ref != null;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id160"} $Unbox(read($Heap, 
        $Unbox(read($Heap, this, _module.SoWellformed.next)): ref, 
        _module.SoWellformed.xyz)): int
     < 100;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SoWellformed.P (correctness)"} Impl$$_module.SoWellformed.P(this: ref, a#0: ref, b#0: int)
   returns (c#0: bool, d#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: P, Impl$$_module.SoWellformed.P
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
}



procedure {:verboseName "SoWellformed.Q (well-formedness)"} CheckWellFormed$$_module.SoWellformed.Q(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SoWellformed())
         && $IsAlloc(this, Tclass._module.SoWellformed(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._module.SoWellformed?())
         && $IsAlloc(a#0, Tclass._module.SoWellformed?(), $Heap), 
    s#0: Set
       where $Is(s#0, TSet(Tclass._module.SoWellformed?()))
         && $IsAlloc(s#0, TSet(Tclass._module.SoWellformed?()), $Heap))
   returns (c#0: bool, 
    d#0: ref
       where $Is(d#0, Tclass._module.SoWellformed?())
         && $IsAlloc(d#0, Tclass._module.SoWellformed?(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SoWellformed.Q (well-formedness)"} CheckWellFormed$$_module.SoWellformed.Q(this: ref, a#0: ref, s#0: Set) returns (c#0: bool, d#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#0: ref;


    // AddMethodImpl: Q, CheckWellFormed$$_module.SoWellformed.Q
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember(s#0, $Box($o)));
    newtype$check#0 := null;
    assume {:id "id161"} $Unbox(read($Heap, this, _module.SoWellformed.next)): ref != null;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || Set#IsMember(s#0, $Box($o)));
    assume $HeapSucc(old($Heap), $Heap);
    havoc c#0, d#0;
    assert {:id "id162"} $Unbox(read($Heap, this, _module.SoWellformed.next)): ref != null;
    assume {:id "id163"} $Unbox(read($Heap, 
          $Unbox(read($Heap, this, _module.SoWellformed.next)): ref, 
          _module.SoWellformed.xyz)): int
       < 100;
}



procedure {:verboseName "SoWellformed.Q (call)"} Call$$_module.SoWellformed.Q(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SoWellformed())
         && $IsAlloc(this, Tclass._module.SoWellformed(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._module.SoWellformed?())
         && $IsAlloc(a#0, Tclass._module.SoWellformed?(), $Heap), 
    s#0: Set
       where $Is(s#0, TSet(Tclass._module.SoWellformed?()))
         && $IsAlloc(s#0, TSet(Tclass._module.SoWellformed?()), $Heap))
   returns (c#0: bool, 
    d#0: ref
       where $Is(d#0, Tclass._module.SoWellformed?())
         && $IsAlloc(d#0, Tclass._module.SoWellformed?(), $Heap));
  // user-defined preconditions
  requires {:id "id164"} $Unbox(read($Heap, this, _module.SoWellformed.next)): ref != null;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id165"} $Unbox(read($Heap, 
        $Unbox(read($Heap, this, _module.SoWellformed.next)): ref, 
        _module.SoWellformed.xyz)): int
     < 100;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || Set#IsMember(s#0, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SoWellformed.Q (correctness)"} Impl$$_module.SoWellformed.Q(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SoWellformed())
         && $IsAlloc(this, Tclass._module.SoWellformed(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._module.SoWellformed?())
         && $IsAlloc(a#0, Tclass._module.SoWellformed?(), $Heap), 
    s#0: Set
       where $Is(s#0, TSet(Tclass._module.SoWellformed?()))
         && $IsAlloc(s#0, TSet(Tclass._module.SoWellformed?()), $Heap))
   returns (c#0: bool, 
    d#0: ref
       where $Is(d#0, Tclass._module.SoWellformed?())
         && $IsAlloc(d#0, Tclass._module.SoWellformed?(), $Heap), 
    $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id166"} $Unbox(read($Heap, this, _module.SoWellformed.next)): ref != null;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id167"} $Unbox(read($Heap, 
        $Unbox(read($Heap, this, _module.SoWellformed.next)): ref, 
        _module.SoWellformed.xyz)): int
     < 100;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || Set#IsMember(s#0, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SoWellformed.Q (correctness)"} Impl$$_module.SoWellformed.Q(this: ref, a#0: ref, s#0: Set)
   returns (c#0: bool, d#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: Q, Impl$$_module.SoWellformed.Q
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember(s#0, $Box($o)));
    $_reverifyPost := false;
}



procedure {:verboseName "SoWellformed.R (well-formedness)"} CheckWellFormed$$_module.SoWellformed.R(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SoWellformed())
         && $IsAlloc(this, Tclass._module.SoWellformed(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._module.SoWellformed?())
         && $IsAlloc(a#0, Tclass._module.SoWellformed?(), $Heap), 
    s#0: Set
       where $Is(s#0, TSet(Tclass._module.SoWellformed?()))
         && $IsAlloc(s#0, TSet(Tclass._module.SoWellformed?()), $Heap))
   returns (c#0: bool, 
    d#0: ref
       where $Is(d#0, Tclass._module.SoWellformed?())
         && $IsAlloc(d#0, Tclass._module.SoWellformed?(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SoWellformed.R (well-formedness)"} CheckWellFormed$$_module.SoWellformed.R(this: ref, a#0: ref, s#0: Set) returns (c#0: bool, d#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#0: ref;


    // AddMethodImpl: R, CheckWellFormed$$_module.SoWellformed.R
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember(s#0, $Box($o)));
    newtype$check#0 := null;
    assume {:id "id168"} $Unbox(read($Heap, this, _module.SoWellformed.next)): ref != null;
    assume {:id "id169"} !Set#IsMember(s#0, $Box(this));
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || Set#IsMember(s#0, $Box($o)));
    assume $HeapSucc(old($Heap), $Heap);
    havoc c#0, d#0;
    assert {:id "id170"} $Unbox(read($Heap, this, _module.SoWellformed.next)): ref != null;
    assume {:id "id171"} $Unbox(read($Heap, 
          $Unbox(read($Heap, this, _module.SoWellformed.next)): ref, 
          _module.SoWellformed.xyz)): int
       < 100;
}



procedure {:verboseName "SoWellformed.R (call)"} Call$$_module.SoWellformed.R(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SoWellformed())
         && $IsAlloc(this, Tclass._module.SoWellformed(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._module.SoWellformed?())
         && $IsAlloc(a#0, Tclass._module.SoWellformed?(), $Heap), 
    s#0: Set
       where $Is(s#0, TSet(Tclass._module.SoWellformed?()))
         && $IsAlloc(s#0, TSet(Tclass._module.SoWellformed?()), $Heap))
   returns (c#0: bool, 
    d#0: ref
       where $Is(d#0, Tclass._module.SoWellformed?())
         && $IsAlloc(d#0, Tclass._module.SoWellformed?(), $Heap));
  // user-defined preconditions
  requires {:id "id172"} $Unbox(read($Heap, this, _module.SoWellformed.next)): ref != null;
  requires {:id "id173"} !Set#IsMember(s#0, $Box(this));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id174"} $Unbox(read($Heap, 
        $Unbox(read($Heap, this, _module.SoWellformed.next)): ref, 
        _module.SoWellformed.xyz)): int
     < 100;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || Set#IsMember(s#0, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SoWellformed.R (correctness)"} Impl$$_module.SoWellformed.R(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SoWellformed())
         && $IsAlloc(this, Tclass._module.SoWellformed(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._module.SoWellformed?())
         && $IsAlloc(a#0, Tclass._module.SoWellformed?(), $Heap), 
    s#0: Set
       where $Is(s#0, TSet(Tclass._module.SoWellformed?()))
         && $IsAlloc(s#0, TSet(Tclass._module.SoWellformed?()), $Heap))
   returns (c#0: bool, 
    d#0: ref
       where $Is(d#0, Tclass._module.SoWellformed?())
         && $IsAlloc(d#0, Tclass._module.SoWellformed?(), $Heap), 
    $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id175"} $Unbox(read($Heap, this, _module.SoWellformed.next)): ref != null;
  requires {:id "id176"} !Set#IsMember(s#0, $Box(this));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id177"} $Unbox(read($Heap, 
        $Unbox(read($Heap, this, _module.SoWellformed.next)): ref, 
        _module.SoWellformed.xyz)): int
     < 100;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || Set#IsMember(s#0, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SoWellformed.R (correctness)"} Impl$$_module.SoWellformed.R(this: ref, a#0: ref, s#0: Set)
   returns (c#0: bool, d#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: R, Impl$$_module.SoWellformed.R
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember(s#0, $Box($o)));
    $_reverifyPost := false;
}



// $Is axiom for non-null type _module.SoWellformed
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.SoWellformed()) } 
    { $Is(c#0, Tclass._module.SoWellformed?()) } 
  $Is(c#0, Tclass._module.SoWellformed())
     <==> $Is(c#0, Tclass._module.SoWellformed?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.SoWellformed
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.SoWellformed(), $h) } 
    { $IsAlloc(c#0, Tclass._module.SoWellformed?(), $h) } 
  $IsAlloc(c#0, Tclass._module.SoWellformed(), $h)
     <==> $IsAlloc(c#0, Tclass._module.SoWellformed?(), $h));

const unique class._module.StatementTwoShoes?: ClassName;

function Tclass._module.StatementTwoShoes?() : Ty
uses {
// Tclass._module.StatementTwoShoes? Tag
axiom Tag(Tclass._module.StatementTwoShoes?()) == Tagclass._module.StatementTwoShoes?
   && TagFamily(Tclass._module.StatementTwoShoes?()) == tytagFamily$StatementTwoShoes;
}

const unique Tagclass._module.StatementTwoShoes?: TyTag;

// Box/unbox axiom for Tclass._module.StatementTwoShoes?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.StatementTwoShoes?()) } 
  $IsBox(bx, Tclass._module.StatementTwoShoes?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.StatementTwoShoes?()));

// $Is axiom for class StatementTwoShoes
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.StatementTwoShoes?()) } 
  $Is($o, Tclass._module.StatementTwoShoes?())
     <==> $o == null || dtype($o) == Tclass._module.StatementTwoShoes?());

// $IsAlloc axiom for class StatementTwoShoes
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.StatementTwoShoes?(), $h) } 
  $IsAlloc($o, Tclass._module.StatementTwoShoes?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.StatementTwoShoes.x: Field
uses {
axiom FDim(_module.StatementTwoShoes.x) == 0
   && FieldOfDecl(class._module.StatementTwoShoes?, field$x)
     == _module.StatementTwoShoes.x
   && !$IsGhostField(_module.StatementTwoShoes.x);
}

// StatementTwoShoes.x: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.StatementTwoShoes.x)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.StatementTwoShoes?()
     ==> $Is($Unbox(read($h, $o, _module.StatementTwoShoes.x)): int, TInt));

// StatementTwoShoes.x: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.StatementTwoShoes.x)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.StatementTwoShoes?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.StatementTwoShoes.x)): int, TInt, $h));

const _module.StatementTwoShoes.s: Field
uses {
axiom FDim(_module.StatementTwoShoes.s) == 0
   && FieldOfDecl(class._module.StatementTwoShoes?, field$s)
     == _module.StatementTwoShoes.s
   && !$IsGhostField(_module.StatementTwoShoes.s);
}

// StatementTwoShoes.s: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.StatementTwoShoes.s)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.StatementTwoShoes?()
     ==> $Is($Unbox(read($h, $o, _module.StatementTwoShoes.s)): ref, 
      Tclass._module.StatementTwoShoes?()));

// StatementTwoShoes.s: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.StatementTwoShoes.s)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.StatementTwoShoes?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.StatementTwoShoes.s)): ref, 
      Tclass._module.StatementTwoShoes?(), 
      $h));

// function declaration for _module.StatementTwoShoes.F
function _module.StatementTwoShoes.F($heap: Heap, this: ref, b#0: int) : ref
uses {
// consequence axiom for _module.StatementTwoShoes.F
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, b#0: int :: 
    { _module.StatementTwoShoes.F($Heap, this, b#0) } 
    _module.StatementTwoShoes.F#canCall($Heap, this, b#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.StatementTwoShoes())
           && $IsAlloc(this, Tclass._module.StatementTwoShoes(), $Heap)
           && LitInt(0) <= b#0)
       ==> $Is(_module.StatementTwoShoes.F($Heap, this, b#0), 
        Tclass._module.StatementTwoShoes?()));
// alloc consequence axiom for _module.StatementTwoShoes.F
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, b#0: int :: 
    { $IsAlloc(_module.StatementTwoShoes.F($Heap, this, b#0), 
        Tclass._module.StatementTwoShoes?(), 
        $Heap) } 
    _module.StatementTwoShoes.F#canCall($Heap, this, b#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && this != null
           && $IsAlloc(this, Tclass._module.StatementTwoShoes(), $Heap)
           && LitInt(0) <= b#0)
       ==> $IsAlloc(_module.StatementTwoShoes.F($Heap, this, b#0), 
        Tclass._module.StatementTwoShoes?(), 
        $Heap));
// definition axiom for _module.StatementTwoShoes.F (revealed)
axiom {:id "id178"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, b#0: int :: 
    { _module.StatementTwoShoes.F($Heap, this, b#0), $IsGoodHeap($Heap) } 
    _module.StatementTwoShoes.F#canCall($Heap, this, b#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.StatementTwoShoes())
           && $IsAlloc(this, Tclass._module.StatementTwoShoes(), $Heap)
           && LitInt(0) <= b#0)
       ==> _module.StatementTwoShoes.F($Heap, this, b#0)
         == $Unbox(read($Heap, this, _module.StatementTwoShoes.s)): ref);
}

function _module.StatementTwoShoes.F#canCall($heap: Heap, this: ref, b#0: int) : bool;

function Tclass._module.StatementTwoShoes() : Ty
uses {
// Tclass._module.StatementTwoShoes Tag
axiom Tag(Tclass._module.StatementTwoShoes()) == Tagclass._module.StatementTwoShoes
   && TagFamily(Tclass._module.StatementTwoShoes()) == tytagFamily$StatementTwoShoes;
}

const unique Tagclass._module.StatementTwoShoes: TyTag;

// Box/unbox axiom for Tclass._module.StatementTwoShoes
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.StatementTwoShoes()) } 
  $IsBox(bx, Tclass._module.StatementTwoShoes())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.StatementTwoShoes()));

// frame axiom for _module.StatementTwoShoes.F
axiom (forall $h0: Heap, $h1: Heap, this: ref, b#0: int :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.StatementTwoShoes.F($h1, this, b#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.StatementTwoShoes())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == this ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.StatementTwoShoes.F($h0, this, b#0)
       == _module.StatementTwoShoes.F($h1, this, b#0));

function _module.StatementTwoShoes.F#requires(Heap, ref, int) : bool;

// #requires axiom for _module.StatementTwoShoes.F
axiom (forall $Heap: Heap, this: ref, b#0: int :: 
  { _module.StatementTwoShoes.F#requires($Heap, this, b#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.StatementTwoShoes())
       && $IsAlloc(this, Tclass._module.StatementTwoShoes(), $Heap)
     ==> _module.StatementTwoShoes.F#requires($Heap, this, b#0) == (LitInt(0) <= b#0));

procedure {:verboseName "StatementTwoShoes.F (well-formedness)"} CheckWellformed$$_module.StatementTwoShoes.F(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.StatementTwoShoes())
         && $IsAlloc(this, Tclass._module.StatementTwoShoes(), $Heap), 
    b#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "StatementTwoShoes.F (well-formedness)"} CheckWellformed$$_module.StatementTwoShoes.F(this: ref, b#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    // Check well-formedness of preconditions, and then assume them
    assume {:id "id179"} LitInt(0) <= b#0;
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.StatementTwoShoes.F($Heap, this, b#0), 
          Tclass._module.StatementTwoShoes?());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        b$reqreads#0 := $_ReadsFrame[this, _module.StatementTwoShoes.s];
        assume {:id "id180"} _module.StatementTwoShoes.F($Heap, this, b#0)
           == $Unbox(read($Heap, this, _module.StatementTwoShoes.s)): ref;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.StatementTwoShoes.F($Heap, this, b#0), 
          Tclass._module.StatementTwoShoes?());
        assert {:id "id181"} b$reqreads#0;
        return;

        assume false;
    }
}



procedure {:verboseName "StatementTwoShoes.M (well-formedness)"} CheckWellFormed$$_module.StatementTwoShoes.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.StatementTwoShoes())
         && $IsAlloc(this, Tclass._module.StatementTwoShoes(), $Heap), 
    p#0: ref
       where $Is(p#0, Tclass._module.StatementTwoShoes?())
         && $IsAlloc(p#0, Tclass._module.StatementTwoShoes?(), $Heap), 
    a#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "StatementTwoShoes.M (call)"} Call$$_module.StatementTwoShoes.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.StatementTwoShoes())
         && $IsAlloc(this, Tclass._module.StatementTwoShoes(), $Heap), 
    p#0: ref
       where $Is(p#0, Tclass._module.StatementTwoShoes?())
         && $IsAlloc(p#0, Tclass._module.StatementTwoShoes?(), $Heap), 
    a#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this || $o == p#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "StatementTwoShoes.M (correctness)"} Impl$$_module.StatementTwoShoes.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.StatementTwoShoes())
         && $IsAlloc(this, Tclass._module.StatementTwoShoes(), $Heap), 
    p#0: ref
       where $Is(p#0, Tclass._module.StatementTwoShoes?())
         && $IsAlloc(p#0, Tclass._module.StatementTwoShoes?(), $Heap), 
    a#0: int)
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this || $o == p#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "StatementTwoShoes.M (correctness)"} Impl$$_module.StatementTwoShoes.M(this: ref, p#0: ref, a#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: int;
  var ##b#0: int;
  var $rhs#1: int;
  var $rhs#2: int;
  var ##b#1: int;

    // AddMethodImpl: M, Impl$$_module.StatementTwoShoes.M
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this || $o == p#0);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy(88,9)
    assert {:id "id182"} p#0 != null;
    assume true;
    assert {:id "id183"} $_ModifiesFrame[p#0, _module.StatementTwoShoes.x];
    assume true;
    $rhs#0 := a#0;
    $Heap := update($Heap, p#0, _module.StatementTwoShoes.x, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy(89,12)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.StatementTwoShoes?(), $Heap);
    ##b#0 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#0, TInt, $Heap);
    assert {:id "id186"} {:subsumption 0} LitInt(0) <= ##b#0;
    assume LitInt(0) <= ##b#0;
    assume _module.StatementTwoShoes.F#canCall($Heap, this, a#0);
    assert {:id "id187"} _module.StatementTwoShoes.F($Heap, this, a#0) != null;
    assume _module.StatementTwoShoes.F#canCall($Heap, this, a#0);
    assert {:id "id188"} $_ModifiesFrame[_module.StatementTwoShoes.F($Heap, this, a#0), _module.StatementTwoShoes.x];
    assume true;
    $rhs#1 := a#0;
    $Heap := update($Heap, 
      _module.StatementTwoShoes.F($Heap, this, a#0), 
      _module.StatementTwoShoes.x, 
      $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy(90,7)
    assume true;
    assert {:id "id191"} $_ModifiesFrame[this, _module.StatementTwoShoes.x];
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.StatementTwoShoes?(), $Heap);
    ##b#1 := a#0 - 10;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#1, TInt, $Heap);
    assert {:id "id192"} {:subsumption 0} LitInt(0) <= ##b#1;
    assume LitInt(0) <= ##b#1;
    assume _module.StatementTwoShoes.F#canCall($Heap, this, a#0 - 10);
    assert {:id "id193"} _module.StatementTwoShoes.F($Heap, this, a#0 - 10) != null;
    assume _module.StatementTwoShoes.F#canCall($Heap, this, a#0 - 10);
    $rhs#2 := $Unbox(read($Heap, 
        _module.StatementTwoShoes.F($Heap, this, a#0 - 10), 
        _module.StatementTwoShoes.x)): int;
    $Heap := update($Heap, this, _module.StatementTwoShoes.x, $Box($rhs#2));
    assume $IsGoodHeap($Heap);
}



procedure {:verboseName "StatementTwoShoes.N (well-formedness)"} CheckWellFormed$$_module.StatementTwoShoes.N(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.StatementTwoShoes())
         && $IsAlloc(this, Tclass._module.StatementTwoShoes(), $Heap), 
    a#0: int, 
    b#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "StatementTwoShoes.N (call)"} Call$$_module.StatementTwoShoes.N(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.StatementTwoShoes())
         && $IsAlloc(this, Tclass._module.StatementTwoShoes(), $Heap), 
    a#0: int, 
    b#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "StatementTwoShoes.N (correctness)"} Impl$$_module.StatementTwoShoes.N(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.StatementTwoShoes())
         && $IsAlloc(this, Tclass._module.StatementTwoShoes(), $Heap), 
    a#0: int, 
    b#0: int)
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "StatementTwoShoes.N (correctness)"} Impl$$_module.StatementTwoShoes.N(this: ref, a#0: int, b#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: N, Impl$$_module.StatementTwoShoes.N
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy(95,5)
    assert {:id "id196"} {:subsumption 0} a#0 != 0;
    assert {:id "id197"} {:subsumption 0} a#0 != 0;
    assume true;
    assert {:id "id198"} Div(5, a#0) == Div(5, a#0);
    // ----- assume statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy(96,5)
    assert {:id "id199"} {:subsumption 0} b#0 != 0;
    assume true;
    assume {:id "id200"} Div(20, b#0) == LitInt(5);
}



procedure {:verboseName "StatementTwoShoes.O (well-formedness)"} CheckWellFormed$$_module.StatementTwoShoes.O(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.StatementTwoShoes())
         && $IsAlloc(this, Tclass._module.StatementTwoShoes(), $Heap), 
    a#0: int)
   returns (b#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "StatementTwoShoes.O (call)"} Call$$_module.StatementTwoShoes.O(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.StatementTwoShoes())
         && $IsAlloc(this, Tclass._module.StatementTwoShoes(), $Heap), 
    a#0: int)
   returns (b#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "StatementTwoShoes.O (correctness)"} Impl$$_module.StatementTwoShoes.O(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.StatementTwoShoes())
         && $IsAlloc(this, Tclass._module.StatementTwoShoes(), $Heap), 
    a#0: int)
   returns (b#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "StatementTwoShoes.O (correctness)"} Impl$$_module.StatementTwoShoes.O(this: ref, a#0: int) returns (b#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: O, Impl$$_module.StatementTwoShoes.O
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy(101,5)
    assert {:id "id201"} a#0 != 0;
    assume true;
    if (Div(20, a#0) == LitInt(5))
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy(102,9)
        assume true;
        assume true;
        b#0 := a#0;
    }
    else
    {
    }
}



procedure {:verboseName "StatementTwoShoes.P (well-formedness)"} CheckWellFormed$$_module.StatementTwoShoes.P(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.StatementTwoShoes())
         && $IsAlloc(this, Tclass._module.StatementTwoShoes(), $Heap), 
    a#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "StatementTwoShoes.P (call)"} Call$$_module.StatementTwoShoes.P(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.StatementTwoShoes())
         && $IsAlloc(this, Tclass._module.StatementTwoShoes(), $Heap), 
    a#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "StatementTwoShoes.P (correctness)"} Impl$$_module.StatementTwoShoes.P(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.StatementTwoShoes())
         && $IsAlloc(this, Tclass._module.StatementTwoShoes(), $Heap), 
    a#0: int)
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "StatementTwoShoes.P (correctness)"} Impl$$_module.StatementTwoShoes.P(this: ref, a#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $Heap_at_0: Heap;
  var $PreLoopHeap$loop#0: Heap;
  var $w$loop#0: bool;

    // AddMethodImpl: P, Impl$$_module.StatementTwoShoes.P
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    $Heap_at_0 := $Heap;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy(108,5)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
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
      free invariant true;
    {
        if (!$w$loop#0)
        {
            assume false;
        }

        assert {:id "id203"} a#0 != 0;
        assume true;
        if (Div(20, a#0) != LitInt(5))
        {
            break;
        }

        // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy(109,7)
        goto after_0;

      continue_0:
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy(108,5)
        assert {:id "id204"} false;
    }

  after_0:
}



procedure {:verboseName "StatementTwoShoes.Q (well-formedness)"} CheckWellFormed$$_module.StatementTwoShoes.Q(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.StatementTwoShoes())
         && $IsAlloc(this, Tclass._module.StatementTwoShoes(), $Heap), 
    a#0: int, 
    b#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "StatementTwoShoes.Q (call)"} Call$$_module.StatementTwoShoes.Q(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.StatementTwoShoes())
         && $IsAlloc(this, Tclass._module.StatementTwoShoes(), $Heap), 
    a#0: int, 
    b#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "StatementTwoShoes.Q (correctness)"} Impl$$_module.StatementTwoShoes.Q(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.StatementTwoShoes())
         && $IsAlloc(this, Tclass._module.StatementTwoShoes(), $Heap), 
    a#0: int, 
    b#0: int)
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "StatementTwoShoes.Q (correctness)"} Impl$$_module.StatementTwoShoes.Q(this: ref, a#0: int, b#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: ref;
  var $decr_init$loop#01: ref;
  var $decr_init$loop#02: int;
  var $w$loop#0: bool;
  var ##b#0: int;
  var ##b#1: int;
  var $decr$loop#00: ref;
  var $decr$loop#01: ref;
  var $decr$loop#02: int;
  var $PreLoopHeap$loop#1: Heap;
  var $decr_init$loop#10: ref;
  var $decr_init$loop#11: int;
  var $w$loop#1: bool;
  var ##b#2: int;
  var $decr$loop#10: ref;
  var $decr$loop#11: int;

    // AddMethodImpl: Q, Impl$$_module.StatementTwoShoes.Q
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy(115,11)
    assume true;
    assume true;
    i#0 := LitInt(1);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy(116,5)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := _module.StatementTwoShoes.F($Heap, this, i#0);
    $decr_init$loop#01 := _module.StatementTwoShoes.F($Heap, this, a#0);
    $decr_init$loop#02 := a#0 - i#0;
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
      free invariant (_module.StatementTwoShoes.F($Heap, this, i#0) != null
           ==> $decr_init$loop#00 != null)
         && ((_module.StatementTwoShoes.F($Heap, this, i#0) != null
             <==> $decr_init$loop#00 != null)
           ==> (_module.StatementTwoShoes.F($Heap, this, a#0) != null
               ==> $decr_init$loop#01 != null)
             && ((_module.StatementTwoShoes.F($Heap, this, a#0) != null
                 <==> $decr_init$loop#01 != null)
               ==> a#0 - i#0 <= $decr_init$loop#02));
    {
        if (!$w$loop#0)
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.StatementTwoShoes?(), $Heap);
            ##b#0 := i#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#0, TInt, $Heap);
            assert {:id "id206"} {:subsumption 0} LitInt(0) <= ##b#0;
            assume LitInt(0) <= ##b#0;
            assume _module.StatementTwoShoes.F#canCall($Heap, this, i#0);
            assume _module.StatementTwoShoes.F#canCall($Heap, this, i#0);
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.StatementTwoShoes?(), $Heap);
            ##b#1 := a#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1, TInt, $Heap);
            assert {:id "id207"} {:subsumption 0} LitInt(0) <= ##b#1;
            assume LitInt(0) <= ##b#1;
            assume _module.StatementTwoShoes.F#canCall($Heap, this, a#0);
            assume _module.StatementTwoShoes.F#canCall($Heap, this, a#0);
            assume true;
            assume false;
        }

        assume true;
        if (a#0 <= i#0)
        {
            break;
        }

        $decr$loop#00 := _module.StatementTwoShoes.F($Heap, this, i#0);
        $decr$loop#01 := _module.StatementTwoShoes.F($Heap, this, a#0);
        $decr$loop#02 := a#0 - i#0;
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy(119,9)
        assume true;
        assume true;
        i#0 := i#0 + 1;
        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy(116,5)
        assert {:id "id209"} 0 <= $decr$loop#02
           || (_module.StatementTwoShoes.F($Heap, this, i#0) == null && $decr$loop#00 != null)
           || (_module.StatementTwoShoes.F($Heap, this, a#0) == null && $decr$loop#01 != null)
           || a#0 - i#0 == $decr$loop#02;
        assert {:id "id210"} (_module.StatementTwoShoes.F($Heap, this, i#0) == null && $decr$loop#00 != null)
           || ((_module.StatementTwoShoes.F($Heap, this, i#0) != null
               <==> $decr$loop#00 != null)
             && ((_module.StatementTwoShoes.F($Heap, this, a#0) == null && $decr$loop#01 != null)
               || ((_module.StatementTwoShoes.F($Heap, this, a#0) != null
                   <==> $decr$loop#01 != null)
                 && a#0 - i#0 < $decr$loop#02)));
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy(121,7)
    assume true;
    assume true;
    i#0 := LitInt(1);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy(122,5)
    // Assume Fuel Constant
    $PreLoopHeap$loop#1 := $Heap;
    $decr_init$loop#10 := _module.StatementTwoShoes.F($Heap, this, b#0);
    $decr_init$loop#11 := a#0 - i#0;
    havoc $w$loop#1;
    while (true)
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#1[$o]);
      free invariant $HeapSucc($PreLoopHeap$loop#1, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#1, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#1, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant (_module.StatementTwoShoes.F($Heap, this, b#0) != null
           ==> $decr_init$loop#10 != null)
         && ((_module.StatementTwoShoes.F($Heap, this, b#0) != null
             <==> $decr_init$loop#10 != null)
           ==> a#0 - i#0 <= $decr_init$loop#11);
    {
        if (!$w$loop#1)
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.StatementTwoShoes?(), $Heap);
            ##b#2 := b#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#2, TInt, $Heap);
            assert {:id "id212"} {:subsumption 0} LitInt(0) <= ##b#2;
            assume LitInt(0) <= ##b#2;
            assume _module.StatementTwoShoes.F#canCall($Heap, this, b#0);
            assume _module.StatementTwoShoes.F#canCall($Heap, this, b#0);
            assume true;
            assume false;
        }

        assume true;
        if (a#0 <= i#0)
        {
            break;
        }

        $decr$loop#10 := _module.StatementTwoShoes.F($Heap, this, b#0);
        $decr$loop#11 := a#0 - i#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy(125,9)
        assume true;
        assume true;
        i#0 := i#0 + 1;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy(122,5)
        assert {:id "id214"} 0 <= $decr$loop#11
           || (_module.StatementTwoShoes.F($Heap, this, b#0) == null && $decr$loop#10 != null)
           || a#0 - i#0 == $decr$loop#11;
        assert {:id "id215"} (_module.StatementTwoShoes.F($Heap, this, b#0) == null && $decr$loop#10 != null)
           || ((_module.StatementTwoShoes.F($Heap, this, b#0) != null
               <==> $decr$loop#10 != null)
             && a#0 - i#0 < $decr$loop#11);
    }
}



procedure {:verboseName "StatementTwoShoes.R (well-formedness)"} CheckWellFormed$$_module.StatementTwoShoes.R(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.StatementTwoShoes())
         && $IsAlloc(this, Tclass._module.StatementTwoShoes(), $Heap), 
    a#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "StatementTwoShoes.R (call)"} Call$$_module.StatementTwoShoes.R(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.StatementTwoShoes())
         && $IsAlloc(this, Tclass._module.StatementTwoShoes(), $Heap), 
    a#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "StatementTwoShoes.R (correctness)"} Impl$$_module.StatementTwoShoes.R(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.StatementTwoShoes())
         && $IsAlloc(this, Tclass._module.StatementTwoShoes(), $Heap), 
    a#0: int)
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "StatementTwoShoes.R (correctness)"} Impl$$_module.StatementTwoShoes.R(this: ref, a#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: ref;
  var $decr_init$loop#01: int;
  var $w$loop#0: bool;
  var ##b#0: int;
  var newtype$check#0: ref;
  var ##b#1: int;
  var $decr$loop#00: ref;
  var $decr$loop#01: int;

    // AddMethodImpl: R, Impl$$_module.StatementTwoShoes.R
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy(131,11)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy(132,5)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := _module.StatementTwoShoes.F($Heap, this, a#0);
    $decr_init$loop#01 := 100 - i#0;
    havoc $w$loop#0;
    while (true)
      free invariant $w$loop#0 ==> _module.StatementTwoShoes.F#canCall($Heap, this, a#0);
      invariant {:id "id219"} $w$loop#0 ==> _module.StatementTwoShoes.F($Heap, this, a#0) != null;
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
      free invariant (_module.StatementTwoShoes.F($Heap, this, a#0) != null
           ==> $decr_init$loop#00 != null)
         && ((_module.StatementTwoShoes.F($Heap, this, a#0) != null
             <==> $decr_init$loop#00 != null)
           ==> 100 - i#0 <= $decr_init$loop#01);
    {
        if (!$w$loop#0)
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.StatementTwoShoes?(), $Heap);
            ##b#0 := a#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#0, TInt, $Heap);
            assert {:id "id217"} {:subsumption 0} LitInt(0) <= ##b#0;
            assume _module.StatementTwoShoes.F#canCall($Heap, this, a#0);
            newtype$check#0 := null;
            assume _module.StatementTwoShoes.F#canCall($Heap, this, a#0);
            assume {:id "id218"} _module.StatementTwoShoes.F($Heap, this, a#0) != null;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.StatementTwoShoes?(), $Heap);
            ##b#1 := a#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1, TInt, $Heap);
            assert {:id "id220"} {:subsumption 0} LitInt(0) <= ##b#1;
            assume LitInt(0) <= ##b#1;
            assume _module.StatementTwoShoes.F#canCall($Heap, this, a#0);
            assume _module.StatementTwoShoes.F#canCall($Heap, this, a#0);
            assume true;
            assume false;
        }

        assume true;
        if (100 <= i#0)
        {
            break;
        }

        $decr$loop#00 := _module.StatementTwoShoes.F($Heap, this, a#0);
        $decr$loop#01 := 100 - i#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy(136,9)
        assume true;
        assume true;
        i#0 := i#0 + 1;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy(132,5)
        assert {:id "id222"} 0 <= $decr$loop#01
           || (_module.StatementTwoShoes.F($Heap, this, a#0) == null && $decr$loop#00 != null)
           || 100 - i#0 == $decr$loop#01;
        assert {:id "id223"} (_module.StatementTwoShoes.F($Heap, this, a#0) == null && $decr$loop#00 != null)
           || ((_module.StatementTwoShoes.F($Heap, this, a#0) != null
               <==> $decr$loop#00 != null)
             && 100 - i#0 < $decr$loop#01);
        assume _module.StatementTwoShoes.F#canCall($Heap, this, a#0);
    }
}



procedure {:verboseName "StatementTwoShoes.S (well-formedness)"} CheckWellFormed$$_module.StatementTwoShoes.S(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.StatementTwoShoes())
         && $IsAlloc(this, Tclass._module.StatementTwoShoes(), $Heap), 
    a#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "StatementTwoShoes.S (call)"} Call$$_module.StatementTwoShoes.S(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.StatementTwoShoes())
         && $IsAlloc(this, Tclass._module.StatementTwoShoes(), $Heap), 
    a#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "StatementTwoShoes.S (correctness)"} Impl$$_module.StatementTwoShoes.S(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.StatementTwoShoes())
         && $IsAlloc(this, Tclass._module.StatementTwoShoes(), $Heap), 
    a#0: int)
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "StatementTwoShoes.S (correctness)"} Impl$$_module.StatementTwoShoes.S(this: ref, a#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var j#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: ref;
  var $decr_init$loop#01: int;
  var $w$loop#0: bool;
  var ##b#0: int;
  var $decr$loop#00: ref;
  var $decr$loop#01: int;

    // AddMethodImpl: S, Impl$$_module.StatementTwoShoes.S
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy(142,11)
    assume true;
    assume true;
    j#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy(143,5)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := _module.StatementTwoShoes.F($Heap, this, 101 - j#0);
    $decr_init$loop#01 := 100 - j#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id226"} $w$loop#0 ==> j#0 <= LitInt(100);
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
      free invariant (_module.StatementTwoShoes.F($Heap, this, 101 - j#0) != null
           ==> $decr_init$loop#00 != null)
         && ((_module.StatementTwoShoes.F($Heap, this, 101 - j#0) != null
             <==> $decr_init$loop#00 != null)
           ==> 100 - j#0 <= $decr_init$loop#01);
    {
        if (!$w$loop#0)
        {
            assume true;
            assume {:id "id225"} j#0 <= LitInt(100);
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.StatementTwoShoes?(), $Heap);
            ##b#0 := 101 - j#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#0, TInt, $Heap);
            assert {:id "id227"} {:subsumption 0} LitInt(0) <= ##b#0;
            assume LitInt(0) <= ##b#0;
            assume _module.StatementTwoShoes.F#canCall($Heap, this, 101 - j#0);
            assume _module.StatementTwoShoes.F#canCall($Heap, this, 101 - j#0);
            assume true;
            assume false;
        }

        assert {:id "id228"} a#0 != 0;
        if (Div(20, a#0) == LitInt(5))
        {
        }

        assume true;
        if (!(Div(20, a#0) == LitInt(5) && j#0 < 100))
        {
            break;
        }

        $decr$loop#00 := _module.StatementTwoShoes.F($Heap, this, 101 - j#0);
        $decr$loop#01 := 100 - j#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy(147,9)
        assume true;
        assume true;
        j#0 := j#0 + 1;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy(143,5)
        assert {:id "id230"} 0 <= $decr$loop#01
           || (_module.StatementTwoShoes.F($Heap, this, 101 - j#0) == null
             && $decr$loop#00 != null)
           || 100 - j#0 == $decr$loop#01;
        assert {:id "id231"} (_module.StatementTwoShoes.F($Heap, this, 101 - j#0) == null
             && $decr$loop#00 != null)
           || ((_module.StatementTwoShoes.F($Heap, this, 101 - j#0) != null
               <==> $decr$loop#00 != null)
             && 100 - j#0 < $decr$loop#01);
        assume true;
    }
}



procedure {:verboseName "StatementTwoShoes.T (well-formedness)"} CheckWellFormed$$_module.StatementTwoShoes.T(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.StatementTwoShoes())
         && $IsAlloc(this, Tclass._module.StatementTwoShoes(), $Heap), 
    a#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "StatementTwoShoes.T (well-formedness)"} CheckWellFormed$$_module.StatementTwoShoes.T(this: ref, a#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: T, CheckWellFormed$$_module.StatementTwoShoes.T
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume {:id "id232"} a#0 != 0;
    assert {:id "id233"} a#0 != 0;
    assume {:id "id234"} Div(20, a#0) == LitInt(5);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "StatementTwoShoes.T (call)"} Call$$_module.StatementTwoShoes.T(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.StatementTwoShoes())
         && $IsAlloc(this, Tclass._module.StatementTwoShoes(), $Heap), 
    a#0: int);
  // user-defined preconditions
  requires {:id "id235"} a#0 != 0;
  requires {:id "id236"} Div(20, a#0) == LitInt(5);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "StatementTwoShoes.T (correctness)"} Impl$$_module.StatementTwoShoes.T(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.StatementTwoShoes())
         && $IsAlloc(this, Tclass._module.StatementTwoShoes(), $Heap), 
    a#0: int)
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id237"} a#0 != 0;
  requires {:id "id238"} Div(20, a#0) == LitInt(5);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "StatementTwoShoes.T (correctness)"} Impl$$_module.StatementTwoShoes.T(this: ref, a#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var k#0: int;
  var j#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var $PreLoopHeap$loop#1: Heap;
  var $decr_init$loop#10: int;
  var $w$loop#1: bool;
  var $decr$loop#10: int;

    // AddMethodImpl: T, Impl$$_module.StatementTwoShoes.T
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy(154,11)
    assume true;
    assume true;
    k#0 := a#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy(155,11)
    assume true;
    assume true;
    j#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy(156,5)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := 100 - j#0;
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
      free invariant 100 - j#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assert {:id "id241"} k#0 != 0;
        if (Div(20, k#0) == LitInt(5))
        {
        }

        assume true;
        if (!(Div(20, k#0) == LitInt(5) && j#0 < 100))
        {
            break;
        }

        $decr$loop#00 := 100 - j#0;
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy(159,9)
        assume true;
        assume true;
        j#0 := j#0 + 1;
        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy(156,5)
        assert {:id "id243"} 0 <= $decr$loop#00 || 100 - j#0 == $decr$loop#00;
        assert {:id "id244"} 100 - j#0 < $decr$loop#00;
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy(161,7)
    assume true;
    assume true;
    j#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy(162,5)
    // Assume Fuel Constant
    $PreLoopHeap$loop#1 := $Heap;
    $decr_init$loop#10 := 100 - j#0;
    havoc $w$loop#1;
    while (true)
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#1[$o]);
      free invariant $HeapSucc($PreLoopHeap$loop#1, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#1, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#1, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant 100 - j#0 <= $decr_init$loop#10;
    {
        if (!$w$loop#1)
        {
            assume true;
            assume false;
        }

        assert {:id "id246"} k#0 != 0;
        if (Div(20, k#0) == LitInt(5))
        {
        }

        assume true;
        if (!(Div(20, k#0) == LitInt(5) && j#0 < 100))
        {
            break;
        }

        $decr$loop#10 := 100 - j#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy(165,9)
        assume true;
        havoc k#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy(166,9)
        assume true;
        assume true;
        j#0 := j#0 + 1;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy(162,5)
        assert {:id "id248"} 0 <= $decr$loop#10 || 100 - j#0 == $decr$loop#10;
        assert {:id "id249"} 100 - j#0 < $decr$loop#10;
    }
}



procedure {:verboseName "StatementTwoShoes.U (well-formedness)"} CheckWellFormed$$_module.StatementTwoShoes.U(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.StatementTwoShoes())
         && $IsAlloc(this, Tclass._module.StatementTwoShoes(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "StatementTwoShoes.U (call)"} Call$$_module.StatementTwoShoes.U(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.StatementTwoShoes())
         && $IsAlloc(this, Tclass._module.StatementTwoShoes(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "StatementTwoShoes.U (correctness)"} Impl$$_module.StatementTwoShoes.U(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.StatementTwoShoes())
         && $IsAlloc(this, Tclass._module.StatementTwoShoes(), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "StatementTwoShoes.U (correctness)"} Impl$$_module.StatementTwoShoes.U(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var ##b#0: int;
  var $decr$loop#00: int;
  var $PreLoopHeap$loop#1: Heap;
  var $decr_init$loop#10: int;
  var $w$loop#1: bool;
  var ##b#1: int;
  var $decr$loop#10: int;

    // AddMethodImpl: U, Impl$$_module.StatementTwoShoes.U
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy(172,11)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy(173,5)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := 100 - i#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id252"} $w$loop#0 ==> i#0 <= LitInt(100);
      free invariant $w$loop#0 ==> _module.StatementTwoShoes.F#canCall($Heap, this, 123 - i#0);
      invariant {:id "id255"} $w$loop#0 ==> _module.StatementTwoShoes.F($Heap, this, 123 - i#0) == this;
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
      free invariant 100 - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume {:id "id251"} i#0 <= LitInt(100);
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.StatementTwoShoes?(), $Heap);
            ##b#0 := 123 - i#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#0, TInt, $Heap);
            assert {:id "id253"} {:subsumption 0} LitInt(0) <= ##b#0;
            assume _module.StatementTwoShoes.F#canCall($Heap, this, 123 - i#0);
            assume _module.StatementTwoShoes.F#canCall($Heap, this, 123 - i#0);
            assume {:id "id254"} _module.StatementTwoShoes.F($Heap, this, 123 - i#0) == this;
            assume true;
            assume false;
        }

        assume true;
        if (100 <= i#0)
        {
            break;
        }

        $decr$loop#00 := 100 - i#0;
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy(177,9)
        assume true;
        assume true;
        i#0 := i#0 + 1;
        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy(173,5)
        assert {:id "id257"} 0 <= $decr$loop#00 || 100 - i#0 == $decr$loop#00;
        assert {:id "id258"} 100 - i#0 < $decr$loop#00;
        assume i#0 <= LitInt(100)
           ==> _module.StatementTwoShoes.F#canCall($Heap, this, 123 - i#0);
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy(179,7)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy(180,5)
    // Assume Fuel Constant
    $PreLoopHeap$loop#1 := $Heap;
    $decr_init$loop#10 := 100 - i#0;
    havoc $w$loop#1;
    while (true)
      free invariant $w$loop#1
         ==> _module.StatementTwoShoes.F#canCall($Heap, this, (if i#0 == LitInt(77) then -3 else i#0));
      invariant {:id "id262"} $w$loop#1
         ==> _module.StatementTwoShoes.F($Heap, this, (if i#0 == LitInt(77) then -3 else i#0))
           == this;
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#1[$o]);
      free invariant $HeapSucc($PreLoopHeap$loop#1, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#1, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#1, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant 100 - i#0 <= $decr_init$loop#10;
    {
        if (!$w$loop#1)
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.StatementTwoShoes?(), $Heap);
            if (i#0 == LitInt(77))
            {
            }
            else
            {
            }

            ##b#1 := (if i#0 == LitInt(77) then -3 else i#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1, TInt, $Heap);
            assert {:id "id260"} {:subsumption 0} LitInt(0) <= ##b#1;
            assume _module.StatementTwoShoes.F#canCall($Heap, this, (if i#0 == LitInt(77) then -3 else i#0));
            assume _module.StatementTwoShoes.F#canCall($Heap, this, (if i#0 == LitInt(77) then -3 else i#0));
            assume {:id "id261"} _module.StatementTwoShoes.F($Heap, this, (if i#0 == LitInt(77) then -3 else i#0))
               == this;
            assume true;
            assume false;
        }

        assume true;
        if (100 <= i#0)
        {
            break;
        }

        $decr$loop#10 := 100 - i#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy(183,9)
        assume true;
        assume true;
        i#0 := i#0 + 1;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy(184,7)
        assume true;
        if (i#0 == LitInt(77))
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy(184,24)
            assume true;
            assume true;
            i#0 := i#0 + 1;
        }
        else
        {
        }

        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy(180,5)
        assert {:id "id265"} 0 <= $decr$loop#10 || 100 - i#0 == $decr$loop#10;
        assert {:id "id266"} 100 - i#0 < $decr$loop#10;
        assume _module.StatementTwoShoes.F#canCall($Heap, this, (if i#0 == LitInt(77) then -3 else i#0));
    }
}



// function declaration for _module.StatementTwoShoes.G
function _module.StatementTwoShoes.G(this: ref, w#0: int) : int
uses {
// definition axiom for _module.StatementTwoShoes.G (revealed)
axiom {:id "id267"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, w#0: int :: 
    { _module.StatementTwoShoes.G(this, w#0) } 
    _module.StatementTwoShoes.G#canCall(this, w#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.StatementTwoShoes()))
       ==> _module.StatementTwoShoes.G(this, w#0) == LitInt(5));
// definition axiom for _module.StatementTwoShoes.G for decreasing-related literals (revealed)
axiom {:id "id268"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, w#0: int :: 
    {:weight 3} { _module.StatementTwoShoes.G(this, LitInt(w#0)) } 
    _module.StatementTwoShoes.G#canCall(this, LitInt(w#0))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.StatementTwoShoes()))
       ==> _module.StatementTwoShoes.G(this, LitInt(w#0)) == LitInt(5));
// definition axiom for _module.StatementTwoShoes.G for all literals (revealed)
axiom {:id "id269"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, w#0: int :: 
    {:weight 3} { _module.StatementTwoShoes.G(Lit(this), LitInt(w#0)) } 
    _module.StatementTwoShoes.G#canCall(Lit(this), LitInt(w#0))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.StatementTwoShoes()))
       ==> _module.StatementTwoShoes.G(Lit(this), LitInt(w#0)) == LitInt(5));
}

function _module.StatementTwoShoes.G#canCall(this: ref, w#0: int) : bool;

function _module.StatementTwoShoes.G#requires(ref, int) : bool;

// #requires axiom for _module.StatementTwoShoes.G
axiom (forall this: ref, w#0: int :: 
  { _module.StatementTwoShoes.G#requires(this, w#0) } 
  this != null && $Is(this, Tclass._module.StatementTwoShoes())
     ==> _module.StatementTwoShoes.G#requires(this, w#0) == true);

procedure {:verboseName "StatementTwoShoes.G (well-formedness)"} CheckWellformed$$_module.StatementTwoShoes.G(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.StatementTwoShoes())
         && $IsAlloc(this, Tclass._module.StatementTwoShoes(), $Heap), 
    w#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.StatementTwoShoes.H
function _module.StatementTwoShoes.H(this: ref, x#0: int) : int
uses {
// definition axiom for _module.StatementTwoShoes.H (revealed)
axiom {:id "id271"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, x#0: int :: 
    { _module.StatementTwoShoes.H(this, x#0) } 
    _module.StatementTwoShoes.H#canCall(this, x#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.StatementTwoShoes()))
       ==> _module.StatementTwoShoes.H(this, x#0) == 0 - x#0);
// definition axiom for _module.StatementTwoShoes.H for decreasing-related literals (revealed)
axiom {:id "id272"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, x#0: int :: 
    {:weight 3} { _module.StatementTwoShoes.H(this, LitInt(x#0)) } 
    _module.StatementTwoShoes.H#canCall(this, LitInt(x#0))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.StatementTwoShoes()))
       ==> _module.StatementTwoShoes.H(this, LitInt(x#0)) == LitInt(0 - x#0));
// definition axiom for _module.StatementTwoShoes.H for all literals (revealed)
axiom {:id "id273"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, x#0: int :: 
    {:weight 3} { _module.StatementTwoShoes.H(Lit(this), LitInt(x#0)) } 
    _module.StatementTwoShoes.H#canCall(Lit(this), LitInt(x#0))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.StatementTwoShoes()))
       ==> _module.StatementTwoShoes.H(Lit(this), LitInt(x#0)) == LitInt(0 - x#0));
}

function _module.StatementTwoShoes.H#canCall(this: ref, x#0: int) : bool;

function _module.StatementTwoShoes.H#requires(ref, int) : bool;

// #requires axiom for _module.StatementTwoShoes.H
axiom (forall this: ref, x#0: int :: 
  { _module.StatementTwoShoes.H#requires(this, x#0) } 
  this != null && $Is(this, Tclass._module.StatementTwoShoes())
     ==> _module.StatementTwoShoes.H#requires(this, x#0) == true);

procedure {:verboseName "StatementTwoShoes.H (well-formedness)"} CheckWellformed$$_module.StatementTwoShoes.H(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.StatementTwoShoes())
         && $IsAlloc(this, Tclass._module.StatementTwoShoes(), $Heap), 
    x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "StatementTwoShoes.W (well-formedness)"} CheckWellFormed$$_module.StatementTwoShoes.W(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.StatementTwoShoes())
         && $IsAlloc(this, Tclass._module.StatementTwoShoes(), $Heap), 
    x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "StatementTwoShoes.W (call)"} Call$$_module.StatementTwoShoes.W(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.StatementTwoShoes())
         && $IsAlloc(this, Tclass._module.StatementTwoShoes(), $Heap), 
    x#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "StatementTwoShoes.W (correctness)"} Impl$$_module.StatementTwoShoes.W(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.StatementTwoShoes())
         && $IsAlloc(this, Tclass._module.StatementTwoShoes(), $Heap), 
    x#0: int)
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "StatementTwoShoes.W (correctness)"} Impl$$_module.StatementTwoShoes.W(this: ref, x#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;

    // AddMethodImpl: W, Impl$$_module.StatementTwoShoes.W
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy(193,11)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy(194,5)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := 100 - i#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id279"} $w$loop#0 ==> Div(5, x#0) != Div(5, x#0);
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
      free invariant 100 - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assert {:id "id276"} {:subsumption 0} x#0 != 0;
            assert {:id "id277"} {:subsumption 0} x#0 != 0;
            assume true;
            assume {:id "id278"} Div(5, x#0) != Div(5, x#0);
            assume true;
            assume false;
        }

        assume true;
        if (100 <= i#0)
        {
            break;
        }

        $decr$loop#00 := 100 - i#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy(198,9)
        assume true;
        assume true;
        i#0 := i#0 + 1;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Definedness.dfy(194,5)
        assert {:id "id281"} 0 <= $decr$loop#00 || 100 - i#0 == $decr$loop#00;
        assert {:id "id282"} 100 - i#0 < $decr$loop#00;
        assume true;
    }
}



// $Is axiom for non-null type _module.StatementTwoShoes
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.StatementTwoShoes()) } 
    { $Is(c#0, Tclass._module.StatementTwoShoes?()) } 
  $Is(c#0, Tclass._module.StatementTwoShoes())
     <==> $Is(c#0, Tclass._module.StatementTwoShoes?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.StatementTwoShoes
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.StatementTwoShoes(), $h) } 
    { $IsAlloc(c#0, Tclass._module.StatementTwoShoes?(), $h) } 
  $IsAlloc(c#0, Tclass._module.StatementTwoShoes(), $h)
     <==> $IsAlloc(c#0, Tclass._module.StatementTwoShoes?(), $h));

const unique class._module.Mountain?: ClassName;

// $Is axiom for class Mountain
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Mountain?()) } 
  $Is($o, Tclass._module.Mountain?())
     <==> $o == null || dtype($o) == Tclass._module.Mountain?());

// $IsAlloc axiom for class Mountain
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Mountain?(), $h) } 
  $IsAlloc($o, Tclass._module.Mountain?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.Mountain.x: Field
uses {
axiom FDim(_module.Mountain.x) == 0
   && FieldOfDecl(class._module.Mountain?, field$x) == _module.Mountain.x
   && !$IsGhostField(_module.Mountain.x);
}

// Mountain.x: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Mountain.x)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Mountain?()
     ==> $Is($Unbox(read($h, $o, _module.Mountain.x)): int, TInt));

// Mountain.x: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Mountain.x)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Mountain?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Mountain.x)): int, TInt, $h));

function Tclass._module.Mountain() : Ty
uses {
// Tclass._module.Mountain Tag
axiom Tag(Tclass._module.Mountain()) == Tagclass._module.Mountain
   && TagFamily(Tclass._module.Mountain()) == tytagFamily$Mountain;
}

const unique Tagclass._module.Mountain: TyTag;

// Box/unbox axiom for Tclass._module.Mountain
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Mountain()) } 
  $IsBox(bx, Tclass._module.Mountain())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Mountain()));

// $Is axiom for non-null type _module.Mountain
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.Mountain()) } 
    { $Is(c#0, Tclass._module.Mountain?()) } 
  $Is(c#0, Tclass._module.Mountain())
     <==> $Is(c#0, Tclass._module.Mountain?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Mountain
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Mountain(), $h) } 
    { $IsAlloc(c#0, Tclass._module.Mountain?(), $h) } 
  $IsAlloc(c#0, Tclass._module.Mountain(), $h)
     <==> $IsAlloc(c#0, Tclass._module.Mountain?(), $h));

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

const unique tytagFamily$Mountain: TyTagFamily;

const unique tytagFamily$SoWellformed: TyTagFamily;

const unique tytagFamily$StatementTwoShoes: TyTagFamily;

const unique field$x: NameFamily;

const unique field$xyz: NameFamily;

const unique field$next: NameFamily;

const unique field$s: NameFamily;
