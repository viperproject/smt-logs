// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/datatypes.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/datatypes-@PROC@.smt2 /normalizeNames:0 /emitDebugInformation:1 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/datatypes.dfy

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

const unique class.DatatypeTests.__default: ClassName;

function Tclass.DatatypeTests.u8() : Ty
uses {
// Tclass.DatatypeTests.u8 Tag
axiom Tag(Tclass.DatatypeTests.u8()) == Tagclass.DatatypeTests.u8
   && TagFamily(Tclass.DatatypeTests.u8()) == tytagFamily$u8;
}

const unique Tagclass.DatatypeTests.u8: TyTag;

// Box/unbox axiom for Tclass.DatatypeTests.u8
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.DatatypeTests.u8()) } 
  $IsBox(bx, Tclass.DatatypeTests.u8())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass.DatatypeTests.u8()));

function Tclass.RustStdOption.Option(Ty) : Ty;

const unique Tagclass.RustStdOption.Option: TyTag;

// Tclass.RustStdOption.Option Tag
axiom (forall RustStdOption.Option$T: Ty :: 
  { Tclass.RustStdOption.Option(RustStdOption.Option$T) } 
  Tag(Tclass.RustStdOption.Option(RustStdOption.Option$T))
       == Tagclass.RustStdOption.Option
     && TagFamily(Tclass.RustStdOption.Option(RustStdOption.Option$T))
       == tytagFamily$Option);

function Tclass.RustStdOption.Option_0(Ty) : Ty;

// Tclass.RustStdOption.Option injectivity 0
axiom (forall RustStdOption.Option$T: Ty :: 
  { Tclass.RustStdOption.Option(RustStdOption.Option$T) } 
  Tclass.RustStdOption.Option_0(Tclass.RustStdOption.Option(RustStdOption.Option$T))
     == RustStdOption.Option$T);

// Box/unbox axiom for Tclass.RustStdOption.Option
axiom (forall RustStdOption.Option$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.RustStdOption.Option(RustStdOption.Option$T)) } 
  $IsBox(bx, Tclass.RustStdOption.Option(RustStdOption.Option$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.RustStdOption.Option(RustStdOption.Option$T)));

procedure {:verboseName "DatatypeTests.PrintOption (well-formedness)"} CheckWellFormed$$DatatypeTests.__default.PrintOption(o#0: DatatypeType
       where $Is(o#0, Tclass.RustStdOption.Option(Tclass.DatatypeTests.u8()))
         && $IsAlloc(o#0, Tclass.RustStdOption.Option(Tclass.DatatypeTests.u8()), $Heap)
         && $IsA#RustStdOption.Option(o#0));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "DatatypeTests.PrintOption (call)"} Call$$DatatypeTests.__default.PrintOption(o#0: DatatypeType
       where $Is(o#0, Tclass.RustStdOption.Option(Tclass.DatatypeTests.u8()))
         && $IsAlloc(o#0, Tclass.RustStdOption.Option(Tclass.DatatypeTests.u8()), $Heap)
         && $IsA#RustStdOption.Option(o#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "DatatypeTests.PrintOption (correctness)"} Impl$$DatatypeTests.__default.PrintOption(o#0: DatatypeType
       where $Is(o#0, Tclass.RustStdOption.Option(Tclass.DatatypeTests.u8()))
         && $IsAlloc(o#0, Tclass.RustStdOption.Option(Tclass.DatatypeTests.u8()), $Heap)
         && $IsA#RustStdOption.Option(o#0))
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



procedure {:verboseName "DatatypeTests.Main (well-formedness)"} CheckWellFormed$$DatatypeTests.__default.Main();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "DatatypeTests.Main (call)"} Call$$DatatypeTests.__default.Main();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "DatatypeTests.Main (correctness)"} Impl$$DatatypeTests.__default.Main() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass.DatatypeTests.NoArg() : Ty
uses {
// Tclass.DatatypeTests.NoArg Tag
axiom Tag(Tclass.DatatypeTests.NoArg()) == Tagclass.DatatypeTests.NoArg
   && TagFamily(Tclass.DatatypeTests.NoArg()) == tytagFamily$NoArg;
}

const unique Tagclass.DatatypeTests.NoArg: TyTag;

// Box/unbox axiom for Tclass.DatatypeTests.NoArg
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.DatatypeTests.NoArg()) } 
  $IsBox(bx, Tclass.DatatypeTests.NoArg())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.DatatypeTests.NoArg()));

function Tclass.DatatypeTests.AlmostOption() : Ty
uses {
// Tclass.DatatypeTests.AlmostOption Tag
axiom Tag(Tclass.DatatypeTests.AlmostOption()) == Tagclass.DatatypeTests.AlmostOption
   && TagFamily(Tclass.DatatypeTests.AlmostOption()) == tytagFamily$AlmostOption;
}

const unique Tagclass.DatatypeTests.AlmostOption: TyTag;

// Box/unbox axiom for Tclass.DatatypeTests.AlmostOption
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.DatatypeTests.AlmostOption()) } 
  $IsBox(bx, Tclass.DatatypeTests.AlmostOption())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.DatatypeTests.AlmostOption()));

function Tclass.DatatypeTests.Peano() : Ty
uses {
// Tclass.DatatypeTests.Peano Tag
axiom Tag(Tclass.DatatypeTests.Peano()) == Tagclass.DatatypeTests.Peano
   && TagFamily(Tclass.DatatypeTests.Peano()) == tytagFamily$Peano;
}

const unique Tagclass.DatatypeTests.Peano: TyTag;

// Box/unbox axiom for Tclass.DatatypeTests.Peano
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.DatatypeTests.Peano()) } 
  $IsBox(bx, Tclass.DatatypeTests.Peano())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.DatatypeTests.Peano()));

function Tclass.DatatypeTests.Multiple() : Ty
uses {
// Tclass.DatatypeTests.Multiple Tag
axiom Tag(Tclass.DatatypeTests.Multiple()) == Tagclass.DatatypeTests.Multiple
   && TagFamily(Tclass.DatatypeTests.Multiple()) == tytagFamily$Multiple;
}

const unique Tagclass.DatatypeTests.Multiple: TyTag;

// Box/unbox axiom for Tclass.DatatypeTests.Multiple
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.DatatypeTests.Multiple()) } 
  $IsBox(bx, Tclass.DatatypeTests.Multiple())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.DatatypeTests.Multiple()));

function Tclass.DatatypeTests.Struct() : Ty
uses {
// Tclass.DatatypeTests.Struct Tag
axiom Tag(Tclass.DatatypeTests.Struct()) == Tagclass.DatatypeTests.Struct
   && TagFamily(Tclass.DatatypeTests.Struct()) == tytagFamily$Struct;
}

const unique Tagclass.DatatypeTests.Struct: TyTag;

// Box/unbox axiom for Tclass.DatatypeTests.Struct
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.DatatypeTests.Struct()) } 
  $IsBox(bx, Tclass.DatatypeTests.Struct())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.DatatypeTests.Struct()));

function Tclass.DatatypeTests.RcMultiple() : Ty
uses {
// Tclass.DatatypeTests.RcMultiple Tag
axiom Tag(Tclass.DatatypeTests.RcMultiple()) == Tagclass.DatatypeTests.RcMultiple
   && TagFamily(Tclass.DatatypeTests.RcMultiple()) == tytagFamily$RcMultiple;
}

const unique Tagclass.DatatypeTests.RcMultiple: TyTag;

// Box/unbox axiom for Tclass.DatatypeTests.RcMultiple
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.DatatypeTests.RcMultiple()) } 
  $IsBox(bx, Tclass.DatatypeTests.RcMultiple())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.DatatypeTests.RcMultiple()));

function Tclass.DatatypeTests.RcStruct() : Ty
uses {
// Tclass.DatatypeTests.RcStruct Tag
axiom Tag(Tclass.DatatypeTests.RcStruct()) == Tagclass.DatatypeTests.RcStruct
   && TagFamily(Tclass.DatatypeTests.RcStruct()) == tytagFamily$RcStruct;
}

const unique Tagclass.DatatypeTests.RcStruct: TyTag;

// Box/unbox axiom for Tclass.DatatypeTests.RcStruct
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.DatatypeTests.RcStruct()) } 
  $IsBox(bx, Tclass.DatatypeTests.RcStruct())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.DatatypeTests.RcStruct()));

function Tclass.DatatypeTests.Recursive() : Ty
uses {
// Tclass.DatatypeTests.Recursive Tag
axiom Tag(Tclass.DatatypeTests.Recursive()) == Tagclass.DatatypeTests.Recursive
   && TagFamily(Tclass.DatatypeTests.Recursive()) == tytagFamily$Recursive;
}

const unique Tagclass.DatatypeTests.Recursive: TyTag;

// Box/unbox axiom for Tclass.DatatypeTests.Recursive
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.DatatypeTests.Recursive()) } 
  $IsBox(bx, Tclass.DatatypeTests.Recursive())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.DatatypeTests.Recursive()));

function Tclass.RustStdCompare.Option(Ty) : Ty;

const unique Tagclass.RustStdCompare.Option: TyTag;

// Tclass.RustStdCompare.Option Tag
axiom (forall RustStdCompare.Option$T: Ty :: 
  { Tclass.RustStdCompare.Option(RustStdCompare.Option$T) } 
  Tag(Tclass.RustStdCompare.Option(RustStdCompare.Option$T))
       == Tagclass.RustStdCompare.Option
     && TagFamily(Tclass.RustStdCompare.Option(RustStdCompare.Option$T))
       == tytagFamily$Option);

function Tclass.RustStdCompare.Option_0(Ty) : Ty;

// Tclass.RustStdCompare.Option injectivity 0
axiom (forall RustStdCompare.Option$T: Ty :: 
  { Tclass.RustStdCompare.Option(RustStdCompare.Option$T) } 
  Tclass.RustStdCompare.Option_0(Tclass.RustStdCompare.Option(RustStdCompare.Option$T))
     == RustStdCompare.Option$T);

