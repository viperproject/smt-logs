// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DatatypeUpdate.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DatatypeUpdate-@PROC@.smt2 /normalizeNames:0 /emitDebugInformation:1 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DatatypeUpdate.dfy

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

// Box/unbox axiom for bv27
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(27)) } 
  $IsBox(bx, TBitvector(27))
     ==> $Box($Unbox(bx): bv27) == bx && $Is($Unbox(bx): bv27, TBitvector(27)));

axiom (forall v: bv27 :: { $Is(v, TBitvector(27)) } $Is(v, TBitvector(27)));

axiom (forall v: bv27, heap: Heap :: 
  { $IsAlloc(v, TBitvector(27), heap) } 
  $IsAlloc(v, TBitvector(27), heap));

function {:bvbuiltin "bvand"} and_bv27(bv27, bv27) : bv27;

function {:bvbuiltin "bvor"} or_bv27(bv27, bv27) : bv27;

function {:bvbuiltin "bvxor"} xor_bv27(bv27, bv27) : bv27;

function {:bvbuiltin "bvnot"} not_bv27(bv27) : bv27;

function {:bvbuiltin "bvadd"} add_bv27(bv27, bv27) : bv27;

function {:bvbuiltin "bvsub"} sub_bv27(bv27, bv27) : bv27;

function {:bvbuiltin "bvmul"} mul_bv27(bv27, bv27) : bv27;

function {:bvbuiltin "bvudiv"} div_bv27(bv27, bv27) : bv27;

function {:bvbuiltin "bvurem"} mod_bv27(bv27, bv27) : bv27;

function {:bvbuiltin "bvult"} lt_bv27(bv27, bv27) : bool;

function {:bvbuiltin "bvule"} le_bv27(bv27, bv27) : bool;

function {:bvbuiltin "bvuge"} ge_bv27(bv27, bv27) : bool;

function {:bvbuiltin "bvugt"} gt_bv27(bv27, bv27) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv27(bv27, bv27) : bv27;

function {:bvbuiltin "bvlshr"} RightShift_bv27(bv27, bv27) : bv27;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv27(bv27, bv27) : bv27;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv27(bv27, bv27) : bv27;

function {:bvbuiltin "(_ int2bv 27)"} nat_to_bv27(int) : bv27;

function {:bvbuiltin "bv2int"} smt_nat_from_bv27(bv27) : int;

function nat_from_bv27(bv27) : int;

axiom (forall b: bv27 :: 
  { nat_from_bv27(b) } 
  0 <= nat_from_bv27(b)
     && nat_from_bv27(b) < 134217728
     && nat_from_bv27(b) == smt_nat_from_bv27(b));

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

const unique class.NewSyntax.__default: ClassName;

function Tclass.NewSyntax.MyDataType() : Ty
uses {
// Tclass.NewSyntax.MyDataType Tag
axiom Tag(Tclass.NewSyntax.MyDataType()) == Tagclass.NewSyntax.MyDataType
   && TagFamily(Tclass.NewSyntax.MyDataType()) == tytagFamily$MyDataType;
}

const unique Tagclass.NewSyntax.MyDataType: TyTag;

// Box/unbox axiom for Tclass.NewSyntax.MyDataType
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.NewSyntax.MyDataType()) } 
  $IsBox(bx, Tclass.NewSyntax.MyDataType())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.NewSyntax.MyDataType()));

