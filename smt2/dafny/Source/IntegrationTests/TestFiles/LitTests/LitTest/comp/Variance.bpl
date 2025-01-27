// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance-@PROC@.smt2 /normalizeNames:0 /emitDebugInformation:1 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy

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

procedure {:verboseName "Covariant (well-formedness)"} CheckWellFormed$$_module.__default.Covariant();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Covariant (call)"} Call$$_module.__default.Covariant();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Covariant (correctness)"} Impl$$_module.__default.Covariant() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.Int() : Ty
uses {
// Tclass._module.Int Tag
axiom Tag(Tclass._module.Int()) == Tagclass._module.Int
   && TagFamily(Tclass._module.Int()) == tytagFamily$Int;
}

const unique Tagclass._module.Int: TyTag;

// Box/unbox axiom for Tclass._module.Int
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Int()) } 
  $IsBox(bx, Tclass._module.Int())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Int()));

function Tclass._module.Co(Ty) : Ty;

const unique Tagclass._module.Co: TyTag;

// Tclass._module.Co Tag
axiom (forall _module.Co$T: Ty :: 
  { Tclass._module.Co(_module.Co$T) } 
  Tag(Tclass._module.Co(_module.Co$T)) == Tagclass._module.Co
     && TagFamily(Tclass._module.Co(_module.Co$T)) == tytagFamily$Co);

function Tclass._module.Co_0(Ty) : Ty;

// Tclass._module.Co injectivity 0
axiom (forall _module.Co$T: Ty :: 
  { Tclass._module.Co(_module.Co$T) } 
  Tclass._module.Co_0(Tclass._module.Co(_module.Co$T)) == _module.Co$T);

// Box/unbox axiom for Tclass._module.Co
axiom (forall _module.Co$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Co(_module.Co$T)) } 
  $IsBox(bx, Tclass._module.Co(_module.Co$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Co(_module.Co$T)));

function Tclass._module.X() : Ty
uses {
// Tclass._module.X Tag
axiom Tag(Tclass._module.X()) == Tagclass._module.X
   && TagFamily(Tclass._module.X()) == tytagFamily$X;
}

const unique Tagclass._module.X: TyTag;

// Box/unbox axiom for Tclass._module.X
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.X()) } 
  $IsBox(bx, Tclass._module.X())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.X()));

function _module.Co.x(_module.Co$T: Ty, this: DatatypeType) : int
uses {
// Co.x: Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.Co$T: Ty, $o: DatatypeType :: 
    { _module.Co.x(_module.Co$T, $o) } 
    $Is($o, Tclass._module.Co(_module.Co$T))
       ==> $Is(_module.Co.x(_module.Co$T, $o), TInt));
// Co.x: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.Co$T: Ty, $h: Heap, $o: DatatypeType :: 
    { _module.Co.x(_module.Co$T, $o), $IsAlloc($o, Tclass._module.Co(_module.Co$T), $h) } 
    $IsGoodHeap($h)
         && $Is($o, Tclass._module.Co(_module.Co$T))
         && $IsAlloc($o, Tclass._module.Co(_module.Co$T), $h)
       ==> $IsAlloc(_module.Co.x(_module.Co$T, $o), TInt, $h));
}

function _module.Co.y(_module.Co$T: Ty, this: DatatypeType) : Seq
uses {
// Co.y: Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.Co$T: Ty, $o: DatatypeType :: 
    { _module.Co.y(_module.Co$T, $o) } 
    $Is($o, Tclass._module.Co(_module.Co$T))
       ==> $Is(_module.Co.y(_module.Co$T, $o), TSeq(_module.Co$T)));
