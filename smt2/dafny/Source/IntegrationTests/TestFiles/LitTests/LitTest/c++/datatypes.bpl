// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/datatypes.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/datatypes-@PROC@.smt2 /normalizeNames:0 /emitDebugInformation:1 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/datatypes.dfy

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

function Tclass._module.Example1() : Ty
uses {
// Tclass._module.Example1 Tag
axiom Tag(Tclass._module.Example1()) == Tagclass._module.Example1
   && TagFamily(Tclass._module.Example1()) == tytagFamily$Example1;
}

const unique Tagclass._module.Example1: TyTag;

// Box/unbox axiom for Tclass._module.Example1
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Example1()) } 
  $IsBox(bx, Tclass._module.Example1())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Example1()));

procedure {:verboseName "Matcher (well-formedness)"} CheckWellFormed$$_module.__default.Matcher(e#0: DatatypeType
       where $Is(e#0, Tclass._module.Example1())
         && $IsAlloc(e#0, Tclass._module.Example1(), $Heap)
         && $IsA#_module.Example1(e#0));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Matcher (call)"} Call$$_module.__default.Matcher(e#0: DatatypeType
       where $Is(e#0, Tclass._module.Example1())
         && $IsAlloc(e#0, Tclass._module.Example1(), $Heap)
         && $IsA#_module.Example1(e#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Matcher (correctness)"} Impl$$_module.__default.Matcher(e#0: DatatypeType
       where $Is(e#0, Tclass._module.Example1())
         && $IsAlloc(e#0, Tclass._module.Example1(), $Heap)
         && $IsA#_module.Example1(e#0))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.uint32() : Ty
uses {
// Tclass._module.uint32 Tag
axiom Tag(Tclass._module.uint32()) == Tagclass._module.uint32
   && TagFamily(Tclass._module.uint32()) == tytagFamily$uint32;
}

const unique Tagclass._module.uint32: TyTag;

// Box/unbox axiom for Tclass._module.uint32
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.uint32()) } 
  $IsBox(bx, Tclass._module.uint32())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.uint32()));

function Tclass._module.Example2() : Ty
uses {
// Tclass._module.Example2 Tag
axiom Tag(Tclass._module.Example2()) == Tagclass._module.Example2
   && TagFamily(Tclass._module.Example2()) == tytagFamily$Example2;
}

const unique Tagclass._module.Example2: TyTag;

// Box/unbox axiom for Tclass._module.Example2
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Example2()) } 
  $IsBox(bx, Tclass._module.Example2())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Example2()));