// Box/unbox axiom for Tclass.RustStdCompare.Option
axiom (forall RustStdCompare.Option$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.RustStdCompare.Option(RustStdCompare.Option$T)) } 
  $IsBox(bx, Tclass.RustStdCompare.Option(RustStdCompare.Option$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.RustStdCompare.Option(RustStdCompare.Option$T)));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DatatypeTests.Main (correctness)"} Impl$$DatatypeTests.__default.Main() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var n#0: DatatypeType
     where $Is(n#0, Tclass.DatatypeTests.NoArg())
       && $IsAlloc(n#0, Tclass.DatatypeTests.NoArg(), $Heap);
  var d#0: DatatypeType
     where $Is(d#0, Tclass.DatatypeTests.AlmostOption())
       && $IsAlloc(d#0, Tclass.DatatypeTests.AlmostOption(), $Heap);
  var newtype$check#0: int;
  var newtype$check#1: int;
  var p#0: DatatypeType
     where $Is(p#0, Tclass.DatatypeTests.Peano())
       && $IsAlloc(p#0, Tclass.DatatypeTests.Peano(), $Heap);
  var q#0: DatatypeType
     where $Is(q#0, Tclass.DatatypeTests.Peano())
       && $IsAlloc(q#0, Tclass.DatatypeTests.Peano(), $Heap);
  var c#0: DatatypeType
     where $Is(c#0, Tclass.DatatypeTests.Multiple())
       && $IsAlloc(c#0, Tclass.DatatypeTests.Multiple(), $Heap);
  var newtype$check#2: int;
  var dt_update_tmp#0#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var dt_update#a#0#Z#0: int;
  var let#1#0#0: int;
  var newtype$check#3: int;
  var ##other#0: DatatypeType;
  var newtype$check#4: int;
  var newtype$check#5: int;
  var ##other#1: DatatypeType;
  var newtype$check#6: int;
  var a#0: DatatypeType
     where $Is(a#0, Tclass.DatatypeTests.Struct())
       && $IsAlloc(a#0, Tclass.DatatypeTests.Struct(), $Heap);
  var newtype$check#7: int;
  var newtype$check#8: int;
  var c2#0: DatatypeType
     where $Is(c2#0, Tclass.DatatypeTests.RcMultiple())
       && $IsAlloc(c2#0, Tclass.DatatypeTests.RcMultiple(), $Heap);
  var newtype$check#9: int;
  var dt_update_tmp#1#Z#0: DatatypeType;
  var let#2#0#0: DatatypeType;
  var dt_update#a#1#Z#0: int;
  var let#3#0#0: int;
  var newtype$check#10: int;
  var ##other#2: DatatypeType;
  var newtype$check#11: int;
  var ##other#3: DatatypeType;
  var rc_a#0: DatatypeType
     where $Is(rc_a#0, Tclass.DatatypeTests.RcStruct())
       && $IsAlloc(rc_a#0, Tclass.DatatypeTests.RcStruct(), $Heap);
  var newtype$check#12: int;
  var newtype$check#13: int;
  var r#0: DatatypeType
     where $Is(r#0, Tclass.DatatypeTests.Recursive())
       && $IsAlloc(r#0, Tclass.DatatypeTests.Recursive(), $Heap);
  var x#0: DatatypeType
     where $Is(x#0, Tclass.RustStdOption.Option(Tclass.DatatypeTests.u8()))
       && $IsAlloc(x#0, Tclass.RustStdOption.Option(Tclass.DatatypeTests.u8()), $Heap);
  var newtype$check#14: int;
  var newtype$check#15: int;
  var u#0: int where LitInt(0) <= u#0 && u#0 < 255;
  var newtype$check#16: int;
  var _mcc#0#0_0: int;
  var i#0_0: int;
  var let#0_0#0#0: int;
  var newtype$check#0_0: int;
  var newtype$check#17: int;
  var o##0: DatatypeType;
  var o##1: DatatypeType;
  var no#0: DatatypeType
     where $Is(no#0, Tclass.RustStdOption.Option(Tclass.DatatypeTests.u8()))
       && $IsAlloc(no#0, Tclass.RustStdOption.Option(Tclass.DatatypeTests.u8()), $Heap);
  var homeMadeOption#0: DatatypeType
     where $Is(homeMadeOption#0, Tclass.RustStdCompare.Option(TInt))
       && $IsAlloc(homeMadeOption#0, Tclass.RustStdCompare.Option(TInt), $Heap);

    // AddMethodImpl: Main, Impl$$DatatypeTests.__default.Main
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/datatypes.dfy(117,18)
    assume true;
    assume true;
    n#0 := Lit(#DatatypeTests.NoArg.OptionA());
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/datatypes.dfy(118,7)
    assume true;
    assume true;
    n#0 := Lit(#DatatypeTests.NoArg.OptionB());
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/datatypes.dfy(119,5)
    assume true;
    if (DatatypeTests.NoArg.OptionC_q(n#0))
    {
        assume true;
        assume false;
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/datatypes.dfy(121,25)
    assume true;
    assume true;
    d#0 := Lit(#DatatypeTests.AlmostOption.Nothing());
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/datatypes.dfy(122,7)
    assume true;
    newtype$check#0 := LitInt(4);
    assert {:id "id5"} LitInt(0) <= newtype$check#0 && newtype$check#0 < 255;
    newtype$check#1 := LitInt(4);
    assert {:id "id6"} LitInt(0) <= newtype$check#1 && newtype$check#1 < 255;
    assume true;
    d#0 := Lit(#DatatypeTests.AlmostOption.ThereItIs(LitInt(4)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/datatypes.dfy(124,18)
    assume true;
    assume true;
    p#0 := Lit(#DatatypeTests.Peano.Zero());
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/datatypes.dfy(125,7)
    assume true;
    assume true;
    p#0 := #DatatypeTests.Peano.One(p#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/datatypes.dfy(126,18)
    assume true;
    assume true;
    q#0 := p#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/datatypes.dfy(127,7)
    assume true;
    assume true;
    p#0 := #DatatypeTests.Peano.One(p#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/datatypes.dfy(128,7)
    assume true;
    assume true;
    q#0 := #DatatypeTests.Peano.One(q#0);
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/datatypes.dfy(129,5)
    assume $IsA#DatatypeTests.Peano(p#0) && $IsA#DatatypeTests.Peano(q#0);
    if (!DatatypeTests.Peano#Equal(p#0, q#0))
    {
        assume true;
        assume false;
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/datatypes.dfy(131,11)
    assume true;
    newtype$check#2 := LitInt(0);
    assert {:id "id13"} LitInt(0) <= newtype$check#2 && newtype$check#2 < 255;
    assume true;
    c#0 := Lit(#DatatypeTests.Multiple.ConstructorA(LitInt(0)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/datatypes.dfy(132,7)
    assume true;
    assert {:id "id15"} DatatypeTests.Multiple.ConstructorAB_q(c#0)
       || DatatypeTests.Multiple.ConstructorA_q(c#0);
    havoc dt_update_tmp#0#Z#0;
    assume {:id "id16"} let#0#0#0 == c#0;
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#0#0#0, Tclass.DatatypeTests.Multiple());
    assume {:id "id17"} dt_update_tmp#0#Z#0 == let#0#0#0;
    havoc dt_update#a#0#Z#0;
    newtype$check#3 := LitInt(2);
    assert {:id "id18"} LitInt(0) <= newtype$check#3 && newtype$check#3 < 255;
    assume {:id "id19"} let#1#0#0 == LitInt(2);
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#1#0#0, Tclass.DatatypeTests.u8());
    assume {:id "id20"} dt_update#a#0#Z#0 == let#1#0#0;
    if (DatatypeTests.Multiple.ConstructorA_q(dt_update_tmp#0#Z#0))
    {
    }
    else
    {
        assert {:id "id21"} DatatypeTests.Multiple.ConstructorB_q(dt_update_tmp#0#Z#0)
           || DatatypeTests.Multiple.ConstructorAB_q(dt_update_tmp#0#Z#0);
    }

    assume true;
    c#0 := (var dt_update_tmp#0#0 := c#0; 
      (var dt_update#a#0#0 := LitInt(2); 
        (if DatatypeTests.Multiple.ConstructorA_q(dt_update_tmp#0#0)
           then #DatatypeTests.Multiple.ConstructorA(dt_update#a#0#0)
           else #DatatypeTests.Multiple.ConstructorAB(dt_update#a#0#0, DatatypeTests.Multiple.b(dt_update_tmp#0#0)))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/datatypes.dfy(133,7)
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(c#0), Tclass.DatatypeTests.Multiple(), $Heap);
    newtype$check#4 := LitInt(1);
    assert {:id "id23"} LitInt(0) <= newtype$check#4 && newtype$check#4 < 255;
    ##other#0 := Lit(#DatatypeTests.Multiple.ConstructorA(LitInt(1)));
    // assume allocatedness for argument to function
    assume $IsAlloc(##other#0, Tclass.DatatypeTests.Multiple(), $Heap);
    assume DatatypeTests.Multiple.Gather#canCall(c#0, Lit(#DatatypeTests.Multiple.ConstructorA(LitInt(1))));
    assume DatatypeTests.Multiple.Gather#canCall(c#0, Lit(#DatatypeTests.Multiple.ConstructorA(LitInt(1))));
    c#0 := DatatypeTests.Multiple.Gather(c#0, Lit(#DatatypeTests.Multiple.ConstructorA(LitInt(1))));
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/datatypes.dfy(134,5)
    if (DatatypeTests.Multiple.ConstructorA_q(c#0))
    {
    }

    if (DatatypeTests.Multiple.ConstructorA_q(c#0)
       && !DatatypeTests.Multiple.ConstructorB_q(c#0))
    {
    }

    assume true;
    if (!(
      DatatypeTests.Multiple.ConstructorA_q(c#0)
       && !DatatypeTests.Multiple.ConstructorB_q(c#0)
       && !DatatypeTests.Multiple.ConstructorAB_q(c#0)))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/datatypes.dfy(135,5)
    assert {:id "id25"} DatatypeTests.Multiple.ConstructorA_q(c#0)
       || DatatypeTests.Multiple.ConstructorAB_q(c#0);
    newtype$check#5 := LitInt(2);
    assert {:id "id26"} LitInt(0) <= newtype$check#5 && newtype$check#5 < 255;
    assume true;
    if (DatatypeTests.Multiple.a(c#0) != LitInt(2))
    {
        assume true;
        assume false;
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/datatypes.dfy(136,7)
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(c#0), Tclass.DatatypeTests.Multiple(), $Heap);
    ##other#1 := Lit(#DatatypeTests.Multiple.ConstructorB(Lit(true)));
    // assume allocatedness for argument to function
    assume $IsAlloc(##other#1, Tclass.DatatypeTests.Multiple(), $Heap);
    assume DatatypeTests.Multiple.Gather#canCall(c#0, Lit(#DatatypeTests.Multiple.ConstructorB(Lit(true))));
    assume DatatypeTests.Multiple.Gather#canCall(c#0, Lit(#DatatypeTests.Multiple.ConstructorB(Lit(true))));
    c#0 := DatatypeTests.Multiple.Gather(c#0, Lit(#DatatypeTests.Multiple.ConstructorB(Lit(true))));
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/datatypes.dfy(137,5)
    if (DatatypeTests.Multiple.ConstructorAB_q(c#0))
    {
    }

    if (DatatypeTests.Multiple.ConstructorAB_q(c#0)
       && !DatatypeTests.Multiple.ConstructorA_q(c#0))
    {
    }

    assume true;
    if (!(
      DatatypeTests.Multiple.ConstructorAB_q(c#0)
       && !DatatypeTests.Multiple.ConstructorA_q(c#0)
       && !DatatypeTests.Multiple.ConstructorB_q(c#0)))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/datatypes.dfy(138,5)
    assert {:id "id28"} DatatypeTests.Multiple.ConstructorA_q(c#0)
       || DatatypeTests.Multiple.ConstructorAB_q(c#0);
    newtype$check#6 := LitInt(2);
    assert {:id "id29"} LitInt(0) <= newtype$check#6 && newtype$check#6 < 255;
    if (DatatypeTests.Multiple.a(c#0) == LitInt(2))
    {
        assert {:id "id30"} DatatypeTests.Multiple.ConstructorB_q(c#0)
           || DatatypeTests.Multiple.ConstructorAB_q(c#0);
    }

    assume true;
    if (!(DatatypeTests.Multiple.a(c#0) == LitInt(2) && DatatypeTests.Multiple.b(c#0)))
    {
        assume true;
        assume false;
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/datatypes.dfy(139,11)
    assume true;
    newtype$check#7 := LitInt(1);
    assert {:id "id31"} LitInt(0) <= newtype$check#7 && newtype$check#7 < 255;
    assume true;
    a#0 := Lit(#DatatypeTests.Struct.StructConstructor(LitInt(1), Lit(false)));
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/datatypes.dfy(140,5)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(a#0), Tclass.DatatypeTests.Struct(), $Heap);
    assume DatatypeTests.Struct.BTrue#canCall(a#0);
    assume DatatypeTests.Struct.StructConstructor_q(DatatypeTests.Struct.BTrue(a#0));
    newtype$check#8 := LitInt(1);
    assert {:id "id33"} LitInt(0) <= newtype$check#8 && newtype$check#8 < 255;
    assume $IsA#DatatypeTests.Struct(DatatypeTests.Struct.BTrue(a#0))
       && DatatypeTests.Struct.BTrue#canCall(a#0);
    if (!DatatypeTests.Struct#Equal(DatatypeTests.Struct.BTrue(a#0), 
      #DatatypeTests.Struct.StructConstructor(LitInt(1), Lit(true))))
    {
        assume true;
        assume false;
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/datatypes.dfy(142,12)
    assume true;
    newtype$check#9 := LitInt(0);
    assert {:id "id34"} LitInt(0) <= newtype$check#9 && newtype$check#9 < 255;
    assume true;
    c2#0 := Lit(#DatatypeTests.RcMultiple.RcConstructorA(LitInt(0)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/datatypes.dfy(143,8)
    assume true;
    assert {:id "id36"} DatatypeTests.RcMultiple.RcConstructorAB_q(c2#0)
       || DatatypeTests.RcMultiple.RcConstructorA_q(c2#0);
    havoc dt_update_tmp#1#Z#0;
    assume {:id "id37"} let#2#0#0 == c2#0;
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#2#0#0, Tclass.DatatypeTests.RcMultiple());
    assume {:id "id38"} dt_update_tmp#1#Z#0 == let#2#0#0;
    havoc dt_update#a#1#Z#0;
    newtype$check#10 := LitInt(2);
    assert {:id "id39"} LitInt(0) <= newtype$check#10 && newtype$check#10 < 255;
    assume {:id "id40"} let#3#0#0 == LitInt(2);
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#3#0#0, Tclass.DatatypeTests.u8());
    assume {:id "id41"} dt_update#a#1#Z#0 == let#3#0#0;
    if (DatatypeTests.RcMultiple.RcConstructorA_q(dt_update_tmp#1#Z#0))
    {
    }
    else
    {
        assert {:id "id42"} DatatypeTests.RcMultiple.RcConstructorB_q(dt_update_tmp#1#Z#0)
           || DatatypeTests.RcMultiple.RcConstructorAB_q(dt_update_tmp#1#Z#0);
    }

    assume true;
    c2#0 := (var dt_update_tmp#1#0 := c2#0; 
      (var dt_update#a#1#0 := LitInt(2); 
        (if DatatypeTests.RcMultiple.RcConstructorA_q(dt_update_tmp#1#0)
           then #DatatypeTests.RcMultiple.RcConstructorA(dt_update#a#1#0)
           else #DatatypeTests.RcMultiple.RcConstructorAB(dt_update#a#1#0, DatatypeTests.RcMultiple.b(dt_update_tmp#1#0)))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/datatypes.dfy(144,8)
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(c2#0), Tclass.DatatypeTests.RcMultiple(), $Heap);
    newtype$check#11 := LitInt(1);
    assert {:id "id44"} LitInt(0) <= newtype$check#11 && newtype$check#11 < 255;
    ##other#2 := Lit(#DatatypeTests.RcMultiple.RcConstructorA(LitInt(1)));
    // assume allocatedness for argument to function
    assume $IsAlloc(##other#2, Tclass.DatatypeTests.RcMultiple(), $Heap);
    assume DatatypeTests.RcMultiple.Gather#canCall(c2#0, Lit(#DatatypeTests.RcMultiple.RcConstructorA(LitInt(1))));
    assume DatatypeTests.RcMultiple.Gather#canCall(c2#0, Lit(#DatatypeTests.RcMultiple.RcConstructorA(LitInt(1))));
    c2#0 := DatatypeTests.RcMultiple.Gather(c2#0, Lit(#DatatypeTests.RcMultiple.RcConstructorA(LitInt(1))));
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/datatypes.dfy(145,5)
    if (DatatypeTests.RcMultiple.RcConstructorA_q(c2#0))
    {
    }

    if (DatatypeTests.RcMultiple.RcConstructorA_q(c2#0)
       && !DatatypeTests.RcMultiple.RcConstructorB_q(c2#0))
    {
    }

    assume true;
    if (!(
      DatatypeTests.RcMultiple.RcConstructorA_q(c2#0)
       && !DatatypeTests.RcMultiple.RcConstructorB_q(c2#0)
       && !DatatypeTests.RcMultiple.RcConstructorAB_q(c2#0)))
    {
        assume true;
        assume false;
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/datatypes.dfy(146,8)
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(c2#0), Tclass.DatatypeTests.RcMultiple(), $Heap);
    ##other#3 := Lit(#DatatypeTests.RcMultiple.RcConstructorB(Lit(true)));
    // assume allocatedness for argument to function
    assume $IsAlloc(##other#3, Tclass.DatatypeTests.RcMultiple(), $Heap);
    assume DatatypeTests.RcMultiple.Gather#canCall(c2#0, Lit(#DatatypeTests.RcMultiple.RcConstructorB(Lit(true))));
    assume DatatypeTests.RcMultiple.Gather#canCall(c2#0, Lit(#DatatypeTests.RcMultiple.RcConstructorB(Lit(true))));
    c2#0 := DatatypeTests.RcMultiple.Gather(c2#0, Lit(#DatatypeTests.RcMultiple.RcConstructorB(Lit(true))));
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/datatypes.dfy(147,5)
    if (DatatypeTests.RcMultiple.RcConstructorAB_q(c2#0))
    {
    }

    if (DatatypeTests.RcMultiple.RcConstructorAB_q(c2#0)
       && !DatatypeTests.RcMultiple.RcConstructorA_q(c2#0))
    {
    }

    assume true;
    if (!(
      DatatypeTests.RcMultiple.RcConstructorAB_q(c2#0)
       && !DatatypeTests.RcMultiple.RcConstructorA_q(c2#0)
       && !DatatypeTests.RcMultiple.RcConstructorB_q(c2#0)))
    {
        assume true;
        assume false;
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/datatypes.dfy(148,14)
    assume true;
    newtype$check#12 := LitInt(1);
    assert {:id "id47"} LitInt(0) <= newtype$check#12 && newtype$check#12 < 255;
    assume true;
    rc_a#0 := Lit(#DatatypeTests.RcStruct.RcStructConstructor(LitInt(1), Lit(false)));
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/datatypes.dfy(149,5)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(rc_a#0), Tclass.DatatypeTests.RcStruct(), $Heap);
    assume DatatypeTests.RcStruct.BTrue#canCall(rc_a#0);
    assume DatatypeTests.RcStruct.RcStructConstructor_q(DatatypeTests.RcStruct.BTrue(rc_a#0));
    newtype$check#13 := LitInt(1);
    assert {:id "id49"} LitInt(0) <= newtype$check#13 && newtype$check#13 < 255;
    assume $IsA#DatatypeTests.RcStruct(DatatypeTests.RcStruct.BTrue(rc_a#0))
       && DatatypeTests.RcStruct.BTrue#canCall(rc_a#0);
    if (!DatatypeTests.RcStruct#Equal(DatatypeTests.RcStruct.BTrue(rc_a#0), 
      #DatatypeTests.RcStruct.RcStructConstructor(LitInt(1), Lit(true))))
    {
        assume true;
        assume false;
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/datatypes.dfy(151,11)
    assume true;
    assume true;
    r#0 := Lit(#DatatypeTests.Recursive.Recursive(LitInt(0), Lit(#RustStdOption.Option.None())));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/datatypes.dfy(152,7)
    assume true;
    assume true;
    r#0 := #DatatypeTests.Recursive.Recursive(LitInt(1), #RustStdOption.Option.Some($Box(r#0)));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/datatypes.dfy(153,5)
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/datatypes.dfy(156,11)
    assume true;
    newtype$check#14 := LitInt(3);
    assert {:id "id52"} LitInt(0) <= newtype$check#14 && newtype$check#14 < 255;
    newtype$check#15 := LitInt(3);
    assert {:id "id53"} LitInt(0) <= newtype$check#15 && newtype$check#15 < 255;
    assume true;
    x#0 := Lit(#RustStdOption.Option.Some($Box(LitInt(3))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/datatypes.dfy(157,11)
    assume true;
    assert {:id "id55"} RustStdOption.Option.Some_q(x#0);
    assume true;
    u#0 := $Unbox(RustStdOption.Option.value(x#0)): int;
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/datatypes.dfy(158,5)
    newtype$check#16 := LitInt(3);
    assert {:id "id57"} LitInt(0) <= newtype$check#16 && newtype$check#16 < 255;
    assume true;
    if (u#0 != LitInt(3))
    {
        assume true;
        assume false;
    }

    assume true;
    havoc _mcc#0#0_0;
    if (x#0 == #RustStdOption.Option.Some($Box(_mcc#0#0_0)))
    {
        assume LitInt(0) <= _mcc#0#0_0 && _mcc#0#0_0 < 255;
        havoc i#0_0;
        assume LitInt(0) <= i#0_0 && i#0_0 < 255;
        assume {:id "id59"} let#0_0#0#0 == _mcc#0#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_0#0#0, Tclass.DatatypeTests.u8());
        assume {:id "id60"} i#0_0 == let#0_0#0#0;
        // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/datatypes.dfy(161,9)
        newtype$check#0_0 := LitInt(3);
        assert {:id "id61"} LitInt(0) <= newtype$check#0_0 && newtype$check#0_0 < 255;
        assume true;
        if (i#0_0 != LitInt(3))
        {
            assume true;
            assume false;
        }
    }
    else if (x#0 == #RustStdOption.Option.None())
    {
        assert {:id "id58"} false;
    }
    else
    {
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/datatypes.dfy(163,5)
    assert {:id "id62"} RustStdOption.Option.Some_q(x#0);
    newtype$check#17 := LitInt(3);
    assert {:id "id63"} LitInt(0) <= newtype$check#17 && newtype$check#17 < 255;
    assume true;
    if ($Unbox(RustStdOption.Option.value(x#0)): int != LitInt(3))
    {
        assume true;
        assume false;
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/datatypes.dfy(164,16)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    o##0 := x#0;
    call {:id "id64"} Call$$DatatypeTests.__default.PrintOption(o##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/datatypes.dfy(165,16)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    o##1 := Lit(#RustStdOption.Option.None());
    call {:id "id65"} Call$$DatatypeTests.__default.PrintOption(o##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/datatypes.dfy(166,5)
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/datatypes.dfy(167,24)
    assume true;
    assume true;
    no#0 := Lit(#RustStdOption.Option.None());
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/datatypes.dfy(168,5)
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/datatypes.dfy(170,24)
    assume true;
    assume true;
    homeMadeOption#0 := Lit(#RustStdCompare.Option.Some($Box(LitInt(3))));
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/datatypes.dfy(171,5)
    assume true;
    if (RustStdCompare.Option.Some_q(homeMadeOption#0))
    {
        push;
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/datatypes.dfy(172,7)
        assert {:id "id68"} RustStdCompare.Option.Some_q(homeMadeOption#0);
        assume true;
        assume true;
        pop;
    }
    else
    {
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/datatypes.dfy(174,20)
    assume true;
    assume true;
    homeMadeOption#0 := Lit(#RustStdCompare.Option.None());
}



procedure {:verboseName "DatatypeTests.u8 (well-formedness)"} CheckWellFormed$$DatatypeTests.u8(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DatatypeTests.u8 (well-formedness)"} CheckWellFormed$$DatatypeTests.u8(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype u8
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitInt(0) <= x#0)
        {
        }

        assume {:id "id70"} LitInt(0) <= x#0 && x#0 < 255;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id71"} {:subsumption 0} LitInt(0) <= LitInt(0);
        assert {:id "id72"} {:subsumption 0} Lit(0 < 255);
        assume false;
    }
}



// $Is axiom for newtype DatatypeTests.u8
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.DatatypeTests.u8()) } 
  $Is(x#0, Tclass.DatatypeTests.u8()) <==> LitInt(0) <= x#0 && x#0 < 255);

// $IsAlloc axiom for newtype DatatypeTests.u8
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.DatatypeTests.u8(), $h) } 
  $IsAlloc(x#0, Tclass.DatatypeTests.u8(), $h));

const unique class.DatatypeTests.u8: ClassName;

// Constructor function declaration
function #DatatypeTests.NoArg.OptionA() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#DatatypeTests.NoArg.OptionA()) == ##DatatypeTests.NoArg.OptionA;
// Constructor $Is
axiom $Is(#DatatypeTests.NoArg.OptionA(), Tclass.DatatypeTests.NoArg());
// Constructor literal
axiom #DatatypeTests.NoArg.OptionA() == Lit(#DatatypeTests.NoArg.OptionA());
}

const unique ##DatatypeTests.NoArg.OptionA: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#DatatypeTests.NoArg.OptionA()) == ##DatatypeTests.NoArg.OptionA;
}

function DatatypeTests.NoArg.OptionA_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DatatypeTests.NoArg.OptionA_q(d) } 
  DatatypeTests.NoArg.OptionA_q(d)
     <==> DatatypeCtorId(d) == ##DatatypeTests.NoArg.OptionA);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DatatypeTests.NoArg.OptionA_q(d) } 
  DatatypeTests.NoArg.OptionA_q(d) ==> d == #DatatypeTests.NoArg.OptionA());

// Constructor function declaration
function #DatatypeTests.NoArg.OptionB() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#DatatypeTests.NoArg.OptionB()) == ##DatatypeTests.NoArg.OptionB;
// Constructor $Is
axiom $Is(#DatatypeTests.NoArg.OptionB(), Tclass.DatatypeTests.NoArg());
// Constructor literal
axiom #DatatypeTests.NoArg.OptionB() == Lit(#DatatypeTests.NoArg.OptionB());
}

const unique ##DatatypeTests.NoArg.OptionB: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#DatatypeTests.NoArg.OptionB()) == ##DatatypeTests.NoArg.OptionB;
}

function DatatypeTests.NoArg.OptionB_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DatatypeTests.NoArg.OptionB_q(d) } 
  DatatypeTests.NoArg.OptionB_q(d)
     <==> DatatypeCtorId(d) == ##DatatypeTests.NoArg.OptionB);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DatatypeTests.NoArg.OptionB_q(d) } 
  DatatypeTests.NoArg.OptionB_q(d) ==> d == #DatatypeTests.NoArg.OptionB());

// Constructor function declaration
function #DatatypeTests.NoArg.OptionC() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#DatatypeTests.NoArg.OptionC()) == ##DatatypeTests.NoArg.OptionC;
// Constructor $Is
axiom $Is(#DatatypeTests.NoArg.OptionC(), Tclass.DatatypeTests.NoArg());
// Constructor literal
axiom #DatatypeTests.NoArg.OptionC() == Lit(#DatatypeTests.NoArg.OptionC());
}

const unique ##DatatypeTests.NoArg.OptionC: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#DatatypeTests.NoArg.OptionC()) == ##DatatypeTests.NoArg.OptionC;
}

function DatatypeTests.NoArg.OptionC_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DatatypeTests.NoArg.OptionC_q(d) } 
  DatatypeTests.NoArg.OptionC_q(d)
     <==> DatatypeCtorId(d) == ##DatatypeTests.NoArg.OptionC);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DatatypeTests.NoArg.OptionC_q(d) } 
  DatatypeTests.NoArg.OptionC_q(d) ==> d == #DatatypeTests.NoArg.OptionC());

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.DatatypeTests.NoArg(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.DatatypeTests.NoArg())
     ==> $IsAlloc(d, Tclass.DatatypeTests.NoArg(), $h));

// Depth-one case-split function
function $IsA#DatatypeTests.NoArg(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#DatatypeTests.NoArg(d) } 
  $IsA#DatatypeTests.NoArg(d)
     ==> DatatypeTests.NoArg.OptionA_q(d)
       || DatatypeTests.NoArg.OptionB_q(d)
       || DatatypeTests.NoArg.OptionC_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { DatatypeTests.NoArg.OptionC_q(d), $Is(d, Tclass.DatatypeTests.NoArg()) } 
    { DatatypeTests.NoArg.OptionB_q(d), $Is(d, Tclass.DatatypeTests.NoArg()) } 
    { DatatypeTests.NoArg.OptionA_q(d), $Is(d, Tclass.DatatypeTests.NoArg()) } 
  $Is(d, Tclass.DatatypeTests.NoArg())
     ==> DatatypeTests.NoArg.OptionA_q(d)
       || DatatypeTests.NoArg.OptionB_q(d)
       || DatatypeTests.NoArg.OptionC_q(d));

// Datatype extensional equality declaration
function DatatypeTests.NoArg#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #DatatypeTests.NoArg.OptionA
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DatatypeTests.NoArg#Equal(a, b), DatatypeTests.NoArg.OptionA_q(a) } 
    { DatatypeTests.NoArg#Equal(a, b), DatatypeTests.NoArg.OptionA_q(b) } 
  DatatypeTests.NoArg.OptionA_q(a) && DatatypeTests.NoArg.OptionA_q(b)
     ==> DatatypeTests.NoArg#Equal(a, b));

// Datatype extensional equality definition: #DatatypeTests.NoArg.OptionB
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DatatypeTests.NoArg#Equal(a, b), DatatypeTests.NoArg.OptionB_q(a) } 
    { DatatypeTests.NoArg#Equal(a, b), DatatypeTests.NoArg.OptionB_q(b) } 
  DatatypeTests.NoArg.OptionB_q(a) && DatatypeTests.NoArg.OptionB_q(b)
     ==> DatatypeTests.NoArg#Equal(a, b));

// Datatype extensional equality definition: #DatatypeTests.NoArg.OptionC
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DatatypeTests.NoArg#Equal(a, b), DatatypeTests.NoArg.OptionC_q(a) } 
    { DatatypeTests.NoArg#Equal(a, b), DatatypeTests.NoArg.OptionC_q(b) } 
  DatatypeTests.NoArg.OptionC_q(a) && DatatypeTests.NoArg.OptionC_q(b)
     ==> DatatypeTests.NoArg#Equal(a, b));

// Datatype extensionality axiom: DatatypeTests.NoArg
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DatatypeTests.NoArg#Equal(a, b) } 
  DatatypeTests.NoArg#Equal(a, b) <==> a == b);

const unique class.DatatypeTests.NoArg: ClassName;

// Constructor function declaration
function #DatatypeTests.AlmostOption.Nothing() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#DatatypeTests.AlmostOption.Nothing())
   == ##DatatypeTests.AlmostOption.Nothing;
// Constructor $Is
axiom $Is(#DatatypeTests.AlmostOption.Nothing(), Tclass.DatatypeTests.AlmostOption());
// Constructor literal
axiom #DatatypeTests.AlmostOption.Nothing()
   == Lit(#DatatypeTests.AlmostOption.Nothing());
}

const unique ##DatatypeTests.AlmostOption.Nothing: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#DatatypeTests.AlmostOption.Nothing())
   == ##DatatypeTests.AlmostOption.Nothing;
}

function DatatypeTests.AlmostOption.Nothing_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DatatypeTests.AlmostOption.Nothing_q(d) } 
  DatatypeTests.AlmostOption.Nothing_q(d)
     <==> DatatypeCtorId(d) == ##DatatypeTests.AlmostOption.Nothing);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DatatypeTests.AlmostOption.Nothing_q(d) } 
  DatatypeTests.AlmostOption.Nothing_q(d)
     ==> d == #DatatypeTests.AlmostOption.Nothing());

// Constructor function declaration
function #DatatypeTests.AlmostOption.ThereItIs(int) : DatatypeType;

const unique ##DatatypeTests.AlmostOption.ThereItIs: DtCtorId
uses {
// Constructor identifier
axiom (forall a#16#0#0: int :: 
  { #DatatypeTests.AlmostOption.ThereItIs(a#16#0#0) } 
  DatatypeCtorId(#DatatypeTests.AlmostOption.ThereItIs(a#16#0#0))
     == ##DatatypeTests.AlmostOption.ThereItIs);
}

function DatatypeTests.AlmostOption.ThereItIs_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DatatypeTests.AlmostOption.ThereItIs_q(d) } 
  DatatypeTests.AlmostOption.ThereItIs_q(d)
     <==> DatatypeCtorId(d) == ##DatatypeTests.AlmostOption.ThereItIs);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DatatypeTests.AlmostOption.ThereItIs_q(d) } 
  DatatypeTests.AlmostOption.ThereItIs_q(d)
     ==> (exists a#17#0#0: int :: d == #DatatypeTests.AlmostOption.ThereItIs(a#17#0#0)));

// Constructor $Is
axiom (forall a#18#0#0: int :: 
  { $Is(#DatatypeTests.AlmostOption.ThereItIs(a#18#0#0), 
      Tclass.DatatypeTests.AlmostOption()) } 
  $Is(#DatatypeTests.AlmostOption.ThereItIs(a#18#0#0), 
      Tclass.DatatypeTests.AlmostOption())
     <==> $Is(a#18#0#0, Tclass.DatatypeTests.u8()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(DatatypeTests.AlmostOption.u(d), Tclass.DatatypeTests.u8(), $h) } 
  $IsGoodHeap($h)
       && 
      DatatypeTests.AlmostOption.ThereItIs_q(d)
       && $IsAlloc(d, Tclass.DatatypeTests.AlmostOption(), $h)
     ==> $IsAlloc(DatatypeTests.AlmostOption.u(d), Tclass.DatatypeTests.u8(), $h));

// Constructor literal
axiom (forall a#19#0#0: int :: 
  { #DatatypeTests.AlmostOption.ThereItIs(LitInt(a#19#0#0)) } 
  #DatatypeTests.AlmostOption.ThereItIs(LitInt(a#19#0#0))
     == Lit(#DatatypeTests.AlmostOption.ThereItIs(a#19#0#0)));

function DatatypeTests.AlmostOption.u(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#20#0#0: int :: 
  { #DatatypeTests.AlmostOption.ThereItIs(a#20#0#0) } 
  DatatypeTests.AlmostOption.u(#DatatypeTests.AlmostOption.ThereItIs(a#20#0#0))
     == a#20#0#0);

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.DatatypeTests.AlmostOption(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.DatatypeTests.AlmostOption())
     ==> $IsAlloc(d, Tclass.DatatypeTests.AlmostOption(), $h));

// Depth-one case-split function
function $IsA#DatatypeTests.AlmostOption(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#DatatypeTests.AlmostOption(d) } 
  $IsA#DatatypeTests.AlmostOption(d)
     ==> DatatypeTests.AlmostOption.Nothing_q(d)
       || DatatypeTests.AlmostOption.ThereItIs_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { DatatypeTests.AlmostOption.ThereItIs_q(d), $Is(d, Tclass.DatatypeTests.AlmostOption()) } 
    { DatatypeTests.AlmostOption.Nothing_q(d), $Is(d, Tclass.DatatypeTests.AlmostOption()) } 
  $Is(d, Tclass.DatatypeTests.AlmostOption())
     ==> DatatypeTests.AlmostOption.Nothing_q(d)
       || DatatypeTests.AlmostOption.ThereItIs_q(d));

// Datatype extensional equality declaration
function DatatypeTests.AlmostOption#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #DatatypeTests.AlmostOption.Nothing
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DatatypeTests.AlmostOption#Equal(a, b), DatatypeTests.AlmostOption.Nothing_q(a) } 
    { DatatypeTests.AlmostOption#Equal(a, b), DatatypeTests.AlmostOption.Nothing_q(b) } 
  DatatypeTests.AlmostOption.Nothing_q(a)
       && DatatypeTests.AlmostOption.Nothing_q(b)
     ==> DatatypeTests.AlmostOption#Equal(a, b));

// Datatype extensional equality definition: #DatatypeTests.AlmostOption.ThereItIs
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DatatypeTests.AlmostOption#Equal(a, b), DatatypeTests.AlmostOption.ThereItIs_q(a) } 
    { DatatypeTests.AlmostOption#Equal(a, b), DatatypeTests.AlmostOption.ThereItIs_q(b) } 
  DatatypeTests.AlmostOption.ThereItIs_q(a)
       && DatatypeTests.AlmostOption.ThereItIs_q(b)
     ==> (DatatypeTests.AlmostOption#Equal(a, b)
       <==> DatatypeTests.AlmostOption.u(a) == DatatypeTests.AlmostOption.u(b)));

// Datatype extensionality axiom: DatatypeTests.AlmostOption
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DatatypeTests.AlmostOption#Equal(a, b) } 
  DatatypeTests.AlmostOption#Equal(a, b) <==> a == b);

const unique class.DatatypeTests.AlmostOption: ClassName;

// function declaration for DatatypeTests.AlmostOption.default
function DatatypeTests.AlmostOption.default() : DatatypeType
uses {
// consequence axiom for DatatypeTests.AlmostOption.default
axiom 2 <= $FunctionContextHeight
   ==> 
  DatatypeTests.AlmostOption.default#canCall() || 2 < $FunctionContextHeight
   ==> $Is(DatatypeTests.AlmostOption.default(), Tclass.DatatypeTests.AlmostOption());
// definition axiom for DatatypeTests.AlmostOption.default (revealed)
axiom {:id "id73"} 2 <= $FunctionContextHeight
   ==> 
  DatatypeTests.AlmostOption.default#canCall() || 2 < $FunctionContextHeight
   ==> DatatypeTests.AlmostOption.default()
     == Lit(#DatatypeTests.AlmostOption.ThereItIs(LitInt(0)));
// definition axiom for DatatypeTests.AlmostOption.default for all literals (revealed)
axiom {:id "id74"} 2 <= $FunctionContextHeight
   ==> 
  DatatypeTests.AlmostOption.default#canCall() || 2 < $FunctionContextHeight
   ==> DatatypeTests.AlmostOption.default()
     == Lit(#DatatypeTests.AlmostOption.ThereItIs(LitInt(0)));
}

function DatatypeTests.AlmostOption.default#canCall() : bool;

function DatatypeTests.AlmostOption.default#requires() : bool
uses {
// #requires axiom for DatatypeTests.AlmostOption.default
axiom DatatypeTests.AlmostOption.default#requires() == true;
}

procedure {:verboseName "DatatypeTests.AlmostOption.default (well-formedness)"} CheckWellformed$$DatatypeTests.AlmostOption.default();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DatatypeTests.AlmostOption.default (well-formedness)"} CheckWellformed$$DatatypeTests.AlmostOption.default()
{
  var $_ReadsFrame: [ref,Field]bool;
  var newtype$check#0: int;
  var newtype$check#1: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(DatatypeTests.AlmostOption.default(), Tclass.DatatypeTests.AlmostOption());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        newtype$check#0 := LitInt(0);
        assert {:id "id75"} LitInt(0) <= newtype$check#0 && newtype$check#0 < 255;
        newtype$check#1 := LitInt(0);
        assert {:id "id76"} LitInt(0) <= newtype$check#1 && newtype$check#1 < 255;
        assume {:id "id77"} DatatypeTests.AlmostOption.default()
           == Lit(#DatatypeTests.AlmostOption.ThereItIs(LitInt(0)));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(DatatypeTests.AlmostOption.default(), Tclass.DatatypeTests.AlmostOption());
        return;

        assume false;
    }
}



// Constructor function declaration
function #DatatypeTests.AlmostOptionWrapper.StillNothing() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#DatatypeTests.AlmostOptionWrapper.StillNothing())
   == ##DatatypeTests.AlmostOptionWrapper.StillNothing;
// Constructor $Is
axiom $Is(#DatatypeTests.AlmostOptionWrapper.StillNothing(), 
  Tclass.DatatypeTests.AlmostOptionWrapper());
// Constructor literal
axiom #DatatypeTests.AlmostOptionWrapper.StillNothing()
   == Lit(#DatatypeTests.AlmostOptionWrapper.StillNothing());
}

const unique ##DatatypeTests.AlmostOptionWrapper.StillNothing: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#DatatypeTests.AlmostOptionWrapper.StillNothing())
   == ##DatatypeTests.AlmostOptionWrapper.StillNothing;
}

function DatatypeTests.AlmostOptionWrapper.StillNothing_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DatatypeTests.AlmostOptionWrapper.StillNothing_q(d) } 
  DatatypeTests.AlmostOptionWrapper.StillNothing_q(d)
     <==> DatatypeCtorId(d) == ##DatatypeTests.AlmostOptionWrapper.StillNothing);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DatatypeTests.AlmostOptionWrapper.StillNothing_q(d) } 
  DatatypeTests.AlmostOptionWrapper.StillNothing_q(d)
     ==> d == #DatatypeTests.AlmostOptionWrapper.StillNothing());

function Tclass.DatatypeTests.AlmostOptionWrapper() : Ty
uses {
// Tclass.DatatypeTests.AlmostOptionWrapper Tag
axiom Tag(Tclass.DatatypeTests.AlmostOptionWrapper())
     == Tagclass.DatatypeTests.AlmostOptionWrapper
   && TagFamily(Tclass.DatatypeTests.AlmostOptionWrapper())
     == tytagFamily$AlmostOptionWrapper;
}

const unique Tagclass.DatatypeTests.AlmostOptionWrapper: TyTag;

// Box/unbox axiom for Tclass.DatatypeTests.AlmostOptionWrapper
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.DatatypeTests.AlmostOptionWrapper()) } 
  $IsBox(bx, Tclass.DatatypeTests.AlmostOptionWrapper())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.DatatypeTests.AlmostOptionWrapper()));

// Constructor function declaration
function #DatatypeTests.AlmostOptionWrapper.AlmostThere(DatatypeType) : DatatypeType;

const unique ##DatatypeTests.AlmostOptionWrapper.AlmostThere: DtCtorId
uses {
// Constructor identifier
axiom (forall a#4#0#0: DatatypeType :: 
  { #DatatypeTests.AlmostOptionWrapper.AlmostThere(a#4#0#0) } 
  DatatypeCtorId(#DatatypeTests.AlmostOptionWrapper.AlmostThere(a#4#0#0))
     == ##DatatypeTests.AlmostOptionWrapper.AlmostThere);
}

function DatatypeTests.AlmostOptionWrapper.AlmostThere_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DatatypeTests.AlmostOptionWrapper.AlmostThere_q(d) } 
  DatatypeTests.AlmostOptionWrapper.AlmostThere_q(d)
     <==> DatatypeCtorId(d) == ##DatatypeTests.AlmostOptionWrapper.AlmostThere);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DatatypeTests.AlmostOptionWrapper.AlmostThere_q(d) } 
  DatatypeTests.AlmostOptionWrapper.AlmostThere_q(d)
     ==> (exists a#5#0#0: DatatypeType :: 
      d == #DatatypeTests.AlmostOptionWrapper.AlmostThere(a#5#0#0)));

// Constructor $Is
axiom (forall a#6#0#0: DatatypeType :: 
  { $Is(#DatatypeTests.AlmostOptionWrapper.AlmostThere(a#6#0#0), 
      Tclass.DatatypeTests.AlmostOptionWrapper()) } 
  $Is(#DatatypeTests.AlmostOptionWrapper.AlmostThere(a#6#0#0), 
      Tclass.DatatypeTests.AlmostOptionWrapper())
     <==> $Is(a#6#0#0, Tclass.DatatypeTests.AlmostOption()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(DatatypeTests.AlmostOptionWrapper.u(d), Tclass.DatatypeTests.AlmostOption(), $h) } 
  $IsGoodHeap($h)
       && 
      DatatypeTests.AlmostOptionWrapper.AlmostThere_q(d)
       && $IsAlloc(d, Tclass.DatatypeTests.AlmostOptionWrapper(), $h)
     ==> $IsAlloc(DatatypeTests.AlmostOptionWrapper.u(d), Tclass.DatatypeTests.AlmostOption(), $h));

// Constructor literal
axiom (forall a#7#0#0: DatatypeType :: 
  { #DatatypeTests.AlmostOptionWrapper.AlmostThere(Lit(a#7#0#0)) } 
  #DatatypeTests.AlmostOptionWrapper.AlmostThere(Lit(a#7#0#0))
     == Lit(#DatatypeTests.AlmostOptionWrapper.AlmostThere(a#7#0#0)));

function DatatypeTests.AlmostOptionWrapper.u(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#8#0#0: DatatypeType :: 
  { #DatatypeTests.AlmostOptionWrapper.AlmostThere(a#8#0#0) } 
  DatatypeTests.AlmostOptionWrapper.u(#DatatypeTests.AlmostOptionWrapper.AlmostThere(a#8#0#0))
     == a#8#0#0);

// Inductive rank
axiom (forall a#9#0#0: DatatypeType :: 
  { #DatatypeTests.AlmostOptionWrapper.AlmostThere(a#9#0#0) } 
  DtRank(a#9#0#0)
     < DtRank(#DatatypeTests.AlmostOptionWrapper.AlmostThere(a#9#0#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.DatatypeTests.AlmostOptionWrapper(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.DatatypeTests.AlmostOptionWrapper())
     ==> $IsAlloc(d, Tclass.DatatypeTests.AlmostOptionWrapper(), $h));

// Depth-one case-split function
function $IsA#DatatypeTests.AlmostOptionWrapper(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#DatatypeTests.AlmostOptionWrapper(d) } 
  $IsA#DatatypeTests.AlmostOptionWrapper(d)
     ==> DatatypeTests.AlmostOptionWrapper.StillNothing_q(d)
       || DatatypeTests.AlmostOptionWrapper.AlmostThere_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { DatatypeTests.AlmostOptionWrapper.AlmostThere_q(d), $Is(d, Tclass.DatatypeTests.AlmostOptionWrapper()) } 
    { DatatypeTests.AlmostOptionWrapper.StillNothing_q(d), $Is(d, Tclass.DatatypeTests.AlmostOptionWrapper()) } 
  $Is(d, Tclass.DatatypeTests.AlmostOptionWrapper())
     ==> DatatypeTests.AlmostOptionWrapper.StillNothing_q(d)
       || DatatypeTests.AlmostOptionWrapper.AlmostThere_q(d));

// Datatype extensional equality declaration
function DatatypeTests.AlmostOptionWrapper#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #DatatypeTests.AlmostOptionWrapper.StillNothing
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DatatypeTests.AlmostOptionWrapper#Equal(a, b), DatatypeTests.AlmostOptionWrapper.StillNothing_q(a) } 
    { DatatypeTests.AlmostOptionWrapper#Equal(a, b), DatatypeTests.AlmostOptionWrapper.StillNothing_q(b) } 
  DatatypeTests.AlmostOptionWrapper.StillNothing_q(a)
       && DatatypeTests.AlmostOptionWrapper.StillNothing_q(b)
     ==> DatatypeTests.AlmostOptionWrapper#Equal(a, b));

// Datatype extensional equality definition: #DatatypeTests.AlmostOptionWrapper.AlmostThere
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DatatypeTests.AlmostOptionWrapper#Equal(a, b), DatatypeTests.AlmostOptionWrapper.AlmostThere_q(a) } 
    { DatatypeTests.AlmostOptionWrapper#Equal(a, b), DatatypeTests.AlmostOptionWrapper.AlmostThere_q(b) } 
  DatatypeTests.AlmostOptionWrapper.AlmostThere_q(a)
       && DatatypeTests.AlmostOptionWrapper.AlmostThere_q(b)
     ==> (DatatypeTests.AlmostOptionWrapper#Equal(a, b)
       <==> DatatypeTests.AlmostOption#Equal(DatatypeTests.AlmostOptionWrapper.u(a), DatatypeTests.AlmostOptionWrapper.u(b))));

// Datatype extensionality axiom: DatatypeTests.AlmostOptionWrapper
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DatatypeTests.AlmostOptionWrapper#Equal(a, b) } 
  DatatypeTests.AlmostOptionWrapper#Equal(a, b) <==> a == b);

const unique class.DatatypeTests.AlmostOptionWrapper: ClassName;

// Constructor function declaration
function #DatatypeTests.GenericOption.GenericNothing() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#DatatypeTests.GenericOption.GenericNothing())
   == ##DatatypeTests.GenericOption.GenericNothing;
// Constructor literal
axiom #DatatypeTests.GenericOption.GenericNothing()
   == Lit(#DatatypeTests.GenericOption.GenericNothing());
}

const unique ##DatatypeTests.GenericOption.GenericNothing: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#DatatypeTests.GenericOption.GenericNothing())
   == ##DatatypeTests.GenericOption.GenericNothing;
}

function DatatypeTests.GenericOption.GenericNothing_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DatatypeTests.GenericOption.GenericNothing_q(d) } 
  DatatypeTests.GenericOption.GenericNothing_q(d)
     <==> DatatypeCtorId(d) == ##DatatypeTests.GenericOption.GenericNothing);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DatatypeTests.GenericOption.GenericNothing_q(d) } 
  DatatypeTests.GenericOption.GenericNothing_q(d)
     ==> d == #DatatypeTests.GenericOption.GenericNothing());

function Tclass.DatatypeTests.GenericOption(Ty) : Ty;

const unique Tagclass.DatatypeTests.GenericOption: TyTag;

// Tclass.DatatypeTests.GenericOption Tag
axiom (forall DatatypeTests.GenericOption$T: Ty :: 
  { Tclass.DatatypeTests.GenericOption(DatatypeTests.GenericOption$T) } 
  Tag(Tclass.DatatypeTests.GenericOption(DatatypeTests.GenericOption$T))
       == Tagclass.DatatypeTests.GenericOption
     && TagFamily(Tclass.DatatypeTests.GenericOption(DatatypeTests.GenericOption$T))
       == tytagFamily$GenericOption);

function Tclass.DatatypeTests.GenericOption_0(Ty) : Ty;

// Tclass.DatatypeTests.GenericOption injectivity 0
axiom (forall DatatypeTests.GenericOption$T: Ty :: 
  { Tclass.DatatypeTests.GenericOption(DatatypeTests.GenericOption$T) } 
  Tclass.DatatypeTests.GenericOption_0(Tclass.DatatypeTests.GenericOption(DatatypeTests.GenericOption$T))
     == DatatypeTests.GenericOption$T);

// Box/unbox axiom for Tclass.DatatypeTests.GenericOption
axiom (forall DatatypeTests.GenericOption$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.DatatypeTests.GenericOption(DatatypeTests.GenericOption$T)) } 
  $IsBox(bx, Tclass.DatatypeTests.GenericOption(DatatypeTests.GenericOption$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass.DatatypeTests.GenericOption(DatatypeTests.GenericOption$T)));

// Constructor $Is
axiom (forall DatatypeTests.GenericOption$T: Ty :: 
  { $Is(#DatatypeTests.GenericOption.GenericNothing(), 
      Tclass.DatatypeTests.GenericOption(DatatypeTests.GenericOption$T)) } 
  $Is(#DatatypeTests.GenericOption.GenericNothing(), 
    Tclass.DatatypeTests.GenericOption(DatatypeTests.GenericOption$T)));

// Constructor $IsAlloc
axiom (forall DatatypeTests.GenericOption$T: Ty, $h: Heap :: 
  { $IsAlloc(#DatatypeTests.GenericOption.GenericNothing(), 
      Tclass.DatatypeTests.GenericOption(DatatypeTests.GenericOption$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#DatatypeTests.GenericOption.GenericNothing(), 
      Tclass.DatatypeTests.GenericOption(DatatypeTests.GenericOption$T), 
      $h));

// Constructor function declaration
function #DatatypeTests.GenericOption.GenericSome(Box) : DatatypeType;

const unique ##DatatypeTests.GenericOption.GenericSome: DtCtorId
uses {
// Constructor identifier
axiom (forall a#14#0#0: Box :: 
  { #DatatypeTests.GenericOption.GenericSome(a#14#0#0) } 
  DatatypeCtorId(#DatatypeTests.GenericOption.GenericSome(a#14#0#0))
     == ##DatatypeTests.GenericOption.GenericSome);
}

function DatatypeTests.GenericOption.GenericSome_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DatatypeTests.GenericOption.GenericSome_q(d) } 
  DatatypeTests.GenericOption.GenericSome_q(d)
     <==> DatatypeCtorId(d) == ##DatatypeTests.GenericOption.GenericSome);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DatatypeTests.GenericOption.GenericSome_q(d) } 
  DatatypeTests.GenericOption.GenericSome_q(d)
     ==> (exists a#15#0#0: Box :: 
      d == #DatatypeTests.GenericOption.GenericSome(a#15#0#0)));

// Constructor $Is
axiom (forall DatatypeTests.GenericOption$T: Ty, a#16#0#0: Box :: 
  { $Is(#DatatypeTests.GenericOption.GenericSome(a#16#0#0), 
      Tclass.DatatypeTests.GenericOption(DatatypeTests.GenericOption$T)) } 
  $Is(#DatatypeTests.GenericOption.GenericSome(a#16#0#0), 
      Tclass.DatatypeTests.GenericOption(DatatypeTests.GenericOption$T))
     <==> $IsBox(a#16#0#0, DatatypeTests.GenericOption$T));

// Constructor $IsAlloc
axiom (forall DatatypeTests.GenericOption$T: Ty, a#16#0#0: Box, $h: Heap :: 
  { $IsAlloc(#DatatypeTests.GenericOption.GenericSome(a#16#0#0), 
      Tclass.DatatypeTests.GenericOption(DatatypeTests.GenericOption$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#DatatypeTests.GenericOption.GenericSome(a#16#0#0), 
        Tclass.DatatypeTests.GenericOption(DatatypeTests.GenericOption$T), 
        $h)
       <==> $IsAllocBox(a#16#0#0, DatatypeTests.GenericOption$T, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, DatatypeTests.GenericOption$T: Ty, $h: Heap :: 
  { $IsAllocBox(DatatypeTests.GenericOption.value(d), DatatypeTests.GenericOption$T, $h) } 
  $IsGoodHeap($h)
       && 
      DatatypeTests.GenericOption.GenericSome_q(d)
       && $IsAlloc(d, Tclass.DatatypeTests.GenericOption(DatatypeTests.GenericOption$T), $h)
     ==> $IsAllocBox(DatatypeTests.GenericOption.value(d), DatatypeTests.GenericOption$T, $h));

// Constructor literal
axiom (forall a#17#0#0: Box :: 
  { #DatatypeTests.GenericOption.GenericSome(Lit(a#17#0#0)) } 
  #DatatypeTests.GenericOption.GenericSome(Lit(a#17#0#0))
     == Lit(#DatatypeTests.GenericOption.GenericSome(a#17#0#0)));

function DatatypeTests.GenericOption.value(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#18#0#0: Box :: 
  { #DatatypeTests.GenericOption.GenericSome(a#18#0#0) } 
  DatatypeTests.GenericOption.value(#DatatypeTests.GenericOption.GenericSome(a#18#0#0))
     == a#18#0#0);

// Inductive rank
axiom (forall a#19#0#0: Box :: 
  { #DatatypeTests.GenericOption.GenericSome(a#19#0#0) } 
  BoxRank(a#19#0#0) < DtRank(#DatatypeTests.GenericOption.GenericSome(a#19#0#0)));

// Depth-one case-split function
function $IsA#DatatypeTests.GenericOption(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#DatatypeTests.GenericOption(d) } 
  $IsA#DatatypeTests.GenericOption(d)
     ==> DatatypeTests.GenericOption.GenericNothing_q(d)
       || DatatypeTests.GenericOption.GenericSome_q(d));

// Questionmark data type disjunctivity
axiom (forall DatatypeTests.GenericOption$T: Ty, d: DatatypeType :: 
  { DatatypeTests.GenericOption.GenericSome_q(d), $Is(d, Tclass.DatatypeTests.GenericOption(DatatypeTests.GenericOption$T)) } 
    { DatatypeTests.GenericOption.GenericNothing_q(d), $Is(d, Tclass.DatatypeTests.GenericOption(DatatypeTests.GenericOption$T)) } 
  $Is(d, Tclass.DatatypeTests.GenericOption(DatatypeTests.GenericOption$T))
     ==> DatatypeTests.GenericOption.GenericNothing_q(d)
       || DatatypeTests.GenericOption.GenericSome_q(d));

// Datatype extensional equality declaration
function DatatypeTests.GenericOption#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #DatatypeTests.GenericOption.GenericNothing
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DatatypeTests.GenericOption#Equal(a, b), DatatypeTests.GenericOption.GenericNothing_q(a) } 
    { DatatypeTests.GenericOption#Equal(a, b), DatatypeTests.GenericOption.GenericNothing_q(b) } 
  DatatypeTests.GenericOption.GenericNothing_q(a)
       && DatatypeTests.GenericOption.GenericNothing_q(b)
     ==> DatatypeTests.GenericOption#Equal(a, b));

// Datatype extensional equality definition: #DatatypeTests.GenericOption.GenericSome
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DatatypeTests.GenericOption#Equal(a, b), DatatypeTests.GenericOption.GenericSome_q(a) } 
    { DatatypeTests.GenericOption#Equal(a, b), DatatypeTests.GenericOption.GenericSome_q(b) } 
  DatatypeTests.GenericOption.GenericSome_q(a)
       && DatatypeTests.GenericOption.GenericSome_q(b)
     ==> (DatatypeTests.GenericOption#Equal(a, b)
       <==> DatatypeTests.GenericOption.value(a) == DatatypeTests.GenericOption.value(b)));

// Datatype extensionality axiom: DatatypeTests.GenericOption
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DatatypeTests.GenericOption#Equal(a, b) } 
  DatatypeTests.GenericOption#Equal(a, b) <==> a == b);

const unique class.DatatypeTests.GenericOption: ClassName;

// Constructor function declaration
function #DatatypeTests.Peano.Zero() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#DatatypeTests.Peano.Zero()) == ##DatatypeTests.Peano.Zero;
// Constructor $Is
axiom $Is(#DatatypeTests.Peano.Zero(), Tclass.DatatypeTests.Peano());
// Constructor literal
axiom #DatatypeTests.Peano.Zero() == Lit(#DatatypeTests.Peano.Zero());
}

const unique ##DatatypeTests.Peano.Zero: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#DatatypeTests.Peano.Zero()) == ##DatatypeTests.Peano.Zero;
}

function DatatypeTests.Peano.Zero_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DatatypeTests.Peano.Zero_q(d) } 
  DatatypeTests.Peano.Zero_q(d)
     <==> DatatypeCtorId(d) == ##DatatypeTests.Peano.Zero);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DatatypeTests.Peano.Zero_q(d) } 
  DatatypeTests.Peano.Zero_q(d) ==> d == #DatatypeTests.Peano.Zero());

// Constructor function declaration
function #DatatypeTests.Peano.One(DatatypeType) : DatatypeType;

const unique ##DatatypeTests.Peano.One: DtCtorId
uses {
// Constructor identifier
axiom (forall a#24#0#0: DatatypeType :: 
  { #DatatypeTests.Peano.One(a#24#0#0) } 
  DatatypeCtorId(#DatatypeTests.Peano.One(a#24#0#0)) == ##DatatypeTests.Peano.One);
}

function DatatypeTests.Peano.One_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DatatypeTests.Peano.One_q(d) } 
  DatatypeTests.Peano.One_q(d) <==> DatatypeCtorId(d) == ##DatatypeTests.Peano.One);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DatatypeTests.Peano.One_q(d) } 
  DatatypeTests.Peano.One_q(d)
     ==> (exists a#25#0#0: DatatypeType :: d == #DatatypeTests.Peano.One(a#25#0#0)));

// Constructor $Is
axiom (forall a#26#0#0: DatatypeType :: 
  { $Is(#DatatypeTests.Peano.One(a#26#0#0), Tclass.DatatypeTests.Peano()) } 
  $Is(#DatatypeTests.Peano.One(a#26#0#0), Tclass.DatatypeTests.Peano())
     <==> $Is(a#26#0#0, Tclass.DatatypeTests.Peano()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(DatatypeTests.Peano.p(d), Tclass.DatatypeTests.Peano(), $h) } 
  $IsGoodHeap($h)
       && 
      DatatypeTests.Peano.One_q(d)
       && $IsAlloc(d, Tclass.DatatypeTests.Peano(), $h)
     ==> $IsAlloc(DatatypeTests.Peano.p(d), Tclass.DatatypeTests.Peano(), $h));

// Constructor literal
axiom (forall a#27#0#0: DatatypeType :: 
  { #DatatypeTests.Peano.One(Lit(a#27#0#0)) } 
  #DatatypeTests.Peano.One(Lit(a#27#0#0))
     == Lit(#DatatypeTests.Peano.One(a#27#0#0)));

function DatatypeTests.Peano.p(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#28#0#0: DatatypeType :: 
  { #DatatypeTests.Peano.One(a#28#0#0) } 
  DatatypeTests.Peano.p(#DatatypeTests.Peano.One(a#28#0#0)) == a#28#0#0);

// Inductive rank
axiom (forall a#29#0#0: DatatypeType :: 
  { #DatatypeTests.Peano.One(a#29#0#0) } 
  DtRank(a#29#0#0) < DtRank(#DatatypeTests.Peano.One(a#29#0#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.DatatypeTests.Peano(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.DatatypeTests.Peano())
     ==> $IsAlloc(d, Tclass.DatatypeTests.Peano(), $h));

// Depth-one case-split function
function $IsA#DatatypeTests.Peano(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#DatatypeTests.Peano(d) } 
  $IsA#DatatypeTests.Peano(d)
     ==> DatatypeTests.Peano.Zero_q(d) || DatatypeTests.Peano.One_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { DatatypeTests.Peano.One_q(d), $Is(d, Tclass.DatatypeTests.Peano()) } 
    { DatatypeTests.Peano.Zero_q(d), $Is(d, Tclass.DatatypeTests.Peano()) } 
  $Is(d, Tclass.DatatypeTests.Peano())
     ==> DatatypeTests.Peano.Zero_q(d) || DatatypeTests.Peano.One_q(d));

// Datatype extensional equality declaration
function DatatypeTests.Peano#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #DatatypeTests.Peano.Zero
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DatatypeTests.Peano#Equal(a, b), DatatypeTests.Peano.Zero_q(a) } 
    { DatatypeTests.Peano#Equal(a, b), DatatypeTests.Peano.Zero_q(b) } 
  DatatypeTests.Peano.Zero_q(a) && DatatypeTests.Peano.Zero_q(b)
     ==> DatatypeTests.Peano#Equal(a, b));

// Datatype extensional equality definition: #DatatypeTests.Peano.One
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DatatypeTests.Peano#Equal(a, b), DatatypeTests.Peano.One_q(a) } 
    { DatatypeTests.Peano#Equal(a, b), DatatypeTests.Peano.One_q(b) } 
  DatatypeTests.Peano.One_q(a) && DatatypeTests.Peano.One_q(b)
     ==> (DatatypeTests.Peano#Equal(a, b)
       <==> DatatypeTests.Peano#Equal(DatatypeTests.Peano.p(a), DatatypeTests.Peano.p(b))));

// Datatype extensionality axiom: DatatypeTests.Peano
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DatatypeTests.Peano#Equal(a, b) } 
  DatatypeTests.Peano#Equal(a, b) <==> a == b);

const unique class.DatatypeTests.Peano: ClassName;

// Constructor function declaration
function #DatatypeTests.Struct.StructConstructor(int, bool) : DatatypeType;

const unique ##DatatypeTests.Struct.StructConstructor: DtCtorId
uses {
// Constructor identifier
axiom (forall a#30#0#0: int, a#30#1#0: bool :: 
  { #DatatypeTests.Struct.StructConstructor(a#30#0#0, a#30#1#0) } 
  DatatypeCtorId(#DatatypeTests.Struct.StructConstructor(a#30#0#0, a#30#1#0))
     == ##DatatypeTests.Struct.StructConstructor);
}

function DatatypeTests.Struct.StructConstructor_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DatatypeTests.Struct.StructConstructor_q(d) } 
  DatatypeTests.Struct.StructConstructor_q(d)
     <==> DatatypeCtorId(d) == ##DatatypeTests.Struct.StructConstructor);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DatatypeTests.Struct.StructConstructor_q(d) } 
  DatatypeTests.Struct.StructConstructor_q(d)
     ==> (exists a#31#0#0: int, a#31#1#0: bool :: 
      d == #DatatypeTests.Struct.StructConstructor(a#31#0#0, a#31#1#0)));

// Constructor $Is
axiom (forall a#32#0#0: int, a#32#1#0: bool :: 
  { $Is(#DatatypeTests.Struct.StructConstructor(a#32#0#0, a#32#1#0), 
      Tclass.DatatypeTests.Struct()) } 
  $Is(#DatatypeTests.Struct.StructConstructor(a#32#0#0, a#32#1#0), 
      Tclass.DatatypeTests.Struct())
     <==> $Is(a#32#0#0, Tclass.DatatypeTests.u8()) && $Is(a#32#1#0, TBool));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(DatatypeTests.Struct.a(d), Tclass.DatatypeTests.u8(), $h) } 
  $IsGoodHeap($h)
       && 
      DatatypeTests.Struct.StructConstructor_q(d)
       && $IsAlloc(d, Tclass.DatatypeTests.Struct(), $h)
     ==> $IsAlloc(DatatypeTests.Struct.a(d), Tclass.DatatypeTests.u8(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(DatatypeTests.Struct.b(d), TBool, $h) } 
  $IsGoodHeap($h)
       && 
      DatatypeTests.Struct.StructConstructor_q(d)
       && $IsAlloc(d, Tclass.DatatypeTests.Struct(), $h)
     ==> $IsAlloc(DatatypeTests.Struct.b(d), TBool, $h));

// Constructor literal
axiom (forall a#33#0#0: int, a#33#1#0: bool :: 
  { #DatatypeTests.Struct.StructConstructor(LitInt(a#33#0#0), Lit(a#33#1#0)) } 
  #DatatypeTests.Struct.StructConstructor(LitInt(a#33#0#0), Lit(a#33#1#0))
     == Lit(#DatatypeTests.Struct.StructConstructor(a#33#0#0, a#33#1#0)));

function DatatypeTests.Struct.a(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#34#0#0: int, a#34#1#0: bool :: 
  { #DatatypeTests.Struct.StructConstructor(a#34#0#0, a#34#1#0) } 
  DatatypeTests.Struct.a(#DatatypeTests.Struct.StructConstructor(a#34#0#0, a#34#1#0))
     == a#34#0#0);

function DatatypeTests.Struct.b(DatatypeType) : bool;

// Constructor injectivity
axiom (forall a#35#0#0: int, a#35#1#0: bool :: 
  { #DatatypeTests.Struct.StructConstructor(a#35#0#0, a#35#1#0) } 
  DatatypeTests.Struct.b(#DatatypeTests.Struct.StructConstructor(a#35#0#0, a#35#1#0))
     == a#35#1#0);

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.DatatypeTests.Struct(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.DatatypeTests.Struct())
     ==> $IsAlloc(d, Tclass.DatatypeTests.Struct(), $h));

// Depth-one case-split function
function $IsA#DatatypeTests.Struct(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#DatatypeTests.Struct(d) } 
  $IsA#DatatypeTests.Struct(d) ==> DatatypeTests.Struct.StructConstructor_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { DatatypeTests.Struct.StructConstructor_q(d), $Is(d, Tclass.DatatypeTests.Struct()) } 
  $Is(d, Tclass.DatatypeTests.Struct())
     ==> DatatypeTests.Struct.StructConstructor_q(d));

// Datatype extensional equality declaration
function DatatypeTests.Struct#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #DatatypeTests.Struct.StructConstructor
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DatatypeTests.Struct#Equal(a, b) } 
  DatatypeTests.Struct#Equal(a, b)
     <==> DatatypeTests.Struct.a(a) == DatatypeTests.Struct.a(b)
       && DatatypeTests.Struct.b(a) == DatatypeTests.Struct.b(b));

// Datatype extensionality axiom: DatatypeTests.Struct
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DatatypeTests.Struct#Equal(a, b) } 
  DatatypeTests.Struct#Equal(a, b) <==> a == b);

const unique class.DatatypeTests.Struct: ClassName;

// function declaration for DatatypeTests.Struct.BTrue
function DatatypeTests.Struct.BTrue(this: DatatypeType) : DatatypeType
uses {
// consequence axiom for DatatypeTests.Struct.BTrue
axiom 2 <= $FunctionContextHeight
   ==> (forall this: DatatypeType :: 
    { DatatypeTests.Struct.BTrue(this) } 
    DatatypeTests.Struct.BTrue#canCall(this)
         || (2 < $FunctionContextHeight && $Is(this, Tclass.DatatypeTests.Struct()))
       ==> $Is(DatatypeTests.Struct.BTrue(this), Tclass.DatatypeTests.Struct()));
// definition axiom for DatatypeTests.Struct.BTrue (revealed)
axiom {:id "id78"} 2 <= $FunctionContextHeight
   ==> (forall this: DatatypeType :: 
    { DatatypeTests.Struct.BTrue(this) } 
    DatatypeTests.Struct.BTrue#canCall(this)
         || (2 < $FunctionContextHeight && $Is(this, Tclass.DatatypeTests.Struct()))
       ==> DatatypeTests.Struct.StructConstructor_q(this)
         && (!DatatypeTests.Struct.b(this)
           ==> (var dt_update_tmp#0#0 := this; 
            DatatypeTests.Struct.StructConstructor_q(dt_update_tmp#0#0)))
         && DatatypeTests.Struct.BTrue(this)
           == (if DatatypeTests.Struct.b(this)
             then this
             else (var dt_update_tmp#0#0 := this; 
              (var dt_update#b#0#0 := Lit(true); 
                #DatatypeTests.Struct.StructConstructor(DatatypeTests.Struct.a(dt_update_tmp#0#0), dt_update#b#0#0)))));
// definition axiom for DatatypeTests.Struct.BTrue for all literals (revealed)
axiom {:id "id79"} 2 <= $FunctionContextHeight
   ==> (forall this: DatatypeType :: 
    {:weight 3} { DatatypeTests.Struct.BTrue(Lit(this)) } 
    DatatypeTests.Struct.BTrue#canCall(Lit(this))
         || (2 < $FunctionContextHeight && $Is(this, Tclass.DatatypeTests.Struct()))
       ==> DatatypeTests.Struct.StructConstructor_q(Lit(this))
         && (!Lit(DatatypeTests.Struct.b(Lit(this)))
           ==> (var dt_update_tmp#0#1 := Lit(this); 
            DatatypeTests.Struct.StructConstructor_q(dt_update_tmp#0#1)))
         && DatatypeTests.Struct.BTrue(Lit(this))
           == (if DatatypeTests.Struct.b(Lit(this))
             then this
             else (var dt_update_tmp#0#1 := Lit(this); 
              (var dt_update#b#0#1 := Lit(true); 
                Lit(#DatatypeTests.Struct.StructConstructor(LitInt(DatatypeTests.Struct.a(dt_update_tmp#0#1)), dt_update#b#0#1))))));
}

function DatatypeTests.Struct.BTrue#canCall(this: DatatypeType) : bool;

function DatatypeTests.Struct.BTrue#requires(DatatypeType) : bool;

// #requires axiom for DatatypeTests.Struct.BTrue
axiom (forall this: DatatypeType :: 
  { DatatypeTests.Struct.BTrue#requires(this) } 
  $Is(this, Tclass.DatatypeTests.Struct())
     ==> DatatypeTests.Struct.BTrue#requires(this) == true);

procedure {:verboseName "DatatypeTests.Struct.BTrue (well-formedness)"} CheckWellformed$$DatatypeTests.Struct.BTrue(this: DatatypeType
       where $Is(this, Tclass.DatatypeTests.Struct())
         && $IsAlloc(this, Tclass.DatatypeTests.Struct(), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



// Constructor function declaration
function #DatatypeTests.Multiple.ConstructorA(int) : DatatypeType;

const unique ##DatatypeTests.Multiple.ConstructorA: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: int :: 
  { #DatatypeTests.Multiple.ConstructorA(a#0#0#0) } 
  DatatypeCtorId(#DatatypeTests.Multiple.ConstructorA(a#0#0#0))
     == ##DatatypeTests.Multiple.ConstructorA);
}

function DatatypeTests.Multiple.ConstructorA_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DatatypeTests.Multiple.ConstructorA_q(d) } 
  DatatypeTests.Multiple.ConstructorA_q(d)
     <==> DatatypeCtorId(d) == ##DatatypeTests.Multiple.ConstructorA);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DatatypeTests.Multiple.ConstructorA_q(d) } 
  DatatypeTests.Multiple.ConstructorA_q(d)
     ==> (exists a#1#0#0: int :: d == #DatatypeTests.Multiple.ConstructorA(a#1#0#0)));

// Constructor $Is
axiom (forall a#2#0#0: int :: 
  { $Is(#DatatypeTests.Multiple.ConstructorA(a#2#0#0), Tclass.DatatypeTests.Multiple()) } 
  $Is(#DatatypeTests.Multiple.ConstructorA(a#2#0#0), Tclass.DatatypeTests.Multiple())
     <==> $Is(a#2#0#0, Tclass.DatatypeTests.u8()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(DatatypeTests.Multiple.a(d), Tclass.DatatypeTests.u8(), $h) } 
  $IsGoodHeap($h)
       && 
      DatatypeTests.Multiple.ConstructorA_q(d)
       && $IsAlloc(d, Tclass.DatatypeTests.Multiple(), $h)
     ==> $IsAlloc(DatatypeTests.Multiple.a(d), Tclass.DatatypeTests.u8(), $h));

// Constructor literal
axiom (forall a#3#0#0: int :: 
  { #DatatypeTests.Multiple.ConstructorA(LitInt(a#3#0#0)) } 
  #DatatypeTests.Multiple.ConstructorA(LitInt(a#3#0#0))
     == Lit(#DatatypeTests.Multiple.ConstructorA(a#3#0#0)));

function DatatypeTests.Multiple.a(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#4#0#0: int :: 
  { #DatatypeTests.Multiple.ConstructorA(a#4#0#0) } 
  DatatypeTests.Multiple.a(#DatatypeTests.Multiple.ConstructorA(a#4#0#0))
     == a#4#0#0);

// Constructor function declaration
function #DatatypeTests.Multiple.ConstructorB(bool) : DatatypeType;

const unique ##DatatypeTests.Multiple.ConstructorB: DtCtorId
uses {
// Constructor identifier
axiom (forall a#5#0#0: bool :: 
  { #DatatypeTests.Multiple.ConstructorB(a#5#0#0) } 
  DatatypeCtorId(#DatatypeTests.Multiple.ConstructorB(a#5#0#0))
     == ##DatatypeTests.Multiple.ConstructorB);
}

function DatatypeTests.Multiple.ConstructorB_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DatatypeTests.Multiple.ConstructorB_q(d) } 
  DatatypeTests.Multiple.ConstructorB_q(d)
     <==> DatatypeCtorId(d) == ##DatatypeTests.Multiple.ConstructorB);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DatatypeTests.Multiple.ConstructorB_q(d) } 
  DatatypeTests.Multiple.ConstructorB_q(d)
     ==> (exists a#6#0#0: bool :: d == #DatatypeTests.Multiple.ConstructorB(a#6#0#0)));

// Constructor $Is
axiom (forall a#7#0#0: bool :: 
  { $Is(#DatatypeTests.Multiple.ConstructorB(a#7#0#0), Tclass.DatatypeTests.Multiple()) } 
  $Is(#DatatypeTests.Multiple.ConstructorB(a#7#0#0), Tclass.DatatypeTests.Multiple())
     <==> $Is(a#7#0#0, TBool));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(DatatypeTests.Multiple.b(d), TBool, $h) } 
  $IsGoodHeap($h)
       && 
      DatatypeTests.Multiple.ConstructorB_q(d)
       && $IsAlloc(d, Tclass.DatatypeTests.Multiple(), $h)
     ==> $IsAlloc(DatatypeTests.Multiple.b(d), TBool, $h));

// Constructor literal
axiom (forall a#8#0#0: bool :: 
  { #DatatypeTests.Multiple.ConstructorB(Lit(a#8#0#0)) } 
  #DatatypeTests.Multiple.ConstructorB(Lit(a#8#0#0))
     == Lit(#DatatypeTests.Multiple.ConstructorB(a#8#0#0)));

function DatatypeTests.Multiple.b(DatatypeType) : bool;

// Constructor injectivity
axiom (forall a#9#0#0: bool :: 
  { #DatatypeTests.Multiple.ConstructorB(a#9#0#0) } 
  DatatypeTests.Multiple.b(#DatatypeTests.Multiple.ConstructorB(a#9#0#0))
     == a#9#0#0);

// Constructor function declaration
function #DatatypeTests.Multiple.ConstructorAB(int, bool) : DatatypeType;

const unique ##DatatypeTests.Multiple.ConstructorAB: DtCtorId
uses {
// Constructor identifier
axiom (forall a#10#0#0: int, a#10#1#0: bool :: 
  { #DatatypeTests.Multiple.ConstructorAB(a#10#0#0, a#10#1#0) } 
  DatatypeCtorId(#DatatypeTests.Multiple.ConstructorAB(a#10#0#0, a#10#1#0))
     == ##DatatypeTests.Multiple.ConstructorAB);
}

function DatatypeTests.Multiple.ConstructorAB_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DatatypeTests.Multiple.ConstructorAB_q(d) } 
  DatatypeTests.Multiple.ConstructorAB_q(d)
     <==> DatatypeCtorId(d) == ##DatatypeTests.Multiple.ConstructorAB);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DatatypeTests.Multiple.ConstructorAB_q(d) } 
  DatatypeTests.Multiple.ConstructorAB_q(d)
     ==> (exists a#11#0#0: int, a#11#1#0: bool :: 
      d == #DatatypeTests.Multiple.ConstructorAB(a#11#0#0, a#11#1#0)));

// Constructor $Is
axiom (forall a#12#0#0: int, a#12#1#0: bool :: 
  { $Is(#DatatypeTests.Multiple.ConstructorAB(a#12#0#0, a#12#1#0), 
      Tclass.DatatypeTests.Multiple()) } 
  $Is(#DatatypeTests.Multiple.ConstructorAB(a#12#0#0, a#12#1#0), 
      Tclass.DatatypeTests.Multiple())
     <==> $Is(a#12#0#0, Tclass.DatatypeTests.u8()) && $Is(a#12#1#0, TBool));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(DatatypeTests.Multiple.a(d), Tclass.DatatypeTests.u8(), $h) } 
  $IsGoodHeap($h)
       && 
      DatatypeTests.Multiple.ConstructorAB_q(d)
       && $IsAlloc(d, Tclass.DatatypeTests.Multiple(), $h)
     ==> $IsAlloc(DatatypeTests.Multiple.a(d), Tclass.DatatypeTests.u8(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(DatatypeTests.Multiple.b(d), TBool, $h) } 
  $IsGoodHeap($h)
       && 
      DatatypeTests.Multiple.ConstructorAB_q(d)
       && $IsAlloc(d, Tclass.DatatypeTests.Multiple(), $h)
     ==> $IsAlloc(DatatypeTests.Multiple.b(d), TBool, $h));

// Constructor literal
axiom (forall a#13#0#0: int, a#13#1#0: bool :: 
  { #DatatypeTests.Multiple.ConstructorAB(LitInt(a#13#0#0), Lit(a#13#1#0)) } 
  #DatatypeTests.Multiple.ConstructorAB(LitInt(a#13#0#0), Lit(a#13#1#0))
     == Lit(#DatatypeTests.Multiple.ConstructorAB(a#13#0#0, a#13#1#0)));

// Constructor injectivity
axiom (forall a#14#0#0: int, a#14#1#0: bool :: 
  { #DatatypeTests.Multiple.ConstructorAB(a#14#0#0, a#14#1#0) } 
  DatatypeTests.Multiple.a(#DatatypeTests.Multiple.ConstructorAB(a#14#0#0, a#14#1#0))
     == a#14#0#0);

// Constructor injectivity
axiom (forall a#15#0#0: int, a#15#1#0: bool :: 
  { #DatatypeTests.Multiple.ConstructorAB(a#15#0#0, a#15#1#0) } 
  DatatypeTests.Multiple.b(#DatatypeTests.Multiple.ConstructorAB(a#15#0#0, a#15#1#0))
     == a#15#1#0);

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.DatatypeTests.Multiple(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.DatatypeTests.Multiple())
     ==> $IsAlloc(d, Tclass.DatatypeTests.Multiple(), $h));

// Depth-one case-split function
function $IsA#DatatypeTests.Multiple(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#DatatypeTests.Multiple(d) } 
  $IsA#DatatypeTests.Multiple(d)
     ==> DatatypeTests.Multiple.ConstructorA_q(d)
       || DatatypeTests.Multiple.ConstructorB_q(d)
       || DatatypeTests.Multiple.ConstructorAB_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { DatatypeTests.Multiple.ConstructorAB_q(d), $Is(d, Tclass.DatatypeTests.Multiple()) } 
    { DatatypeTests.Multiple.ConstructorB_q(d), $Is(d, Tclass.DatatypeTests.Multiple()) } 
    { DatatypeTests.Multiple.ConstructorA_q(d), $Is(d, Tclass.DatatypeTests.Multiple()) } 
  $Is(d, Tclass.DatatypeTests.Multiple())
     ==> DatatypeTests.Multiple.ConstructorA_q(d)
       || DatatypeTests.Multiple.ConstructorB_q(d)
       || DatatypeTests.Multiple.ConstructorAB_q(d));

// Datatype extensional equality declaration
function DatatypeTests.Multiple#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #DatatypeTests.Multiple.ConstructorA
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DatatypeTests.Multiple#Equal(a, b), DatatypeTests.Multiple.ConstructorA_q(a) } 
    { DatatypeTests.Multiple#Equal(a, b), DatatypeTests.Multiple.ConstructorA_q(b) } 
  DatatypeTests.Multiple.ConstructorA_q(a)
       && DatatypeTests.Multiple.ConstructorA_q(b)
     ==> (DatatypeTests.Multiple#Equal(a, b)
       <==> DatatypeTests.Multiple.a(a) == DatatypeTests.Multiple.a(b)));

// Datatype extensional equality definition: #DatatypeTests.Multiple.ConstructorB
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DatatypeTests.Multiple#Equal(a, b), DatatypeTests.Multiple.ConstructorB_q(a) } 
    { DatatypeTests.Multiple#Equal(a, b), DatatypeTests.Multiple.ConstructorB_q(b) } 
  DatatypeTests.Multiple.ConstructorB_q(a)
       && DatatypeTests.Multiple.ConstructorB_q(b)
     ==> (DatatypeTests.Multiple#Equal(a, b)
       <==> DatatypeTests.Multiple.b(a) == DatatypeTests.Multiple.b(b)));

// Datatype extensional equality definition: #DatatypeTests.Multiple.ConstructorAB
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DatatypeTests.Multiple#Equal(a, b), DatatypeTests.Multiple.ConstructorAB_q(a) } 
    { DatatypeTests.Multiple#Equal(a, b), DatatypeTests.Multiple.ConstructorAB_q(b) } 
  DatatypeTests.Multiple.ConstructorAB_q(a)
       && DatatypeTests.Multiple.ConstructorAB_q(b)
     ==> (DatatypeTests.Multiple#Equal(a, b)
       <==> DatatypeTests.Multiple.a(a) == DatatypeTests.Multiple.a(b)
         && DatatypeTests.Multiple.b(a) == DatatypeTests.Multiple.b(b)));

// Datatype extensionality axiom: DatatypeTests.Multiple
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DatatypeTests.Multiple#Equal(a, b) } 
  DatatypeTests.Multiple#Equal(a, b) <==> a == b);

const unique class.DatatypeTests.Multiple: ClassName;

// function declaration for DatatypeTests.Multiple.Gather
function DatatypeTests.Multiple.Gather(this: DatatypeType, other#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for DatatypeTests.Multiple.Gather
axiom 2 <= $FunctionContextHeight
   ==> (forall this: DatatypeType, other#0: DatatypeType :: 
    { DatatypeTests.Multiple.Gather(this, other#0) } 
    DatatypeTests.Multiple.Gather#canCall(this, other#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(this, Tclass.DatatypeTests.Multiple())
           && $Is(other#0, Tclass.DatatypeTests.Multiple()))
       ==> $Is(DatatypeTests.Multiple.Gather(this, other#0), Tclass.DatatypeTests.Multiple()));
// definition axiom for DatatypeTests.Multiple.Gather (revealed)
axiom {:id "id86"} 2 <= $FunctionContextHeight
   ==> (forall this: DatatypeType, other#0: DatatypeType :: 
    { DatatypeTests.Multiple.Gather(this, other#0) } 
    DatatypeTests.Multiple.Gather#canCall(this, other#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(this, Tclass.DatatypeTests.Multiple())
           && $Is(other#0, Tclass.DatatypeTests.Multiple()))
       ==> DatatypeTests.Multiple.Gather(this, other#0)
         == (if DatatypeTests.Multiple.ConstructorA_q(this)
           then (var a#0 := DatatypeTests.Multiple.a(this); 
            (if DatatypeTests.Multiple.ConstructorB_q(other#0)
               then #DatatypeTests.Multiple.ConstructorAB(a#0, DatatypeTests.Multiple.b(other#0))
               else this))
           else (if DatatypeTests.Multiple.ConstructorB_q(this)
             then (var b#0 := DatatypeTests.Multiple.b(this); 
              (if DatatypeTests.Multiple.ConstructorA_q(other#0)
                 then #DatatypeTests.Multiple.ConstructorAB(DatatypeTests.Multiple.a(other#0), b#0)
                 else this))
             else (var b#1 := DatatypeTests.Multiple.b(this); 
              (var a#1 := DatatypeTests.Multiple.a(this); this)))));
// definition axiom for DatatypeTests.Multiple.Gather for all literals (revealed)
axiom {:id "id87"} 2 <= $FunctionContextHeight
   ==> (forall this: DatatypeType, other#0: DatatypeType :: 
    {:weight 3} { DatatypeTests.Multiple.Gather(Lit(this), Lit(other#0)) } 
    DatatypeTests.Multiple.Gather#canCall(Lit(this), Lit(other#0))
         || (2 < $FunctionContextHeight
           && 
          $Is(this, Tclass.DatatypeTests.Multiple())
           && $Is(other#0, Tclass.DatatypeTests.Multiple()))
       ==> DatatypeTests.Multiple.Gather(Lit(this), Lit(other#0))
         == (if DatatypeTests.Multiple.ConstructorA_q(Lit(this))
           then (var a#4 := LitInt(DatatypeTests.Multiple.a(Lit(this))); 
            (if DatatypeTests.Multiple.ConstructorB_q(Lit(other#0))
               then #DatatypeTests.Multiple.ConstructorAB(a#4, Lit(DatatypeTests.Multiple.b(Lit(other#0))))
               else this))
           else (if DatatypeTests.Multiple.ConstructorB_q(Lit(this))
             then (var b#4 := Lit(DatatypeTests.Multiple.b(Lit(this))); 
              (if DatatypeTests.Multiple.ConstructorA_q(Lit(other#0))
                 then #DatatypeTests.Multiple.ConstructorAB(LitInt(DatatypeTests.Multiple.a(Lit(other#0))), b#4)
                 else this))
             else (var b#5 := Lit(DatatypeTests.Multiple.b(Lit(this))); 
              (var a#5 := LitInt(DatatypeTests.Multiple.a(Lit(this))); Lit(this))))));
}

function DatatypeTests.Multiple.Gather#canCall(this: DatatypeType, other#0: DatatypeType) : bool;

function DatatypeTests.Multiple.Gather#requires(DatatypeType, DatatypeType) : bool;

// #requires axiom for DatatypeTests.Multiple.Gather
axiom (forall this: DatatypeType, other#0: DatatypeType :: 
  { DatatypeTests.Multiple.Gather#requires(this, other#0) } 
  $Is(this, Tclass.DatatypeTests.Multiple())
       && $Is(other#0, Tclass.DatatypeTests.Multiple())
     ==> DatatypeTests.Multiple.Gather#requires(this, other#0) == true);

procedure {:verboseName "DatatypeTests.Multiple.Gather (well-formedness)"} CheckWellformed$$DatatypeTests.Multiple.Gather(this: DatatypeType
       where $Is(this, Tclass.DatatypeTests.Multiple())
         && $IsAlloc(this, Tclass.DatatypeTests.Multiple(), $Heap), 
    other#0: DatatypeType where $Is(other#0, Tclass.DatatypeTests.Multiple()));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DatatypeTests.Multiple.Gather (well-formedness)"} CheckWellformed$$DatatypeTests.Multiple.Gather(this: DatatypeType, other#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#2#0: int;
  var _mcc#3#0: bool;
  var b#Z#0: bool;
  var let#0#0#0: bool;
  var a#Z#0: int;
  var let#1#0#0: int;
  var _mcc#1#0: bool;
  var b#Z#1: bool;
  var let#2#0#0: bool;
  var _mcc#0#0: int;
  var a#Z#1: int;
  var let#3#0#0: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(DatatypeTests.Multiple.Gather(this, other#0), Tclass.DatatypeTests.Multiple());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (this == #DatatypeTests.Multiple.ConstructorA(_mcc#0#0))
        {
            assume LitInt(0) <= _mcc#0#0 && _mcc#0#0 < 255;
            havoc a#Z#1;
            assume {:id "id98"} let#3#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#3#0#0, Tclass.DatatypeTests.u8());
            assume {:id "id99"} a#Z#1 == let#3#0#0;
            if (DatatypeTests.Multiple.ConstructorB_q(other#0))
            {
                assert {:id "id100"} DatatypeTests.Multiple.ConstructorB_q(other#0)
                   || DatatypeTests.Multiple.ConstructorAB_q(other#0);
                assume {:id "id101"} DatatypeTests.Multiple.Gather(this, other#0)
                   == #DatatypeTests.Multiple.ConstructorAB(a#Z#1, DatatypeTests.Multiple.b(other#0));
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(DatatypeTests.Multiple.Gather(this, other#0), Tclass.DatatypeTests.Multiple());
                return;
            }
            else
            {
                assume {:id "id102"} DatatypeTests.Multiple.Gather(this, other#0) == this;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(DatatypeTests.Multiple.Gather(this, other#0), Tclass.DatatypeTests.Multiple());
                return;
            }
        }
        else if (this == #DatatypeTests.Multiple.ConstructorB(_mcc#1#0))
        {
            havoc b#Z#1;
            assume {:id "id93"} let#2#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#2#0#0, TBool);
            assume {:id "id94"} b#Z#1 == let#2#0#0;
            if (DatatypeTests.Multiple.ConstructorA_q(other#0))
            {
                assert {:id "id95"} DatatypeTests.Multiple.ConstructorA_q(other#0)
                   || DatatypeTests.Multiple.ConstructorAB_q(other#0);
                assume {:id "id96"} DatatypeTests.Multiple.Gather(this, other#0)
                   == #DatatypeTests.Multiple.ConstructorAB(DatatypeTests.Multiple.a(other#0), b#Z#1);
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(DatatypeTests.Multiple.Gather(this, other#0), Tclass.DatatypeTests.Multiple());
                return;
            }
            else
            {
                assume {:id "id97"} DatatypeTests.Multiple.Gather(this, other#0) == this;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(DatatypeTests.Multiple.Gather(this, other#0), Tclass.DatatypeTests.Multiple());
                return;
            }
        }
        else if (this == #DatatypeTests.Multiple.ConstructorAB(_mcc#2#0, _mcc#3#0))
        {
            assume LitInt(0) <= _mcc#2#0 && _mcc#2#0 < 255;
            havoc b#Z#0;
            assume {:id "id88"} let#0#0#0 == _mcc#3#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, TBool);
            assume {:id "id89"} b#Z#0 == let#0#0#0;
            havoc a#Z#0;
            assume {:id "id90"} let#1#0#0 == _mcc#2#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, Tclass.DatatypeTests.u8());
            assume {:id "id91"} a#Z#0 == let#1#0#0;
            assume {:id "id92"} DatatypeTests.Multiple.Gather(this, other#0) == this;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(DatatypeTests.Multiple.Gather(this, other#0), Tclass.DatatypeTests.Multiple());
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// Constructor function declaration
function #DatatypeTests.RcStruct.RcStructConstructor(int, bool) : DatatypeType;

const unique ##DatatypeTests.RcStruct.RcStructConstructor: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: int, a#0#1#0: bool :: 
  { #DatatypeTests.RcStruct.RcStructConstructor(a#0#0#0, a#0#1#0) } 
  DatatypeCtorId(#DatatypeTests.RcStruct.RcStructConstructor(a#0#0#0, a#0#1#0))
     == ##DatatypeTests.RcStruct.RcStructConstructor);
}

function DatatypeTests.RcStruct.RcStructConstructor_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DatatypeTests.RcStruct.RcStructConstructor_q(d) } 
  DatatypeTests.RcStruct.RcStructConstructor_q(d)
     <==> DatatypeCtorId(d) == ##DatatypeTests.RcStruct.RcStructConstructor);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DatatypeTests.RcStruct.RcStructConstructor_q(d) } 
  DatatypeTests.RcStruct.RcStructConstructor_q(d)
     ==> (exists a#1#0#0: int, a#1#1#0: bool :: 
      d == #DatatypeTests.RcStruct.RcStructConstructor(a#1#0#0, a#1#1#0)));

// Constructor $Is
axiom (forall a#2#0#0: int, a#2#1#0: bool :: 
  { $Is(#DatatypeTests.RcStruct.RcStructConstructor(a#2#0#0, a#2#1#0), 
      Tclass.DatatypeTests.RcStruct()) } 
  $Is(#DatatypeTests.RcStruct.RcStructConstructor(a#2#0#0, a#2#1#0), 
      Tclass.DatatypeTests.RcStruct())
     <==> $Is(a#2#0#0, Tclass.DatatypeTests.u8()) && $Is(a#2#1#0, TBool));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(DatatypeTests.RcStruct.a(d), Tclass.DatatypeTests.u8(), $h) } 
  $IsGoodHeap($h)
       && 
      DatatypeTests.RcStruct.RcStructConstructor_q(d)
       && $IsAlloc(d, Tclass.DatatypeTests.RcStruct(), $h)
     ==> $IsAlloc(DatatypeTests.RcStruct.a(d), Tclass.DatatypeTests.u8(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(DatatypeTests.RcStruct.b(d), TBool, $h) } 
  $IsGoodHeap($h)
       && 
      DatatypeTests.RcStruct.RcStructConstructor_q(d)
       && $IsAlloc(d, Tclass.DatatypeTests.RcStruct(), $h)
     ==> $IsAlloc(DatatypeTests.RcStruct.b(d), TBool, $h));

// Constructor literal
axiom (forall a#3#0#0: int, a#3#1#0: bool :: 
  { #DatatypeTests.RcStruct.RcStructConstructor(LitInt(a#3#0#0), Lit(a#3#1#0)) } 
  #DatatypeTests.RcStruct.RcStructConstructor(LitInt(a#3#0#0), Lit(a#3#1#0))
     == Lit(#DatatypeTests.RcStruct.RcStructConstructor(a#3#0#0, a#3#1#0)));

function DatatypeTests.RcStruct.a(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#4#0#0: int, a#4#1#0: bool :: 
  { #DatatypeTests.RcStruct.RcStructConstructor(a#4#0#0, a#4#1#0) } 
  DatatypeTests.RcStruct.a(#DatatypeTests.RcStruct.RcStructConstructor(a#4#0#0, a#4#1#0))
     == a#4#0#0);

function DatatypeTests.RcStruct.b(DatatypeType) : bool;

// Constructor injectivity
axiom (forall a#5#0#0: int, a#5#1#0: bool :: 
  { #DatatypeTests.RcStruct.RcStructConstructor(a#5#0#0, a#5#1#0) } 
  DatatypeTests.RcStruct.b(#DatatypeTests.RcStruct.RcStructConstructor(a#5#0#0, a#5#1#0))
     == a#5#1#0);

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.DatatypeTests.RcStruct(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.DatatypeTests.RcStruct())
     ==> $IsAlloc(d, Tclass.DatatypeTests.RcStruct(), $h));

// Depth-one case-split function
function $IsA#DatatypeTests.RcStruct(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#DatatypeTests.RcStruct(d) } 
  $IsA#DatatypeTests.RcStruct(d)
     ==> DatatypeTests.RcStruct.RcStructConstructor_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { DatatypeTests.RcStruct.RcStructConstructor_q(d), $Is(d, Tclass.DatatypeTests.RcStruct()) } 
  $Is(d, Tclass.DatatypeTests.RcStruct())
     ==> DatatypeTests.RcStruct.RcStructConstructor_q(d));

// Datatype extensional equality declaration
function DatatypeTests.RcStruct#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #DatatypeTests.RcStruct.RcStructConstructor
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DatatypeTests.RcStruct#Equal(a, b) } 
  DatatypeTests.RcStruct#Equal(a, b)
     <==> DatatypeTests.RcStruct.a(a) == DatatypeTests.RcStruct.a(b)
       && DatatypeTests.RcStruct.b(a) == DatatypeTests.RcStruct.b(b));

// Datatype extensionality axiom: DatatypeTests.RcStruct
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DatatypeTests.RcStruct#Equal(a, b) } 
  DatatypeTests.RcStruct#Equal(a, b) <==> a == b);

const unique class.DatatypeTests.RcStruct: ClassName;

// function declaration for DatatypeTests.RcStruct.BTrue
function DatatypeTests.RcStruct.BTrue(this: DatatypeType) : DatatypeType
uses {
// consequence axiom for DatatypeTests.RcStruct.BTrue
axiom 2 <= $FunctionContextHeight
   ==> (forall this: DatatypeType :: 
    { DatatypeTests.RcStruct.BTrue(this) } 
    DatatypeTests.RcStruct.BTrue#canCall(this)
         || (2 < $FunctionContextHeight && $Is(this, Tclass.DatatypeTests.RcStruct()))
       ==> $Is(DatatypeTests.RcStruct.BTrue(this), Tclass.DatatypeTests.RcStruct()));
// definition axiom for DatatypeTests.RcStruct.BTrue (revealed)
axiom {:id "id103"} 2 <= $FunctionContextHeight
   ==> (forall this: DatatypeType :: 
    { DatatypeTests.RcStruct.BTrue(this) } 
    DatatypeTests.RcStruct.BTrue#canCall(this)
         || (2 < $FunctionContextHeight && $Is(this, Tclass.DatatypeTests.RcStruct()))
       ==> DatatypeTests.RcStruct.RcStructConstructor_q(this)
         && (!DatatypeTests.RcStruct.b(this)
           ==> (var dt_update_tmp#0#0 := this; 
            DatatypeTests.RcStruct.RcStructConstructor_q(dt_update_tmp#0#0)))
         && DatatypeTests.RcStruct.BTrue(this)
           == (if DatatypeTests.RcStruct.b(this)
             then this
             else (var dt_update_tmp#0#0 := this; 
              (var dt_update#b#0#0 := Lit(true); 
                #DatatypeTests.RcStruct.RcStructConstructor(DatatypeTests.RcStruct.a(dt_update_tmp#0#0), dt_update#b#0#0)))));
// definition axiom for DatatypeTests.RcStruct.BTrue for all literals (revealed)
axiom {:id "id104"} 2 <= $FunctionContextHeight
   ==> (forall this: DatatypeType :: 
    {:weight 3} { DatatypeTests.RcStruct.BTrue(Lit(this)) } 
    DatatypeTests.RcStruct.BTrue#canCall(Lit(this))
         || (2 < $FunctionContextHeight && $Is(this, Tclass.DatatypeTests.RcStruct()))
       ==> DatatypeTests.RcStruct.RcStructConstructor_q(Lit(this))
         && (!Lit(DatatypeTests.RcStruct.b(Lit(this)))
           ==> (var dt_update_tmp#0#1 := Lit(this); 
            DatatypeTests.RcStruct.RcStructConstructor_q(dt_update_tmp#0#1)))
         && DatatypeTests.RcStruct.BTrue(Lit(this))
           == (if DatatypeTests.RcStruct.b(Lit(this))
             then this
             else (var dt_update_tmp#0#1 := Lit(this); 
              (var dt_update#b#0#1 := Lit(true); 
                Lit(#DatatypeTests.RcStruct.RcStructConstructor(LitInt(DatatypeTests.RcStruct.a(dt_update_tmp#0#1)), dt_update#b#0#1))))));
}

function DatatypeTests.RcStruct.BTrue#canCall(this: DatatypeType) : bool;

function DatatypeTests.RcStruct.BTrue#requires(DatatypeType) : bool;

// #requires axiom for DatatypeTests.RcStruct.BTrue
axiom (forall this: DatatypeType :: 
  { DatatypeTests.RcStruct.BTrue#requires(this) } 
  $Is(this, Tclass.DatatypeTests.RcStruct())
     ==> DatatypeTests.RcStruct.BTrue#requires(this) == true);

procedure {:verboseName "DatatypeTests.RcStruct.BTrue (well-formedness)"} CheckWellformed$$DatatypeTests.RcStruct.BTrue(this: DatatypeType
       where $Is(this, Tclass.DatatypeTests.RcStruct())
         && $IsAlloc(this, Tclass.DatatypeTests.RcStruct(), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



// Constructor function declaration
function #DatatypeTests.RcMultiple.RcConstructorA(int) : DatatypeType;

const unique ##DatatypeTests.RcMultiple.RcConstructorA: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: int :: 
  { #DatatypeTests.RcMultiple.RcConstructorA(a#0#0#0) } 
  DatatypeCtorId(#DatatypeTests.RcMultiple.RcConstructorA(a#0#0#0))
     == ##DatatypeTests.RcMultiple.RcConstructorA);
}

function DatatypeTests.RcMultiple.RcConstructorA_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DatatypeTests.RcMultiple.RcConstructorA_q(d) } 
  DatatypeTests.RcMultiple.RcConstructorA_q(d)
     <==> DatatypeCtorId(d) == ##DatatypeTests.RcMultiple.RcConstructorA);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DatatypeTests.RcMultiple.RcConstructorA_q(d) } 
  DatatypeTests.RcMultiple.RcConstructorA_q(d)
     ==> (exists a#1#0#0: int :: d == #DatatypeTests.RcMultiple.RcConstructorA(a#1#0#0)));

// Constructor $Is
axiom (forall a#2#0#0: int :: 
  { $Is(#DatatypeTests.RcMultiple.RcConstructorA(a#2#0#0), 
      Tclass.DatatypeTests.RcMultiple()) } 
  $Is(#DatatypeTests.RcMultiple.RcConstructorA(a#2#0#0), 
      Tclass.DatatypeTests.RcMultiple())
     <==> $Is(a#2#0#0, Tclass.DatatypeTests.u8()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(DatatypeTests.RcMultiple.a(d), Tclass.DatatypeTests.u8(), $h) } 
  $IsGoodHeap($h)
       && 
      DatatypeTests.RcMultiple.RcConstructorA_q(d)
       && $IsAlloc(d, Tclass.DatatypeTests.RcMultiple(), $h)
     ==> $IsAlloc(DatatypeTests.RcMultiple.a(d), Tclass.DatatypeTests.u8(), $h));

// Constructor literal
axiom (forall a#3#0#0: int :: 
  { #DatatypeTests.RcMultiple.RcConstructorA(LitInt(a#3#0#0)) } 
  #DatatypeTests.RcMultiple.RcConstructorA(LitInt(a#3#0#0))
     == Lit(#DatatypeTests.RcMultiple.RcConstructorA(a#3#0#0)));

function DatatypeTests.RcMultiple.a(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#4#0#0: int :: 
  { #DatatypeTests.RcMultiple.RcConstructorA(a#4#0#0) } 
  DatatypeTests.RcMultiple.a(#DatatypeTests.RcMultiple.RcConstructorA(a#4#0#0))
     == a#4#0#0);

// Constructor function declaration
function #DatatypeTests.RcMultiple.RcConstructorB(bool) : DatatypeType;

const unique ##DatatypeTests.RcMultiple.RcConstructorB: DtCtorId
uses {
// Constructor identifier
axiom (forall a#5#0#0: bool :: 
  { #DatatypeTests.RcMultiple.RcConstructorB(a#5#0#0) } 
  DatatypeCtorId(#DatatypeTests.RcMultiple.RcConstructorB(a#5#0#0))
     == ##DatatypeTests.RcMultiple.RcConstructorB);
}

function DatatypeTests.RcMultiple.RcConstructorB_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DatatypeTests.RcMultiple.RcConstructorB_q(d) } 
  DatatypeTests.RcMultiple.RcConstructorB_q(d)
     <==> DatatypeCtorId(d) == ##DatatypeTests.RcMultiple.RcConstructorB);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DatatypeTests.RcMultiple.RcConstructorB_q(d) } 
  DatatypeTests.RcMultiple.RcConstructorB_q(d)
     ==> (exists a#6#0#0: bool :: d == #DatatypeTests.RcMultiple.RcConstructorB(a#6#0#0)));

// Constructor $Is
axiom (forall a#7#0#0: bool :: 
  { $Is(#DatatypeTests.RcMultiple.RcConstructorB(a#7#0#0), 
      Tclass.DatatypeTests.RcMultiple()) } 
  $Is(#DatatypeTests.RcMultiple.RcConstructorB(a#7#0#0), 
      Tclass.DatatypeTests.RcMultiple())
     <==> $Is(a#7#0#0, TBool));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(DatatypeTests.RcMultiple.b(d), TBool, $h) } 
  $IsGoodHeap($h)
       && 
      DatatypeTests.RcMultiple.RcConstructorB_q(d)
       && $IsAlloc(d, Tclass.DatatypeTests.RcMultiple(), $h)
     ==> $IsAlloc(DatatypeTests.RcMultiple.b(d), TBool, $h));

// Constructor literal
axiom (forall a#8#0#0: bool :: 
  { #DatatypeTests.RcMultiple.RcConstructorB(Lit(a#8#0#0)) } 
  #DatatypeTests.RcMultiple.RcConstructorB(Lit(a#8#0#0))
     == Lit(#DatatypeTests.RcMultiple.RcConstructorB(a#8#0#0)));

function DatatypeTests.RcMultiple.b(DatatypeType) : bool;

// Constructor injectivity
axiom (forall a#9#0#0: bool :: 
  { #DatatypeTests.RcMultiple.RcConstructorB(a#9#0#0) } 
  DatatypeTests.RcMultiple.b(#DatatypeTests.RcMultiple.RcConstructorB(a#9#0#0))
     == a#9#0#0);

// Constructor function declaration
function #DatatypeTests.RcMultiple.RcConstructorAB(int, bool) : DatatypeType;

const unique ##DatatypeTests.RcMultiple.RcConstructorAB: DtCtorId
uses {
// Constructor identifier
axiom (forall a#10#0#0: int, a#10#1#0: bool :: 
  { #DatatypeTests.RcMultiple.RcConstructorAB(a#10#0#0, a#10#1#0) } 
  DatatypeCtorId(#DatatypeTests.RcMultiple.RcConstructorAB(a#10#0#0, a#10#1#0))
     == ##DatatypeTests.RcMultiple.RcConstructorAB);
}

function DatatypeTests.RcMultiple.RcConstructorAB_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DatatypeTests.RcMultiple.RcConstructorAB_q(d) } 
  DatatypeTests.RcMultiple.RcConstructorAB_q(d)
     <==> DatatypeCtorId(d) == ##DatatypeTests.RcMultiple.RcConstructorAB);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DatatypeTests.RcMultiple.RcConstructorAB_q(d) } 
  DatatypeTests.RcMultiple.RcConstructorAB_q(d)
     ==> (exists a#11#0#0: int, a#11#1#0: bool :: 
      d == #DatatypeTests.RcMultiple.RcConstructorAB(a#11#0#0, a#11#1#0)));

// Constructor $Is
axiom (forall a#12#0#0: int, a#12#1#0: bool :: 
  { $Is(#DatatypeTests.RcMultiple.RcConstructorAB(a#12#0#0, a#12#1#0), 
      Tclass.DatatypeTests.RcMultiple()) } 
  $Is(#DatatypeTests.RcMultiple.RcConstructorAB(a#12#0#0, a#12#1#0), 
      Tclass.DatatypeTests.RcMultiple())
     <==> $Is(a#12#0#0, Tclass.DatatypeTests.u8()) && $Is(a#12#1#0, TBool));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(DatatypeTests.RcMultiple.a(d), Tclass.DatatypeTests.u8(), $h) } 
  $IsGoodHeap($h)
       && 
      DatatypeTests.RcMultiple.RcConstructorAB_q(d)
       && $IsAlloc(d, Tclass.DatatypeTests.RcMultiple(), $h)
     ==> $IsAlloc(DatatypeTests.RcMultiple.a(d), Tclass.DatatypeTests.u8(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(DatatypeTests.RcMultiple.b(d), TBool, $h) } 
  $IsGoodHeap($h)
       && 
      DatatypeTests.RcMultiple.RcConstructorAB_q(d)
       && $IsAlloc(d, Tclass.DatatypeTests.RcMultiple(), $h)
     ==> $IsAlloc(DatatypeTests.RcMultiple.b(d), TBool, $h));

// Constructor literal
axiom (forall a#13#0#0: int, a#13#1#0: bool :: 
  { #DatatypeTests.RcMultiple.RcConstructorAB(LitInt(a#13#0#0), Lit(a#13#1#0)) } 
  #DatatypeTests.RcMultiple.RcConstructorAB(LitInt(a#13#0#0), Lit(a#13#1#0))
     == Lit(#DatatypeTests.RcMultiple.RcConstructorAB(a#13#0#0, a#13#1#0)));

// Constructor injectivity
axiom (forall a#14#0#0: int, a#14#1#0: bool :: 
  { #DatatypeTests.RcMultiple.RcConstructorAB(a#14#0#0, a#14#1#0) } 
  DatatypeTests.RcMultiple.a(#DatatypeTests.RcMultiple.RcConstructorAB(a#14#0#0, a#14#1#0))
     == a#14#0#0);

// Constructor injectivity
axiom (forall a#15#0#0: int, a#15#1#0: bool :: 
  { #DatatypeTests.RcMultiple.RcConstructorAB(a#15#0#0, a#15#1#0) } 
  DatatypeTests.RcMultiple.b(#DatatypeTests.RcMultiple.RcConstructorAB(a#15#0#0, a#15#1#0))
     == a#15#1#0);

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.DatatypeTests.RcMultiple(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.DatatypeTests.RcMultiple())
     ==> $IsAlloc(d, Tclass.DatatypeTests.RcMultiple(), $h));

// Depth-one case-split function
function $IsA#DatatypeTests.RcMultiple(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#DatatypeTests.RcMultiple(d) } 
  $IsA#DatatypeTests.RcMultiple(d)
     ==> DatatypeTests.RcMultiple.RcConstructorA_q(d)
       || DatatypeTests.RcMultiple.RcConstructorB_q(d)
       || DatatypeTests.RcMultiple.RcConstructorAB_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { DatatypeTests.RcMultiple.RcConstructorAB_q(d), $Is(d, Tclass.DatatypeTests.RcMultiple()) } 
    { DatatypeTests.RcMultiple.RcConstructorB_q(d), $Is(d, Tclass.DatatypeTests.RcMultiple()) } 
    { DatatypeTests.RcMultiple.RcConstructorA_q(d), $Is(d, Tclass.DatatypeTests.RcMultiple()) } 
  $Is(d, Tclass.DatatypeTests.RcMultiple())
     ==> DatatypeTests.RcMultiple.RcConstructorA_q(d)
       || DatatypeTests.RcMultiple.RcConstructorB_q(d)
       || DatatypeTests.RcMultiple.RcConstructorAB_q(d));

// Datatype extensional equality declaration
function DatatypeTests.RcMultiple#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #DatatypeTests.RcMultiple.RcConstructorA
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DatatypeTests.RcMultiple#Equal(a, b), DatatypeTests.RcMultiple.RcConstructorA_q(a) } 
    { DatatypeTests.RcMultiple#Equal(a, b), DatatypeTests.RcMultiple.RcConstructorA_q(b) } 
  DatatypeTests.RcMultiple.RcConstructorA_q(a)
       && DatatypeTests.RcMultiple.RcConstructorA_q(b)
     ==> (DatatypeTests.RcMultiple#Equal(a, b)
       <==> DatatypeTests.RcMultiple.a(a) == DatatypeTests.RcMultiple.a(b)));

// Datatype extensional equality definition: #DatatypeTests.RcMultiple.RcConstructorB
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DatatypeTests.RcMultiple#Equal(a, b), DatatypeTests.RcMultiple.RcConstructorB_q(a) } 
    { DatatypeTests.RcMultiple#Equal(a, b), DatatypeTests.RcMultiple.RcConstructorB_q(b) } 
  DatatypeTests.RcMultiple.RcConstructorB_q(a)
       && DatatypeTests.RcMultiple.RcConstructorB_q(b)
     ==> (DatatypeTests.RcMultiple#Equal(a, b)
       <==> DatatypeTests.RcMultiple.b(a) == DatatypeTests.RcMultiple.b(b)));

// Datatype extensional equality definition: #DatatypeTests.RcMultiple.RcConstructorAB
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DatatypeTests.RcMultiple#Equal(a, b), DatatypeTests.RcMultiple.RcConstructorAB_q(a) } 
    { DatatypeTests.RcMultiple#Equal(a, b), DatatypeTests.RcMultiple.RcConstructorAB_q(b) } 
  DatatypeTests.RcMultiple.RcConstructorAB_q(a)
       && DatatypeTests.RcMultiple.RcConstructorAB_q(b)
     ==> (DatatypeTests.RcMultiple#Equal(a, b)
       <==> DatatypeTests.RcMultiple.a(a) == DatatypeTests.RcMultiple.a(b)
         && DatatypeTests.RcMultiple.b(a) == DatatypeTests.RcMultiple.b(b)));

// Datatype extensionality axiom: DatatypeTests.RcMultiple
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DatatypeTests.RcMultiple#Equal(a, b) } 
  DatatypeTests.RcMultiple#Equal(a, b) <==> a == b);

const unique class.DatatypeTests.RcMultiple: ClassName;

// function declaration for DatatypeTests.RcMultiple.Gather
function DatatypeTests.RcMultiple.Gather(this: DatatypeType, other#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for DatatypeTests.RcMultiple.Gather
axiom 2 <= $FunctionContextHeight
   ==> (forall this: DatatypeType, other#0: DatatypeType :: 
    { DatatypeTests.RcMultiple.Gather(this, other#0) } 
    DatatypeTests.RcMultiple.Gather#canCall(this, other#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(this, Tclass.DatatypeTests.RcMultiple())
           && $Is(other#0, Tclass.DatatypeTests.RcMultiple()))
       ==> $Is(DatatypeTests.RcMultiple.Gather(this, other#0), 
        Tclass.DatatypeTests.RcMultiple()));
// definition axiom for DatatypeTests.RcMultiple.Gather (revealed)
axiom {:id "id111"} 2 <= $FunctionContextHeight
   ==> (forall this: DatatypeType, other#0: DatatypeType :: 
    { DatatypeTests.RcMultiple.Gather(this, other#0) } 
    DatatypeTests.RcMultiple.Gather#canCall(this, other#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(this, Tclass.DatatypeTests.RcMultiple())
           && $Is(other#0, Tclass.DatatypeTests.RcMultiple()))
       ==> DatatypeTests.RcMultiple.Gather(this, other#0)
         == (if DatatypeTests.RcMultiple.RcConstructorAB_q(this)
           then this
           else (if DatatypeTests.RcMultiple.RcConstructorA_q(this)
             then (if DatatypeTests.RcMultiple.RcConstructorB_q(other#0)
               then #DatatypeTests.RcMultiple.RcConstructorAB(DatatypeTests.RcMultiple.a(this), DatatypeTests.RcMultiple.b(other#0))
               else this)
             else (if DatatypeTests.RcMultiple.RcConstructorB_q(this)
               then (if DatatypeTests.RcMultiple.RcConstructorA_q(other#0)
                 then #DatatypeTests.RcMultiple.RcConstructorAB(DatatypeTests.RcMultiple.a(other#0), DatatypeTests.RcMultiple.b(this))
                 else this)
               else this))));
// definition axiom for DatatypeTests.RcMultiple.Gather for all literals (revealed)
axiom {:id "id112"} 2 <= $FunctionContextHeight
   ==> (forall this: DatatypeType, other#0: DatatypeType :: 
    {:weight 3} { DatatypeTests.RcMultiple.Gather(Lit(this), Lit(other#0)) } 
    DatatypeTests.RcMultiple.Gather#canCall(Lit(this), Lit(other#0))
         || (2 < $FunctionContextHeight
           && 
          $Is(this, Tclass.DatatypeTests.RcMultiple())
           && $Is(other#0, Tclass.DatatypeTests.RcMultiple()))
       ==> DatatypeTests.RcMultiple.Gather(Lit(this), Lit(other#0))
         == (if DatatypeTests.RcMultiple.RcConstructorAB_q(Lit(this))
           then this
           else (if DatatypeTests.RcMultiple.RcConstructorA_q(Lit(this))
             then (if DatatypeTests.RcMultiple.RcConstructorB_q(Lit(other#0))
               then #DatatypeTests.RcMultiple.RcConstructorAB(LitInt(DatatypeTests.RcMultiple.a(Lit(this))), 
                Lit(DatatypeTests.RcMultiple.b(Lit(other#0))))
               else this)
             else (if DatatypeTests.RcMultiple.RcConstructorB_q(Lit(this))
               then (if DatatypeTests.RcMultiple.RcConstructorA_q(Lit(other#0))
                 then #DatatypeTests.RcMultiple.RcConstructorAB(LitInt(DatatypeTests.RcMultiple.a(Lit(other#0))), 
                  Lit(DatatypeTests.RcMultiple.b(Lit(this))))
                 else this)
               else this))));
}

function DatatypeTests.RcMultiple.Gather#canCall(this: DatatypeType, other#0: DatatypeType) : bool;

function DatatypeTests.RcMultiple.Gather#requires(DatatypeType, DatatypeType) : bool;

// #requires axiom for DatatypeTests.RcMultiple.Gather
axiom (forall this: DatatypeType, other#0: DatatypeType :: 
  { DatatypeTests.RcMultiple.Gather#requires(this, other#0) } 
  $Is(this, Tclass.DatatypeTests.RcMultiple())
       && $Is(other#0, Tclass.DatatypeTests.RcMultiple())
     ==> DatatypeTests.RcMultiple.Gather#requires(this, other#0) == true);

procedure {:verboseName "DatatypeTests.RcMultiple.Gather (well-formedness)"} CheckWellformed$$DatatypeTests.RcMultiple.Gather(this: DatatypeType
       where $Is(this, Tclass.DatatypeTests.RcMultiple())
         && $IsAlloc(this, Tclass.DatatypeTests.RcMultiple(), $Heap), 
    other#0: DatatypeType where $Is(other#0, Tclass.DatatypeTests.RcMultiple()));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DatatypeTests.RcMultiple.Gather (well-formedness)"} CheckWellformed$$DatatypeTests.RcMultiple.Gather(this: DatatypeType, other#0: DatatypeType)
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
        assume $Is(DatatypeTests.RcMultiple.Gather(this, other#0), 
          Tclass.DatatypeTests.RcMultiple());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (DatatypeTests.RcMultiple.RcConstructorAB_q(this))
        {
            assume {:id "id113"} DatatypeTests.RcMultiple.Gather(this, other#0) == this;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(DatatypeTests.RcMultiple.Gather(this, other#0), 
              Tclass.DatatypeTests.RcMultiple());
            return;
        }
        else
        {
            if (DatatypeTests.RcMultiple.RcConstructorA_q(this))
            {
                if (DatatypeTests.RcMultiple.RcConstructorB_q(other#0))
                {
                    assert {:id "id114"} DatatypeTests.RcMultiple.RcConstructorA_q(this)
                       || DatatypeTests.RcMultiple.RcConstructorAB_q(this);
                    assert {:id "id115"} DatatypeTests.RcMultiple.RcConstructorB_q(other#0)
                       || DatatypeTests.RcMultiple.RcConstructorAB_q(other#0);
                    assume {:id "id116"} DatatypeTests.RcMultiple.Gather(this, other#0)
                       == #DatatypeTests.RcMultiple.RcConstructorAB(DatatypeTests.RcMultiple.a(this), DatatypeTests.RcMultiple.b(other#0));
                    assume true;
                    // CheckWellformedWithResult: any expression
                    assume $Is(DatatypeTests.RcMultiple.Gather(this, other#0), 
                      Tclass.DatatypeTests.RcMultiple());
                    return;
                }
                else
                {
                    assume {:id "id117"} DatatypeTests.RcMultiple.Gather(this, other#0) == this;
                    assume true;
                    // CheckWellformedWithResult: any expression
                    assume $Is(DatatypeTests.RcMultiple.Gather(this, other#0), 
                      Tclass.DatatypeTests.RcMultiple());
                    return;
                }
            }
            else
            {
                if (DatatypeTests.RcMultiple.RcConstructorB_q(this))
                {
                    if (DatatypeTests.RcMultiple.RcConstructorA_q(other#0))
                    {
                        assert {:id "id118"} DatatypeTests.RcMultiple.RcConstructorA_q(other#0)
                           || DatatypeTests.RcMultiple.RcConstructorAB_q(other#0);
                        assert {:id "id119"} DatatypeTests.RcMultiple.RcConstructorB_q(this)
                           || DatatypeTests.RcMultiple.RcConstructorAB_q(this);
                        assume {:id "id120"} DatatypeTests.RcMultiple.Gather(this, other#0)
                           == #DatatypeTests.RcMultiple.RcConstructorAB(DatatypeTests.RcMultiple.a(other#0), DatatypeTests.RcMultiple.b(this));
                        assume true;
                        // CheckWellformedWithResult: any expression
                        assume $Is(DatatypeTests.RcMultiple.Gather(this, other#0), 
                          Tclass.DatatypeTests.RcMultiple());
                        return;
                    }
                    else
                    {
                        assume {:id "id121"} DatatypeTests.RcMultiple.Gather(this, other#0) == this;
                        assume true;
                        // CheckWellformedWithResult: any expression
                        assume $Is(DatatypeTests.RcMultiple.Gather(this, other#0), 
                          Tclass.DatatypeTests.RcMultiple());
                        return;
                    }
                }
                else
                {
                    assume {:id "id122"} DatatypeTests.RcMultiple.Gather(this, other#0) == this;
                    assume true;
                    // CheckWellformedWithResult: any expression
                    assume $Is(DatatypeTests.RcMultiple.Gather(this, other#0), 
                      Tclass.DatatypeTests.RcMultiple());
                    return;
                }
            }
        }

        assume false;
    }
}



// Constructor function declaration
function #DatatypeTests.Recursive.Recursive(int, DatatypeType) : DatatypeType;

const unique ##DatatypeTests.Recursive.Recursive: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: int, a#0#1#0: DatatypeType :: 
  { #DatatypeTests.Recursive.Recursive(a#0#0#0, a#0#1#0) } 
  DatatypeCtorId(#DatatypeTests.Recursive.Recursive(a#0#0#0, a#0#1#0))
     == ##DatatypeTests.Recursive.Recursive);
}

function DatatypeTests.Recursive.Recursive_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DatatypeTests.Recursive.Recursive_q(d) } 
  DatatypeTests.Recursive.Recursive_q(d)
     <==> DatatypeCtorId(d) == ##DatatypeTests.Recursive.Recursive);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DatatypeTests.Recursive.Recursive_q(d) } 
  DatatypeTests.Recursive.Recursive_q(d)
     ==> (exists a#1#0#0: int, a#1#1#0: DatatypeType :: 
      d == #DatatypeTests.Recursive.Recursive(a#1#0#0, a#1#1#0)));

// Constructor $Is
axiom (forall a#2#0#0: int, a#2#1#0: DatatypeType :: 
  { $Is(#DatatypeTests.Recursive.Recursive(a#2#0#0, a#2#1#0), 
      Tclass.DatatypeTests.Recursive()) } 
  $Is(#DatatypeTests.Recursive.Recursive(a#2#0#0, a#2#1#0), 
      Tclass.DatatypeTests.Recursive())
     <==> $Is(a#2#0#0, TInt)
       && $Is(a#2#1#0, Tclass.RustStdOption.Option(Tclass.DatatypeTests.Recursive())));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(DatatypeTests.Recursive.head(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      DatatypeTests.Recursive.Recursive_q(d)
       && $IsAlloc(d, Tclass.DatatypeTests.Recursive(), $h)
     ==> $IsAlloc(DatatypeTests.Recursive.head(d), TInt, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(DatatypeTests.Recursive.tail(d), 
      Tclass.RustStdOption.Option(Tclass.DatatypeTests.Recursive()), 
      $h) } 
  $IsGoodHeap($h)
       && 
      DatatypeTests.Recursive.Recursive_q(d)
       && $IsAlloc(d, Tclass.DatatypeTests.Recursive(), $h)
     ==> $IsAlloc(DatatypeTests.Recursive.tail(d), 
      Tclass.RustStdOption.Option(Tclass.DatatypeTests.Recursive()), 
      $h));

// Constructor literal
axiom (forall a#3#0#0: int, a#3#1#0: DatatypeType :: 
  { #DatatypeTests.Recursive.Recursive(LitInt(a#3#0#0), Lit(a#3#1#0)) } 
  #DatatypeTests.Recursive.Recursive(LitInt(a#3#0#0), Lit(a#3#1#0))
     == Lit(#DatatypeTests.Recursive.Recursive(a#3#0#0, a#3#1#0)));

function DatatypeTests.Recursive.head(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#4#0#0: int, a#4#1#0: DatatypeType :: 
  { #DatatypeTests.Recursive.Recursive(a#4#0#0, a#4#1#0) } 
  DatatypeTests.Recursive.head(#DatatypeTests.Recursive.Recursive(a#4#0#0, a#4#1#0))
     == a#4#0#0);

function DatatypeTests.Recursive.tail(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#5#0#0: int, a#5#1#0: DatatypeType :: 
  { #DatatypeTests.Recursive.Recursive(a#5#0#0, a#5#1#0) } 
  DatatypeTests.Recursive.tail(#DatatypeTests.Recursive.Recursive(a#5#0#0, a#5#1#0))
     == a#5#1#0);

// Inductive rank
axiom (forall a#6#0#0: int, a#6#1#0: DatatypeType :: 
  { #DatatypeTests.Recursive.Recursive(a#6#0#0, a#6#1#0) } 
  DtRank(a#6#1#0) < DtRank(#DatatypeTests.Recursive.Recursive(a#6#0#0, a#6#1#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.DatatypeTests.Recursive(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.DatatypeTests.Recursive())
     ==> $IsAlloc(d, Tclass.DatatypeTests.Recursive(), $h));

// Depth-one case-split function
function $IsA#DatatypeTests.Recursive(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#DatatypeTests.Recursive(d) } 
  $IsA#DatatypeTests.Recursive(d) ==> DatatypeTests.Recursive.Recursive_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { DatatypeTests.Recursive.Recursive_q(d), $Is(d, Tclass.DatatypeTests.Recursive()) } 
  $Is(d, Tclass.DatatypeTests.Recursive())
     ==> DatatypeTests.Recursive.Recursive_q(d));

// Datatype extensional equality declaration
function DatatypeTests.Recursive#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #DatatypeTests.Recursive.Recursive
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DatatypeTests.Recursive#Equal(a, b) } 
  DatatypeTests.Recursive#Equal(a, b)
     <==> DatatypeTests.Recursive.head(a) == DatatypeTests.Recursive.head(b)
       && RustStdOption.Option#Equal(DatatypeTests.Recursive.tail(a), DatatypeTests.Recursive.tail(b)));

// Datatype extensionality axiom: DatatypeTests.Recursive
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DatatypeTests.Recursive#Equal(a, b) } 
  DatatypeTests.Recursive#Equal(a, b) <==> a == b);

const unique class.DatatypeTests.Recursive: ClassName;

const unique class.RustStdOption.__default: ClassName;

// Constructor function declaration
function #RustStdOption.Option.Some(Box) : DatatypeType;

const unique ##RustStdOption.Option.Some: DtCtorId
uses {
// Constructor identifier
axiom (forall a#7#0#0: Box :: 
  { #RustStdOption.Option.Some(a#7#0#0) } 
  DatatypeCtorId(#RustStdOption.Option.Some(a#7#0#0))
     == ##RustStdOption.Option.Some);
}

function RustStdOption.Option.Some_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { RustStdOption.Option.Some_q(d) } 
  RustStdOption.Option.Some_q(d)
     <==> DatatypeCtorId(d) == ##RustStdOption.Option.Some);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { RustStdOption.Option.Some_q(d) } 
  RustStdOption.Option.Some_q(d)
     ==> (exists a#8#0#0: Box :: d == #RustStdOption.Option.Some(a#8#0#0)));

// Constructor $Is
axiom (forall RustStdOption.Option$T: Ty, a#9#0#0: Box :: 
  { $Is(#RustStdOption.Option.Some(a#9#0#0), 
      Tclass.RustStdOption.Option(RustStdOption.Option$T)) } 
  $Is(#RustStdOption.Option.Some(a#9#0#0), 
      Tclass.RustStdOption.Option(RustStdOption.Option$T))
     <==> $IsBox(a#9#0#0, RustStdOption.Option$T));

// Constructor $IsAlloc
axiom (forall RustStdOption.Option$T: Ty, a#9#0#0: Box, $h: Heap :: 
  { $IsAlloc(#RustStdOption.Option.Some(a#9#0#0), 
      Tclass.RustStdOption.Option(RustStdOption.Option$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#RustStdOption.Option.Some(a#9#0#0), 
        Tclass.RustStdOption.Option(RustStdOption.Option$T), 
        $h)
       <==> $IsAllocBox(a#9#0#0, RustStdOption.Option$T, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, RustStdOption.Option$T: Ty, $h: Heap :: 
  { $IsAllocBox(RustStdOption.Option.value(d), RustStdOption.Option$T, $h) } 
  $IsGoodHeap($h)
       && 
      RustStdOption.Option.Some_q(d)
       && $IsAlloc(d, Tclass.RustStdOption.Option(RustStdOption.Option$T), $h)
     ==> $IsAllocBox(RustStdOption.Option.value(d), RustStdOption.Option$T, $h));

// Constructor literal
axiom (forall a#10#0#0: Box :: 
  { #RustStdOption.Option.Some(Lit(a#10#0#0)) } 
  #RustStdOption.Option.Some(Lit(a#10#0#0))
     == Lit(#RustStdOption.Option.Some(a#10#0#0)));

function RustStdOption.Option.value(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#11#0#0: Box :: 
  { #RustStdOption.Option.Some(a#11#0#0) } 
  RustStdOption.Option.value(#RustStdOption.Option.Some(a#11#0#0)) == a#11#0#0);

// Inductive rank
axiom (forall a#12#0#0: Box :: 
  { #RustStdOption.Option.Some(a#12#0#0) } 
  BoxRank(a#12#0#0) < DtRank(#RustStdOption.Option.Some(a#12#0#0)));

// Constructor function declaration
function #RustStdOption.Option.None() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#RustStdOption.Option.None()) == ##RustStdOption.Option.None;
// Constructor literal
axiom #RustStdOption.Option.None() == Lit(#RustStdOption.Option.None());
}

const unique ##RustStdOption.Option.None: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#RustStdOption.Option.None()) == ##RustStdOption.Option.None;
}

function RustStdOption.Option.None_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { RustStdOption.Option.None_q(d) } 
  RustStdOption.Option.None_q(d)
     <==> DatatypeCtorId(d) == ##RustStdOption.Option.None);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { RustStdOption.Option.None_q(d) } 
  RustStdOption.Option.None_q(d) ==> d == #RustStdOption.Option.None());

// Constructor $Is
axiom (forall RustStdOption.Option$T: Ty :: 
  { $Is(#RustStdOption.Option.None(), 
      Tclass.RustStdOption.Option(RustStdOption.Option$T)) } 
  $Is(#RustStdOption.Option.None(), 
    Tclass.RustStdOption.Option(RustStdOption.Option$T)));

// Constructor $IsAlloc
axiom (forall RustStdOption.Option$T: Ty, $h: Heap :: 
  { $IsAlloc(#RustStdOption.Option.None(), 
      Tclass.RustStdOption.Option(RustStdOption.Option$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#RustStdOption.Option.None(), 
      Tclass.RustStdOption.Option(RustStdOption.Option$T), 
      $h));

// Depth-one case-split function
function $IsA#RustStdOption.Option(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#RustStdOption.Option(d) } 
  $IsA#RustStdOption.Option(d)
     ==> RustStdOption.Option.Some_q(d) || RustStdOption.Option.None_q(d));

// Questionmark data type disjunctivity
axiom (forall RustStdOption.Option$T: Ty, d: DatatypeType :: 
  { RustStdOption.Option.None_q(d), $Is(d, Tclass.RustStdOption.Option(RustStdOption.Option$T)) } 
    { RustStdOption.Option.Some_q(d), $Is(d, Tclass.RustStdOption.Option(RustStdOption.Option$T)) } 
  $Is(d, Tclass.RustStdOption.Option(RustStdOption.Option$T))
     ==> RustStdOption.Option.Some_q(d) || RustStdOption.Option.None_q(d));

// Datatype extensional equality declaration
function RustStdOption.Option#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #RustStdOption.Option.Some
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { RustStdOption.Option#Equal(a, b), RustStdOption.Option.Some_q(a) } 
    { RustStdOption.Option#Equal(a, b), RustStdOption.Option.Some_q(b) } 
  RustStdOption.Option.Some_q(a) && RustStdOption.Option.Some_q(b)
     ==> (RustStdOption.Option#Equal(a, b)
       <==> RustStdOption.Option.value(a) == RustStdOption.Option.value(b)));

// Datatype extensional equality definition: #RustStdOption.Option.None
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { RustStdOption.Option#Equal(a, b), RustStdOption.Option.None_q(a) } 
    { RustStdOption.Option#Equal(a, b), RustStdOption.Option.None_q(b) } 
  RustStdOption.Option.None_q(a) && RustStdOption.Option.None_q(b)
     ==> RustStdOption.Option#Equal(a, b));

// Datatype extensionality axiom: RustStdOption.Option
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { RustStdOption.Option#Equal(a, b) } 
  RustStdOption.Option#Equal(a, b) <==> a == b);

const unique class.RustStdOption.Option: ClassName;

const unique class.RustStdCompare.__default: ClassName;

// Constructor function declaration
function #RustStdCompare.Option.Some(Box) : DatatypeType;

const unique ##RustStdCompare.Option.Some: DtCtorId
uses {
// Constructor identifier
axiom (forall a#17#0#0: Box :: 
  { #RustStdCompare.Option.Some(a#17#0#0) } 
  DatatypeCtorId(#RustStdCompare.Option.Some(a#17#0#0))
     == ##RustStdCompare.Option.Some);
}

function RustStdCompare.Option.Some_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { RustStdCompare.Option.Some_q(d) } 
  RustStdCompare.Option.Some_q(d)
     <==> DatatypeCtorId(d) == ##RustStdCompare.Option.Some);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { RustStdCompare.Option.Some_q(d) } 
  RustStdCompare.Option.Some_q(d)
     ==> (exists a#18#0#0: Box :: d == #RustStdCompare.Option.Some(a#18#0#0)));

// Constructor $Is
axiom (forall RustStdCompare.Option$T: Ty, a#19#0#0: Box :: 
  { $Is(#RustStdCompare.Option.Some(a#19#0#0), 
      Tclass.RustStdCompare.Option(RustStdCompare.Option$T)) } 
  $Is(#RustStdCompare.Option.Some(a#19#0#0), 
      Tclass.RustStdCompare.Option(RustStdCompare.Option$T))
     <==> $IsBox(a#19#0#0, RustStdCompare.Option$T));

// Constructor $IsAlloc
axiom (forall RustStdCompare.Option$T: Ty, a#19#0#0: Box, $h: Heap :: 
  { $IsAlloc(#RustStdCompare.Option.Some(a#19#0#0), 
      Tclass.RustStdCompare.Option(RustStdCompare.Option$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#RustStdCompare.Option.Some(a#19#0#0), 
        Tclass.RustStdCompare.Option(RustStdCompare.Option$T), 
        $h)
       <==> $IsAllocBox(a#19#0#0, RustStdCompare.Option$T, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, RustStdCompare.Option$T: Ty, $h: Heap :: 
  { $IsAllocBox(RustStdCompare.Option.value(d), RustStdCompare.Option$T, $h) } 
  $IsGoodHeap($h)
       && 
      RustStdCompare.Option.Some_q(d)
       && $IsAlloc(d, Tclass.RustStdCompare.Option(RustStdCompare.Option$T), $h)
     ==> $IsAllocBox(RustStdCompare.Option.value(d), RustStdCompare.Option$T, $h));

// Constructor literal
axiom (forall a#20#0#0: Box :: 
  { #RustStdCompare.Option.Some(Lit(a#20#0#0)) } 
  #RustStdCompare.Option.Some(Lit(a#20#0#0))
     == Lit(#RustStdCompare.Option.Some(a#20#0#0)));

function RustStdCompare.Option.value(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#21#0#0: Box :: 
  { #RustStdCompare.Option.Some(a#21#0#0) } 
  RustStdCompare.Option.value(#RustStdCompare.Option.Some(a#21#0#0)) == a#21#0#0);

// Inductive rank
axiom (forall a#22#0#0: Box :: 
  { #RustStdCompare.Option.Some(a#22#0#0) } 
  BoxRank(a#22#0#0) < DtRank(#RustStdCompare.Option.Some(a#22#0#0)));

// Constructor function declaration
function #RustStdCompare.Option.None() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#RustStdCompare.Option.None()) == ##RustStdCompare.Option.None;
// Constructor literal
axiom #RustStdCompare.Option.None() == Lit(#RustStdCompare.Option.None());
}

const unique ##RustStdCompare.Option.None: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#RustStdCompare.Option.None()) == ##RustStdCompare.Option.None;
}

function RustStdCompare.Option.None_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { RustStdCompare.Option.None_q(d) } 
  RustStdCompare.Option.None_q(d)
     <==> DatatypeCtorId(d) == ##RustStdCompare.Option.None);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { RustStdCompare.Option.None_q(d) } 
  RustStdCompare.Option.None_q(d) ==> d == #RustStdCompare.Option.None());

// Constructor $Is
axiom (forall RustStdCompare.Option$T: Ty :: 
  { $Is(#RustStdCompare.Option.None(), 
      Tclass.RustStdCompare.Option(RustStdCompare.Option$T)) } 
  $Is(#RustStdCompare.Option.None(), 
    Tclass.RustStdCompare.Option(RustStdCompare.Option$T)));

// Constructor $IsAlloc
axiom (forall RustStdCompare.Option$T: Ty, $h: Heap :: 
  { $IsAlloc(#RustStdCompare.Option.None(), 
      Tclass.RustStdCompare.Option(RustStdCompare.Option$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#RustStdCompare.Option.None(), 
      Tclass.RustStdCompare.Option(RustStdCompare.Option$T), 
      $h));

// Depth-one case-split function
function $IsA#RustStdCompare.Option(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#RustStdCompare.Option(d) } 
  $IsA#RustStdCompare.Option(d)
     ==> RustStdCompare.Option.Some_q(d) || RustStdCompare.Option.None_q(d));

// Questionmark data type disjunctivity
axiom (forall RustStdCompare.Option$T: Ty, d: DatatypeType :: 
  { RustStdCompare.Option.None_q(d), $Is(d, Tclass.RustStdCompare.Option(RustStdCompare.Option$T)) } 
    { RustStdCompare.Option.Some_q(d), $Is(d, Tclass.RustStdCompare.Option(RustStdCompare.Option$T)) } 
  $Is(d, Tclass.RustStdCompare.Option(RustStdCompare.Option$T))
     ==> RustStdCompare.Option.Some_q(d) || RustStdCompare.Option.None_q(d));

// Datatype extensional equality declaration
function RustStdCompare.Option#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #RustStdCompare.Option.Some
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { RustStdCompare.Option#Equal(a, b), RustStdCompare.Option.Some_q(a) } 
    { RustStdCompare.Option#Equal(a, b), RustStdCompare.Option.Some_q(b) } 
  RustStdCompare.Option.Some_q(a) && RustStdCompare.Option.Some_q(b)
     ==> (RustStdCompare.Option#Equal(a, b)
       <==> RustStdCompare.Option.value(a) == RustStdCompare.Option.value(b)));

// Datatype extensional equality definition: #RustStdCompare.Option.None
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { RustStdCompare.Option#Equal(a, b), RustStdCompare.Option.None_q(a) } 
    { RustStdCompare.Option#Equal(a, b), RustStdCompare.Option.None_q(b) } 
  RustStdCompare.Option.None_q(a) && RustStdCompare.Option.None_q(b)
     ==> RustStdCompare.Option#Equal(a, b));

// Datatype extensionality axiom: RustStdCompare.Option
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { RustStdCompare.Option#Equal(a, b) } 
  RustStdCompare.Option#Equal(a, b) <==> a == b);

const unique class.RustStdCompare.Option: ClassName;

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

const unique tytagFamily$u8: TyTagFamily;

const unique tytagFamily$Option: TyTagFamily;

const unique tytagFamily$NoArg: TyTagFamily;

const unique tytagFamily$AlmostOption: TyTagFamily;

const unique tytagFamily$Peano: TyTagFamily;

const unique tytagFamily$Multiple: TyTagFamily;

const unique tytagFamily$Struct: TyTagFamily;

const unique tytagFamily$RcMultiple: TyTagFamily;

const unique tytagFamily$RcStruct: TyTagFamily;

const unique tytagFamily$Recursive: TyTagFamily;

const unique tytagFamily$AlmostOptionWrapper: TyTagFamily;

const unique tytagFamily$GenericOption: TyTagFamily;