// Co.y: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.Co$T: Ty, $h: Heap, $o: DatatypeType :: 
    { _module.Co.y(_module.Co$T, $o), $IsAlloc($o, Tclass._module.Co(_module.Co$T), $h) } 
    $IsGoodHeap($h)
         && $Is($o, Tclass._module.Co(_module.Co$T))
         && $IsAlloc($o, Tclass._module.Co(_module.Co$T), $h)
       ==> $IsAlloc(_module.Co.y(_module.Co$T, $o), TSeq(_module.Co$T), $h));
}

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Covariant (correctness)"} Impl$$_module.__default.Covariant() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#i#0: bool;
  var i#0: ref
     where defass#i#0
       ==> $Is(i#0, Tclass._module.Int()) && $IsAlloc(i#0, Tclass._module.Int(), $Heap);
  var $nw: ref;
  var defass#a#0: bool;
  var a#0: DatatypeType
     where defass#a#0
       ==> $Is(a#0, Tclass._module.Co(Tclass._module.Int()))
         && $IsAlloc(a#0, Tclass._module.Co(Tclass._module.Int()), $Heap);
  var defass#b#0: bool;
  var b#0: DatatypeType
     where defass#b#0
       ==> $Is(b#0, Tclass._module.Co(Tclass._module.X()))
         && $IsAlloc(b#0, Tclass._module.Co(Tclass._module.X()), $Heap);
  var s#0: DatatypeType
     where $Is(s#0, Tclass._module.Co(TBool))
       && $IsAlloc(s#0, Tclass._module.Co(TBool), $Heap);
  var t#0: bool;
  var $rhs##0: bool;
  var x##0: bool;
  var $tmp##0: Box;
  var y#0: int;
  var $rhs##1: int;
  var x##1: bool;
  var ##x#0: int;
  var ##x#1: Seq;
  var ##x#2: bool;
  var ##x#3: bool;
  var ##x#4: bool;

    // AddMethodImpl: Covariant, Impl$$_module.__default.Covariant
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(100,9)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(100,20)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id0"} $nw := Call$$_module.Int._Int();
    // TrCallStmt: After ProcessCallStmt
    i#0 := $nw;
    defass#i#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(101,18)
    assume true;
    assert {:id "id2"} defass#i#0;
    assume true;
    a#0 := #_module.Co.Co($Box(i#0));
    defass#a#0 := true;
    havoc b#0 /* where defass#b#0
       ==> $Is(b#0, Tclass._module.Co(Tclass._module.X()))
         && $IsAlloc(b#0, Tclass._module.Co(Tclass._module.X()), $Heap) */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(103,5)
    assume true;
    assert {:id "id4"} defass#a#0;
    assume true;
    b#0 := a#0;
    defass#b#0 := true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(104,3)
    assert {:id "id6"} defass#a#0;
    assume true;
    assume true;
    assert {:id "id7"} defass#b#0;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(106,9)
    assume true;
    assume true;
    s#0 := Lit(#_module.Co.Co($Box(Lit(false))));
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(107,16)
    assume true;
    // TrCallStmt: Adding lhs with type bool
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := Lit(true);
    call {:id "id9"} $tmp##0 := Call$$_module.Co.mD(TBool, s#0, $Box(x##0));
    havoc $rhs##0;
    assume $rhs##0 == $Unbox($tmp##0): bool;
    // TrCallStmt: After ProcessCallStmt
    t#0 := $rhs##0;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(108,16)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##1 := t#0;
    call {:id "id11"} $rhs##1 := Call$$_module.Co.mA(TBool, s#0, $Box(x##1));
    // TrCallStmt: After ProcessCallStmt
    y#0 := $rhs##1;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(109,3)
    assume true;
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(s#0), Tclass._module.Co(TBool), $Heap);
    ##x#0 := _module.Co.x(TBool, s#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#0, TInt, $Heap);
    assume _module.Co.C#canCall(TBool, s#0, _module.Co.x(TBool, s#0));
    assume _module.Co.C#canCall(TBool, s#0, _module.Co.x(TBool, s#0));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(s#0), Tclass._module.Co(TBool), $Heap);
    ##x#1 := _module.Co.y(TBool, s#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#1, TSeq(TBool), $Heap);
    assume _module.Co.B#canCall(TBool, s#0, _module.Co.y(TBool, s#0));
    assume _module.Co.B#canCall(TBool, s#0, _module.Co.y(TBool, s#0));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(s#0), Tclass._module.Co(TBool), $Heap);
    ##x#2 := t#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#2, TBool, $Heap);
    assume _module.Co.A#canCall(TBool, s#0, $Box(t#0));
    assume _module.Co.A#canCall(TBool, s#0, $Box(t#0));
    ##x#3 := t#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#3, TBool, $Heap);
    assume _module.Co.sA#canCall(TBool, $Box(t#0));
    assume _module.Co.sA#canCall(TBool, $Box(t#0));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(s#0), Tclass._module.Co(TBool), $Heap);
    ##x#4 := t#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#4, TBool, $Heap);
    assume _module.Co.gA#canCall(TBool, s#0, $Box(t#0));
    assume _module.Co.gA#canCall(TBool, s#0, $Box(t#0));
    assume true;
}



procedure {:verboseName "Nonvariant (well-formedness)"} CheckWellFormed$$_module.__default.Nonvariant();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Nonvariant (call)"} Call$$_module.__default.Nonvariant();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Nonvariant (correctness)"} Impl$$_module.__default.Nonvariant() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.Non(Ty) : Ty;

const unique Tagclass._module.Non: TyTag;

// Tclass._module.Non Tag
axiom (forall _module.Non$T: Ty :: 
  { Tclass._module.Non(_module.Non$T) } 
  Tag(Tclass._module.Non(_module.Non$T)) == Tagclass._module.Non
     && TagFamily(Tclass._module.Non(_module.Non$T)) == tytagFamily$Non);

function Tclass._module.Non_0(Ty) : Ty;

// Tclass._module.Non injectivity 0
axiom (forall _module.Non$T: Ty :: 
  { Tclass._module.Non(_module.Non$T) } 
  Tclass._module.Non_0(Tclass._module.Non(_module.Non$T)) == _module.Non$T);

// Box/unbox axiom for Tclass._module.Non
axiom (forall _module.Non$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Non(_module.Non$T)) } 
  $IsBox(bx, Tclass._module.Non(_module.Non$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Non(_module.Non$T)));

function _module.Non.x(_module.Non$T: Ty, this: DatatypeType) : int
uses {
// Non.x: Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.Non$T: Ty, $o: DatatypeType :: 
    { _module.Non.x(_module.Non$T, $o) } 
    $Is($o, Tclass._module.Non(_module.Non$T))
       ==> $Is(_module.Non.x(_module.Non$T, $o), TInt));
// Non.x: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.Non$T: Ty, $h: Heap, $o: DatatypeType :: 
    { _module.Non.x(_module.Non$T, $o), $IsAlloc($o, Tclass._module.Non(_module.Non$T), $h) } 
    $IsGoodHeap($h)
         && $Is($o, Tclass._module.Non(_module.Non$T))
         && $IsAlloc($o, Tclass._module.Non(_module.Non$T), $h)
       ==> $IsAlloc(_module.Non.x(_module.Non$T, $o), TInt, $h));
}

function _module.Non.y(_module.Non$T: Ty, this: DatatypeType) : Seq
uses {
// Non.y: Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.Non$T: Ty, $o: DatatypeType :: 
    { _module.Non.y(_module.Non$T, $o) } 
    $Is($o, Tclass._module.Non(_module.Non$T))
       ==> $Is(_module.Non.y(_module.Non$T, $o), TSeq(_module.Non$T)));
// Non.y: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.Non$T: Ty, $h: Heap, $o: DatatypeType :: 
    { _module.Non.y(_module.Non$T, $o), $IsAlloc($o, Tclass._module.Non(_module.Non$T), $h) } 
    $IsGoodHeap($h)
         && $Is($o, Tclass._module.Non(_module.Non$T))
         && $IsAlloc($o, Tclass._module.Non(_module.Non$T), $h)
       ==> $IsAlloc(_module.Non.y(_module.Non$T, $o), TSeq(_module.Non$T), $h));
}

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Nonvariant (correctness)"} Impl$$_module.__default.Nonvariant() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#i#0: bool;
  var i#0: ref
     where defass#i#0
       ==> $Is(i#0, Tclass._module.Int()) && $IsAlloc(i#0, Tclass._module.Int(), $Heap);
  var $nw: ref;
  var defass#j#0: bool;
  var j#0: ref
     where defass#j#0
       ==> $Is(j#0, Tclass._module.Int()) && $IsAlloc(j#0, Tclass._module.Int(), $Heap);
  var defass#a#0: bool;
  var a#0: DatatypeType
     where defass#a#0
       ==> $Is(a#0, Tclass._module.Non(Tclass._module.Int()))
         && $IsAlloc(a#0, Tclass._module.Non(Tclass._module.Int()), $Heap);
  var defass#b#0: bool;
  var b#0: DatatypeType
     where defass#b#0
       ==> $Is(b#0, Tclass._module.Non(Tclass._module.Int()))
         && $IsAlloc(b#0, Tclass._module.Non(Tclass._module.Int()), $Heap);
  var s#0: DatatypeType
     where $Is(s#0, Tclass._module.Non(TBool))
       && $IsAlloc(s#0, Tclass._module.Non(TBool), $Heap);
  var t#0: bool;
  var $rhs##0: bool;
  var x##0: bool;
  var $tmp##0: Box;
  var y#0: int;
  var $rhs##1: int;
  var x##1: bool;
  var ##x#0: int;
  var ##x#1: Seq;
  var ##x#2: bool;
  var ##x#3: bool;
  var ##x#4: bool;

    // AddMethodImpl: Nonvariant, Impl$$_module.__default.Nonvariant
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(113,9)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(113,20)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id13"} $nw := Call$$_module.Int._Int();
    // TrCallStmt: After ProcessCallStmt
    i#0 := $nw;
    defass#i#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(114,9)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(114,20)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id15"} $nw := Call$$_module.Int._Int();
    // TrCallStmt: After ProcessCallStmt
    j#0 := $nw;
    defass#j#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(115,19)
    assume true;
    assert {:id "id17"} defass#i#0;
    assume true;
    a#0 := #_module.Non.Non($Box(i#0));
    defass#a#0 := true;
    havoc b#0 /* where defass#b#0
       ==> $Is(b#0, Tclass._module.Non(Tclass._module.Int()))
         && $IsAlloc(b#0, Tclass._module.Non(Tclass._module.Int()), $Heap) */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(117,5)
    assume true;
    assert {:id "id19"} defass#a#0;
    assume true;
    b#0 := a#0;
    defass#b#0 := true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(118,3)
    assert {:id "id21"} defass#a#0;
    assume true;
    assume true;
    assert {:id "id22"} defass#b#0;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(120,9)
    assume true;
    assume true;
    s#0 := Lit(#_module.Non.Non($Box(Lit(false))));
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(121,16)
    assume true;
    // TrCallStmt: Adding lhs with type bool
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := Lit(true);
    call {:id "id24"} $tmp##0 := Call$$_module.Non.mD(TBool, s#0, $Box(x##0));
    havoc $rhs##0;
    assume $rhs##0 == $Unbox($tmp##0): bool;
    // TrCallStmt: After ProcessCallStmt
    t#0 := $rhs##0;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(122,16)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##1 := t#0;
    call {:id "id26"} $rhs##1 := Call$$_module.Non.mA(TBool, s#0, $Box(x##1));
    // TrCallStmt: After ProcessCallStmt
    y#0 := $rhs##1;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(123,3)
    assume true;
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(s#0), Tclass._module.Non(TBool), $Heap);
    ##x#0 := _module.Non.x(TBool, s#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#0, TInt, $Heap);
    assume _module.Non.C#canCall(TBool, s#0, _module.Non.x(TBool, s#0));
    assume _module.Non.C#canCall(TBool, s#0, _module.Non.x(TBool, s#0));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(s#0), Tclass._module.Non(TBool), $Heap);
    ##x#1 := _module.Non.y(TBool, s#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#1, TSeq(TBool), $Heap);
    assume _module.Non.B#canCall(TBool, s#0, _module.Non.y(TBool, s#0));
    assume _module.Non.B#canCall(TBool, s#0, _module.Non.y(TBool, s#0));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(s#0), Tclass._module.Non(TBool), $Heap);
    ##x#2 := t#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#2, TBool, $Heap);
    assume _module.Non.A#canCall(TBool, s#0, $Box(t#0));
    assume _module.Non.A#canCall(TBool, s#0, $Box(t#0));
    ##x#3 := t#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#3, TBool, $Heap);
    assume _module.Non.sA#canCall(TBool, $Box(t#0));
    assume _module.Non.sA#canCall(TBool, $Box(t#0));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(s#0), Tclass._module.Non(TBool), $Heap);
    ##x#4 := t#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#4, TBool, $Heap);
    assume _module.Non.gA#canCall(TBool, s#0, $Box(t#0));
    assume _module.Non.gA#canCall(TBool, s#0, $Box(t#0));
    assume true;
}



procedure {:verboseName "Contravariant (well-formedness)"} CheckWellFormed$$_module.__default.Contravariant();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Contravariant (call)"} Call$$_module.__default.Contravariant();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Contravariant (correctness)"} Impl$$_module.__default.Contravariant() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.Cont(Ty) : Ty;

const unique Tagclass._module.Cont: TyTag;

// Tclass._module.Cont Tag
axiom (forall _module.Cont$T: Ty :: 
  { Tclass._module.Cont(_module.Cont$T) } 
  Tag(Tclass._module.Cont(_module.Cont$T)) == Tagclass._module.Cont
     && TagFamily(Tclass._module.Cont(_module.Cont$T)) == tytagFamily$Cont);

function Tclass._module.Cont_0(Ty) : Ty;

// Tclass._module.Cont injectivity 0
axiom (forall _module.Cont$T: Ty :: 
  { Tclass._module.Cont(_module.Cont$T) } 
  Tclass._module.Cont_0(Tclass._module.Cont(_module.Cont$T)) == _module.Cont$T);

// Box/unbox axiom for Tclass._module.Cont
axiom (forall _module.Cont$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Cont(_module.Cont$T)) } 
  $IsBox(bx, Tclass._module.Cont(_module.Cont$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Cont(_module.Cont$T)));

function _module.Cont.x(_module.Cont$T: Ty, this: DatatypeType) : int
uses {
// Cont.x: Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.Cont$T: Ty, $o: DatatypeType :: 
    { _module.Cont.x(_module.Cont$T, $o) } 
    $Is($o, Tclass._module.Cont(_module.Cont$T))
       ==> $Is(_module.Cont.x(_module.Cont$T, $o), TInt));
// Cont.x: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.Cont$T: Ty, $h: Heap, $o: DatatypeType :: 
    { _module.Cont.x(_module.Cont$T, $o), $IsAlloc($o, Tclass._module.Cont(_module.Cont$T), $h) } 
    $IsGoodHeap($h)
         && $Is($o, Tclass._module.Cont(_module.Cont$T))
         && $IsAlloc($o, Tclass._module.Cont(_module.Cont$T), $h)
       ==> $IsAlloc(_module.Cont.x(_module.Cont$T, $o), TInt, $h));
}

function _module.Cont.y(_module.Cont$T: Ty, this: DatatypeType) : Seq
uses {
// Cont.y: Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.Cont$T: Ty, $o: DatatypeType :: 
    { _module.Cont.y(_module.Cont$T, $o) } 
    $Is($o, Tclass._module.Cont(_module.Cont$T))
       ==> $Is(_module.Cont.y(_module.Cont$T, $o), TSeq(_module.Cont$T)));
// Cont.y: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.Cont$T: Ty, $h: Heap, $o: DatatypeType :: 
    { _module.Cont.y(_module.Cont$T, $o), $IsAlloc($o, Tclass._module.Cont(_module.Cont$T), $h) } 
    $IsGoodHeap($h)
         && $Is($o, Tclass._module.Cont(_module.Cont$T))
         && $IsAlloc($o, Tclass._module.Cont(_module.Cont$T), $h)
       ==> $IsAlloc(_module.Cont.y(_module.Cont$T, $o), TSeq(_module.Cont$T), $h));
}

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Contravariant (correctness)"} Impl$$_module.__default.Contravariant() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#i#0: bool;
  var i#0: ref
     where defass#i#0
       ==> $Is(i#0, Tclass._module.Int()) && $IsAlloc(i#0, Tclass._module.Int(), $Heap);
  var $nw: ref;
  var a#0: DatatypeType
     where $Is(a#0, Tclass._module.Cont(Tclass._module.X()))
       && $IsAlloc(a#0, Tclass._module.Cont(Tclass._module.X()), $Heap);
  var $lambdaHeap#0: Heap;
  var _v3#0: ref;
  var $_Frame#l0: [ref,Field]bool;
  var lambdaResult#0: int;
  var b#0: DatatypeType
     where $Is(b#0, Tclass._module.Cont(Tclass._module.Int()))
       && $IsAlloc(b#0, Tclass._module.Cont(Tclass._module.Int()), $Heap);
  var s#0: DatatypeType
     where $Is(s#0, Tclass._module.Cont(Tclass._module.X()))
       && $IsAlloc(s#0, Tclass._module.Cont(Tclass._module.X()), $Heap);
  var $lambdaHeap#1: Heap;
  var _v4#0: ref;
  var $_Frame#l1: [ref,Field]bool;
  var lambdaResult#1: int;
  var defass#t#0: bool;
  var t#0: ref
     where defass#t#0
       ==> $Is(t#0, Tclass._module.X()) && $IsAlloc(t#0, Tclass._module.X(), $Heap);
  var $rhs##0: ref;
  var x##0: ref;
  var $tmp##0: Box;
  var y#0: int;
  var $rhs##1: int;
  var x##1: ref;
  var ##x#0: int;
  var ##x#1: Seq;
  var ##x#2: ref;
  var ##x#3: ref;
  var ##x#4: ref;

    // AddMethodImpl: Contravariant, Impl$$_module.__default.Contravariant
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(127,9)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(127,20)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id28"} $nw := Call$$_module.Int._Int();
    // TrCallStmt: After ProcessCallStmt
    i#0 := $nw;
    defass#i#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(128,18)
    assume true;
    // Begin Comprehension WF check
    if (*)
    {
        havoc $lambdaHeap#0;
        assume $IsGoodHeap($lambdaHeap#0);
        assume $Heap == $lambdaHeap#0 || $HeapSucc($Heap, $lambdaHeap#0);
        havoc _v3#0;
        if ($Is(_v3#0, Tclass._module.X())
           && $IsAlloc(_v3#0, Tclass._module.X(), $lambdaHeap#0))
        {
            $_Frame#l0 := (lambda $o: ref, $f: Field :: 
              $o != null && $Unbox(read($lambdaHeap#0, $o, alloc)): bool ==> false);
            assume {:id "id30"} lambdaResult#0 == LitInt(0);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(lambdaResult#0, TInt);
        }

        assume false;
    }

    // End Comprehension WF check
    assume true;
    a#0 := Lit(#_module.Cont.Cont(Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
              Handle1((lambda $l#0#heap#0: Heap, $l#0#_v3#0: Box :: $Box(LitInt(0))), 
                (lambda $l#0#heap#0: Heap, $l#0#_v3#0: Box :: 
                  $IsBox($l#0#_v3#0, Tclass._module.X())), 
                (lambda $l#0#heap#0: Heap, $l#0#_v3#0: Box :: 
                  SetRef_to_SetBox((lambda $l#0#o#0: ref :: false))))), 
            $LS($LZ)))));
    havoc b#0 /* where $Is(b#0, Tclass._module.Cont(Tclass._module.Int()))
       && $IsAlloc(b#0, Tclass._module.Cont(Tclass._module.Int()), $Heap) */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(130,5)
    assume true;
    assume true;
    b#0 := a#0;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(131,3)
    assume _module.Cont.Cont_q(a#0);
    assert {:id "id33"} defass#i#0;
    assume _module.Cont.Cont_q(a#0);
    assume true;
    assume _module.Cont.Cont_q(b#0);
    assert {:id "id34"} defass#i#0;
    assume _module.Cont.Cont_q(b#0);
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(133,18)
    assume true;
    // Begin Comprehension WF check
    if (*)
    {
        havoc $lambdaHeap#1;
        assume $IsGoodHeap($lambdaHeap#1);
        assume $Heap == $lambdaHeap#1 || $HeapSucc($Heap, $lambdaHeap#1);
        havoc _v4#0;
        if ($Is(_v4#0, Tclass._module.X())
           && $IsAlloc(_v4#0, Tclass._module.X(), $lambdaHeap#1))
        {
            $_Frame#l1 := (lambda $o: ref, $f: Field :: 
              $o != null && $Unbox(read($lambdaHeap#1, $o, alloc)): bool ==> false);
            assume {:id "id35"} lambdaResult#1 == LitInt(1);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(lambdaResult#1, TInt);
        }

        assume false;
    }

    // End Comprehension WF check
    assume true;
    s#0 := Lit(#_module.Cont.Cont(Lit(AtLayer((lambda $l#3#ly#0: LayerType :: 
              Handle1((lambda $l#3#heap#0: Heap, $l#3#_v4#0: Box :: $Box(LitInt(1))), 
                (lambda $l#3#heap#0: Heap, $l#3#_v4#0: Box :: 
                  $IsBox($l#3#_v4#0, Tclass._module.X())), 
                (lambda $l#3#heap#0: Heap, $l#3#_v4#0: Box :: 
                  SetRef_to_SetBox((lambda $l#3#o#0: ref :: false))))), 
            $LS($LZ)))));
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(134,16)
    assume true;
    // TrCallStmt: Adding lhs with type X
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id37"} defass#i#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := i#0;
    call {:id "id38"} $tmp##0 := Call$$_module.Cont.mD(Tclass._module.X(), s#0, $Box(x##0));
    havoc $rhs##0;
    assume $rhs##0 == $Unbox($tmp##0): ref;
    // TrCallStmt: After ProcessCallStmt
    t#0 := $rhs##0;
    defass#t#0 := true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(135,16)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id40"} defass#t#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##1 := t#0;
    call {:id "id41"} $rhs##1 := Call$$_module.Cont.mA(Tclass._module.X(), s#0, $Box(x##1));
    // TrCallStmt: After ProcessCallStmt
    y#0 := $rhs##1;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(136,3)
    assert {:id "id43"} defass#t#0;
    assume true;
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(s#0), Tclass._module.Cont(Tclass._module.X()), $Heap);
    ##x#0 := _module.Cont.x(Tclass._module.X(), s#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#0, TInt, $Heap);
    assume _module.Cont.C#canCall(Tclass._module.X(), s#0, _module.Cont.x(Tclass._module.X(), s#0));
    assume _module.Cont.C#canCall(Tclass._module.X(), s#0, _module.Cont.x(Tclass._module.X(), s#0));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(s#0), Tclass._module.Cont(Tclass._module.X()), $Heap);
    ##x#1 := _module.Cont.y(Tclass._module.X(), s#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#1, TSeq(Tclass._module.X()), $Heap);
    assume _module.Cont.B#canCall(Tclass._module.X(), s#0, _module.Cont.y(Tclass._module.X(), s#0));
    assume _module.Cont.B#canCall(Tclass._module.X(), s#0, _module.Cont.y(Tclass._module.X(), s#0));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(s#0), Tclass._module.Cont(Tclass._module.X()), $Heap);
    assert {:id "id44"} defass#t#0;
    ##x#2 := t#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#2, Tclass._module.X(), $Heap);
    assume _module.Cont.A#canCall(Tclass._module.X(), s#0, $Box(t#0));
    assume _module.Cont.A#canCall(Tclass._module.X(), s#0, $Box(t#0));
    assert {:id "id45"} defass#t#0;
    ##x#3 := t#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#3, Tclass._module.X(), $Heap);
    assume _module.Cont.sA#canCall(Tclass._module.X(), $Box(t#0));
    assume _module.Cont.sA#canCall(Tclass._module.X(), $Box(t#0));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(s#0), Tclass._module.Cont(Tclass._module.X()), $Heap);
    assert {:id "id46"} defass#t#0;
    ##x#4 := t#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#4, Tclass._module.X(), $Heap);
    assume _module.Cont.gA#canCall(Tclass._module.X(), s#0, $Box(t#0));
    assume _module.Cont.gA#canCall(Tclass._module.X(), s#0, $Box(t#0));
    assume true;
}



procedure {:verboseName "CCovariant (well-formedness)"} CheckWellFormed$$_module.__default.CCovariant();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "CCovariant (call)"} Call$$_module.__default.CCovariant();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "CCovariant (correctness)"} Impl$$_module.__default.CCovariant() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.CCo(Ty) : Ty;

const unique Tagclass._module.CCo: TyTag;

// Tclass._module.CCo Tag
axiom (forall _module.CCo$T: Ty :: 
  { Tclass._module.CCo(_module.CCo$T) } 
  Tag(Tclass._module.CCo(_module.CCo$T)) == Tagclass._module.CCo
     && TagFamily(Tclass._module.CCo(_module.CCo$T)) == tytagFamily$CCo);

function Tclass._module.CCo_0(Ty) : Ty;

// Tclass._module.CCo injectivity 0
axiom (forall _module.CCo$T: Ty :: 
  { Tclass._module.CCo(_module.CCo$T) } 
  Tclass._module.CCo_0(Tclass._module.CCo(_module.CCo$T)) == _module.CCo$T);

// Box/unbox axiom for Tclass._module.CCo
axiom (forall _module.CCo$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.CCo(_module.CCo$T)) } 
  $IsBox(bx, Tclass._module.CCo(_module.CCo$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.CCo(_module.CCo$T)));

function _module.CCo.x(_module.CCo$T: Ty, this: DatatypeType) : int
uses {
// CCo.x: Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.CCo$T: Ty, $o: DatatypeType :: 
    { _module.CCo.x(_module.CCo$T, $o) } 
    $Is($o, Tclass._module.CCo(_module.CCo$T))
       ==> $Is(_module.CCo.x(_module.CCo$T, $o), TInt));
// CCo.x: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.CCo$T: Ty, $h: Heap, $o: DatatypeType :: 
    { _module.CCo.x(_module.CCo$T, $o), $IsAlloc($o, Tclass._module.CCo(_module.CCo$T), $h) } 
    $IsGoodHeap($h)
         && $Is($o, Tclass._module.CCo(_module.CCo$T))
         && $IsAlloc($o, Tclass._module.CCo(_module.CCo$T), $h)
       ==> $IsAlloc(_module.CCo.x(_module.CCo$T, $o), TInt, $h));
}

function _module.CCo.y(_module.CCo$T: Ty, this: DatatypeType) : Seq
uses {
// CCo.y: Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.CCo$T: Ty, $o: DatatypeType :: 
    { _module.CCo.y(_module.CCo$T, $o) } 
    $Is($o, Tclass._module.CCo(_module.CCo$T))
       ==> $Is(_module.CCo.y(_module.CCo$T, $o), TSeq(_module.CCo$T)));
// CCo.y: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.CCo$T: Ty, $h: Heap, $o: DatatypeType :: 
    { _module.CCo.y(_module.CCo$T, $o), $IsAlloc($o, Tclass._module.CCo(_module.CCo$T), $h) } 
    $IsGoodHeap($h)
         && $Is($o, Tclass._module.CCo(_module.CCo$T))
         && $IsAlloc($o, Tclass._module.CCo(_module.CCo$T), $h)
       ==> $IsAlloc(_module.CCo.y(_module.CCo$T, $o), TSeq(_module.CCo$T), $h));
}

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "CCovariant (correctness)"} Impl$$_module.__default.CCovariant() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#i#0: bool;
  var i#0: ref
     where defass#i#0
       ==> $Is(i#0, Tclass._module.Int()) && $IsAlloc(i#0, Tclass._module.Int(), $Heap);
  var $nw: ref;
  var defass#a#0: bool;
  var a#0: DatatypeType
     where defass#a#0
       ==> $Is(a#0, Tclass._module.CCo(Tclass._module.Int()))
         && $IsAlloc(a#0, Tclass._module.CCo(Tclass._module.Int()), $Heap);
  var defass#b#0: bool;
  var b#0: DatatypeType
     where defass#b#0
       ==> $Is(b#0, Tclass._module.CCo(Tclass._module.X()))
         && $IsAlloc(b#0, Tclass._module.CCo(Tclass._module.X()), $Heap);
  var s#0: DatatypeType
     where $Is(s#0, Tclass._module.CCo(TBool))
       && $IsAlloc(s#0, Tclass._module.CCo(TBool), $Heap);
  var t#0: bool;
  var $rhs##0: bool;
  var x##0: bool;
  var $tmp##0: Box;
  var y#0: int;
  var $rhs##1: int;
  var x##1: bool;
  var ##x#0: int;
  var ##x#1: Seq;
  var ##x#2: bool;
  var ##x#3: bool;
  var ##x#4: bool;

    // AddMethodImpl: CCovariant, Impl$$_module.__default.CCovariant
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(140,9)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(140,20)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id47"} $nw := Call$$_module.Int._Int();
    // TrCallStmt: After ProcessCallStmt
    i#0 := $nw;
    defass#i#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(141,19)
    assume true;
    assert {:id "id49"} defass#i#0;
    assume true;
    a#0 := #_module.CCo.CCo($Box(i#0));
    defass#a#0 := true;
    havoc b#0 /* where defass#b#0
       ==> $Is(b#0, Tclass._module.CCo(Tclass._module.X()))
         && $IsAlloc(b#0, Tclass._module.CCo(Tclass._module.X()), $Heap) */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(143,5)
    assume true;
    assert {:id "id51"} defass#a#0;
    assume true;
    b#0 := a#0;
    defass#b#0 := true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(144,3)
    assert {:id "id53"} defass#a#0;
    assume true;
    assume true;
    assert {:id "id54"} defass#b#0;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(146,9)
    assume true;
    assume true;
    s#0 := Lit(#_module.CCo.CCo($Box(Lit(false))));
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(147,16)
    assume true;
    // TrCallStmt: Adding lhs with type bool
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := Lit(true);
    call {:id "id56"} $tmp##0 := Call$$_module.CCo.mD(TBool, s#0, $Box(x##0));
    havoc $rhs##0;
    assume $rhs##0 == $Unbox($tmp##0): bool;
    // TrCallStmt: After ProcessCallStmt
    t#0 := $rhs##0;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(148,16)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##1 := t#0;
    call {:id "id58"} $rhs##1 := Call$$_module.CCo.mA(TBool, s#0, $Box(x##1));
    // TrCallStmt: After ProcessCallStmt
    y#0 := $rhs##1;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(149,3)
    assume true;
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(s#0), Tclass._module.CCo(TBool), $Heap);
    ##x#0 := _module.CCo.x(TBool, s#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#0, TInt, $Heap);
    assume _module.CCo.C#canCall(TBool, s#0, _module.CCo.x(TBool, s#0));
    assume _module.CCo.C#canCall(TBool, s#0, _module.CCo.x(TBool, s#0));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(s#0), Tclass._module.CCo(TBool), $Heap);
    ##x#1 := _module.CCo.y(TBool, s#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#1, TSeq(TBool), $Heap);
    assume _module.CCo.B#canCall(TBool, s#0, _module.CCo.y(TBool, s#0));
    assume _module.CCo.B#canCall(TBool, s#0, _module.CCo.y(TBool, s#0));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(s#0), Tclass._module.CCo(TBool), $Heap);
    ##x#2 := t#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#2, TBool, $Heap);
    assume _module.CCo.A#canCall(TBool, s#0, $Box(t#0));
    assume _module.CCo.A#canCall(TBool, s#0, $Box(t#0));
    ##x#3 := t#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#3, TBool, $Heap);
    assume _module.CCo.sA#canCall(TBool, $Box(t#0));
    assume _module.CCo.sA#canCall(TBool, $Box(t#0));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(s#0), Tclass._module.CCo(TBool), $Heap);
    ##x#4 := t#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#4, TBool, $Heap);
    assume _module.CCo.gA#canCall(TBool, s#0, $Box(t#0));
    assume _module.CCo.gA#canCall(TBool, s#0, $Box(t#0));
    assume true;
}



procedure {:verboseName "CNonvariant (well-formedness)"} CheckWellFormed$$_module.__default.CNonvariant();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "CNonvariant (call)"} Call$$_module.__default.CNonvariant();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "CNonvariant (correctness)"} Impl$$_module.__default.CNonvariant() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.CNon(Ty) : Ty;

const unique Tagclass._module.CNon: TyTag;

// Tclass._module.CNon Tag
axiom (forall _module.CNon$T: Ty :: 
  { Tclass._module.CNon(_module.CNon$T) } 
  Tag(Tclass._module.CNon(_module.CNon$T)) == Tagclass._module.CNon
     && TagFamily(Tclass._module.CNon(_module.CNon$T)) == tytagFamily$CNon);

function Tclass._module.CNon_0(Ty) : Ty;

// Tclass._module.CNon injectivity 0
axiom (forall _module.CNon$T: Ty :: 
  { Tclass._module.CNon(_module.CNon$T) } 
  Tclass._module.CNon_0(Tclass._module.CNon(_module.CNon$T)) == _module.CNon$T);

// Box/unbox axiom for Tclass._module.CNon
axiom (forall _module.CNon$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.CNon(_module.CNon$T)) } 
  $IsBox(bx, Tclass._module.CNon(_module.CNon$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.CNon(_module.CNon$T)));

function _module.CNon.x(_module.CNon$T: Ty, this: DatatypeType) : int
uses {
// CNon.x: Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.CNon$T: Ty, $o: DatatypeType :: 
    { _module.CNon.x(_module.CNon$T, $o) } 
    $Is($o, Tclass._module.CNon(_module.CNon$T))
       ==> $Is(_module.CNon.x(_module.CNon$T, $o), TInt));
// CNon.x: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.CNon$T: Ty, $h: Heap, $o: DatatypeType :: 
    { _module.CNon.x(_module.CNon$T, $o), $IsAlloc($o, Tclass._module.CNon(_module.CNon$T), $h) } 
    $IsGoodHeap($h)
         && $Is($o, Tclass._module.CNon(_module.CNon$T))
         && $IsAlloc($o, Tclass._module.CNon(_module.CNon$T), $h)
       ==> $IsAlloc(_module.CNon.x(_module.CNon$T, $o), TInt, $h));
}

function _module.CNon.y(_module.CNon$T: Ty, this: DatatypeType) : Seq
uses {
// CNon.y: Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.CNon$T: Ty, $o: DatatypeType :: 
    { _module.CNon.y(_module.CNon$T, $o) } 
    $Is($o, Tclass._module.CNon(_module.CNon$T))
       ==> $Is(_module.CNon.y(_module.CNon$T, $o), TSeq(_module.CNon$T)));
// CNon.y: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.CNon$T: Ty, $h: Heap, $o: DatatypeType :: 
    { _module.CNon.y(_module.CNon$T, $o), $IsAlloc($o, Tclass._module.CNon(_module.CNon$T), $h) } 
    $IsGoodHeap($h)
         && $Is($o, Tclass._module.CNon(_module.CNon$T))
         && $IsAlloc($o, Tclass._module.CNon(_module.CNon$T), $h)
       ==> $IsAlloc(_module.CNon.y(_module.CNon$T, $o), TSeq(_module.CNon$T), $h));
}

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "CNonvariant (correctness)"} Impl$$_module.__default.CNonvariant() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#i#0: bool;
  var i#0: ref
     where defass#i#0
       ==> $Is(i#0, Tclass._module.Int()) && $IsAlloc(i#0, Tclass._module.Int(), $Heap);
  var $nw: ref;
  var defass#j#0: bool;
  var j#0: ref
     where defass#j#0
       ==> $Is(j#0, Tclass._module.Int()) && $IsAlloc(j#0, Tclass._module.Int(), $Heap);
  var defass#a#0: bool;
  var a#0: DatatypeType
     where defass#a#0
       ==> $Is(a#0, Tclass._module.CNon(Tclass._module.Int()))
         && $IsAlloc(a#0, Tclass._module.CNon(Tclass._module.Int()), $Heap);
  var defass#b#0: bool;
  var b#0: DatatypeType
     where defass#b#0
       ==> $Is(b#0, Tclass._module.CNon(Tclass._module.Int()))
         && $IsAlloc(b#0, Tclass._module.CNon(Tclass._module.Int()), $Heap);
  var s#0: DatatypeType
     where $Is(s#0, Tclass._module.CNon(TBool))
       && $IsAlloc(s#0, Tclass._module.CNon(TBool), $Heap);
  var t#0: bool;
  var $rhs##0: bool;
  var x##0: bool;
  var $tmp##0: Box;
  var y#0: int;
  var $rhs##1: int;
  var x##1: bool;
  var ##x#0: int;
  var ##x#1: Seq;
  var ##x#2: bool;
  var ##x#3: bool;
  var ##x#4: bool;

    // AddMethodImpl: CNonvariant, Impl$$_module.__default.CNonvariant
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(153,9)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(153,20)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id60"} $nw := Call$$_module.Int._Int();
    // TrCallStmt: After ProcessCallStmt
    i#0 := $nw;
    defass#i#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(154,9)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(154,20)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id62"} $nw := Call$$_module.Int._Int();
    // TrCallStmt: After ProcessCallStmt
    j#0 := $nw;
    defass#j#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(155,20)
    assume true;
    assert {:id "id64"} defass#i#0;
    assume true;
    a#0 := #_module.CNon.CNon($Box(i#0));
    defass#a#0 := true;
    havoc b#0 /* where defass#b#0
       ==> $Is(b#0, Tclass._module.CNon(Tclass._module.Int()))
         && $IsAlloc(b#0, Tclass._module.CNon(Tclass._module.Int()), $Heap) */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(157,5)
    assume true;
    assert {:id "id66"} defass#a#0;
    assume true;
    b#0 := a#0;
    defass#b#0 := true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(158,3)
    assert {:id "id68"} defass#a#0;
    assume true;
    assume true;
    assert {:id "id69"} defass#b#0;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(160,9)
    assume true;
    assume true;
    s#0 := Lit(#_module.CNon.CNon($Box(Lit(false))));
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(161,16)
    assume true;
    // TrCallStmt: Adding lhs with type bool
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := Lit(true);
    call {:id "id71"} $tmp##0 := Call$$_module.CNon.mD(TBool, s#0, $Box(x##0));
    havoc $rhs##0;
    assume $rhs##0 == $Unbox($tmp##0): bool;
    // TrCallStmt: After ProcessCallStmt
    t#0 := $rhs##0;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(162,16)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##1 := t#0;
    call {:id "id73"} $rhs##1 := Call$$_module.CNon.mA(TBool, s#0, $Box(x##1));
    // TrCallStmt: After ProcessCallStmt
    y#0 := $rhs##1;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(163,3)
    assume true;
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(s#0), Tclass._module.CNon(TBool), $Heap);
    ##x#0 := _module.CNon.x(TBool, s#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#0, TInt, $Heap);
    assume _module.CNon.C#canCall(TBool, s#0, _module.CNon.x(TBool, s#0));
    assume _module.CNon.C#canCall(TBool, s#0, _module.CNon.x(TBool, s#0));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(s#0), Tclass._module.CNon(TBool), $Heap);
    ##x#1 := _module.CNon.y(TBool, s#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#1, TSeq(TBool), $Heap);
    assume _module.CNon.B#canCall(TBool, s#0, _module.CNon.y(TBool, s#0));
    assume _module.CNon.B#canCall(TBool, s#0, _module.CNon.y(TBool, s#0));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(s#0), Tclass._module.CNon(TBool), $Heap);
    ##x#2 := t#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#2, TBool, $Heap);
    assume _module.CNon.A#canCall(TBool, s#0, $Box(t#0));
    assume _module.CNon.A#canCall(TBool, s#0, $Box(t#0));
    ##x#3 := t#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#3, TBool, $Heap);
    assume _module.CNon.sA#canCall(TBool, $Box(t#0));
    assume _module.CNon.sA#canCall(TBool, $Box(t#0));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(s#0), Tclass._module.CNon(TBool), $Heap);
    ##x#4 := t#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#4, TBool, $Heap);
    assume _module.CNon.gA#canCall(TBool, s#0, $Box(t#0));
    assume _module.CNon.gA#canCall(TBool, s#0, $Box(t#0));
    assume true;
}



procedure {:verboseName "CContravariant (well-formedness)"} CheckWellFormed$$_module.__default.CContravariant();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "CContravariant (call)"} Call$$_module.__default.CContravariant();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "CContravariant (correctness)"} Impl$$_module.__default.CContravariant() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.CCon(Ty) : Ty;

const unique Tagclass._module.CCon: TyTag;

// Tclass._module.CCon Tag
axiom (forall _module.CCon$T: Ty :: 
  { Tclass._module.CCon(_module.CCon$T) } 
  Tag(Tclass._module.CCon(_module.CCon$T)) == Tagclass._module.CCon
     && TagFamily(Tclass._module.CCon(_module.CCon$T)) == tytagFamily$CCon);

function Tclass._module.CCon_0(Ty) : Ty;

// Tclass._module.CCon injectivity 0
axiom (forall _module.CCon$T: Ty :: 
  { Tclass._module.CCon(_module.CCon$T) } 
  Tclass._module.CCon_0(Tclass._module.CCon(_module.CCon$T)) == _module.CCon$T);

// Box/unbox axiom for Tclass._module.CCon
axiom (forall _module.CCon$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.CCon(_module.CCon$T)) } 
  $IsBox(bx, Tclass._module.CCon(_module.CCon$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.CCon(_module.CCon$T)));

function _module.CCon.x(_module.CCon$T: Ty, this: DatatypeType) : int
uses {
// CCon.x: Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.CCon$T: Ty, $o: DatatypeType :: 
    { _module.CCon.x(_module.CCon$T, $o) } 
    $Is($o, Tclass._module.CCon(_module.CCon$T))
       ==> $Is(_module.CCon.x(_module.CCon$T, $o), TInt));
// CCon.x: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.CCon$T: Ty, $h: Heap, $o: DatatypeType :: 
    { _module.CCon.x(_module.CCon$T, $o), $IsAlloc($o, Tclass._module.CCon(_module.CCon$T), $h) } 
    $IsGoodHeap($h)
         && $Is($o, Tclass._module.CCon(_module.CCon$T))
         && $IsAlloc($o, Tclass._module.CCon(_module.CCon$T), $h)
       ==> $IsAlloc(_module.CCon.x(_module.CCon$T, $o), TInt, $h));
}

function _module.CCon.y(_module.CCon$T: Ty, this: DatatypeType) : Seq
uses {
// CCon.y: Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.CCon$T: Ty, $o: DatatypeType :: 
    { _module.CCon.y(_module.CCon$T, $o) } 
    $Is($o, Tclass._module.CCon(_module.CCon$T))
       ==> $Is(_module.CCon.y(_module.CCon$T, $o), TSeq(_module.CCon$T)));
// CCon.y: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.CCon$T: Ty, $h: Heap, $o: DatatypeType :: 
    { _module.CCon.y(_module.CCon$T, $o), $IsAlloc($o, Tclass._module.CCon(_module.CCon$T), $h) } 
    $IsGoodHeap($h)
         && $Is($o, Tclass._module.CCon(_module.CCon$T))
         && $IsAlloc($o, Tclass._module.CCon(_module.CCon$T), $h)
       ==> $IsAlloc(_module.CCon.y(_module.CCon$T, $o), TSeq(_module.CCon$T), $h));
}

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "CContravariant (correctness)"} Impl$$_module.__default.CContravariant() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: DatatypeType
     where $Is(a#0, Tclass._module.CCon(Tclass._module.X()))
       && $IsAlloc(a#0, Tclass._module.CCon(Tclass._module.X()), $Heap);
  var $lambdaHeap#0: Heap;
  var _v5#0: ref;
  var $_Frame#l0: [ref,Field]bool;
  var lambdaResult#0: int;
  var b#0: DatatypeType
     where $Is(b#0, Tclass._module.CCon(Tclass._module.Int()))
       && $IsAlloc(b#0, Tclass._module.CCon(Tclass._module.Int()), $Heap);
  var s#0: DatatypeType
     where $Is(s#0, Tclass._module.CCon(Tclass._module.X()))
       && $IsAlloc(s#0, Tclass._module.CCon(Tclass._module.X()), $Heap);
  var $lambdaHeap#1: Heap;
  var _v6#0: ref;
  var $_Frame#l1: [ref,Field]bool;
  var lambdaResult#1: int;
  var defass#i#0: bool;
  var i#0: ref
     where defass#i#0
       ==> $Is(i#0, Tclass._module.Int()) && $IsAlloc(i#0, Tclass._module.Int(), $Heap);
  var $nw: ref;
  var defass#t#0: bool;
  var t#0: ref
     where defass#t#0
       ==> $Is(t#0, Tclass._module.X()) && $IsAlloc(t#0, Tclass._module.X(), $Heap);
  var $rhs##0: ref;
  var x##0: ref;
  var $tmp##0: Box;
  var y#0: int;
  var $rhs##1: int;
  var x##1: ref;
  var ##x#0: int;
  var ##x#1: Seq;
  var ##x#2: ref;
  var ##x#3: ref;
  var ##x#4: ref;

    // AddMethodImpl: CContravariant, Impl$$_module.__default.CContravariant
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(167,18)
    assume true;
    // Begin Comprehension WF check
    if (*)
    {
        havoc $lambdaHeap#0;
        assume $IsGoodHeap($lambdaHeap#0);
        assume $Heap == $lambdaHeap#0 || $HeapSucc($Heap, $lambdaHeap#0);
        havoc _v5#0;
        if ($Is(_v5#0, Tclass._module.X())
           && $IsAlloc(_v5#0, Tclass._module.X(), $lambdaHeap#0))
        {
            $_Frame#l0 := (lambda $o: ref, $f: Field :: 
              $o != null && $Unbox(read($lambdaHeap#0, $o, alloc)): bool ==> false);
            assume {:id "id75"} lambdaResult#0 == LitInt(0);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(lambdaResult#0, TInt);
        }

        assume false;
    }

    // End Comprehension WF check
    assume true;
    a#0 := Lit(#_module.CCon.CCon(Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
              Handle1((lambda $l#0#heap#0: Heap, $l#0#_v5#0: Box :: $Box(LitInt(0))), 
                (lambda $l#0#heap#0: Heap, $l#0#_v5#0: Box :: 
                  $IsBox($l#0#_v5#0, Tclass._module.X())), 
                (lambda $l#0#heap#0: Heap, $l#0#_v5#0: Box :: 
                  SetRef_to_SetBox((lambda $l#0#o#0: ref :: false))))), 
            $LS($LZ)))));
    havoc b#0 /* where $Is(b#0, Tclass._module.CCon(Tclass._module.Int()))
       && $IsAlloc(b#0, Tclass._module.CCon(Tclass._module.Int()), $Heap) */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(169,5)
    assume true;
    assume true;
    b#0 := a#0;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(170,3)
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(172,18)
    assume true;
    // Begin Comprehension WF check
    if (*)
    {
        havoc $lambdaHeap#1;
        assume $IsGoodHeap($lambdaHeap#1);
        assume $Heap == $lambdaHeap#1 || $HeapSucc($Heap, $lambdaHeap#1);
        havoc _v6#0;
        if ($Is(_v6#0, Tclass._module.X())
           && $IsAlloc(_v6#0, Tclass._module.X(), $lambdaHeap#1))
        {
            $_Frame#l1 := (lambda $o: ref, $f: Field :: 
              $o != null && $Unbox(read($lambdaHeap#1, $o, alloc)): bool ==> false);
            assume {:id "id78"} lambdaResult#1 == LitInt(1);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(lambdaResult#1, TInt);
        }

        assume false;
    }

    // End Comprehension WF check
    assume true;
    s#0 := Lit(#_module.CCon.CCon(Lit(AtLayer((lambda $l#3#ly#0: LayerType :: 
              Handle1((lambda $l#3#heap#0: Heap, $l#3#_v6#0: Box :: $Box(LitInt(1))), 
                (lambda $l#3#heap#0: Heap, $l#3#_v6#0: Box :: 
                  $IsBox($l#3#_v6#0, Tclass._module.X())), 
                (lambda $l#3#heap#0: Heap, $l#3#_v6#0: Box :: 
                  SetRef_to_SetBox((lambda $l#3#o#0: ref :: false))))), 
            $LS($LZ)))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(173,9)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(173,20)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id80"} $nw := Call$$_module.Int._Int();
    // TrCallStmt: After ProcessCallStmt
    i#0 := $nw;
    defass#i#0 := true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(174,16)
    assume true;
    // TrCallStmt: Adding lhs with type X
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id82"} defass#i#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := i#0;
    call {:id "id83"} $tmp##0 := Call$$_module.CCon.mD(Tclass._module.X(), s#0, $Box(x##0));
    havoc $rhs##0;
    assume $rhs##0 == $Unbox($tmp##0): ref;
    // TrCallStmt: After ProcessCallStmt
    t#0 := $rhs##0;
    defass#t#0 := true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(175,16)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id85"} defass#t#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##1 := t#0;
    call {:id "id86"} $rhs##1 := Call$$_module.CCon.mA(Tclass._module.X(), s#0, $Box(x##1));
    // TrCallStmt: After ProcessCallStmt
    y#0 := $rhs##1;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(176,3)
    assert {:id "id88"} defass#t#0;
    assume true;
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(s#0), Tclass._module.CCon(Tclass._module.X()), $Heap);
    ##x#0 := _module.CCon.x(Tclass._module.X(), s#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#0, TInt, $Heap);
    assume _module.CCon.C#canCall(Tclass._module.X(), s#0, _module.CCon.x(Tclass._module.X(), s#0));
    assume _module.CCon.C#canCall(Tclass._module.X(), s#0, _module.CCon.x(Tclass._module.X(), s#0));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(s#0), Tclass._module.CCon(Tclass._module.X()), $Heap);
    ##x#1 := _module.CCon.y(Tclass._module.X(), s#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#1, TSeq(Tclass._module.X()), $Heap);
    assume _module.CCon.B#canCall(Tclass._module.X(), s#0, _module.CCon.y(Tclass._module.X(), s#0));
    assume _module.CCon.B#canCall(Tclass._module.X(), s#0, _module.CCon.y(Tclass._module.X(), s#0));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(s#0), Tclass._module.CCon(Tclass._module.X()), $Heap);
    assert {:id "id89"} defass#t#0;
    ##x#2 := t#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#2, Tclass._module.X(), $Heap);
    assume _module.CCon.A#canCall(Tclass._module.X(), s#0, $Box(t#0));
    assume _module.CCon.A#canCall(Tclass._module.X(), s#0, $Box(t#0));
    assert {:id "id90"} defass#t#0;
    ##x#3 := t#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#3, Tclass._module.X(), $Heap);
    assume _module.CCon.sA#canCall(Tclass._module.X(), $Box(t#0));
    assume _module.CCon.sA#canCall(Tclass._module.X(), $Box(t#0));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(s#0), Tclass._module.CCon(Tclass._module.X()), $Heap);
    assert {:id "id91"} defass#t#0;
    ##x#4 := t#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#4, Tclass._module.X(), $Heap);
    assume _module.CCon.gA#canCall(Tclass._module.X(), s#0, $Box(t#0));
    assume _module.CCon.gA#canCall(Tclass._module.X(), s#0, $Box(t#0));
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
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(180,12)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id92"} Call$$_module.__default.Covariant();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(181,13)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id93"} Call$$_module.__default.Nonvariant();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(182,16)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id94"} Call$$_module.__default.Contravariant();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(183,13)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id95"} Call$$_module.__default.CCovariant();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(184,14)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id96"} Call$$_module.__default.CNonvariant();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(185,17)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id97"} Call$$_module.__default.CContravariant();
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(186,3)
    assume true;
}



// Constructor function declaration
function #_module.Co.Co(Box) : DatatypeType;

const unique ##_module.Co.Co: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: Box :: 
  { #_module.Co.Co(a#0#0#0) } 
  DatatypeCtorId(#_module.Co.Co(a#0#0#0)) == ##_module.Co.Co);
}

function _module.Co.Co_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Co.Co_q(d) } 
  _module.Co.Co_q(d) <==> DatatypeCtorId(d) == ##_module.Co.Co);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Co.Co_q(d) } 
  _module.Co.Co_q(d) ==> (exists a#1#0#0: Box :: d == #_module.Co.Co(a#1#0#0)));

// Constructor $Is
axiom (forall _module.Co$T: Ty, a#2#0#0: Box :: 
  { $Is(#_module.Co.Co(a#2#0#0), Tclass._module.Co(_module.Co$T)) } 
  $Is(#_module.Co.Co(a#2#0#0), Tclass._module.Co(_module.Co$T))
     <==> $IsBox(a#2#0#0, _module.Co$T));

// Constructor $IsAlloc
axiom (forall _module.Co$T: Ty, a#2#0#0: Box, $h: Heap :: 
  { $IsAlloc(#_module.Co.Co(a#2#0#0), Tclass._module.Co(_module.Co$T), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.Co.Co(a#2#0#0), Tclass._module.Co(_module.Co$T), $h)
       <==> $IsAllocBox(a#2#0#0, _module.Co$T, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.Co$T: Ty, $h: Heap :: 
  { $IsAllocBox(_module.Co.z(d), _module.Co$T, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Co.Co_q(d)
       && $IsAlloc(d, Tclass._module.Co(_module.Co$T), $h)
     ==> $IsAllocBox(_module.Co.z(d), _module.Co$T, $h));

// Constructor literal
axiom (forall a#3#0#0: Box :: 
  { #_module.Co.Co(Lit(a#3#0#0)) } 
  #_module.Co.Co(Lit(a#3#0#0)) == Lit(#_module.Co.Co(a#3#0#0)));

function _module.Co.z(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#4#0#0: Box :: 
  { #_module.Co.Co(a#4#0#0) } 
  _module.Co.z(#_module.Co.Co(a#4#0#0)) == a#4#0#0);

// Inductive rank
axiom (forall a#5#0#0: Box :: 
  { #_module.Co.Co(a#5#0#0) } 
  BoxRank(a#5#0#0) < DtRank(#_module.Co.Co(a#5#0#0)));

// Depth-one case-split function
function $IsA#_module.Co(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Co(d) } 
  $IsA#_module.Co(d) ==> _module.Co.Co_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.Co$T: Ty, d: DatatypeType :: 
  { _module.Co.Co_q(d), $Is(d, Tclass._module.Co(_module.Co$T)) } 
  $Is(d, Tclass._module.Co(_module.Co$T)) ==> _module.Co.Co_q(d));

// Datatype extensional equality declaration
function _module.Co#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Co.Co
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Co#Equal(a, b) } 
  _module.Co#Equal(a, b) <==> _module.Co.z(a) == _module.Co.z(b));

// Datatype extensionality axiom: _module.Co
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Co#Equal(a, b) } 
  _module.Co#Equal(a, b) <==> a == b);

const unique class._module.Co: ClassName;

// function declaration for _module.Co.A
function _module.Co.A(_module.Co$T: Ty, this: DatatypeType, x#0: Box) : int
uses {
// definition axiom for _module.Co.A (revealed)
axiom {:id "id98"} 0 <= $FunctionContextHeight
   ==> (forall _module.Co$T: Ty, this: DatatypeType, x#0: Box :: 
    { _module.Co.A(_module.Co$T, this, x#0) } 
    _module.Co.A#canCall(_module.Co$T, this, x#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.Co(_module.Co$T))
           && $IsBox(x#0, _module.Co$T))
       ==> _module.Co.A(_module.Co$T, this, x#0) == LitInt(0));
// definition axiom for _module.Co.A for decreasing-related literals (revealed)
axiom {:id "id99"} 0 <= $FunctionContextHeight
   ==> (forall _module.Co$T: Ty, this: DatatypeType, x#0: Box :: 
    {:weight 3} { _module.Co.A(_module.Co$T, Lit(this), x#0) } 
    _module.Co.A#canCall(_module.Co$T, Lit(this), x#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.Co(_module.Co$T))
           && $IsBox(x#0, _module.Co$T))
       ==> _module.Co.A(_module.Co$T, Lit(this), x#0) == LitInt(0));
// definition axiom for _module.Co.A for all literals (revealed)
axiom {:id "id100"} 0 <= $FunctionContextHeight
   ==> (forall _module.Co$T: Ty, this: DatatypeType, x#0: Box :: 
    {:weight 3} { _module.Co.A(_module.Co$T, Lit(this), Lit(x#0)) } 
    _module.Co.A#canCall(_module.Co$T, Lit(this), Lit(x#0))
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.Co(_module.Co$T))
           && $IsBox(x#0, _module.Co$T))
       ==> _module.Co.A(_module.Co$T, Lit(this), Lit(x#0)) == LitInt(0));
}

function _module.Co.A#canCall(_module.Co$T: Ty, this: DatatypeType, x#0: Box) : bool;

function _module.Co.A#requires(Ty, DatatypeType, Box) : bool;

// #requires axiom for _module.Co.A
axiom (forall _module.Co$T: Ty, this: DatatypeType, x#0: Box :: 
  { _module.Co.A#requires(_module.Co$T, this, x#0) } 
  $Is(this, Tclass._module.Co(_module.Co$T)) && $IsBox(x#0, _module.Co$T)
     ==> _module.Co.A#requires(_module.Co$T, this, x#0) == true);

procedure {:verboseName "Co.A (well-formedness)"} CheckWellformed$$_module.Co.A(_module.Co$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Co(_module.Co$T))
         && $IsAlloc(this, Tclass._module.Co(_module.Co$T), $Heap), 
    x#0: Box where $IsBox(x#0, _module.Co$T));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.Co.sA
function _module.Co.sA(_module.Co$T: Ty, x#0: Box) : int
uses {
// definition axiom for _module.Co.sA (revealed)
axiom {:id "id102"} 0 <= $FunctionContextHeight
   ==> (forall _module.Co$T: Ty, x#0: Box :: 
    { _module.Co.sA(_module.Co$T, x#0) } 
    _module.Co.sA#canCall(_module.Co$T, x#0)
         || (0 < $FunctionContextHeight && $IsBox(x#0, _module.Co$T))
       ==> _module.Co.sA(_module.Co$T, x#0) == LitInt(0));
// definition axiom for _module.Co.sA for all literals (revealed)
axiom {:id "id103"} 0 <= $FunctionContextHeight
   ==> (forall _module.Co$T: Ty, x#0: Box :: 
    {:weight 3} { _module.Co.sA(_module.Co$T, Lit(x#0)) } 
    _module.Co.sA#canCall(_module.Co$T, Lit(x#0))
         || (0 < $FunctionContextHeight && $IsBox(x#0, _module.Co$T))
       ==> _module.Co.sA(_module.Co$T, Lit(x#0)) == LitInt(0));
}

function _module.Co.sA#canCall(_module.Co$T: Ty, x#0: Box) : bool;

function _module.Co.sA#requires(Ty, Box) : bool;

// #requires axiom for _module.Co.sA
axiom (forall _module.Co$T: Ty, x#0: Box :: 
  { _module.Co.sA#requires(_module.Co$T, x#0) } 
  $IsBox(x#0, _module.Co$T) ==> _module.Co.sA#requires(_module.Co$T, x#0) == true);

procedure {:verboseName "Co.sA (well-formedness)"} CheckWellformed$$_module.Co.sA(_module.Co$T: Ty, x#0: Box where $IsBox(x#0, _module.Co$T));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.Co.gA
function _module.Co.gA(_module.Co$T: Ty, this: DatatypeType, x#0: Box) : int
uses {
// definition axiom for _module.Co.gA (revealed)
axiom {:id "id105"} 0 <= $FunctionContextHeight
   ==> (forall _module.Co$T: Ty, this: DatatypeType, x#0: Box :: 
    { _module.Co.gA(_module.Co$T, this, x#0) } 
    _module.Co.gA#canCall(_module.Co$T, this, x#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.Co(_module.Co$T))
           && $IsBox(x#0, _module.Co$T))
       ==> _module.Co.gA(_module.Co$T, this, x#0) == LitInt(0));
// definition axiom for _module.Co.gA for decreasing-related literals (revealed)
axiom {:id "id106"} 0 <= $FunctionContextHeight
   ==> (forall _module.Co$T: Ty, this: DatatypeType, x#0: Box :: 
    {:weight 3} { _module.Co.gA(_module.Co$T, Lit(this), x#0) } 
    _module.Co.gA#canCall(_module.Co$T, Lit(this), x#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.Co(_module.Co$T))
           && $IsBox(x#0, _module.Co$T))
       ==> _module.Co.gA(_module.Co$T, Lit(this), x#0) == LitInt(0));
// definition axiom for _module.Co.gA for all literals (revealed)
axiom {:id "id107"} 0 <= $FunctionContextHeight
   ==> (forall _module.Co$T: Ty, this: DatatypeType, x#0: Box :: 
    {:weight 3} { _module.Co.gA(_module.Co$T, Lit(this), Lit(x#0)) } 
    _module.Co.gA#canCall(_module.Co$T, Lit(this), Lit(x#0))
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.Co(_module.Co$T))
           && $IsBox(x#0, _module.Co$T))
       ==> _module.Co.gA(_module.Co$T, Lit(this), Lit(x#0)) == LitInt(0));
}

function _module.Co.gA#canCall(_module.Co$T: Ty, this: DatatypeType, x#0: Box) : bool;

function _module.Co.gA#requires(Ty, DatatypeType, Box) : bool;

// #requires axiom for _module.Co.gA
axiom (forall _module.Co$T: Ty, this: DatatypeType, x#0: Box :: 
  { _module.Co.gA#requires(_module.Co$T, this, x#0) } 
  $Is(this, Tclass._module.Co(_module.Co$T)) && $IsBox(x#0, _module.Co$T)
     ==> _module.Co.gA#requires(_module.Co$T, this, x#0) == true);

procedure {:verboseName "Co.gA (well-formedness)"} CheckWellformed$$_module.Co.gA(_module.Co$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Co(_module.Co$T))
         && $IsAlloc(this, Tclass._module.Co(_module.Co$T), $Heap), 
    x#0: Box where $IsBox(x#0, _module.Co$T));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.Co.B
function _module.Co.B(_module.Co$T: Ty, this: DatatypeType, x#0: Seq) : int
uses {
// definition axiom for _module.Co.B (revealed)
axiom {:id "id109"} 0 <= $FunctionContextHeight
   ==> (forall _module.Co$T: Ty, this: DatatypeType, x#0: Seq :: 
    { _module.Co.B(_module.Co$T, this, x#0) } 
    _module.Co.B#canCall(_module.Co$T, this, x#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.Co(_module.Co$T))
           && $Is(x#0, TSeq(_module.Co$T)))
       ==> _module.Co.B(_module.Co$T, this, x#0) == LitInt(0));
// definition axiom for _module.Co.B for all literals (revealed)
axiom {:id "id110"} 0 <= $FunctionContextHeight
   ==> (forall _module.Co$T: Ty, this: DatatypeType, x#0: Seq :: 
    {:weight 3} { _module.Co.B(_module.Co$T, Lit(this), Lit(x#0)) } 
    _module.Co.B#canCall(_module.Co$T, Lit(this), Lit(x#0))
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.Co(_module.Co$T))
           && $Is(x#0, TSeq(_module.Co$T)))
       ==> _module.Co.B(_module.Co$T, Lit(this), Lit(x#0)) == LitInt(0));
}

function _module.Co.B#canCall(_module.Co$T: Ty, this: DatatypeType, x#0: Seq) : bool;

function _module.Co.B#requires(Ty, DatatypeType, Seq) : bool;

// #requires axiom for _module.Co.B
axiom (forall _module.Co$T: Ty, this: DatatypeType, x#0: Seq :: 
  { _module.Co.B#requires(_module.Co$T, this, x#0) } 
  $Is(this, Tclass._module.Co(_module.Co$T)) && $Is(x#0, TSeq(_module.Co$T))
     ==> _module.Co.B#requires(_module.Co$T, this, x#0) == true);

procedure {:verboseName "Co.B (well-formedness)"} CheckWellformed$$_module.Co.B(_module.Co$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Co(_module.Co$T))
         && $IsAlloc(this, Tclass._module.Co(_module.Co$T), $Heap), 
    x#0: Seq where $Is(x#0, TSeq(_module.Co$T)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.Co.C
function _module.Co.C(_module.Co$T: Ty, this: DatatypeType, x#0: int) : Seq
uses {
// consequence axiom for _module.Co.C
axiom 1 <= $FunctionContextHeight
   ==> (forall _module.Co$T: Ty, this: DatatypeType, x#0: int :: 
    { _module.Co.C(_module.Co$T, this, x#0) } 
    _module.Co.C#canCall(_module.Co$T, this, x#0)
         || (1 < $FunctionContextHeight && $Is(this, Tclass._module.Co(_module.Co$T)))
       ==> $Is(_module.Co.C(_module.Co$T, this, x#0), TSeq(_module.Co$T)));
// alloc consequence axiom for _module.Co.C
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, _module.Co$T: Ty, this: DatatypeType, x#0: int :: 
    { $IsAlloc(_module.Co.C(_module.Co$T, this, x#0), TSeq(_module.Co$T), $Heap) } 
    (_module.Co.C#canCall(_module.Co$T, this, x#0)
           || (1 < $FunctionContextHeight
             && $IsAlloc(this, Tclass._module.Co(_module.Co$T), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.Co.C(_module.Co$T, this, x#0), TSeq(_module.Co$T), $Heap));
// definition axiom for _module.Co.C (revealed)
axiom {:id "id112"} 1 <= $FunctionContextHeight
   ==> (forall _module.Co$T: Ty, this: DatatypeType, x#0: int :: 
    { _module.Co.C(_module.Co$T, this, x#0) } 
    _module.Co.C#canCall(_module.Co$T, this, x#0)
         || (1 < $FunctionContextHeight && $Is(this, Tclass._module.Co(_module.Co$T)))
       ==> _module.Co.C(_module.Co$T, this, x#0) == _module.Co.y(_module.Co$T, this));
// definition axiom for _module.Co.C for all literals (revealed)
axiom {:id "id113"} 1 <= $FunctionContextHeight
   ==> (forall _module.Co$T: Ty, this: DatatypeType, x#0: int :: 
    {:weight 3} { _module.Co.C(_module.Co$T, Lit(this), LitInt(x#0)) } 
    _module.Co.C#canCall(_module.Co$T, Lit(this), LitInt(x#0))
         || (1 < $FunctionContextHeight && $Is(this, Tclass._module.Co(_module.Co$T)))
       ==> _module.Co.C(_module.Co$T, Lit(this), LitInt(x#0))
         == _module.Co.y(_module.Co$T, Lit(this)));
}

function _module.Co.C#canCall(_module.Co$T: Ty, this: DatatypeType, x#0: int) : bool;

function _module.Co.C#requires(Ty, DatatypeType, int) : bool;

// #requires axiom for _module.Co.C
axiom (forall _module.Co$T: Ty, this: DatatypeType, x#0: int :: 
  { _module.Co.C#requires(_module.Co$T, this, x#0) } 
  $Is(this, Tclass._module.Co(_module.Co$T))
     ==> _module.Co.C#requires(_module.Co$T, this, x#0) == true);

procedure {:verboseName "Co.C (well-formedness)"} CheckWellformed$$_module.Co.C(_module.Co$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Co(_module.Co$T))
         && $IsAlloc(this, Tclass._module.Co(_module.Co$T), $Heap), 
    x#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.Co.D
function _module.Co.D(_module.Co$T: Ty, this: DatatypeType, x#0: Box) : Box
uses {
// consequence axiom for _module.Co.D
axiom 0 <= $FunctionContextHeight
   ==> (forall _module.Co$T: Ty, this: DatatypeType, x#0: Box :: 
    { _module.Co.D(_module.Co$T, this, x#0) } 
    _module.Co.D#canCall(_module.Co$T, this, x#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.Co(_module.Co$T))
           && $IsBox(x#0, _module.Co$T))
       ==> $IsBox(_module.Co.D(_module.Co$T, this, x#0), _module.Co$T));
// alloc consequence axiom for _module.Co.D
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, _module.Co$T: Ty, this: DatatypeType, x#0: Box :: 
    { $IsAllocBox(_module.Co.D(_module.Co$T, this, x#0), _module.Co$T, $Heap) } 
    (_module.Co.D#canCall(_module.Co$T, this, x#0)
           || (0 < $FunctionContextHeight
             && 
            $IsAlloc(this, Tclass._module.Co(_module.Co$T), $Heap)
             && 
            $IsBox(x#0, _module.Co$T)
             && $IsAllocBox(x#0, _module.Co$T, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAllocBox(_module.Co.D(_module.Co$T, this, x#0), _module.Co$T, $Heap));
// definition axiom for _module.Co.D (revealed)
axiom {:id "id115"} 0 <= $FunctionContextHeight
   ==> (forall _module.Co$T: Ty, this: DatatypeType, x#0: Box :: 
    { _module.Co.D(_module.Co$T, this, x#0) } 
    _module.Co.D#canCall(_module.Co$T, this, x#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.Co(_module.Co$T))
           && $IsBox(x#0, _module.Co$T))
       ==> _module.Co.D(_module.Co$T, this, x#0) == x#0);
// definition axiom for _module.Co.D for decreasing-related literals (revealed)
axiom {:id "id116"} 0 <= $FunctionContextHeight
   ==> (forall _module.Co$T: Ty, this: DatatypeType, x#0: Box :: 
    {:weight 3} { _module.Co.D(_module.Co$T, Lit(this), x#0) } 
    _module.Co.D#canCall(_module.Co$T, Lit(this), x#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.Co(_module.Co$T))
           && $IsBox(x#0, _module.Co$T))
       ==> _module.Co.D(_module.Co$T, Lit(this), x#0) == x#0);
// definition axiom for _module.Co.D for all literals (revealed)
axiom {:id "id117"} 0 <= $FunctionContextHeight
   ==> (forall _module.Co$T: Ty, this: DatatypeType, x#0: Box :: 
    {:weight 3} { _module.Co.D(_module.Co$T, Lit(this), Lit(x#0)) } 
    _module.Co.D#canCall(_module.Co$T, Lit(this), Lit(x#0))
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.Co(_module.Co$T))
           && $IsBox(x#0, _module.Co$T))
       ==> _module.Co.D(_module.Co$T, Lit(this), Lit(x#0)) == Lit(x#0));
}

function _module.Co.D#canCall(_module.Co$T: Ty, this: DatatypeType, x#0: Box) : bool;

function _module.Co.D#requires(Ty, DatatypeType, Box) : bool;

// #requires axiom for _module.Co.D
axiom (forall _module.Co$T: Ty, this: DatatypeType, x#0: Box :: 
  { _module.Co.D#requires(_module.Co$T, this, x#0) } 
  $Is(this, Tclass._module.Co(_module.Co$T)) && $IsBox(x#0, _module.Co$T)
     ==> _module.Co.D#requires(_module.Co$T, this, x#0) == true);

procedure {:verboseName "Co.D (well-formedness)"} CheckWellformed$$_module.Co.D(_module.Co$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Co(_module.Co$T))
         && $IsAlloc(this, Tclass._module.Co(_module.Co$T), $Heap), 
    x#0: Box where $IsBox(x#0, _module.Co$T));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Co.mA (well-formedness)"} CheckWellFormed$$_module.Co.mA(_module.Co$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Co(_module.Co$T))
         && $IsAlloc(this, Tclass._module.Co(_module.Co$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.Co$T) && $IsAllocBox(x#0, _module.Co$T, $Heap))
   returns (r#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Co.mA (call)"} Call$$_module.Co.mA(_module.Co$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Co(_module.Co$T))
         && $IsAlloc(this, Tclass._module.Co(_module.Co$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.Co$T) && $IsAllocBox(x#0, _module.Co$T, $Heap))
   returns (r#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Co.mA (correctness)"} Impl$$_module.Co.mA(_module.Co$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Co(_module.Co$T))
         && $IsAlloc(this, Tclass._module.Co(_module.Co$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.Co$T) && $IsAllocBox(x#0, _module.Co$T, $Heap))
   returns (r#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Co.mD (well-formedness)"} CheckWellFormed$$_module.Co.mD(_module.Co$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Co(_module.Co$T))
         && $IsAlloc(this, Tclass._module.Co(_module.Co$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.Co$T) && $IsAllocBox(x#0, _module.Co$T, $Heap))
   returns (r#0: Box
       where $IsBox(r#0, _module.Co$T) && $IsAllocBox(r#0, _module.Co$T, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Co.mD (call)"} Call$$_module.Co.mD(_module.Co$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Co(_module.Co$T))
         && $IsAlloc(this, Tclass._module.Co(_module.Co$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.Co$T) && $IsAllocBox(x#0, _module.Co$T, $Heap))
   returns (r#0: Box
       where $IsBox(r#0, _module.Co$T) && $IsAllocBox(r#0, _module.Co$T, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Co.mD (correctness)"} Impl$$_module.Co.mD(_module.Co$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Co(_module.Co$T))
         && $IsAlloc(this, Tclass._module.Co(_module.Co$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.Co$T) && $IsAllocBox(x#0, _module.Co$T, $Heap))
   returns (defass#r#0: bool, 
    r#0: Box
       where defass#r#0
         ==> $IsBox(r#0, _module.Co$T) && $IsAllocBox(r#0, _module.Co$T, $Heap), 
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Co.mD (correctness)"} Impl$$_module.Co.mD(_module.Co$T: Ty, this: DatatypeType, x#0: Box)
   returns (defass#r#0: bool, r#0: Box, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: mD, Impl$$_module.Co.mD
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(15,40)
    assume true;
    assume true;
    r#0 := x#0;
    defass#r#0 := true;
    assert {:id "id121"} defass#r#0;
}



// Constructor function declaration
function #_module.Non.Non(Box) : DatatypeType;

const unique ##_module.Non.Non: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: Box :: 
  { #_module.Non.Non(a#0#0#0) } 
  DatatypeCtorId(#_module.Non.Non(a#0#0#0)) == ##_module.Non.Non);
}

function _module.Non.Non_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Non.Non_q(d) } 
  _module.Non.Non_q(d) <==> DatatypeCtorId(d) == ##_module.Non.Non);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Non.Non_q(d) } 
  _module.Non.Non_q(d) ==> (exists a#1#0#0: Box :: d == #_module.Non.Non(a#1#0#0)));

// Constructor $Is
axiom (forall _module.Non$T: Ty, a#2#0#0: Box :: 
  { $Is(#_module.Non.Non(a#2#0#0), Tclass._module.Non(_module.Non$T)) } 
  $Is(#_module.Non.Non(a#2#0#0), Tclass._module.Non(_module.Non$T))
     <==> $IsBox(a#2#0#0, _module.Non$T));

// Constructor $IsAlloc
axiom (forall _module.Non$T: Ty, a#2#0#0: Box, $h: Heap :: 
  { $IsAlloc(#_module.Non.Non(a#2#0#0), Tclass._module.Non(_module.Non$T), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.Non.Non(a#2#0#0), Tclass._module.Non(_module.Non$T), $h)
       <==> $IsAllocBox(a#2#0#0, _module.Non$T, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.Non$T: Ty, $h: Heap :: 
  { $IsAllocBox(_module.Non._h0(d), _module.Non$T, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Non.Non_q(d)
       && $IsAlloc(d, Tclass._module.Non(_module.Non$T), $h)
     ==> $IsAllocBox(_module.Non._h0(d), _module.Non$T, $h));

// Constructor literal
axiom (forall a#3#0#0: Box :: 
  { #_module.Non.Non(Lit(a#3#0#0)) } 
  #_module.Non.Non(Lit(a#3#0#0)) == Lit(#_module.Non.Non(a#3#0#0)));

function _module.Non._h0(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#4#0#0: Box :: 
  { #_module.Non.Non(a#4#0#0) } 
  _module.Non._h0(#_module.Non.Non(a#4#0#0)) == a#4#0#0);

// Inductive rank
axiom (forall a#5#0#0: Box :: 
  { #_module.Non.Non(a#5#0#0) } 
  BoxRank(a#5#0#0) < DtRank(#_module.Non.Non(a#5#0#0)));

// Depth-one case-split function
function $IsA#_module.Non(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Non(d) } 
  $IsA#_module.Non(d) ==> _module.Non.Non_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.Non$T: Ty, d: DatatypeType :: 
  { _module.Non.Non_q(d), $Is(d, Tclass._module.Non(_module.Non$T)) } 
  $Is(d, Tclass._module.Non(_module.Non$T)) ==> _module.Non.Non_q(d));

// Datatype extensional equality declaration
function _module.Non#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Non.Non
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Non#Equal(a, b) } 
  _module.Non#Equal(a, b) <==> _module.Non._h0(a) == _module.Non._h0(b));

// Datatype extensionality axiom: _module.Non
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Non#Equal(a, b) } 
  _module.Non#Equal(a, b) <==> a == b);

const unique class._module.Non: ClassName;

// function declaration for _module.Non.A
function _module.Non.A(_module.Non$T: Ty, this: DatatypeType, x#0: Box) : int
uses {
// definition axiom for _module.Non.A (revealed)
axiom {:id "id122"} 0 <= $FunctionContextHeight
   ==> (forall _module.Non$T: Ty, this: DatatypeType, x#0: Box :: 
    { _module.Non.A(_module.Non$T, this, x#0) } 
    _module.Non.A#canCall(_module.Non$T, this, x#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.Non(_module.Non$T))
           && $IsBox(x#0, _module.Non$T))
       ==> _module.Non.A(_module.Non$T, this, x#0) == LitInt(0));
// definition axiom for _module.Non.A for decreasing-related literals (revealed)
axiom {:id "id123"} 0 <= $FunctionContextHeight
   ==> (forall _module.Non$T: Ty, this: DatatypeType, x#0: Box :: 
    {:weight 3} { _module.Non.A(_module.Non$T, Lit(this), x#0) } 
    _module.Non.A#canCall(_module.Non$T, Lit(this), x#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.Non(_module.Non$T))
           && $IsBox(x#0, _module.Non$T))
       ==> _module.Non.A(_module.Non$T, Lit(this), x#0) == LitInt(0));
// definition axiom for _module.Non.A for all literals (revealed)
axiom {:id "id124"} 0 <= $FunctionContextHeight
   ==> (forall _module.Non$T: Ty, this: DatatypeType, x#0: Box :: 
    {:weight 3} { _module.Non.A(_module.Non$T, Lit(this), Lit(x#0)) } 
    _module.Non.A#canCall(_module.Non$T, Lit(this), Lit(x#0))
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.Non(_module.Non$T))
           && $IsBox(x#0, _module.Non$T))
       ==> _module.Non.A(_module.Non$T, Lit(this), Lit(x#0)) == LitInt(0));
}

function _module.Non.A#canCall(_module.Non$T: Ty, this: DatatypeType, x#0: Box) : bool;

function _module.Non.A#requires(Ty, DatatypeType, Box) : bool;

// #requires axiom for _module.Non.A
axiom (forall _module.Non$T: Ty, this: DatatypeType, x#0: Box :: 
  { _module.Non.A#requires(_module.Non$T, this, x#0) } 
  $Is(this, Tclass._module.Non(_module.Non$T)) && $IsBox(x#0, _module.Non$T)
     ==> _module.Non.A#requires(_module.Non$T, this, x#0) == true);

procedure {:verboseName "Non.A (well-formedness)"} CheckWellformed$$_module.Non.A(_module.Non$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Non(_module.Non$T))
         && $IsAlloc(this, Tclass._module.Non(_module.Non$T), $Heap), 
    x#0: Box where $IsBox(x#0, _module.Non$T));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.Non.sA
function _module.Non.sA(_module.Non$T: Ty, x#0: Box) : int
uses {
// definition axiom for _module.Non.sA (revealed)
axiom {:id "id126"} 0 <= $FunctionContextHeight
   ==> (forall _module.Non$T: Ty, x#0: Box :: 
    { _module.Non.sA(_module.Non$T, x#0) } 
    _module.Non.sA#canCall(_module.Non$T, x#0)
         || (0 < $FunctionContextHeight && $IsBox(x#0, _module.Non$T))
       ==> _module.Non.sA(_module.Non$T, x#0) == LitInt(0));
// definition axiom for _module.Non.sA for all literals (revealed)
axiom {:id "id127"} 0 <= $FunctionContextHeight
   ==> (forall _module.Non$T: Ty, x#0: Box :: 
    {:weight 3} { _module.Non.sA(_module.Non$T, Lit(x#0)) } 
    _module.Non.sA#canCall(_module.Non$T, Lit(x#0))
         || (0 < $FunctionContextHeight && $IsBox(x#0, _module.Non$T))
       ==> _module.Non.sA(_module.Non$T, Lit(x#0)) == LitInt(0));
}

function _module.Non.sA#canCall(_module.Non$T: Ty, x#0: Box) : bool;

function _module.Non.sA#requires(Ty, Box) : bool;

// #requires axiom for _module.Non.sA
axiom (forall _module.Non$T: Ty, x#0: Box :: 
  { _module.Non.sA#requires(_module.Non$T, x#0) } 
  $IsBox(x#0, _module.Non$T)
     ==> _module.Non.sA#requires(_module.Non$T, x#0) == true);

procedure {:verboseName "Non.sA (well-formedness)"} CheckWellformed$$_module.Non.sA(_module.Non$T: Ty, x#0: Box where $IsBox(x#0, _module.Non$T));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.Non.gA
function _module.Non.gA(_module.Non$T: Ty, this: DatatypeType, x#0: Box) : int
uses {
// definition axiom for _module.Non.gA (revealed)
axiom {:id "id129"} 0 <= $FunctionContextHeight
   ==> (forall _module.Non$T: Ty, this: DatatypeType, x#0: Box :: 
    { _module.Non.gA(_module.Non$T, this, x#0) } 
    _module.Non.gA#canCall(_module.Non$T, this, x#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.Non(_module.Non$T))
           && $IsBox(x#0, _module.Non$T))
       ==> _module.Non.gA(_module.Non$T, this, x#0) == LitInt(0));
// definition axiom for _module.Non.gA for decreasing-related literals (revealed)
axiom {:id "id130"} 0 <= $FunctionContextHeight
   ==> (forall _module.Non$T: Ty, this: DatatypeType, x#0: Box :: 
    {:weight 3} { _module.Non.gA(_module.Non$T, Lit(this), x#0) } 
    _module.Non.gA#canCall(_module.Non$T, Lit(this), x#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.Non(_module.Non$T))
           && $IsBox(x#0, _module.Non$T))
       ==> _module.Non.gA(_module.Non$T, Lit(this), x#0) == LitInt(0));
// definition axiom for _module.Non.gA for all literals (revealed)
axiom {:id "id131"} 0 <= $FunctionContextHeight
   ==> (forall _module.Non$T: Ty, this: DatatypeType, x#0: Box :: 
    {:weight 3} { _module.Non.gA(_module.Non$T, Lit(this), Lit(x#0)) } 
    _module.Non.gA#canCall(_module.Non$T, Lit(this), Lit(x#0))
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.Non(_module.Non$T))
           && $IsBox(x#0, _module.Non$T))
       ==> _module.Non.gA(_module.Non$T, Lit(this), Lit(x#0)) == LitInt(0));
}

function _module.Non.gA#canCall(_module.Non$T: Ty, this: DatatypeType, x#0: Box) : bool;

function _module.Non.gA#requires(Ty, DatatypeType, Box) : bool;

// #requires axiom for _module.Non.gA
axiom (forall _module.Non$T: Ty, this: DatatypeType, x#0: Box :: 
  { _module.Non.gA#requires(_module.Non$T, this, x#0) } 
  $Is(this, Tclass._module.Non(_module.Non$T)) && $IsBox(x#0, _module.Non$T)
     ==> _module.Non.gA#requires(_module.Non$T, this, x#0) == true);

procedure {:verboseName "Non.gA (well-formedness)"} CheckWellformed$$_module.Non.gA(_module.Non$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Non(_module.Non$T))
         && $IsAlloc(this, Tclass._module.Non(_module.Non$T), $Heap), 
    x#0: Box where $IsBox(x#0, _module.Non$T));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.Non.B
function _module.Non.B(_module.Non$T: Ty, this: DatatypeType, x#0: Seq) : int
uses {
// definition axiom for _module.Non.B (revealed)
axiom {:id "id133"} 0 <= $FunctionContextHeight
   ==> (forall _module.Non$T: Ty, this: DatatypeType, x#0: Seq :: 
    { _module.Non.B(_module.Non$T, this, x#0) } 
    _module.Non.B#canCall(_module.Non$T, this, x#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.Non(_module.Non$T))
           && $Is(x#0, TSeq(_module.Non$T)))
       ==> _module.Non.B(_module.Non$T, this, x#0) == LitInt(0));
// definition axiom for _module.Non.B for all literals (revealed)
axiom {:id "id134"} 0 <= $FunctionContextHeight
   ==> (forall _module.Non$T: Ty, this: DatatypeType, x#0: Seq :: 
    {:weight 3} { _module.Non.B(_module.Non$T, Lit(this), Lit(x#0)) } 
    _module.Non.B#canCall(_module.Non$T, Lit(this), Lit(x#0))
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.Non(_module.Non$T))
           && $Is(x#0, TSeq(_module.Non$T)))
       ==> _module.Non.B(_module.Non$T, Lit(this), Lit(x#0)) == LitInt(0));
}

function _module.Non.B#canCall(_module.Non$T: Ty, this: DatatypeType, x#0: Seq) : bool;

function _module.Non.B#requires(Ty, DatatypeType, Seq) : bool;

// #requires axiom for _module.Non.B
axiom (forall _module.Non$T: Ty, this: DatatypeType, x#0: Seq :: 
  { _module.Non.B#requires(_module.Non$T, this, x#0) } 
  $Is(this, Tclass._module.Non(_module.Non$T)) && $Is(x#0, TSeq(_module.Non$T))
     ==> _module.Non.B#requires(_module.Non$T, this, x#0) == true);

procedure {:verboseName "Non.B (well-formedness)"} CheckWellformed$$_module.Non.B(_module.Non$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Non(_module.Non$T))
         && $IsAlloc(this, Tclass._module.Non(_module.Non$T), $Heap), 
    x#0: Seq where $Is(x#0, TSeq(_module.Non$T)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.Non.C
function _module.Non.C(_module.Non$T: Ty, this: DatatypeType, x#0: int) : Seq
uses {
// consequence axiom for _module.Non.C
axiom 1 <= $FunctionContextHeight
   ==> (forall _module.Non$T: Ty, this: DatatypeType, x#0: int :: 
    { _module.Non.C(_module.Non$T, this, x#0) } 
    _module.Non.C#canCall(_module.Non$T, this, x#0)
         || (1 < $FunctionContextHeight && $Is(this, Tclass._module.Non(_module.Non$T)))
       ==> $Is(_module.Non.C(_module.Non$T, this, x#0), TSeq(_module.Non$T)));
// alloc consequence axiom for _module.Non.C
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, _module.Non$T: Ty, this: DatatypeType, x#0: int :: 
    { $IsAlloc(_module.Non.C(_module.Non$T, this, x#0), TSeq(_module.Non$T), $Heap) } 
    (_module.Non.C#canCall(_module.Non$T, this, x#0)
           || (1 < $FunctionContextHeight
             && $IsAlloc(this, Tclass._module.Non(_module.Non$T), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.Non.C(_module.Non$T, this, x#0), TSeq(_module.Non$T), $Heap));
// definition axiom for _module.Non.C (revealed)
axiom {:id "id136"} 1 <= $FunctionContextHeight
   ==> (forall _module.Non$T: Ty, this: DatatypeType, x#0: int :: 
    { _module.Non.C(_module.Non$T, this, x#0) } 
    _module.Non.C#canCall(_module.Non$T, this, x#0)
         || (1 < $FunctionContextHeight && $Is(this, Tclass._module.Non(_module.Non$T)))
       ==> _module.Non.C(_module.Non$T, this, x#0) == _module.Non.y(_module.Non$T, this));
// definition axiom for _module.Non.C for all literals (revealed)
axiom {:id "id137"} 1 <= $FunctionContextHeight
   ==> (forall _module.Non$T: Ty, this: DatatypeType, x#0: int :: 
    {:weight 3} { _module.Non.C(_module.Non$T, Lit(this), LitInt(x#0)) } 
    _module.Non.C#canCall(_module.Non$T, Lit(this), LitInt(x#0))
         || (1 < $FunctionContextHeight && $Is(this, Tclass._module.Non(_module.Non$T)))
       ==> _module.Non.C(_module.Non$T, Lit(this), LitInt(x#0))
         == _module.Non.y(_module.Non$T, Lit(this)));
}

function _module.Non.C#canCall(_module.Non$T: Ty, this: DatatypeType, x#0: int) : bool;

function _module.Non.C#requires(Ty, DatatypeType, int) : bool;

// #requires axiom for _module.Non.C
axiom (forall _module.Non$T: Ty, this: DatatypeType, x#0: int :: 
  { _module.Non.C#requires(_module.Non$T, this, x#0) } 
  $Is(this, Tclass._module.Non(_module.Non$T))
     ==> _module.Non.C#requires(_module.Non$T, this, x#0) == true);

procedure {:verboseName "Non.C (well-formedness)"} CheckWellformed$$_module.Non.C(_module.Non$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Non(_module.Non$T))
         && $IsAlloc(this, Tclass._module.Non(_module.Non$T), $Heap), 
    x#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.Non.D
function _module.Non.D(_module.Non$T: Ty, this: DatatypeType, x#0: Box) : Box
uses {
// consequence axiom for _module.Non.D
axiom 0 <= $FunctionContextHeight
   ==> (forall _module.Non$T: Ty, this: DatatypeType, x#0: Box :: 
    { _module.Non.D(_module.Non$T, this, x#0) } 
    _module.Non.D#canCall(_module.Non$T, this, x#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.Non(_module.Non$T))
           && $IsBox(x#0, _module.Non$T))
       ==> $IsBox(_module.Non.D(_module.Non$T, this, x#0), _module.Non$T));
// alloc consequence axiom for _module.Non.D
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, _module.Non$T: Ty, this: DatatypeType, x#0: Box :: 
    { $IsAllocBox(_module.Non.D(_module.Non$T, this, x#0), _module.Non$T, $Heap) } 
    (_module.Non.D#canCall(_module.Non$T, this, x#0)
           || (0 < $FunctionContextHeight
             && 
            $IsAlloc(this, Tclass._module.Non(_module.Non$T), $Heap)
             && 
            $IsBox(x#0, _module.Non$T)
             && $IsAllocBox(x#0, _module.Non$T, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAllocBox(_module.Non.D(_module.Non$T, this, x#0), _module.Non$T, $Heap));
// definition axiom for _module.Non.D (revealed)
axiom {:id "id139"} 0 <= $FunctionContextHeight
   ==> (forall _module.Non$T: Ty, this: DatatypeType, x#0: Box :: 
    { _module.Non.D(_module.Non$T, this, x#0) } 
    _module.Non.D#canCall(_module.Non$T, this, x#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.Non(_module.Non$T))
           && $IsBox(x#0, _module.Non$T))
       ==> _module.Non.D(_module.Non$T, this, x#0) == x#0);
// definition axiom for _module.Non.D for decreasing-related literals (revealed)
axiom {:id "id140"} 0 <= $FunctionContextHeight
   ==> (forall _module.Non$T: Ty, this: DatatypeType, x#0: Box :: 
    {:weight 3} { _module.Non.D(_module.Non$T, Lit(this), x#0) } 
    _module.Non.D#canCall(_module.Non$T, Lit(this), x#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.Non(_module.Non$T))
           && $IsBox(x#0, _module.Non$T))
       ==> _module.Non.D(_module.Non$T, Lit(this), x#0) == x#0);
// definition axiom for _module.Non.D for all literals (revealed)
axiom {:id "id141"} 0 <= $FunctionContextHeight
   ==> (forall _module.Non$T: Ty, this: DatatypeType, x#0: Box :: 
    {:weight 3} { _module.Non.D(_module.Non$T, Lit(this), Lit(x#0)) } 
    _module.Non.D#canCall(_module.Non$T, Lit(this), Lit(x#0))
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.Non(_module.Non$T))
           && $IsBox(x#0, _module.Non$T))
       ==> _module.Non.D(_module.Non$T, Lit(this), Lit(x#0)) == Lit(x#0));
}

function _module.Non.D#canCall(_module.Non$T: Ty, this: DatatypeType, x#0: Box) : bool;

function _module.Non.D#requires(Ty, DatatypeType, Box) : bool;

// #requires axiom for _module.Non.D
axiom (forall _module.Non$T: Ty, this: DatatypeType, x#0: Box :: 
  { _module.Non.D#requires(_module.Non$T, this, x#0) } 
  $Is(this, Tclass._module.Non(_module.Non$T)) && $IsBox(x#0, _module.Non$T)
     ==> _module.Non.D#requires(_module.Non$T, this, x#0) == true);

procedure {:verboseName "Non.D (well-formedness)"} CheckWellformed$$_module.Non.D(_module.Non$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Non(_module.Non$T))
         && $IsAlloc(this, Tclass._module.Non(_module.Non$T), $Heap), 
    x#0: Box where $IsBox(x#0, _module.Non$T));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Non.mA (well-formedness)"} CheckWellFormed$$_module.Non.mA(_module.Non$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Non(_module.Non$T))
         && $IsAlloc(this, Tclass._module.Non(_module.Non$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.Non$T) && $IsAllocBox(x#0, _module.Non$T, $Heap))
   returns (r#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Non.mA (call)"} Call$$_module.Non.mA(_module.Non$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Non(_module.Non$T))
         && $IsAlloc(this, Tclass._module.Non(_module.Non$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.Non$T) && $IsAllocBox(x#0, _module.Non$T, $Heap))
   returns (r#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Non.mA (correctness)"} Impl$$_module.Non.mA(_module.Non$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Non(_module.Non$T))
         && $IsAlloc(this, Tclass._module.Non(_module.Non$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.Non$T) && $IsAllocBox(x#0, _module.Non$T, $Heap))
   returns (r#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Non.mD (well-formedness)"} CheckWellFormed$$_module.Non.mD(_module.Non$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Non(_module.Non$T))
         && $IsAlloc(this, Tclass._module.Non(_module.Non$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.Non$T) && $IsAllocBox(x#0, _module.Non$T, $Heap))
   returns (r#0: Box
       where $IsBox(r#0, _module.Non$T) && $IsAllocBox(r#0, _module.Non$T, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Non.mD (call)"} Call$$_module.Non.mD(_module.Non$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Non(_module.Non$T))
         && $IsAlloc(this, Tclass._module.Non(_module.Non$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.Non$T) && $IsAllocBox(x#0, _module.Non$T, $Heap))
   returns (r#0: Box
       where $IsBox(r#0, _module.Non$T) && $IsAllocBox(r#0, _module.Non$T, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Non.mD (correctness)"} Impl$$_module.Non.mD(_module.Non$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Non(_module.Non$T))
         && $IsAlloc(this, Tclass._module.Non(_module.Non$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.Non$T) && $IsAllocBox(x#0, _module.Non$T, $Heap))
   returns (defass#r#0: bool, 
    r#0: Box
       where defass#r#0
         ==> $IsBox(r#0, _module.Non$T) && $IsAllocBox(r#0, _module.Non$T, $Heap), 
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Non.mD (correctness)"} Impl$$_module.Non.mD(_module.Non$T: Ty, this: DatatypeType, x#0: Box)
   returns (defass#r#0: bool, r#0: Box, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: mD, Impl$$_module.Non.mD
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(30,40)
    assume true;
    assume true;
    r#0 := x#0;
    defass#r#0 := true;
    assert {:id "id145"} defass#r#0;
}



// Constructor function declaration
function #_module.Cont.Cont(HandleType) : DatatypeType;

const unique ##_module.Cont.Cont: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: HandleType :: 
  { #_module.Cont.Cont(a#0#0#0) } 
  DatatypeCtorId(#_module.Cont.Cont(a#0#0#0)) == ##_module.Cont.Cont);
}

function _module.Cont.Cont_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Cont.Cont_q(d) } 
  _module.Cont.Cont_q(d) <==> DatatypeCtorId(d) == ##_module.Cont.Cont);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Cont.Cont_q(d) } 
  _module.Cont.Cont_q(d)
     ==> (exists a#1#0#0: HandleType :: d == #_module.Cont.Cont(a#1#0#0)));

// Constructor $Is
axiom (forall _module.Cont$T: Ty, a#2#0#0: HandleType :: 
  { $Is(#_module.Cont.Cont(a#2#0#0), Tclass._module.Cont(_module.Cont$T)) } 
  $Is(#_module.Cont.Cont(a#2#0#0), Tclass._module.Cont(_module.Cont$T))
     <==> $Is(a#2#0#0, Tclass._System.___hTotalFunc1(_module.Cont$T, TInt)));

// Constructor $IsAlloc
axiom (forall _module.Cont$T: Ty, a#2#0#0: HandleType, $h: Heap :: 
  { $IsAlloc(#_module.Cont.Cont(a#2#0#0), Tclass._module.Cont(_module.Cont$T), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.Cont.Cont(a#2#0#0), Tclass._module.Cont(_module.Cont$T), $h)
       <==> $IsAlloc(a#2#0#0, Tclass._System.___hTotalFunc1(_module.Cont$T, TInt), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.Cont$T: Ty, $h: Heap :: 
  { $IsAlloc(_module.Cont.z(d), Tclass._System.___hTotalFunc1(_module.Cont$T, TInt), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Cont.Cont_q(d)
       && $IsAlloc(d, Tclass._module.Cont(_module.Cont$T), $h)
     ==> $IsAlloc(_module.Cont.z(d), Tclass._System.___hTotalFunc1(_module.Cont$T, TInt), $h));

// Constructor literal
axiom (forall a#3#0#0: HandleType :: 
  { #_module.Cont.Cont(Lit(a#3#0#0)) } 
  #_module.Cont.Cont(Lit(a#3#0#0)) == Lit(#_module.Cont.Cont(a#3#0#0)));

function _module.Cont.z(DatatypeType) : HandleType;

// Constructor injectivity
axiom (forall a#4#0#0: HandleType :: 
  { #_module.Cont.Cont(a#4#0#0) } 
  _module.Cont.z(#_module.Cont.Cont(a#4#0#0)) == a#4#0#0);

// Depth-one case-split function
function $IsA#_module.Cont(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Cont(d) } 
  $IsA#_module.Cont(d) ==> _module.Cont.Cont_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.Cont$T: Ty, d: DatatypeType :: 
  { _module.Cont.Cont_q(d), $Is(d, Tclass._module.Cont(_module.Cont$T)) } 
  $Is(d, Tclass._module.Cont(_module.Cont$T)) ==> _module.Cont.Cont_q(d));

// Datatype extensional equality declaration
function _module.Cont#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Cont.Cont
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Cont#Equal(a, b) } 
  _module.Cont#Equal(a, b) <==> _module.Cont.z(a) == _module.Cont.z(b));

// Datatype extensionality axiom: _module.Cont
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Cont#Equal(a, b) } 
  _module.Cont#Equal(a, b) <==> a == b);

const unique class._module.Cont: ClassName;

// function declaration for _module.Cont.A
function _module.Cont.A(_module.Cont$T: Ty, this: DatatypeType, x#0: Box) : int
uses {
// definition axiom for _module.Cont.A (revealed)
axiom {:id "id146"} 0 <= $FunctionContextHeight
   ==> (forall _module.Cont$T: Ty, this: DatatypeType, x#0: Box :: 
    { _module.Cont.A(_module.Cont$T, this, x#0) } 
    _module.Cont.A#canCall(_module.Cont$T, this, x#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.Cont(_module.Cont$T))
           && $IsBox(x#0, _module.Cont$T))
       ==> _module.Cont.A(_module.Cont$T, this, x#0) == LitInt(0));
// definition axiom for _module.Cont.A for decreasing-related literals (revealed)
axiom {:id "id147"} 0 <= $FunctionContextHeight
   ==> (forall _module.Cont$T: Ty, this: DatatypeType, x#0: Box :: 
    {:weight 3} { _module.Cont.A(_module.Cont$T, Lit(this), x#0) } 
    _module.Cont.A#canCall(_module.Cont$T, Lit(this), x#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.Cont(_module.Cont$T))
           && $IsBox(x#0, _module.Cont$T))
       ==> _module.Cont.A(_module.Cont$T, Lit(this), x#0) == LitInt(0));
// definition axiom for _module.Cont.A for all literals (revealed)
axiom {:id "id148"} 0 <= $FunctionContextHeight
   ==> (forall _module.Cont$T: Ty, this: DatatypeType, x#0: Box :: 
    {:weight 3} { _module.Cont.A(_module.Cont$T, Lit(this), Lit(x#0)) } 
    _module.Cont.A#canCall(_module.Cont$T, Lit(this), Lit(x#0))
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.Cont(_module.Cont$T))
           && $IsBox(x#0, _module.Cont$T))
       ==> _module.Cont.A(_module.Cont$T, Lit(this), Lit(x#0)) == LitInt(0));
}

function _module.Cont.A#canCall(_module.Cont$T: Ty, this: DatatypeType, x#0: Box) : bool;

function _module.Cont.A#requires(Ty, DatatypeType, Box) : bool;

// #requires axiom for _module.Cont.A
axiom (forall _module.Cont$T: Ty, this: DatatypeType, x#0: Box :: 
  { _module.Cont.A#requires(_module.Cont$T, this, x#0) } 
  $Is(this, Tclass._module.Cont(_module.Cont$T)) && $IsBox(x#0, _module.Cont$T)
     ==> _module.Cont.A#requires(_module.Cont$T, this, x#0) == true);

procedure {:verboseName "Cont.A (well-formedness)"} CheckWellformed$$_module.Cont.A(_module.Cont$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Cont(_module.Cont$T))
         && $IsAlloc(this, Tclass._module.Cont(_module.Cont$T), $Heap), 
    x#0: Box where $IsBox(x#0, _module.Cont$T));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.Cont.sA
function _module.Cont.sA(_module.Cont$T: Ty, x#0: Box) : int
uses {
// definition axiom for _module.Cont.sA (revealed)
axiom {:id "id150"} 0 <= $FunctionContextHeight
   ==> (forall _module.Cont$T: Ty, x#0: Box :: 
    { _module.Cont.sA(_module.Cont$T, x#0) } 
    _module.Cont.sA#canCall(_module.Cont$T, x#0)
         || (0 < $FunctionContextHeight && $IsBox(x#0, _module.Cont$T))
       ==> _module.Cont.sA(_module.Cont$T, x#0) == LitInt(0));
// definition axiom for _module.Cont.sA for all literals (revealed)
axiom {:id "id151"} 0 <= $FunctionContextHeight
   ==> (forall _module.Cont$T: Ty, x#0: Box :: 
    {:weight 3} { _module.Cont.sA(_module.Cont$T, Lit(x#0)) } 
    _module.Cont.sA#canCall(_module.Cont$T, Lit(x#0))
         || (0 < $FunctionContextHeight && $IsBox(x#0, _module.Cont$T))
       ==> _module.Cont.sA(_module.Cont$T, Lit(x#0)) == LitInt(0));
}

function _module.Cont.sA#canCall(_module.Cont$T: Ty, x#0: Box) : bool;

function _module.Cont.sA#requires(Ty, Box) : bool;

// #requires axiom for _module.Cont.sA
axiom (forall _module.Cont$T: Ty, x#0: Box :: 
  { _module.Cont.sA#requires(_module.Cont$T, x#0) } 
  $IsBox(x#0, _module.Cont$T)
     ==> _module.Cont.sA#requires(_module.Cont$T, x#0) == true);

procedure {:verboseName "Cont.sA (well-formedness)"} CheckWellformed$$_module.Cont.sA(_module.Cont$T: Ty, x#0: Box where $IsBox(x#0, _module.Cont$T));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.Cont.gA
function _module.Cont.gA(_module.Cont$T: Ty, this: DatatypeType, x#0: Box) : int
uses {
// definition axiom for _module.Cont.gA (revealed)
axiom {:id "id153"} 0 <= $FunctionContextHeight
   ==> (forall _module.Cont$T: Ty, this: DatatypeType, x#0: Box :: 
    { _module.Cont.gA(_module.Cont$T, this, x#0) } 
    _module.Cont.gA#canCall(_module.Cont$T, this, x#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.Cont(_module.Cont$T))
           && $IsBox(x#0, _module.Cont$T))
       ==> _module.Cont.gA(_module.Cont$T, this, x#0) == LitInt(0));
// definition axiom for _module.Cont.gA for decreasing-related literals (revealed)
axiom {:id "id154"} 0 <= $FunctionContextHeight
   ==> (forall _module.Cont$T: Ty, this: DatatypeType, x#0: Box :: 
    {:weight 3} { _module.Cont.gA(_module.Cont$T, Lit(this), x#0) } 
    _module.Cont.gA#canCall(_module.Cont$T, Lit(this), x#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.Cont(_module.Cont$T))
           && $IsBox(x#0, _module.Cont$T))
       ==> _module.Cont.gA(_module.Cont$T, Lit(this), x#0) == LitInt(0));
// definition axiom for _module.Cont.gA for all literals (revealed)
axiom {:id "id155"} 0 <= $FunctionContextHeight
   ==> (forall _module.Cont$T: Ty, this: DatatypeType, x#0: Box :: 
    {:weight 3} { _module.Cont.gA(_module.Cont$T, Lit(this), Lit(x#0)) } 
    _module.Cont.gA#canCall(_module.Cont$T, Lit(this), Lit(x#0))
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.Cont(_module.Cont$T))
           && $IsBox(x#0, _module.Cont$T))
       ==> _module.Cont.gA(_module.Cont$T, Lit(this), Lit(x#0)) == LitInt(0));
}

function _module.Cont.gA#canCall(_module.Cont$T: Ty, this: DatatypeType, x#0: Box) : bool;

function _module.Cont.gA#requires(Ty, DatatypeType, Box) : bool;

// #requires axiom for _module.Cont.gA
axiom (forall _module.Cont$T: Ty, this: DatatypeType, x#0: Box :: 
  { _module.Cont.gA#requires(_module.Cont$T, this, x#0) } 
  $Is(this, Tclass._module.Cont(_module.Cont$T)) && $IsBox(x#0, _module.Cont$T)
     ==> _module.Cont.gA#requires(_module.Cont$T, this, x#0) == true);

procedure {:verboseName "Cont.gA (well-formedness)"} CheckWellformed$$_module.Cont.gA(_module.Cont$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Cont(_module.Cont$T))
         && $IsAlloc(this, Tclass._module.Cont(_module.Cont$T), $Heap), 
    x#0: Box where $IsBox(x#0, _module.Cont$T));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.Cont.B
function _module.Cont.B(_module.Cont$T: Ty, this: DatatypeType, x#0: Seq) : int
uses {
// definition axiom for _module.Cont.B (revealed)
axiom {:id "id157"} 0 <= $FunctionContextHeight
   ==> (forall _module.Cont$T: Ty, this: DatatypeType, x#0: Seq :: 
    { _module.Cont.B(_module.Cont$T, this, x#0) } 
    _module.Cont.B#canCall(_module.Cont$T, this, x#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.Cont(_module.Cont$T))
           && $Is(x#0, TSeq(_module.Cont$T)))
       ==> _module.Cont.B(_module.Cont$T, this, x#0) == LitInt(0));
// definition axiom for _module.Cont.B for all literals (revealed)
axiom {:id "id158"} 0 <= $FunctionContextHeight
   ==> (forall _module.Cont$T: Ty, this: DatatypeType, x#0: Seq :: 
    {:weight 3} { _module.Cont.B(_module.Cont$T, Lit(this), Lit(x#0)) } 
    _module.Cont.B#canCall(_module.Cont$T, Lit(this), Lit(x#0))
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.Cont(_module.Cont$T))
           && $Is(x#0, TSeq(_module.Cont$T)))
       ==> _module.Cont.B(_module.Cont$T, Lit(this), Lit(x#0)) == LitInt(0));
}

function _module.Cont.B#canCall(_module.Cont$T: Ty, this: DatatypeType, x#0: Seq) : bool;

function _module.Cont.B#requires(Ty, DatatypeType, Seq) : bool;

// #requires axiom for _module.Cont.B
axiom (forall _module.Cont$T: Ty, this: DatatypeType, x#0: Seq :: 
  { _module.Cont.B#requires(_module.Cont$T, this, x#0) } 
  $Is(this, Tclass._module.Cont(_module.Cont$T)) && $Is(x#0, TSeq(_module.Cont$T))
     ==> _module.Cont.B#requires(_module.Cont$T, this, x#0) == true);

procedure {:verboseName "Cont.B (well-formedness)"} CheckWellformed$$_module.Cont.B(_module.Cont$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Cont(_module.Cont$T))
         && $IsAlloc(this, Tclass._module.Cont(_module.Cont$T), $Heap), 
    x#0: Seq where $Is(x#0, TSeq(_module.Cont$T)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.Cont.C
function _module.Cont.C(_module.Cont$T: Ty, this: DatatypeType, x#0: int) : Seq
uses {
// consequence axiom for _module.Cont.C
axiom 1 <= $FunctionContextHeight
   ==> (forall _module.Cont$T: Ty, this: DatatypeType, x#0: int :: 
    { _module.Cont.C(_module.Cont$T, this, x#0) } 
    _module.Cont.C#canCall(_module.Cont$T, this, x#0)
         || (1 < $FunctionContextHeight && $Is(this, Tclass._module.Cont(_module.Cont$T)))
       ==> $Is(_module.Cont.C(_module.Cont$T, this, x#0), TSeq(_module.Cont$T)));
// alloc consequence axiom for _module.Cont.C
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, _module.Cont$T: Ty, this: DatatypeType, x#0: int :: 
    { $IsAlloc(_module.Cont.C(_module.Cont$T, this, x#0), TSeq(_module.Cont$T), $Heap) } 
    (_module.Cont.C#canCall(_module.Cont$T, this, x#0)
           || (1 < $FunctionContextHeight
             && $IsAlloc(this, Tclass._module.Cont(_module.Cont$T), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.Cont.C(_module.Cont$T, this, x#0), TSeq(_module.Cont$T), $Heap));
// definition axiom for _module.Cont.C (revealed)
axiom {:id "id160"} 1 <= $FunctionContextHeight
   ==> (forall _module.Cont$T: Ty, this: DatatypeType, x#0: int :: 
    { _module.Cont.C(_module.Cont$T, this, x#0) } 
    _module.Cont.C#canCall(_module.Cont$T, this, x#0)
         || (1 < $FunctionContextHeight && $Is(this, Tclass._module.Cont(_module.Cont$T)))
       ==> _module.Cont.C(_module.Cont$T, this, x#0)
         == _module.Cont.y(_module.Cont$T, this));
// definition axiom for _module.Cont.C for all literals (revealed)
axiom {:id "id161"} 1 <= $FunctionContextHeight
   ==> (forall _module.Cont$T: Ty, this: DatatypeType, x#0: int :: 
    {:weight 3} { _module.Cont.C(_module.Cont$T, Lit(this), LitInt(x#0)) } 
    _module.Cont.C#canCall(_module.Cont$T, Lit(this), LitInt(x#0))
         || (1 < $FunctionContextHeight && $Is(this, Tclass._module.Cont(_module.Cont$T)))
       ==> _module.Cont.C(_module.Cont$T, Lit(this), LitInt(x#0))
         == _module.Cont.y(_module.Cont$T, Lit(this)));
}

function _module.Cont.C#canCall(_module.Cont$T: Ty, this: DatatypeType, x#0: int) : bool;

function _module.Cont.C#requires(Ty, DatatypeType, int) : bool;

// #requires axiom for _module.Cont.C
axiom (forall _module.Cont$T: Ty, this: DatatypeType, x#0: int :: 
  { _module.Cont.C#requires(_module.Cont$T, this, x#0) } 
  $Is(this, Tclass._module.Cont(_module.Cont$T))
     ==> _module.Cont.C#requires(_module.Cont$T, this, x#0) == true);

procedure {:verboseName "Cont.C (well-formedness)"} CheckWellformed$$_module.Cont.C(_module.Cont$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Cont(_module.Cont$T))
         && $IsAlloc(this, Tclass._module.Cont(_module.Cont$T), $Heap), 
    x#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.Cont.D
function _module.Cont.D(_module.Cont$T: Ty, this: DatatypeType, x#0: Box) : Box
uses {
// consequence axiom for _module.Cont.D
axiom 0 <= $FunctionContextHeight
   ==> (forall _module.Cont$T: Ty, this: DatatypeType, x#0: Box :: 
    { _module.Cont.D(_module.Cont$T, this, x#0) } 
    _module.Cont.D#canCall(_module.Cont$T, this, x#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.Cont(_module.Cont$T))
           && $IsBox(x#0, _module.Cont$T))
       ==> $IsBox(_module.Cont.D(_module.Cont$T, this, x#0), _module.Cont$T));
// alloc consequence axiom for _module.Cont.D
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, _module.Cont$T: Ty, this: DatatypeType, x#0: Box :: 
    { $IsAllocBox(_module.Cont.D(_module.Cont$T, this, x#0), _module.Cont$T, $Heap) } 
    (_module.Cont.D#canCall(_module.Cont$T, this, x#0)
           || (0 < $FunctionContextHeight
             && 
            $IsAlloc(this, Tclass._module.Cont(_module.Cont$T), $Heap)
             && 
            $IsBox(x#0, _module.Cont$T)
             && $IsAllocBox(x#0, _module.Cont$T, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAllocBox(_module.Cont.D(_module.Cont$T, this, x#0), _module.Cont$T, $Heap));
// definition axiom for _module.Cont.D (revealed)
axiom {:id "id163"} 0 <= $FunctionContextHeight
   ==> (forall _module.Cont$T: Ty, this: DatatypeType, x#0: Box :: 
    { _module.Cont.D(_module.Cont$T, this, x#0) } 
    _module.Cont.D#canCall(_module.Cont$T, this, x#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.Cont(_module.Cont$T))
           && $IsBox(x#0, _module.Cont$T))
       ==> _module.Cont.D(_module.Cont$T, this, x#0) == x#0);
// definition axiom for _module.Cont.D for decreasing-related literals (revealed)
axiom {:id "id164"} 0 <= $FunctionContextHeight
   ==> (forall _module.Cont$T: Ty, this: DatatypeType, x#0: Box :: 
    {:weight 3} { _module.Cont.D(_module.Cont$T, Lit(this), x#0) } 
    _module.Cont.D#canCall(_module.Cont$T, Lit(this), x#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.Cont(_module.Cont$T))
           && $IsBox(x#0, _module.Cont$T))
       ==> _module.Cont.D(_module.Cont$T, Lit(this), x#0) == x#0);
// definition axiom for _module.Cont.D for all literals (revealed)
axiom {:id "id165"} 0 <= $FunctionContextHeight
   ==> (forall _module.Cont$T: Ty, this: DatatypeType, x#0: Box :: 
    {:weight 3} { _module.Cont.D(_module.Cont$T, Lit(this), Lit(x#0)) } 
    _module.Cont.D#canCall(_module.Cont$T, Lit(this), Lit(x#0))
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.Cont(_module.Cont$T))
           && $IsBox(x#0, _module.Cont$T))
       ==> _module.Cont.D(_module.Cont$T, Lit(this), Lit(x#0)) == Lit(x#0));
}

function _module.Cont.D#canCall(_module.Cont$T: Ty, this: DatatypeType, x#0: Box) : bool;

function _module.Cont.D#requires(Ty, DatatypeType, Box) : bool;

// #requires axiom for _module.Cont.D
axiom (forall _module.Cont$T: Ty, this: DatatypeType, x#0: Box :: 
  { _module.Cont.D#requires(_module.Cont$T, this, x#0) } 
  $Is(this, Tclass._module.Cont(_module.Cont$T)) && $IsBox(x#0, _module.Cont$T)
     ==> _module.Cont.D#requires(_module.Cont$T, this, x#0) == true);

procedure {:verboseName "Cont.D (well-formedness)"} CheckWellformed$$_module.Cont.D(_module.Cont$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Cont(_module.Cont$T))
         && $IsAlloc(this, Tclass._module.Cont(_module.Cont$T), $Heap), 
    x#0: Box where $IsBox(x#0, _module.Cont$T));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Cont.mA (well-formedness)"} CheckWellFormed$$_module.Cont.mA(_module.Cont$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Cont(_module.Cont$T))
         && $IsAlloc(this, Tclass._module.Cont(_module.Cont$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.Cont$T) && $IsAllocBox(x#0, _module.Cont$T, $Heap))
   returns (r#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Cont.mA (call)"} Call$$_module.Cont.mA(_module.Cont$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Cont(_module.Cont$T))
         && $IsAlloc(this, Tclass._module.Cont(_module.Cont$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.Cont$T) && $IsAllocBox(x#0, _module.Cont$T, $Heap))
   returns (r#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Cont.mA (correctness)"} Impl$$_module.Cont.mA(_module.Cont$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Cont(_module.Cont$T))
         && $IsAlloc(this, Tclass._module.Cont(_module.Cont$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.Cont$T) && $IsAllocBox(x#0, _module.Cont$T, $Heap))
   returns (r#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Cont.mD (well-formedness)"} CheckWellFormed$$_module.Cont.mD(_module.Cont$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Cont(_module.Cont$T))
         && $IsAlloc(this, Tclass._module.Cont(_module.Cont$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.Cont$T) && $IsAllocBox(x#0, _module.Cont$T, $Heap))
   returns (r#0: Box
       where $IsBox(r#0, _module.Cont$T) && $IsAllocBox(r#0, _module.Cont$T, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Cont.mD (call)"} Call$$_module.Cont.mD(_module.Cont$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Cont(_module.Cont$T))
         && $IsAlloc(this, Tclass._module.Cont(_module.Cont$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.Cont$T) && $IsAllocBox(x#0, _module.Cont$T, $Heap))
   returns (r#0: Box
       where $IsBox(r#0, _module.Cont$T) && $IsAllocBox(r#0, _module.Cont$T, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Cont.mD (correctness)"} Impl$$_module.Cont.mD(_module.Cont$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Cont(_module.Cont$T))
         && $IsAlloc(this, Tclass._module.Cont(_module.Cont$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.Cont$T) && $IsAllocBox(x#0, _module.Cont$T, $Heap))
   returns (defass#r#0: bool, 
    r#0: Box
       where defass#r#0
         ==> $IsBox(r#0, _module.Cont$T) && $IsAllocBox(r#0, _module.Cont$T, $Heap), 
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Cont.mD (correctness)"} Impl$$_module.Cont.mD(_module.Cont$T: Ty, this: DatatypeType, x#0: Box)
   returns (defass#r#0: bool, r#0: Box, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: mD, Impl$$_module.Cont.mD
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(45,40)
    assume true;
    assume true;
    r#0 := x#0;
    defass#r#0 := true;
    assert {:id "id169"} defass#r#0;
}



// Constructor function declaration
function #_module.CCo.CCo(Box) : DatatypeType;

const unique ##_module.CCo.CCo: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: Box :: 
  { #_module.CCo.CCo(a#0#0#0) } 
  DatatypeCtorId(#_module.CCo.CCo(a#0#0#0)) == ##_module.CCo.CCo);
}

function _module.CCo.CCo_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.CCo.CCo_q(d) } 
  _module.CCo.CCo_q(d) <==> DatatypeCtorId(d) == ##_module.CCo.CCo);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.CCo.CCo_q(d) } 
  _module.CCo.CCo_q(d) ==> (exists a#1#0#0: Box :: d == #_module.CCo.CCo(a#1#0#0)));

// Constructor $Is
axiom (forall _module.CCo$T: Ty, a#2#0#0: Box :: 
  { $Is(#_module.CCo.CCo(a#2#0#0), Tclass._module.CCo(_module.CCo$T)) } 
  $Is(#_module.CCo.CCo(a#2#0#0), Tclass._module.CCo(_module.CCo$T))
     <==> $IsBox(a#2#0#0, _module.CCo$T));

// Constructor $IsAlloc
axiom (forall _module.CCo$T: Ty, a#2#0#0: Box, $h: Heap :: 
  { $IsAlloc(#_module.CCo.CCo(a#2#0#0), Tclass._module.CCo(_module.CCo$T), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.CCo.CCo(a#2#0#0), Tclass._module.CCo(_module.CCo$T), $h)
       <==> $IsAllocBox(a#2#0#0, _module.CCo$T, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.CCo$T: Ty, $h: Heap :: 
  { $IsAllocBox(_module.CCo._h1(d), _module.CCo$T, $h) } 
  $IsGoodHeap($h)
       && 
      _module.CCo.CCo_q(d)
       && $IsAlloc(d, Tclass._module.CCo(_module.CCo$T), $h)
     ==> $IsAllocBox(_module.CCo._h1(d), _module.CCo$T, $h));

function _module.CCo._h1(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#3#0#0: Box :: 
  { #_module.CCo.CCo(a#3#0#0) } 
  _module.CCo._h1(#_module.CCo.CCo(a#3#0#0)) == a#3#0#0);

// Depth-one case-split function
function $IsA#_module.CCo(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.CCo(d) } 
  $IsA#_module.CCo(d) ==> _module.CCo.CCo_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.CCo$T: Ty, d: DatatypeType :: 
  { _module.CCo.CCo_q(d), $Is(d, Tclass._module.CCo(_module.CCo$T)) } 
  $Is(d, Tclass._module.CCo(_module.CCo$T)) ==> _module.CCo.CCo_q(d));

function $Eq#_module.CCo(Ty, Ty, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall _module.CCo$T#l: Ty, 
    _module.CCo$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.CCo(_module.CCo$T#l, _module.CCo$T#r, $LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.CCo(_module.CCo$T#l))
       && $Is(d1, Tclass._module.CCo(_module.CCo$T#r))
     ==> ($Eq#_module.CCo(_module.CCo$T#l, _module.CCo$T#r, $LS(ly), d0, d1)
       <==> _module.CCo.CCo_q(d0)
         && _module.CCo.CCo_q(d1)
         && (_module.CCo.CCo_q(d0) && _module.CCo.CCo_q(d1)
           ==> _module.CCo._h1(d0) == _module.CCo._h1(d1))));

// Unbump layer co-equality axiom
axiom (forall _module.CCo$T#l: Ty, 
    _module.CCo$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.CCo(_module.CCo$T#l, _module.CCo$T#r, $LS(ly), d0, d1) } 
  $Eq#_module.CCo(_module.CCo$T#l, _module.CCo$T#r, $LS(ly), d0, d1)
     <==> $Eq#_module.CCo(_module.CCo$T#l, _module.CCo$T#r, ly, d0, d1));

// Equality for codatatypes
axiom (forall _module.CCo$T#l: Ty, 
    _module.CCo$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.CCo(_module.CCo$T#l, _module.CCo$T#r, $LS(ly), d0, d1) } 
  $Eq#_module.CCo(_module.CCo$T#l, _module.CCo$T#r, $LS(ly), d0, d1) <==> d0 == d1);

function $PrefixEq#_module.CCo(Ty, Ty, Box, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall _module.CCo$T#l: Ty, 
    _module.CCo$T#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.CCo(_module.CCo$T#l, _module.CCo$T#r, k, $LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.CCo(_module.CCo$T#l))
       && $Is(d1, Tclass._module.CCo(_module.CCo$T#r))
     ==> ($PrefixEq#_module.CCo(_module.CCo$T#l, _module.CCo$T#r, k, $LS(ly), d0, d1)
       <==> (0 < ORD#Offset(k)
           ==> _module.CCo.CCo_q(d0)
             && _module.CCo.CCo_q(d1)
             && (_module.CCo.CCo_q(d0) && _module.CCo.CCo_q(d1)
               ==> _module.CCo._h1(d0) == _module.CCo._h1(d1)))
         && (k != ORD#FromNat(0) && ORD#IsLimit(k)
           ==> $Eq#_module.CCo(_module.CCo$T#l, _module.CCo$T#r, ly, d0, d1))));

// Unbump layer co-equality axiom
axiom (forall _module.CCo$T#l: Ty, 
    _module.CCo$T#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.CCo(_module.CCo$T#l, _module.CCo$T#r, k, $LS(ly), d0, d1) } 
  k != ORD#FromNat(0)
     ==> ($PrefixEq#_module.CCo(_module.CCo$T#l, _module.CCo$T#r, k, $LS(ly), d0, d1)
       <==> $PrefixEq#_module.CCo(_module.CCo$T#l, _module.CCo$T#r, k, ly, d0, d1)));

// Coequality and prefix equality connection
axiom (forall _module.CCo$T#l: Ty, 
    _module.CCo$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.CCo(_module.CCo$T#l, _module.CCo$T#r, $LS(ly), d0, d1) } 
  $Eq#_module.CCo(_module.CCo$T#l, _module.CCo$T#r, $LS(ly), d0, d1)
     <==> (forall k: Box :: 
      { $PrefixEq#_module.CCo(_module.CCo$T#l, _module.CCo$T#r, k, $LS(ly), d0, d1) } 
      $PrefixEq#_module.CCo(_module.CCo$T#l, _module.CCo$T#r, k, $LS(ly), d0, d1)));

// Coequality and prefix equality connection
axiom (forall _module.CCo$T#l: Ty, 
    _module.CCo$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.CCo(_module.CCo$T#l, _module.CCo$T#r, $LS(ly), d0, d1) } 
  (forall k: int :: 
      { $PrefixEq#_module.CCo(_module.CCo$T#l, _module.CCo$T#r, ORD#FromNat(k), $LS(ly), d0, d1) } 
      0 <= k
         ==> $PrefixEq#_module.CCo(_module.CCo$T#l, _module.CCo$T#r, ORD#FromNat(k), $LS(ly), d0, d1))
     ==> $Eq#_module.CCo(_module.CCo$T#l, _module.CCo$T#r, $LS(ly), d0, d1));

// Prefix equality consequence
axiom (forall _module.CCo$T#l: Ty, 
    _module.CCo$T#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType, 
    m: Box :: 
  { $PrefixEq#_module.CCo(_module.CCo$T#l, _module.CCo$T#r, k, $LS(ly), d0, d1), $PrefixEq#_module.CCo(_module.CCo$T#l, _module.CCo$T#r, m, $LS(ly), d0, d1) } 
  ORD#Less(k, m)
       && $PrefixEq#_module.CCo(_module.CCo$T#l, _module.CCo$T#r, m, $LS(ly), d0, d1)
     ==> $PrefixEq#_module.CCo(_module.CCo$T#l, _module.CCo$T#r, k, $LS(ly), d0, d1));

// Prefix equality shortcut
axiom (forall _module.CCo$T#l: Ty, 
    _module.CCo$T#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.CCo(_module.CCo$T#l, _module.CCo$T#r, k, $LS(ly), d0, d1) } 
  d0 == d1
     ==> $PrefixEq#_module.CCo(_module.CCo$T#l, _module.CCo$T#r, k, $LS(ly), d0, d1));

const unique class._module.CCo: ClassName;

// function declaration for _module.CCo.A
function _module.CCo.A(_module.CCo$T: Ty, this: DatatypeType, x#0: Box) : int
uses {
// definition axiom for _module.CCo.A (revealed)
axiom {:id "id170"} 0 <= $FunctionContextHeight
   ==> (forall _module.CCo$T: Ty, this: DatatypeType, x#0: Box :: 
    { _module.CCo.A(_module.CCo$T, this, x#0) } 
    _module.CCo.A#canCall(_module.CCo$T, this, x#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.CCo(_module.CCo$T))
           && $IsBox(x#0, _module.CCo$T))
       ==> _module.CCo.A(_module.CCo$T, this, x#0) == LitInt(0));
// definition axiom for _module.CCo.A for all literals (revealed)
axiom {:id "id171"} 0 <= $FunctionContextHeight
   ==> (forall _module.CCo$T: Ty, this: DatatypeType, x#0: Box :: 
    {:weight 3} { _module.CCo.A(_module.CCo$T, Lit(this), Lit(x#0)) } 
    _module.CCo.A#canCall(_module.CCo$T, Lit(this), Lit(x#0))
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.CCo(_module.CCo$T))
           && $IsBox(x#0, _module.CCo$T))
       ==> _module.CCo.A(_module.CCo$T, Lit(this), Lit(x#0)) == LitInt(0));
}

function _module.CCo.A#canCall(_module.CCo$T: Ty, this: DatatypeType, x#0: Box) : bool;

function _module.CCo.A#requires(Ty, DatatypeType, Box) : bool;

// #requires axiom for _module.CCo.A
axiom (forall _module.CCo$T: Ty, this: DatatypeType, x#0: Box :: 
  { _module.CCo.A#requires(_module.CCo$T, this, x#0) } 
  $Is(this, Tclass._module.CCo(_module.CCo$T)) && $IsBox(x#0, _module.CCo$T)
     ==> _module.CCo.A#requires(_module.CCo$T, this, x#0) == true);

procedure {:verboseName "CCo.A (well-formedness)"} CheckWellformed$$_module.CCo.A(_module.CCo$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.CCo(_module.CCo$T))
         && $IsAlloc(this, Tclass._module.CCo(_module.CCo$T), $Heap), 
    x#0: Box where $IsBox(x#0, _module.CCo$T));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.CCo.sA
function _module.CCo.sA(_module.CCo$T: Ty, x#0: Box) : int
uses {
// definition axiom for _module.CCo.sA (revealed)
axiom {:id "id173"} 0 <= $FunctionContextHeight
   ==> (forall _module.CCo$T: Ty, x#0: Box :: 
    { _module.CCo.sA(_module.CCo$T, x#0) } 
    _module.CCo.sA#canCall(_module.CCo$T, x#0)
         || (0 < $FunctionContextHeight && $IsBox(x#0, _module.CCo$T))
       ==> _module.CCo.sA(_module.CCo$T, x#0) == LitInt(0));
// definition axiom for _module.CCo.sA for all literals (revealed)
axiom {:id "id174"} 0 <= $FunctionContextHeight
   ==> (forall _module.CCo$T: Ty, x#0: Box :: 
    {:weight 3} { _module.CCo.sA(_module.CCo$T, Lit(x#0)) } 
    _module.CCo.sA#canCall(_module.CCo$T, Lit(x#0))
         || (0 < $FunctionContextHeight && $IsBox(x#0, _module.CCo$T))
       ==> _module.CCo.sA(_module.CCo$T, Lit(x#0)) == LitInt(0));
}

function _module.CCo.sA#canCall(_module.CCo$T: Ty, x#0: Box) : bool;

function _module.CCo.sA#requires(Ty, Box) : bool;

// #requires axiom for _module.CCo.sA
axiom (forall _module.CCo$T: Ty, x#0: Box :: 
  { _module.CCo.sA#requires(_module.CCo$T, x#0) } 
  $IsBox(x#0, _module.CCo$T)
     ==> _module.CCo.sA#requires(_module.CCo$T, x#0) == true);

procedure {:verboseName "CCo.sA (well-formedness)"} CheckWellformed$$_module.CCo.sA(_module.CCo$T: Ty, x#0: Box where $IsBox(x#0, _module.CCo$T));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.CCo.gA
function _module.CCo.gA(_module.CCo$T: Ty, this: DatatypeType, x#0: Box) : int
uses {
// definition axiom for _module.CCo.gA (revealed)
axiom {:id "id176"} 0 <= $FunctionContextHeight
   ==> (forall _module.CCo$T: Ty, this: DatatypeType, x#0: Box :: 
    { _module.CCo.gA(_module.CCo$T, this, x#0) } 
    _module.CCo.gA#canCall(_module.CCo$T, this, x#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.CCo(_module.CCo$T))
           && $IsBox(x#0, _module.CCo$T))
       ==> _module.CCo.gA(_module.CCo$T, this, x#0) == LitInt(0));
// definition axiom for _module.CCo.gA for all literals (revealed)
axiom {:id "id177"} 0 <= $FunctionContextHeight
   ==> (forall _module.CCo$T: Ty, this: DatatypeType, x#0: Box :: 
    {:weight 3} { _module.CCo.gA(_module.CCo$T, Lit(this), Lit(x#0)) } 
    _module.CCo.gA#canCall(_module.CCo$T, Lit(this), Lit(x#0))
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.CCo(_module.CCo$T))
           && $IsBox(x#0, _module.CCo$T))
       ==> _module.CCo.gA(_module.CCo$T, Lit(this), Lit(x#0)) == LitInt(0));
}

function _module.CCo.gA#canCall(_module.CCo$T: Ty, this: DatatypeType, x#0: Box) : bool;

function _module.CCo.gA#requires(Ty, DatatypeType, Box) : bool;

// #requires axiom for _module.CCo.gA
axiom (forall _module.CCo$T: Ty, this: DatatypeType, x#0: Box :: 
  { _module.CCo.gA#requires(_module.CCo$T, this, x#0) } 
  $Is(this, Tclass._module.CCo(_module.CCo$T)) && $IsBox(x#0, _module.CCo$T)
     ==> _module.CCo.gA#requires(_module.CCo$T, this, x#0) == true);

procedure {:verboseName "CCo.gA (well-formedness)"} CheckWellformed$$_module.CCo.gA(_module.CCo$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.CCo(_module.CCo$T))
         && $IsAlloc(this, Tclass._module.CCo(_module.CCo$T), $Heap), 
    x#0: Box where $IsBox(x#0, _module.CCo$T));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.CCo.B
function _module.CCo.B(_module.CCo$T: Ty, this: DatatypeType, x#0: Seq) : int
uses {
// definition axiom for _module.CCo.B (revealed)
axiom {:id "id179"} 0 <= $FunctionContextHeight
   ==> (forall _module.CCo$T: Ty, this: DatatypeType, x#0: Seq :: 
    { _module.CCo.B(_module.CCo$T, this, x#0) } 
    _module.CCo.B#canCall(_module.CCo$T, this, x#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.CCo(_module.CCo$T))
           && $Is(x#0, TSeq(_module.CCo$T)))
       ==> _module.CCo.B(_module.CCo$T, this, x#0) == LitInt(0));
// definition axiom for _module.CCo.B for decreasing-related literals (revealed)
axiom {:id "id180"} 0 <= $FunctionContextHeight
   ==> (forall _module.CCo$T: Ty, this: DatatypeType, x#0: Seq :: 
    {:weight 3} { _module.CCo.B(_module.CCo$T, this, Lit(x#0)) } 
    _module.CCo.B#canCall(_module.CCo$T, this, Lit(x#0))
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.CCo(_module.CCo$T))
           && $Is(x#0, TSeq(_module.CCo$T)))
       ==> _module.CCo.B(_module.CCo$T, this, Lit(x#0)) == LitInt(0));
// definition axiom for _module.CCo.B for all literals (revealed)
axiom {:id "id181"} 0 <= $FunctionContextHeight
   ==> (forall _module.CCo$T: Ty, this: DatatypeType, x#0: Seq :: 
    {:weight 3} { _module.CCo.B(_module.CCo$T, Lit(this), Lit(x#0)) } 
    _module.CCo.B#canCall(_module.CCo$T, Lit(this), Lit(x#0))
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.CCo(_module.CCo$T))
           && $Is(x#0, TSeq(_module.CCo$T)))
       ==> _module.CCo.B(_module.CCo$T, Lit(this), Lit(x#0)) == LitInt(0));
}

function _module.CCo.B#canCall(_module.CCo$T: Ty, this: DatatypeType, x#0: Seq) : bool;

function _module.CCo.B#requires(Ty, DatatypeType, Seq) : bool;

// #requires axiom for _module.CCo.B
axiom (forall _module.CCo$T: Ty, this: DatatypeType, x#0: Seq :: 
  { _module.CCo.B#requires(_module.CCo$T, this, x#0) } 
  $Is(this, Tclass._module.CCo(_module.CCo$T)) && $Is(x#0, TSeq(_module.CCo$T))
     ==> _module.CCo.B#requires(_module.CCo$T, this, x#0) == true);

procedure {:verboseName "CCo.B (well-formedness)"} CheckWellformed$$_module.CCo.B(_module.CCo$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.CCo(_module.CCo$T))
         && $IsAlloc(this, Tclass._module.CCo(_module.CCo$T), $Heap), 
    x#0: Seq where $Is(x#0, TSeq(_module.CCo$T)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.CCo.C
function _module.CCo.C(_module.CCo$T: Ty, this: DatatypeType, x#0: int) : Seq
uses {
// consequence axiom for _module.CCo.C
axiom 1 <= $FunctionContextHeight
   ==> (forall _module.CCo$T: Ty, this: DatatypeType, x#0: int :: 
    { _module.CCo.C(_module.CCo$T, this, x#0) } 
    _module.CCo.C#canCall(_module.CCo$T, this, x#0)
         || (1 < $FunctionContextHeight && $Is(this, Tclass._module.CCo(_module.CCo$T)))
       ==> $Is(_module.CCo.C(_module.CCo$T, this, x#0), TSeq(_module.CCo$T)));
// alloc consequence axiom for _module.CCo.C
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, _module.CCo$T: Ty, this: DatatypeType, x#0: int :: 
    { $IsAlloc(_module.CCo.C(_module.CCo$T, this, x#0), TSeq(_module.CCo$T), $Heap) } 
    (_module.CCo.C#canCall(_module.CCo$T, this, x#0)
           || (1 < $FunctionContextHeight
             && $IsAlloc(this, Tclass._module.CCo(_module.CCo$T), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.CCo.C(_module.CCo$T, this, x#0), TSeq(_module.CCo$T), $Heap));
// definition axiom for _module.CCo.C (revealed)
axiom {:id "id183"} 1 <= $FunctionContextHeight
   ==> (forall _module.CCo$T: Ty, this: DatatypeType, x#0: int :: 
    { _module.CCo.C(_module.CCo$T, this, x#0) } 
    _module.CCo.C#canCall(_module.CCo$T, this, x#0)
         || (1 < $FunctionContextHeight && $Is(this, Tclass._module.CCo(_module.CCo$T)))
       ==> _module.CCo.C(_module.CCo$T, this, x#0) == _module.CCo.y(_module.CCo$T, this));
// definition axiom for _module.CCo.C for decreasing-related literals (revealed)
axiom {:id "id184"} 1 <= $FunctionContextHeight
   ==> (forall _module.CCo$T: Ty, this: DatatypeType, x#0: int :: 
    {:weight 3} { _module.CCo.C(_module.CCo$T, this, LitInt(x#0)) } 
    _module.CCo.C#canCall(_module.CCo$T, this, LitInt(x#0))
         || (1 < $FunctionContextHeight && $Is(this, Tclass._module.CCo(_module.CCo$T)))
       ==> _module.CCo.C(_module.CCo$T, this, LitInt(x#0))
         == _module.CCo.y(_module.CCo$T, this));
// definition axiom for _module.CCo.C for all literals (revealed)
axiom {:id "id185"} 1 <= $FunctionContextHeight
   ==> (forall _module.CCo$T: Ty, this: DatatypeType, x#0: int :: 
    {:weight 3} { _module.CCo.C(_module.CCo$T, Lit(this), LitInt(x#0)) } 
    _module.CCo.C#canCall(_module.CCo$T, Lit(this), LitInt(x#0))
         || (1 < $FunctionContextHeight && $Is(this, Tclass._module.CCo(_module.CCo$T)))
       ==> _module.CCo.C(_module.CCo$T, Lit(this), LitInt(x#0))
         == _module.CCo.y(_module.CCo$T, Lit(this)));
}

function _module.CCo.C#canCall(_module.CCo$T: Ty, this: DatatypeType, x#0: int) : bool;

function _module.CCo.C#requires(Ty, DatatypeType, int) : bool;

// #requires axiom for _module.CCo.C
axiom (forall _module.CCo$T: Ty, this: DatatypeType, x#0: int :: 
  { _module.CCo.C#requires(_module.CCo$T, this, x#0) } 
  $Is(this, Tclass._module.CCo(_module.CCo$T))
     ==> _module.CCo.C#requires(_module.CCo$T, this, x#0) == true);

procedure {:verboseName "CCo.C (well-formedness)"} CheckWellformed$$_module.CCo.C(_module.CCo$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.CCo(_module.CCo$T))
         && $IsAlloc(this, Tclass._module.CCo(_module.CCo$T), $Heap), 
    x#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.CCo.D
function _module.CCo.D(_module.CCo$T: Ty, this: DatatypeType, x#0: Box) : Box
uses {
// consequence axiom for _module.CCo.D
axiom 0 <= $FunctionContextHeight
   ==> (forall _module.CCo$T: Ty, this: DatatypeType, x#0: Box :: 
    { _module.CCo.D(_module.CCo$T, this, x#0) } 
    _module.CCo.D#canCall(_module.CCo$T, this, x#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.CCo(_module.CCo$T))
           && $IsBox(x#0, _module.CCo$T))
       ==> $IsBox(_module.CCo.D(_module.CCo$T, this, x#0), _module.CCo$T));
// alloc consequence axiom for _module.CCo.D
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, _module.CCo$T: Ty, this: DatatypeType, x#0: Box :: 
    { $IsAllocBox(_module.CCo.D(_module.CCo$T, this, x#0), _module.CCo$T, $Heap) } 
    (_module.CCo.D#canCall(_module.CCo$T, this, x#0)
           || (0 < $FunctionContextHeight
             && 
            $IsAlloc(this, Tclass._module.CCo(_module.CCo$T), $Heap)
             && 
            $IsBox(x#0, _module.CCo$T)
             && $IsAllocBox(x#0, _module.CCo$T, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAllocBox(_module.CCo.D(_module.CCo$T, this, x#0), _module.CCo$T, $Heap));
// definition axiom for _module.CCo.D (revealed)
axiom {:id "id187"} 0 <= $FunctionContextHeight
   ==> (forall _module.CCo$T: Ty, this: DatatypeType, x#0: Box :: 
    { _module.CCo.D(_module.CCo$T, this, x#0) } 
    _module.CCo.D#canCall(_module.CCo$T, this, x#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.CCo(_module.CCo$T))
           && $IsBox(x#0, _module.CCo$T))
       ==> _module.CCo.D(_module.CCo$T, this, x#0) == x#0);
// definition axiom for _module.CCo.D for all literals (revealed)
axiom {:id "id188"} 0 <= $FunctionContextHeight
   ==> (forall _module.CCo$T: Ty, this: DatatypeType, x#0: Box :: 
    {:weight 3} { _module.CCo.D(_module.CCo$T, Lit(this), Lit(x#0)) } 
    _module.CCo.D#canCall(_module.CCo$T, Lit(this), Lit(x#0))
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.CCo(_module.CCo$T))
           && $IsBox(x#0, _module.CCo$T))
       ==> _module.CCo.D(_module.CCo$T, Lit(this), Lit(x#0)) == Lit(x#0));
}

function _module.CCo.D#canCall(_module.CCo$T: Ty, this: DatatypeType, x#0: Box) : bool;

function _module.CCo.D#requires(Ty, DatatypeType, Box) : bool;

// #requires axiom for _module.CCo.D
axiom (forall _module.CCo$T: Ty, this: DatatypeType, x#0: Box :: 
  { _module.CCo.D#requires(_module.CCo$T, this, x#0) } 
  $Is(this, Tclass._module.CCo(_module.CCo$T)) && $IsBox(x#0, _module.CCo$T)
     ==> _module.CCo.D#requires(_module.CCo$T, this, x#0) == true);

procedure {:verboseName "CCo.D (well-formedness)"} CheckWellformed$$_module.CCo.D(_module.CCo$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.CCo(_module.CCo$T))
         && $IsAlloc(this, Tclass._module.CCo(_module.CCo$T), $Heap), 
    x#0: Box where $IsBox(x#0, _module.CCo$T));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "CCo.mA (well-formedness)"} CheckWellFormed$$_module.CCo.mA(_module.CCo$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.CCo(_module.CCo$T))
         && $IsAlloc(this, Tclass._module.CCo(_module.CCo$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.CCo$T) && $IsAllocBox(x#0, _module.CCo$T, $Heap))
   returns (r#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "CCo.mA (call)"} Call$$_module.CCo.mA(_module.CCo$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.CCo(_module.CCo$T))
         && $IsAlloc(this, Tclass._module.CCo(_module.CCo$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.CCo$T) && $IsAllocBox(x#0, _module.CCo$T, $Heap))
   returns (r#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "CCo.mA (correctness)"} Impl$$_module.CCo.mA(_module.CCo$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.CCo(_module.CCo$T))
         && $IsAlloc(this, Tclass._module.CCo(_module.CCo$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.CCo$T) && $IsAllocBox(x#0, _module.CCo$T, $Heap))
   returns (r#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "CCo.mD (well-formedness)"} CheckWellFormed$$_module.CCo.mD(_module.CCo$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.CCo(_module.CCo$T))
         && $IsAlloc(this, Tclass._module.CCo(_module.CCo$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.CCo$T) && $IsAllocBox(x#0, _module.CCo$T, $Heap))
   returns (r#0: Box
       where $IsBox(r#0, _module.CCo$T) && $IsAllocBox(r#0, _module.CCo$T, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "CCo.mD (call)"} Call$$_module.CCo.mD(_module.CCo$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.CCo(_module.CCo$T))
         && $IsAlloc(this, Tclass._module.CCo(_module.CCo$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.CCo$T) && $IsAllocBox(x#0, _module.CCo$T, $Heap))
   returns (r#0: Box
       where $IsBox(r#0, _module.CCo$T) && $IsAllocBox(r#0, _module.CCo$T, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "CCo.mD (correctness)"} Impl$$_module.CCo.mD(_module.CCo$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.CCo(_module.CCo$T))
         && $IsAlloc(this, Tclass._module.CCo(_module.CCo$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.CCo$T) && $IsAllocBox(x#0, _module.CCo$T, $Heap))
   returns (defass#r#0: bool, 
    r#0: Box
       where defass#r#0
         ==> $IsBox(r#0, _module.CCo$T) && $IsAllocBox(r#0, _module.CCo$T, $Heap), 
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "CCo.mD (correctness)"} Impl$$_module.CCo.mD(_module.CCo$T: Ty, this: DatatypeType, x#0: Box)
   returns (defass#r#0: bool, r#0: Box, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: mD, Impl$$_module.CCo.mD
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(60,40)
    assume true;
    assume true;
    r#0 := x#0;
    defass#r#0 := true;
    assert {:id "id192"} defass#r#0;
}



// Constructor function declaration
function #_module.CNon.CNon(Box) : DatatypeType;

const unique ##_module.CNon.CNon: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: Box :: 
  { #_module.CNon.CNon(a#0#0#0) } 
  DatatypeCtorId(#_module.CNon.CNon(a#0#0#0)) == ##_module.CNon.CNon);
}

function _module.CNon.CNon_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.CNon.CNon_q(d) } 
  _module.CNon.CNon_q(d) <==> DatatypeCtorId(d) == ##_module.CNon.CNon);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.CNon.CNon_q(d) } 
  _module.CNon.CNon_q(d)
     ==> (exists a#1#0#0: Box :: d == #_module.CNon.CNon(a#1#0#0)));

// Constructor $Is
axiom (forall _module.CNon$T: Ty, a#2#0#0: Box :: 
  { $Is(#_module.CNon.CNon(a#2#0#0), Tclass._module.CNon(_module.CNon$T)) } 
  $Is(#_module.CNon.CNon(a#2#0#0), Tclass._module.CNon(_module.CNon$T))
     <==> $IsBox(a#2#0#0, _module.CNon$T));

// Constructor $IsAlloc
axiom (forall _module.CNon$T: Ty, a#2#0#0: Box, $h: Heap :: 
  { $IsAlloc(#_module.CNon.CNon(a#2#0#0), Tclass._module.CNon(_module.CNon$T), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.CNon.CNon(a#2#0#0), Tclass._module.CNon(_module.CNon$T), $h)
       <==> $IsAllocBox(a#2#0#0, _module.CNon$T, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.CNon$T: Ty, $h: Heap :: 
  { $IsAllocBox(_module.CNon.z(d), _module.CNon$T, $h) } 
  $IsGoodHeap($h)
       && 
      _module.CNon.CNon_q(d)
       && $IsAlloc(d, Tclass._module.CNon(_module.CNon$T), $h)
     ==> $IsAllocBox(_module.CNon.z(d), _module.CNon$T, $h));

function _module.CNon.z(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#3#0#0: Box :: 
  { #_module.CNon.CNon(a#3#0#0) } 
  _module.CNon.z(#_module.CNon.CNon(a#3#0#0)) == a#3#0#0);

// Depth-one case-split function
function $IsA#_module.CNon(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.CNon(d) } 
  $IsA#_module.CNon(d) ==> _module.CNon.CNon_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.CNon$T: Ty, d: DatatypeType :: 
  { _module.CNon.CNon_q(d), $Is(d, Tclass._module.CNon(_module.CNon$T)) } 
  $Is(d, Tclass._module.CNon(_module.CNon$T)) ==> _module.CNon.CNon_q(d));

function $Eq#_module.CNon(Ty, Ty, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall _module.CNon$T#l: Ty, 
    _module.CNon$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.CNon(_module.CNon$T#l, _module.CNon$T#r, $LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.CNon(_module.CNon$T#l))
       && $Is(d1, Tclass._module.CNon(_module.CNon$T#r))
     ==> ($Eq#_module.CNon(_module.CNon$T#l, _module.CNon$T#r, $LS(ly), d0, d1)
       <==> _module.CNon.CNon_q(d0)
         && _module.CNon.CNon_q(d1)
         && (_module.CNon.CNon_q(d0) && _module.CNon.CNon_q(d1)
           ==> _module.CNon.z(d0) == _module.CNon.z(d1))));

// Unbump layer co-equality axiom
axiom (forall _module.CNon$T#l: Ty, 
    _module.CNon$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.CNon(_module.CNon$T#l, _module.CNon$T#r, $LS(ly), d0, d1) } 
  $Eq#_module.CNon(_module.CNon$T#l, _module.CNon$T#r, $LS(ly), d0, d1)
     <==> $Eq#_module.CNon(_module.CNon$T#l, _module.CNon$T#r, ly, d0, d1));

// Equality for codatatypes
axiom (forall _module.CNon$T#l: Ty, 
    _module.CNon$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.CNon(_module.CNon$T#l, _module.CNon$T#r, $LS(ly), d0, d1) } 
  $Eq#_module.CNon(_module.CNon$T#l, _module.CNon$T#r, $LS(ly), d0, d1)
     <==> d0 == d1);

function $PrefixEq#_module.CNon(Ty, Ty, Box, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall _module.CNon$T#l: Ty, 
    _module.CNon$T#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.CNon(_module.CNon$T#l, _module.CNon$T#r, k, $LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.CNon(_module.CNon$T#l))
       && $Is(d1, Tclass._module.CNon(_module.CNon$T#r))
     ==> ($PrefixEq#_module.CNon(_module.CNon$T#l, _module.CNon$T#r, k, $LS(ly), d0, d1)
       <==> (0 < ORD#Offset(k)
           ==> _module.CNon.CNon_q(d0)
             && _module.CNon.CNon_q(d1)
             && (_module.CNon.CNon_q(d0) && _module.CNon.CNon_q(d1)
               ==> _module.CNon.z(d0) == _module.CNon.z(d1)))
         && (k != ORD#FromNat(0) && ORD#IsLimit(k)
           ==> $Eq#_module.CNon(_module.CNon$T#l, _module.CNon$T#r, ly, d0, d1))));

// Unbump layer co-equality axiom
axiom (forall _module.CNon$T#l: Ty, 
    _module.CNon$T#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.CNon(_module.CNon$T#l, _module.CNon$T#r, k, $LS(ly), d0, d1) } 
  k != ORD#FromNat(0)
     ==> ($PrefixEq#_module.CNon(_module.CNon$T#l, _module.CNon$T#r, k, $LS(ly), d0, d1)
       <==> $PrefixEq#_module.CNon(_module.CNon$T#l, _module.CNon$T#r, k, ly, d0, d1)));

// Coequality and prefix equality connection
axiom (forall _module.CNon$T#l: Ty, 
    _module.CNon$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.CNon(_module.CNon$T#l, _module.CNon$T#r, $LS(ly), d0, d1) } 
  $Eq#_module.CNon(_module.CNon$T#l, _module.CNon$T#r, $LS(ly), d0, d1)
     <==> (forall k: Box :: 
      { $PrefixEq#_module.CNon(_module.CNon$T#l, _module.CNon$T#r, k, $LS(ly), d0, d1) } 
      $PrefixEq#_module.CNon(_module.CNon$T#l, _module.CNon$T#r, k, $LS(ly), d0, d1)));

// Coequality and prefix equality connection
axiom (forall _module.CNon$T#l: Ty, 
    _module.CNon$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.CNon(_module.CNon$T#l, _module.CNon$T#r, $LS(ly), d0, d1) } 
  (forall k: int :: 
      { $PrefixEq#_module.CNon(_module.CNon$T#l, _module.CNon$T#r, ORD#FromNat(k), $LS(ly), d0, d1) } 
      0 <= k
         ==> $PrefixEq#_module.CNon(_module.CNon$T#l, _module.CNon$T#r, ORD#FromNat(k), $LS(ly), d0, d1))
     ==> $Eq#_module.CNon(_module.CNon$T#l, _module.CNon$T#r, $LS(ly), d0, d1));

// Prefix equality consequence
axiom (forall _module.CNon$T#l: Ty, 
    _module.CNon$T#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType, 
    m: Box :: 
  { $PrefixEq#_module.CNon(_module.CNon$T#l, _module.CNon$T#r, k, $LS(ly), d0, d1), $PrefixEq#_module.CNon(_module.CNon$T#l, _module.CNon$T#r, m, $LS(ly), d0, d1) } 
  ORD#Less(k, m)
       && $PrefixEq#_module.CNon(_module.CNon$T#l, _module.CNon$T#r, m, $LS(ly), d0, d1)
     ==> $PrefixEq#_module.CNon(_module.CNon$T#l, _module.CNon$T#r, k, $LS(ly), d0, d1));

// Prefix equality shortcut
axiom (forall _module.CNon$T#l: Ty, 
    _module.CNon$T#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.CNon(_module.CNon$T#l, _module.CNon$T#r, k, $LS(ly), d0, d1) } 
  d0 == d1
     ==> $PrefixEq#_module.CNon(_module.CNon$T#l, _module.CNon$T#r, k, $LS(ly), d0, d1));

const unique class._module.CNon: ClassName;

// function declaration for _module.CNon.A
function _module.CNon.A(_module.CNon$T: Ty, this: DatatypeType, x#0: Box) : int
uses {
// definition axiom for _module.CNon.A (revealed)
axiom {:id "id193"} 0 <= $FunctionContextHeight
   ==> (forall _module.CNon$T: Ty, this: DatatypeType, x#0: Box :: 
    { _module.CNon.A(_module.CNon$T, this, x#0) } 
    _module.CNon.A#canCall(_module.CNon$T, this, x#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.CNon(_module.CNon$T))
           && $IsBox(x#0, _module.CNon$T))
       ==> _module.CNon.A(_module.CNon$T, this, x#0) == LitInt(0));
// definition axiom for _module.CNon.A for all literals (revealed)
axiom {:id "id194"} 0 <= $FunctionContextHeight
   ==> (forall _module.CNon$T: Ty, this: DatatypeType, x#0: Box :: 
    {:weight 3} { _module.CNon.A(_module.CNon$T, Lit(this), Lit(x#0)) } 
    _module.CNon.A#canCall(_module.CNon$T, Lit(this), Lit(x#0))
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.CNon(_module.CNon$T))
           && $IsBox(x#0, _module.CNon$T))
       ==> _module.CNon.A(_module.CNon$T, Lit(this), Lit(x#0)) == LitInt(0));
}

function _module.CNon.A#canCall(_module.CNon$T: Ty, this: DatatypeType, x#0: Box) : bool;

function _module.CNon.A#requires(Ty, DatatypeType, Box) : bool;

// #requires axiom for _module.CNon.A
axiom (forall _module.CNon$T: Ty, this: DatatypeType, x#0: Box :: 
  { _module.CNon.A#requires(_module.CNon$T, this, x#0) } 
  $Is(this, Tclass._module.CNon(_module.CNon$T)) && $IsBox(x#0, _module.CNon$T)
     ==> _module.CNon.A#requires(_module.CNon$T, this, x#0) == true);

procedure {:verboseName "CNon.A (well-formedness)"} CheckWellformed$$_module.CNon.A(_module.CNon$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.CNon(_module.CNon$T))
         && $IsAlloc(this, Tclass._module.CNon(_module.CNon$T), $Heap), 
    x#0: Box where $IsBox(x#0, _module.CNon$T));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.CNon.sA
function _module.CNon.sA(_module.CNon$T: Ty, x#0: Box) : int
uses {
// definition axiom for _module.CNon.sA (revealed)
axiom {:id "id196"} 0 <= $FunctionContextHeight
   ==> (forall _module.CNon$T: Ty, x#0: Box :: 
    { _module.CNon.sA(_module.CNon$T, x#0) } 
    _module.CNon.sA#canCall(_module.CNon$T, x#0)
         || (0 < $FunctionContextHeight && $IsBox(x#0, _module.CNon$T))
       ==> _module.CNon.sA(_module.CNon$T, x#0) == LitInt(0));
// definition axiom for _module.CNon.sA for all literals (revealed)
axiom {:id "id197"} 0 <= $FunctionContextHeight
   ==> (forall _module.CNon$T: Ty, x#0: Box :: 
    {:weight 3} { _module.CNon.sA(_module.CNon$T, Lit(x#0)) } 
    _module.CNon.sA#canCall(_module.CNon$T, Lit(x#0))
         || (0 < $FunctionContextHeight && $IsBox(x#0, _module.CNon$T))
       ==> _module.CNon.sA(_module.CNon$T, Lit(x#0)) == LitInt(0));
}

function _module.CNon.sA#canCall(_module.CNon$T: Ty, x#0: Box) : bool;

function _module.CNon.sA#requires(Ty, Box) : bool;

// #requires axiom for _module.CNon.sA
axiom (forall _module.CNon$T: Ty, x#0: Box :: 
  { _module.CNon.sA#requires(_module.CNon$T, x#0) } 
  $IsBox(x#0, _module.CNon$T)
     ==> _module.CNon.sA#requires(_module.CNon$T, x#0) == true);

procedure {:verboseName "CNon.sA (well-formedness)"} CheckWellformed$$_module.CNon.sA(_module.CNon$T: Ty, x#0: Box where $IsBox(x#0, _module.CNon$T));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.CNon.gA
function _module.CNon.gA(_module.CNon$T: Ty, this: DatatypeType, x#0: Box) : int
uses {
// definition axiom for _module.CNon.gA (revealed)
axiom {:id "id199"} 0 <= $FunctionContextHeight
   ==> (forall _module.CNon$T: Ty, this: DatatypeType, x#0: Box :: 
    { _module.CNon.gA(_module.CNon$T, this, x#0) } 
    _module.CNon.gA#canCall(_module.CNon$T, this, x#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.CNon(_module.CNon$T))
           && $IsBox(x#0, _module.CNon$T))
       ==> _module.CNon.gA(_module.CNon$T, this, x#0) == LitInt(0));
// definition axiom for _module.CNon.gA for all literals (revealed)
axiom {:id "id200"} 0 <= $FunctionContextHeight
   ==> (forall _module.CNon$T: Ty, this: DatatypeType, x#0: Box :: 
    {:weight 3} { _module.CNon.gA(_module.CNon$T, Lit(this), Lit(x#0)) } 
    _module.CNon.gA#canCall(_module.CNon$T, Lit(this), Lit(x#0))
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.CNon(_module.CNon$T))
           && $IsBox(x#0, _module.CNon$T))
       ==> _module.CNon.gA(_module.CNon$T, Lit(this), Lit(x#0)) == LitInt(0));
}

function _module.CNon.gA#canCall(_module.CNon$T: Ty, this: DatatypeType, x#0: Box) : bool;

function _module.CNon.gA#requires(Ty, DatatypeType, Box) : bool;

// #requires axiom for _module.CNon.gA
axiom (forall _module.CNon$T: Ty, this: DatatypeType, x#0: Box :: 
  { _module.CNon.gA#requires(_module.CNon$T, this, x#0) } 
  $Is(this, Tclass._module.CNon(_module.CNon$T)) && $IsBox(x#0, _module.CNon$T)
     ==> _module.CNon.gA#requires(_module.CNon$T, this, x#0) == true);

procedure {:verboseName "CNon.gA (well-formedness)"} CheckWellformed$$_module.CNon.gA(_module.CNon$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.CNon(_module.CNon$T))
         && $IsAlloc(this, Tclass._module.CNon(_module.CNon$T), $Heap), 
    x#0: Box where $IsBox(x#0, _module.CNon$T));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.CNon.B
function _module.CNon.B(_module.CNon$T: Ty, this: DatatypeType, x#0: Seq) : int
uses {
// definition axiom for _module.CNon.B (revealed)
axiom {:id "id202"} 0 <= $FunctionContextHeight
   ==> (forall _module.CNon$T: Ty, this: DatatypeType, x#0: Seq :: 
    { _module.CNon.B(_module.CNon$T, this, x#0) } 
    _module.CNon.B#canCall(_module.CNon$T, this, x#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.CNon(_module.CNon$T))
           && $Is(x#0, TSeq(_module.CNon$T)))
       ==> _module.CNon.B(_module.CNon$T, this, x#0) == LitInt(0));
// definition axiom for _module.CNon.B for decreasing-related literals (revealed)
axiom {:id "id203"} 0 <= $FunctionContextHeight
   ==> (forall _module.CNon$T: Ty, this: DatatypeType, x#0: Seq :: 
    {:weight 3} { _module.CNon.B(_module.CNon$T, this, Lit(x#0)) } 
    _module.CNon.B#canCall(_module.CNon$T, this, Lit(x#0))
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.CNon(_module.CNon$T))
           && $Is(x#0, TSeq(_module.CNon$T)))
       ==> _module.CNon.B(_module.CNon$T, this, Lit(x#0)) == LitInt(0));
// definition axiom for _module.CNon.B for all literals (revealed)
axiom {:id "id204"} 0 <= $FunctionContextHeight
   ==> (forall _module.CNon$T: Ty, this: DatatypeType, x#0: Seq :: 
    {:weight 3} { _module.CNon.B(_module.CNon$T, Lit(this), Lit(x#0)) } 
    _module.CNon.B#canCall(_module.CNon$T, Lit(this), Lit(x#0))
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.CNon(_module.CNon$T))
           && $Is(x#0, TSeq(_module.CNon$T)))
       ==> _module.CNon.B(_module.CNon$T, Lit(this), Lit(x#0)) == LitInt(0));
}

function _module.CNon.B#canCall(_module.CNon$T: Ty, this: DatatypeType, x#0: Seq) : bool;

function _module.CNon.B#requires(Ty, DatatypeType, Seq) : bool;

// #requires axiom for _module.CNon.B
axiom (forall _module.CNon$T: Ty, this: DatatypeType, x#0: Seq :: 
  { _module.CNon.B#requires(_module.CNon$T, this, x#0) } 
  $Is(this, Tclass._module.CNon(_module.CNon$T)) && $Is(x#0, TSeq(_module.CNon$T))
     ==> _module.CNon.B#requires(_module.CNon$T, this, x#0) == true);

procedure {:verboseName "CNon.B (well-formedness)"} CheckWellformed$$_module.CNon.B(_module.CNon$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.CNon(_module.CNon$T))
         && $IsAlloc(this, Tclass._module.CNon(_module.CNon$T), $Heap), 
    x#0: Seq where $Is(x#0, TSeq(_module.CNon$T)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.CNon.C
function _module.CNon.C(_module.CNon$T: Ty, this: DatatypeType, x#0: int) : Seq
uses {
// consequence axiom for _module.CNon.C
axiom 1 <= $FunctionContextHeight
   ==> (forall _module.CNon$T: Ty, this: DatatypeType, x#0: int :: 
    { _module.CNon.C(_module.CNon$T, this, x#0) } 
    _module.CNon.C#canCall(_module.CNon$T, this, x#0)
         || (1 < $FunctionContextHeight && $Is(this, Tclass._module.CNon(_module.CNon$T)))
       ==> $Is(_module.CNon.C(_module.CNon$T, this, x#0), TSeq(_module.CNon$T)));
// alloc consequence axiom for _module.CNon.C
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, _module.CNon$T: Ty, this: DatatypeType, x#0: int :: 
    { $IsAlloc(_module.CNon.C(_module.CNon$T, this, x#0), TSeq(_module.CNon$T), $Heap) } 
    (_module.CNon.C#canCall(_module.CNon$T, this, x#0)
           || (1 < $FunctionContextHeight
             && $IsAlloc(this, Tclass._module.CNon(_module.CNon$T), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.CNon.C(_module.CNon$T, this, x#0), TSeq(_module.CNon$T), $Heap));
// definition axiom for _module.CNon.C (revealed)
axiom {:id "id206"} 1 <= $FunctionContextHeight
   ==> (forall _module.CNon$T: Ty, this: DatatypeType, x#0: int :: 
    { _module.CNon.C(_module.CNon$T, this, x#0) } 
    _module.CNon.C#canCall(_module.CNon$T, this, x#0)
         || (1 < $FunctionContextHeight && $Is(this, Tclass._module.CNon(_module.CNon$T)))
       ==> _module.CNon.C(_module.CNon$T, this, x#0)
         == _module.CNon.y(_module.CNon$T, this));
// definition axiom for _module.CNon.C for decreasing-related literals (revealed)
axiom {:id "id207"} 1 <= $FunctionContextHeight
   ==> (forall _module.CNon$T: Ty, this: DatatypeType, x#0: int :: 
    {:weight 3} { _module.CNon.C(_module.CNon$T, this, LitInt(x#0)) } 
    _module.CNon.C#canCall(_module.CNon$T, this, LitInt(x#0))
         || (1 < $FunctionContextHeight && $Is(this, Tclass._module.CNon(_module.CNon$T)))
       ==> _module.CNon.C(_module.CNon$T, this, LitInt(x#0))
         == _module.CNon.y(_module.CNon$T, this));
// definition axiom for _module.CNon.C for all literals (revealed)
axiom {:id "id208"} 1 <= $FunctionContextHeight
   ==> (forall _module.CNon$T: Ty, this: DatatypeType, x#0: int :: 
    {:weight 3} { _module.CNon.C(_module.CNon$T, Lit(this), LitInt(x#0)) } 
    _module.CNon.C#canCall(_module.CNon$T, Lit(this), LitInt(x#0))
         || (1 < $FunctionContextHeight && $Is(this, Tclass._module.CNon(_module.CNon$T)))
       ==> _module.CNon.C(_module.CNon$T, Lit(this), LitInt(x#0))
         == _module.CNon.y(_module.CNon$T, Lit(this)));
}

function _module.CNon.C#canCall(_module.CNon$T: Ty, this: DatatypeType, x#0: int) : bool;

function _module.CNon.C#requires(Ty, DatatypeType, int) : bool;

// #requires axiom for _module.CNon.C
axiom (forall _module.CNon$T: Ty, this: DatatypeType, x#0: int :: 
  { _module.CNon.C#requires(_module.CNon$T, this, x#0) } 
  $Is(this, Tclass._module.CNon(_module.CNon$T))
     ==> _module.CNon.C#requires(_module.CNon$T, this, x#0) == true);

procedure {:verboseName "CNon.C (well-formedness)"} CheckWellformed$$_module.CNon.C(_module.CNon$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.CNon(_module.CNon$T))
         && $IsAlloc(this, Tclass._module.CNon(_module.CNon$T), $Heap), 
    x#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.CNon.D
function _module.CNon.D(_module.CNon$T: Ty, this: DatatypeType, x#0: Box) : Box
uses {
// consequence axiom for _module.CNon.D
axiom 0 <= $FunctionContextHeight
   ==> (forall _module.CNon$T: Ty, this: DatatypeType, x#0: Box :: 
    { _module.CNon.D(_module.CNon$T, this, x#0) } 
    _module.CNon.D#canCall(_module.CNon$T, this, x#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.CNon(_module.CNon$T))
           && $IsBox(x#0, _module.CNon$T))
       ==> $IsBox(_module.CNon.D(_module.CNon$T, this, x#0), _module.CNon$T));
// alloc consequence axiom for _module.CNon.D
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, _module.CNon$T: Ty, this: DatatypeType, x#0: Box :: 
    { $IsAllocBox(_module.CNon.D(_module.CNon$T, this, x#0), _module.CNon$T, $Heap) } 
    (_module.CNon.D#canCall(_module.CNon$T, this, x#0)
           || (0 < $FunctionContextHeight
             && 
            $IsAlloc(this, Tclass._module.CNon(_module.CNon$T), $Heap)
             && 
            $IsBox(x#0, _module.CNon$T)
             && $IsAllocBox(x#0, _module.CNon$T, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAllocBox(_module.CNon.D(_module.CNon$T, this, x#0), _module.CNon$T, $Heap));
// definition axiom for _module.CNon.D (revealed)
axiom {:id "id210"} 0 <= $FunctionContextHeight
   ==> (forall _module.CNon$T: Ty, this: DatatypeType, x#0: Box :: 
    { _module.CNon.D(_module.CNon$T, this, x#0) } 
    _module.CNon.D#canCall(_module.CNon$T, this, x#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.CNon(_module.CNon$T))
           && $IsBox(x#0, _module.CNon$T))
       ==> _module.CNon.D(_module.CNon$T, this, x#0) == x#0);
// definition axiom for _module.CNon.D for all literals (revealed)
axiom {:id "id211"} 0 <= $FunctionContextHeight
   ==> (forall _module.CNon$T: Ty, this: DatatypeType, x#0: Box :: 
    {:weight 3} { _module.CNon.D(_module.CNon$T, Lit(this), Lit(x#0)) } 
    _module.CNon.D#canCall(_module.CNon$T, Lit(this), Lit(x#0))
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.CNon(_module.CNon$T))
           && $IsBox(x#0, _module.CNon$T))
       ==> _module.CNon.D(_module.CNon$T, Lit(this), Lit(x#0)) == Lit(x#0));
}

function _module.CNon.D#canCall(_module.CNon$T: Ty, this: DatatypeType, x#0: Box) : bool;

function _module.CNon.D#requires(Ty, DatatypeType, Box) : bool;

// #requires axiom for _module.CNon.D
axiom (forall _module.CNon$T: Ty, this: DatatypeType, x#0: Box :: 
  { _module.CNon.D#requires(_module.CNon$T, this, x#0) } 
  $Is(this, Tclass._module.CNon(_module.CNon$T)) && $IsBox(x#0, _module.CNon$T)
     ==> _module.CNon.D#requires(_module.CNon$T, this, x#0) == true);

procedure {:verboseName "CNon.D (well-formedness)"} CheckWellformed$$_module.CNon.D(_module.CNon$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.CNon(_module.CNon$T))
         && $IsAlloc(this, Tclass._module.CNon(_module.CNon$T), $Heap), 
    x#0: Box where $IsBox(x#0, _module.CNon$T));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "CNon.mA (well-formedness)"} CheckWellFormed$$_module.CNon.mA(_module.CNon$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.CNon(_module.CNon$T))
         && $IsAlloc(this, Tclass._module.CNon(_module.CNon$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.CNon$T) && $IsAllocBox(x#0, _module.CNon$T, $Heap))
   returns (r#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "CNon.mA (call)"} Call$$_module.CNon.mA(_module.CNon$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.CNon(_module.CNon$T))
         && $IsAlloc(this, Tclass._module.CNon(_module.CNon$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.CNon$T) && $IsAllocBox(x#0, _module.CNon$T, $Heap))
   returns (r#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "CNon.mA (correctness)"} Impl$$_module.CNon.mA(_module.CNon$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.CNon(_module.CNon$T))
         && $IsAlloc(this, Tclass._module.CNon(_module.CNon$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.CNon$T) && $IsAllocBox(x#0, _module.CNon$T, $Heap))
   returns (r#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "CNon.mD (well-formedness)"} CheckWellFormed$$_module.CNon.mD(_module.CNon$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.CNon(_module.CNon$T))
         && $IsAlloc(this, Tclass._module.CNon(_module.CNon$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.CNon$T) && $IsAllocBox(x#0, _module.CNon$T, $Heap))
   returns (r#0: Box
       where $IsBox(r#0, _module.CNon$T) && $IsAllocBox(r#0, _module.CNon$T, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "CNon.mD (call)"} Call$$_module.CNon.mD(_module.CNon$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.CNon(_module.CNon$T))
         && $IsAlloc(this, Tclass._module.CNon(_module.CNon$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.CNon$T) && $IsAllocBox(x#0, _module.CNon$T, $Heap))
   returns (r#0: Box
       where $IsBox(r#0, _module.CNon$T) && $IsAllocBox(r#0, _module.CNon$T, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "CNon.mD (correctness)"} Impl$$_module.CNon.mD(_module.CNon$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.CNon(_module.CNon$T))
         && $IsAlloc(this, Tclass._module.CNon(_module.CNon$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.CNon$T) && $IsAllocBox(x#0, _module.CNon$T, $Heap))
   returns (defass#r#0: bool, 
    r#0: Box
       where defass#r#0
         ==> $IsBox(r#0, _module.CNon$T) && $IsAllocBox(r#0, _module.CNon$T, $Heap), 
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "CNon.mD (correctness)"} Impl$$_module.CNon.mD(_module.CNon$T: Ty, this: DatatypeType, x#0: Box)
   returns (defass#r#0: bool, r#0: Box, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: mD, Impl$$_module.CNon.mD
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(75,40)
    assume true;
    assume true;
    r#0 := x#0;
    defass#r#0 := true;
    assert {:id "id215"} defass#r#0;
}



// Constructor function declaration
function #_module.CCon.CCon(HandleType) : DatatypeType;

const unique ##_module.CCon.CCon: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: HandleType :: 
  { #_module.CCon.CCon(a#0#0#0) } 
  DatatypeCtorId(#_module.CCon.CCon(a#0#0#0)) == ##_module.CCon.CCon);
}

function _module.CCon.CCon_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.CCon.CCon_q(d) } 
  _module.CCon.CCon_q(d) <==> DatatypeCtorId(d) == ##_module.CCon.CCon);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.CCon.CCon_q(d) } 
  _module.CCon.CCon_q(d)
     ==> (exists a#1#0#0: HandleType :: d == #_module.CCon.CCon(a#1#0#0)));

// Constructor $Is
axiom (forall _module.CCon$T: Ty, a#2#0#0: HandleType :: 
  { $Is(#_module.CCon.CCon(a#2#0#0), Tclass._module.CCon(_module.CCon$T)) } 
  $Is(#_module.CCon.CCon(a#2#0#0), Tclass._module.CCon(_module.CCon$T))
     <==> $Is(a#2#0#0, Tclass._System.___hTotalFunc1(_module.CCon$T, TInt)));

// Constructor $IsAlloc
axiom (forall _module.CCon$T: Ty, a#2#0#0: HandleType, $h: Heap :: 
  { $IsAlloc(#_module.CCon.CCon(a#2#0#0), Tclass._module.CCon(_module.CCon$T), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.CCon.CCon(a#2#0#0), Tclass._module.CCon(_module.CCon$T), $h)
       <==> $IsAlloc(a#2#0#0, Tclass._System.___hTotalFunc1(_module.CCon$T, TInt), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.CCon$T: Ty, $h: Heap :: 
  { $IsAlloc(_module.CCon._h2(d), Tclass._System.___hTotalFunc1(_module.CCon$T, TInt), $h) } 
  $IsGoodHeap($h)
       && 
      _module.CCon.CCon_q(d)
       && $IsAlloc(d, Tclass._module.CCon(_module.CCon$T), $h)
     ==> $IsAlloc(_module.CCon._h2(d), Tclass._System.___hTotalFunc1(_module.CCon$T, TInt), $h));

function _module.CCon._h2(DatatypeType) : HandleType;

// Constructor injectivity
axiom (forall a#3#0#0: HandleType :: 
  { #_module.CCon.CCon(a#3#0#0) } 
  _module.CCon._h2(#_module.CCon.CCon(a#3#0#0)) == a#3#0#0);

// Depth-one case-split function
function $IsA#_module.CCon(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.CCon(d) } 
  $IsA#_module.CCon(d) ==> _module.CCon.CCon_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.CCon$T: Ty, d: DatatypeType :: 
  { _module.CCon.CCon_q(d), $Is(d, Tclass._module.CCon(_module.CCon$T)) } 
  $Is(d, Tclass._module.CCon(_module.CCon$T)) ==> _module.CCon.CCon_q(d));

function $Eq#_module.CCon(Ty, Ty, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall _module.CCon$T#l: Ty, 
    _module.CCon$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.CCon(_module.CCon$T#l, _module.CCon$T#r, $LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.CCon(_module.CCon$T#l))
       && $Is(d1, Tclass._module.CCon(_module.CCon$T#r))
     ==> ($Eq#_module.CCon(_module.CCon$T#l, _module.CCon$T#r, $LS(ly), d0, d1)
       <==> _module.CCon.CCon_q(d0)
         && _module.CCon.CCon_q(d1)
         && (_module.CCon.CCon_q(d0) && _module.CCon.CCon_q(d1)
           ==> _module.CCon._h2(d0) == _module.CCon._h2(d1))));

// Unbump layer co-equality axiom
axiom (forall _module.CCon$T#l: Ty, 
    _module.CCon$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.CCon(_module.CCon$T#l, _module.CCon$T#r, $LS(ly), d0, d1) } 
  $Eq#_module.CCon(_module.CCon$T#l, _module.CCon$T#r, $LS(ly), d0, d1)
     <==> $Eq#_module.CCon(_module.CCon$T#l, _module.CCon$T#r, ly, d0, d1));

// Equality for codatatypes
axiom (forall _module.CCon$T#l: Ty, 
    _module.CCon$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.CCon(_module.CCon$T#l, _module.CCon$T#r, $LS(ly), d0, d1) } 
  $Eq#_module.CCon(_module.CCon$T#l, _module.CCon$T#r, $LS(ly), d0, d1)
     <==> d0 == d1);

function $PrefixEq#_module.CCon(Ty, Ty, Box, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall _module.CCon$T#l: Ty, 
    _module.CCon$T#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.CCon(_module.CCon$T#l, _module.CCon$T#r, k, $LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.CCon(_module.CCon$T#l))
       && $Is(d1, Tclass._module.CCon(_module.CCon$T#r))
     ==> ($PrefixEq#_module.CCon(_module.CCon$T#l, _module.CCon$T#r, k, $LS(ly), d0, d1)
       <==> (0 < ORD#Offset(k)
           ==> _module.CCon.CCon_q(d0)
             && _module.CCon.CCon_q(d1)
             && (_module.CCon.CCon_q(d0) && _module.CCon.CCon_q(d1)
               ==> _module.CCon._h2(d0) == _module.CCon._h2(d1)))
         && (k != ORD#FromNat(0) && ORD#IsLimit(k)
           ==> $Eq#_module.CCon(_module.CCon$T#l, _module.CCon$T#r, ly, d0, d1))));

// Unbump layer co-equality axiom
axiom (forall _module.CCon$T#l: Ty, 
    _module.CCon$T#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.CCon(_module.CCon$T#l, _module.CCon$T#r, k, $LS(ly), d0, d1) } 
  k != ORD#FromNat(0)
     ==> ($PrefixEq#_module.CCon(_module.CCon$T#l, _module.CCon$T#r, k, $LS(ly), d0, d1)
       <==> $PrefixEq#_module.CCon(_module.CCon$T#l, _module.CCon$T#r, k, ly, d0, d1)));

// Coequality and prefix equality connection
axiom (forall _module.CCon$T#l: Ty, 
    _module.CCon$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.CCon(_module.CCon$T#l, _module.CCon$T#r, $LS(ly), d0, d1) } 
  $Eq#_module.CCon(_module.CCon$T#l, _module.CCon$T#r, $LS(ly), d0, d1)
     <==> (forall k: Box :: 
      { $PrefixEq#_module.CCon(_module.CCon$T#l, _module.CCon$T#r, k, $LS(ly), d0, d1) } 
      $PrefixEq#_module.CCon(_module.CCon$T#l, _module.CCon$T#r, k, $LS(ly), d0, d1)));

// Coequality and prefix equality connection
axiom (forall _module.CCon$T#l: Ty, 
    _module.CCon$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.CCon(_module.CCon$T#l, _module.CCon$T#r, $LS(ly), d0, d1) } 
  (forall k: int :: 
      { $PrefixEq#_module.CCon(_module.CCon$T#l, _module.CCon$T#r, ORD#FromNat(k), $LS(ly), d0, d1) } 
      0 <= k
         ==> $PrefixEq#_module.CCon(_module.CCon$T#l, _module.CCon$T#r, ORD#FromNat(k), $LS(ly), d0, d1))
     ==> $Eq#_module.CCon(_module.CCon$T#l, _module.CCon$T#r, $LS(ly), d0, d1));

// Prefix equality consequence
axiom (forall _module.CCon$T#l: Ty, 
    _module.CCon$T#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType, 
    m: Box :: 
  { $PrefixEq#_module.CCon(_module.CCon$T#l, _module.CCon$T#r, k, $LS(ly), d0, d1), $PrefixEq#_module.CCon(_module.CCon$T#l, _module.CCon$T#r, m, $LS(ly), d0, d1) } 
  ORD#Less(k, m)
       && $PrefixEq#_module.CCon(_module.CCon$T#l, _module.CCon$T#r, m, $LS(ly), d0, d1)
     ==> $PrefixEq#_module.CCon(_module.CCon$T#l, _module.CCon$T#r, k, $LS(ly), d0, d1));

// Prefix equality shortcut
axiom (forall _module.CCon$T#l: Ty, 
    _module.CCon$T#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.CCon(_module.CCon$T#l, _module.CCon$T#r, k, $LS(ly), d0, d1) } 
  d0 == d1
     ==> $PrefixEq#_module.CCon(_module.CCon$T#l, _module.CCon$T#r, k, $LS(ly), d0, d1));

const unique class._module.CCon: ClassName;

// function declaration for _module.CCon.A
function _module.CCon.A(_module.CCon$T: Ty, this: DatatypeType, x#0: Box) : int
uses {
// definition axiom for _module.CCon.A (revealed)
axiom {:id "id216"} 0 <= $FunctionContextHeight
   ==> (forall _module.CCon$T: Ty, this: DatatypeType, x#0: Box :: 
    { _module.CCon.A(_module.CCon$T, this, x#0) } 
    _module.CCon.A#canCall(_module.CCon$T, this, x#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.CCon(_module.CCon$T))
           && $IsBox(x#0, _module.CCon$T))
       ==> _module.CCon.A(_module.CCon$T, this, x#0) == LitInt(0));
// definition axiom for _module.CCon.A for all literals (revealed)
axiom {:id "id217"} 0 <= $FunctionContextHeight
   ==> (forall _module.CCon$T: Ty, this: DatatypeType, x#0: Box :: 
    {:weight 3} { _module.CCon.A(_module.CCon$T, Lit(this), Lit(x#0)) } 
    _module.CCon.A#canCall(_module.CCon$T, Lit(this), Lit(x#0))
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.CCon(_module.CCon$T))
           && $IsBox(x#0, _module.CCon$T))
       ==> _module.CCon.A(_module.CCon$T, Lit(this), Lit(x#0)) == LitInt(0));
}

function _module.CCon.A#canCall(_module.CCon$T: Ty, this: DatatypeType, x#0: Box) : bool;

function _module.CCon.A#requires(Ty, DatatypeType, Box) : bool;

// #requires axiom for _module.CCon.A
axiom (forall _module.CCon$T: Ty, this: DatatypeType, x#0: Box :: 
  { _module.CCon.A#requires(_module.CCon$T, this, x#0) } 
  $Is(this, Tclass._module.CCon(_module.CCon$T)) && $IsBox(x#0, _module.CCon$T)
     ==> _module.CCon.A#requires(_module.CCon$T, this, x#0) == true);

procedure {:verboseName "CCon.A (well-formedness)"} CheckWellformed$$_module.CCon.A(_module.CCon$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.CCon(_module.CCon$T))
         && $IsAlloc(this, Tclass._module.CCon(_module.CCon$T), $Heap), 
    x#0: Box where $IsBox(x#0, _module.CCon$T));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.CCon.sA
function _module.CCon.sA(_module.CCon$T: Ty, x#0: Box) : int
uses {
// definition axiom for _module.CCon.sA (revealed)
axiom {:id "id219"} 0 <= $FunctionContextHeight
   ==> (forall _module.CCon$T: Ty, x#0: Box :: 
    { _module.CCon.sA(_module.CCon$T, x#0) } 
    _module.CCon.sA#canCall(_module.CCon$T, x#0)
         || (0 < $FunctionContextHeight && $IsBox(x#0, _module.CCon$T))
       ==> _module.CCon.sA(_module.CCon$T, x#0) == LitInt(0));
// definition axiom for _module.CCon.sA for all literals (revealed)
axiom {:id "id220"} 0 <= $FunctionContextHeight
   ==> (forall _module.CCon$T: Ty, x#0: Box :: 
    {:weight 3} { _module.CCon.sA(_module.CCon$T, Lit(x#0)) } 
    _module.CCon.sA#canCall(_module.CCon$T, Lit(x#0))
         || (0 < $FunctionContextHeight && $IsBox(x#0, _module.CCon$T))
       ==> _module.CCon.sA(_module.CCon$T, Lit(x#0)) == LitInt(0));
}

function _module.CCon.sA#canCall(_module.CCon$T: Ty, x#0: Box) : bool;

function _module.CCon.sA#requires(Ty, Box) : bool;

// #requires axiom for _module.CCon.sA
axiom (forall _module.CCon$T: Ty, x#0: Box :: 
  { _module.CCon.sA#requires(_module.CCon$T, x#0) } 
  $IsBox(x#0, _module.CCon$T)
     ==> _module.CCon.sA#requires(_module.CCon$T, x#0) == true);

procedure {:verboseName "CCon.sA (well-formedness)"} CheckWellformed$$_module.CCon.sA(_module.CCon$T: Ty, x#0: Box where $IsBox(x#0, _module.CCon$T));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.CCon.gA
function _module.CCon.gA(_module.CCon$T: Ty, this: DatatypeType, x#0: Box) : int
uses {
// definition axiom for _module.CCon.gA (revealed)
axiom {:id "id222"} 0 <= $FunctionContextHeight
   ==> (forall _module.CCon$T: Ty, this: DatatypeType, x#0: Box :: 
    { _module.CCon.gA(_module.CCon$T, this, x#0) } 
    _module.CCon.gA#canCall(_module.CCon$T, this, x#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.CCon(_module.CCon$T))
           && $IsBox(x#0, _module.CCon$T))
       ==> _module.CCon.gA(_module.CCon$T, this, x#0) == LitInt(0));
// definition axiom for _module.CCon.gA for all literals (revealed)
axiom {:id "id223"} 0 <= $FunctionContextHeight
   ==> (forall _module.CCon$T: Ty, this: DatatypeType, x#0: Box :: 
    {:weight 3} { _module.CCon.gA(_module.CCon$T, Lit(this), Lit(x#0)) } 
    _module.CCon.gA#canCall(_module.CCon$T, Lit(this), Lit(x#0))
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.CCon(_module.CCon$T))
           && $IsBox(x#0, _module.CCon$T))
       ==> _module.CCon.gA(_module.CCon$T, Lit(this), Lit(x#0)) == LitInt(0));
}

function _module.CCon.gA#canCall(_module.CCon$T: Ty, this: DatatypeType, x#0: Box) : bool;

function _module.CCon.gA#requires(Ty, DatatypeType, Box) : bool;

// #requires axiom for _module.CCon.gA
axiom (forall _module.CCon$T: Ty, this: DatatypeType, x#0: Box :: 
  { _module.CCon.gA#requires(_module.CCon$T, this, x#0) } 
  $Is(this, Tclass._module.CCon(_module.CCon$T)) && $IsBox(x#0, _module.CCon$T)
     ==> _module.CCon.gA#requires(_module.CCon$T, this, x#0) == true);

procedure {:verboseName "CCon.gA (well-formedness)"} CheckWellformed$$_module.CCon.gA(_module.CCon$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.CCon(_module.CCon$T))
         && $IsAlloc(this, Tclass._module.CCon(_module.CCon$T), $Heap), 
    x#0: Box where $IsBox(x#0, _module.CCon$T));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.CCon.B
function _module.CCon.B(_module.CCon$T: Ty, this: DatatypeType, x#0: Seq) : int
uses {
// definition axiom for _module.CCon.B (revealed)
axiom {:id "id225"} 0 <= $FunctionContextHeight
   ==> (forall _module.CCon$T: Ty, this: DatatypeType, x#0: Seq :: 
    { _module.CCon.B(_module.CCon$T, this, x#0) } 
    _module.CCon.B#canCall(_module.CCon$T, this, x#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.CCon(_module.CCon$T))
           && $Is(x#0, TSeq(_module.CCon$T)))
       ==> _module.CCon.B(_module.CCon$T, this, x#0) == LitInt(0));
// definition axiom for _module.CCon.B for decreasing-related literals (revealed)
axiom {:id "id226"} 0 <= $FunctionContextHeight
   ==> (forall _module.CCon$T: Ty, this: DatatypeType, x#0: Seq :: 
    {:weight 3} { _module.CCon.B(_module.CCon$T, this, Lit(x#0)) } 
    _module.CCon.B#canCall(_module.CCon$T, this, Lit(x#0))
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.CCon(_module.CCon$T))
           && $Is(x#0, TSeq(_module.CCon$T)))
       ==> _module.CCon.B(_module.CCon$T, this, Lit(x#0)) == LitInt(0));
// definition axiom for _module.CCon.B for all literals (revealed)
axiom {:id "id227"} 0 <= $FunctionContextHeight
   ==> (forall _module.CCon$T: Ty, this: DatatypeType, x#0: Seq :: 
    {:weight 3} { _module.CCon.B(_module.CCon$T, Lit(this), Lit(x#0)) } 
    _module.CCon.B#canCall(_module.CCon$T, Lit(this), Lit(x#0))
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.CCon(_module.CCon$T))
           && $Is(x#0, TSeq(_module.CCon$T)))
       ==> _module.CCon.B(_module.CCon$T, Lit(this), Lit(x#0)) == LitInt(0));
}

function _module.CCon.B#canCall(_module.CCon$T: Ty, this: DatatypeType, x#0: Seq) : bool;

function _module.CCon.B#requires(Ty, DatatypeType, Seq) : bool;

// #requires axiom for _module.CCon.B
axiom (forall _module.CCon$T: Ty, this: DatatypeType, x#0: Seq :: 
  { _module.CCon.B#requires(_module.CCon$T, this, x#0) } 
  $Is(this, Tclass._module.CCon(_module.CCon$T)) && $Is(x#0, TSeq(_module.CCon$T))
     ==> _module.CCon.B#requires(_module.CCon$T, this, x#0) == true);

procedure {:verboseName "CCon.B (well-formedness)"} CheckWellformed$$_module.CCon.B(_module.CCon$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.CCon(_module.CCon$T))
         && $IsAlloc(this, Tclass._module.CCon(_module.CCon$T), $Heap), 
    x#0: Seq where $Is(x#0, TSeq(_module.CCon$T)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.CCon.C
function _module.CCon.C(_module.CCon$T: Ty, this: DatatypeType, x#0: int) : Seq
uses {
// consequence axiom for _module.CCon.C
axiom 1 <= $FunctionContextHeight
   ==> (forall _module.CCon$T: Ty, this: DatatypeType, x#0: int :: 
    { _module.CCon.C(_module.CCon$T, this, x#0) } 
    _module.CCon.C#canCall(_module.CCon$T, this, x#0)
         || (1 < $FunctionContextHeight && $Is(this, Tclass._module.CCon(_module.CCon$T)))
       ==> $Is(_module.CCon.C(_module.CCon$T, this, x#0), TSeq(_module.CCon$T)));
// alloc consequence axiom for _module.CCon.C
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, _module.CCon$T: Ty, this: DatatypeType, x#0: int :: 
    { $IsAlloc(_module.CCon.C(_module.CCon$T, this, x#0), TSeq(_module.CCon$T), $Heap) } 
    (_module.CCon.C#canCall(_module.CCon$T, this, x#0)
           || (1 < $FunctionContextHeight
             && $IsAlloc(this, Tclass._module.CCon(_module.CCon$T), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.CCon.C(_module.CCon$T, this, x#0), TSeq(_module.CCon$T), $Heap));
// definition axiom for _module.CCon.C (revealed)
axiom {:id "id229"} 1 <= $FunctionContextHeight
   ==> (forall _module.CCon$T: Ty, this: DatatypeType, x#0: int :: 
    { _module.CCon.C(_module.CCon$T, this, x#0) } 
    _module.CCon.C#canCall(_module.CCon$T, this, x#0)
         || (1 < $FunctionContextHeight && $Is(this, Tclass._module.CCon(_module.CCon$T)))
       ==> _module.CCon.C(_module.CCon$T, this, x#0)
         == _module.CCon.y(_module.CCon$T, this));
// definition axiom for _module.CCon.C for decreasing-related literals (revealed)
axiom {:id "id230"} 1 <= $FunctionContextHeight
   ==> (forall _module.CCon$T: Ty, this: DatatypeType, x#0: int :: 
    {:weight 3} { _module.CCon.C(_module.CCon$T, this, LitInt(x#0)) } 
    _module.CCon.C#canCall(_module.CCon$T, this, LitInt(x#0))
         || (1 < $FunctionContextHeight && $Is(this, Tclass._module.CCon(_module.CCon$T)))
       ==> _module.CCon.C(_module.CCon$T, this, LitInt(x#0))
         == _module.CCon.y(_module.CCon$T, this));
// definition axiom for _module.CCon.C for all literals (revealed)
axiom {:id "id231"} 1 <= $FunctionContextHeight
   ==> (forall _module.CCon$T: Ty, this: DatatypeType, x#0: int :: 
    {:weight 3} { _module.CCon.C(_module.CCon$T, Lit(this), LitInt(x#0)) } 
    _module.CCon.C#canCall(_module.CCon$T, Lit(this), LitInt(x#0))
         || (1 < $FunctionContextHeight && $Is(this, Tclass._module.CCon(_module.CCon$T)))
       ==> _module.CCon.C(_module.CCon$T, Lit(this), LitInt(x#0))
         == _module.CCon.y(_module.CCon$T, Lit(this)));
}

function _module.CCon.C#canCall(_module.CCon$T: Ty, this: DatatypeType, x#0: int) : bool;

function _module.CCon.C#requires(Ty, DatatypeType, int) : bool;

// #requires axiom for _module.CCon.C
axiom (forall _module.CCon$T: Ty, this: DatatypeType, x#0: int :: 
  { _module.CCon.C#requires(_module.CCon$T, this, x#0) } 
  $Is(this, Tclass._module.CCon(_module.CCon$T))
     ==> _module.CCon.C#requires(_module.CCon$T, this, x#0) == true);

procedure {:verboseName "CCon.C (well-formedness)"} CheckWellformed$$_module.CCon.C(_module.CCon$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.CCon(_module.CCon$T))
         && $IsAlloc(this, Tclass._module.CCon(_module.CCon$T), $Heap), 
    x#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.CCon.D
function _module.CCon.D(_module.CCon$T: Ty, this: DatatypeType, x#0: Box) : Box
uses {
// consequence axiom for _module.CCon.D
axiom 0 <= $FunctionContextHeight
   ==> (forall _module.CCon$T: Ty, this: DatatypeType, x#0: Box :: 
    { _module.CCon.D(_module.CCon$T, this, x#0) } 
    _module.CCon.D#canCall(_module.CCon$T, this, x#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.CCon(_module.CCon$T))
           && $IsBox(x#0, _module.CCon$T))
       ==> $IsBox(_module.CCon.D(_module.CCon$T, this, x#0), _module.CCon$T));
// alloc consequence axiom for _module.CCon.D
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, _module.CCon$T: Ty, this: DatatypeType, x#0: Box :: 
    { $IsAllocBox(_module.CCon.D(_module.CCon$T, this, x#0), _module.CCon$T, $Heap) } 
    (_module.CCon.D#canCall(_module.CCon$T, this, x#0)
           || (0 < $FunctionContextHeight
             && 
            $IsAlloc(this, Tclass._module.CCon(_module.CCon$T), $Heap)
             && 
            $IsBox(x#0, _module.CCon$T)
             && $IsAllocBox(x#0, _module.CCon$T, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAllocBox(_module.CCon.D(_module.CCon$T, this, x#0), _module.CCon$T, $Heap));
// definition axiom for _module.CCon.D (revealed)
axiom {:id "id233"} 0 <= $FunctionContextHeight
   ==> (forall _module.CCon$T: Ty, this: DatatypeType, x#0: Box :: 
    { _module.CCon.D(_module.CCon$T, this, x#0) } 
    _module.CCon.D#canCall(_module.CCon$T, this, x#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.CCon(_module.CCon$T))
           && $IsBox(x#0, _module.CCon$T))
       ==> _module.CCon.D(_module.CCon$T, this, x#0) == x#0);
// definition axiom for _module.CCon.D for all literals (revealed)
axiom {:id "id234"} 0 <= $FunctionContextHeight
   ==> (forall _module.CCon$T: Ty, this: DatatypeType, x#0: Box :: 
    {:weight 3} { _module.CCon.D(_module.CCon$T, Lit(this), Lit(x#0)) } 
    _module.CCon.D#canCall(_module.CCon$T, Lit(this), Lit(x#0))
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.CCon(_module.CCon$T))
           && $IsBox(x#0, _module.CCon$T))
       ==> _module.CCon.D(_module.CCon$T, Lit(this), Lit(x#0)) == Lit(x#0));
}

function _module.CCon.D#canCall(_module.CCon$T: Ty, this: DatatypeType, x#0: Box) : bool;

function _module.CCon.D#requires(Ty, DatatypeType, Box) : bool;

// #requires axiom for _module.CCon.D
axiom (forall _module.CCon$T: Ty, this: DatatypeType, x#0: Box :: 
  { _module.CCon.D#requires(_module.CCon$T, this, x#0) } 
  $Is(this, Tclass._module.CCon(_module.CCon$T)) && $IsBox(x#0, _module.CCon$T)
     ==> _module.CCon.D#requires(_module.CCon$T, this, x#0) == true);

procedure {:verboseName "CCon.D (well-formedness)"} CheckWellformed$$_module.CCon.D(_module.CCon$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.CCon(_module.CCon$T))
         && $IsAlloc(this, Tclass._module.CCon(_module.CCon$T), $Heap), 
    x#0: Box where $IsBox(x#0, _module.CCon$T));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "CCon.mA (well-formedness)"} CheckWellFormed$$_module.CCon.mA(_module.CCon$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.CCon(_module.CCon$T))
         && $IsAlloc(this, Tclass._module.CCon(_module.CCon$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.CCon$T) && $IsAllocBox(x#0, _module.CCon$T, $Heap))
   returns (r#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "CCon.mA (call)"} Call$$_module.CCon.mA(_module.CCon$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.CCon(_module.CCon$T))
         && $IsAlloc(this, Tclass._module.CCon(_module.CCon$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.CCon$T) && $IsAllocBox(x#0, _module.CCon$T, $Heap))
   returns (r#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "CCon.mA (correctness)"} Impl$$_module.CCon.mA(_module.CCon$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.CCon(_module.CCon$T))
         && $IsAlloc(this, Tclass._module.CCon(_module.CCon$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.CCon$T) && $IsAllocBox(x#0, _module.CCon$T, $Heap))
   returns (r#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "CCon.mD (well-formedness)"} CheckWellFormed$$_module.CCon.mD(_module.CCon$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.CCon(_module.CCon$T))
         && $IsAlloc(this, Tclass._module.CCon(_module.CCon$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.CCon$T) && $IsAllocBox(x#0, _module.CCon$T, $Heap))
   returns (r#0: Box
       where $IsBox(r#0, _module.CCon$T) && $IsAllocBox(r#0, _module.CCon$T, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "CCon.mD (call)"} Call$$_module.CCon.mD(_module.CCon$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.CCon(_module.CCon$T))
         && $IsAlloc(this, Tclass._module.CCon(_module.CCon$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.CCon$T) && $IsAllocBox(x#0, _module.CCon$T, $Heap))
   returns (r#0: Box
       where $IsBox(r#0, _module.CCon$T) && $IsAllocBox(r#0, _module.CCon$T, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "CCon.mD (correctness)"} Impl$$_module.CCon.mD(_module.CCon$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.CCon(_module.CCon$T))
         && $IsAlloc(this, Tclass._module.CCon(_module.CCon$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.CCon$T) && $IsAllocBox(x#0, _module.CCon$T, $Heap))
   returns (defass#r#0: bool, 
    r#0: Box
       where defass#r#0
         ==> $IsBox(r#0, _module.CCon$T) && $IsAllocBox(r#0, _module.CCon$T, $Heap), 
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "CCon.mD (correctness)"} Impl$$_module.CCon.mD(_module.CCon$T: Ty, this: DatatypeType, x#0: Box)
   returns (defass#r#0: bool, r#0: Box, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: mD, Impl$$_module.CCon.mD
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Variance.dfy(90,40)
    assume true;
    assume true;
    r#0 := x#0;
    defass#r#0 := true;
    assert {:id "id238"} defass#r#0;
}



const unique class._module.X?: ClassName;

function Tclass._module.X?() : Ty
uses {
// Tclass._module.X? Tag
axiom Tag(Tclass._module.X?()) == Tagclass._module.X?
   && TagFamily(Tclass._module.X?()) == tytagFamily$X;
}

const unique Tagclass._module.X?: TyTag;

// Box/unbox axiom for Tclass._module.X?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.X?()) } 
  $IsBox(bx, Tclass._module.X?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.X?()));

// $Is axiom for trait X
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.X?()) } 
  $Is($o, Tclass._module.X?()) <==> $o == null || implements$_module.X(dtype($o)));

// $IsAlloc axiom for trait X
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.X?(), $h) } 
  $IsAlloc($o, Tclass._module.X?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$_module.X(ty: Ty) : bool;

// $Is axiom for non-null type _module.X
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.X()) } { $Is(c#0, Tclass._module.X?()) } 
  $Is(c#0, Tclass._module.X()) <==> $Is(c#0, Tclass._module.X?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.X
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.X(), $h) } 
    { $IsAlloc(c#0, Tclass._module.X?(), $h) } 
  $IsAlloc(c#0, Tclass._module.X(), $h)
     <==> $IsAlloc(c#0, Tclass._module.X?(), $h));

const unique class._module.Int?: ClassName;

function Tclass._module.Int?() : Ty
uses {
// Tclass._module.Int? Tag
axiom Tag(Tclass._module.Int?()) == Tagclass._module.Int?
   && TagFamily(Tclass._module.Int?()) == tytagFamily$Int;
axiom implements$_module.X(Tclass._module.Int?());
}

const unique Tagclass._module.Int?: TyTag;

// Box/unbox axiom for Tclass._module.Int?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Int?()) } 
  $IsBox(bx, Tclass._module.Int?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Int?()));

// $Is axiom for class Int
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Int?()) } 
  $Is($o, Tclass._module.Int?())
     <==> $o == null || dtype($o) == Tclass._module.Int?());

// $IsAlloc axiom for class Int
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Int?(), $h) } 
  $IsAlloc($o, Tclass._module.Int?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

procedure {:verboseName "Int.Int (well-formedness)"} CheckWellFormed$$_module.Int._Int() returns (this: ref);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Int.Int (call)"} Call$$_module.Int._Int()
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Int())
         && $IsAlloc(this, Tclass._module.Int(), $Heap));
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



procedure {:verboseName "Int.Int (correctness)"} Impl$$_module.Int._Int() returns (this: ref, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// $Is axiom for non-null type _module.Int
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.Int()) } { $Is(c#0, Tclass._module.Int?()) } 
  $Is(c#0, Tclass._module.Int())
     <==> $Is(c#0, Tclass._module.Int?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Int
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Int(), $h) } 
    { $IsAlloc(c#0, Tclass._module.Int?(), $h) } 
  $IsAlloc(c#0, Tclass._module.Int(), $h)
     <==> $IsAlloc(c#0, Tclass._module.Int?(), $h));

// type axiom for trait parent: Int? extends X?
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Int?()) } 
  $Is($o, Tclass._module.Int?()) ==> $Is($o, Tclass._module.X?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Int?()) } 
  $IsBox(bx, Tclass._module.Int?()) ==> $IsBox(bx, Tclass._module.X?()));

// allocation axiom for trait parent: Int? extends X?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass._module.Int?(), $heap) } 
  $IsAlloc($o, Tclass._module.Int?(), $heap)
     ==> $IsAlloc($o, Tclass._module.X?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass._module.Int?(), $h) } 
  $IsAllocBox(bx, Tclass._module.Int?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass._module.X?(), $h));

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

const unique tytagFamily$Int: TyTagFamily;

const unique tytagFamily$Co: TyTagFamily;

const unique tytagFamily$X: TyTagFamily;

const unique tytagFamily$Non: TyTagFamily;

const unique tytagFamily$Cont: TyTagFamily;

const unique tytagFamily$CCo: TyTagFamily;

const unique tytagFamily$CNon: TyTagFamily;

const unique tytagFamily$CCon: TyTagFamily;