procedure {:verboseName "NewSyntax.test (well-formedness)"} CheckWellFormed$$NewSyntax.__default.test(foo#0: DatatypeType
       where $Is(foo#0, Tclass.NewSyntax.MyDataType())
         && $IsAlloc(foo#0, Tclass.NewSyntax.MyDataType(), $Heap)
         && $IsA#NewSyntax.MyDataType(foo#0), 
    goo#0: DatatypeType
       where $Is(goo#0, Tclass.NewSyntax.MyDataType())
         && $IsAlloc(goo#0, Tclass.NewSyntax.MyDataType(), $Heap)
         && $IsA#NewSyntax.MyDataType(goo#0), 
    hoo#0: DatatypeType
       where $Is(hoo#0, Tclass.NewSyntax.MyDataType())
         && $IsAlloc(hoo#0, Tclass.NewSyntax.MyDataType(), $Heap)
         && $IsA#NewSyntax.MyDataType(hoo#0), 
    x#0: int)
   returns (abc#0: DatatypeType
       where $Is(abc#0, Tclass.NewSyntax.MyDataType())
         && $IsAlloc(abc#0, Tclass.NewSyntax.MyDataType(), $Heap), 
    def#0: DatatypeType
       where $Is(def#0, Tclass.NewSyntax.MyDataType())
         && $IsAlloc(def#0, Tclass.NewSyntax.MyDataType(), $Heap), 
    ghi#0: DatatypeType
       where $Is(ghi#0, Tclass.NewSyntax.MyDataType())
         && $IsAlloc(ghi#0, Tclass.NewSyntax.MyDataType(), $Heap), 
    jkl#0: DatatypeType
       where $Is(jkl#0, Tclass.NewSyntax.MyDataType())
         && $IsAlloc(jkl#0, Tclass.NewSyntax.MyDataType(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NewSyntax.test (well-formedness)"} CheckWellFormed$$NewSyntax.__default.test(foo#0: DatatypeType, goo#0: DatatypeType, hoo#0: DatatypeType, x#0: int)
   returns (abc#0: DatatypeType, 
    def#0: DatatypeType, 
    ghi#0: DatatypeType, 
    jkl#0: DatatypeType)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var dt_update_tmp#0#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var dt_update#myint#0#Z#0: int;
  var let#1#0#0: int;
  var dt_update_tmp#1#Z#0: DatatypeType;
  var let#2#0#0: DatatypeType;
  var dt_update#otherbool#0#Z#0: bool;
  var let#3#0#0: bool;
  var dt_update_tmp#3#Z#0: DatatypeType;
  var let#4#0#0: DatatypeType;
  var dt_update_tmp#2#Z#0: DatatypeType;
  var let#5#0#0: DatatypeType;
  var dt_update#myint#1#Z#0: int;
  var let#6#0#0: int;
  var dt_update#mybool#0#Z#0: bool;
  var let#7#0#0: bool;
  var dt_update_tmp#4#Z#0: DatatypeType;
  var let#8#0#0: DatatypeType;
  var dt_update#42#0#Z#0: int;
  var let#9#0#0: int;


    // AddMethodImpl: test, CheckWellFormed$$NewSyntax.__default.test
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume {:id "id0"} NewSyntax.MyDataType.MyConstructor_q(foo#0);
    assume {:id "id1"} NewSyntax.MyDataType.MyOtherConstructor_q(goo#0);
    assume {:id "id2"} NewSyntax.MyDataType.MyNumericConstructor_q(hoo#0);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc abc#0, def#0, ghi#0, jkl#0;
    assert {:id "id3"} NewSyntax.MyDataType.MyConstructor_q(foo#0);
    havoc dt_update_tmp#0#Z#0;
    assume {:id "id4"} let#0#0#0 == foo#0;
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#0#0#0, Tclass.NewSyntax.MyDataType());
    assume {:id "id5"} dt_update_tmp#0#Z#0 == let#0#0#0;
    havoc dt_update#myint#0#Z#0;
    assume {:id "id6"} let#1#0#0 == x#0 + 2;
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#1#0#0, TInt);
    assume {:id "id7"} dt_update#myint#0#Z#0 == let#1#0#0;
    assert {:id "id8"} NewSyntax.MyDataType.MyConstructor_q(dt_update_tmp#0#Z#0);
    assume {:id "id9"} NewSyntax.MyDataType#Equal(abc#0, 
      (var dt_update_tmp#0#0 := foo#0; 
        (var dt_update#myint#0#0 := x#0 + 2; 
          #NewSyntax.MyDataType.MyConstructor(dt_update#myint#0#0, NewSyntax.MyDataType.mybool(dt_update_tmp#0#0)))));
    assert {:id "id10"} NewSyntax.MyDataType.MyOtherConstructor_q(goo#0);
    havoc dt_update_tmp#1#Z#0;
    assume {:id "id11"} let#2#0#0 == goo#0;
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#2#0#0, Tclass.NewSyntax.MyDataType());
    assume {:id "id12"} dt_update_tmp#1#Z#0 == let#2#0#0;
    havoc dt_update#otherbool#0#Z#0;
    assert {:id "id13"} NewSyntax.MyDataType.MyConstructor_q(foo#0);
    assume {:id "id14"} let#3#0#0 == !NewSyntax.MyDataType.mybool(foo#0);
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#3#0#0, TBool);
    assume {:id "id15"} dt_update#otherbool#0#Z#0 == let#3#0#0;
    assume {:id "id16"} NewSyntax.MyDataType#Equal(def#0, 
      (var dt_update_tmp#1#0 := goo#0; 
        (var dt_update#otherbool#0#0 := !NewSyntax.MyDataType.mybool(foo#0); 
          #NewSyntax.MyDataType.MyOtherConstructor(dt_update#otherbool#0#0))));
    assert {:id "id17"} NewSyntax.MyDataType.MyConstructor_q((var dt_update_tmp#2#0 := foo#0; 
        (var dt_update#myint#1#0 := LitInt(2); 
          #NewSyntax.MyDataType.MyConstructor(dt_update#myint#1#0, NewSyntax.MyDataType.mybool(dt_update_tmp#2#0)))));
    havoc dt_update_tmp#3#Z#0;
    assert {:id "id18"} NewSyntax.MyDataType.MyConstructor_q(foo#0);
    havoc dt_update_tmp#2#Z#0;
    assume {:id "id19"} let#5#0#0 == foo#0;
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#5#0#0, Tclass.NewSyntax.MyDataType());
    assume {:id "id20"} dt_update_tmp#2#Z#0 == let#5#0#0;
    havoc dt_update#myint#1#Z#0;
    assume {:id "id21"} let#6#0#0 == LitInt(2);
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#6#0#0, TInt);
    assume {:id "id22"} dt_update#myint#1#Z#0 == let#6#0#0;
    assert {:id "id23"} NewSyntax.MyDataType.MyConstructor_q(dt_update_tmp#2#Z#0);
    assume {:id "id24"} let#4#0#0
       == #NewSyntax.MyDataType.MyConstructor(dt_update#myint#1#Z#0, NewSyntax.MyDataType.mybool(dt_update_tmp#2#Z#0));
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#4#0#0, Tclass.NewSyntax.MyDataType());
    assume {:id "id25"} dt_update_tmp#3#Z#0 == let#4#0#0;
    havoc dt_update#mybool#0#Z#0;
    assume {:id "id26"} let#7#0#0 == Lit(false);
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#7#0#0, TBool);
    assume {:id "id27"} dt_update#mybool#0#Z#0 == let#7#0#0;
    assert {:id "id28"} NewSyntax.MyDataType.MyConstructor_q(dt_update_tmp#3#Z#0);
    assume {:id "id29"} NewSyntax.MyDataType#Equal(ghi#0, 
      (var dt_update_tmp#3#0 := (var dt_update_tmp#2#0 := foo#0; 
            (var dt_update#myint#1#0 := LitInt(2); 
              #NewSyntax.MyDataType.MyConstructor(dt_update#myint#1#0, NewSyntax.MyDataType.mybool(dt_update_tmp#2#0)))); 
        (var dt_update#mybool#0#0 := Lit(false); 
          #NewSyntax.MyDataType.MyConstructor(NewSyntax.MyDataType.myint(dt_update_tmp#3#0), dt_update#mybool#0#0))));
    assert {:id "id30"} NewSyntax.MyDataType.MyNumericConstructor_q(hoo#0);
    havoc dt_update_tmp#4#Z#0;
    assume {:id "id31"} let#8#0#0 == hoo#0;
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#8#0#0, Tclass.NewSyntax.MyDataType());
    assume {:id "id32"} dt_update_tmp#4#Z#0 == let#8#0#0;
    havoc dt_update#42#0#Z#0;
    assume {:id "id33"} let#9#0#0 == LitInt(7);
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#9#0#0, TInt);
    assume {:id "id34"} dt_update#42#0#Z#0 == let#9#0#0;
    assume {:id "id35"} NewSyntax.MyDataType#Equal(jkl#0, 
      (var dt_update_tmp#4#0 := hoo#0; 
        (var dt_update#42#0#0 := LitInt(7); 
          Lit(#NewSyntax.MyDataType.MyNumericConstructor(dt_update#42#0#0)))));
}



procedure {:verboseName "NewSyntax.test (call)"} Call$$NewSyntax.__default.test(foo#0: DatatypeType
       where $Is(foo#0, Tclass.NewSyntax.MyDataType())
         && $IsAlloc(foo#0, Tclass.NewSyntax.MyDataType(), $Heap)
         && $IsA#NewSyntax.MyDataType(foo#0), 
    goo#0: DatatypeType
       where $Is(goo#0, Tclass.NewSyntax.MyDataType())
         && $IsAlloc(goo#0, Tclass.NewSyntax.MyDataType(), $Heap)
         && $IsA#NewSyntax.MyDataType(goo#0), 
    hoo#0: DatatypeType
       where $Is(hoo#0, Tclass.NewSyntax.MyDataType())
         && $IsAlloc(hoo#0, Tclass.NewSyntax.MyDataType(), $Heap)
         && $IsA#NewSyntax.MyDataType(hoo#0), 
    x#0: int)
   returns (abc#0: DatatypeType
       where $Is(abc#0, Tclass.NewSyntax.MyDataType())
         && $IsAlloc(abc#0, Tclass.NewSyntax.MyDataType(), $Heap), 
    def#0: DatatypeType
       where $Is(def#0, Tclass.NewSyntax.MyDataType())
         && $IsAlloc(def#0, Tclass.NewSyntax.MyDataType(), $Heap), 
    ghi#0: DatatypeType
       where $Is(ghi#0, Tclass.NewSyntax.MyDataType())
         && $IsAlloc(ghi#0, Tclass.NewSyntax.MyDataType(), $Heap), 
    jkl#0: DatatypeType
       where $Is(jkl#0, Tclass.NewSyntax.MyDataType())
         && $IsAlloc(jkl#0, Tclass.NewSyntax.MyDataType(), $Heap));
  // user-defined preconditions
  requires {:id "id36"} NewSyntax.MyDataType.MyConstructor_q(foo#0);
  requires {:id "id37"} NewSyntax.MyDataType.MyOtherConstructor_q(goo#0);
  requires {:id "id38"} NewSyntax.MyDataType.MyNumericConstructor_q(hoo#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#NewSyntax.MyDataType(abc#0)
     && $IsA#NewSyntax.MyDataType((var dt_update_tmp#0#0 := foo#0; 
        (var dt_update#myint#0#0 := x#0 + 2; 
          #NewSyntax.MyDataType.MyConstructor(dt_update#myint#0#0, NewSyntax.MyDataType.mybool(dt_update_tmp#0#0)))));
  ensures {:id "id39"} NewSyntax.MyDataType#Equal(abc#0, 
    (var dt_update_tmp#0#0 := foo#0; 
      (var dt_update#myint#0#0 := x#0 + 2; 
        #NewSyntax.MyDataType.MyConstructor(dt_update#myint#0#0, NewSyntax.MyDataType.mybool(dt_update_tmp#0#0)))));
  free ensures $IsA#NewSyntax.MyDataType(def#0)
     && $IsA#NewSyntax.MyDataType((var dt_update_tmp#1#0 := goo#0; 
        (var dt_update#otherbool#0#0 := !NewSyntax.MyDataType.mybool(foo#0); 
          #NewSyntax.MyDataType.MyOtherConstructor(dt_update#otherbool#0#0))));
  ensures {:id "id40"} NewSyntax.MyDataType#Equal(def#0, 
    (var dt_update_tmp#1#0 := goo#0; 
      (var dt_update#otherbool#0#0 := !NewSyntax.MyDataType.mybool(foo#0); 
        #NewSyntax.MyDataType.MyOtherConstructor(dt_update#otherbool#0#0))));
  free ensures $IsA#NewSyntax.MyDataType(ghi#0)
     && $IsA#NewSyntax.MyDataType((var dt_update_tmp#3#0 := (var dt_update_tmp#2#0 := foo#0; 
            (var dt_update#myint#1#0 := LitInt(2); 
              #NewSyntax.MyDataType.MyConstructor(dt_update#myint#1#0, NewSyntax.MyDataType.mybool(dt_update_tmp#2#0)))); 
        (var dt_update#mybool#0#0 := Lit(false); 
          #NewSyntax.MyDataType.MyConstructor(NewSyntax.MyDataType.myint(dt_update_tmp#3#0), dt_update#mybool#0#0))));
  ensures {:id "id41"} NewSyntax.MyDataType#Equal(ghi#0, 
    (var dt_update_tmp#3#0 := (var dt_update_tmp#2#0 := foo#0; 
          (var dt_update#myint#1#0 := LitInt(2); 
            #NewSyntax.MyDataType.MyConstructor(dt_update#myint#1#0, NewSyntax.MyDataType.mybool(dt_update_tmp#2#0)))); 
      (var dt_update#mybool#0#0 := Lit(false); 
        #NewSyntax.MyDataType.MyConstructor(NewSyntax.MyDataType.myint(dt_update_tmp#3#0), dt_update#mybool#0#0))));
  free ensures $IsA#NewSyntax.MyDataType(jkl#0)
     && $IsA#NewSyntax.MyDataType((var dt_update_tmp#4#0 := hoo#0; 
        (var dt_update#42#0#0 := LitInt(7); 
          Lit(#NewSyntax.MyDataType.MyNumericConstructor(dt_update#42#0#0)))));
  ensures {:id "id42"} NewSyntax.MyDataType#Equal(jkl#0, 
    (var dt_update_tmp#4#0 := hoo#0; 
      (var dt_update#42#0#0 := LitInt(7); 
        Lit(#NewSyntax.MyDataType.MyNumericConstructor(dt_update#42#0#0)))));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "NewSyntax.test (correctness)"} Impl$$NewSyntax.__default.test(foo#0: DatatypeType
       where $Is(foo#0, Tclass.NewSyntax.MyDataType())
         && $IsAlloc(foo#0, Tclass.NewSyntax.MyDataType(), $Heap)
         && $IsA#NewSyntax.MyDataType(foo#0), 
    goo#0: DatatypeType
       where $Is(goo#0, Tclass.NewSyntax.MyDataType())
         && $IsAlloc(goo#0, Tclass.NewSyntax.MyDataType(), $Heap)
         && $IsA#NewSyntax.MyDataType(goo#0), 
    hoo#0: DatatypeType
       where $Is(hoo#0, Tclass.NewSyntax.MyDataType())
         && $IsAlloc(hoo#0, Tclass.NewSyntax.MyDataType(), $Heap)
         && $IsA#NewSyntax.MyDataType(hoo#0), 
    x#0: int)
   returns (abc#0: DatatypeType
       where $Is(abc#0, Tclass.NewSyntax.MyDataType())
         && $IsAlloc(abc#0, Tclass.NewSyntax.MyDataType(), $Heap), 
    def#0: DatatypeType
       where $Is(def#0, Tclass.NewSyntax.MyDataType())
         && $IsAlloc(def#0, Tclass.NewSyntax.MyDataType(), $Heap), 
    ghi#0: DatatypeType
       where $Is(ghi#0, Tclass.NewSyntax.MyDataType())
         && $IsAlloc(ghi#0, Tclass.NewSyntax.MyDataType(), $Heap), 
    jkl#0: DatatypeType
       where $Is(jkl#0, Tclass.NewSyntax.MyDataType())
         && $IsAlloc(jkl#0, Tclass.NewSyntax.MyDataType(), $Heap), 
    $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id43"} NewSyntax.MyDataType.MyConstructor_q(foo#0);
  requires {:id "id44"} NewSyntax.MyDataType.MyOtherConstructor_q(goo#0);
  requires {:id "id45"} NewSyntax.MyDataType.MyNumericConstructor_q(hoo#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#NewSyntax.MyDataType(abc#0)
     && $IsA#NewSyntax.MyDataType((var dt_update_tmp#0#0 := foo#0; 
        (var dt_update#myint#0#0 := x#0 + 2; 
          #NewSyntax.MyDataType.MyConstructor(dt_update#myint#0#0, NewSyntax.MyDataType.mybool(dt_update_tmp#0#0)))));
  ensures {:id "id46"} NewSyntax.MyDataType#Equal(abc#0, 
    (var dt_update_tmp#0#0 := foo#0; 
      (var dt_update#myint#0#0 := x#0 + 2; 
        #NewSyntax.MyDataType.MyConstructor(dt_update#myint#0#0, NewSyntax.MyDataType.mybool(dt_update_tmp#0#0)))));
  free ensures $IsA#NewSyntax.MyDataType(def#0)
     && $IsA#NewSyntax.MyDataType((var dt_update_tmp#1#0 := goo#0; 
        (var dt_update#otherbool#0#0 := !NewSyntax.MyDataType.mybool(foo#0); 
          #NewSyntax.MyDataType.MyOtherConstructor(dt_update#otherbool#0#0))));
  ensures {:id "id47"} NewSyntax.MyDataType#Equal(def#0, 
    (var dt_update_tmp#1#0 := goo#0; 
      (var dt_update#otherbool#0#0 := !NewSyntax.MyDataType.mybool(foo#0); 
        #NewSyntax.MyDataType.MyOtherConstructor(dt_update#otherbool#0#0))));
  free ensures $IsA#NewSyntax.MyDataType(ghi#0)
     && $IsA#NewSyntax.MyDataType((var dt_update_tmp#3#0 := (var dt_update_tmp#2#0 := foo#0; 
            (var dt_update#myint#1#0 := LitInt(2); 
              #NewSyntax.MyDataType.MyConstructor(dt_update#myint#1#0, NewSyntax.MyDataType.mybool(dt_update_tmp#2#0)))); 
        (var dt_update#mybool#0#0 := Lit(false); 
          #NewSyntax.MyDataType.MyConstructor(NewSyntax.MyDataType.myint(dt_update_tmp#3#0), dt_update#mybool#0#0))));
  ensures {:id "id48"} NewSyntax.MyDataType#Equal(ghi#0, 
    (var dt_update_tmp#3#0 := (var dt_update_tmp#2#0 := foo#0; 
          (var dt_update#myint#1#0 := LitInt(2); 
            #NewSyntax.MyDataType.MyConstructor(dt_update#myint#1#0, NewSyntax.MyDataType.mybool(dt_update_tmp#2#0)))); 
      (var dt_update#mybool#0#0 := Lit(false); 
        #NewSyntax.MyDataType.MyConstructor(NewSyntax.MyDataType.myint(dt_update_tmp#3#0), dt_update#mybool#0#0))));
  free ensures $IsA#NewSyntax.MyDataType(jkl#0)
     && $IsA#NewSyntax.MyDataType((var dt_update_tmp#4#0 := hoo#0; 
        (var dt_update#42#0#0 := LitInt(7); 
          Lit(#NewSyntax.MyDataType.MyNumericConstructor(dt_update#42#0#0)))));
  ensures {:id "id49"} NewSyntax.MyDataType#Equal(jkl#0, 
    (var dt_update_tmp#4#0 := hoo#0; 
      (var dt_update#42#0#0 := LitInt(7); 
        Lit(#NewSyntax.MyDataType.MyNumericConstructor(dt_update#42#0#0)))));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NewSyntax.test (correctness)"} Impl$$NewSyntax.__default.test(foo#0: DatatypeType, goo#0: DatatypeType, hoo#0: DatatypeType, x#0: int)
   returns (abc#0: DatatypeType, 
    def#0: DatatypeType, 
    ghi#0: DatatypeType, 
    jkl#0: DatatypeType, 
    $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var dt_update_tmp#5#Z#0: DatatypeType;
  var let#10#0#0: DatatypeType;
  var dt_update#myint#2#Z#0: int;
  var let#11#0#0: int;
  var dt_update_tmp#6#Z#0: DatatypeType;
  var let#12#0#0: DatatypeType;
  var dt_update#42#1#Z#0: int;
  var let#13#0#0: int;
  var dt_update_tmp#7#Z#0: DatatypeType;
  var let#14#0#0: DatatypeType;
  var dt_update#myint#3#Z#0: int;
  var let#15#0#0: int;
  var dt_update_tmp#8#Z#0: DatatypeType;
  var let#16#0#0: DatatypeType;
  var dt_update#myint#4#Z#0: int;
  var let#17#0#0: int;

    // AddMethodImpl: test, Impl$$NewSyntax.__default.test
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DatatypeUpdate.dfy(17,9)
    assume true;
    assert {:id "id50"} NewSyntax.MyDataType.MyConstructor_q(foo#0);
    assume true;
    abc#0 := #NewSyntax.MyDataType.MyConstructor(x#0 + 4, NewSyntax.MyDataType.mybool(foo#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DatatypeUpdate.dfy(18,9)
    assume true;
    assert {:id "id52"} NewSyntax.MyDataType.MyConstructor_q(abc#0);
    havoc dt_update_tmp#5#Z#0;
    assume {:id "id53"} let#10#0#0 == abc#0;
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#10#0#0, Tclass.NewSyntax.MyDataType());
    assume {:id "id54"} dt_update_tmp#5#Z#0 == let#10#0#0;
    havoc dt_update#myint#2#Z#0;
    assert {:id "id55"} NewSyntax.MyDataType.MyConstructor_q(abc#0);
    assume {:id "id56"} let#11#0#0 == NewSyntax.MyDataType.myint(abc#0) - 2;
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#11#0#0, TInt);
    assume {:id "id57"} dt_update#myint#2#Z#0 == let#11#0#0;
    assert {:id "id58"} NewSyntax.MyDataType.MyConstructor_q(dt_update_tmp#5#Z#0);
    assume true;
    abc#0 := (var dt_update_tmp#5#0 := abc#0; 
      (var dt_update#myint#2#0 := NewSyntax.MyDataType.myint(abc#0) - 2; 
        #NewSyntax.MyDataType.MyConstructor(dt_update#myint#2#0, NewSyntax.MyDataType.mybool(dt_update_tmp#5#0))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DatatypeUpdate.dfy(19,9)
    assume true;
    assert {:id "id60"} NewSyntax.MyDataType.MyConstructor_q(foo#0);
    assume true;
    def#0 := #NewSyntax.MyDataType.MyOtherConstructor(!NewSyntax.MyDataType.mybool(foo#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DatatypeUpdate.dfy(20,9)
    assume true;
    assume true;
    ghi#0 := Lit(#NewSyntax.MyDataType.MyConstructor(LitInt(2), Lit(false)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DatatypeUpdate.dfy(21,9)
    assume true;
    assert {:id "id63"} NewSyntax.MyDataType.MyNumericConstructor_q(hoo#0);
    havoc dt_update_tmp#6#Z#0;
    assume {:id "id64"} let#12#0#0 == hoo#0;
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#12#0#0, Tclass.NewSyntax.MyDataType());
    assume {:id "id65"} dt_update_tmp#6#Z#0 == let#12#0#0;
    havoc dt_update#42#1#Z#0;
    assume {:id "id66"} let#13#0#0 == LitInt(7);
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#13#0#0, TInt);
    assume {:id "id67"} dt_update#42#1#Z#0 == let#13#0#0;
    assume true;
    jkl#0 := (var dt_update_tmp#6#0 := hoo#0; 
      (var dt_update#42#1#0 := LitInt(7); 
        Lit(#NewSyntax.MyDataType.MyNumericConstructor(dt_update#42#1#0))));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DatatypeUpdate.dfy(23,5)
    assert {:id "id69"} NewSyntax.MyDataType.MyConstructor_q(abc#0);
    havoc dt_update_tmp#7#Z#0;
    assume {:id "id70"} let#14#0#0 == abc#0;
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#14#0#0, Tclass.NewSyntax.MyDataType());
    assume {:id "id71"} dt_update_tmp#7#Z#0 == let#14#0#0;
    havoc dt_update#myint#3#Z#0;
    assert {:id "id72"} NewSyntax.MyDataType.MyConstructor_q(abc#0);
    assume {:id "id73"} let#15#0#0 == NewSyntax.MyDataType.myint(abc#0) - 2;
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#15#0#0, TInt);
    assume {:id "id74"} dt_update#myint#3#Z#0 == let#15#0#0;
    assert {:id "id75"} NewSyntax.MyDataType.MyConstructor_q(dt_update_tmp#7#Z#0);
    assert {:id "id76"} NewSyntax.MyDataType.MyConstructor_q(foo#0);
    havoc dt_update_tmp#8#Z#0;
    assume {:id "id77"} let#16#0#0 == foo#0;
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#16#0#0, Tclass.NewSyntax.MyDataType());
    assume {:id "id78"} dt_update_tmp#8#Z#0 == let#16#0#0;
    havoc dt_update#myint#4#Z#0;
    assume {:id "id79"} let#17#0#0 == x#0;
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#17#0#0, TInt);
    assume {:id "id80"} dt_update#myint#4#Z#0 == let#17#0#0;
    assert {:id "id81"} NewSyntax.MyDataType.MyConstructor_q(dt_update_tmp#8#Z#0);
    assume $IsA#NewSyntax.MyDataType((var dt_update_tmp#7#0 := abc#0; 
          (var dt_update#myint#3#0 := NewSyntax.MyDataType.myint(abc#0) - 2; 
            #NewSyntax.MyDataType.MyConstructor(dt_update#myint#3#0, NewSyntax.MyDataType.mybool(dt_update_tmp#7#0)))))
       && $IsA#NewSyntax.MyDataType((var dt_update_tmp#8#0 := foo#0; 
          (var dt_update#myint#4#0 := x#0; 
            #NewSyntax.MyDataType.MyConstructor(dt_update#myint#4#0, NewSyntax.MyDataType.mybool(dt_update_tmp#8#0)))));
    assert {:id "id82"} NewSyntax.MyDataType#Equal((var dt_update_tmp#7#0 := abc#0; 
        (var dt_update#myint#3#0 := NewSyntax.MyDataType.myint(abc#0) - 2; 
          #NewSyntax.MyDataType.MyConstructor(dt_update#myint#3#0, NewSyntax.MyDataType.mybool(dt_update_tmp#7#0)))), 
      (var dt_update_tmp#8#0 := foo#0; 
        (var dt_update#myint#4#0 := x#0; 
          #NewSyntax.MyDataType.MyConstructor(dt_update#myint#4#0, NewSyntax.MyDataType.mybool(dt_update_tmp#8#0)))));
}



// function declaration for NewSyntax._default.F
function NewSyntax.__default.F(d#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for NewSyntax.__default.F
axiom 1 <= $FunctionContextHeight
   ==> (forall d#0: DatatypeType :: 
    { NewSyntax.__default.F(d#0) } 
    NewSyntax.__default.F#canCall(d#0)
         || (1 < $FunctionContextHeight && $Is(d#0, Tclass.NewSyntax.Dt()))
       ==> $Is(NewSyntax.__default.F(d#0), Tclass.NewSyntax.Dt()));
// definition axiom for NewSyntax.__default.F (revealed)
axiom {:id "id83"} 1 <= $FunctionContextHeight
   ==> (forall d#0: DatatypeType :: 
    { NewSyntax.__default.F(d#0) } 
    NewSyntax.__default.F#canCall(d#0)
         || (1 < $FunctionContextHeight && $Is(d#0, Tclass.NewSyntax.Dt()))
       ==> (var dt_update_tmp#0#0 := d#0; NewSyntax.Dt.Ctor_q(dt_update_tmp#0#0))
         && NewSyntax.__default.F(d#0)
           == (var dt_update_tmp#0#0 := d#0; 
            (var dt_update#x#0#0 := LitInt(5); 
              #NewSyntax.Dt.Ctor(dt_update#x#0#0, NewSyntax.Dt.y(dt_update_tmp#0#0)))));
// definition axiom for NewSyntax.__default.F for all literals (revealed)
axiom {:id "id84"} 1 <= $FunctionContextHeight
   ==> (forall d#0: DatatypeType :: 
    {:weight 3} { NewSyntax.__default.F(Lit(d#0)) } 
    NewSyntax.__default.F#canCall(Lit(d#0))
         || (1 < $FunctionContextHeight && $Is(d#0, Tclass.NewSyntax.Dt()))
       ==> (var dt_update_tmp#0#1 := Lit(d#0); NewSyntax.Dt.Ctor_q(dt_update_tmp#0#1))
         && NewSyntax.__default.F(Lit(d#0))
           == (var dt_update_tmp#0#1 := Lit(d#0); 
            (var dt_update#x#0#1 := LitInt(5); 
              Lit(#NewSyntax.Dt.Ctor(dt_update#x#0#1, Lit(NewSyntax.Dt.y(dt_update_tmp#0#1)))))));
}

function NewSyntax.__default.F#canCall(d#0: DatatypeType) : bool;

function Tclass.NewSyntax.Dt() : Ty
uses {
// Tclass.NewSyntax.Dt Tag
axiom Tag(Tclass.NewSyntax.Dt()) == Tagclass.NewSyntax.Dt
   && TagFamily(Tclass.NewSyntax.Dt()) == tytagFamily$Dt;
}

const unique Tagclass.NewSyntax.Dt: TyTag;

// Box/unbox axiom for Tclass.NewSyntax.Dt
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.NewSyntax.Dt()) } 
  $IsBox(bx, Tclass.NewSyntax.Dt())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.NewSyntax.Dt()));

function NewSyntax.__default.F#requires(DatatypeType) : bool;

// #requires axiom for NewSyntax.__default.F
axiom (forall d#0: DatatypeType :: 
  { NewSyntax.__default.F#requires(d#0) } 
  $Is(d#0, Tclass.NewSyntax.Dt()) ==> NewSyntax.__default.F#requires(d#0) == true);

procedure {:verboseName "NewSyntax.F (well-formedness)"} CheckWellformed$$NewSyntax.__default.F(d#0: DatatypeType where $Is(d#0, Tclass.NewSyntax.Dt()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



function Tclass.NewSyntax.NumericNames() : Ty
uses {
// Tclass.NewSyntax.NumericNames Tag
axiom Tag(Tclass.NewSyntax.NumericNames()) == Tagclass.NewSyntax.NumericNames
   && TagFamily(Tclass.NewSyntax.NumericNames()) == tytagFamily$NumericNames;
}

const unique Tagclass.NewSyntax.NumericNames: TyTag;

// Box/unbox axiom for Tclass.NewSyntax.NumericNames
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.NewSyntax.NumericNames()) } 
  $IsBox(bx, Tclass.NewSyntax.NumericNames())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.NewSyntax.NumericNames()));

procedure {:verboseName "NewSyntax.UpdateNumNam (well-formedness)"} CheckWellFormed$$NewSyntax.__default.UpdateNumNam(nn#0: DatatypeType
       where $Is(nn#0, Tclass.NewSyntax.NumericNames())
         && $IsAlloc(nn#0, Tclass.NewSyntax.NumericNames(), $Heap)
         && $IsA#NewSyntax.NumericNames(nn#0), 
    y#0: int)
   returns (pp#0: DatatypeType
       where $Is(pp#0, Tclass.NewSyntax.NumericNames())
         && $IsAlloc(pp#0, Tclass.NewSyntax.NumericNames(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "NewSyntax.UpdateNumNam (call)"} Call$$NewSyntax.__default.UpdateNumNam(nn#0: DatatypeType
       where $Is(nn#0, Tclass.NewSyntax.NumericNames())
         && $IsAlloc(nn#0, Tclass.NewSyntax.NumericNames(), $Heap)
         && $IsA#NewSyntax.NumericNames(nn#0), 
    y#0: int)
   returns (pp#0: DatatypeType
       where $Is(pp#0, Tclass.NewSyntax.NumericNames())
         && $IsAlloc(pp#0, Tclass.NewSyntax.NumericNames(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures NewSyntax.NumericNames.NumNam_q(pp#0)
     && NewSyntax.NumericNames.NumNam_q(nn#0)
     && (NewSyntax.NumericNames._10(pp#0) == NewSyntax.NumericNames._10(nn#0)
       ==> NewSyntax.NumericNames.NumNam_q(pp#0));
  ensures {:id "id92"} NewSyntax.NumericNames._10(pp#0) == NewSyntax.NumericNames._10(nn#0);
  ensures {:id "id93"} NewSyntax.NumericNames._010(pp#0) == y#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "NewSyntax.UpdateNumNam (correctness)"} Impl$$NewSyntax.__default.UpdateNumNam(nn#0: DatatypeType
       where $Is(nn#0, Tclass.NewSyntax.NumericNames())
         && $IsAlloc(nn#0, Tclass.NewSyntax.NumericNames(), $Heap)
         && $IsA#NewSyntax.NumericNames(nn#0), 
    y#0: int)
   returns (pp#0: DatatypeType
       where $Is(pp#0, Tclass.NewSyntax.NumericNames())
         && $IsAlloc(pp#0, Tclass.NewSyntax.NumericNames(), $Heap), 
    $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures NewSyntax.NumericNames.NumNam_q(pp#0)
     && NewSyntax.NumericNames.NumNam_q(nn#0)
     && (NewSyntax.NumericNames._10(pp#0) == NewSyntax.NumericNames._10(nn#0)
       ==> NewSyntax.NumericNames.NumNam_q(pp#0));
  ensures {:id "id94"} NewSyntax.NumericNames._10(pp#0) == NewSyntax.NumericNames._10(nn#0);
  ensures {:id "id95"} NewSyntax.NumericNames._010(pp#0) == y#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NewSyntax.UpdateNumNam (correctness)"} Impl$$NewSyntax.__default.UpdateNumNam(nn#0: DatatypeType, y#0: int) returns (pp#0: DatatypeType, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var dt_update_tmp#0#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var dt_update#010#0#Z#0: int;
  var let#1#0#0: int;

    // AddMethodImpl: UpdateNumNam, Impl$$NewSyntax.__default.UpdateNumNam
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DatatypeUpdate.dfy(38,8)
    assume true;
    havoc dt_update_tmp#0#Z#0;
    assume {:id "id96"} let#0#0#0 == nn#0;
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#0#0#0, Tclass.NewSyntax.NumericNames());
    assume {:id "id97"} dt_update_tmp#0#Z#0 == let#0#0#0;
    havoc dt_update#010#0#Z#0;
    assume {:id "id98"} let#1#0#0 == y#0;
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#1#0#0, TInt);
    assume {:id "id99"} dt_update#010#0#Z#0 == let#1#0#0;
    assume NewSyntax.NumericNames.NumNam_q(dt_update_tmp#0#Z#0);
    assume NewSyntax.NumericNames.NumNam_q(dt_update_tmp#0#Z#0);
    assume (var dt_update_tmp#0#0 := nn#0; 
      NewSyntax.NumericNames.NumNam_q(dt_update_tmp#0#0)
         && NewSyntax.NumericNames.NumNam_q(dt_update_tmp#0#0));
    pp#0 := (var dt_update_tmp#0#0 := nn#0; 
      (var dt_update#010#0#0 := y#0; 
        #NewSyntax.NumericNames.NumNam(dt_update#010#0#0, 
          NewSyntax.NumericNames._10(dt_update_tmp#0#0), 
          NewSyntax.NumericNames.f(dt_update_tmp#0#0))));
}



procedure {:verboseName "NewSyntax.MultipleUpdates (well-formedness)"} CheckWellFormed$$NewSyntax.__default.MultipleUpdates(nn#0: DatatypeType
       where $Is(nn#0, Tclass.NewSyntax.NumericNames())
         && $IsAlloc(nn#0, Tclass.NewSyntax.NumericNames(), $Heap)
         && $IsA#NewSyntax.NumericNames(nn#0), 
    y#0: int)
   returns (pp#0: DatatypeType
       where $Is(pp#0, Tclass.NewSyntax.NumericNames())
         && $IsAlloc(pp#0, Tclass.NewSyntax.NumericNames(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "NewSyntax.MultipleUpdates (call)"} Call$$NewSyntax.__default.MultipleUpdates(nn#0: DatatypeType
       where $Is(nn#0, Tclass.NewSyntax.NumericNames())
         && $IsAlloc(nn#0, Tclass.NewSyntax.NumericNames(), $Heap)
         && $IsA#NewSyntax.NumericNames(nn#0), 
    y#0: int)
   returns (pp#0: DatatypeType
       where $Is(pp#0, Tclass.NewSyntax.NumericNames())
         && $IsAlloc(pp#0, Tclass.NewSyntax.NumericNames(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures NewSyntax.NumericNames.NumNam_q(pp#0);
  ensures {:id "id102"} NewSyntax.NumericNames._010(pp#0) == y#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "NewSyntax.MultipleUpdates (correctness)"} Impl$$NewSyntax.__default.MultipleUpdates(nn#0: DatatypeType
       where $Is(nn#0, Tclass.NewSyntax.NumericNames())
         && $IsAlloc(nn#0, Tclass.NewSyntax.NumericNames(), $Heap)
         && $IsA#NewSyntax.NumericNames(nn#0), 
    y#0: int)
   returns (pp#0: DatatypeType
       where $Is(pp#0, Tclass.NewSyntax.NumericNames())
         && $IsAlloc(pp#0, Tclass.NewSyntax.NumericNames(), $Heap), 
    $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures NewSyntax.NumericNames.NumNam_q(pp#0);
  ensures {:id "id103"} NewSyntax.NumericNames._010(pp#0) == y#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NewSyntax.MultipleUpdates (correctness)"} Impl$$NewSyntax.__default.MultipleUpdates(nn#0: DatatypeType, y#0: int) returns (pp#0: DatatypeType, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var dt_update_tmp#0#Z#0_0: DatatypeType;
  var let#0_0#0#0: DatatypeType;
  var dt_update#010#0#Z#0_0: int;
  var let#0_1#0#0: int;
  var dt_update#10#0#Z#0_0: real;
  var let#0_2#0#0: real;
  var dt_update_tmp#1#Z#1_0: DatatypeType;
  var let#1_0#0#0: DatatypeType;
  var dt_update#10#1#Z#1_0: real;
  var let#1_1#0#0: real;
  var dt_update#f#0#Z#1_0: bool;
  var let#1_2#0#0: bool;
  var dt_update#010#1#Z#1_0: int;
  var let#1_3#0#0: int;

    // AddMethodImpl: MultipleUpdates, Impl$$NewSyntax.__default.MultipleUpdates
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DatatypeUpdate.dfy(44,5)
    if (*)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DatatypeUpdate.dfy(45,10)
        assume true;
        havoc dt_update_tmp#0#Z#0_0;
        assume {:id "id104"} let#0_0#0#0 == nn#0;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_0#0#0, Tclass.NewSyntax.NumericNames());
        assume {:id "id105"} dt_update_tmp#0#Z#0_0 == let#0_0#0#0;
        havoc dt_update#010#0#Z#0_0;
        assume {:id "id106"} let#0_1#0#0 == y#0;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_1#0#0, TInt);
        assume {:id "id107"} dt_update#010#0#Z#0_0 == let#0_1#0#0;
        havoc dt_update#10#0#Z#0_0;
        assume {:id "id108"} let#0_2#0#0 == LitReal(1e-1);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_2#0#0, TReal);
        assume {:id "id109"} dt_update#10#0#Z#0_0 == let#0_2#0#0;
        assume NewSyntax.NumericNames.NumNam_q(dt_update_tmp#0#Z#0_0);
        assume (var dt_update_tmp#0#0_0 := nn#0; 
          NewSyntax.NumericNames.NumNam_q(dt_update_tmp#0#0_0));
        pp#0 := (var dt_update_tmp#0#0_0 := nn#0; 
          (var dt_update#010#0#0_0 := y#0; 
            (var dt_update#10#0#0_0 := LitReal(1e-1); 
              #NewSyntax.NumericNames.NumNam(dt_update#010#0#0_0, 
                dt_update#10#0#0_0, 
                NewSyntax.NumericNames.f(dt_update_tmp#0#0_0)))));
    }
    else
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DatatypeUpdate.dfy(47,10)
        assume true;
        havoc dt_update_tmp#1#Z#1_0;
        assume {:id "id111"} let#1_0#0#0 == nn#0;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#1_0#0#0, Tclass.NewSyntax.NumericNames());
        assume {:id "id112"} dt_update_tmp#1#Z#1_0 == let#1_0#0#0;
        havoc dt_update#10#1#Z#1_0;
        assume {:id "id113"} let#1_1#0#0 == LitReal(1e-1);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#1_1#0#0, TReal);
        assume {:id "id114"} dt_update#10#1#Z#1_0 == let#1_1#0#0;
        havoc dt_update#f#0#Z#1_0;
        assume {:id "id115"} let#1_2#0#0 == Lit(true);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#1_2#0#0, TBool);
        assume {:id "id116"} dt_update#f#0#Z#1_0 == let#1_2#0#0;
        havoc dt_update#010#1#Z#1_0;
        assume {:id "id117"} let#1_3#0#0 == y#0;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#1_3#0#0, TInt);
        assume {:id "id118"} dt_update#010#1#Z#1_0 == let#1_3#0#0;
        assume true;
        pp#0 := (var dt_update_tmp#1#1_0 := nn#0; 
          (var dt_update#10#1#1_0 := LitReal(1e-1); 
            (var dt_update#f#0#1_0 := Lit(true); 
              (var dt_update#010#1#1_0 := y#0; 
                #NewSyntax.NumericNames.NumNam(dt_update#010#1#1_0, dt_update#10#1#1_0, dt_update#f#0#1_0)))));
    }
}



function Tclass.NewSyntax.Datte(Ty) : Ty;

const unique Tagclass.NewSyntax.Datte: TyTag;

// Tclass.NewSyntax.Datte Tag
axiom (forall NewSyntax.Datte$T: Ty :: 
  { Tclass.NewSyntax.Datte(NewSyntax.Datte$T) } 
  Tag(Tclass.NewSyntax.Datte(NewSyntax.Datte$T)) == Tagclass.NewSyntax.Datte
     && TagFamily(Tclass.NewSyntax.Datte(NewSyntax.Datte$T)) == tytagFamily$Datte);

function Tclass.NewSyntax.Datte_0(Ty) : Ty;

// Tclass.NewSyntax.Datte injectivity 0
axiom (forall NewSyntax.Datte$T: Ty :: 
  { Tclass.NewSyntax.Datte(NewSyntax.Datte$T) } 
  Tclass.NewSyntax.Datte_0(Tclass.NewSyntax.Datte(NewSyntax.Datte$T))
     == NewSyntax.Datte$T);

// Box/unbox axiom for Tclass.NewSyntax.Datte
axiom (forall NewSyntax.Datte$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.NewSyntax.Datte(NewSyntax.Datte$T)) } 
  $IsBox(bx, Tclass.NewSyntax.Datte(NewSyntax.Datte$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.NewSyntax.Datte(NewSyntax.Datte$T)));

procedure {:verboseName "NewSyntax.Matte (well-formedness)"} CheckWellFormed$$NewSyntax.__default.Matte(d#0: DatatypeType
       where $Is(d#0, Tclass.NewSyntax.Datte(TReal))
         && $IsAlloc(d#0, Tclass.NewSyntax.Datte(TReal), $Heap)
         && $IsA#NewSyntax.Datte(d#0));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "NewSyntax.Matte (call)"} Call$$NewSyntax.__default.Matte(d#0: DatatypeType
       where $Is(d#0, Tclass.NewSyntax.Datte(TReal))
         && $IsAlloc(d#0, Tclass.NewSyntax.Datte(TReal), $Heap)
         && $IsA#NewSyntax.Datte(d#0));
  // user-defined preconditions
  requires {:id "id121"} !NewSyntax.Datte.CC_q(d#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "NewSyntax.Matte (correctness)"} Impl$$NewSyntax.__default.Matte(d#0: DatatypeType
       where $Is(d#0, Tclass.NewSyntax.Datte(TReal))
         && $IsAlloc(d#0, Tclass.NewSyntax.Datte(TReal), $Heap)
         && $IsA#NewSyntax.Datte(d#0))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id122"} !NewSyntax.Datte.CC_q(d#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NewSyntax.Matte (correctness)"} Impl$$NewSyntax.__default.Matte(d#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: DatatypeType
     where $Is(s#0, Tclass.NewSyntax.Datte(TReal))
       && $IsAlloc(s#0, Tclass.NewSyntax.Datte(TReal), $Heap);
  var dt_update_tmp#0#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var dt_update#x#0#Z#0: int;
  var let#1#0#0: int;
  var dt_update_tmp#1#Z#0: DatatypeType;
  var let#2#0#0: DatatypeType;
  var dt_update#x#1#Z#0: int;
  var let#3#0#0: int;
  var dt_update_tmp#2#Z#0: DatatypeType;
  var let#4#0#0: DatatypeType;
  var dt_update#p#0#Z#0: bv27;
  var let#5#0#0: bv27;
  var dt_update_tmp#3#Z#0_0: DatatypeType;
  var let#0_0#0#0: DatatypeType;
  var dt_update#x#2#Z#0_0: int;
  var let#0_1#0#0: int;
  var dt_update#q#0#Z#0_0: real;
  var let#0_2#0#0: real;
  var dt_update_tmp#4#Z#2_0: DatatypeType;
  var let#2_0#0#0: DatatypeType;
  var dt_update#b#0#Z#2_0: bool;
  var let#2_1#0#0: bool;

    // AddMethodImpl: Matte, Impl$$NewSyntax.__default.Matte
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DatatypeUpdate.dfy(55,11)
    assume true;
    assert {:id "id123"} NewSyntax.Datte.DD_q(d#0)
       || NewSyntax.Datte.BB_q(d#0)
       || NewSyntax.Datte.AA_q(d#0);
    havoc dt_update_tmp#0#Z#0;
    assume {:id "id124"} let#0#0#0 == d#0;
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#0#0#0, Tclass.NewSyntax.Datte(TReal));
    assume {:id "id125"} dt_update_tmp#0#Z#0 == let#0#0#0;
    havoc dt_update#x#0#Z#0;
    assume {:id "id126"} let#1#0#0 == LitInt(5);
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#1#0#0, TInt);
    assume {:id "id127"} dt_update#x#0#Z#0 == let#1#0#0;
    if (NewSyntax.Datte.AA_q(dt_update_tmp#0#Z#0))
    {
        assert {:id "id128"} NewSyntax.Datte.AA_q(dt_update_tmp#0#Z#0);
    }
    else
    {
        if (NewSyntax.Datte.BB_q(dt_update_tmp#0#Z#0))
        {
            assert {:id "id129"} NewSyntax.Datte.BB_q(dt_update_tmp#0#Z#0);
        }
        else
        {
            assert {:id "id130"} NewSyntax.Datte.DD_q(dt_update_tmp#0#Z#0);
            assert {:id "id131"} NewSyntax.Datte.DD_q(dt_update_tmp#0#Z#0);
            assert {:id "id132"} NewSyntax.Datte.DD_q(dt_update_tmp#0#Z#0);
        }
    }

    assume true;
    s#0 := (var dt_update_tmp#0#0 := d#0; 
      (var dt_update#x#0#0 := LitInt(5); 
        (if NewSyntax.Datte.AA_q(dt_update_tmp#0#0)
           then #NewSyntax.Datte.AA(NewSyntax.Datte.a(dt_update_tmp#0#0), dt_update#x#0#0)
           else (if NewSyntax.Datte.BB_q(dt_update_tmp#0#0)
             then #NewSyntax.Datte.BB(NewSyntax.Datte.b(dt_update_tmp#0#0), dt_update#x#0#0)
             else #NewSyntax.Datte.DD(dt_update#x#0#0, 
              NewSyntax.Datte.o(dt_update_tmp#0#0), 
              NewSyntax.Datte.p(dt_update_tmp#0#0), 
              NewSyntax.Datte.q(dt_update_tmp#0#0))))));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DatatypeUpdate.dfy(56,5)
    if (NewSyntax.Datte.AA_q(d#0))
    {
        assert {:id "id134"} NewSyntax.Datte.AA_q(d#0);
    }

    if (!(NewSyntax.Datte.AA_q(d#0)
       && NewSyntax.Datte#Equal(s#0, #NewSyntax.Datte.AA(NewSyntax.Datte.a(d#0), LitInt(5)))))
    {
        if (NewSyntax.Datte.BB_q(d#0))
        {
            if (!NewSyntax.Datte#Equal(s#0, #NewSyntax.Datte.BB(Lit(false), LitInt(5))))
            {
            }
        }
    }

    if (!((NewSyntax.Datte.AA_q(d#0)
         && NewSyntax.Datte#Equal(s#0, #NewSyntax.Datte.AA(NewSyntax.Datte.a(d#0), LitInt(5))))
       || (NewSyntax.Datte.BB_q(d#0)
         && (NewSyntax.Datte#Equal(s#0, #NewSyntax.Datte.BB(Lit(false), LitInt(5)))
           || NewSyntax.Datte#Equal(s#0, #NewSyntax.Datte.BB(Lit(true), LitInt(5)))))))
    {
        if (NewSyntax.Datte.DD_q(d#0))
        {
            assert {:id "id135"} NewSyntax.Datte.DD_q(s#0)
               || NewSyntax.Datte.BB_q(s#0)
               || NewSyntax.Datte.AA_q(s#0);
            havoc dt_update_tmp#1#Z#0;
            assume {:id "id136"} let#2#0#0 == s#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#2#0#0, Tclass.NewSyntax.Datte(TReal));
            assume {:id "id137"} dt_update_tmp#1#Z#0 == let#2#0#0;
            havoc dt_update#x#1#Z#0;
            assert {:id "id138"} NewSyntax.Datte.AA_q(d#0)
               || NewSyntax.Datte.BB_q(d#0)
               || NewSyntax.Datte.DD_q(d#0);
            assume {:id "id139"} let#3#0#0 == NewSyntax.Datte.x(d#0);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#3#0#0, TInt);
            assume {:id "id140"} dt_update#x#1#Z#0 == let#3#0#0;
            if (NewSyntax.Datte.AA_q(dt_update_tmp#1#Z#0))
            {
                assert {:id "id141"} NewSyntax.Datte.AA_q(dt_update_tmp#1#Z#0);
            }
            else
            {
                if (NewSyntax.Datte.BB_q(dt_update_tmp#1#Z#0))
                {
                    assert {:id "id142"} NewSyntax.Datte.BB_q(dt_update_tmp#1#Z#0);
                }
                else
                {
                    assert {:id "id143"} NewSyntax.Datte.DD_q(dt_update_tmp#1#Z#0);
                    assert {:id "id144"} NewSyntax.Datte.DD_q(dt_update_tmp#1#Z#0);
                    assert {:id "id145"} NewSyntax.Datte.DD_q(dt_update_tmp#1#Z#0);
                }
            }

            assert {:id "id146"} NewSyntax.Datte.DD_q(d#0);
            havoc dt_update_tmp#2#Z#0;
            assume {:id "id147"} let#4#0#0 == d#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#4#0#0, Tclass.NewSyntax.Datte(TReal));
            assume {:id "id148"} dt_update_tmp#2#Z#0 == let#4#0#0;
            havoc dt_update#p#0#Z#0;
            assert {:id "id149"} NewSyntax.Datte.DD_q(d#0);
            assume {:id "id150"} let#5#0#0 == NewSyntax.Datte.p(d#0);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#5#0#0, TBitvector(27));
            assume {:id "id151"} dt_update#p#0#Z#0 == let#5#0#0;
            assert {:id "id152"} NewSyntax.Datte.AA_q(dt_update_tmp#2#Z#0)
               || NewSyntax.Datte.BB_q(dt_update_tmp#2#Z#0)
               || NewSyntax.Datte.DD_q(dt_update_tmp#2#Z#0);
            assert {:id "id153"} NewSyntax.Datte.DD_q(dt_update_tmp#2#Z#0);
            assert {:id "id154"} NewSyntax.Datte.DD_q(dt_update_tmp#2#Z#0);
        }
    }

    assume (NewSyntax.Datte.AA_q(d#0) ==> $IsA#NewSyntax.Datte(s#0))
       && (!(NewSyntax.Datte.AA_q(d#0)
           && NewSyntax.Datte#Equal(s#0, #NewSyntax.Datte.AA(NewSyntax.Datte.a(d#0), LitInt(5))))
         ==> (NewSyntax.Datte.BB_q(d#0)
             ==> $IsA#NewSyntax.Datte(s#0)
               && (!NewSyntax.Datte#Equal(s#0, #NewSyntax.Datte.BB(Lit(false), LitInt(5)))
                 ==> $IsA#NewSyntax.Datte(s#0)))
           && (!(NewSyntax.Datte.BB_q(d#0)
               && (NewSyntax.Datte#Equal(s#0, #NewSyntax.Datte.BB(Lit(false), LitInt(5)))
                 || NewSyntax.Datte#Equal(s#0, #NewSyntax.Datte.BB(Lit(true), LitInt(5)))))
             ==> 
            NewSyntax.Datte.DD_q(d#0)
             ==> $IsA#NewSyntax.Datte((var dt_update_tmp#1#0 := s#0; 
                  (var dt_update#x#1#0 := NewSyntax.Datte.x(d#0); 
                    (if NewSyntax.Datte.AA_q(dt_update_tmp#1#0)
                       then #NewSyntax.Datte.AA(NewSyntax.Datte.a(dt_update_tmp#1#0), dt_update#x#1#0)
                       else (if NewSyntax.Datte.BB_q(dt_update_tmp#1#0)
                         then #NewSyntax.Datte.BB(NewSyntax.Datte.b(dt_update_tmp#1#0), dt_update#x#1#0)
                         else #NewSyntax.Datte.DD(dt_update#x#1#0, 
                          NewSyntax.Datte.o(dt_update_tmp#1#0), 
                          NewSyntax.Datte.p(dt_update_tmp#1#0), 
                          NewSyntax.Datte.q(dt_update_tmp#1#0)))))))
               && $IsA#NewSyntax.Datte((var dt_update_tmp#2#0 := d#0; 
                  (var dt_update#p#0#0 := NewSyntax.Datte.p(d#0); 
                    #NewSyntax.Datte.DD(NewSyntax.Datte.x(dt_update_tmp#2#0), 
                      NewSyntax.Datte.o(dt_update_tmp#2#0), 
                      dt_update#p#0#0, 
                      NewSyntax.Datte.q(dt_update_tmp#2#0)))))));
    assert {:id "id155"} (NewSyntax.Datte.AA_q(d#0)
         && NewSyntax.Datte#Equal(s#0, #NewSyntax.Datte.AA(NewSyntax.Datte.a(d#0), LitInt(5))))
       || (NewSyntax.Datte.BB_q(d#0)
         && (NewSyntax.Datte#Equal(s#0, #NewSyntax.Datte.BB(Lit(false), LitInt(5)))
           || NewSyntax.Datte#Equal(s#0, #NewSyntax.Datte.BB(Lit(true), LitInt(5)))))
       || (NewSyntax.Datte.DD_q(d#0)
         && NewSyntax.Datte#Equal((var dt_update_tmp#1#0 := s#0; 
            (var dt_update#x#1#0 := NewSyntax.Datte.x(d#0); 
              (if NewSyntax.Datte.AA_q(dt_update_tmp#1#0)
                 then #NewSyntax.Datte.AA(NewSyntax.Datte.a(dt_update_tmp#1#0), dt_update#x#1#0)
                 else (if NewSyntax.Datte.BB_q(dt_update_tmp#1#0)
                   then #NewSyntax.Datte.BB(NewSyntax.Datte.b(dt_update_tmp#1#0), dt_update#x#1#0)
                   else #NewSyntax.Datte.DD(dt_update#x#1#0, 
                    NewSyntax.Datte.o(dt_update_tmp#1#0), 
                    NewSyntax.Datte.p(dt_update_tmp#1#0), 
                    NewSyntax.Datte.q(dt_update_tmp#1#0)))))), 
          (var dt_update_tmp#2#0 := d#0; 
            (var dt_update#p#0#0 := NewSyntax.Datte.p(d#0); 
              #NewSyntax.Datte.DD(NewSyntax.Datte.x(dt_update_tmp#2#0), 
                NewSyntax.Datte.o(dt_update_tmp#2#0), 
                dt_update#p#0#0, 
                NewSyntax.Datte.q(dt_update_tmp#2#0))))));
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DatatypeUpdate.dfy(60,5)
    assume true;
    if (NewSyntax.Datte.DD_q(s#0))
    {
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DatatypeUpdate.dfy(61,9)
        assume true;
        assert {:id "id156"} NewSyntax.Datte.DD_q(d#0);
        havoc dt_update_tmp#3#Z#0_0;
        assume {:id "id157"} let#0_0#0#0 == d#0;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_0#0#0, Tclass.NewSyntax.Datte(TReal));
        assume {:id "id158"} dt_update_tmp#3#Z#0_0 == let#0_0#0#0;
        havoc dt_update#x#2#Z#0_0;
        assume {:id "id159"} let#0_1#0#0 == LitInt(3);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_1#0#0, TInt);
        assume {:id "id160"} dt_update#x#2#Z#0_0 == let#0_1#0#0;
        havoc dt_update#q#0#Z#0_0;
        assume {:id "id161"} let#0_2#0#0 == LitReal(22e-1);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_2#0#0, TReal);
        assume {:id "id162"} dt_update#q#0#Z#0_0 == let#0_2#0#0;
        assert {:id "id163"} NewSyntax.Datte.DD_q(dt_update_tmp#3#Z#0_0);
        assert {:id "id164"} NewSyntax.Datte.DD_q(dt_update_tmp#3#Z#0_0);
        assume true;
        s#0 := (var dt_update_tmp#3#0_0 := d#0; 
          (var dt_update#x#2#0_0 := LitInt(3); 
            (var dt_update#q#0#0_0 := LitReal(22e-1); 
              #NewSyntax.Datte.DD(dt_update#x#2#0_0, 
                NewSyntax.Datte.o(dt_update_tmp#3#0_0), 
                NewSyntax.Datte.p(dt_update_tmp#3#0_0), 
                $Box(dt_update#q#0#0_0)))));
        pop;
    }
    else
    {
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DatatypeUpdate.dfy(63,5)
    assert {:id "id166"} NewSyntax.Datte.AA_q(s#0)
       || NewSyntax.Datte.BB_q(s#0)
       || NewSyntax.Datte.DD_q(s#0);
    if (NewSyntax.Datte.x(s#0) != LitInt(5))
    {
        assert {:id "id167"} NewSyntax.Datte.AA_q(s#0)
           || NewSyntax.Datte.BB_q(s#0)
           || NewSyntax.Datte.DD_q(s#0);
    }

    assume true;
    assert {:id "id168"} NewSyntax.Datte.x(s#0) == LitInt(5) || NewSyntax.Datte.x(s#0) == LitInt(3);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DatatypeUpdate.dfy(64,5)
    assert {:id "id169"} NewSyntax.Datte.AA_q(s#0)
       || NewSyntax.Datte.BB_q(s#0)
       || NewSyntax.Datte.DD_q(s#0);
    if (NewSyntax.Datte.x(s#0) < 4)
    {
    }

    assume true;
    assert {:id "id170"} {:subsumption 0} NewSyntax.Datte.x(s#0) < 4 ==> NewSyntax.Datte.DD_q(s#0);
    assume {:id "id171"} NewSyntax.Datte.x(s#0) < 4 ==> NewSyntax.Datte.DD_q(s#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DatatypeUpdate.dfy(65,5)
    assume $IsA#NewSyntax.Datte(s#0);
    assert {:id "id172"} !NewSyntax.Datte#Equal(s#0, #NewSyntax.Datte.CC(LitReal(4e0)));
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DatatypeUpdate.dfy(66,5)
    if (*)
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DatatypeUpdate.dfy(67,7)
        assert {:id "id173"} NewSyntax.Datte.BB_q(s#0);
        if (NewSyntax.Datte.b(s#0))
        {
        }

        assume true;
        assert {:id "id174"} {:subsumption 0} NewSyntax.Datte.b(s#0) ==> NewSyntax.Datte.BB_q(s#0);
        assume {:id "id175"} NewSyntax.Datte.b(s#0) ==> NewSyntax.Datte.BB_q(s#0);
    }
    else
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DatatypeUpdate.dfy(69,7)
        assert {:id "id176"} NewSyntax.Datte.BB_q(s#0);
        havoc dt_update_tmp#4#Z#2_0;
        assume {:id "id177"} let#2_0#0#0 == s#0;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#2_0#0#0, Tclass.NewSyntax.Datte(TReal));
        assume {:id "id178"} dt_update_tmp#4#Z#2_0 == let#2_0#0#0;
        havoc dt_update#b#0#Z#2_0;
        assume {:id "id179"} let#2_1#0#0 == Lit(true);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#2_1#0#0, TBool);
        assume {:id "id180"} dt_update#b#0#Z#2_0 == let#2_1#0#0;
        assert {:id "id181"} NewSyntax.Datte.AA_q(dt_update_tmp#4#Z#2_0)
           || NewSyntax.Datte.BB_q(dt_update_tmp#4#Z#2_0)
           || NewSyntax.Datte.DD_q(dt_update_tmp#4#Z#2_0);
        assert {:id "id182"} NewSyntax.Datte.BB_q((var dt_update_tmp#4#2_0 := s#0; 
            (var dt_update#b#0#2_0 := Lit(true); 
              #NewSyntax.Datte.BB(dt_update#b#0#2_0, NewSyntax.Datte.x(dt_update_tmp#4#2_0)))));
        assume true;
        assert {:id "id183"} NewSyntax.Datte.b((var dt_update_tmp#4#2_0 := s#0; 
            (var dt_update#b#0#2_0 := Lit(true); 
              #NewSyntax.Datte.BB(dt_update#b#0#2_0, NewSyntax.Datte.x(dt_update_tmp#4#2_0)))));
    }
}



// Constructor function declaration
function #NewSyntax.MyDataType.MyConstructor(int, bool) : DatatypeType;

const unique ##NewSyntax.MyDataType.MyConstructor: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: int, a#0#1#0: bool :: 
  { #NewSyntax.MyDataType.MyConstructor(a#0#0#0, a#0#1#0) } 
  DatatypeCtorId(#NewSyntax.MyDataType.MyConstructor(a#0#0#0, a#0#1#0))
     == ##NewSyntax.MyDataType.MyConstructor);
}

function NewSyntax.MyDataType.MyConstructor_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { NewSyntax.MyDataType.MyConstructor_q(d) } 
  NewSyntax.MyDataType.MyConstructor_q(d)
     <==> DatatypeCtorId(d) == ##NewSyntax.MyDataType.MyConstructor);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { NewSyntax.MyDataType.MyConstructor_q(d) } 
  NewSyntax.MyDataType.MyConstructor_q(d)
     ==> (exists a#1#0#0: int, a#1#1#0: bool :: 
      d == #NewSyntax.MyDataType.MyConstructor(a#1#0#0, a#1#1#0)));

// Constructor $Is
axiom (forall a#2#0#0: int, a#2#1#0: bool :: 
  { $Is(#NewSyntax.MyDataType.MyConstructor(a#2#0#0, a#2#1#0), 
      Tclass.NewSyntax.MyDataType()) } 
  $Is(#NewSyntax.MyDataType.MyConstructor(a#2#0#0, a#2#1#0), 
      Tclass.NewSyntax.MyDataType())
     <==> $Is(a#2#0#0, TInt) && $Is(a#2#1#0, TBool));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(NewSyntax.MyDataType.myint(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      NewSyntax.MyDataType.MyConstructor_q(d)
       && $IsAlloc(d, Tclass.NewSyntax.MyDataType(), $h)
     ==> $IsAlloc(NewSyntax.MyDataType.myint(d), TInt, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(NewSyntax.MyDataType.mybool(d), TBool, $h) } 
  $IsGoodHeap($h)
       && 
      NewSyntax.MyDataType.MyConstructor_q(d)
       && $IsAlloc(d, Tclass.NewSyntax.MyDataType(), $h)
     ==> $IsAlloc(NewSyntax.MyDataType.mybool(d), TBool, $h));

// Constructor literal
axiom (forall a#3#0#0: int, a#3#1#0: bool :: 
  { #NewSyntax.MyDataType.MyConstructor(LitInt(a#3#0#0), Lit(a#3#1#0)) } 
  #NewSyntax.MyDataType.MyConstructor(LitInt(a#3#0#0), Lit(a#3#1#0))
     == Lit(#NewSyntax.MyDataType.MyConstructor(a#3#0#0, a#3#1#0)));

function NewSyntax.MyDataType.myint(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#4#0#0: int, a#4#1#0: bool :: 
  { #NewSyntax.MyDataType.MyConstructor(a#4#0#0, a#4#1#0) } 
  NewSyntax.MyDataType.myint(#NewSyntax.MyDataType.MyConstructor(a#4#0#0, a#4#1#0))
     == a#4#0#0);

function NewSyntax.MyDataType.mybool(DatatypeType) : bool;

// Constructor injectivity
axiom (forall a#5#0#0: int, a#5#1#0: bool :: 
  { #NewSyntax.MyDataType.MyConstructor(a#5#0#0, a#5#1#0) } 
  NewSyntax.MyDataType.mybool(#NewSyntax.MyDataType.MyConstructor(a#5#0#0, a#5#1#0))
     == a#5#1#0);

// Constructor function declaration
function #NewSyntax.MyDataType.MyOtherConstructor(bool) : DatatypeType;

const unique ##NewSyntax.MyDataType.MyOtherConstructor: DtCtorId
uses {
// Constructor identifier
axiom (forall a#6#0#0: bool :: 
  { #NewSyntax.MyDataType.MyOtherConstructor(a#6#0#0) } 
  DatatypeCtorId(#NewSyntax.MyDataType.MyOtherConstructor(a#6#0#0))
     == ##NewSyntax.MyDataType.MyOtherConstructor);
}

function NewSyntax.MyDataType.MyOtherConstructor_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { NewSyntax.MyDataType.MyOtherConstructor_q(d) } 
  NewSyntax.MyDataType.MyOtherConstructor_q(d)
     <==> DatatypeCtorId(d) == ##NewSyntax.MyDataType.MyOtherConstructor);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { NewSyntax.MyDataType.MyOtherConstructor_q(d) } 
  NewSyntax.MyDataType.MyOtherConstructor_q(d)
     ==> (exists a#7#0#0: bool :: d == #NewSyntax.MyDataType.MyOtherConstructor(a#7#0#0)));

// Constructor $Is
axiom (forall a#8#0#0: bool :: 
  { $Is(#NewSyntax.MyDataType.MyOtherConstructor(a#8#0#0), Tclass.NewSyntax.MyDataType()) } 
  $Is(#NewSyntax.MyDataType.MyOtherConstructor(a#8#0#0), Tclass.NewSyntax.MyDataType())
     <==> $Is(a#8#0#0, TBool));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(NewSyntax.MyDataType.otherbool(d), TBool, $h) } 
  $IsGoodHeap($h)
       && 
      NewSyntax.MyDataType.MyOtherConstructor_q(d)
       && $IsAlloc(d, Tclass.NewSyntax.MyDataType(), $h)
     ==> $IsAlloc(NewSyntax.MyDataType.otherbool(d), TBool, $h));

// Constructor literal
axiom (forall a#9#0#0: bool :: 
  { #NewSyntax.MyDataType.MyOtherConstructor(Lit(a#9#0#0)) } 
  #NewSyntax.MyDataType.MyOtherConstructor(Lit(a#9#0#0))
     == Lit(#NewSyntax.MyDataType.MyOtherConstructor(a#9#0#0)));

function NewSyntax.MyDataType.otherbool(DatatypeType) : bool;

// Constructor injectivity
axiom (forall a#10#0#0: bool :: 
  { #NewSyntax.MyDataType.MyOtherConstructor(a#10#0#0) } 
  NewSyntax.MyDataType.otherbool(#NewSyntax.MyDataType.MyOtherConstructor(a#10#0#0))
     == a#10#0#0);

// Constructor function declaration
function #NewSyntax.MyDataType.MyNumericConstructor(int) : DatatypeType;

const unique ##NewSyntax.MyDataType.MyNumericConstructor: DtCtorId
uses {
// Constructor identifier
axiom (forall a#11#0#0: int :: 
  { #NewSyntax.MyDataType.MyNumericConstructor(a#11#0#0) } 
  DatatypeCtorId(#NewSyntax.MyDataType.MyNumericConstructor(a#11#0#0))
     == ##NewSyntax.MyDataType.MyNumericConstructor);
}

function NewSyntax.MyDataType.MyNumericConstructor_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { NewSyntax.MyDataType.MyNumericConstructor_q(d) } 
  NewSyntax.MyDataType.MyNumericConstructor_q(d)
     <==> DatatypeCtorId(d) == ##NewSyntax.MyDataType.MyNumericConstructor);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { NewSyntax.MyDataType.MyNumericConstructor_q(d) } 
  NewSyntax.MyDataType.MyNumericConstructor_q(d)
     ==> (exists a#12#0#0: int :: 
      d == #NewSyntax.MyDataType.MyNumericConstructor(a#12#0#0)));

// Constructor $Is
axiom (forall a#13#0#0: int :: 
  { $Is(#NewSyntax.MyDataType.MyNumericConstructor(a#13#0#0), 
      Tclass.NewSyntax.MyDataType()) } 
  $Is(#NewSyntax.MyDataType.MyNumericConstructor(a#13#0#0), 
      Tclass.NewSyntax.MyDataType())
     <==> $Is(a#13#0#0, TInt));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(NewSyntax.MyDataType._42(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      NewSyntax.MyDataType.MyNumericConstructor_q(d)
       && $IsAlloc(d, Tclass.NewSyntax.MyDataType(), $h)
     ==> $IsAlloc(NewSyntax.MyDataType._42(d), TInt, $h));

// Constructor literal
axiom (forall a#14#0#0: int :: 
  { #NewSyntax.MyDataType.MyNumericConstructor(LitInt(a#14#0#0)) } 
  #NewSyntax.MyDataType.MyNumericConstructor(LitInt(a#14#0#0))
     == Lit(#NewSyntax.MyDataType.MyNumericConstructor(a#14#0#0)));

function NewSyntax.MyDataType._42(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#15#0#0: int :: 
  { #NewSyntax.MyDataType.MyNumericConstructor(a#15#0#0) } 
  NewSyntax.MyDataType._42(#NewSyntax.MyDataType.MyNumericConstructor(a#15#0#0))
     == a#15#0#0);

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.NewSyntax.MyDataType(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.NewSyntax.MyDataType())
     ==> $IsAlloc(d, Tclass.NewSyntax.MyDataType(), $h));

// Depth-one case-split function
function $IsA#NewSyntax.MyDataType(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#NewSyntax.MyDataType(d) } 
  $IsA#NewSyntax.MyDataType(d)
     ==> NewSyntax.MyDataType.MyConstructor_q(d)
       || NewSyntax.MyDataType.MyOtherConstructor_q(d)
       || NewSyntax.MyDataType.MyNumericConstructor_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { NewSyntax.MyDataType.MyNumericConstructor_q(d), $Is(d, Tclass.NewSyntax.MyDataType()) } 
    { NewSyntax.MyDataType.MyOtherConstructor_q(d), $Is(d, Tclass.NewSyntax.MyDataType()) } 
    { NewSyntax.MyDataType.MyConstructor_q(d), $Is(d, Tclass.NewSyntax.MyDataType()) } 
  $Is(d, Tclass.NewSyntax.MyDataType())
     ==> NewSyntax.MyDataType.MyConstructor_q(d)
       || NewSyntax.MyDataType.MyOtherConstructor_q(d)
       || NewSyntax.MyDataType.MyNumericConstructor_q(d));

// Datatype extensional equality declaration
function NewSyntax.MyDataType#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #NewSyntax.MyDataType.MyConstructor
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { NewSyntax.MyDataType#Equal(a, b), NewSyntax.MyDataType.MyConstructor_q(a) } 
    { NewSyntax.MyDataType#Equal(a, b), NewSyntax.MyDataType.MyConstructor_q(b) } 
  NewSyntax.MyDataType.MyConstructor_q(a)
       && NewSyntax.MyDataType.MyConstructor_q(b)
     ==> (NewSyntax.MyDataType#Equal(a, b)
       <==> NewSyntax.MyDataType.myint(a) == NewSyntax.MyDataType.myint(b)
         && NewSyntax.MyDataType.mybool(a) == NewSyntax.MyDataType.mybool(b)));

// Datatype extensional equality definition: #NewSyntax.MyDataType.MyOtherConstructor
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { NewSyntax.MyDataType#Equal(a, b), NewSyntax.MyDataType.MyOtherConstructor_q(a) } 
    { NewSyntax.MyDataType#Equal(a, b), NewSyntax.MyDataType.MyOtherConstructor_q(b) } 
  NewSyntax.MyDataType.MyOtherConstructor_q(a)
       && NewSyntax.MyDataType.MyOtherConstructor_q(b)
     ==> (NewSyntax.MyDataType#Equal(a, b)
       <==> NewSyntax.MyDataType.otherbool(a) == NewSyntax.MyDataType.otherbool(b)));

// Datatype extensional equality definition: #NewSyntax.MyDataType.MyNumericConstructor
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { NewSyntax.MyDataType#Equal(a, b), NewSyntax.MyDataType.MyNumericConstructor_q(a) } 
    { NewSyntax.MyDataType#Equal(a, b), NewSyntax.MyDataType.MyNumericConstructor_q(b) } 
  NewSyntax.MyDataType.MyNumericConstructor_q(a)
       && NewSyntax.MyDataType.MyNumericConstructor_q(b)
     ==> (NewSyntax.MyDataType#Equal(a, b)
       <==> NewSyntax.MyDataType._42(a) == NewSyntax.MyDataType._42(b)));

// Datatype extensionality axiom: NewSyntax.MyDataType
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { NewSyntax.MyDataType#Equal(a, b) } 
  NewSyntax.MyDataType#Equal(a, b) <==> a == b);

const unique class.NewSyntax.MyDataType: ClassName;

// Constructor function declaration
function #NewSyntax.Dt.Ctor(int, bool) : DatatypeType;

const unique ##NewSyntax.Dt.Ctor: DtCtorId
uses {
// Constructor identifier
axiom (forall a#16#0#0: int, a#16#1#0: bool :: 
  { #NewSyntax.Dt.Ctor(a#16#0#0, a#16#1#0) } 
  DatatypeCtorId(#NewSyntax.Dt.Ctor(a#16#0#0, a#16#1#0)) == ##NewSyntax.Dt.Ctor);
}

function NewSyntax.Dt.Ctor_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { NewSyntax.Dt.Ctor_q(d) } 
  NewSyntax.Dt.Ctor_q(d) <==> DatatypeCtorId(d) == ##NewSyntax.Dt.Ctor);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { NewSyntax.Dt.Ctor_q(d) } 
  NewSyntax.Dt.Ctor_q(d)
     ==> (exists a#17#0#0: int, a#17#1#0: bool :: 
      d == #NewSyntax.Dt.Ctor(a#17#0#0, a#17#1#0)));

// Constructor $Is
axiom (forall a#18#0#0: int, a#18#1#0: bool :: 
  { $Is(#NewSyntax.Dt.Ctor(a#18#0#0, a#18#1#0), Tclass.NewSyntax.Dt()) } 
  $Is(#NewSyntax.Dt.Ctor(a#18#0#0, a#18#1#0), Tclass.NewSyntax.Dt())
     <==> $Is(a#18#0#0, TInt) && $Is(a#18#1#0, TBool));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(NewSyntax.Dt.x(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      NewSyntax.Dt.Ctor_q(d)
       && $IsAlloc(d, Tclass.NewSyntax.Dt(), $h)
     ==> $IsAlloc(NewSyntax.Dt.x(d), TInt, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(NewSyntax.Dt.y(d), TBool, $h) } 
  $IsGoodHeap($h)
       && 
      NewSyntax.Dt.Ctor_q(d)
       && $IsAlloc(d, Tclass.NewSyntax.Dt(), $h)
     ==> $IsAlloc(NewSyntax.Dt.y(d), TBool, $h));

// Constructor literal
axiom (forall a#19#0#0: int, a#19#1#0: bool :: 
  { #NewSyntax.Dt.Ctor(LitInt(a#19#0#0), Lit(a#19#1#0)) } 
  #NewSyntax.Dt.Ctor(LitInt(a#19#0#0), Lit(a#19#1#0))
     == Lit(#NewSyntax.Dt.Ctor(a#19#0#0, a#19#1#0)));

function NewSyntax.Dt.x(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#20#0#0: int, a#20#1#0: bool :: 
  { #NewSyntax.Dt.Ctor(a#20#0#0, a#20#1#0) } 
  NewSyntax.Dt.x(#NewSyntax.Dt.Ctor(a#20#0#0, a#20#1#0)) == a#20#0#0);

function NewSyntax.Dt.y(DatatypeType) : bool;

// Constructor injectivity
axiom (forall a#21#0#0: int, a#21#1#0: bool :: 
  { #NewSyntax.Dt.Ctor(a#21#0#0, a#21#1#0) } 
  NewSyntax.Dt.y(#NewSyntax.Dt.Ctor(a#21#0#0, a#21#1#0)) == a#21#1#0);

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.NewSyntax.Dt(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.NewSyntax.Dt())
     ==> $IsAlloc(d, Tclass.NewSyntax.Dt(), $h));

// Depth-one case-split function
function $IsA#NewSyntax.Dt(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#NewSyntax.Dt(d) } 
  $IsA#NewSyntax.Dt(d) ==> NewSyntax.Dt.Ctor_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { NewSyntax.Dt.Ctor_q(d), $Is(d, Tclass.NewSyntax.Dt()) } 
  $Is(d, Tclass.NewSyntax.Dt()) ==> NewSyntax.Dt.Ctor_q(d));

// Datatype extensional equality declaration
function NewSyntax.Dt#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #NewSyntax.Dt.Ctor
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { NewSyntax.Dt#Equal(a, b) } 
  NewSyntax.Dt#Equal(a, b)
     <==> NewSyntax.Dt.x(a) == NewSyntax.Dt.x(b) && NewSyntax.Dt.y(a) == NewSyntax.Dt.y(b));

// Datatype extensionality axiom: NewSyntax.Dt
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { NewSyntax.Dt#Equal(a, b) } 
  NewSyntax.Dt#Equal(a, b) <==> a == b);

const unique class.NewSyntax.Dt: ClassName;

// Constructor function declaration
function #NewSyntax.NumericNames.NumNam(int, real, bool) : DatatypeType;

const unique ##NewSyntax.NumericNames.NumNam: DtCtorId
uses {
// Constructor identifier
axiom (forall a#22#0#0: int, a#22#1#0: real, a#22#2#0: bool :: 
  { #NewSyntax.NumericNames.NumNam(a#22#0#0, a#22#1#0, a#22#2#0) } 
  DatatypeCtorId(#NewSyntax.NumericNames.NumNam(a#22#0#0, a#22#1#0, a#22#2#0))
     == ##NewSyntax.NumericNames.NumNam);
}

function NewSyntax.NumericNames.NumNam_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { NewSyntax.NumericNames.NumNam_q(d) } 
  NewSyntax.NumericNames.NumNam_q(d)
     <==> DatatypeCtorId(d) == ##NewSyntax.NumericNames.NumNam);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { NewSyntax.NumericNames.NumNam_q(d) } 
  NewSyntax.NumericNames.NumNam_q(d)
     ==> (exists a#23#0#0: int, a#23#1#0: real, a#23#2#0: bool :: 
      d == #NewSyntax.NumericNames.NumNam(a#23#0#0, a#23#1#0, a#23#2#0)));

// Constructor $Is
axiom (forall a#24#0#0: int, a#24#1#0: real, a#24#2#0: bool :: 
  { $Is(#NewSyntax.NumericNames.NumNam(a#24#0#0, a#24#1#0, a#24#2#0), 
      Tclass.NewSyntax.NumericNames()) } 
  $Is(#NewSyntax.NumericNames.NumNam(a#24#0#0, a#24#1#0, a#24#2#0), 
      Tclass.NewSyntax.NumericNames())
     <==> $Is(a#24#0#0, TInt) && $Is(a#24#1#0, TReal) && $Is(a#24#2#0, TBool));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(NewSyntax.NumericNames._010(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      NewSyntax.NumericNames.NumNam_q(d)
       && $IsAlloc(d, Tclass.NewSyntax.NumericNames(), $h)
     ==> $IsAlloc(NewSyntax.NumericNames._010(d), TInt, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(NewSyntax.NumericNames._10(d), TReal, $h) } 
  $IsGoodHeap($h)
       && 
      NewSyntax.NumericNames.NumNam_q(d)
       && $IsAlloc(d, Tclass.NewSyntax.NumericNames(), $h)
     ==> $IsAlloc(NewSyntax.NumericNames._10(d), TReal, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(NewSyntax.NumericNames.f(d), TBool, $h) } 
  $IsGoodHeap($h)
       && 
      NewSyntax.NumericNames.NumNam_q(d)
       && $IsAlloc(d, Tclass.NewSyntax.NumericNames(), $h)
     ==> $IsAlloc(NewSyntax.NumericNames.f(d), TBool, $h));

// Constructor literal
axiom (forall a#25#0#0: int, a#25#1#0: real, a#25#2#0: bool :: 
  { #NewSyntax.NumericNames.NumNam(LitInt(a#25#0#0), LitReal(a#25#1#0), Lit(a#25#2#0)) } 
  #NewSyntax.NumericNames.NumNam(LitInt(a#25#0#0), LitReal(a#25#1#0), Lit(a#25#2#0))
     == Lit(#NewSyntax.NumericNames.NumNam(a#25#0#0, a#25#1#0, a#25#2#0)));

function NewSyntax.NumericNames._010(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#26#0#0: int, a#26#1#0: real, a#26#2#0: bool :: 
  { #NewSyntax.NumericNames.NumNam(a#26#0#0, a#26#1#0, a#26#2#0) } 
  NewSyntax.NumericNames._010(#NewSyntax.NumericNames.NumNam(a#26#0#0, a#26#1#0, a#26#2#0))
     == a#26#0#0);

function NewSyntax.NumericNames._10(DatatypeType) : real;

// Constructor injectivity
axiom (forall a#27#0#0: int, a#27#1#0: real, a#27#2#0: bool :: 
  { #NewSyntax.NumericNames.NumNam(a#27#0#0, a#27#1#0, a#27#2#0) } 
  NewSyntax.NumericNames._10(#NewSyntax.NumericNames.NumNam(a#27#0#0, a#27#1#0, a#27#2#0))
     == a#27#1#0);

function NewSyntax.NumericNames.f(DatatypeType) : bool;

// Constructor injectivity
axiom (forall a#28#0#0: int, a#28#1#0: real, a#28#2#0: bool :: 
  { #NewSyntax.NumericNames.NumNam(a#28#0#0, a#28#1#0, a#28#2#0) } 
  NewSyntax.NumericNames.f(#NewSyntax.NumericNames.NumNam(a#28#0#0, a#28#1#0, a#28#2#0))
     == a#28#2#0);

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.NewSyntax.NumericNames(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.NewSyntax.NumericNames())
     ==> $IsAlloc(d, Tclass.NewSyntax.NumericNames(), $h));

// Depth-one case-split function
function $IsA#NewSyntax.NumericNames(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#NewSyntax.NumericNames(d) } 
  $IsA#NewSyntax.NumericNames(d) ==> NewSyntax.NumericNames.NumNam_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { NewSyntax.NumericNames.NumNam_q(d), $Is(d, Tclass.NewSyntax.NumericNames()) } 
  $Is(d, Tclass.NewSyntax.NumericNames()) ==> NewSyntax.NumericNames.NumNam_q(d));

// Datatype extensional equality declaration
function NewSyntax.NumericNames#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #NewSyntax.NumericNames.NumNam
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { NewSyntax.NumericNames#Equal(a, b) } 
  NewSyntax.NumericNames#Equal(a, b)
     <==> NewSyntax.NumericNames._010(a) == NewSyntax.NumericNames._010(b)
       && NewSyntax.NumericNames._10(a) == NewSyntax.NumericNames._10(b)
       && NewSyntax.NumericNames.f(a) == NewSyntax.NumericNames.f(b));

// Datatype extensionality axiom: NewSyntax.NumericNames
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { NewSyntax.NumericNames#Equal(a, b) } 
  NewSyntax.NumericNames#Equal(a, b) <==> a == b);

const unique class.NewSyntax.NumericNames: ClassName;

// Constructor function declaration
function #NewSyntax.Datte.AA(int, int) : DatatypeType;

const unique ##NewSyntax.Datte.AA: DtCtorId
uses {
// Constructor identifier
axiom (forall a#29#0#0: int, a#29#1#0: int :: 
  { #NewSyntax.Datte.AA(a#29#0#0, a#29#1#0) } 
  DatatypeCtorId(#NewSyntax.Datte.AA(a#29#0#0, a#29#1#0)) == ##NewSyntax.Datte.AA);
}

function NewSyntax.Datte.AA_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { NewSyntax.Datte.AA_q(d) } 
  NewSyntax.Datte.AA_q(d) <==> DatatypeCtorId(d) == ##NewSyntax.Datte.AA);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { NewSyntax.Datte.AA_q(d) } 
  NewSyntax.Datte.AA_q(d)
     ==> (exists a#30#0#0: int, a#30#1#0: int :: 
      d == #NewSyntax.Datte.AA(a#30#0#0, a#30#1#0)));

// Constructor $Is
axiom (forall NewSyntax.Datte$T: Ty, a#31#0#0: int, a#31#1#0: int :: 
  { $Is(#NewSyntax.Datte.AA(a#31#0#0, a#31#1#0), 
      Tclass.NewSyntax.Datte(NewSyntax.Datte$T)) } 
  $Is(#NewSyntax.Datte.AA(a#31#0#0, a#31#1#0), 
      Tclass.NewSyntax.Datte(NewSyntax.Datte$T))
     <==> $Is(a#31#0#0, TInt) && $Is(a#31#1#0, TInt));

// Constructor $IsAlloc
axiom (forall NewSyntax.Datte$T: Ty, a#31#0#0: int, a#31#1#0: int, $h: Heap :: 
  { $IsAlloc(#NewSyntax.Datte.AA(a#31#0#0, a#31#1#0), 
      Tclass.NewSyntax.Datte(NewSyntax.Datte$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#NewSyntax.Datte.AA(a#31#0#0, a#31#1#0), 
        Tclass.NewSyntax.Datte(NewSyntax.Datte$T), 
        $h)
       <==> $IsAlloc(a#31#0#0, TInt, $h) && $IsAlloc(a#31#1#0, TInt, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(NewSyntax.Datte.a(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      NewSyntax.Datte.AA_q(d)
       && (exists NewSyntax.Datte$T: Ty :: 
        { $IsAlloc(d, Tclass.NewSyntax.Datte(NewSyntax.Datte$T), $h) } 
        $IsAlloc(d, Tclass.NewSyntax.Datte(NewSyntax.Datte$T), $h))
     ==> $IsAlloc(NewSyntax.Datte.a(d), TInt, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(NewSyntax.Datte.x(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      NewSyntax.Datte.AA_q(d)
       && (exists NewSyntax.Datte$T: Ty :: 
        { $IsAlloc(d, Tclass.NewSyntax.Datte(NewSyntax.Datte$T), $h) } 
        $IsAlloc(d, Tclass.NewSyntax.Datte(NewSyntax.Datte$T), $h))
     ==> $IsAlloc(NewSyntax.Datte.x(d), TInt, $h));

// Constructor literal
axiom (forall a#32#0#0: int, a#32#1#0: int :: 
  { #NewSyntax.Datte.AA(LitInt(a#32#0#0), LitInt(a#32#1#0)) } 
  #NewSyntax.Datte.AA(LitInt(a#32#0#0), LitInt(a#32#1#0))
     == Lit(#NewSyntax.Datte.AA(a#32#0#0, a#32#1#0)));

function NewSyntax.Datte.a(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#33#0#0: int, a#33#1#0: int :: 
  { #NewSyntax.Datte.AA(a#33#0#0, a#33#1#0) } 
  NewSyntax.Datte.a(#NewSyntax.Datte.AA(a#33#0#0, a#33#1#0)) == a#33#0#0);

function NewSyntax.Datte.x(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#34#0#0: int, a#34#1#0: int :: 
  { #NewSyntax.Datte.AA(a#34#0#0, a#34#1#0) } 
  NewSyntax.Datte.x(#NewSyntax.Datte.AA(a#34#0#0, a#34#1#0)) == a#34#1#0);

// Constructor function declaration
function #NewSyntax.Datte.BB(bool, int) : DatatypeType;

const unique ##NewSyntax.Datte.BB: DtCtorId
uses {
// Constructor identifier
axiom (forall a#35#0#0: bool, a#35#1#0: int :: 
  { #NewSyntax.Datte.BB(a#35#0#0, a#35#1#0) } 
  DatatypeCtorId(#NewSyntax.Datte.BB(a#35#0#0, a#35#1#0)) == ##NewSyntax.Datte.BB);
}

function NewSyntax.Datte.BB_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { NewSyntax.Datte.BB_q(d) } 
  NewSyntax.Datte.BB_q(d) <==> DatatypeCtorId(d) == ##NewSyntax.Datte.BB);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { NewSyntax.Datte.BB_q(d) } 
  NewSyntax.Datte.BB_q(d)
     ==> (exists a#36#0#0: bool, a#36#1#0: int :: 
      d == #NewSyntax.Datte.BB(a#36#0#0, a#36#1#0)));

// Constructor $Is
axiom (forall NewSyntax.Datte$T: Ty, a#37#0#0: bool, a#37#1#0: int :: 
  { $Is(#NewSyntax.Datte.BB(a#37#0#0, a#37#1#0), 
      Tclass.NewSyntax.Datte(NewSyntax.Datte$T)) } 
  $Is(#NewSyntax.Datte.BB(a#37#0#0, a#37#1#0), 
      Tclass.NewSyntax.Datte(NewSyntax.Datte$T))
     <==> $Is(a#37#0#0, TBool) && $Is(a#37#1#0, TInt));

// Constructor $IsAlloc
axiom (forall NewSyntax.Datte$T: Ty, a#37#0#0: bool, a#37#1#0: int, $h: Heap :: 
  { $IsAlloc(#NewSyntax.Datte.BB(a#37#0#0, a#37#1#0), 
      Tclass.NewSyntax.Datte(NewSyntax.Datte$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#NewSyntax.Datte.BB(a#37#0#0, a#37#1#0), 
        Tclass.NewSyntax.Datte(NewSyntax.Datte$T), 
        $h)
       <==> $IsAlloc(a#37#0#0, TBool, $h) && $IsAlloc(a#37#1#0, TInt, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(NewSyntax.Datte.b(d), TBool, $h) } 
  $IsGoodHeap($h)
       && 
      NewSyntax.Datte.BB_q(d)
       && (exists NewSyntax.Datte$T: Ty :: 
        { $IsAlloc(d, Tclass.NewSyntax.Datte(NewSyntax.Datte$T), $h) } 
        $IsAlloc(d, Tclass.NewSyntax.Datte(NewSyntax.Datte$T), $h))
     ==> $IsAlloc(NewSyntax.Datte.b(d), TBool, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(NewSyntax.Datte.x(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      NewSyntax.Datte.BB_q(d)
       && (exists NewSyntax.Datte$T: Ty :: 
        { $IsAlloc(d, Tclass.NewSyntax.Datte(NewSyntax.Datte$T), $h) } 
        $IsAlloc(d, Tclass.NewSyntax.Datte(NewSyntax.Datte$T), $h))
     ==> $IsAlloc(NewSyntax.Datte.x(d), TInt, $h));

// Constructor literal
axiom (forall a#38#0#0: bool, a#38#1#0: int :: 
  { #NewSyntax.Datte.BB(Lit(a#38#0#0), LitInt(a#38#1#0)) } 
  #NewSyntax.Datte.BB(Lit(a#38#0#0), LitInt(a#38#1#0))
     == Lit(#NewSyntax.Datte.BB(a#38#0#0, a#38#1#0)));

function NewSyntax.Datte.b(DatatypeType) : bool;

// Constructor injectivity
axiom (forall a#39#0#0: bool, a#39#1#0: int :: 
  { #NewSyntax.Datte.BB(a#39#0#0, a#39#1#0) } 
  NewSyntax.Datte.b(#NewSyntax.Datte.BB(a#39#0#0, a#39#1#0)) == a#39#0#0);

// Constructor injectivity
axiom (forall a#40#0#0: bool, a#40#1#0: int :: 
  { #NewSyntax.Datte.BB(a#40#0#0, a#40#1#0) } 
  NewSyntax.Datte.x(#NewSyntax.Datte.BB(a#40#0#0, a#40#1#0)) == a#40#1#0);

// Constructor function declaration
function #NewSyntax.Datte.CC(real) : DatatypeType;

const unique ##NewSyntax.Datte.CC: DtCtorId
uses {
// Constructor identifier
axiom (forall a#41#0#0: real :: 
  { #NewSyntax.Datte.CC(a#41#0#0) } 
  DatatypeCtorId(#NewSyntax.Datte.CC(a#41#0#0)) == ##NewSyntax.Datte.CC);
}

function NewSyntax.Datte.CC_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { NewSyntax.Datte.CC_q(d) } 
  NewSyntax.Datte.CC_q(d) <==> DatatypeCtorId(d) == ##NewSyntax.Datte.CC);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { NewSyntax.Datte.CC_q(d) } 
  NewSyntax.Datte.CC_q(d)
     ==> (exists a#42#0#0: real :: d == #NewSyntax.Datte.CC(a#42#0#0)));

// Constructor $Is
axiom (forall NewSyntax.Datte$T: Ty, a#43#0#0: real :: 
  { $Is(#NewSyntax.Datte.CC(a#43#0#0), Tclass.NewSyntax.Datte(NewSyntax.Datte$T)) } 
  $Is(#NewSyntax.Datte.CC(a#43#0#0), Tclass.NewSyntax.Datte(NewSyntax.Datte$T))
     <==> $Is(a#43#0#0, TReal));

// Constructor $IsAlloc
axiom (forall NewSyntax.Datte$T: Ty, a#43#0#0: real, $h: Heap :: 
  { $IsAlloc(#NewSyntax.Datte.CC(a#43#0#0), Tclass.NewSyntax.Datte(NewSyntax.Datte$T), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#NewSyntax.Datte.CC(a#43#0#0), Tclass.NewSyntax.Datte(NewSyntax.Datte$T), $h)
       <==> $IsAlloc(a#43#0#0, TReal, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(NewSyntax.Datte.c(d), TReal, $h) } 
  $IsGoodHeap($h)
       && 
      NewSyntax.Datte.CC_q(d)
       && (exists NewSyntax.Datte$T: Ty :: 
        { $IsAlloc(d, Tclass.NewSyntax.Datte(NewSyntax.Datte$T), $h) } 
        $IsAlloc(d, Tclass.NewSyntax.Datte(NewSyntax.Datte$T), $h))
     ==> $IsAlloc(NewSyntax.Datte.c(d), TReal, $h));

// Constructor literal
axiom (forall a#44#0#0: real :: 
  { #NewSyntax.Datte.CC(LitReal(a#44#0#0)) } 
  #NewSyntax.Datte.CC(LitReal(a#44#0#0)) == Lit(#NewSyntax.Datte.CC(a#44#0#0)));

function NewSyntax.Datte.c(DatatypeType) : real;

// Constructor injectivity
axiom (forall a#45#0#0: real :: 
  { #NewSyntax.Datte.CC(a#45#0#0) } 
  NewSyntax.Datte.c(#NewSyntax.Datte.CC(a#45#0#0)) == a#45#0#0);

// Constructor function declaration
function #NewSyntax.Datte.DD(int, Set, bv27, Box) : DatatypeType;

const unique ##NewSyntax.Datte.DD: DtCtorId
uses {
// Constructor identifier
axiom (forall a#46#0#0: int, a#46#1#0: Set, a#46#2#0: bv27, a#46#3#0: Box :: 
  { #NewSyntax.Datte.DD(a#46#0#0, a#46#1#0, a#46#2#0, a#46#3#0) } 
  DatatypeCtorId(#NewSyntax.Datte.DD(a#46#0#0, a#46#1#0, a#46#2#0, a#46#3#0))
     == ##NewSyntax.Datte.DD);
}

function NewSyntax.Datte.DD_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { NewSyntax.Datte.DD_q(d) } 
  NewSyntax.Datte.DD_q(d) <==> DatatypeCtorId(d) == ##NewSyntax.Datte.DD);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { NewSyntax.Datte.DD_q(d) } 
  NewSyntax.Datte.DD_q(d)
     ==> (exists a#47#0#0: int, a#47#1#0: Set, a#47#2#0: bv27, a#47#3#0: Box :: 
      d == #NewSyntax.Datte.DD(a#47#0#0, a#47#1#0, a#47#2#0, a#47#3#0)));

// Constructor $Is
axiom (forall NewSyntax.Datte$T: Ty, 
    a#48#0#0: int, 
    a#48#1#0: Set, 
    a#48#2#0: bv27, 
    a#48#3#0: Box :: 
  { $Is(#NewSyntax.Datte.DD(a#48#0#0, a#48#1#0, a#48#2#0, a#48#3#0), 
      Tclass.NewSyntax.Datte(NewSyntax.Datte$T)) } 
  $Is(#NewSyntax.Datte.DD(a#48#0#0, a#48#1#0, a#48#2#0, a#48#3#0), 
      Tclass.NewSyntax.Datte(NewSyntax.Datte$T))
     <==> $Is(a#48#0#0, TInt)
       && $Is(a#48#1#0, TSet(TInt))
       && $Is(a#48#2#0, TBitvector(27))
       && $IsBox(a#48#3#0, NewSyntax.Datte$T));

// Constructor $IsAlloc
axiom (forall NewSyntax.Datte$T: Ty, 
    a#48#0#0: int, 
    a#48#1#0: Set, 
    a#48#2#0: bv27, 
    a#48#3#0: Box, 
    $h: Heap :: 
  { $IsAlloc(#NewSyntax.Datte.DD(a#48#0#0, a#48#1#0, a#48#2#0, a#48#3#0), 
      Tclass.NewSyntax.Datte(NewSyntax.Datte$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#NewSyntax.Datte.DD(a#48#0#0, a#48#1#0, a#48#2#0, a#48#3#0), 
        Tclass.NewSyntax.Datte(NewSyntax.Datte$T), 
        $h)
       <==> $IsAlloc(a#48#0#0, TInt, $h)
         && $IsAlloc(a#48#1#0, TSet(TInt), $h)
         && $IsAlloc(a#48#2#0, TBitvector(27), $h)
         && $IsAllocBox(a#48#3#0, NewSyntax.Datte$T, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(NewSyntax.Datte.x(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      NewSyntax.Datte.DD_q(d)
       && (exists NewSyntax.Datte$T: Ty :: 
        { $IsAlloc(d, Tclass.NewSyntax.Datte(NewSyntax.Datte$T), $h) } 
        $IsAlloc(d, Tclass.NewSyntax.Datte(NewSyntax.Datte$T), $h))
     ==> $IsAlloc(NewSyntax.Datte.x(d), TInt, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(NewSyntax.Datte.o(d), TSet(TInt), $h) } 
  $IsGoodHeap($h)
       && 
      NewSyntax.Datte.DD_q(d)
       && (exists NewSyntax.Datte$T: Ty :: 
        { $IsAlloc(d, Tclass.NewSyntax.Datte(NewSyntax.Datte$T), $h) } 
        $IsAlloc(d, Tclass.NewSyntax.Datte(NewSyntax.Datte$T), $h))
     ==> $IsAlloc(NewSyntax.Datte.o(d), TSet(TInt), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(NewSyntax.Datte.p(d), TBitvector(27), $h) } 
  $IsGoodHeap($h)
       && 
      NewSyntax.Datte.DD_q(d)
       && (exists NewSyntax.Datte$T: Ty :: 
        { $IsAlloc(d, Tclass.NewSyntax.Datte(NewSyntax.Datte$T), $h) } 
        $IsAlloc(d, Tclass.NewSyntax.Datte(NewSyntax.Datte$T), $h))
     ==> $IsAlloc(NewSyntax.Datte.p(d), TBitvector(27), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, NewSyntax.Datte$T: Ty, $h: Heap :: 
  { $IsAllocBox(NewSyntax.Datte.q(d), NewSyntax.Datte$T, $h) } 
  $IsGoodHeap($h)
       && 
      NewSyntax.Datte.DD_q(d)
       && $IsAlloc(d, Tclass.NewSyntax.Datte(NewSyntax.Datte$T), $h)
     ==> $IsAllocBox(NewSyntax.Datte.q(d), NewSyntax.Datte$T, $h));

// Constructor literal
axiom (forall a#49#0#0: int, a#49#1#0: Set, a#49#2#0: bv27, a#49#3#0: Box :: 
  { #NewSyntax.Datte.DD(LitInt(a#49#0#0), Lit(a#49#1#0), Lit(a#49#2#0), Lit(a#49#3#0)) } 
  #NewSyntax.Datte.DD(LitInt(a#49#0#0), Lit(a#49#1#0), Lit(a#49#2#0), Lit(a#49#3#0))
     == Lit(#NewSyntax.Datte.DD(a#49#0#0, a#49#1#0, a#49#2#0, a#49#3#0)));

// Constructor injectivity
axiom (forall a#50#0#0: int, a#50#1#0: Set, a#50#2#0: bv27, a#50#3#0: Box :: 
  { #NewSyntax.Datte.DD(a#50#0#0, a#50#1#0, a#50#2#0, a#50#3#0) } 
  NewSyntax.Datte.x(#NewSyntax.Datte.DD(a#50#0#0, a#50#1#0, a#50#2#0, a#50#3#0))
     == a#50#0#0);

function NewSyntax.Datte.o(DatatypeType) : Set;

// Constructor injectivity
axiom (forall a#51#0#0: int, a#51#1#0: Set, a#51#2#0: bv27, a#51#3#0: Box :: 
  { #NewSyntax.Datte.DD(a#51#0#0, a#51#1#0, a#51#2#0, a#51#3#0) } 
  NewSyntax.Datte.o(#NewSyntax.Datte.DD(a#51#0#0, a#51#1#0, a#51#2#0, a#51#3#0))
     == a#51#1#0);

// Inductive set element rank
axiom (forall a#52#0#0: int, a#52#1#0: Set, a#52#2#0: bv27, a#52#3#0: Box, d: DatatypeType :: 
  { Set#IsMember(a#52#1#0, $Box(d)), #NewSyntax.Datte.DD(a#52#0#0, a#52#1#0, a#52#2#0, a#52#3#0) } 
  Set#IsMember(a#52#1#0, $Box(d))
     ==> DtRank(d) < DtRank(#NewSyntax.Datte.DD(a#52#0#0, a#52#1#0, a#52#2#0, a#52#3#0)));

function NewSyntax.Datte.p(DatatypeType) : bv27;

// Constructor injectivity
axiom (forall a#53#0#0: int, a#53#1#0: Set, a#53#2#0: bv27, a#53#3#0: Box :: 
  { #NewSyntax.Datte.DD(a#53#0#0, a#53#1#0, a#53#2#0, a#53#3#0) } 
  NewSyntax.Datte.p(#NewSyntax.Datte.DD(a#53#0#0, a#53#1#0, a#53#2#0, a#53#3#0))
     == a#53#2#0);

function NewSyntax.Datte.q(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#54#0#0: int, a#54#1#0: Set, a#54#2#0: bv27, a#54#3#0: Box :: 
  { #NewSyntax.Datte.DD(a#54#0#0, a#54#1#0, a#54#2#0, a#54#3#0) } 
  NewSyntax.Datte.q(#NewSyntax.Datte.DD(a#54#0#0, a#54#1#0, a#54#2#0, a#54#3#0))
     == a#54#3#0);

// Inductive rank
axiom (forall a#55#0#0: int, a#55#1#0: Set, a#55#2#0: bv27, a#55#3#0: Box :: 
  { #NewSyntax.Datte.DD(a#55#0#0, a#55#1#0, a#55#2#0, a#55#3#0) } 
  BoxRank(a#55#3#0)
     < DtRank(#NewSyntax.Datte.DD(a#55#0#0, a#55#1#0, a#55#2#0, a#55#3#0)));

// Depth-one case-split function
function $IsA#NewSyntax.Datte(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#NewSyntax.Datte(d) } 
  $IsA#NewSyntax.Datte(d)
     ==> NewSyntax.Datte.AA_q(d)
       || NewSyntax.Datte.BB_q(d)
       || NewSyntax.Datte.CC_q(d)
       || NewSyntax.Datte.DD_q(d));

// Questionmark data type disjunctivity
axiom (forall NewSyntax.Datte$T: Ty, d: DatatypeType :: 
  { NewSyntax.Datte.DD_q(d), $Is(d, Tclass.NewSyntax.Datte(NewSyntax.Datte$T)) } 
    { NewSyntax.Datte.CC_q(d), $Is(d, Tclass.NewSyntax.Datte(NewSyntax.Datte$T)) } 
    { NewSyntax.Datte.BB_q(d), $Is(d, Tclass.NewSyntax.Datte(NewSyntax.Datte$T)) } 
    { NewSyntax.Datte.AA_q(d), $Is(d, Tclass.NewSyntax.Datte(NewSyntax.Datte$T)) } 
  $Is(d, Tclass.NewSyntax.Datte(NewSyntax.Datte$T))
     ==> NewSyntax.Datte.AA_q(d)
       || NewSyntax.Datte.BB_q(d)
       || NewSyntax.Datte.CC_q(d)
       || NewSyntax.Datte.DD_q(d));

// Datatype extensional equality declaration
function NewSyntax.Datte#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #NewSyntax.Datte.AA
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { NewSyntax.Datte#Equal(a, b), NewSyntax.Datte.AA_q(a) } 
    { NewSyntax.Datte#Equal(a, b), NewSyntax.Datte.AA_q(b) } 
  NewSyntax.Datte.AA_q(a) && NewSyntax.Datte.AA_q(b)
     ==> (NewSyntax.Datte#Equal(a, b)
       <==> NewSyntax.Datte.a(a) == NewSyntax.Datte.a(b)
         && NewSyntax.Datte.x(a) == NewSyntax.Datte.x(b)));

// Datatype extensional equality definition: #NewSyntax.Datte.BB
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { NewSyntax.Datte#Equal(a, b), NewSyntax.Datte.BB_q(a) } 
    { NewSyntax.Datte#Equal(a, b), NewSyntax.Datte.BB_q(b) } 
  NewSyntax.Datte.BB_q(a) && NewSyntax.Datte.BB_q(b)
     ==> (NewSyntax.Datte#Equal(a, b)
       <==> NewSyntax.Datte.b(a) == NewSyntax.Datte.b(b)
         && NewSyntax.Datte.x(a) == NewSyntax.Datte.x(b)));

// Datatype extensional equality definition: #NewSyntax.Datte.CC
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { NewSyntax.Datte#Equal(a, b), NewSyntax.Datte.CC_q(a) } 
    { NewSyntax.Datte#Equal(a, b), NewSyntax.Datte.CC_q(b) } 
  NewSyntax.Datte.CC_q(a) && NewSyntax.Datte.CC_q(b)
     ==> (NewSyntax.Datte#Equal(a, b) <==> NewSyntax.Datte.c(a) == NewSyntax.Datte.c(b)));

// Datatype extensional equality definition: #NewSyntax.Datte.DD
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { NewSyntax.Datte#Equal(a, b), NewSyntax.Datte.DD_q(a) } 
    { NewSyntax.Datte#Equal(a, b), NewSyntax.Datte.DD_q(b) } 
  NewSyntax.Datte.DD_q(a) && NewSyntax.Datte.DD_q(b)
     ==> (NewSyntax.Datte#Equal(a, b)
       <==> NewSyntax.Datte.x(a) == NewSyntax.Datte.x(b)
         && Set#Equal(NewSyntax.Datte.o(a), NewSyntax.Datte.o(b))
         && NewSyntax.Datte.p(a) == NewSyntax.Datte.p(b)
         && NewSyntax.Datte.q(a) == NewSyntax.Datte.q(b)));

// Datatype extensionality axiom: NewSyntax.Datte
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { NewSyntax.Datte#Equal(a, b) } 
  NewSyntax.Datte#Equal(a, b) <==> a == b);

const unique class.NewSyntax.Datte: ClassName;

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

const unique tytagFamily$MyDataType: TyTagFamily;

const unique tytagFamily$Dt: TyTagFamily;

const unique tytagFamily$NumericNames: TyTagFamily;

const unique tytagFamily$Datte: TyTagFamily;