procedure {:verboseName "TupleMatch (well-formedness)"} CheckWellFormed$$_module.__default.TupleMatch(e1#0: DatatypeType
       where $Is(e1#0, Tclass._module.Example2())
         && $IsAlloc(e1#0, Tclass._module.Example2(), $Heap)
         && $IsA#_module.Example2(e1#0), 
    e2#0: DatatypeType
       where $Is(e2#0, Tclass._module.Example2())
         && $IsAlloc(e2#0, Tclass._module.Example2(), $Heap)
         && $IsA#_module.Example2(e2#0));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TupleMatch (call)"} Call$$_module.__default.TupleMatch(e1#0: DatatypeType
       where $Is(e1#0, Tclass._module.Example2())
         && $IsAlloc(e1#0, Tclass._module.Example2(), $Heap)
         && $IsA#_module.Example2(e1#0), 
    e2#0: DatatypeType
       where $Is(e2#0, Tclass._module.Example2())
         && $IsAlloc(e2#0, Tclass._module.Example2(), $Heap)
         && $IsA#_module.Example2(e2#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TupleMatch (correctness)"} Impl$$_module.__default.TupleMatch(e1#0: DatatypeType
       where $Is(e1#0, Tclass._module.Example2())
         && $IsAlloc(e1#0, Tclass._module.Example2(), $Heap)
         && $IsA#_module.Example2(e1#0), 
    e2#0: DatatypeType
       where $Is(e2#0, Tclass._module.Example2())
         && $IsAlloc(e2#0, Tclass._module.Example2(), $Heap)
         && $IsA#_module.Example2(e2#0))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Callee (well-formedness)"} CheckWellFormed$$_module.__default.Callee(e#0: DatatypeType
       where $Is(e#0, Tclass._module.Example2())
         && $IsAlloc(e#0, Tclass._module.Example2(), $Heap)
         && $IsA#_module.Example2(e#0));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Callee (call)"} Call$$_module.__default.Callee(e#0: DatatypeType
       where $Is(e#0, Tclass._module.Example2())
         && $IsAlloc(e#0, Tclass._module.Example2(), $Heap)
         && $IsA#_module.Example2(e#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Callee (correctness)"} Impl$$_module.__default.Callee(e#0: DatatypeType
       where $Is(e#0, Tclass._module.Example2())
         && $IsAlloc(e#0, Tclass._module.Example2(), $Heap)
         && $IsA#_module.Example2(e#0))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "DtUpdate (well-formedness)"} CheckWellFormed$$_module.__default.DtUpdate(e#0: DatatypeType
       where $Is(e#0, Tclass._module.Example1())
         && $IsAlloc(e#0, Tclass._module.Example1(), $Heap)
         && $IsA#_module.Example1(e#0));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "DtUpdate (call)"} Call$$_module.__default.DtUpdate(e#0: DatatypeType
       where $Is(e#0, Tclass._module.Example1())
         && $IsAlloc(e#0, Tclass._module.Example1(), $Heap)
         && $IsA#_module.Example1(e#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "DtUpdate (correctness)"} Impl$$_module.__default.DtUpdate(e#0: DatatypeType
       where $Is(e#0, Tclass._module.Example1())
         && $IsAlloc(e#0, Tclass._module.Example1(), $Heap)
         && $IsA#_module.Example1(e#0))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DtUpdate (correctness)"} Impl$$_module.__default.DtUpdate(e#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var x#0: DatatypeType
     where $Is(x#0, Tclass._module.Example1())
       && $IsAlloc(x#0, Tclass._module.Example1(), $Heap);
  var dt_update_tmp#0#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var dt_update#u#0#Z#0: int;
  var let#1#0#0: int;
  var newtype$check#0: int;

    // AddMethodImpl: DtUpdate, Impl$$_module.__default.DtUpdate
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/datatypes.dfy(46,9)
    assume true;
    havoc dt_update_tmp#0#Z#0;
    assume {:id "id24"} let#0#0#0 == e#0;
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#0#0#0, Tclass._module.Example1());
    assume {:id "id25"} dt_update_tmp#0#Z#0 == let#0#0#0;
    havoc dt_update#u#0#Z#0;
    newtype$check#0 := LitInt(0);
    assert {:id "id26"} LitInt(0) <= newtype$check#0 && newtype$check#0 < 4294967296;
    assume {:id "id27"} let#1#0#0 == LitInt(0);
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#1#0#0, Tclass._module.uint32());
    assume {:id "id28"} dt_update#u#0#Z#0 == let#1#0#0;
    assume _module.Example1.Example1_q(dt_update_tmp#0#Z#0);
    assume (var dt_update_tmp#0#0 := e#0; _module.Example1.Example1_q(dt_update_tmp#0#0));
    x#0 := (var dt_update_tmp#0#0 := e#0; 
      (var dt_update#u#0#0 := LitInt(0); 
        #_module.Example1.Example1(dt_update#u#0#0, _module.Example1.b(dt_update_tmp#0#0))));
}



procedure {:verboseName "TestDestructor (well-formedness)"} CheckWellFormed$$_module.__default.TestDestructor();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestDestructor (call)"} Call$$_module.__default.TestDestructor();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestDestructor (correctness)"} Impl$$_module.__default.TestDestructor() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestDestructor (correctness)"} Impl$$_module.__default.TestDestructor() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var e1#0: DatatypeType
     where $Is(e1#0, Tclass._module.Example1())
       && $IsAlloc(e1#0, Tclass._module.Example1(), $Heap);
  var newtype$check#0: int;
  var x#0: int where LitInt(0) <= x#0 && x#0 < 4294967296;
  var newtype$check#1: int;

    // AddMethodImpl: TestDestructor, Impl$$_module.__default.TestDestructor
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/datatypes.dfy(50,10)
    assume true;
    newtype$check#0 := LitInt(22);
    assert {:id "id30"} LitInt(0) <= newtype$check#0 && newtype$check#0 < 4294967296;
    assume true;
    e1#0 := Lit(#_module.Example1.Example1(LitInt(22), Lit(false)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/datatypes.dfy(51,9)
    assume true;
    assume _module.Example1.Example1_q(e1#0);
    assume _module.Example1.Example1_q(e1#0);
    x#0 := _module.Example1.u(e1#0);
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/datatypes.dfy(52,3)
    newtype$check#1 := LitInt(22);
    assert {:id "id33"} LitInt(0) <= newtype$check#1 && newtype$check#1 < 4294967296;
    assume true;
    if (x#0 == LitInt(22))
    {
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/datatypes.dfy(53,5)
        assume true;
    }
    else
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/datatypes.dfy(55,5)
        assume true;
        assert {:id "id34"} Lit(false);
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/datatypes.dfy(56,5)
        assume true;
    }
}



procedure {:verboseName "TestGenericDefault (well-formedness)"} CheckWellFormed$$_module.__default.TestGenericDefault();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestGenericDefault (call)"} Call$$_module.__default.TestGenericDefault();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestGenericDefault (correctness)"} Impl$$_module.__default.TestGenericDefault() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.Example5(Ty) : Ty;

const unique Tagclass._module.Example5: TyTag;

// Tclass._module.Example5 Tag
axiom (forall _module.Example5$V: Ty :: 
  { Tclass._module.Example5(_module.Example5$V) } 
  Tag(Tclass._module.Example5(_module.Example5$V)) == Tagclass._module.Example5
     && TagFamily(Tclass._module.Example5(_module.Example5$V)) == tytagFamily$Example5);

function Tclass._module.Example5_0(Ty) : Ty;

// Tclass._module.Example5 injectivity 0
axiom (forall _module.Example5$V: Ty :: 
  { Tclass._module.Example5(_module.Example5$V) } 
  Tclass._module.Example5_0(Tclass._module.Example5(_module.Example5$V))
     == _module.Example5$V);

// Box/unbox axiom for Tclass._module.Example5
axiom (forall _module.Example5$V: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Example5(_module.Example5$V)) } 
  $IsBox(bx, Tclass._module.Example5(_module.Example5$V))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Example5(_module.Example5$V)));

function Tclass._module.Option(Ty) : Ty;

const unique Tagclass._module.Option: TyTag;

// Tclass._module.Option Tag
axiom (forall _module.Option$V: Ty :: 
  { Tclass._module.Option(_module.Option$V) } 
  Tag(Tclass._module.Option(_module.Option$V)) == Tagclass._module.Option
     && TagFamily(Tclass._module.Option(_module.Option$V)) == tytagFamily$Option);

function Tclass._module.Option_0(Ty) : Ty;

// Tclass._module.Option injectivity 0
axiom (forall _module.Option$V: Ty :: 
  { Tclass._module.Option(_module.Option$V) } 
  Tclass._module.Option_0(Tclass._module.Option(_module.Option$V))
     == _module.Option$V);

// Box/unbox axiom for Tclass._module.Option
axiom (forall _module.Option$V: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Option(_module.Option$V)) } 
  $IsBox(bx, Tclass._module.Option(_module.Option$V))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Option(_module.Option$V)));

function Tclass._module.Err(Ty) : Ty;

const unique Tagclass._module.Err: TyTag;

// Tclass._module.Err Tag
axiom (forall _module.Err$V: Ty :: 
  { Tclass._module.Err(_module.Err$V) } 
  Tag(Tclass._module.Err(_module.Err$V)) == Tagclass._module.Err
     && TagFamily(Tclass._module.Err(_module.Err$V)) == tytagFamily$Err);

function Tclass._module.Err_0(Ty) : Ty;

// Tclass._module.Err injectivity 0
axiom (forall _module.Err$V: Ty :: 
  { Tclass._module.Err(_module.Err$V) } 
  Tclass._module.Err_0(Tclass._module.Err(_module.Err$V)) == _module.Err$V);

// Box/unbox axiom for Tclass._module.Err
axiom (forall _module.Err$V: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Err(_module.Err$V)) } 
  $IsBox(bx, Tclass._module.Err(_module.Err$V))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Err(_module.Err$V)));

procedure {:verboseName "matcher (well-formedness)"} CheckWellFormed$$_module.__default.matcher(e#0: DatatypeType
       where $Is(e#0, Tclass._module.Err(Tclass._module.uint32()))
         && $IsAlloc(e#0, Tclass._module.Err(Tclass._module.uint32()), $Heap)
         && $IsA#_module.Err(e#0));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "matcher (call)"} Call$$_module.__default.matcher(e#0: DatatypeType
       where $Is(e#0, Tclass._module.Err(Tclass._module.uint32()))
         && $IsAlloc(e#0, Tclass._module.Err(Tclass._module.uint32()), $Heap)
         && $IsA#_module.Err(e#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "matcher (correctness)"} Impl$$_module.__default.matcher(e#0: DatatypeType
       where $Is(e#0, Tclass._module.Err(Tclass._module.uint32()))
         && $IsAlloc(e#0, Tclass._module.Err(Tclass._module.uint32()), $Heap)
         && $IsA#_module.Err(e#0))
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



procedure {:verboseName "GenericTest (well-formedness)"} CheckWellFormed$$_module.__default.GenericTest();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GenericTest (call)"} Call$$_module.__default.GenericTest();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "GenericTest (correctness)"} Impl$$_module.__default.GenericTest() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GenericTest (correctness)"} Impl$$_module.__default.GenericTest() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var v#0: DatatypeType
     where $Is(v#0, Tclass._module.Option(Tclass._module.uint32()))
       && $IsAlloc(v#0, Tclass._module.Option(Tclass._module.uint32()), $Heap);
  var newtype$check#0: int;
  var e##0: DatatypeType;
  var newtype$check#1: int;
  var e##1: DatatypeType;

    // AddMethodImpl: GenericTest, Impl$$_module.__default.GenericTest
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/datatypes.dfy(77,24)
    assume true;
    newtype$check#0 := LitInt(32);
    assert {:id "id39"} LitInt(0) <= newtype$check#0 && newtype$check#0 < 4294967296;
    assume true;
    v#0 := Lit(#_module.Option.Some($Box(LitInt(32))));
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/datatypes.dfy(78,10)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#1 := LitInt(42);
    assert {:id "id41"} LitInt(0) <= newtype$check#1 && newtype$check#1 < 4294967296;
    assume true;
    // ProcessCallStmt: CheckSubrange
    e##0 := Lit(#_module.Err.Ok($Box(LitInt(42))));
    call {:id "id42"} Call$$_module.__default.matcher(e##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/datatypes.dfy(79,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    e##1 := Lit(#_module.Err.Fail(Lit(true)));
    call {:id "id43"} Call$$_module.__default.matcher(e##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/datatypes.dfy(80,3)
    assume true;
    if (_module.Option.Some_q(v#0))
    {
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/datatypes.dfy(80,16)
        assume true;
        assert {:id "id44"} _module.Option.Some_q(v#0);
        assume true;
        assume true;
    }
    else
    {
    }
}



function Tclass._module.Example4() : Ty
uses {
// Tclass._module.Example4 Tag
axiom Tag(Tclass._module.Example4()) == Tagclass._module.Example4
   && TagFamily(Tclass._module.Example4()) == tytagFamily$Example4;
}

const unique Tagclass._module.Example4: TyTag;

// Box/unbox axiom for Tclass._module.Example4
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Example4()) } 
  $IsBox(bx, Tclass._module.Example4())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Example4()));

procedure {:verboseName "Comparison (well-formedness)"} CheckWellFormed$$_module.__default.Comparison(x0#0: DatatypeType
       where $Is(x0#0, Tclass._module.Example1())
         && $IsAlloc(x0#0, Tclass._module.Example1(), $Heap)
         && $IsA#_module.Example1(x0#0), 
    x1#0: DatatypeType
       where $Is(x1#0, Tclass._module.Example1())
         && $IsAlloc(x1#0, Tclass._module.Example1(), $Heap)
         && $IsA#_module.Example1(x1#0), 
    y0#0: DatatypeType
       where $Is(y0#0, Tclass._module.Example4())
         && $IsAlloc(y0#0, Tclass._module.Example4(), $Heap)
         && $IsA#_module.Example4(y0#0), 
    y1#0: DatatypeType
       where $Is(y1#0, Tclass._module.Example4())
         && $IsAlloc(y1#0, Tclass._module.Example4(), $Heap)
         && $IsA#_module.Example4(y1#0));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Comparison (call)"} Call$$_module.__default.Comparison(x0#0: DatatypeType
       where $Is(x0#0, Tclass._module.Example1())
         && $IsAlloc(x0#0, Tclass._module.Example1(), $Heap)
         && $IsA#_module.Example1(x0#0), 
    x1#0: DatatypeType
       where $Is(x1#0, Tclass._module.Example1())
         && $IsAlloc(x1#0, Tclass._module.Example1(), $Heap)
         && $IsA#_module.Example1(x1#0), 
    y0#0: DatatypeType
       where $Is(y0#0, Tclass._module.Example4())
         && $IsAlloc(y0#0, Tclass._module.Example4(), $Heap)
         && $IsA#_module.Example4(y0#0), 
    y1#0: DatatypeType
       where $Is(y1#0, Tclass._module.Example4())
         && $IsAlloc(y1#0, Tclass._module.Example4(), $Heap)
         && $IsA#_module.Example4(y1#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Comparison (correctness)"} Impl$$_module.__default.Comparison(x0#0: DatatypeType
       where $Is(x0#0, Tclass._module.Example1())
         && $IsAlloc(x0#0, Tclass._module.Example1(), $Heap)
         && $IsA#_module.Example1(x0#0), 
    x1#0: DatatypeType
       where $Is(x1#0, Tclass._module.Example1())
         && $IsAlloc(x1#0, Tclass._module.Example1(), $Heap)
         && $IsA#_module.Example1(x1#0), 
    y0#0: DatatypeType
       where $Is(y0#0, Tclass._module.Example4())
         && $IsAlloc(y0#0, Tclass._module.Example4(), $Heap)
         && $IsA#_module.Example4(y0#0), 
    y1#0: DatatypeType
       where $Is(y1#0, Tclass._module.Example4())
         && $IsAlloc(y1#0, Tclass._module.Example4(), $Heap)
         && $IsA#_module.Example4(y1#0))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.Dup() : Ty
uses {
// Tclass._module.Dup Tag
axiom Tag(Tclass._module.Dup()) == Tagclass._module.Dup
   && TagFamily(Tclass._module.Dup()) == tytagFamily$Dup;
}

const unique Tagclass._module.Dup: TyTag;

// Box/unbox axiom for Tclass._module.Dup
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Dup()) } 
  $IsBox(bx, Tclass._module.Dup())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Dup()));

procedure {:verboseName "DupTest (well-formedness)"} CheckWellFormed$$_module.__default.DupTest(d#0: DatatypeType
       where $Is(d#0, Tclass._module.Dup())
         && $IsAlloc(d#0, Tclass._module.Dup(), $Heap)
         && $IsA#_module.Dup(d#0));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "DupTest (call)"} Call$$_module.__default.DupTest(d#0: DatatypeType
       where $Is(d#0, Tclass._module.Dup())
         && $IsAlloc(d#0, Tclass._module.Dup(), $Heap)
         && $IsA#_module.Dup(d#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "DupTest (correctness)"} Impl$$_module.__default.DupTest(d#0: DatatypeType
       where $Is(d#0, Tclass._module.Dup())
         && $IsAlloc(d#0, Tclass._module.Dup(), $Heap)
         && $IsA#_module.Dup(d#0))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "DupTestTest (well-formedness)"} CheckWellFormed$$_module.__default.DupTestTest();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "DupTestTest (call)"} Call$$_module.__default.DupTestTest();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "DupTestTest (correctness)"} Impl$$_module.__default.DupTestTest() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DupTestTest (correctness)"} Impl$$_module.__default.DupTestTest() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var d##0: DatatypeType;
  var newtype$check#0: int;
  var d##1: DatatypeType;
  var newtype$check#1: int;

    // AddMethodImpl: DupTestTest, Impl$$_module.__default.DupTestTest
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/datatypes.dfy(110,10)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#0 := LitInt(42);
    assert {:id "id46"} LitInt(0) <= newtype$check#0 && newtype$check#0 < 4294967296;
    assume true;
    // ProcessCallStmt: CheckSubrange
    d##0 := Lit(#_module.Dup.Dup1(Lit(false), LitInt(42)));
    call {:id "id47"} Call$$_module.__default.DupTest(d##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/datatypes.dfy(111,10)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#1 := LitInt(330);
    assert {:id "id48"} LitInt(0) <= newtype$check#1 && newtype$check#1 < 4294967296;
    assume true;
    // ProcessCallStmt: CheckSubrange
    d##1 := Lit(#_module.Dup.Dup2(LitInt(330)));
    call {:id "id49"} Call$$_module.__default.DupTest(d##1);
    // TrCallStmt: After ProcessCallStmt
}



function Tclass._module.IntList() : Ty
uses {
// Tclass._module.IntList Tag
axiom Tag(Tclass._module.IntList()) == Tagclass._module.IntList
   && TagFamily(Tclass._module.IntList()) == tytagFamily$IntList;
}

const unique Tagclass._module.IntList: TyTag;

// Box/unbox axiom for Tclass._module.IntList
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.IntList()) } 
  $IsBox(bx, Tclass._module.IntList())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.IntList()));

procedure {:verboseName "IntListLen (well-formedness)"} CheckWellFormed$$_module.__default.IntListLen(l#0: DatatypeType
       where $Is(l#0, Tclass._module.IntList())
         && $IsAlloc(l#0, Tclass._module.IntList(), $Heap)
         && $IsA#_module.IntList(l#0))
   returns (len#0: int where LitInt(0) <= len#0 && len#0 < 4294967296);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "IntListLen (call)"} Call$$_module.__default.IntListLen(l#0: DatatypeType
       where $Is(l#0, Tclass._module.IntList())
         && $IsAlloc(l#0, Tclass._module.IntList(), $Heap)
         && $IsA#_module.IntList(l#0))
   returns (len#0: int where LitInt(0) <= len#0 && len#0 < 4294967296);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "IntListLen (correctness)"} Impl$$_module.__default.IntListLen(l#0: DatatypeType
       where $Is(l#0, Tclass._module.IntList())
         && $IsAlloc(l#0, Tclass._module.IntList(), $Heap)
         && $IsA#_module.IntList(l#0))
   returns (len#0: int where LitInt(0) <= len#0 && len#0 < 4294967296, $_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "IntListLen (correctness)"} Impl$$_module.__default.IntListLen(l#0: DatatypeType) returns (len#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var _mcc#0#0_0: int;
  var _mcc#1#0_0: DatatypeType;
  var tl#0_0: DatatypeType;
  var let#0_0#0#0: DatatypeType;
  var hd#0_0: int;
  var let#0_1#0#0: int;
  var len_rest#0_0: int where LitInt(0) <= len_rest#0_0 && len_rest#0_0 < 4294967296;
  var $rhs##0_0: int;
  var l##0_0: DatatypeType;
  var newtype$check#0_0: int;
  var newtype$check#0_0_0: int;
  var newtype$check#0_0_1: int;
  var newtype$check#1_0: int;

    // AddMethodImpl: IntListLen, Impl$$_module.__default.IntListLen
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    assume true;
    havoc _mcc#0#0_0, _mcc#1#0_0;
    if (l#0 == #_module.IntList.Nil())
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/datatypes.dfy(121,21)
        assume true;
        newtype$check#1_0 := LitInt(0);
        assert {:id "id62"} LitInt(0) <= newtype$check#1_0 && newtype$check#1_0 < 4294967296;
        assume true;
        len#0 := LitInt(0);
    }
    else if (l#0 == #_module.IntList.Cons(_mcc#0#0_0, _mcc#1#0_0))
    {
        assume LitInt(0) <= _mcc#0#0_0 && _mcc#0#0_0 < 4294967296;
        assume $Is(_mcc#1#0_0, Tclass._module.IntList())
           && $IsAlloc(_mcc#1#0_0, Tclass._module.IntList(), $Heap);
        havoc tl#0_0;
        assume $Is(tl#0_0, Tclass._module.IntList())
           && $IsAlloc(tl#0_0, Tclass._module.IntList(), $Heap);
        assume {:id "id50"} let#0_0#0#0 == _mcc#1#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_0#0#0, Tclass._module.IntList());
        assume {:id "id51"} tl#0_0 == let#0_0#0#0;
        havoc hd#0_0;
        assume LitInt(0) <= hd#0_0 && hd#0_0 < 4294967296;
        assume {:id "id52"} let#0_1#0#0 == _mcc#0#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_1#0#0, Tclass._module.uint32());
        assume {:id "id53"} hd#0_0 == let#0_1#0#0;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/datatypes.dfy(123,33)
        assume true;
        // TrCallStmt: Adding lhs with type uint32
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        l##0_0 := tl#0_0;
        assert {:id "id54"} DtRank(l##0_0) < DtRank(l#0);
        call {:id "id55"} $rhs##0_0 := Call$$_module.__default.IntListLen(l##0_0);
        // TrCallStmt: After ProcessCallStmt
        len_rest#0_0 := $rhs##0_0;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/datatypes.dfy(124,7)
        newtype$check#0_0 := LitInt(4294967295);
        assert {:id "id57"} LitInt(0) <= newtype$check#0_0 && newtype$check#0_0 < 4294967296;
        assume true;
        if (len_rest#0_0 < 4294967295)
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/datatypes.dfy(125,13)
            assume true;
            newtype$check#0_0_0 := LitInt(1);
            assert {:id "id58"} LitInt(0) <= newtype$check#0_0_0 && newtype$check#0_0_0 < 4294967296;
            newtype$check#0_0_1 := len_rest#0_0 + 1;
            assert {:id "id59"} LitInt(0) <= newtype$check#0_0_1 && newtype$check#0_0_1 < 4294967296;
            assume true;
            len#0 := len_rest#0_0 + 1;
        }
        else
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/datatypes.dfy(127,13)
            assume true;
            assume true;
            len#0 := len_rest#0_0;
        }
    }
    else
    {
        assume false;
    }
}



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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Main (correctness)"} Impl$$_module.__default.Main() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var e1#0: DatatypeType
     where $Is(e1#0, Tclass._module.Example1())
       && $IsAlloc(e1#0, Tclass._module.Example1(), $Heap);
  var newtype$check#0: int;
  var e2#0: DatatypeType
     where $Is(e2#0, Tclass._module.Example2())
       && $IsAlloc(e2#0, Tclass._module.Example2(), $Heap);
  var newtype$check#1: int;
  var e##0: DatatypeType;
  var e##1: DatatypeType;
  var x0##0: DatatypeType;
  var newtype$check#2: int;
  var x1##0: DatatypeType;
  var newtype$check#3: int;
  var y0##0: DatatypeType;
  var y1##0: DatatypeType;
  var x0##1: DatatypeType;
  var newtype$check#4: int;
  var x1##1: DatatypeType;
  var newtype$check#5: int;
  var y0##1: DatatypeType;
  var y1##1: DatatypeType;
  var x0##2: DatatypeType;
  var newtype$check#6: int;
  var x1##2: DatatypeType;
  var newtype$check#7: int;
  var y0##2: DatatypeType;
  var y1##2: DatatypeType;
  var len#0: int where LitInt(0) <= len#0 && len#0 < 4294967296;
  var $rhs##0: int;
  var l##0: DatatypeType;
  var newtype$check#8: int;
  var newtype$check#9: int;
  var newtype$check#10: int;

    // AddMethodImpl: Main, Impl$$_module.__default.Main
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/datatypes.dfy(151,10)
    assume true;
    newtype$check#0 := LitInt(22);
    assert {:id "id64"} LitInt(0) <= newtype$check#0 && newtype$check#0 < 4294967296;
    assume true;
    e1#0 := Lit(#_module.Example1.Example1(LitInt(22), Lit(false)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/datatypes.dfy(152,10)
    assume true;
    newtype$check#1 := LitInt(42);
    assert {:id "id66"} LitInt(0) <= newtype$check#1 && newtype$check#1 < 4294967296;
    assume true;
    e2#0 := Lit(#_module.Example2.Ex2a(LitInt(42)));
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/datatypes.dfy(153,9)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    e##0 := e2#0;
    call {:id "id68"} Call$$_module.__default.Callee(e##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/datatypes.dfy(154,6)
    assume true;
    assume true;
    e2#0 := Lit(#_module.Example2.Ex2b(Lit(true)));
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/datatypes.dfy(155,9)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    e##1 := e2#0;
    call {:id "id70"} Call$$_module.__default.Callee(e##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/datatypes.dfy(156,17)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id71"} Call$$_module.__default.TestDestructor();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/datatypes.dfy(157,14)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id72"} Call$$_module.__default.GenericTest();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/datatypes.dfy(158,13)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#2 := LitInt(42);
    assert {:id "id73"} LitInt(0) <= newtype$check#2 && newtype$check#2 < 4294967296;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x0##0 := Lit(#_module.Example1.Example1(LitInt(42), Lit(true)));
    newtype$check#3 := LitInt(42);
    assert {:id "id74"} LitInt(0) <= newtype$check#3 && newtype$check#3 < 4294967296;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x1##0 := Lit(#_module.Example1.Example1(LitInt(42), Lit(true)));
    assume true;
    // ProcessCallStmt: CheckSubrange
    y0##0 := Lit(#_module.Example4.Ex4b());
    assume true;
    // ProcessCallStmt: CheckSubrange
    y1##0 := Lit(#_module.Example4.Ex4b());
    call {:id "id75"} Call$$_module.__default.Comparison(x0##0, x1##0, y0##0, y1##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/datatypes.dfy(159,13)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#4 := LitInt(42);
    assert {:id "id76"} LitInt(0) <= newtype$check#4 && newtype$check#4 < 4294967296;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x0##1 := Lit(#_module.Example1.Example1(LitInt(42), Lit(false)));
    newtype$check#5 := LitInt(42);
    assert {:id "id77"} LitInt(0) <= newtype$check#5 && newtype$check#5 < 4294967296;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x1##1 := Lit(#_module.Example1.Example1(LitInt(42), Lit(true)));
    assume true;
    // ProcessCallStmt: CheckSubrange
    y0##1 := Lit(#_module.Example4.Ex4a());
    assume true;
    // ProcessCallStmt: CheckSubrange
    y1##1 := Lit(#_module.Example4.Ex4a());
    call {:id "id78"} Call$$_module.__default.Comparison(x0##1, x1##1, y0##1, y1##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/datatypes.dfy(160,13)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#6 := LitInt(2);
    assert {:id "id79"} LitInt(0) <= newtype$check#6 && newtype$check#6 < 4294967296;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x0##2 := Lit(#_module.Example1.Example1(LitInt(2), Lit(false)));
    newtype$check#7 := LitInt(42);
    assert {:id "id80"} LitInt(0) <= newtype$check#7 && newtype$check#7 < 4294967296;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x1##2 := Lit(#_module.Example1.Example1(LitInt(42), Lit(false)));
    assume true;
    // ProcessCallStmt: CheckSubrange
    y0##2 := Lit(#_module.Example4.Ex4a());
    assume true;
    // ProcessCallStmt: CheckSubrange
    y1##2 := Lit(#_module.Example4.Ex4b());
    call {:id "id81"} Call$$_module.__default.Comparison(x0##2, x1##2, y0##2, y1##2);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/datatypes.dfy(161,14)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id82"} Call$$_module.__default.DupTestTest();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/datatypes.dfy(163,24)
    assume true;
    // TrCallStmt: Adding lhs with type uint32
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#8 := LitInt(15);
    assert {:id "id83"} LitInt(0) <= newtype$check#8 && newtype$check#8 < 4294967296;
    newtype$check#9 := LitInt(18);
    assert {:id "id84"} LitInt(0) <= newtype$check#9 && newtype$check#9 < 4294967296;
    newtype$check#10 := LitInt(330);
    assert {:id "id85"} LitInt(0) <= newtype$check#10 && newtype$check#10 < 4294967296;
    assume true;
    // ProcessCallStmt: CheckSubrange
    l##0 := Lit(#_module.IntList.Cons(LitInt(15), 
        Lit(#_module.IntList.Cons(LitInt(18), Lit(#_module.IntList.Cons(LitInt(330), Lit(#_module.IntList.Nil())))))));
    call {:id "id86"} $rhs##0 := Call$$_module.__default.IntListLen(l##0);
    // TrCallStmt: After ProcessCallStmt
    len#0 := $rhs##0;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/datatypes.dfy(164,3)
    assume true;
    assume true;
}



procedure {:verboseName "uint32 (well-formedness)"} CheckWellFormed$$_module.uint32(i#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "uint32 (well-formedness)"} CheckWellFormed$$_module.uint32(i#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype uint32
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitInt(0) <= i#0)
        {
        }

        assume {:id "id88"} LitInt(0) <= i#0 && i#0 < 4294967296;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id89"} {:subsumption 0} LitInt(0) <= LitInt(0);
        assert {:id "id90"} {:subsumption 0} Lit(0 < 4294967296);
        assume false;
    }
}



// $Is axiom for newtype _module.uint32
axiom (forall i#0: int :: 
  { $Is(i#0, Tclass._module.uint32()) } 
  $Is(i#0, Tclass._module.uint32()) <==> LitInt(0) <= i#0 && i#0 < 4294967296);

// $IsAlloc axiom for newtype _module.uint32
axiom (forall i#0: int, $h: Heap :: 
  { $IsAlloc(i#0, Tclass._module.uint32(), $h) } 
  $IsAlloc(i#0, Tclass._module.uint32(), $h));

const unique class._module.uint32: ClassName;

// Constructor function declaration
function #_module.Op.NoOp() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Op.NoOp()) == ##_module.Op.NoOp;
// Constructor $Is
axiom $Is(#_module.Op.NoOp(), Tclass._module.Op());
// Constructor literal
axiom #_module.Op.NoOp() == Lit(#_module.Op.NoOp());
}

const unique ##_module.Op.NoOp: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Op.NoOp()) == ##_module.Op.NoOp;
}

function _module.Op.NoOp_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Op.NoOp_q(d) } 
  _module.Op.NoOp_q(d) <==> DatatypeCtorId(d) == ##_module.Op.NoOp);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Op.NoOp_q(d) } 
  _module.Op.NoOp_q(d) ==> d == #_module.Op.NoOp());

function Tclass._module.Op() : Ty
uses {
// Tclass._module.Op Tag
axiom Tag(Tclass._module.Op()) == Tagclass._module.Op
   && TagFamily(Tclass._module.Op()) == tytagFamily$Op;
}

const unique Tagclass._module.Op: TyTag;

// Box/unbox axiom for Tclass._module.Op
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Op()) } 
  $IsBox(bx, Tclass._module.Op())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Op()));

// Constructor function declaration
function #_module.Op.PushOp(int) : DatatypeType;

const unique ##_module.Op.PushOp: DtCtorId
uses {
// Constructor identifier
axiom (forall a#4#0#0: int :: 
  { #_module.Op.PushOp(a#4#0#0) } 
  DatatypeCtorId(#_module.Op.PushOp(a#4#0#0)) == ##_module.Op.PushOp);
}

function _module.Op.PushOp_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Op.PushOp_q(d) } 
  _module.Op.PushOp_q(d) <==> DatatypeCtorId(d) == ##_module.Op.PushOp);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Op.PushOp_q(d) } 
  _module.Op.PushOp_q(d)
     ==> (exists a#5#0#0: int :: d == #_module.Op.PushOp(a#5#0#0)));

// Constructor $Is
axiom (forall a#6#0#0: int :: 
  { $Is(#_module.Op.PushOp(a#6#0#0), Tclass._module.Op()) } 
  $Is(#_module.Op.PushOp(a#6#0#0), Tclass._module.Op()) <==> $Is(a#6#0#0, TInt));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Op.id(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Op.PushOp_q(d)
       && $IsAlloc(d, Tclass._module.Op(), $h)
     ==> $IsAlloc(_module.Op.id(d), TInt, $h));

// Constructor literal
axiom (forall a#7#0#0: int :: 
  { #_module.Op.PushOp(LitInt(a#7#0#0)) } 
  #_module.Op.PushOp(LitInt(a#7#0#0)) == Lit(#_module.Op.PushOp(a#7#0#0)));

function _module.Op.id(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#8#0#0: int :: 
  { #_module.Op.PushOp(a#8#0#0) } 
  _module.Op.id(#_module.Op.PushOp(a#8#0#0)) == a#8#0#0);

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.Op(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.Op())
     ==> $IsAlloc(d, Tclass._module.Op(), $h));

// Depth-one case-split function
function $IsA#_module.Op(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Op(d) } 
  $IsA#_module.Op(d) ==> _module.Op.NoOp_q(d) || _module.Op.PushOp_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.Op.PushOp_q(d), $Is(d, Tclass._module.Op()) } 
    { _module.Op.NoOp_q(d), $Is(d, Tclass._module.Op()) } 
  $Is(d, Tclass._module.Op()) ==> _module.Op.NoOp_q(d) || _module.Op.PushOp_q(d));

// Datatype extensional equality declaration
function _module.Op#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Op.NoOp
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Op#Equal(a, b), _module.Op.NoOp_q(a) } 
    { _module.Op#Equal(a, b), _module.Op.NoOp_q(b) } 
  _module.Op.NoOp_q(a) && _module.Op.NoOp_q(b) ==> _module.Op#Equal(a, b));

// Datatype extensional equality definition: #_module.Op.PushOp
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Op#Equal(a, b), _module.Op.PushOp_q(a) } 
    { _module.Op#Equal(a, b), _module.Op.PushOp_q(b) } 
  _module.Op.PushOp_q(a) && _module.Op.PushOp_q(b)
     ==> (_module.Op#Equal(a, b) <==> _module.Op.id(a) == _module.Op.id(b)));

// Datatype extensionality axiom: _module.Op
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Op#Equal(a, b) } 
  _module.Op#Equal(a, b) <==> a == b);

const unique class._module.Op: ClassName;

// Constructor function declaration
function #_module.Example1.Example1(int, bool) : DatatypeType;

const unique ##_module.Example1.Example1: DtCtorId
uses {
// Constructor identifier
axiom (forall a#9#0#0: int, a#9#1#0: bool :: 
  { #_module.Example1.Example1(a#9#0#0, a#9#1#0) } 
  DatatypeCtorId(#_module.Example1.Example1(a#9#0#0, a#9#1#0))
     == ##_module.Example1.Example1);
}

function _module.Example1.Example1_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Example1.Example1_q(d) } 
  _module.Example1.Example1_q(d)
     <==> DatatypeCtorId(d) == ##_module.Example1.Example1);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Example1.Example1_q(d) } 
  _module.Example1.Example1_q(d)
     ==> (exists a#10#0#0: int, a#10#1#0: bool :: 
      d == #_module.Example1.Example1(a#10#0#0, a#10#1#0)));

// Constructor $Is
axiom (forall a#11#0#0: int, a#11#1#0: bool :: 
  { $Is(#_module.Example1.Example1(a#11#0#0, a#11#1#0), Tclass._module.Example1()) } 
  $Is(#_module.Example1.Example1(a#11#0#0, a#11#1#0), Tclass._module.Example1())
     <==> $Is(a#11#0#0, Tclass._module.uint32()) && $Is(a#11#1#0, TBool));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Example1.u(d), Tclass._module.uint32(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Example1.Example1_q(d)
       && $IsAlloc(d, Tclass._module.Example1(), $h)
     ==> $IsAlloc(_module.Example1.u(d), Tclass._module.uint32(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Example1.b(d), TBool, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Example1.Example1_q(d)
       && $IsAlloc(d, Tclass._module.Example1(), $h)
     ==> $IsAlloc(_module.Example1.b(d), TBool, $h));

// Constructor literal
axiom (forall a#12#0#0: int, a#12#1#0: bool :: 
  { #_module.Example1.Example1(LitInt(a#12#0#0), Lit(a#12#1#0)) } 
  #_module.Example1.Example1(LitInt(a#12#0#0), Lit(a#12#1#0))
     == Lit(#_module.Example1.Example1(a#12#0#0, a#12#1#0)));

function _module.Example1.u(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#13#0#0: int, a#13#1#0: bool :: 
  { #_module.Example1.Example1(a#13#0#0, a#13#1#0) } 
  _module.Example1.u(#_module.Example1.Example1(a#13#0#0, a#13#1#0)) == a#13#0#0);

function _module.Example1.b(DatatypeType) : bool;

// Constructor injectivity
axiom (forall a#14#0#0: int, a#14#1#0: bool :: 
  { #_module.Example1.Example1(a#14#0#0, a#14#1#0) } 
  _module.Example1.b(#_module.Example1.Example1(a#14#0#0, a#14#1#0)) == a#14#1#0);

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.Example1(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.Example1())
     ==> $IsAlloc(d, Tclass._module.Example1(), $h));

// Depth-one case-split function
function $IsA#_module.Example1(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Example1(d) } 
  $IsA#_module.Example1(d) ==> _module.Example1.Example1_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.Example1.Example1_q(d), $Is(d, Tclass._module.Example1()) } 
  $Is(d, Tclass._module.Example1()) ==> _module.Example1.Example1_q(d));

// Datatype extensional equality declaration
function _module.Example1#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Example1.Example1
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Example1#Equal(a, b) } 
  _module.Example1#Equal(a, b)
     <==> _module.Example1.u(a) == _module.Example1.u(b)
       && _module.Example1.b(a) == _module.Example1.b(b));

// Datatype extensionality axiom: _module.Example1
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Example1#Equal(a, b) } 
  _module.Example1#Equal(a, b) <==> a == b);

const unique class._module.Example1: ClassName;

// Constructor function declaration
function #_module.Example2.Ex2a(int) : DatatypeType;

const unique ##_module.Example2.Ex2a: DtCtorId
uses {
// Constructor identifier
axiom (forall a#15#0#0: int :: 
  { #_module.Example2.Ex2a(a#15#0#0) } 
  DatatypeCtorId(#_module.Example2.Ex2a(a#15#0#0)) == ##_module.Example2.Ex2a);
}

function _module.Example2.Ex2a_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Example2.Ex2a_q(d) } 
  _module.Example2.Ex2a_q(d) <==> DatatypeCtorId(d) == ##_module.Example2.Ex2a);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Example2.Ex2a_q(d) } 
  _module.Example2.Ex2a_q(d)
     ==> (exists a#16#0#0: int :: d == #_module.Example2.Ex2a(a#16#0#0)));

// Constructor $Is
axiom (forall a#17#0#0: int :: 
  { $Is(#_module.Example2.Ex2a(a#17#0#0), Tclass._module.Example2()) } 
  $Is(#_module.Example2.Ex2a(a#17#0#0), Tclass._module.Example2())
     <==> $Is(a#17#0#0, Tclass._module.uint32()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Example2.u(d), Tclass._module.uint32(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Example2.Ex2a_q(d)
       && $IsAlloc(d, Tclass._module.Example2(), $h)
     ==> $IsAlloc(_module.Example2.u(d), Tclass._module.uint32(), $h));

// Constructor literal
axiom (forall a#18#0#0: int :: 
  { #_module.Example2.Ex2a(LitInt(a#18#0#0)) } 
  #_module.Example2.Ex2a(LitInt(a#18#0#0))
     == Lit(#_module.Example2.Ex2a(a#18#0#0)));

function _module.Example2.u(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#19#0#0: int :: 
  { #_module.Example2.Ex2a(a#19#0#0) } 
  _module.Example2.u(#_module.Example2.Ex2a(a#19#0#0)) == a#19#0#0);

// Constructor function declaration
function #_module.Example2.Ex2b(bool) : DatatypeType;

const unique ##_module.Example2.Ex2b: DtCtorId
uses {
// Constructor identifier
axiom (forall a#20#0#0: bool :: 
  { #_module.Example2.Ex2b(a#20#0#0) } 
  DatatypeCtorId(#_module.Example2.Ex2b(a#20#0#0)) == ##_module.Example2.Ex2b);
}

function _module.Example2.Ex2b_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Example2.Ex2b_q(d) } 
  _module.Example2.Ex2b_q(d) <==> DatatypeCtorId(d) == ##_module.Example2.Ex2b);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Example2.Ex2b_q(d) } 
  _module.Example2.Ex2b_q(d)
     ==> (exists a#21#0#0: bool :: d == #_module.Example2.Ex2b(a#21#0#0)));

// Constructor $Is
axiom (forall a#22#0#0: bool :: 
  { $Is(#_module.Example2.Ex2b(a#22#0#0), Tclass._module.Example2()) } 
  $Is(#_module.Example2.Ex2b(a#22#0#0), Tclass._module.Example2())
     <==> $Is(a#22#0#0, TBool));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Example2.b(d), TBool, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Example2.Ex2b_q(d)
       && $IsAlloc(d, Tclass._module.Example2(), $h)
     ==> $IsAlloc(_module.Example2.b(d), TBool, $h));

// Constructor literal
axiom (forall a#23#0#0: bool :: 
  { #_module.Example2.Ex2b(Lit(a#23#0#0)) } 
  #_module.Example2.Ex2b(Lit(a#23#0#0)) == Lit(#_module.Example2.Ex2b(a#23#0#0)));

function _module.Example2.b(DatatypeType) : bool;

// Constructor injectivity
axiom (forall a#24#0#0: bool :: 
  { #_module.Example2.Ex2b(a#24#0#0) } 
  _module.Example2.b(#_module.Example2.Ex2b(a#24#0#0)) == a#24#0#0);

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.Example2(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.Example2())
     ==> $IsAlloc(d, Tclass._module.Example2(), $h));

// Depth-one case-split function
function $IsA#_module.Example2(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Example2(d) } 
  $IsA#_module.Example2(d)
     ==> _module.Example2.Ex2a_q(d) || _module.Example2.Ex2b_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.Example2.Ex2b_q(d), $Is(d, Tclass._module.Example2()) } 
    { _module.Example2.Ex2a_q(d), $Is(d, Tclass._module.Example2()) } 
  $Is(d, Tclass._module.Example2())
     ==> _module.Example2.Ex2a_q(d) || _module.Example2.Ex2b_q(d));

// Datatype extensional equality declaration
function _module.Example2#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Example2.Ex2a
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Example2#Equal(a, b), _module.Example2.Ex2a_q(a) } 
    { _module.Example2#Equal(a, b), _module.Example2.Ex2a_q(b) } 
  _module.Example2.Ex2a_q(a) && _module.Example2.Ex2a_q(b)
     ==> (_module.Example2#Equal(a, b)
       <==> _module.Example2.u(a) == _module.Example2.u(b)));

// Datatype extensional equality definition: #_module.Example2.Ex2b
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Example2#Equal(a, b), _module.Example2.Ex2b_q(a) } 
    { _module.Example2#Equal(a, b), _module.Example2.Ex2b_q(b) } 
  _module.Example2.Ex2b_q(a) && _module.Example2.Ex2b_q(b)
     ==> (_module.Example2#Equal(a, b)
       <==> _module.Example2.b(a) == _module.Example2.b(b)));

// Datatype extensionality axiom: _module.Example2
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Example2#Equal(a, b) } 
  _module.Example2#Equal(a, b) <==> a == b);

const unique class._module.Example2: ClassName;

// Constructor function declaration
function #_module.Example3.Example3(DatatypeType) : DatatypeType;

const unique ##_module.Example3.Example3: DtCtorId
uses {
// Constructor identifier
axiom (forall a#25#0#0: DatatypeType :: 
  { #_module.Example3.Example3(a#25#0#0) } 
  DatatypeCtorId(#_module.Example3.Example3(a#25#0#0))
     == ##_module.Example3.Example3);
}

function _module.Example3.Example3_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Example3.Example3_q(d) } 
  _module.Example3.Example3_q(d)
     <==> DatatypeCtorId(d) == ##_module.Example3.Example3);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Example3.Example3_q(d) } 
  _module.Example3.Example3_q(d)
     ==> (exists a#26#0#0: DatatypeType :: d == #_module.Example3.Example3(a#26#0#0)));

function Tclass._module.Example3() : Ty
uses {
// Tclass._module.Example3 Tag
axiom Tag(Tclass._module.Example3()) == Tagclass._module.Example3
   && TagFamily(Tclass._module.Example3()) == tytagFamily$Example3;
}

const unique Tagclass._module.Example3: TyTag;

// Box/unbox axiom for Tclass._module.Example3
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Example3()) } 
  $IsBox(bx, Tclass._module.Example3())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Example3()));

// Constructor $Is
axiom (forall a#27#0#0: DatatypeType :: 
  { $Is(#_module.Example3.Example3(a#27#0#0), Tclass._module.Example3()) } 
  $Is(#_module.Example3.Example3(a#27#0#0), Tclass._module.Example3())
     <==> $Is(a#27#0#0, Tclass._module.Example1()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Example3.e(d), Tclass._module.Example1(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Example3.Example3_q(d)
       && $IsAlloc(d, Tclass._module.Example3(), $h)
     ==> $IsAlloc(_module.Example3.e(d), Tclass._module.Example1(), $h));

// Constructor literal
axiom (forall a#28#0#0: DatatypeType :: 
  { #_module.Example3.Example3(Lit(a#28#0#0)) } 
  #_module.Example3.Example3(Lit(a#28#0#0))
     == Lit(#_module.Example3.Example3(a#28#0#0)));

function _module.Example3.e(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#29#0#0: DatatypeType :: 
  { #_module.Example3.Example3(a#29#0#0) } 
  _module.Example3.e(#_module.Example3.Example3(a#29#0#0)) == a#29#0#0);

// Inductive rank
axiom (forall a#30#0#0: DatatypeType :: 
  { #_module.Example3.Example3(a#30#0#0) } 
  DtRank(a#30#0#0) < DtRank(#_module.Example3.Example3(a#30#0#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.Example3(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.Example3())
     ==> $IsAlloc(d, Tclass._module.Example3(), $h));

// Depth-one case-split function
function $IsA#_module.Example3(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Example3(d) } 
  $IsA#_module.Example3(d) ==> _module.Example3.Example3_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.Example3.Example3_q(d), $Is(d, Tclass._module.Example3()) } 
  $Is(d, Tclass._module.Example3()) ==> _module.Example3.Example3_q(d));

// Datatype extensional equality declaration
function _module.Example3#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Example3.Example3
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Example3#Equal(a, b) } 
  _module.Example3#Equal(a, b)
     <==> _module.Example1#Equal(_module.Example3.e(a), _module.Example3.e(b)));

// Datatype extensionality axiom: _module.Example3
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Example3#Equal(a, b) } 
  _module.Example3#Equal(a, b) <==> a == b);

const unique class._module.Example3: ClassName;

// Constructor function declaration
function #_module.Example4.Ex4a() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Example4.Ex4a()) == ##_module.Example4.Ex4a;
// Constructor $Is
axiom $Is(#_module.Example4.Ex4a(), Tclass._module.Example4());
// Constructor literal
axiom #_module.Example4.Ex4a() == Lit(#_module.Example4.Ex4a());
}

const unique ##_module.Example4.Ex4a: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Example4.Ex4a()) == ##_module.Example4.Ex4a;
}

function _module.Example4.Ex4a_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Example4.Ex4a_q(d) } 
  _module.Example4.Ex4a_q(d) <==> DatatypeCtorId(d) == ##_module.Example4.Ex4a);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Example4.Ex4a_q(d) } 
  _module.Example4.Ex4a_q(d) ==> d == #_module.Example4.Ex4a());

// Constructor function declaration
function #_module.Example4.Ex4b() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Example4.Ex4b()) == ##_module.Example4.Ex4b;
// Constructor $Is
axiom $Is(#_module.Example4.Ex4b(), Tclass._module.Example4());
// Constructor literal
axiom #_module.Example4.Ex4b() == Lit(#_module.Example4.Ex4b());
}

const unique ##_module.Example4.Ex4b: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Example4.Ex4b()) == ##_module.Example4.Ex4b;
}

function _module.Example4.Ex4b_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Example4.Ex4b_q(d) } 
  _module.Example4.Ex4b_q(d) <==> DatatypeCtorId(d) == ##_module.Example4.Ex4b);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Example4.Ex4b_q(d) } 
  _module.Example4.Ex4b_q(d) ==> d == #_module.Example4.Ex4b());

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.Example4(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.Example4())
     ==> $IsAlloc(d, Tclass._module.Example4(), $h));

// Depth-one case-split function
function $IsA#_module.Example4(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Example4(d) } 
  $IsA#_module.Example4(d)
     ==> _module.Example4.Ex4a_q(d) || _module.Example4.Ex4b_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.Example4.Ex4b_q(d), $Is(d, Tclass._module.Example4()) } 
    { _module.Example4.Ex4a_q(d), $Is(d, Tclass._module.Example4()) } 
  $Is(d, Tclass._module.Example4())
     ==> _module.Example4.Ex4a_q(d) || _module.Example4.Ex4b_q(d));

// Datatype extensional equality declaration
function _module.Example4#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Example4.Ex4a
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Example4#Equal(a, b), _module.Example4.Ex4a_q(a) } 
    { _module.Example4#Equal(a, b), _module.Example4.Ex4a_q(b) } 
  _module.Example4.Ex4a_q(a) && _module.Example4.Ex4a_q(b)
     ==> _module.Example4#Equal(a, b));

// Datatype extensional equality definition: #_module.Example4.Ex4b
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Example4#Equal(a, b), _module.Example4.Ex4b_q(a) } 
    { _module.Example4#Equal(a, b), _module.Example4.Ex4b_q(b) } 
  _module.Example4.Ex4b_q(a) && _module.Example4.Ex4b_q(b)
     ==> _module.Example4#Equal(a, b));

// Datatype extensionality axiom: _module.Example4
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Example4#Equal(a, b) } 
  _module.Example4#Equal(a, b) <==> a == b);

const unique class._module.Example4: ClassName;

// Constructor function declaration
function #_module.Example5.Ex5a(Box) : DatatypeType;

const unique ##_module.Example5.Ex5a: DtCtorId
uses {
// Constructor identifier
axiom (forall a#39#0#0: Box :: 
  { #_module.Example5.Ex5a(a#39#0#0) } 
  DatatypeCtorId(#_module.Example5.Ex5a(a#39#0#0)) == ##_module.Example5.Ex5a);
}

function _module.Example5.Ex5a_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Example5.Ex5a_q(d) } 
  _module.Example5.Ex5a_q(d) <==> DatatypeCtorId(d) == ##_module.Example5.Ex5a);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Example5.Ex5a_q(d) } 
  _module.Example5.Ex5a_q(d)
     ==> (exists a#40#0#0: Box :: d == #_module.Example5.Ex5a(a#40#0#0)));

// Constructor $Is
axiom (forall _module.Example5$V: Ty, a#41#0#0: Box :: 
  { $Is(#_module.Example5.Ex5a(a#41#0#0), Tclass._module.Example5(_module.Example5$V)) } 
  $Is(#_module.Example5.Ex5a(a#41#0#0), Tclass._module.Example5(_module.Example5$V))
     <==> $IsBox(a#41#0#0, _module.Example5$V));

// Constructor $IsAlloc
axiom (forall _module.Example5$V: Ty, a#41#0#0: Box, $h: Heap :: 
  { $IsAlloc(#_module.Example5.Ex5a(a#41#0#0), 
      Tclass._module.Example5(_module.Example5$V), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.Example5.Ex5a(a#41#0#0), 
        Tclass._module.Example5(_module.Example5$V), 
        $h)
       <==> $IsAllocBox(a#41#0#0, _module.Example5$V, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.Example5$V: Ty, $h: Heap :: 
  { $IsAllocBox(_module.Example5.v(d), _module.Example5$V, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Example5.Ex5a_q(d)
       && $IsAlloc(d, Tclass._module.Example5(_module.Example5$V), $h)
     ==> $IsAllocBox(_module.Example5.v(d), _module.Example5$V, $h));

// Constructor literal
axiom (forall a#42#0#0: Box :: 
  { #_module.Example5.Ex5a(Lit(a#42#0#0)) } 
  #_module.Example5.Ex5a(Lit(a#42#0#0)) == Lit(#_module.Example5.Ex5a(a#42#0#0)));

function _module.Example5.v(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#43#0#0: Box :: 
  { #_module.Example5.Ex5a(a#43#0#0) } 
  _module.Example5.v(#_module.Example5.Ex5a(a#43#0#0)) == a#43#0#0);

// Inductive rank
axiom (forall a#44#0#0: Box :: 
  { #_module.Example5.Ex5a(a#44#0#0) } 
  BoxRank(a#44#0#0) < DtRank(#_module.Example5.Ex5a(a#44#0#0)));

// Constructor function declaration
function #_module.Example5.Ex5b(bool) : DatatypeType;

const unique ##_module.Example5.Ex5b: DtCtorId
uses {
// Constructor identifier
axiom (forall a#45#0#0: bool :: 
  { #_module.Example5.Ex5b(a#45#0#0) } 
  DatatypeCtorId(#_module.Example5.Ex5b(a#45#0#0)) == ##_module.Example5.Ex5b);
}

function _module.Example5.Ex5b_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Example5.Ex5b_q(d) } 
  _module.Example5.Ex5b_q(d) <==> DatatypeCtorId(d) == ##_module.Example5.Ex5b);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Example5.Ex5b_q(d) } 
  _module.Example5.Ex5b_q(d)
     ==> (exists a#46#0#0: bool :: d == #_module.Example5.Ex5b(a#46#0#0)));

// Constructor $Is
axiom (forall _module.Example5$V: Ty, a#47#0#0: bool :: 
  { $Is(#_module.Example5.Ex5b(a#47#0#0), Tclass._module.Example5(_module.Example5$V)) } 
  $Is(#_module.Example5.Ex5b(a#47#0#0), Tclass._module.Example5(_module.Example5$V))
     <==> $Is(a#47#0#0, TBool));

// Constructor $IsAlloc
axiom (forall _module.Example5$V: Ty, a#47#0#0: bool, $h: Heap :: 
  { $IsAlloc(#_module.Example5.Ex5b(a#47#0#0), 
      Tclass._module.Example5(_module.Example5$V), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.Example5.Ex5b(a#47#0#0), 
        Tclass._module.Example5(_module.Example5$V), 
        $h)
       <==> $IsAlloc(a#47#0#0, TBool, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Example5.b(d), TBool, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Example5.Ex5b_q(d)
       && (exists _module.Example5$V: Ty :: 
        { $IsAlloc(d, Tclass._module.Example5(_module.Example5$V), $h) } 
        $IsAlloc(d, Tclass._module.Example5(_module.Example5$V), $h))
     ==> $IsAlloc(_module.Example5.b(d), TBool, $h));

// Constructor literal
axiom (forall a#48#0#0: bool :: 
  { #_module.Example5.Ex5b(Lit(a#48#0#0)) } 
  #_module.Example5.Ex5b(Lit(a#48#0#0)) == Lit(#_module.Example5.Ex5b(a#48#0#0)));

function _module.Example5.b(DatatypeType) : bool;

// Constructor injectivity
axiom (forall a#49#0#0: bool :: 
  { #_module.Example5.Ex5b(a#49#0#0) } 
  _module.Example5.b(#_module.Example5.Ex5b(a#49#0#0)) == a#49#0#0);

// Depth-one case-split function
function $IsA#_module.Example5(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Example5(d) } 
  $IsA#_module.Example5(d)
     ==> _module.Example5.Ex5a_q(d) || _module.Example5.Ex5b_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.Example5$V: Ty, d: DatatypeType :: 
  { _module.Example5.Ex5b_q(d), $Is(d, Tclass._module.Example5(_module.Example5$V)) } 
    { _module.Example5.Ex5a_q(d), $Is(d, Tclass._module.Example5(_module.Example5$V)) } 
  $Is(d, Tclass._module.Example5(_module.Example5$V))
     ==> _module.Example5.Ex5a_q(d) || _module.Example5.Ex5b_q(d));

// Datatype extensional equality declaration
function _module.Example5#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Example5.Ex5a
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Example5#Equal(a, b), _module.Example5.Ex5a_q(a) } 
    { _module.Example5#Equal(a, b), _module.Example5.Ex5a_q(b) } 
  _module.Example5.Ex5a_q(a) && _module.Example5.Ex5a_q(b)
     ==> (_module.Example5#Equal(a, b)
       <==> _module.Example5.v(a) == _module.Example5.v(b)));

// Datatype extensional equality definition: #_module.Example5.Ex5b
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Example5#Equal(a, b), _module.Example5.Ex5b_q(a) } 
    { _module.Example5#Equal(a, b), _module.Example5.Ex5b_q(b) } 
  _module.Example5.Ex5b_q(a) && _module.Example5.Ex5b_q(b)
     ==> (_module.Example5#Equal(a, b)
       <==> _module.Example5.b(a) == _module.Example5.b(b)));

// Datatype extensionality axiom: _module.Example5
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Example5#Equal(a, b) } 
  _module.Example5#Equal(a, b) <==> a == b);

const unique class._module.Example5: ClassName;

// Constructor function declaration
function #_module.Example6.Ex6a(int) : DatatypeType;

const unique ##_module.Example6.Ex6a: DtCtorId
uses {
// Constructor identifier
axiom (forall a#50#0#0: int :: 
  { #_module.Example6.Ex6a(a#50#0#0) } 
  DatatypeCtorId(#_module.Example6.Ex6a(a#50#0#0)) == ##_module.Example6.Ex6a);
}

function _module.Example6.Ex6a_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Example6.Ex6a_q(d) } 
  _module.Example6.Ex6a_q(d) <==> DatatypeCtorId(d) == ##_module.Example6.Ex6a);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Example6.Ex6a_q(d) } 
  _module.Example6.Ex6a_q(d)
     ==> (exists a#51#0#0: int :: d == #_module.Example6.Ex6a(a#51#0#0)));

function Tclass._module.Example6() : Ty
uses {
// Tclass._module.Example6 Tag
axiom Tag(Tclass._module.Example6()) == Tagclass._module.Example6
   && TagFamily(Tclass._module.Example6()) == tytagFamily$Example6;
}

const unique Tagclass._module.Example6: TyTag;

// Box/unbox axiom for Tclass._module.Example6
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Example6()) } 
  $IsBox(bx, Tclass._module.Example6())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Example6()));

// Constructor $Is
axiom (forall a#52#0#0: int :: 
  { $Is(#_module.Example6.Ex6a(a#52#0#0), Tclass._module.Example6()) } 
  $Is(#_module.Example6.Ex6a(a#52#0#0), Tclass._module.Example6())
     <==> $Is(a#52#0#0, Tclass._module.uint32()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Example6.u(d), Tclass._module.uint32(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Example6.Ex6a_q(d)
       && $IsAlloc(d, Tclass._module.Example6(), $h)
     ==> $IsAlloc(_module.Example6.u(d), Tclass._module.uint32(), $h));

// Constructor literal
axiom (forall a#53#0#0: int :: 
  { #_module.Example6.Ex6a(LitInt(a#53#0#0)) } 
  #_module.Example6.Ex6a(LitInt(a#53#0#0))
     == Lit(#_module.Example6.Ex6a(a#53#0#0)));

function _module.Example6.u(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#54#0#0: int :: 
  { #_module.Example6.Ex6a(a#54#0#0) } 
  _module.Example6.u(#_module.Example6.Ex6a(a#54#0#0)) == a#54#0#0);

// Constructor function declaration
function #_module.Example6.Ex6b(bool) : DatatypeType;

const unique ##_module.Example6.Ex6b: DtCtorId
uses {
// Constructor identifier
axiom (forall a#55#0#0: bool :: 
  { #_module.Example6.Ex6b(a#55#0#0) } 
  DatatypeCtorId(#_module.Example6.Ex6b(a#55#0#0)) == ##_module.Example6.Ex6b);
}

function _module.Example6.Ex6b_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Example6.Ex6b_q(d) } 
  _module.Example6.Ex6b_q(d) <==> DatatypeCtorId(d) == ##_module.Example6.Ex6b);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Example6.Ex6b_q(d) } 
  _module.Example6.Ex6b_q(d)
     ==> (exists a#56#0#0: bool :: d == #_module.Example6.Ex6b(a#56#0#0)));

// Constructor $Is
axiom (forall a#57#0#0: bool :: 
  { $Is(#_module.Example6.Ex6b(a#57#0#0), Tclass._module.Example6()) } 
  $Is(#_module.Example6.Ex6b(a#57#0#0), Tclass._module.Example6())
     <==> $Is(a#57#0#0, TBool));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Example6.b(d), TBool, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Example6.Ex6b_q(d)
       && $IsAlloc(d, Tclass._module.Example6(), $h)
     ==> $IsAlloc(_module.Example6.b(d), TBool, $h));

// Constructor literal
axiom (forall a#58#0#0: bool :: 
  { #_module.Example6.Ex6b(Lit(a#58#0#0)) } 
  #_module.Example6.Ex6b(Lit(a#58#0#0)) == Lit(#_module.Example6.Ex6b(a#58#0#0)));

function _module.Example6.b(DatatypeType) : bool;

// Constructor injectivity
axiom (forall a#59#0#0: bool :: 
  { #_module.Example6.Ex6b(a#59#0#0) } 
  _module.Example6.b(#_module.Example6.Ex6b(a#59#0#0)) == a#59#0#0);

// Constructor function declaration
function #_module.Example6.Ex6c(int, Seq) : DatatypeType;

const unique ##_module.Example6.Ex6c: DtCtorId
uses {
// Constructor identifier
axiom (forall a#60#0#0: int, a#60#1#0: Seq :: 
  { #_module.Example6.Ex6c(a#60#0#0, a#60#1#0) } 
  DatatypeCtorId(#_module.Example6.Ex6c(a#60#0#0, a#60#1#0))
     == ##_module.Example6.Ex6c);
}

function _module.Example6.Ex6c_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Example6.Ex6c_q(d) } 
  _module.Example6.Ex6c_q(d) <==> DatatypeCtorId(d) == ##_module.Example6.Ex6c);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Example6.Ex6c_q(d) } 
  _module.Example6.Ex6c_q(d)
     ==> (exists a#61#0#0: int, a#61#1#0: Seq :: 
      d == #_module.Example6.Ex6c(a#61#0#0, a#61#1#0)));

// Constructor $Is
axiom (forall a#62#0#0: int, a#62#1#0: Seq :: 
  { $Is(#_module.Example6.Ex6c(a#62#0#0, a#62#1#0), Tclass._module.Example6()) } 
  $Is(#_module.Example6.Ex6c(a#62#0#0, a#62#1#0), Tclass._module.Example6())
     <==> $Is(a#62#0#0, Tclass._module.uint32()) && $Is(a#62#1#0, TSeq(TBool)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Example6.u(d), Tclass._module.uint32(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Example6.Ex6c_q(d)
       && $IsAlloc(d, Tclass._module.Example6(), $h)
     ==> $IsAlloc(_module.Example6.u(d), Tclass._module.uint32(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Example6.s(d), TSeq(TBool), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Example6.Ex6c_q(d)
       && $IsAlloc(d, Tclass._module.Example6(), $h)
     ==> $IsAlloc(_module.Example6.s(d), TSeq(TBool), $h));

// Constructor literal
axiom (forall a#63#0#0: int, a#63#1#0: Seq :: 
  { #_module.Example6.Ex6c(LitInt(a#63#0#0), Lit(a#63#1#0)) } 
  #_module.Example6.Ex6c(LitInt(a#63#0#0), Lit(a#63#1#0))
     == Lit(#_module.Example6.Ex6c(a#63#0#0, a#63#1#0)));

// Constructor injectivity
axiom (forall a#64#0#0: int, a#64#1#0: Seq :: 
  { #_module.Example6.Ex6c(a#64#0#0, a#64#1#0) } 
  _module.Example6.u(#_module.Example6.Ex6c(a#64#0#0, a#64#1#0)) == a#64#0#0);

function _module.Example6.s(DatatypeType) : Seq;

// Constructor injectivity
axiom (forall a#65#0#0: int, a#65#1#0: Seq :: 
  { #_module.Example6.Ex6c(a#65#0#0, a#65#1#0) } 
  _module.Example6.s(#_module.Example6.Ex6c(a#65#0#0, a#65#1#0)) == a#65#1#0);

// Inductive seq element rank
axiom (forall a#66#0#0: int, a#66#1#0: Seq, i: int :: 
  { Seq#Index(a#66#1#0, i), #_module.Example6.Ex6c(a#66#0#0, a#66#1#0) } 
  0 <= i && i < Seq#Length(a#66#1#0)
     ==> DtRank($Unbox(Seq#Index(a#66#1#0, i)): DatatypeType)
       < DtRank(#_module.Example6.Ex6c(a#66#0#0, a#66#1#0)));

// Inductive seq rank
axiom (forall a#67#0#0: int, a#67#1#0: Seq :: 
  { #_module.Example6.Ex6c(a#67#0#0, a#67#1#0) } 
  Seq#Rank(a#67#1#0) < DtRank(#_module.Example6.Ex6c(a#67#0#0, a#67#1#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.Example6(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.Example6())
     ==> $IsAlloc(d, Tclass._module.Example6(), $h));

// Depth-one case-split function
function $IsA#_module.Example6(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Example6(d) } 
  $IsA#_module.Example6(d)
     ==> _module.Example6.Ex6a_q(d)
       || _module.Example6.Ex6b_q(d)
       || _module.Example6.Ex6c_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.Example6.Ex6c_q(d), $Is(d, Tclass._module.Example6()) } 
    { _module.Example6.Ex6b_q(d), $Is(d, Tclass._module.Example6()) } 
    { _module.Example6.Ex6a_q(d), $Is(d, Tclass._module.Example6()) } 
  $Is(d, Tclass._module.Example6())
     ==> _module.Example6.Ex6a_q(d)
       || _module.Example6.Ex6b_q(d)
       || _module.Example6.Ex6c_q(d));

// Datatype extensional equality declaration
function _module.Example6#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Example6.Ex6a
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Example6#Equal(a, b), _module.Example6.Ex6a_q(a) } 
    { _module.Example6#Equal(a, b), _module.Example6.Ex6a_q(b) } 
  _module.Example6.Ex6a_q(a) && _module.Example6.Ex6a_q(b)
     ==> (_module.Example6#Equal(a, b)
       <==> _module.Example6.u(a) == _module.Example6.u(b)));

// Datatype extensional equality definition: #_module.Example6.Ex6b
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Example6#Equal(a, b), _module.Example6.Ex6b_q(a) } 
    { _module.Example6#Equal(a, b), _module.Example6.Ex6b_q(b) } 
  _module.Example6.Ex6b_q(a) && _module.Example6.Ex6b_q(b)
     ==> (_module.Example6#Equal(a, b)
       <==> _module.Example6.b(a) == _module.Example6.b(b)));

// Datatype extensional equality definition: #_module.Example6.Ex6c
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Example6#Equal(a, b), _module.Example6.Ex6c_q(a) } 
    { _module.Example6#Equal(a, b), _module.Example6.Ex6c_q(b) } 
  _module.Example6.Ex6c_q(a) && _module.Example6.Ex6c_q(b)
     ==> (_module.Example6#Equal(a, b)
       <==> _module.Example6.u(a) == _module.Example6.u(b)
         && Seq#Equal(_module.Example6.s(a), _module.Example6.s(b))));

// Datatype extensionality axiom: _module.Example6
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Example6#Equal(a, b) } 
  _module.Example6#Equal(a, b) <==> a == b);

const unique class._module.Example6: ClassName;

procedure {:verboseName "Ex1Sub (well-formedness)"} CheckWellFormed$$_module.Ex1Sub(d#0: DatatypeType);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Ex1Sub (well-formedness)"} CheckWellFormed$$_module.Ex1Sub(d#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var newtype$check#0: int;
  var newtype$check#1: int;


    // AddWellformednessCheck for subset type Ex1Sub
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of subset type constraint
        assume $Is(d#0, Tclass._module.Example1());
        assume _module.Example1.Example1_q(d#0);
        newtype$check#0 := LitInt(0);
        assert {:id "id91"} LitInt(0) <= newtype$check#0 && newtype$check#0 < 4294967296;
        assume {:id "id92"} _module.Example1.u(d#0) == LitInt(0);
        assume false;
    }

    if (*)
    {
        // check well-formedness of subset type witness, and that it satisfies the constraint
        newtype$check#1 := LitInt(0);
        assert {:id "id93"} LitInt(0) <= newtype$check#1 && newtype$check#1 < 4294967296;
        assume _module.Example1.Example1_q(Lit(#_module.Example1.Example1(LitInt(0), Lit(true))));
        assert {:id "id94"} LitInt(_module.Example1.u(Lit(#_module.Example1.Example1(LitInt(0), Lit(true)))))
           == LitInt(0);
        assume false;
    }
}



function Tclass._module.Ex1Sub() : Ty
uses {
// Tclass._module.Ex1Sub Tag
axiom Tag(Tclass._module.Ex1Sub()) == Tagclass._module.Ex1Sub
   && TagFamily(Tclass._module.Ex1Sub()) == tytagFamily$Ex1Sub;
}

const unique Tagclass._module.Ex1Sub: TyTag;

// Box/unbox axiom for Tclass._module.Ex1Sub
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Ex1Sub()) } 
  $IsBox(bx, Tclass._module.Ex1Sub())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Ex1Sub()));

// $Is axiom for subset type _module.Ex1Sub
axiom (forall d#0: DatatypeType :: 
  { $Is(d#0, Tclass._module.Ex1Sub()) } 
  $Is(d#0, Tclass._module.Ex1Sub())
     <==> $Is(d#0, Tclass._module.Example1()) && _module.Example1.u(d#0) == LitInt(0));

// $IsAlloc axiom for subset type _module.Ex1Sub
axiom (forall d#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(d#0, Tclass._module.Ex1Sub(), $h) } 
  $IsAlloc(d#0, Tclass._module.Ex1Sub(), $h)
     <==> $IsAlloc(d#0, Tclass._module.Example1(), $h));

procedure {:verboseName "Ex2Sub (well-formedness)"} CheckWellFormed$$_module.Ex2Sub(d#0: DatatypeType);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Ex2Sub (well-formedness)"} CheckWellFormed$$_module.Ex2Sub(d#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var newtype$check#0: int;
  var newtype$check#1: int;


    // AddWellformednessCheck for subset type Ex2Sub
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of subset type constraint
        assume $Is(d#0, Tclass._module.Example2());
        assume {:id "id95"} _module.Example2.Ex2a_q(d#0);
        assert {:id "id96"} _module.Example2.Ex2a_q(d#0);
        newtype$check#0 := LitInt(0);
        assert {:id "id97"} LitInt(0) <= newtype$check#0 && newtype$check#0 < 4294967296;
        assume {:id "id98"} _module.Example2.u(d#0) == LitInt(0);
        assume false;
    }

    if (*)
    {
        // check well-formedness of subset type witness, and that it satisfies the constraint
        newtype$check#1 := LitInt(0);
        assert {:id "id99"} LitInt(0) <= newtype$check#1 && newtype$check#1 < 4294967296;
        assume true;
        assert {:id "id100"} {:subsumption 0} Lit(_module.Example2.Ex2a_q(Lit(#_module.Example2.Ex2a(LitInt(0)))));
        assert {:id "id101"} {:subsumption 0} LitInt(_module.Example2.u(Lit(#_module.Example2.Ex2a(LitInt(0))))) == LitInt(0);
        assume false;
    }
}



function Tclass._module.Ex2Sub() : Ty
uses {
// Tclass._module.Ex2Sub Tag
axiom Tag(Tclass._module.Ex2Sub()) == Tagclass._module.Ex2Sub
   && TagFamily(Tclass._module.Ex2Sub()) == tytagFamily$Ex2Sub;
}

const unique Tagclass._module.Ex2Sub: TyTag;

// Box/unbox axiom for Tclass._module.Ex2Sub
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Ex2Sub()) } 
  $IsBox(bx, Tclass._module.Ex2Sub())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Ex2Sub()));

// $Is axiom for subset type _module.Ex2Sub
axiom (forall d#0: DatatypeType :: 
  { $Is(d#0, Tclass._module.Ex2Sub()) } 
  $Is(d#0, Tclass._module.Ex2Sub())
     <==> $Is(d#0, Tclass._module.Example2())
       && 
      _module.Example2.Ex2a_q(d#0)
       && _module.Example2.u(d#0) == LitInt(0));

// $IsAlloc axiom for subset type _module.Ex2Sub
axiom (forall d#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(d#0, Tclass._module.Ex2Sub(), $h) } 
  $IsAlloc(d#0, Tclass._module.Ex2Sub(), $h)
     <==> $IsAlloc(d#0, Tclass._module.Example2(), $h));

procedure {:verboseName "Ex3Sub (well-formedness)"} CheckWellFormed$$_module.Ex3Sub(d#0: DatatypeType);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Ex3Sub (well-formedness)"} CheckWellFormed$$_module.Ex3Sub(d#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var newtype$check#0: int;


    // AddWellformednessCheck for subset type Ex3Sub
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of subset type constraint
        assume $Is(d#0, Tclass._module.Example3());
        assume _module.Example3.Example3_q(d#0);
        assume _module.Example1.Example1_q(_module.Example3.e(d#0));
        assume {:id "id102"} _module.Example1.b(_module.Example3.e(d#0));
        assume false;
    }

    if (*)
    {
        // check well-formedness of subset type witness, and that it satisfies the constraint
        newtype$check#0 := LitInt(42);
        assert {:id "id103"} LitInt(0) <= newtype$check#0 && newtype$check#0 < 4294967296;
        assume _module.Example3.Example3_q(Lit(#_module.Example3.Example3(Lit(#_module.Example1.Example1(LitInt(42), Lit(true))))))
           && _module.Example1.Example1_q(Lit(_module.Example3.e(Lit(#_module.Example3.Example3(Lit(#_module.Example1.Example1(LitInt(42), Lit(true))))))));
        assert {:id "id104"} Lit(_module.Example1.b(Lit(_module.Example3.e(Lit(#_module.Example3.Example3(Lit(#_module.Example1.Example1(LitInt(42), Lit(true)))))))));
        assume false;
    }
}



function Tclass._module.Ex3Sub() : Ty
uses {
// Tclass._module.Ex3Sub Tag
axiom Tag(Tclass._module.Ex3Sub()) == Tagclass._module.Ex3Sub
   && TagFamily(Tclass._module.Ex3Sub()) == tytagFamily$Ex3Sub;
}

const unique Tagclass._module.Ex3Sub: TyTag;

// Box/unbox axiom for Tclass._module.Ex3Sub
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Ex3Sub()) } 
  $IsBox(bx, Tclass._module.Ex3Sub())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Ex3Sub()));

// $Is axiom for subset type _module.Ex3Sub
axiom (forall d#0: DatatypeType :: 
  { $Is(d#0, Tclass._module.Ex3Sub()) } 
  $Is(d#0, Tclass._module.Ex3Sub())
     <==> $Is(d#0, Tclass._module.Example3())
       && _module.Example1.b(_module.Example3.e(d#0)));

// $IsAlloc axiom for subset type _module.Ex3Sub
axiom (forall d#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(d#0, Tclass._module.Ex3Sub(), $h) } 
  $IsAlloc(d#0, Tclass._module.Ex3Sub(), $h)
     <==> $IsAlloc(d#0, Tclass._module.Example3(), $h));

// Constructor function declaration
function #_module.DtPointer.DtPointer(Seq) : DatatypeType;

const unique ##_module.DtPointer.DtPointer: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: Seq :: 
  { #_module.DtPointer.DtPointer(a#0#0#0) } 
  DatatypeCtorId(#_module.DtPointer.DtPointer(a#0#0#0))
     == ##_module.DtPointer.DtPointer);
}

function _module.DtPointer.DtPointer_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.DtPointer.DtPointer_q(d) } 
  _module.DtPointer.DtPointer_q(d)
     <==> DatatypeCtorId(d) == ##_module.DtPointer.DtPointer);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.DtPointer.DtPointer_q(d) } 
  _module.DtPointer.DtPointer_q(d)
     ==> (exists a#1#0#0: Seq :: d == #_module.DtPointer.DtPointer(a#1#0#0)));

function Tclass._module.DtPointer() : Ty
uses {
// Tclass._module.DtPointer Tag
axiom Tag(Tclass._module.DtPointer()) == Tagclass._module.DtPointer
   && TagFamily(Tclass._module.DtPointer()) == tytagFamily$DtPointer;
}

const unique Tagclass._module.DtPointer: TyTag;

// Box/unbox axiom for Tclass._module.DtPointer
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.DtPointer()) } 
  $IsBox(bx, Tclass._module.DtPointer())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.DtPointer()));

// Constructor $Is
axiom (forall a#2#0#0: Seq :: 
  { $Is(#_module.DtPointer.DtPointer(a#2#0#0), Tclass._module.DtPointer()) } 
  $Is(#_module.DtPointer.DtPointer(a#2#0#0), Tclass._module.DtPointer())
     <==> $Is(a#2#0#0, TSeq(Tclass._module.uint32())));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.DtPointer.s(d), TSeq(Tclass._module.uint32()), $h) } 
  $IsGoodHeap($h)
       && 
      _module.DtPointer.DtPointer_q(d)
       && $IsAlloc(d, Tclass._module.DtPointer(), $h)
     ==> $IsAlloc(_module.DtPointer.s(d), TSeq(Tclass._module.uint32()), $h));

// Constructor literal
axiom (forall a#3#0#0: Seq :: 
  { #_module.DtPointer.DtPointer(Lit(a#3#0#0)) } 
  #_module.DtPointer.DtPointer(Lit(a#3#0#0))
     == Lit(#_module.DtPointer.DtPointer(a#3#0#0)));

function _module.DtPointer.s(DatatypeType) : Seq;

// Constructor injectivity
axiom (forall a#4#0#0: Seq :: 
  { #_module.DtPointer.DtPointer(a#4#0#0) } 
  _module.DtPointer.s(#_module.DtPointer.DtPointer(a#4#0#0)) == a#4#0#0);

// Inductive seq element rank
axiom (forall a#5#0#0: Seq, i: int :: 
  { Seq#Index(a#5#0#0, i), #_module.DtPointer.DtPointer(a#5#0#0) } 
  0 <= i && i < Seq#Length(a#5#0#0)
     ==> DtRank($Unbox(Seq#Index(a#5#0#0, i)): DatatypeType)
       < DtRank(#_module.DtPointer.DtPointer(a#5#0#0)));

// Inductive seq rank
axiom (forall a#6#0#0: Seq :: 
  { #_module.DtPointer.DtPointer(a#6#0#0) } 
  Seq#Rank(a#6#0#0) < DtRank(#_module.DtPointer.DtPointer(a#6#0#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.DtPointer(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.DtPointer())
     ==> $IsAlloc(d, Tclass._module.DtPointer(), $h));

// Depth-one case-split function
function $IsA#_module.DtPointer(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.DtPointer(d) } 
  $IsA#_module.DtPointer(d) ==> _module.DtPointer.DtPointer_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.DtPointer.DtPointer_q(d), $Is(d, Tclass._module.DtPointer()) } 
  $Is(d, Tclass._module.DtPointer()) ==> _module.DtPointer.DtPointer_q(d));

// Datatype extensional equality declaration
function _module.DtPointer#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.DtPointer.DtPointer
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.DtPointer#Equal(a, b) } 
  _module.DtPointer#Equal(a, b)
     <==> Seq#Equal(_module.DtPointer.s(a), _module.DtPointer.s(b)));

// Datatype extensionality axiom: _module.DtPointer
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.DtPointer#Equal(a, b) } 
  _module.DtPointer#Equal(a, b) <==> a == b);

const unique class._module.DtPointer: ClassName;

// Constructor function declaration
function #_module.DtPointerHolder.DtPointerHolder(DatatypeType) : DatatypeType;

const unique ##_module.DtPointerHolder.DtPointerHolder: DtCtorId
uses {
// Constructor identifier
axiom (forall a#7#0#0: DatatypeType :: 
  { #_module.DtPointerHolder.DtPointerHolder(a#7#0#0) } 
  DatatypeCtorId(#_module.DtPointerHolder.DtPointerHolder(a#7#0#0))
     == ##_module.DtPointerHolder.DtPointerHolder);
}

function _module.DtPointerHolder.DtPointerHolder_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.DtPointerHolder.DtPointerHolder_q(d) } 
  _module.DtPointerHolder.DtPointerHolder_q(d)
     <==> DatatypeCtorId(d) == ##_module.DtPointerHolder.DtPointerHolder);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.DtPointerHolder.DtPointerHolder_q(d) } 
  _module.DtPointerHolder.DtPointerHolder_q(d)
     ==> (exists a#8#0#0: DatatypeType :: 
      d == #_module.DtPointerHolder.DtPointerHolder(a#8#0#0)));

function Tclass._module.DtPointerHolder() : Ty
uses {
// Tclass._module.DtPointerHolder Tag
axiom Tag(Tclass._module.DtPointerHolder()) == Tagclass._module.DtPointerHolder
   && TagFamily(Tclass._module.DtPointerHolder()) == tytagFamily$DtPointerHolder;
}

const unique Tagclass._module.DtPointerHolder: TyTag;

// Box/unbox axiom for Tclass._module.DtPointerHolder
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.DtPointerHolder()) } 
  $IsBox(bx, Tclass._module.DtPointerHolder())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.DtPointerHolder()));

// Constructor $Is
axiom (forall a#9#0#0: DatatypeType :: 
  { $Is(#_module.DtPointerHolder.DtPointerHolder(a#9#0#0), 
      Tclass._module.DtPointerHolder()) } 
  $Is(#_module.DtPointerHolder.DtPointerHolder(a#9#0#0), 
      Tclass._module.DtPointerHolder())
     <==> $Is(a#9#0#0, Tclass._module.DtPointer()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.DtPointerHolder.e(d), Tclass._module.DtPointer(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.DtPointerHolder.DtPointerHolder_q(d)
       && $IsAlloc(d, Tclass._module.DtPointerHolder(), $h)
     ==> $IsAlloc(_module.DtPointerHolder.e(d), Tclass._module.DtPointer(), $h));

// Constructor literal
axiom (forall a#10#0#0: DatatypeType :: 
  { #_module.DtPointerHolder.DtPointerHolder(Lit(a#10#0#0)) } 
  #_module.DtPointerHolder.DtPointerHolder(Lit(a#10#0#0))
     == Lit(#_module.DtPointerHolder.DtPointerHolder(a#10#0#0)));

function _module.DtPointerHolder.e(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#11#0#0: DatatypeType :: 
  { #_module.DtPointerHolder.DtPointerHolder(a#11#0#0) } 
  _module.DtPointerHolder.e(#_module.DtPointerHolder.DtPointerHolder(a#11#0#0))
     == a#11#0#0);

// Inductive rank
axiom (forall a#12#0#0: DatatypeType :: 
  { #_module.DtPointerHolder.DtPointerHolder(a#12#0#0) } 
  DtRank(a#12#0#0) < DtRank(#_module.DtPointerHolder.DtPointerHolder(a#12#0#0)));

// Constructor function declaration
function #_module.DtPointerHolder.Other(bool) : DatatypeType;

const unique ##_module.DtPointerHolder.Other: DtCtorId
uses {
// Constructor identifier
axiom (forall a#13#0#0: bool :: 
  { #_module.DtPointerHolder.Other(a#13#0#0) } 
  DatatypeCtorId(#_module.DtPointerHolder.Other(a#13#0#0))
     == ##_module.DtPointerHolder.Other);
}

function _module.DtPointerHolder.Other_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.DtPointerHolder.Other_q(d) } 
  _module.DtPointerHolder.Other_q(d)
     <==> DatatypeCtorId(d) == ##_module.DtPointerHolder.Other);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.DtPointerHolder.Other_q(d) } 
  _module.DtPointerHolder.Other_q(d)
     ==> (exists a#14#0#0: bool :: d == #_module.DtPointerHolder.Other(a#14#0#0)));

// Constructor $Is
axiom (forall a#15#0#0: bool :: 
  { $Is(#_module.DtPointerHolder.Other(a#15#0#0), Tclass._module.DtPointerHolder()) } 
  $Is(#_module.DtPointerHolder.Other(a#15#0#0), Tclass._module.DtPointerHolder())
     <==> $Is(a#15#0#0, TBool));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.DtPointerHolder.f(d), TBool, $h) } 
  $IsGoodHeap($h)
       && 
      _module.DtPointerHolder.Other_q(d)
       && $IsAlloc(d, Tclass._module.DtPointerHolder(), $h)
     ==> $IsAlloc(_module.DtPointerHolder.f(d), TBool, $h));

// Constructor literal
axiom (forall a#16#0#0: bool :: 
  { #_module.DtPointerHolder.Other(Lit(a#16#0#0)) } 
  #_module.DtPointerHolder.Other(Lit(a#16#0#0))
     == Lit(#_module.DtPointerHolder.Other(a#16#0#0)));

function _module.DtPointerHolder.f(DatatypeType) : bool;

// Constructor injectivity
axiom (forall a#17#0#0: bool :: 
  { #_module.DtPointerHolder.Other(a#17#0#0) } 
  _module.DtPointerHolder.f(#_module.DtPointerHolder.Other(a#17#0#0)) == a#17#0#0);

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.DtPointerHolder(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.DtPointerHolder())
     ==> $IsAlloc(d, Tclass._module.DtPointerHolder(), $h));

// Depth-one case-split function
function $IsA#_module.DtPointerHolder(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.DtPointerHolder(d) } 
  $IsA#_module.DtPointerHolder(d)
     ==> _module.DtPointerHolder.DtPointerHolder_q(d)
       || _module.DtPointerHolder.Other_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.DtPointerHolder.Other_q(d), $Is(d, Tclass._module.DtPointerHolder()) } 
    { _module.DtPointerHolder.DtPointerHolder_q(d), $Is(d, Tclass._module.DtPointerHolder()) } 
  $Is(d, Tclass._module.DtPointerHolder())
     ==> _module.DtPointerHolder.DtPointerHolder_q(d)
       || _module.DtPointerHolder.Other_q(d));

// Datatype extensional equality declaration
function _module.DtPointerHolder#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.DtPointerHolder.DtPointerHolder
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.DtPointerHolder#Equal(a, b), _module.DtPointerHolder.DtPointerHolder_q(a) } 
    { _module.DtPointerHolder#Equal(a, b), _module.DtPointerHolder.DtPointerHolder_q(b) } 
  _module.DtPointerHolder.DtPointerHolder_q(a)
       && _module.DtPointerHolder.DtPointerHolder_q(b)
     ==> (_module.DtPointerHolder#Equal(a, b)
       <==> _module.DtPointer#Equal(_module.DtPointerHolder.e(a), _module.DtPointerHolder.e(b))));

// Datatype extensional equality definition: #_module.DtPointerHolder.Other
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.DtPointerHolder#Equal(a, b), _module.DtPointerHolder.Other_q(a) } 
    { _module.DtPointerHolder#Equal(a, b), _module.DtPointerHolder.Other_q(b) } 
  _module.DtPointerHolder.Other_q(a) && _module.DtPointerHolder.Other_q(b)
     ==> (_module.DtPointerHolder#Equal(a, b)
       <==> _module.DtPointerHolder.f(a) == _module.DtPointerHolder.f(b)));

// Datatype extensionality axiom: _module.DtPointerHolder
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.DtPointerHolder#Equal(a, b) } 
  _module.DtPointerHolder#Equal(a, b) <==> a == b);

const unique class._module.DtPointerHolder: ClassName;

// Constructor function declaration
function #_module.Option.None() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Option.None()) == ##_module.Option.None;
// Constructor literal
axiom #_module.Option.None() == Lit(#_module.Option.None());
}

const unique ##_module.Option.None: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Option.None()) == ##_module.Option.None;
}

function _module.Option.None_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Option.None_q(d) } 
  _module.Option.None_q(d) <==> DatatypeCtorId(d) == ##_module.Option.None);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Option.None_q(d) } 
  _module.Option.None_q(d) ==> d == #_module.Option.None());

// Constructor $Is
axiom (forall _module.Option$V: Ty :: 
  { $Is(#_module.Option.None(), Tclass._module.Option(_module.Option$V)) } 
  $Is(#_module.Option.None(), Tclass._module.Option(_module.Option$V)));

// Constructor $IsAlloc
axiom (forall _module.Option$V: Ty, $h: Heap :: 
  { $IsAlloc(#_module.Option.None(), Tclass._module.Option(_module.Option$V), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#_module.Option.None(), Tclass._module.Option(_module.Option$V), $h));

// Constructor function declaration
function #_module.Option.Some(Box) : DatatypeType;

const unique ##_module.Option.Some: DtCtorId
uses {
// Constructor identifier
axiom (forall a#22#0#0: Box :: 
  { #_module.Option.Some(a#22#0#0) } 
  DatatypeCtorId(#_module.Option.Some(a#22#0#0)) == ##_module.Option.Some);
}

function _module.Option.Some_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Option.Some_q(d) } 
  _module.Option.Some_q(d) <==> DatatypeCtorId(d) == ##_module.Option.Some);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Option.Some_q(d) } 
  _module.Option.Some_q(d)
     ==> (exists a#23#0#0: Box :: d == #_module.Option.Some(a#23#0#0)));

// Constructor $Is
axiom (forall _module.Option$V: Ty, a#24#0#0: Box :: 
  { $Is(#_module.Option.Some(a#24#0#0), Tclass._module.Option(_module.Option$V)) } 
  $Is(#_module.Option.Some(a#24#0#0), Tclass._module.Option(_module.Option$V))
     <==> $IsBox(a#24#0#0, _module.Option$V));

// Constructor $IsAlloc
axiom (forall _module.Option$V: Ty, a#24#0#0: Box, $h: Heap :: 
  { $IsAlloc(#_module.Option.Some(a#24#0#0), Tclass._module.Option(_module.Option$V), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.Option.Some(a#24#0#0), Tclass._module.Option(_module.Option$V), $h)
       <==> $IsAllocBox(a#24#0#0, _module.Option$V, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.Option$V: Ty, $h: Heap :: 
  { $IsAllocBox(_module.Option.value(d), _module.Option$V, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Option.Some_q(d)
       && $IsAlloc(d, Tclass._module.Option(_module.Option$V), $h)
     ==> $IsAllocBox(_module.Option.value(d), _module.Option$V, $h));

// Constructor literal
axiom (forall a#25#0#0: Box :: 
  { #_module.Option.Some(Lit(a#25#0#0)) } 
  #_module.Option.Some(Lit(a#25#0#0)) == Lit(#_module.Option.Some(a#25#0#0)));

function _module.Option.value(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#26#0#0: Box :: 
  { #_module.Option.Some(a#26#0#0) } 
  _module.Option.value(#_module.Option.Some(a#26#0#0)) == a#26#0#0);

// Inductive rank
axiom (forall a#27#0#0: Box :: 
  { #_module.Option.Some(a#27#0#0) } 
  BoxRank(a#27#0#0) < DtRank(#_module.Option.Some(a#27#0#0)));

// Depth-one case-split function
function $IsA#_module.Option(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Option(d) } 
  $IsA#_module.Option(d) ==> _module.Option.None_q(d) || _module.Option.Some_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.Option$V: Ty, d: DatatypeType :: 
  { _module.Option.Some_q(d), $Is(d, Tclass._module.Option(_module.Option$V)) } 
    { _module.Option.None_q(d), $Is(d, Tclass._module.Option(_module.Option$V)) } 
  $Is(d, Tclass._module.Option(_module.Option$V))
     ==> _module.Option.None_q(d) || _module.Option.Some_q(d));

// Datatype extensional equality declaration
function _module.Option#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Option.None
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Option#Equal(a, b), _module.Option.None_q(a) } 
    { _module.Option#Equal(a, b), _module.Option.None_q(b) } 
  _module.Option.None_q(a) && _module.Option.None_q(b)
     ==> _module.Option#Equal(a, b));

// Datatype extensional equality definition: #_module.Option.Some
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Option#Equal(a, b), _module.Option.Some_q(a) } 
    { _module.Option#Equal(a, b), _module.Option.Some_q(b) } 
  _module.Option.Some_q(a) && _module.Option.Some_q(b)
     ==> (_module.Option#Equal(a, b)
       <==> _module.Option.value(a) == _module.Option.value(b)));

// Datatype extensionality axiom: _module.Option
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Option#Equal(a, b) } 
  _module.Option#Equal(a, b) <==> a == b);

const unique class._module.Option: ClassName;

// Constructor function declaration
function #_module.Err.Fail(bool) : DatatypeType;

const unique ##_module.Err.Fail: DtCtorId
uses {
// Constructor identifier
axiom (forall a#28#0#0: bool :: 
  { #_module.Err.Fail(a#28#0#0) } 
  DatatypeCtorId(#_module.Err.Fail(a#28#0#0)) == ##_module.Err.Fail);
}

function _module.Err.Fail_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Err.Fail_q(d) } 
  _module.Err.Fail_q(d) <==> DatatypeCtorId(d) == ##_module.Err.Fail);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Err.Fail_q(d) } 
  _module.Err.Fail_q(d)
     ==> (exists a#29#0#0: bool :: d == #_module.Err.Fail(a#29#0#0)));

// Constructor $Is
axiom (forall _module.Err$V: Ty, a#30#0#0: bool :: 
  { $Is(#_module.Err.Fail(a#30#0#0), Tclass._module.Err(_module.Err$V)) } 
  $Is(#_module.Err.Fail(a#30#0#0), Tclass._module.Err(_module.Err$V))
     <==> $Is(a#30#0#0, TBool));

// Constructor $IsAlloc
axiom (forall _module.Err$V: Ty, a#30#0#0: bool, $h: Heap :: 
  { $IsAlloc(#_module.Err.Fail(a#30#0#0), Tclass._module.Err(_module.Err$V), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.Err.Fail(a#30#0#0), Tclass._module.Err(_module.Err$V), $h)
       <==> $IsAlloc(a#30#0#0, TBool, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Err.err(d), TBool, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Err.Fail_q(d)
       && (exists _module.Err$V: Ty :: 
        { $IsAlloc(d, Tclass._module.Err(_module.Err$V), $h) } 
        $IsAlloc(d, Tclass._module.Err(_module.Err$V), $h))
     ==> $IsAlloc(_module.Err.err(d), TBool, $h));

// Constructor literal
axiom (forall a#31#0#0: bool :: 
  { #_module.Err.Fail(Lit(a#31#0#0)) } 
  #_module.Err.Fail(Lit(a#31#0#0)) == Lit(#_module.Err.Fail(a#31#0#0)));

function _module.Err.err(DatatypeType) : bool;

// Constructor injectivity
axiom (forall a#32#0#0: bool :: 
  { #_module.Err.Fail(a#32#0#0) } 
  _module.Err.err(#_module.Err.Fail(a#32#0#0)) == a#32#0#0);

// Constructor function declaration
function #_module.Err.Ok(Box) : DatatypeType;

const unique ##_module.Err.Ok: DtCtorId
uses {
// Constructor identifier
axiom (forall a#33#0#0: Box :: 
  { #_module.Err.Ok(a#33#0#0) } 
  DatatypeCtorId(#_module.Err.Ok(a#33#0#0)) == ##_module.Err.Ok);
}

function _module.Err.Ok_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Err.Ok_q(d) } 
  _module.Err.Ok_q(d) <==> DatatypeCtorId(d) == ##_module.Err.Ok);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Err.Ok_q(d) } 
  _module.Err.Ok_q(d) ==> (exists a#34#0#0: Box :: d == #_module.Err.Ok(a#34#0#0)));

// Constructor $Is
axiom (forall _module.Err$V: Ty, a#35#0#0: Box :: 
  { $Is(#_module.Err.Ok(a#35#0#0), Tclass._module.Err(_module.Err$V)) } 
  $Is(#_module.Err.Ok(a#35#0#0), Tclass._module.Err(_module.Err$V))
     <==> $IsBox(a#35#0#0, _module.Err$V));

// Constructor $IsAlloc
axiom (forall _module.Err$V: Ty, a#35#0#0: Box, $h: Heap :: 
  { $IsAlloc(#_module.Err.Ok(a#35#0#0), Tclass._module.Err(_module.Err$V), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.Err.Ok(a#35#0#0), Tclass._module.Err(_module.Err$V), $h)
       <==> $IsAllocBox(a#35#0#0, _module.Err$V, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.Err$V: Ty, $h: Heap :: 
  { $IsAllocBox(_module.Err.value(d), _module.Err$V, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Err.Ok_q(d)
       && $IsAlloc(d, Tclass._module.Err(_module.Err$V), $h)
     ==> $IsAllocBox(_module.Err.value(d), _module.Err$V, $h));

// Constructor literal
axiom (forall a#36#0#0: Box :: 
  { #_module.Err.Ok(Lit(a#36#0#0)) } 
  #_module.Err.Ok(Lit(a#36#0#0)) == Lit(#_module.Err.Ok(a#36#0#0)));

function _module.Err.value(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#37#0#0: Box :: 
  { #_module.Err.Ok(a#37#0#0) } 
  _module.Err.value(#_module.Err.Ok(a#37#0#0)) == a#37#0#0);

// Inductive rank
axiom (forall a#38#0#0: Box :: 
  { #_module.Err.Ok(a#38#0#0) } 
  BoxRank(a#38#0#0) < DtRank(#_module.Err.Ok(a#38#0#0)));

// Depth-one case-split function
function $IsA#_module.Err(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Err(d) } 
  $IsA#_module.Err(d) ==> _module.Err.Fail_q(d) || _module.Err.Ok_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.Err$V: Ty, d: DatatypeType :: 
  { _module.Err.Ok_q(d), $Is(d, Tclass._module.Err(_module.Err$V)) } 
    { _module.Err.Fail_q(d), $Is(d, Tclass._module.Err(_module.Err$V)) } 
  $Is(d, Tclass._module.Err(_module.Err$V))
     ==> _module.Err.Fail_q(d) || _module.Err.Ok_q(d));

// Datatype extensional equality declaration
function _module.Err#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Err.Fail
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Err#Equal(a, b), _module.Err.Fail_q(a) } 
    { _module.Err#Equal(a, b), _module.Err.Fail_q(b) } 
  _module.Err.Fail_q(a) && _module.Err.Fail_q(b)
     ==> (_module.Err#Equal(a, b) <==> _module.Err.err(a) == _module.Err.err(b)));

// Datatype extensional equality definition: #_module.Err.Ok
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Err#Equal(a, b), _module.Err.Ok_q(a) } 
    { _module.Err#Equal(a, b), _module.Err.Ok_q(b) } 
  _module.Err.Ok_q(a) && _module.Err.Ok_q(b)
     ==> (_module.Err#Equal(a, b) <==> _module.Err.value(a) == _module.Err.value(b)));

// Datatype extensionality axiom: _module.Err
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Err#Equal(a, b) } 
  _module.Err#Equal(a, b) <==> a == b);

const unique class._module.Err: ClassName;

// Constructor function declaration
function #_module.Dup.Dup1(bool, int) : DatatypeType;

const unique ##_module.Dup.Dup1: DtCtorId
uses {
// Constructor identifier
axiom (forall a#39#0#0: bool, a#39#1#0: int :: 
  { #_module.Dup.Dup1(a#39#0#0, a#39#1#0) } 
  DatatypeCtorId(#_module.Dup.Dup1(a#39#0#0, a#39#1#0)) == ##_module.Dup.Dup1);
}

function _module.Dup.Dup1_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Dup.Dup1_q(d) } 
  _module.Dup.Dup1_q(d) <==> DatatypeCtorId(d) == ##_module.Dup.Dup1);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Dup.Dup1_q(d) } 
  _module.Dup.Dup1_q(d)
     ==> (exists a#40#0#0: bool, a#40#1#0: int :: 
      d == #_module.Dup.Dup1(a#40#0#0, a#40#1#0)));

// Constructor $Is
axiom (forall a#41#0#0: bool, a#41#1#0: int :: 
  { $Is(#_module.Dup.Dup1(a#41#0#0, a#41#1#0), Tclass._module.Dup()) } 
  $Is(#_module.Dup.Dup1(a#41#0#0, a#41#1#0), Tclass._module.Dup())
     <==> $Is(a#41#0#0, TBool) && $Is(a#41#1#0, Tclass._module.uint32()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Dup.b(d), TBool, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Dup.Dup1_q(d)
       && $IsAlloc(d, Tclass._module.Dup(), $h)
     ==> $IsAlloc(_module.Dup.b(d), TBool, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Dup.x(d), Tclass._module.uint32(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Dup.Dup1_q(d)
       && $IsAlloc(d, Tclass._module.Dup(), $h)
     ==> $IsAlloc(_module.Dup.x(d), Tclass._module.uint32(), $h));

// Constructor literal
axiom (forall a#42#0#0: bool, a#42#1#0: int :: 
  { #_module.Dup.Dup1(Lit(a#42#0#0), LitInt(a#42#1#0)) } 
  #_module.Dup.Dup1(Lit(a#42#0#0), LitInt(a#42#1#0))
     == Lit(#_module.Dup.Dup1(a#42#0#0, a#42#1#0)));

function _module.Dup.b(DatatypeType) : bool;

// Constructor injectivity
axiom (forall a#43#0#0: bool, a#43#1#0: int :: 
  { #_module.Dup.Dup1(a#43#0#0, a#43#1#0) } 
  _module.Dup.b(#_module.Dup.Dup1(a#43#0#0, a#43#1#0)) == a#43#0#0);

function _module.Dup.x(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#44#0#0: bool, a#44#1#0: int :: 
  { #_module.Dup.Dup1(a#44#0#0, a#44#1#0) } 
  _module.Dup.x(#_module.Dup.Dup1(a#44#0#0, a#44#1#0)) == a#44#1#0);

// Constructor function declaration
function #_module.Dup.Dup2(int) : DatatypeType;

const unique ##_module.Dup.Dup2: DtCtorId
uses {
// Constructor identifier
axiom (forall a#45#0#0: int :: 
  { #_module.Dup.Dup2(a#45#0#0) } 
  DatatypeCtorId(#_module.Dup.Dup2(a#45#0#0)) == ##_module.Dup.Dup2);
}

function _module.Dup.Dup2_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Dup.Dup2_q(d) } 
  _module.Dup.Dup2_q(d) <==> DatatypeCtorId(d) == ##_module.Dup.Dup2);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Dup.Dup2_q(d) } 
  _module.Dup.Dup2_q(d)
     ==> (exists a#46#0#0: int :: d == #_module.Dup.Dup2(a#46#0#0)));

// Constructor $Is
axiom (forall a#47#0#0: int :: 
  { $Is(#_module.Dup.Dup2(a#47#0#0), Tclass._module.Dup()) } 
  $Is(#_module.Dup.Dup2(a#47#0#0), Tclass._module.Dup())
     <==> $Is(a#47#0#0, Tclass._module.uint32()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Dup.x(d), Tclass._module.uint32(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Dup.Dup2_q(d)
       && $IsAlloc(d, Tclass._module.Dup(), $h)
     ==> $IsAlloc(_module.Dup.x(d), Tclass._module.uint32(), $h));

// Constructor literal
axiom (forall a#48#0#0: int :: 
  { #_module.Dup.Dup2(LitInt(a#48#0#0)) } 
  #_module.Dup.Dup2(LitInt(a#48#0#0)) == Lit(#_module.Dup.Dup2(a#48#0#0)));

// Constructor injectivity
axiom (forall a#49#0#0: int :: 
  { #_module.Dup.Dup2(a#49#0#0) } 
  _module.Dup.x(#_module.Dup.Dup2(a#49#0#0)) == a#49#0#0);

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.Dup(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.Dup())
     ==> $IsAlloc(d, Tclass._module.Dup(), $h));

// Depth-one case-split function
function $IsA#_module.Dup(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Dup(d) } 
  $IsA#_module.Dup(d) ==> _module.Dup.Dup1_q(d) || _module.Dup.Dup2_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.Dup.Dup2_q(d), $Is(d, Tclass._module.Dup()) } 
    { _module.Dup.Dup1_q(d), $Is(d, Tclass._module.Dup()) } 
  $Is(d, Tclass._module.Dup()) ==> _module.Dup.Dup1_q(d) || _module.Dup.Dup2_q(d));

// Datatype extensional equality declaration
function _module.Dup#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Dup.Dup1
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Dup#Equal(a, b), _module.Dup.Dup1_q(a) } 
    { _module.Dup#Equal(a, b), _module.Dup.Dup1_q(b) } 
  _module.Dup.Dup1_q(a) && _module.Dup.Dup1_q(b)
     ==> (_module.Dup#Equal(a, b)
       <==> _module.Dup.b(a) == _module.Dup.b(b) && _module.Dup.x(a) == _module.Dup.x(b)));

// Datatype extensional equality definition: #_module.Dup.Dup2
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Dup#Equal(a, b), _module.Dup.Dup2_q(a) } 
    { _module.Dup#Equal(a, b), _module.Dup.Dup2_q(b) } 
  _module.Dup.Dup2_q(a) && _module.Dup.Dup2_q(b)
     ==> (_module.Dup#Equal(a, b) <==> _module.Dup.x(a) == _module.Dup.x(b)));

// Datatype extensionality axiom: _module.Dup
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Dup#Equal(a, b) } 
  _module.Dup#Equal(a, b) <==> a == b);

const unique class._module.Dup: ClassName;

// Constructor function declaration
function #_module.IntList.Nil() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.IntList.Nil()) == ##_module.IntList.Nil;
// Constructor $Is
axiom $Is(#_module.IntList.Nil(), Tclass._module.IntList());
// Constructor literal
axiom #_module.IntList.Nil() == Lit(#_module.IntList.Nil());
}

const unique ##_module.IntList.Nil: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.IntList.Nil()) == ##_module.IntList.Nil;
}

function _module.IntList.Nil_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.IntList.Nil_q(d) } 
  _module.IntList.Nil_q(d) <==> DatatypeCtorId(d) == ##_module.IntList.Nil);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.IntList.Nil_q(d) } 
  _module.IntList.Nil_q(d) ==> d == #_module.IntList.Nil());

// Constructor function declaration
function #_module.IntList.Cons(int, DatatypeType) : DatatypeType;

const unique ##_module.IntList.Cons: DtCtorId
uses {
// Constructor identifier
axiom (forall a#54#0#0: int, a#54#1#0: DatatypeType :: 
  { #_module.IntList.Cons(a#54#0#0, a#54#1#0) } 
  DatatypeCtorId(#_module.IntList.Cons(a#54#0#0, a#54#1#0))
     == ##_module.IntList.Cons);
}

function _module.IntList.Cons_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.IntList.Cons_q(d) } 
  _module.IntList.Cons_q(d) <==> DatatypeCtorId(d) == ##_module.IntList.Cons);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.IntList.Cons_q(d) } 
  _module.IntList.Cons_q(d)
     ==> (exists a#55#0#0: int, a#55#1#0: DatatypeType :: 
      d == #_module.IntList.Cons(a#55#0#0, a#55#1#0)));

// Constructor $Is
axiom (forall a#56#0#0: int, a#56#1#0: DatatypeType :: 
  { $Is(#_module.IntList.Cons(a#56#0#0, a#56#1#0), Tclass._module.IntList()) } 
  $Is(#_module.IntList.Cons(a#56#0#0, a#56#1#0), Tclass._module.IntList())
     <==> $Is(a#56#0#0, Tclass._module.uint32())
       && $Is(a#56#1#0, Tclass._module.IntList()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.IntList.hd(d), Tclass._module.uint32(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.IntList.Cons_q(d)
       && $IsAlloc(d, Tclass._module.IntList(), $h)
     ==> $IsAlloc(_module.IntList.hd(d), Tclass._module.uint32(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.IntList.tl(d), Tclass._module.IntList(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.IntList.Cons_q(d)
       && $IsAlloc(d, Tclass._module.IntList(), $h)
     ==> $IsAlloc(_module.IntList.tl(d), Tclass._module.IntList(), $h));

// Constructor literal
axiom (forall a#57#0#0: int, a#57#1#0: DatatypeType :: 
  { #_module.IntList.Cons(LitInt(a#57#0#0), Lit(a#57#1#0)) } 
  #_module.IntList.Cons(LitInt(a#57#0#0), Lit(a#57#1#0))
     == Lit(#_module.IntList.Cons(a#57#0#0, a#57#1#0)));

function _module.IntList.hd(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#58#0#0: int, a#58#1#0: DatatypeType :: 
  { #_module.IntList.Cons(a#58#0#0, a#58#1#0) } 
  _module.IntList.hd(#_module.IntList.Cons(a#58#0#0, a#58#1#0)) == a#58#0#0);

function _module.IntList.tl(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#59#0#0: int, a#59#1#0: DatatypeType :: 
  { #_module.IntList.Cons(a#59#0#0, a#59#1#0) } 
  _module.IntList.tl(#_module.IntList.Cons(a#59#0#0, a#59#1#0)) == a#59#1#0);

// Inductive rank
axiom (forall a#60#0#0: int, a#60#1#0: DatatypeType :: 
  { #_module.IntList.Cons(a#60#0#0, a#60#1#0) } 
  DtRank(a#60#1#0) < DtRank(#_module.IntList.Cons(a#60#0#0, a#60#1#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.IntList(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.IntList())
     ==> $IsAlloc(d, Tclass._module.IntList(), $h));

// Depth-one case-split function
function $IsA#_module.IntList(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.IntList(d) } 
  $IsA#_module.IntList(d)
     ==> _module.IntList.Nil_q(d) || _module.IntList.Cons_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.IntList.Cons_q(d), $Is(d, Tclass._module.IntList()) } 
    { _module.IntList.Nil_q(d), $Is(d, Tclass._module.IntList()) } 
  $Is(d, Tclass._module.IntList())
     ==> _module.IntList.Nil_q(d) || _module.IntList.Cons_q(d));

// Datatype extensional equality declaration
function _module.IntList#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.IntList.Nil
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.IntList#Equal(a, b), _module.IntList.Nil_q(a) } 
    { _module.IntList#Equal(a, b), _module.IntList.Nil_q(b) } 
  _module.IntList.Nil_q(a) && _module.IntList.Nil_q(b)
     ==> _module.IntList#Equal(a, b));

// Datatype extensional equality definition: #_module.IntList.Cons
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.IntList#Equal(a, b), _module.IntList.Cons_q(a) } 
    { _module.IntList#Equal(a, b), _module.IntList.Cons_q(b) } 
  _module.IntList.Cons_q(a) && _module.IntList.Cons_q(b)
     ==> (_module.IntList#Equal(a, b)
       <==> _module.IntList.hd(a) == _module.IntList.hd(b)
         && _module.IntList#Equal(_module.IntList.tl(a), _module.IntList.tl(b))));

// Datatype extensionality axiom: _module.IntList
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.IntList#Equal(a, b) } 
  _module.IntList#Equal(a, b) <==> a == b);

const unique class._module.IntList: ClassName;

// Constructor function declaration
function #_module.Foo.Foo(Box) : DatatypeType;

const unique ##_module.Foo.Foo: DtCtorId
uses {
// Constructor identifier
axiom (forall a#61#0#0: Box :: 
  { #_module.Foo.Foo(a#61#0#0) } 
  DatatypeCtorId(#_module.Foo.Foo(a#61#0#0)) == ##_module.Foo.Foo);
}

function _module.Foo.Foo_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Foo.Foo_q(d) } 
  _module.Foo.Foo_q(d) <==> DatatypeCtorId(d) == ##_module.Foo.Foo);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Foo.Foo_q(d) } 
  _module.Foo.Foo_q(d)
     ==> (exists a#62#0#0: Box :: d == #_module.Foo.Foo(a#62#0#0)));

function Tclass._module.Foo(Ty) : Ty;

const unique Tagclass._module.Foo: TyTag;

// Tclass._module.Foo Tag
axiom (forall _module.Foo$A: Ty :: 
  { Tclass._module.Foo(_module.Foo$A) } 
  Tag(Tclass._module.Foo(_module.Foo$A)) == Tagclass._module.Foo
     && TagFamily(Tclass._module.Foo(_module.Foo$A)) == tytagFamily$Foo);

function Tclass._module.Foo_0(Ty) : Ty;

// Tclass._module.Foo injectivity 0
axiom (forall _module.Foo$A: Ty :: 
  { Tclass._module.Foo(_module.Foo$A) } 
  Tclass._module.Foo_0(Tclass._module.Foo(_module.Foo$A)) == _module.Foo$A);

// Box/unbox axiom for Tclass._module.Foo
axiom (forall _module.Foo$A: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Foo(_module.Foo$A)) } 
  $IsBox(bx, Tclass._module.Foo(_module.Foo$A))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Foo(_module.Foo$A)));

// Constructor $Is
axiom (forall _module.Foo$A: Ty, a#63#0#0: Box :: 
  { $Is(#_module.Foo.Foo(a#63#0#0), Tclass._module.Foo(_module.Foo$A)) } 
  $Is(#_module.Foo.Foo(a#63#0#0), Tclass._module.Foo(_module.Foo$A))
     <==> $IsBox(a#63#0#0, _module.Foo$A));

// Constructor $IsAlloc
axiom (forall _module.Foo$A: Ty, a#63#0#0: Box, $h: Heap :: 
  { $IsAlloc(#_module.Foo.Foo(a#63#0#0), Tclass._module.Foo(_module.Foo$A), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.Foo.Foo(a#63#0#0), Tclass._module.Foo(_module.Foo$A), $h)
       <==> $IsAllocBox(a#63#0#0, _module.Foo$A, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.Foo$A: Ty, $h: Heap :: 
  { $IsAllocBox(_module.Foo.a(d), _module.Foo$A, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Foo.Foo_q(d)
       && $IsAlloc(d, Tclass._module.Foo(_module.Foo$A), $h)
     ==> $IsAllocBox(_module.Foo.a(d), _module.Foo$A, $h));

// Constructor literal
axiom (forall a#64#0#0: Box :: 
  { #_module.Foo.Foo(Lit(a#64#0#0)) } 
  #_module.Foo.Foo(Lit(a#64#0#0)) == Lit(#_module.Foo.Foo(a#64#0#0)));

function _module.Foo.a(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#65#0#0: Box :: 
  { #_module.Foo.Foo(a#65#0#0) } 
  _module.Foo.a(#_module.Foo.Foo(a#65#0#0)) == a#65#0#0);

// Inductive rank
axiom (forall a#66#0#0: Box :: 
  { #_module.Foo.Foo(a#66#0#0) } 
  BoxRank(a#66#0#0) < DtRank(#_module.Foo.Foo(a#66#0#0)));

// Depth-one case-split function
function $IsA#_module.Foo(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Foo(d) } 
  $IsA#_module.Foo(d) ==> _module.Foo.Foo_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.Foo$A: Ty, d: DatatypeType :: 
  { _module.Foo.Foo_q(d), $Is(d, Tclass._module.Foo(_module.Foo$A)) } 
  $Is(d, Tclass._module.Foo(_module.Foo$A)) ==> _module.Foo.Foo_q(d));

// Datatype extensional equality declaration
function _module.Foo#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Foo.Foo
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Foo#Equal(a, b) } 
  _module.Foo#Equal(a, b) <==> _module.Foo.a(a) == _module.Foo.a(b));

// Datatype extensionality axiom: _module.Foo
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Foo#Equal(a, b) } 
  _module.Foo#Equal(a, b) <==> a == b);

const unique class._module.Foo: ClassName;

procedure {:verboseName "Foo.Alloc (well-formedness)"} CheckWellFormed$$_module.Foo.Alloc(_module.Foo$A: Ty, 
    a#0: Box
       where $IsBox(a#0, _module.Foo$A) && $IsAllocBox(a#0, _module.Foo$A, $Heap))
   returns (f#0: DatatypeType
       where $Is(f#0, Tclass._module.Foo(_module.Foo$A))
         && $IsAlloc(f#0, Tclass._module.Foo(_module.Foo$A), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Foo.Alloc (call)"} Call$$_module.Foo.Alloc(_module.Foo$A: Ty, 
    a#0: Box
       where $IsBox(a#0, _module.Foo$A) && $IsAllocBox(a#0, _module.Foo$A, $Heap))
   returns (f#0: DatatypeType
       where $Is(f#0, Tclass._module.Foo(_module.Foo$A))
         && $IsAlloc(f#0, Tclass._module.Foo(_module.Foo$A), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Foo.Alloc (correctness)"} Impl$$_module.Foo.Alloc(_module.Foo$A: Ty, 
    a#0: Box
       where $IsBox(a#0, _module.Foo$A) && $IsAllocBox(a#0, _module.Foo$A, $Heap))
   returns (defass#f#0: bool, 
    f#0: DatatypeType
       where defass#f#0
         ==> $Is(f#0, Tclass._module.Foo(_module.Foo$A))
           && $IsAlloc(f#0, Tclass._module.Foo(_module.Foo$A), $Heap), 
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Foo.Alloc (correctness)"} Impl$$_module.Foo.Alloc(_module.Foo$A: Ty, a#0: Box)
   returns (defass#f#0: bool, f#0: DatatypeType, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: Alloc, Impl$$_module.Foo.Alloc
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/datatypes.dfy(135,7)
    assume true;
    assume true;
    f#0 := #_module.Foo.Foo(a#0);
    defass#f#0 := true;
    assert {:id "id106"} defass#f#0;
}



// Constructor function declaration
function #_module.Test.Test(Box) : DatatypeType;

const unique ##_module.Test.Test: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: Box :: 
  { #_module.Test.Test(a#0#0#0) } 
  DatatypeCtorId(#_module.Test.Test(a#0#0#0)) == ##_module.Test.Test);
}

function _module.Test.Test_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Test.Test_q(d) } 
  _module.Test.Test_q(d) <==> DatatypeCtorId(d) == ##_module.Test.Test);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Test.Test_q(d) } 
  _module.Test.Test_q(d)
     ==> (exists a#1#0#0: Box :: d == #_module.Test.Test(a#1#0#0)));

function Tclass._module.Test(Ty) : Ty;

const unique Tagclass._module.Test: TyTag;

// Tclass._module.Test Tag
axiom (forall _module.Test$A: Ty :: 
  { Tclass._module.Test(_module.Test$A) } 
  Tag(Tclass._module.Test(_module.Test$A)) == Tagclass._module.Test
     && TagFamily(Tclass._module.Test(_module.Test$A)) == tytagFamily$Test);

function Tclass._module.Test_0(Ty) : Ty;

// Tclass._module.Test injectivity 0
axiom (forall _module.Test$A: Ty :: 
  { Tclass._module.Test(_module.Test$A) } 
  Tclass._module.Test_0(Tclass._module.Test(_module.Test$A)) == _module.Test$A);

// Box/unbox axiom for Tclass._module.Test
axiom (forall _module.Test$A: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Test(_module.Test$A)) } 
  $IsBox(bx, Tclass._module.Test(_module.Test$A))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Test(_module.Test$A)));

// Constructor $Is
axiom (forall _module.Test$A: Ty, a#2#0#0: Box :: 
  { $Is(#_module.Test.Test(a#2#0#0), Tclass._module.Test(_module.Test$A)) } 
  $Is(#_module.Test.Test(a#2#0#0), Tclass._module.Test(_module.Test$A))
     <==> $IsBox(a#2#0#0, _module.Test$A));

// Constructor $IsAlloc
axiom (forall _module.Test$A: Ty, a#2#0#0: Box, $h: Heap :: 
  { $IsAlloc(#_module.Test.Test(a#2#0#0), Tclass._module.Test(_module.Test$A), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.Test.Test(a#2#0#0), Tclass._module.Test(_module.Test$A), $h)
       <==> $IsAllocBox(a#2#0#0, _module.Test$A, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.Test$A: Ty, $h: Heap :: 
  { $IsAllocBox(_module.Test.a(d), _module.Test$A, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Test.Test_q(d)
       && $IsAlloc(d, Tclass._module.Test(_module.Test$A), $h)
     ==> $IsAllocBox(_module.Test.a(d), _module.Test$A, $h));

// Constructor literal
axiom (forall a#3#0#0: Box :: 
  { #_module.Test.Test(Lit(a#3#0#0)) } 
  #_module.Test.Test(Lit(a#3#0#0)) == Lit(#_module.Test.Test(a#3#0#0)));

function _module.Test.a(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#4#0#0: Box :: 
  { #_module.Test.Test(a#4#0#0) } 
  _module.Test.a(#_module.Test.Test(a#4#0#0)) == a#4#0#0);

// Inductive rank
axiom (forall a#5#0#0: Box :: 
  { #_module.Test.Test(a#5#0#0) } 
  BoxRank(a#5#0#0) < DtRank(#_module.Test.Test(a#5#0#0)));

// Constructor function declaration
function #_module.Test.Empty() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Test.Empty()) == ##_module.Test.Empty;
// Constructor literal
axiom #_module.Test.Empty() == Lit(#_module.Test.Empty());
}

const unique ##_module.Test.Empty: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Test.Empty()) == ##_module.Test.Empty;
}

function _module.Test.Empty_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Test.Empty_q(d) } 
  _module.Test.Empty_q(d) <==> DatatypeCtorId(d) == ##_module.Test.Empty);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Test.Empty_q(d) } 
  _module.Test.Empty_q(d) ==> d == #_module.Test.Empty());

// Constructor $Is
axiom (forall _module.Test$A: Ty :: 
  { $Is(#_module.Test.Empty(), Tclass._module.Test(_module.Test$A)) } 
  $Is(#_module.Test.Empty(), Tclass._module.Test(_module.Test$A)));

// Constructor $IsAlloc
axiom (forall _module.Test$A: Ty, $h: Heap :: 
  { $IsAlloc(#_module.Test.Empty(), Tclass._module.Test(_module.Test$A), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#_module.Test.Empty(), Tclass._module.Test(_module.Test$A), $h));

// Depth-one case-split function
function $IsA#_module.Test(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Test(d) } 
  $IsA#_module.Test(d) ==> _module.Test.Test_q(d) || _module.Test.Empty_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.Test$A: Ty, d: DatatypeType :: 
  { _module.Test.Empty_q(d), $Is(d, Tclass._module.Test(_module.Test$A)) } 
    { _module.Test.Test_q(d), $Is(d, Tclass._module.Test(_module.Test$A)) } 
  $Is(d, Tclass._module.Test(_module.Test$A))
     ==> _module.Test.Test_q(d) || _module.Test.Empty_q(d));

// Datatype extensional equality declaration
function _module.Test#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Test.Test
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Test#Equal(a, b), _module.Test.Test_q(a) } 
    { _module.Test#Equal(a, b), _module.Test.Test_q(b) } 
  _module.Test.Test_q(a) && _module.Test.Test_q(b)
     ==> (_module.Test#Equal(a, b) <==> _module.Test.a(a) == _module.Test.a(b)));

// Datatype extensional equality definition: #_module.Test.Empty
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Test#Equal(a, b), _module.Test.Empty_q(a) } 
    { _module.Test#Equal(a, b), _module.Test.Empty_q(b) } 
  _module.Test.Empty_q(a) && _module.Test.Empty_q(b) ==> _module.Test#Equal(a, b));

// Datatype extensionality axiom: _module.Test
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Test#Equal(a, b) } 
  _module.Test#Equal(a, b) <==> a == b);

const unique class._module.Test: ClassName;

procedure {:verboseName "Test.Alloc (well-formedness)"} CheckWellFormed$$_module.Test.Alloc(_module.Test$A: Ty)
   returns (t#0: DatatypeType
       where $Is(t#0, Tclass._module.Test(_module.Test$A))
         && $IsAlloc(t#0, Tclass._module.Test(_module.Test$A), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Test.Alloc (call)"} Call$$_module.Test.Alloc(_module.Test$A: Ty)
   returns (t#0: DatatypeType
       where $Is(t#0, Tclass._module.Test(_module.Test$A))
         && $IsAlloc(t#0, Tclass._module.Test(_module.Test$A), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Test.Alloc (correctness)"} Impl$$_module.Test.Alloc(_module.Test$A: Ty)
   returns (t#0: DatatypeType
       where $Is(t#0, Tclass._module.Test(_module.Test$A))
         && $IsAlloc(t#0, Tclass._module.Test(_module.Test$A), $Heap), 
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



procedure {:verboseName "Test.Invoke (well-formedness)"} CheckWellFormed$$_module.Test.Invoke(_module.Test$A: Ty);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Test.Invoke (call)"} Call$$_module.Test.Invoke(_module.Test$A: Ty);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Test.Invoke (correctness)"} Impl$$_module.Test.Invoke(_module.Test$A: Ty) returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Test.Invoke (correctness)"} Impl$$_module.Test.Invoke(_module.Test$A: Ty) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: DatatypeType
     where $Is(a#0, Tclass._module.Test(_module.Test$A))
       && $IsAlloc(a#0, Tclass._module.Test(_module.Test$A), $Heap);
  var $rhs##0: DatatypeType;

    // AddMethodImpl: Invoke, Impl$$_module.Test.Invoke
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/c++/datatypes.dfy(146,19)
    assume true;
    // TrCallStmt: Adding lhs with type Test<A>
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id108"} $rhs##0 := Call$$_module.Test.Alloc(_module.Test$A);
    // TrCallStmt: After ProcessCallStmt
    a#0 := $rhs##0;
}



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

const unique tytagFamily$Example1: TyTagFamily;

const unique tytagFamily$uint32: TyTagFamily;

const unique tytagFamily$Example2: TyTagFamily;

const unique tytagFamily$Example5: TyTagFamily;

const unique tytagFamily$Option: TyTagFamily;

const unique tytagFamily$Err: TyTagFamily;

const unique tytagFamily$Example4: TyTagFamily;

const unique tytagFamily$Dup: TyTagFamily;

const unique tytagFamily$IntList: TyTagFamily;

const unique tytagFamily$Op: TyTagFamily;

const unique tytagFamily$Example3: TyTagFamily;

const unique tytagFamily$Example6: TyTagFamily;

const unique tytagFamily$Ex1Sub: TyTagFamily;

const unique tytagFamily$Ex2Sub: TyTagFamily;

const unique tytagFamily$Ex3Sub: TyTagFamily;

const unique tytagFamily$DtPointer: TyTagFamily;

const unique tytagFamily$DtPointerHolder: TyTagFamily;

const unique tytagFamily$Foo: TyTagFamily;

const unique tytagFamily$Test: TyTagFamily;
