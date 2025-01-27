// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vacid0/SparseArray.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vacid0/SparseArray-@PROC@.smt2 /normalizeNames:0 /emitDebugInformation:1 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vacid0/SparseArray.dfy

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

procedure {:verboseName "AllocateArray (well-formedness)"} CheckWellFormed$$_module.__default.AllocateArray(_module._default.AllocateArray$G: Ty, n#0: int)
   returns (arr#0: Seq
       where $Is(arr#0, TSeq(_module._default.AllocateArray$G))
         && $IsAlloc(arr#0, TSeq(_module._default.AllocateArray$G), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "AllocateArray (call)"} Call$$_module.__default.AllocateArray(_module._default.AllocateArray$G: Ty, n#0: int)
   returns (arr#0: Seq
       where $Is(arr#0, TSeq(_module._default.AllocateArray$G))
         && $IsAlloc(arr#0, TSeq(_module._default.AllocateArray$G), $Heap));
  // user-defined preconditions
  requires {:id "id2"} LitInt(0) <= n#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id3"} Seq#Length(arr#0) == n#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "AllocateArray (correctness)"} Impl$$_module.__default.AllocateArray(_module._default.AllocateArray$G: Ty, n#0: int)
   returns (arr#0: Seq
       where $Is(arr#0, TSeq(_module._default.AllocateArray$G))
         && $IsAlloc(arr#0, TSeq(_module._default.AllocateArray$G), $Heap), 
    $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id4"} LitInt(0) <= n#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id5"} Seq#Length(arr#0) == n#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AllocateArray (correctness)"} Impl$$_module.__default.AllocateArray(_module._default.AllocateArray$G: Ty, n#0: int)
   returns (arr#0: Seq, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var g#0_0: Box
     where $IsBox(g#0_0, _module._default.AllocateArray$G)
       && $IsAllocBox(g#0_0, _module._default.AllocateArray$G, $Heap);

    // AddMethodImpl: AllocateArray, Impl$$_module.__default.AllocateArray
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vacid0/SparseArray.dfy(115,7)
    assume true;
    assume true;
    arr#0 := Lit(Seq#Empty(): Seq);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vacid0/SparseArray.dfy(116,9)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vacid0/SparseArray.dfy(117,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := n#0 - i#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id9"} $w$loop#0 ==> i#0 <= n#0;
      invariant {:id "id10"} $w$loop#0 ==> Seq#Length(arr#0) == i#0;
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
      free invariant n#0 - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            if (i#0 <= n#0)
            {
            }

            assume true;
            assume {:id "id8"} i#0 <= n#0 && Seq#Length(arr#0) == i#0;
            assume true;
            assume false;
        }

        assume true;
        if (n#0 <= i#0)
        {
            break;
        }

        $decr$loop#00 := n#0 - i#0;
        havoc g#0_0 /* where $IsBox(g#0_0, _module._default.AllocateArray$G)
           && $IsAllocBox(g#0_0, _module._default.AllocateArray$G, $Heap) */;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vacid0/SparseArray.dfy(121,9)
        assume true;
        assume true;
        arr#0 := Seq#Append(arr#0, Seq#Build(Seq#Empty(): Seq, g#0_0));
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vacid0/SparseArray.dfy(122,7)
        assume true;
        assume true;
        i#0 := i#0 + 1;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vacid0/SparseArray.dfy(117,3)
        assert {:id "id13"} 0 <= $decr$loop#00 || n#0 - i#0 == $decr$loop#00;
        assert {:id "id14"} n#0 - i#0 < $decr$loop#00;
        assume true;
    }
}



const unique class._module.SparseArray?: ClassName;

function Tclass._module.SparseArray?(Ty) : Ty;

const unique Tagclass._module.SparseArray?: TyTag;

// Tclass._module.SparseArray? Tag
axiom (forall _module.SparseArray$T: Ty :: 
  { Tclass._module.SparseArray?(_module.SparseArray$T) } 
  Tag(Tclass._module.SparseArray?(_module.SparseArray$T))
       == Tagclass._module.SparseArray?
     && TagFamily(Tclass._module.SparseArray?(_module.SparseArray$T))
       == tytagFamily$SparseArray);

function Tclass._module.SparseArray?_0(Ty) : Ty;

// Tclass._module.SparseArray? injectivity 0
axiom (forall _module.SparseArray$T: Ty :: 
  { Tclass._module.SparseArray?(_module.SparseArray$T) } 
  Tclass._module.SparseArray?_0(Tclass._module.SparseArray?(_module.SparseArray$T))
     == _module.SparseArray$T);

// Box/unbox axiom for Tclass._module.SparseArray?
axiom (forall _module.SparseArray$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.SparseArray?(_module.SparseArray$T)) } 
  $IsBox(bx, Tclass._module.SparseArray?(_module.SparseArray$T))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.SparseArray?(_module.SparseArray$T)));

// $Is axiom for class SparseArray
axiom (forall _module.SparseArray$T: Ty, $o: ref :: 
  { $Is($o, Tclass._module.SparseArray?(_module.SparseArray$T)) } 
  $Is($o, Tclass._module.SparseArray?(_module.SparseArray$T))
     <==> $o == null || dtype($o) == Tclass._module.SparseArray?(_module.SparseArray$T));

// $IsAlloc axiom for class SparseArray
axiom (forall _module.SparseArray$T: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.SparseArray?(_module.SparseArray$T), $h) } 
  $IsAlloc($o, Tclass._module.SparseArray?(_module.SparseArray$T), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.SparseArray.Contents: Field
uses {
axiom FDim(_module.SparseArray.Contents) == 0
   && FieldOfDecl(class._module.SparseArray?, field$Contents)
     == _module.SparseArray.Contents
   && $IsGhostField(_module.SparseArray.Contents);
}

// SparseArray.Contents: Type axiom
axiom (forall _module.SparseArray$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.SparseArray.Contents)): Seq, Tclass._module.SparseArray?(_module.SparseArray$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.SparseArray?(_module.SparseArray$T)
     ==> $Is($Unbox(read($h, $o, _module.SparseArray.Contents)): Seq, 
      TSeq(_module.SparseArray$T)));

// SparseArray.Contents: Allocation axiom
axiom (forall _module.SparseArray$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.SparseArray.Contents)): Seq, Tclass._module.SparseArray?(_module.SparseArray$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.SparseArray?(_module.SparseArray$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.SparseArray.Contents)): Seq, 
      TSeq(_module.SparseArray$T), 
      $h));

const _module.SparseArray.zero: Field
uses {
axiom FDim(_module.SparseArray.zero) == 0
   && FieldOfDecl(class._module.SparseArray?, field$zero) == _module.SparseArray.zero
   && !$IsGhostField(_module.SparseArray.zero);
}

// SparseArray.zero: Type axiom
axiom (forall _module.SparseArray$T: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, _module.SparseArray.zero), Tclass._module.SparseArray?(_module.SparseArray$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.SparseArray?(_module.SparseArray$T)
     ==> $IsBox(read($h, $o, _module.SparseArray.zero), _module.SparseArray$T));

// SparseArray.zero: Allocation axiom
axiom (forall _module.SparseArray$T: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, _module.SparseArray.zero), Tclass._module.SparseArray?(_module.SparseArray$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.SparseArray?(_module.SparseArray$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, _module.SparseArray.zero), _module.SparseArray$T, $h));

const _module.SparseArray.a: Field
uses {
axiom FDim(_module.SparseArray.a) == 0
   && FieldOfDecl(class._module.SparseArray?, field$a) == _module.SparseArray.a
   && !$IsGhostField(_module.SparseArray.a);
}

// SparseArray.a: Type axiom
axiom (forall _module.SparseArray$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.SparseArray.a)): Seq, Tclass._module.SparseArray?(_module.SparseArray$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.SparseArray?(_module.SparseArray$T)
     ==> $Is($Unbox(read($h, $o, _module.SparseArray.a)): Seq, TSeq(_module.SparseArray$T)));

// SparseArray.a: Allocation axiom
axiom (forall _module.SparseArray$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.SparseArray.a)): Seq, Tclass._module.SparseArray?(_module.SparseArray$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.SparseArray?(_module.SparseArray$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.SparseArray.a)): Seq, 
      TSeq(_module.SparseArray$T), 
      $h));

const _module.SparseArray.b: Field
uses {
axiom FDim(_module.SparseArray.b) == 0
   && FieldOfDecl(class._module.SparseArray?, field$b) == _module.SparseArray.b
   && !$IsGhostField(_module.SparseArray.b);
}

// SparseArray.b: Type axiom
axiom (forall _module.SparseArray$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.SparseArray.b)): Seq, Tclass._module.SparseArray?(_module.SparseArray$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.SparseArray?(_module.SparseArray$T)
     ==> $Is($Unbox(read($h, $o, _module.SparseArray.b)): Seq, TSeq(TInt)));

// SparseArray.b: Allocation axiom
axiom (forall _module.SparseArray$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.SparseArray.b)): Seq, Tclass._module.SparseArray?(_module.SparseArray$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.SparseArray?(_module.SparseArray$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.SparseArray.b)): Seq, TSeq(TInt), $h));

const _module.SparseArray.c: Field
uses {
axiom FDim(_module.SparseArray.c) == 0
   && FieldOfDecl(class._module.SparseArray?, field$c) == _module.SparseArray.c
   && !$IsGhostField(_module.SparseArray.c);
}

// SparseArray.c: Type axiom
axiom (forall _module.SparseArray$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.SparseArray.c)): Seq, Tclass._module.SparseArray?(_module.SparseArray$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.SparseArray?(_module.SparseArray$T)
     ==> $Is($Unbox(read($h, $o, _module.SparseArray.c)): Seq, TSeq(TInt)));

// SparseArray.c: Allocation axiom
axiom (forall _module.SparseArray$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.SparseArray.c)): Seq, Tclass._module.SparseArray?(_module.SparseArray$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.SparseArray?(_module.SparseArray$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.SparseArray.c)): Seq, TSeq(TInt), $h));

const _module.SparseArray.n: Field
uses {
axiom FDim(_module.SparseArray.n) == 0
   && FieldOfDecl(class._module.SparseArray?, field$n) == _module.SparseArray.n
   && !$IsGhostField(_module.SparseArray.n);
}

// SparseArray.n: Type axiom
axiom (forall _module.SparseArray$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.SparseArray.n)): int, Tclass._module.SparseArray?(_module.SparseArray$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.SparseArray?(_module.SparseArray$T)
     ==> $Is($Unbox(read($h, $o, _module.SparseArray.n)): int, TInt));

// SparseArray.n: Allocation axiom
axiom (forall _module.SparseArray$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.SparseArray.n)): int, Tclass._module.SparseArray?(_module.SparseArray$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.SparseArray?(_module.SparseArray$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.SparseArray.n)): int, TInt, $h));

const _module.SparseArray.d: Field
uses {
axiom FDim(_module.SparseArray.d) == 0
   && FieldOfDecl(class._module.SparseArray?, field$d) == _module.SparseArray.d
   && $IsGhostField(_module.SparseArray.d);
}

// SparseArray.d: Type axiom
axiom (forall _module.SparseArray$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.SparseArray.d)): Seq, Tclass._module.SparseArray?(_module.SparseArray$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.SparseArray?(_module.SparseArray$T)
     ==> $Is($Unbox(read($h, $o, _module.SparseArray.d)): Seq, TSeq(TInt)));

// SparseArray.d: Allocation axiom
axiom (forall _module.SparseArray$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.SparseArray.d)): Seq, Tclass._module.SparseArray?(_module.SparseArray$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.SparseArray?(_module.SparseArray$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.SparseArray.d)): Seq, TSeq(TInt), $h));

const _module.SparseArray.e: Field
uses {
axiom FDim(_module.SparseArray.e) == 0
   && FieldOfDecl(class._module.SparseArray?, field$e) == _module.SparseArray.e
   && $IsGhostField(_module.SparseArray.e);
}

// SparseArray.e: Type axiom
axiom (forall _module.SparseArray$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.SparseArray.e)): Seq, Tclass._module.SparseArray?(_module.SparseArray$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.SparseArray?(_module.SparseArray$T)
     ==> $Is($Unbox(read($h, $o, _module.SparseArray.e)): Seq, TSeq(TInt)));

// SparseArray.e: Allocation axiom
axiom (forall _module.SparseArray$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.SparseArray.e)): Seq, Tclass._module.SparseArray?(_module.SparseArray$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.SparseArray?(_module.SparseArray$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.SparseArray.e)): Seq, TSeq(TInt), $h));

// function declaration for _module.SparseArray.Valid
function _module.SparseArray.Valid(_module.SparseArray$T: Ty, $heap: Heap, this: ref) : bool
uses {
// definition axiom for _module.SparseArray.Valid (revealed)
axiom {:id "id15"} 0 <= $FunctionContextHeight
   ==> (forall _module.SparseArray$T: Ty, $Heap: Heap, this: ref :: 
    { _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this), $IsGoodHeap($Heap) } 
    _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SparseArray(_module.SparseArray$T))
           && $IsAlloc(this, Tclass._module.SparseArray(_module.SparseArray$T), $Heap))
       ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
         == (
          Seq#Length($Unbox(read($Heap, this, _module.SparseArray.a)): Seq)
             == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
           && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.b)): Seq)
             == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
           && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.c)): Seq)
             == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
           && LitInt(0) <= $Unbox(read($Heap, this, _module.SparseArray.n)): int
           && $Unbox(read($Heap, this, _module.SparseArray.n)): int
             <= Seq#Length($Unbox(read($Heap, this, _module.SparseArray.c)): Seq)
           && (forall i#0: int :: 
            { Seq#Index($Unbox(read($Heap, this, _module.SparseArray.a)): Seq, i#0) } 
              { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#0)): int } 
              { Seq#Index($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq, i#0) } 
            LitInt(0) <= i#0
                 && i#0 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
               ==> Seq#Index($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq, i#0)
                 == (if LitInt(0)
                       <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#0)): int
                     && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#0)): int
                       < $Unbox(read($Heap, this, _module.SparseArray.n)): int
                     && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                          $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#0)): int)): int
                       == i#0
                   then Seq#Index($Unbox(read($Heap, this, _module.SparseArray.a)): Seq, i#0)
                   else read($Heap, this, _module.SparseArray.zero)))
           && (forall i#1: int :: 
            { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#1)): int } 
              { Seq#Contains(Seq#Take($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                  $Unbox(read($Heap, this, _module.SparseArray.n)): int), 
                $Box(i#1)) } 
            LitInt(0) <= i#1
                 && i#1 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
               ==> (Seq#Contains(Seq#Take($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                    $Unbox(read($Heap, this, _module.SparseArray.n)): int), 
                  $Box(i#1))
                 <==> LitInt(0)
                     <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#1)): int
                   && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#1)): int
                     < $Unbox(read($Heap, this, _module.SparseArray.n)): int
                   && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                        $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#1)): int)): int
                     == i#1))
           && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq)
             == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
           && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)
             == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
           && (forall i#2: int :: 
            { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#2)): int } 
              { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, i#2)): int } 
            LitInt(0) <= i#2 && i#2 < $Unbox(read($Heap, this, _module.SparseArray.n)): int
               ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, i#2)): int
                 == $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#2)): int)
           && (forall i#3: int :: 
            { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#3)): int } 
            (LitInt(0) <= i#3
                   && i#3 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq)
                 ==> LitInt(0)
                   <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#3)): int)
               && (LitInt(0) <= i#3
                   && i#3 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq)
                 ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#3)): int
                   < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq)))
           && (forall i#4: int :: 
            { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#4)): int } 
            (LitInt(0) <= i#4
                   && i#4 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)
                 ==> LitInt(0)
                   <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#4)): int)
               && (LitInt(0) <= i#4
                   && i#4 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)
                 ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#4)): int
                   < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)))
           && (forall i#5: int :: 
            { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#5)): int } 
            LitInt(0) <= i#5
                 && i#5 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)
               ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, 
                    $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#5)): int)): int
                 == i#5)));
}

function _module.SparseArray.Valid#canCall(_module.SparseArray$T: Ty, $heap: Heap, this: ref) : bool;

function Tclass._module.SparseArray(Ty) : Ty;

const unique Tagclass._module.SparseArray: TyTag;

// Tclass._module.SparseArray Tag
axiom (forall _module.SparseArray$T: Ty :: 
  { Tclass._module.SparseArray(_module.SparseArray$T) } 
  Tag(Tclass._module.SparseArray(_module.SparseArray$T))
       == Tagclass._module.SparseArray
     && TagFamily(Tclass._module.SparseArray(_module.SparseArray$T))
       == tytagFamily$SparseArray);

function Tclass._module.SparseArray_0(Ty) : Ty;

// Tclass._module.SparseArray injectivity 0
axiom (forall _module.SparseArray$T: Ty :: 
  { Tclass._module.SparseArray(_module.SparseArray$T) } 
  Tclass._module.SparseArray_0(Tclass._module.SparseArray(_module.SparseArray$T))
     == _module.SparseArray$T);

// Box/unbox axiom for Tclass._module.SparseArray
axiom (forall _module.SparseArray$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.SparseArray(_module.SparseArray$T)) } 
  $IsBox(bx, Tclass._module.SparseArray(_module.SparseArray$T))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.SparseArray(_module.SparseArray$T)));

// frame axiom for _module.SparseArray.Valid
axiom (forall _module.SparseArray$T: Ty, $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.SparseArray.Valid(_module.SparseArray$T, $h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.SparseArray(_module.SparseArray$T))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == this ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $h0, this)
       == _module.SparseArray.Valid(_module.SparseArray$T, $h1, this));

function _module.SparseArray.Valid#requires(Ty, Heap, ref) : bool;

// #requires axiom for _module.SparseArray.Valid
axiom (forall _module.SparseArray$T: Ty, $Heap: Heap, this: ref :: 
  { _module.SparseArray.Valid#requires(_module.SparseArray$T, $Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.SparseArray(_module.SparseArray$T))
       && $IsAlloc(this, Tclass._module.SparseArray(_module.SparseArray$T), $Heap)
     ==> _module.SparseArray.Valid#requires(_module.SparseArray$T, $Heap, this) == true);

procedure {:verboseName "SparseArray.Valid (well-formedness)"} CheckWellformed$$_module.SparseArray.Valid(_module.SparseArray$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SparseArray(_module.SparseArray$T))
         && $IsAlloc(this, Tclass._module.SparseArray(_module.SparseArray$T), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SparseArray.Valid (well-formedness)"} CheckWellformed$$_module.SparseArray.Valid(_module.SparseArray$T: Ty, this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var i#6: int;
  var i#7: int;
  var i#10: int;
  var i#11: int;
  var i#13: int;
  var i#15: int;
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
  var b$reqreads#14: bool;
  var b$reqreads#15: bool;
  var b$reqreads#16: bool;
  var b$reqreads#17: bool;
  var b$reqreads#18: bool;
  var b$reqreads#19: bool;
  var b$reqreads#20: bool;
  var b$reqreads#21: bool;
  var b$reqreads#22: bool;
  var b$reqreads#23: bool;
  var b$reqreads#24: bool;
  var b$reqreads#25: bool;
  var b$reqreads#26: bool;
  var b$reqreads#27: bool;
  var b$reqreads#28: bool;
  var b$reqreads#29: bool;
  var b$reqreads#30: bool;
  var b$reqreads#31: bool;
  var b$reqreads#32: bool;
  var b$reqreads#33: bool;
  var b$reqreads#34: bool;
  var b$reqreads#35: bool;
  var b$reqreads#36: bool;
  var b$reqreads#37: bool;
  var b$reqreads#38: bool;
  var b$reqreads#39: bool;
  var b$reqreads#40: bool;
  var b$reqreads#41: bool;
  var b$reqreads#42: bool;
  var b$reqreads#43: bool;

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
    b$reqreads#19 := true;
    b$reqreads#20 := true;
    b$reqreads#21 := true;
    b$reqreads#22 := true;
    b$reqreads#23 := true;
    b$reqreads#24 := true;
    b$reqreads#25 := true;
    b$reqreads#26 := true;
    b$reqreads#27 := true;
    b$reqreads#28 := true;
    b$reqreads#29 := true;
    b$reqreads#30 := true;
    b$reqreads#31 := true;
    b$reqreads#32 := true;
    b$reqreads#33 := true;
    b$reqreads#34 := true;
    b$reqreads#35 := true;
    b$reqreads#36 := true;
    b$reqreads#37 := true;
    b$reqreads#38 := true;
    b$reqreads#39 := true;
    b$reqreads#40 := true;
    b$reqreads#41 := true;
    b$reqreads#42 := true;
    b$reqreads#43 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
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
        b$reqreads#0 := $_ReadsFrame[this, _module.SparseArray.a];
        b$reqreads#1 := $_ReadsFrame[this, _module.SparseArray.Contents];
        if (Seq#Length($Unbox(read($Heap, this, _module.SparseArray.a)): Seq)
           == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq))
        {
            b$reqreads#2 := $_ReadsFrame[this, _module.SparseArray.b];
            b$reqreads#3 := $_ReadsFrame[this, _module.SparseArray.Contents];
        }

        if (Seq#Length($Unbox(read($Heap, this, _module.SparseArray.a)): Seq)
             == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
           && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.b)): Seq)
             == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq))
        {
            b$reqreads#4 := $_ReadsFrame[this, _module.SparseArray.c];
            b$reqreads#5 := $_ReadsFrame[this, _module.SparseArray.Contents];
        }

        if (Seq#Length($Unbox(read($Heap, this, _module.SparseArray.a)): Seq)
             == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
           && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.b)): Seq)
             == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
           && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.c)): Seq)
             == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq))
        {
            b$reqreads#6 := $_ReadsFrame[this, _module.SparseArray.n];
        }

        if (Seq#Length($Unbox(read($Heap, this, _module.SparseArray.a)): Seq)
             == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
           && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.b)): Seq)
             == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
           && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.c)): Seq)
             == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
           && LitInt(0) <= $Unbox(read($Heap, this, _module.SparseArray.n)): int)
        {
            b$reqreads#7 := $_ReadsFrame[this, _module.SparseArray.n];
            b$reqreads#8 := $_ReadsFrame[this, _module.SparseArray.c];
        }

        if (Seq#Length($Unbox(read($Heap, this, _module.SparseArray.a)): Seq)
             == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
           && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.b)): Seq)
             == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
           && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.c)): Seq)
             == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
           && LitInt(0) <= $Unbox(read($Heap, this, _module.SparseArray.n)): int
           && $Unbox(read($Heap, this, _module.SparseArray.n)): int
             <= Seq#Length($Unbox(read($Heap, this, _module.SparseArray.c)): Seq))
        {
            // Begin Comprehension WF check
            havoc i#6;
            if (true)
            {
                if (LitInt(0) <= i#6)
                {
                    b$reqreads#9 := $_ReadsFrame[this, _module.SparseArray.Contents];
                }

                if (LitInt(0) <= i#6
                   && i#6 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq))
                {
                    b$reqreads#10 := $_ReadsFrame[this, _module.SparseArray.Contents];
                    assert {:id "id16"} 0 <= i#6
                       && i#6 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq);
                    b$reqreads#11 := $_ReadsFrame[this, _module.SparseArray.b];
                    assert {:id "id17"} 0 <= i#6
                       && i#6 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.b)): Seq);
                    if (LitInt(0)
                       <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#6)): int)
                    {
                        b$reqreads#12 := $_ReadsFrame[this, _module.SparseArray.b];
                        assert {:id "id18"} 0 <= i#6
                           && i#6 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.b)): Seq);
                        b$reqreads#13 := $_ReadsFrame[this, _module.SparseArray.n];
                    }

                    if (LitInt(0)
                         <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#6)): int
                       && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#6)): int
                         < $Unbox(read($Heap, this, _module.SparseArray.n)): int)
                    {
                        b$reqreads#14 := $_ReadsFrame[this, _module.SparseArray.c];
                        b$reqreads#15 := $_ReadsFrame[this, _module.SparseArray.b];
                        assert {:id "id19"} 0 <= i#6
                           && i#6 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.b)): Seq);
                        assert {:id "id20"} 0
                             <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#6)): int
                           && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#6)): int
                             < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.c)): Seq);
                    }

                    if (LitInt(0)
                         <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#6)): int
                       && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#6)): int
                         < $Unbox(read($Heap, this, _module.SparseArray.n)): int
                       && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                            $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#6)): int)): int
                         == i#6)
                    {
                        b$reqreads#16 := $_ReadsFrame[this, _module.SparseArray.a];
                        assert {:id "id21"} 0 <= i#6
                           && i#6 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.a)): Seq);
                    }
                    else
                    {
                        b$reqreads#17 := $_ReadsFrame[this, _module.SparseArray.zero];
                    }
                }
            }

            // End Comprehension WF check
        }

        if (Seq#Length($Unbox(read($Heap, this, _module.SparseArray.a)): Seq)
             == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
           && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.b)): Seq)
             == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
           && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.c)): Seq)
             == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
           && LitInt(0) <= $Unbox(read($Heap, this, _module.SparseArray.n)): int
           && $Unbox(read($Heap, this, _module.SparseArray.n)): int
             <= Seq#Length($Unbox(read($Heap, this, _module.SparseArray.c)): Seq)
           && (forall i#8: int :: 
            { Seq#Index($Unbox(read($Heap, this, _module.SparseArray.a)): Seq, i#8) } 
              { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#8)): int } 
              { Seq#Index($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq, i#8) } 
            LitInt(0) <= i#8
                 && i#8 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
               ==> Seq#Index($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq, i#8)
                 == (if LitInt(0)
                       <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#8)): int
                     && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#8)): int
                       < $Unbox(read($Heap, this, _module.SparseArray.n)): int
                     && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                          $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#8)): int)): int
                       == i#8
                   then Seq#Index($Unbox(read($Heap, this, _module.SparseArray.a)): Seq, i#8)
                   else read($Heap, this, _module.SparseArray.zero))))
        {
            // Begin Comprehension WF check
            havoc i#7;
            if (true)
            {
                if (LitInt(0) <= i#7)
                {
                    b$reqreads#18 := $_ReadsFrame[this, _module.SparseArray.Contents];
                }

                if (LitInt(0) <= i#7
                   && i#7 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq))
                {
                    b$reqreads#19 := $_ReadsFrame[this, _module.SparseArray.c];
                    b$reqreads#20 := $_ReadsFrame[this, _module.SparseArray.n];
                    assert {:id "id22"} 0 <= $Unbox(read($Heap, this, _module.SparseArray.n)): int
                       && $Unbox(read($Heap, this, _module.SparseArray.n)): int
                         <= Seq#Length($Unbox(read($Heap, this, _module.SparseArray.c)): Seq);
                    b$reqreads#21 := $_ReadsFrame[this, _module.SparseArray.b];
                    assert {:id "id23"} 0 <= i#7
                       && i#7 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.b)): Seq);
                    if (LitInt(0)
                       <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#7)): int)
                    {
                        b$reqreads#22 := $_ReadsFrame[this, _module.SparseArray.b];
                        assert {:id "id24"} 0 <= i#7
                           && i#7 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.b)): Seq);
                        b$reqreads#23 := $_ReadsFrame[this, _module.SparseArray.n];
                    }

                    if (LitInt(0)
                         <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#7)): int
                       && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#7)): int
                         < $Unbox(read($Heap, this, _module.SparseArray.n)): int)
                    {
                        b$reqreads#24 := $_ReadsFrame[this, _module.SparseArray.c];
                        b$reqreads#25 := $_ReadsFrame[this, _module.SparseArray.b];
                        assert {:id "id25"} 0 <= i#7
                           && i#7 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.b)): Seq);
                        assert {:id "id26"} 0
                             <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#7)): int
                           && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#7)): int
                             < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.c)): Seq);
                    }
                }
            }

            // End Comprehension WF check
        }

        if (Seq#Length($Unbox(read($Heap, this, _module.SparseArray.a)): Seq)
             == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
           && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.b)): Seq)
             == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
           && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.c)): Seq)
             == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
           && LitInt(0) <= $Unbox(read($Heap, this, _module.SparseArray.n)): int
           && $Unbox(read($Heap, this, _module.SparseArray.n)): int
             <= Seq#Length($Unbox(read($Heap, this, _module.SparseArray.c)): Seq)
           && (forall i#8: int :: 
            { Seq#Index($Unbox(read($Heap, this, _module.SparseArray.a)): Seq, i#8) } 
              { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#8)): int } 
              { Seq#Index($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq, i#8) } 
            LitInt(0) <= i#8
                 && i#8 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
               ==> Seq#Index($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq, i#8)
                 == (if LitInt(0)
                       <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#8)): int
                     && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#8)): int
                       < $Unbox(read($Heap, this, _module.SparseArray.n)): int
                     && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                          $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#8)): int)): int
                       == i#8
                   then Seq#Index($Unbox(read($Heap, this, _module.SparseArray.a)): Seq, i#8)
                   else read($Heap, this, _module.SparseArray.zero)))
           && (forall i#9: int :: 
            { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#9)): int } 
              { Seq#Contains(Seq#Take($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                  $Unbox(read($Heap, this, _module.SparseArray.n)): int), 
                $Box(i#9)) } 
            LitInt(0) <= i#9
                 && i#9 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
               ==> (Seq#Contains(Seq#Take($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                    $Unbox(read($Heap, this, _module.SparseArray.n)): int), 
                  $Box(i#9))
                 <==> LitInt(0)
                     <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#9)): int
                   && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#9)): int
                     < $Unbox(read($Heap, this, _module.SparseArray.n)): int
                   && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                        $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#9)): int)): int
                     == i#9)))
        {
            b$reqreads#26 := $_ReadsFrame[this, _module.SparseArray.d];
            b$reqreads#27 := $_ReadsFrame[this, _module.SparseArray.Contents];
        }

        if (Seq#Length($Unbox(read($Heap, this, _module.SparseArray.a)): Seq)
             == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
           && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.b)): Seq)
             == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
           && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.c)): Seq)
             == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
           && LitInt(0) <= $Unbox(read($Heap, this, _module.SparseArray.n)): int
           && $Unbox(read($Heap, this, _module.SparseArray.n)): int
             <= Seq#Length($Unbox(read($Heap, this, _module.SparseArray.c)): Seq)
           && (forall i#8: int :: 
            { Seq#Index($Unbox(read($Heap, this, _module.SparseArray.a)): Seq, i#8) } 
              { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#8)): int } 
              { Seq#Index($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq, i#8) } 
            LitInt(0) <= i#8
                 && i#8 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
               ==> Seq#Index($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq, i#8)
                 == (if LitInt(0)
                       <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#8)): int
                     && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#8)): int
                       < $Unbox(read($Heap, this, _module.SparseArray.n)): int
                     && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                          $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#8)): int)): int
                       == i#8
                   then Seq#Index($Unbox(read($Heap, this, _module.SparseArray.a)): Seq, i#8)
                   else read($Heap, this, _module.SparseArray.zero)))
           && (forall i#9: int :: 
            { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#9)): int } 
              { Seq#Contains(Seq#Take($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                  $Unbox(read($Heap, this, _module.SparseArray.n)): int), 
                $Box(i#9)) } 
            LitInt(0) <= i#9
                 && i#9 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
               ==> (Seq#Contains(Seq#Take($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                    $Unbox(read($Heap, this, _module.SparseArray.n)): int), 
                  $Box(i#9))
                 <==> LitInt(0)
                     <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#9)): int
                   && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#9)): int
                     < $Unbox(read($Heap, this, _module.SparseArray.n)): int
                   && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                        $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#9)): int)): int
                     == i#9))
           && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq)
             == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq))
        {
            b$reqreads#28 := $_ReadsFrame[this, _module.SparseArray.e];
            b$reqreads#29 := $_ReadsFrame[this, _module.SparseArray.Contents];
        }

        if (Seq#Length($Unbox(read($Heap, this, _module.SparseArray.a)): Seq)
             == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
           && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.b)): Seq)
             == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
           && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.c)): Seq)
             == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
           && LitInt(0) <= $Unbox(read($Heap, this, _module.SparseArray.n)): int
           && $Unbox(read($Heap, this, _module.SparseArray.n)): int
             <= Seq#Length($Unbox(read($Heap, this, _module.SparseArray.c)): Seq)
           && (forall i#8: int :: 
            { Seq#Index($Unbox(read($Heap, this, _module.SparseArray.a)): Seq, i#8) } 
              { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#8)): int } 
              { Seq#Index($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq, i#8) } 
            LitInt(0) <= i#8
                 && i#8 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
               ==> Seq#Index($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq, i#8)
                 == (if LitInt(0)
                       <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#8)): int
                     && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#8)): int
                       < $Unbox(read($Heap, this, _module.SparseArray.n)): int
                     && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                          $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#8)): int)): int
                       == i#8
                   then Seq#Index($Unbox(read($Heap, this, _module.SparseArray.a)): Seq, i#8)
                   else read($Heap, this, _module.SparseArray.zero)))
           && (forall i#9: int :: 
            { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#9)): int } 
              { Seq#Contains(Seq#Take($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                  $Unbox(read($Heap, this, _module.SparseArray.n)): int), 
                $Box(i#9)) } 
            LitInt(0) <= i#9
                 && i#9 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
               ==> (Seq#Contains(Seq#Take($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                    $Unbox(read($Heap, this, _module.SparseArray.n)): int), 
                  $Box(i#9))
                 <==> LitInt(0)
                     <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#9)): int
                   && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#9)): int
                     < $Unbox(read($Heap, this, _module.SparseArray.n)): int
                   && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                        $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#9)): int)): int
                     == i#9))
           && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq)
             == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
           && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)
             == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq))
        {
            // Begin Comprehension WF check
            havoc i#10;
            if (true)
            {
                if (LitInt(0) <= i#10)
                {
                    b$reqreads#30 := $_ReadsFrame[this, _module.SparseArray.n];
                }

                if (LitInt(0) <= i#10
                   && i#10 < $Unbox(read($Heap, this, _module.SparseArray.n)): int)
                {
                    b$reqreads#31 := $_ReadsFrame[this, _module.SparseArray.c];
                    assert {:id "id27"} 0 <= i#10
                       && i#10 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.c)): Seq);
                    b$reqreads#32 := $_ReadsFrame[this, _module.SparseArray.d];
                    assert {:id "id28"} 0 <= i#10
                       && i#10 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq);
                }
            }

            // End Comprehension WF check
        }

        if (Seq#Length($Unbox(read($Heap, this, _module.SparseArray.a)): Seq)
             == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
           && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.b)): Seq)
             == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
           && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.c)): Seq)
             == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
           && LitInt(0) <= $Unbox(read($Heap, this, _module.SparseArray.n)): int
           && $Unbox(read($Heap, this, _module.SparseArray.n)): int
             <= Seq#Length($Unbox(read($Heap, this, _module.SparseArray.c)): Seq)
           && (forall i#8: int :: 
            { Seq#Index($Unbox(read($Heap, this, _module.SparseArray.a)): Seq, i#8) } 
              { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#8)): int } 
              { Seq#Index($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq, i#8) } 
            LitInt(0) <= i#8
                 && i#8 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
               ==> Seq#Index($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq, i#8)
                 == (if LitInt(0)
                       <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#8)): int
                     && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#8)): int
                       < $Unbox(read($Heap, this, _module.SparseArray.n)): int
                     && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                          $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#8)): int)): int
                       == i#8
                   then Seq#Index($Unbox(read($Heap, this, _module.SparseArray.a)): Seq, i#8)
                   else read($Heap, this, _module.SparseArray.zero)))
           && (forall i#9: int :: 
            { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#9)): int } 
              { Seq#Contains(Seq#Take($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                  $Unbox(read($Heap, this, _module.SparseArray.n)): int), 
                $Box(i#9)) } 
            LitInt(0) <= i#9
                 && i#9 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
               ==> (Seq#Contains(Seq#Take($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                    $Unbox(read($Heap, this, _module.SparseArray.n)): int), 
                  $Box(i#9))
                 <==> LitInt(0)
                     <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#9)): int
                   && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#9)): int
                     < $Unbox(read($Heap, this, _module.SparseArray.n)): int
                   && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                        $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#9)): int)): int
                     == i#9))
           && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq)
             == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
           && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)
             == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
           && (forall i#12: int :: 
            { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#12)): int } 
              { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, i#12)): int } 
            LitInt(0) <= i#12
                 && i#12 < $Unbox(read($Heap, this, _module.SparseArray.n)): int
               ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, i#12)): int
                 == $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#12)): int))
        {
            // Begin Comprehension WF check
            havoc i#11;
            if (true)
            {
                if (LitInt(0) <= i#11)
                {
                    b$reqreads#33 := $_ReadsFrame[this, _module.SparseArray.d];
                }

                if (LitInt(0) <= i#11
                   && i#11 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq))
                {
                    b$reqreads#34 := $_ReadsFrame[this, _module.SparseArray.d];
                    assert {:id "id29"} 0 <= i#11
                       && i#11 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq);
                    if (LitInt(0)
                       <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#11)): int)
                    {
                        b$reqreads#35 := $_ReadsFrame[this, _module.SparseArray.d];
                        assert {:id "id30"} 0 <= i#11
                           && i#11 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq);
                        b$reqreads#36 := $_ReadsFrame[this, _module.SparseArray.d];
                    }
                }
            }

            // End Comprehension WF check
        }

        if (Seq#Length($Unbox(read($Heap, this, _module.SparseArray.a)): Seq)
             == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
           && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.b)): Seq)
             == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
           && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.c)): Seq)
             == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
           && LitInt(0) <= $Unbox(read($Heap, this, _module.SparseArray.n)): int
           && $Unbox(read($Heap, this, _module.SparseArray.n)): int
             <= Seq#Length($Unbox(read($Heap, this, _module.SparseArray.c)): Seq)
           && (forall i#8: int :: 
            { Seq#Index($Unbox(read($Heap, this, _module.SparseArray.a)): Seq, i#8) } 
              { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#8)): int } 
              { Seq#Index($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq, i#8) } 
            LitInt(0) <= i#8
                 && i#8 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
               ==> Seq#Index($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq, i#8)
                 == (if LitInt(0)
                       <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#8)): int
                     && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#8)): int
                       < $Unbox(read($Heap, this, _module.SparseArray.n)): int
                     && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                          $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#8)): int)): int
                       == i#8
                   then Seq#Index($Unbox(read($Heap, this, _module.SparseArray.a)): Seq, i#8)
                   else read($Heap, this, _module.SparseArray.zero)))
           && (forall i#9: int :: 
            { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#9)): int } 
              { Seq#Contains(Seq#Take($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                  $Unbox(read($Heap, this, _module.SparseArray.n)): int), 
                $Box(i#9)) } 
            LitInt(0) <= i#9
                 && i#9 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
               ==> (Seq#Contains(Seq#Take($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                    $Unbox(read($Heap, this, _module.SparseArray.n)): int), 
                  $Box(i#9))
                 <==> LitInt(0)
                     <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#9)): int
                   && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#9)): int
                     < $Unbox(read($Heap, this, _module.SparseArray.n)): int
                   && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                        $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#9)): int)): int
                     == i#9))
           && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq)
             == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
           && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)
             == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
           && (forall i#12: int :: 
            { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#12)): int } 
              { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, i#12)): int } 
            LitInt(0) <= i#12
                 && i#12 < $Unbox(read($Heap, this, _module.SparseArray.n)): int
               ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, i#12)): int
                 == $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#12)): int)
           && (forall i#14: int :: 
            { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#14)): int } 
            (LitInt(0) <= i#14
                   && i#14 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq)
                 ==> LitInt(0)
                   <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#14)): int)
               && (LitInt(0) <= i#14
                   && i#14 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq)
                 ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#14)): int
                   < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq))))
        {
            // Begin Comprehension WF check
            havoc i#13;
            if (true)
            {
                if (LitInt(0) <= i#13)
                {
                    b$reqreads#37 := $_ReadsFrame[this, _module.SparseArray.e];
                }

                if (LitInt(0) <= i#13
                   && i#13 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq))
                {
                    b$reqreads#38 := $_ReadsFrame[this, _module.SparseArray.e];
                    assert {:id "id31"} 0 <= i#13
                       && i#13 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq);
                    if (LitInt(0)
                       <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#13)): int)
                    {
                        b$reqreads#39 := $_ReadsFrame[this, _module.SparseArray.e];
                        assert {:id "id32"} 0 <= i#13
                           && i#13 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq);
                        b$reqreads#40 := $_ReadsFrame[this, _module.SparseArray.e];
                    }
                }
            }

            // End Comprehension WF check
        }

        if (Seq#Length($Unbox(read($Heap, this, _module.SparseArray.a)): Seq)
             == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
           && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.b)): Seq)
             == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
           && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.c)): Seq)
             == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
           && LitInt(0) <= $Unbox(read($Heap, this, _module.SparseArray.n)): int
           && $Unbox(read($Heap, this, _module.SparseArray.n)): int
             <= Seq#Length($Unbox(read($Heap, this, _module.SparseArray.c)): Seq)
           && (forall i#8: int :: 
            { Seq#Index($Unbox(read($Heap, this, _module.SparseArray.a)): Seq, i#8) } 
              { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#8)): int } 
              { Seq#Index($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq, i#8) } 
            LitInt(0) <= i#8
                 && i#8 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
               ==> Seq#Index($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq, i#8)
                 == (if LitInt(0)
                       <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#8)): int
                     && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#8)): int
                       < $Unbox(read($Heap, this, _module.SparseArray.n)): int
                     && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                          $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#8)): int)): int
                       == i#8
                   then Seq#Index($Unbox(read($Heap, this, _module.SparseArray.a)): Seq, i#8)
                   else read($Heap, this, _module.SparseArray.zero)))
           && (forall i#9: int :: 
            { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#9)): int } 
              { Seq#Contains(Seq#Take($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                  $Unbox(read($Heap, this, _module.SparseArray.n)): int), 
                $Box(i#9)) } 
            LitInt(0) <= i#9
                 && i#9 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
               ==> (Seq#Contains(Seq#Take($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                    $Unbox(read($Heap, this, _module.SparseArray.n)): int), 
                  $Box(i#9))
                 <==> LitInt(0)
                     <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#9)): int
                   && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#9)): int
                     < $Unbox(read($Heap, this, _module.SparseArray.n)): int
                   && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                        $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#9)): int)): int
                     == i#9))
           && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq)
             == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
           && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)
             == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
           && (forall i#12: int :: 
            { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#12)): int } 
              { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, i#12)): int } 
            LitInt(0) <= i#12
                 && i#12 < $Unbox(read($Heap, this, _module.SparseArray.n)): int
               ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, i#12)): int
                 == $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#12)): int)
           && (forall i#14: int :: 
            { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#14)): int } 
            (LitInt(0) <= i#14
                   && i#14 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq)
                 ==> LitInt(0)
                   <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#14)): int)
               && (LitInt(0) <= i#14
                   && i#14 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq)
                 ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#14)): int
                   < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq)))
           && (forall i#16: int :: 
            { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#16)): int } 
            (LitInt(0) <= i#16
                   && i#16 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)
                 ==> LitInt(0)
                   <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#16)): int)
               && (LitInt(0) <= i#16
                   && i#16 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)
                 ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#16)): int
                   < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq))))
        {
            // Begin Comprehension WF check
            havoc i#15;
            if (true)
            {
                if (LitInt(0) <= i#15)
                {
                    b$reqreads#41 := $_ReadsFrame[this, _module.SparseArray.e];
                }

                if (LitInt(0) <= i#15
                   && i#15 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq))
                {
                    b$reqreads#42 := $_ReadsFrame[this, _module.SparseArray.d];
                    b$reqreads#43 := $_ReadsFrame[this, _module.SparseArray.e];
                    assert {:id "id33"} 0 <= i#15
                       && i#15 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq);
                    assert {:id "id34"} 0
                         <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#15)): int
                       && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#15)): int
                         < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq);
                }
            }

            // End Comprehension WF check
        }

        assume {:id "id35"} _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
           == (
            Seq#Length($Unbox(read($Heap, this, _module.SparseArray.a)): Seq)
               == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
             && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.b)): Seq)
               == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
             && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.c)): Seq)
               == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
             && LitInt(0) <= $Unbox(read($Heap, this, _module.SparseArray.n)): int
             && $Unbox(read($Heap, this, _module.SparseArray.n)): int
               <= Seq#Length($Unbox(read($Heap, this, _module.SparseArray.c)): Seq)
             && (forall i#8: int :: 
              { Seq#Index($Unbox(read($Heap, this, _module.SparseArray.a)): Seq, i#8) } 
                { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#8)): int } 
                { Seq#Index($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq, i#8) } 
              LitInt(0) <= i#8
                   && i#8 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
                 ==> Seq#Index($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq, i#8)
                   == (if LitInt(0)
                         <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#8)): int
                       && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#8)): int
                         < $Unbox(read($Heap, this, _module.SparseArray.n)): int
                       && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                            $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#8)): int)): int
                         == i#8
                     then Seq#Index($Unbox(read($Heap, this, _module.SparseArray.a)): Seq, i#8)
                     else read($Heap, this, _module.SparseArray.zero)))
             && (forall i#9: int :: 
              { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#9)): int } 
                { Seq#Contains(Seq#Take($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                    $Unbox(read($Heap, this, _module.SparseArray.n)): int), 
                  $Box(i#9)) } 
              LitInt(0) <= i#9
                   && i#9 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
                 ==> (Seq#Contains(Seq#Take($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                      $Unbox(read($Heap, this, _module.SparseArray.n)): int), 
                    $Box(i#9))
                   <==> LitInt(0)
                       <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#9)): int
                     && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#9)): int
                       < $Unbox(read($Heap, this, _module.SparseArray.n)): int
                     && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                          $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#9)): int)): int
                       == i#9))
             && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq)
               == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
             && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)
               == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
             && (forall i#12: int :: 
              { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#12)): int } 
                { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, i#12)): int } 
              LitInt(0) <= i#12
                   && i#12 < $Unbox(read($Heap, this, _module.SparseArray.n)): int
                 ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, i#12)): int
                   == $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#12)): int)
             && (forall i#14: int :: 
              { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#14)): int } 
              (LitInt(0) <= i#14
                     && i#14 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq)
                   ==> LitInt(0)
                     <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#14)): int)
                 && (LitInt(0) <= i#14
                     && i#14 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq)
                   ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#14)): int
                     < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq)))
             && (forall i#16: int :: 
              { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#16)): int } 
              (LitInt(0) <= i#16
                     && i#16 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)
                   ==> LitInt(0)
                     <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#16)): int)
                 && (LitInt(0) <= i#16
                     && i#16 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)
                   ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#16)): int
                     < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)))
             && (forall i#17: int :: 
              { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#17)): int } 
              LitInt(0) <= i#17
                   && i#17 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)
                 ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, 
                      $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#17)): int)): int
                   == i#17));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.SparseArray.Valid(_module.SparseArray$T, $Heap, this), TBool);
        assert {:id "id36"} b$reqreads#0;
        assert {:id "id37"} b$reqreads#1;
        assert {:id "id38"} b$reqreads#2;
        assert {:id "id39"} b$reqreads#3;
        assert {:id "id40"} b$reqreads#4;
        assert {:id "id41"} b$reqreads#5;
        assert {:id "id42"} b$reqreads#6;
        assert {:id "id43"} b$reqreads#7;
        assert {:id "id44"} b$reqreads#8;
        assert {:id "id45"} b$reqreads#9;
        assert {:id "id46"} b$reqreads#10;
        assert {:id "id47"} b$reqreads#11;
        assert {:id "id48"} b$reqreads#12;
        assert {:id "id49"} b$reqreads#13;
        assert {:id "id50"} b$reqreads#14;
        assert {:id "id51"} b$reqreads#15;
        assert {:id "id52"} b$reqreads#16;
        assert {:id "id53"} b$reqreads#17;
        assert {:id "id54"} b$reqreads#18;
        assert {:id "id55"} b$reqreads#19;
        assert {:id "id56"} b$reqreads#20;
        assert {:id "id57"} b$reqreads#21;
        assert {:id "id58"} b$reqreads#22;
        assert {:id "id59"} b$reqreads#23;
        assert {:id "id60"} b$reqreads#24;
        assert {:id "id61"} b$reqreads#25;
        assert {:id "id62"} b$reqreads#26;
        assert {:id "id63"} b$reqreads#27;
        assert {:id "id64"} b$reqreads#28;
        assert {:id "id65"} b$reqreads#29;
        assert {:id "id66"} b$reqreads#30;
        assert {:id "id67"} b$reqreads#31;
        assert {:id "id68"} b$reqreads#32;
        assert {:id "id69"} b$reqreads#33;
        assert {:id "id70"} b$reqreads#34;
        assert {:id "id71"} b$reqreads#35;
        assert {:id "id72"} b$reqreads#36;
        assert {:id "id73"} b$reqreads#37;
        assert {:id "id74"} b$reqreads#38;
        assert {:id "id75"} b$reqreads#39;
        assert {:id "id76"} b$reqreads#40;
        assert {:id "id77"} b$reqreads#41;
        assert {:id "id78"} b$reqreads#42;
        assert {:id "id79"} b$reqreads#43;
        return;

        assume false;
    }
}



procedure {:verboseName "SparseArray.Init (well-formedness)"} CheckWellFormed$$_module.SparseArray.Init(_module.SparseArray$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SparseArray(_module.SparseArray$T))
         && $IsAlloc(this, Tclass._module.SparseArray(_module.SparseArray$T), $Heap), 
    N#0: int, 
    zero#0: Box
       where $IsBox(zero#0, _module.SparseArray$T)
         && $IsAllocBox(zero#0, _module.SparseArray$T, $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SparseArray.Init (call)"} Call$$_module.SparseArray.Init(_module.SparseArray$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SparseArray(_module.SparseArray$T))
         && $IsAlloc(this, Tclass._module.SparseArray(_module.SparseArray$T), $Heap), 
    N#0: int, 
    zero#0: Box
       where $IsBox(zero#0, _module.SparseArray$T)
         && $IsAllocBox(zero#0, _module.SparseArray$T, $Heap));
  // user-defined preconditions
  requires {:id "id85"} LitInt(0) <= N#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this);
  free ensures {:id "id86"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     && 
    _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
     && 
    Seq#Length($Unbox(read($Heap, this, _module.SparseArray.a)): Seq)
       == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
     && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.b)): Seq)
       == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
     && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.c)): Seq)
       == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
     && LitInt(0) <= $Unbox(read($Heap, this, _module.SparseArray.n)): int
     && $Unbox(read($Heap, this, _module.SparseArray.n)): int
       <= Seq#Length($Unbox(read($Heap, this, _module.SparseArray.c)): Seq)
     && (forall i#0: int :: 
      { Seq#Index($Unbox(read($Heap, this, _module.SparseArray.a)): Seq, i#0) } 
        { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#0)): int } 
        { Seq#Index($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq, i#0) } 
      LitInt(0) <= i#0
           && i#0 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
         ==> Seq#Index($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq, i#0)
           == (if LitInt(0)
                 <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#0)): int
               && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#0)): int
                 < $Unbox(read($Heap, this, _module.SparseArray.n)): int
               && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                    $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#0)): int)): int
                 == i#0
             then Seq#Index($Unbox(read($Heap, this, _module.SparseArray.a)): Seq, i#0)
             else read($Heap, this, _module.SparseArray.zero)))
     && (forall i#1: int :: 
      { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#1)): int } 
        { Seq#Contains(Seq#Take($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
            $Unbox(read($Heap, this, _module.SparseArray.n)): int), 
          $Box(i#1)) } 
      LitInt(0) <= i#1
           && i#1 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
         ==> (Seq#Contains(Seq#Take($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
              $Unbox(read($Heap, this, _module.SparseArray.n)): int), 
            $Box(i#1))
           <==> LitInt(0)
               <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#1)): int
             && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#1)): int
               < $Unbox(read($Heap, this, _module.SparseArray.n)): int
             && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                  $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#1)): int)): int
               == i#1))
     && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq)
       == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
     && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)
       == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
     && (forall i#2: int :: 
      { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#2)): int } 
        { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, i#2)): int } 
      LitInt(0) <= i#2 && i#2 < $Unbox(read($Heap, this, _module.SparseArray.n)): int
         ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, i#2)): int
           == $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#2)): int)
     && (forall i#3: int :: 
      { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#3)): int } 
      (LitInt(0) <= i#3
             && i#3 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq)
           ==> LitInt(0)
             <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#3)): int)
         && (LitInt(0) <= i#3
             && i#3 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq)
           ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#3)): int
             < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq)))
     && (forall i#4: int :: 
      { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#4)): int } 
      (LitInt(0) <= i#4
             && i#4 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)
           ==> LitInt(0)
             <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#4)): int)
         && (LitInt(0) <= i#4
             && i#4 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)
           ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#4)): int
             < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)))
     && (forall i#5: int :: 
      { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#5)): int } 
      LitInt(0) <= i#5
           && i#5 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)
         ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, 
              $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#5)): int)): int
           == i#5);
  free ensures true;
  ensures {:id "id87"} Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq) == N#0;
  ensures {:id "id88"} read($Heap, this, _module.SparseArray.zero) == zero#0;
  free ensures true;
  ensures {:id "id89"} (forall x#1: Box :: 
    { Seq#Contains($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq, x#1) } 
    $IsBox(x#1, _module.SparseArray$T)
       ==> 
      Seq#Contains($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq, x#1)
       ==> x#1 == zero#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SparseArray.Init (correctness)"} Impl$$_module.SparseArray.Init(_module.SparseArray$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SparseArray(_module.SparseArray$T))
         && $IsAlloc(this, Tclass._module.SparseArray(_module.SparseArray$T), $Heap), 
    N#0: int, 
    zero#0: Box
       where $IsBox(zero#0, _module.SparseArray$T)
         && $IsAllocBox(zero#0, _module.SparseArray$T, $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id90"} LitInt(0) <= N#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this);
  ensures {:id "id91"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
       || Seq#Length($Unbox(read($Heap, this, _module.SparseArray.a)): Seq)
         == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq);
  ensures {:id "id92"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
       || Seq#Length($Unbox(read($Heap, this, _module.SparseArray.b)): Seq)
         == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq);
  ensures {:id "id93"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
       || Seq#Length($Unbox(read($Heap, this, _module.SparseArray.c)): Seq)
         == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq);
  ensures {:id "id94"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
       || LitInt(0) <= $Unbox(read($Heap, this, _module.SparseArray.n)): int;
  ensures {:id "id95"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
       || $Unbox(read($Heap, this, _module.SparseArray.n)): int
         <= Seq#Length($Unbox(read($Heap, this, _module.SparseArray.c)): Seq);
  ensures {:id "id96"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
       || (forall i#6: int :: 
        { Seq#Index($Unbox(read($Heap, this, _module.SparseArray.a)): Seq, i#6) } 
          { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#6)): int } 
          { Seq#Index($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq, i#6) } 
        LitInt(0) <= i#6
             && i#6 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
           ==> Seq#Index($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq, i#6)
             == (if LitInt(0)
                   <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#6)): int
                 && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#6)): int
                   < $Unbox(read($Heap, this, _module.SparseArray.n)): int
                 && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                      $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#6)): int)): int
                   == i#6
               then Seq#Index($Unbox(read($Heap, this, _module.SparseArray.a)): Seq, i#6)
               else read($Heap, this, _module.SparseArray.zero)));
  ensures {:id "id97"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
       || (forall i#7: int :: 
        { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#7)): int } 
          { Seq#Contains(Seq#Take($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
              $Unbox(read($Heap, this, _module.SparseArray.n)): int), 
            $Box(i#7)) } 
        LitInt(0) <= i#7
             && i#7 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
           ==> (Seq#Contains(Seq#Take($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                $Unbox(read($Heap, this, _module.SparseArray.n)): int), 
              $Box(i#7))
             <==> LitInt(0)
                 <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#7)): int
               && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#7)): int
                 < $Unbox(read($Heap, this, _module.SparseArray.n)): int
               && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                    $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#7)): int)): int
                 == i#7));
  ensures {:id "id98"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
       || Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq)
         == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq);
  ensures {:id "id99"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
       || Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)
         == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq);
  ensures {:id "id100"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
       || (forall i#8: int :: 
        { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#8)): int } 
          { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, i#8)): int } 
        LitInt(0) <= i#8 && i#8 < $Unbox(read($Heap, this, _module.SparseArray.n)): int
           ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, i#8)): int
             == $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#8)): int);
  ensures {:id "id101"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
       || (forall i#9: int :: 
        { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#9)): int } 
        (LitInt(0) <= i#9
               && i#9 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq)
             ==> LitInt(0)
               <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#9)): int)
           && (LitInt(0) <= i#9
               && i#9 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq)
             ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#9)): int
               < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq)));
  ensures {:id "id102"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
       || (forall i#10: int :: 
        { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#10)): int } 
        (LitInt(0) <= i#10
               && i#10 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)
             ==> LitInt(0)
               <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#10)): int)
           && (LitInt(0) <= i#10
               && i#10 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)
             ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#10)): int
               < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)));
  ensures {:id "id103"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
       || (forall i#11: int :: 
        { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#11)): int } 
        LitInt(0) <= i#11
             && i#11 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)
           ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, 
                $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#11)): int)): int
             == i#11);
  free ensures true;
  ensures {:id "id104"} Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq) == N#0;
  ensures {:id "id105"} read($Heap, this, _module.SparseArray.zero) == zero#0;
  free ensures true;
  ensures {:id "id106"} (forall x#1: Box :: 
    { Seq#Contains($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq, x#1) } 
    $IsBox(x#1, _module.SparseArray$T)
       ==> 
      Seq#Contains($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq, x#1)
       ==> x#1 == zero#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SparseArray.Init (correctness)"} Impl$$_module.SparseArray.Init(_module.SparseArray$T: Ty, this: ref, N#0: int, zero#0: Box)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var aa#0: Seq
     where $Is(aa#0, TSeq(_module.SparseArray$T))
       && $IsAlloc(aa#0, TSeq(_module.SparseArray$T), $Heap);
  var $rhs##0: Seq;
  var n##0: int;
  var $rhs#0: Seq;
  var bb#0: Seq where $Is(bb#0, TSeq(TInt)) && $IsAlloc(bb#0, TSeq(TInt), $Heap);
  var $rhs##1: Seq;
  var n##1: int;
  var $rhs#1: Seq;
  var $rhs##2: Seq;
  var n##2: int;
  var $rhs#2: Seq;
  var $rhs#3: int;
  var s#0: Seq
     where $Is(s#0, TSeq(_module.SparseArray$T))
       && $IsAlloc(s#0, TSeq(_module.SparseArray$T), $Heap);
  var id#0: Seq where $Is(id#0, TSeq(TInt)) && $IsAlloc(id#0, TSeq(TInt), $Heap);
  var k#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var i#12: int;
  var i#14: int;
  var $decr$loop#00: int;
  var $rhs#4: Box;
  var $rhs#5: Seq;
  var $rhs#6: Seq;
  var $rhs#7: Seq;

    // AddMethodImpl: Init, Impl$$_module.SparseArray.Init
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vacid0/SparseArray.dfy(47,37)
    assume true;
    // TrCallStmt: Adding lhs with type seq<T>
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##0 := N#0;
    call {:id "id107"} $rhs##0 := Call$$_module.__default.AllocateArray(_module.SparseArray$T, n##0);
    // TrCallStmt: After ProcessCallStmt
    aa#0 := $rhs##0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vacid0/SparseArray.dfy(47,50)
    assume true;
    assert {:id "id109"} $_ModifiesFrame[this, _module.SparseArray.a];
    assume true;
    $rhs#0 := aa#0;
    $Heap := update($Heap, this, _module.SparseArray.a, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vacid0/SparseArray.dfy(48,39)
    assume true;
    // TrCallStmt: Adding lhs with type seq<int>
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##1 := N#0;
    call {:id "id112"} $rhs##1 := Call$$_module.__default.AllocateArray(TInt, n##1);
    // TrCallStmt: After ProcessCallStmt
    bb#0 := $rhs##1;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vacid0/SparseArray.dfy(48,52)
    assume true;
    assert {:id "id114"} $_ModifiesFrame[this, _module.SparseArray.b];
    assume true;
    $rhs#1 := bb#0;
    $Heap := update($Heap, this, _module.SparseArray.b, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vacid0/SparseArray.dfy(49,24)
    assume true;
    // TrCallStmt: Adding lhs with type seq<int>
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##2 := N#0;
    call {:id "id117"} $rhs##2 := Call$$_module.__default.AllocateArray(TInt, n##2);
    // TrCallStmt: After ProcessCallStmt
    bb#0 := $rhs##2;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vacid0/SparseArray.dfy(49,37)
    assume true;
    assert {:id "id119"} $_ModifiesFrame[this, _module.SparseArray.c];
    assume true;
    $rhs#2 := bb#0;
    $Heap := update($Heap, this, _module.SparseArray.c, $Box($rhs#2));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vacid0/SparseArray.dfy(50,12)
    assume true;
    assert {:id "id122"} $_ModifiesFrame[this, _module.SparseArray.n];
    assume true;
    $rhs#3 := LitInt(0);
    $Heap := update($Heap, this, _module.SparseArray.n, $Box($rhs#3));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vacid0/SparseArray.dfy(54,17)
    assume true;
    assume true;
    s#0 := Lit(Seq#Empty(): Seq);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vacid0/SparseArray.dfy(55,18)
    assume true;
    assume true;
    id#0 := Lit(Seq#Empty(): Seq);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vacid0/SparseArray.dfy(56,17)
    assume true;
    assume true;
    k#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vacid0/SparseArray.dfy(57,5)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := N#0 - k#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id129"} $w$loop#0 ==> k#0 <= N#0;
      free invariant true;
      invariant {:id "id131"} $w$loop#0 ==> Seq#Length(s#0) == k#0;
      free invariant true;
      invariant {:id "id134"} $w$loop#0
         ==> (forall i#13: int :: 
          { Seq#Index(s#0, i#13) } 
          LitInt(0) <= i#13 && i#13 < Seq#Length(s#0) ==> Seq#Index(s#0, i#13) == zero#0);
      free invariant true;
      invariant {:id "id137"} $w$loop#0 ==> Seq#Length(id#0) == k#0;
      invariant {:id "id138"} $w$loop#0
         ==> (forall i#15: int :: 
          { $Unbox(Seq#Index(id#0, i#15)): int } 
          LitInt(0) <= i#15 && i#15 < k#0 ==> $Unbox(Seq#Index(id#0, i#15)): int == i#15);
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o] || $o == this);
      free invariant $HeapSuccGhost($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant N#0 - k#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume {:id "id128"} k#0 <= N#0;
            assume true;
            assume {:id "id130"} Seq#Length(s#0) == k#0;
            // Begin Comprehension WF check
            havoc i#12;
            if (true)
            {
                if (LitInt(0) <= i#12)
                {
                }

                if (LitInt(0) <= i#12 && i#12 < Seq#Length(s#0))
                {
                    assert {:id "id132"} {:subsumption 0} 0 <= i#12 && i#12 < Seq#Length(s#0);
                }
            }

            // End Comprehension WF check
            assume true;
            assume {:id "id133"} (forall i#13: int :: 
              { Seq#Index(s#0, i#13) } 
              LitInt(0) <= i#13 && i#13 < Seq#Length(s#0) ==> Seq#Index(s#0, i#13) == zero#0);
            if (Seq#Length(id#0) == k#0)
            {
                // Begin Comprehension WF check
                havoc i#14;
                if (true)
                {
                    if (LitInt(0) <= i#14)
                    {
                    }

                    if (LitInt(0) <= i#14 && i#14 < k#0)
                    {
                        assert {:id "id135"} {:subsumption 0} 0 <= i#14 && i#14 < Seq#Length(id#0);
                    }
                }

                // End Comprehension WF check
            }

            assume true;
            assume {:id "id136"} Seq#Length(id#0) == k#0
               && (forall i#15: int :: 
                { $Unbox(Seq#Index(id#0, i#15)): int } 
                LitInt(0) <= i#15 && i#15 < k#0 ==> $Unbox(Seq#Index(id#0, i#15)): int == i#15);
            assume true;
            assume false;
        }

        assume true;
        if (N#0 <= k#0)
        {
            break;
        }

        $decr$loop#00 := N#0 - k#0;
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vacid0/SparseArray.dfy(64,9)
        assume true;
        assume true;
        s#0 := Seq#Append(s#0, Seq#Build(Seq#Empty(): Seq, zero#0));
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vacid0/SparseArray.dfy(65,10)
        assume true;
        assume true;
        id#0 := Seq#Append(id#0, Seq#Build(Seq#Empty(): Seq, $Box(k#0)));
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vacid0/SparseArray.dfy(66,9)
        assume true;
        assume true;
        k#0 := k#0 + 1;
        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vacid0/SparseArray.dfy(57,5)
        assert {:id "id142"} 0 <= $decr$loop#00 || N#0 - k#0 == $decr$loop#00;
        assert {:id "id143"} N#0 - k#0 < $decr$loop#00;
        assume true;
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vacid0/SparseArray.dfy(69,15)
    assume true;
    assert {:id "id144"} $_ModifiesFrame[this, _module.SparseArray.zero];
    assume true;
    $rhs#4 := zero#0;
    $Heap := update($Heap, this, _module.SparseArray.zero, $rhs#4);
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vacid0/SparseArray.dfy(70,19)
    assume true;
    assert {:id "id147"} $_ModifiesFrame[this, _module.SparseArray.Contents];
    assume true;
    $rhs#5 := s#0;
    $Heap := update($Heap, this, _module.SparseArray.Contents, $Box($rhs#5));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vacid0/SparseArray.dfy(71,12)
    assume true;
    assert {:id "id150"} $_ModifiesFrame[this, _module.SparseArray.d];
    assume true;
    $rhs#6 := id#0;
    $Heap := update($Heap, this, _module.SparseArray.d, $Box($rhs#6));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vacid0/SparseArray.dfy(72,12)
    assume true;
    assert {:id "id153"} $_ModifiesFrame[this, _module.SparseArray.e];
    assume true;
    $rhs#7 := id#0;
    $Heap := update($Heap, this, _module.SparseArray.e, $Box($rhs#7));
    assume $IsGoodHeap($Heap);
}



procedure {:verboseName "SparseArray.Get (well-formedness)"} CheckWellFormed$$_module.SparseArray.Get(_module.SparseArray$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SparseArray(_module.SparseArray$T))
         && $IsAlloc(this, Tclass._module.SparseArray(_module.SparseArray$T), $Heap), 
    i#0: int)
   returns (x#0: Box
       where $IsBox(x#0, _module.SparseArray$T)
         && $IsAllocBox(x#0, _module.SparseArray$T, $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SparseArray.Get (well-formedness)"} CheckWellFormed$$_module.SparseArray.Get(_module.SparseArray$T: Ty, this: ref, i#0: int) returns (x#0: Box)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: Get, CheckWellFormed$$_module.SparseArray.Get
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.SparseArray?(_module.SparseArray$T), $Heap);
    assume _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this);
    assume {:id "id156"} _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this);
    assume {:id "id157"} LitInt(0) <= i#0;
    assume {:id "id158"} i#0 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc x#0;
    assert {:id "id159"} 0 <= i#0
       && i#0 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq);
    assume {:id "id160"} x#0
       == Seq#Index($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq, i#0);
}



procedure {:verboseName "SparseArray.Get (call)"} Call$$_module.SparseArray.Get(_module.SparseArray$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SparseArray(_module.SparseArray$T))
         && $IsAlloc(this, Tclass._module.SparseArray(_module.SparseArray$T), $Heap), 
    i#0: int)
   returns (x#0: Box
       where $IsBox(x#0, _module.SparseArray$T)
         && $IsAllocBox(x#0, _module.SparseArray$T, $Heap));
  // user-defined preconditions
  requires {:id "id161"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
       || Seq#Length($Unbox(read($Heap, this, _module.SparseArray.a)): Seq)
         == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq);
  requires {:id "id162"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
       || Seq#Length($Unbox(read($Heap, this, _module.SparseArray.b)): Seq)
         == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq);
  requires {:id "id163"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
       || Seq#Length($Unbox(read($Heap, this, _module.SparseArray.c)): Seq)
         == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq);
  requires {:id "id164"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
       || LitInt(0) <= $Unbox(read($Heap, this, _module.SparseArray.n)): int;
  requires {:id "id165"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
       || $Unbox(read($Heap, this, _module.SparseArray.n)): int
         <= Seq#Length($Unbox(read($Heap, this, _module.SparseArray.c)): Seq);
  requires {:id "id166"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
       || (forall i#1: int :: 
        { Seq#Index($Unbox(read($Heap, this, _module.SparseArray.a)): Seq, i#1) } 
          { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#1)): int } 
          { Seq#Index($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq, i#1) } 
        LitInt(0) <= i#1
             && i#1 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
           ==> Seq#Index($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq, i#1)
             == (if LitInt(0)
                   <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#1)): int
                 && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#1)): int
                   < $Unbox(read($Heap, this, _module.SparseArray.n)): int
                 && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                      $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#1)): int)): int
                   == i#1
               then Seq#Index($Unbox(read($Heap, this, _module.SparseArray.a)): Seq, i#1)
               else read($Heap, this, _module.SparseArray.zero)));
  requires {:id "id167"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
       || (forall i#2: int :: 
        { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#2)): int } 
          { Seq#Contains(Seq#Take($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
              $Unbox(read($Heap, this, _module.SparseArray.n)): int), 
            $Box(i#2)) } 
        LitInt(0) <= i#2
             && i#2 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
           ==> (Seq#Contains(Seq#Take($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                $Unbox(read($Heap, this, _module.SparseArray.n)): int), 
              $Box(i#2))
             <==> LitInt(0)
                 <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#2)): int
               && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#2)): int
                 < $Unbox(read($Heap, this, _module.SparseArray.n)): int
               && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                    $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#2)): int)): int
                 == i#2));
  requires {:id "id168"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
       || Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq)
         == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq);
  requires {:id "id169"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
       || Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)
         == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq);
  requires {:id "id170"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
       || (forall i#3: int :: 
        { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#3)): int } 
          { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, i#3)): int } 
        LitInt(0) <= i#3 && i#3 < $Unbox(read($Heap, this, _module.SparseArray.n)): int
           ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, i#3)): int
             == $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#3)): int);
  requires {:id "id171"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
       || (forall i#4: int :: 
        { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#4)): int } 
        (LitInt(0) <= i#4
               && i#4 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq)
             ==> LitInt(0)
               <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#4)): int)
           && (LitInt(0) <= i#4
               && i#4 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq)
             ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#4)): int
               < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq)));
  requires {:id "id172"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
       || (forall i#5: int :: 
        { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#5)): int } 
        (LitInt(0) <= i#5
               && i#5 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)
             ==> LitInt(0)
               <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#5)): int)
           && (LitInt(0) <= i#5
               && i#5 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)
             ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#5)): int
               < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)));
  requires {:id "id173"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
       || (forall i#6: int :: 
        { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#6)): int } 
        LitInt(0) <= i#6
             && i#6 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)
           ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, 
                $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#6)): int)): int
             == i#6);
  requires {:id "id174"} LitInt(0) <= i#0;
  requires {:id "id175"} i#0 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id176"} x#0
     == Seq#Index($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq, i#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SparseArray.Get (correctness)"} Impl$$_module.SparseArray.Get(_module.SparseArray$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SparseArray(_module.SparseArray$T))
         && $IsAlloc(this, Tclass._module.SparseArray(_module.SparseArray$T), $Heap), 
    i#0: int)
   returns (x#0: Box
       where $IsBox(x#0, _module.SparseArray$T)
         && $IsAllocBox(x#0, _module.SparseArray$T, $Heap), 
    $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id177"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     && 
    _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
     && 
    Seq#Length($Unbox(read($Heap, this, _module.SparseArray.a)): Seq)
       == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
     && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.b)): Seq)
       == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
     && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.c)): Seq)
       == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
     && LitInt(0) <= $Unbox(read($Heap, this, _module.SparseArray.n)): int
     && $Unbox(read($Heap, this, _module.SparseArray.n)): int
       <= Seq#Length($Unbox(read($Heap, this, _module.SparseArray.c)): Seq)
     && (forall i#7: int :: 
      { Seq#Index($Unbox(read($Heap, this, _module.SparseArray.a)): Seq, i#7) } 
        { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#7)): int } 
        { Seq#Index($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq, i#7) } 
      LitInt(0) <= i#7
           && i#7 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
         ==> Seq#Index($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq, i#7)
           == (if LitInt(0)
                 <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#7)): int
               && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#7)): int
                 < $Unbox(read($Heap, this, _module.SparseArray.n)): int
               && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                    $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#7)): int)): int
                 == i#7
             then Seq#Index($Unbox(read($Heap, this, _module.SparseArray.a)): Seq, i#7)
             else read($Heap, this, _module.SparseArray.zero)))
     && (forall i#8: int :: 
      { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#8)): int } 
        { Seq#Contains(Seq#Take($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
            $Unbox(read($Heap, this, _module.SparseArray.n)): int), 
          $Box(i#8)) } 
      LitInt(0) <= i#8
           && i#8 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
         ==> (Seq#Contains(Seq#Take($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
              $Unbox(read($Heap, this, _module.SparseArray.n)): int), 
            $Box(i#8))
           <==> LitInt(0)
               <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#8)): int
             && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#8)): int
               < $Unbox(read($Heap, this, _module.SparseArray.n)): int
             && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                  $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#8)): int)): int
               == i#8))
     && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq)
       == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
     && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)
       == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
     && (forall i#9: int :: 
      { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#9)): int } 
        { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, i#9)): int } 
      LitInt(0) <= i#9 && i#9 < $Unbox(read($Heap, this, _module.SparseArray.n)): int
         ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, i#9)): int
           == $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#9)): int)
     && (forall i#10: int :: 
      { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#10)): int } 
      (LitInt(0) <= i#10
             && i#10 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq)
           ==> LitInt(0)
             <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#10)): int)
         && (LitInt(0) <= i#10
             && i#10 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq)
           ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#10)): int
             < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq)))
     && (forall i#11: int :: 
      { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#11)): int } 
      (LitInt(0) <= i#11
             && i#11 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)
           ==> LitInt(0)
             <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#11)): int)
         && (LitInt(0) <= i#11
             && i#11 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)
           ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#11)): int
             < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)))
     && (forall i#12: int :: 
      { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#12)): int } 
      LitInt(0) <= i#12
           && i#12 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)
         ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, 
              $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#12)): int)): int
           == i#12);
  requires {:id "id178"} LitInt(0) <= i#0;
  requires {:id "id179"} i#0 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id180"} x#0
     == Seq#Index($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq, i#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SparseArray.Get (correctness)"} Impl$$_module.SparseArray.Get(_module.SparseArray$T: Ty, this: ref, i#0: int)
   returns (x#0: Box, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: Get, Impl$$_module.SparseArray.Get
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vacid0/SparseArray.dfy(79,5)
    assert {:id "id181"} 0 <= i#0
       && i#0 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.b)): Seq);
    if (LitInt(0)
       <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#0)): int)
    {
        assert {:id "id182"} 0 <= i#0
           && i#0 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.b)): Seq);
    }

    if (LitInt(0)
         <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#0)): int
       && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#0)): int
         < $Unbox(read($Heap, this, _module.SparseArray.n)): int)
    {
        assert {:id "id183"} 0 <= i#0
           && i#0 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.b)): Seq);
        assert {:id "id184"} 0
             <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#0)): int
           && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#0)): int
             < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.c)): Seq);
    }

    assume true;
    if (LitInt(0)
         <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#0)): int
       && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#0)): int
         < $Unbox(read($Heap, this, _module.SparseArray.n)): int
       && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
            $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#0)): int)): int
         == i#0)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vacid0/SparseArray.dfy(80,9)
        assume true;
        assert {:id "id185"} 0 <= i#0
           && i#0 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.a)): Seq);
        assume true;
        x#0 := Seq#Index($Unbox(read($Heap, this, _module.SparseArray.a)): Seq, i#0);
    }
    else
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vacid0/SparseArray.dfy(82,9)
        assume true;
        assume true;
        x#0 := read($Heap, this, _module.SparseArray.zero);
    }
}



procedure {:verboseName "SparseArray.Set (well-formedness)"} CheckWellFormed$$_module.SparseArray.Set(_module.SparseArray$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SparseArray(_module.SparseArray$T))
         && $IsAlloc(this, Tclass._module.SparseArray(_module.SparseArray$T), $Heap), 
    i#0: int, 
    x#0: Box
       where $IsBox(x#0, _module.SparseArray$T)
         && $IsAllocBox(x#0, _module.SparseArray$T, $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SparseArray.Set (well-formedness)"} CheckWellFormed$$_module.SparseArray.Set(_module.SparseArray$T: Ty, this: ref, i#0: int, x#0: Box)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: Set, CheckWellFormed$$_module.SparseArray.Set
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.SparseArray?(_module.SparseArray$T), $Heap);
    assume _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this);
    assume {:id "id188"} _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this);
    assume {:id "id189"} LitInt(0) <= i#0;
    assume {:id "id190"} i#0 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == this);
    assume $HeapSucc(old($Heap), $Heap);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.SparseArray?(_module.SparseArray$T), $Heap);
    assume _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this);
    assume {:id "id191"} _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this);
    assert {:id "id192"} $IsAlloc(this, Tclass._module.SparseArray(_module.SparseArray$T), old($Heap));
    assume {:id "id193"} Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
       == Seq#Length($Unbox(read(old($Heap), this, _module.SparseArray.Contents)): Seq);
    assert {:id "id194"} 0 <= i#0
       && i#0 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq);
    assume {:id "id195"} Seq#Equal($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq, 
      Seq#Update($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq, i#0, x#0));
    assert {:id "id196"} $IsAlloc(this, Tclass._module.SparseArray(_module.SparseArray$T), old($Heap));
    assume {:id "id197"} read($Heap, this, _module.SparseArray.zero)
       == read(old($Heap), this, _module.SparseArray.zero);
}



procedure {:verboseName "SparseArray.Set (call)"} Call$$_module.SparseArray.Set(_module.SparseArray$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SparseArray(_module.SparseArray$T))
         && $IsAlloc(this, Tclass._module.SparseArray(_module.SparseArray$T), $Heap), 
    i#0: int, 
    x#0: Box
       where $IsBox(x#0, _module.SparseArray$T)
         && $IsAllocBox(x#0, _module.SparseArray$T, $Heap));
  // user-defined preconditions
  requires {:id "id198"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
       || Seq#Length($Unbox(read($Heap, this, _module.SparseArray.a)): Seq)
         == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq);
  requires {:id "id199"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
       || Seq#Length($Unbox(read($Heap, this, _module.SparseArray.b)): Seq)
         == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq);
  requires {:id "id200"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
       || Seq#Length($Unbox(read($Heap, this, _module.SparseArray.c)): Seq)
         == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq);
  requires {:id "id201"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
       || LitInt(0) <= $Unbox(read($Heap, this, _module.SparseArray.n)): int;
  requires {:id "id202"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
       || $Unbox(read($Heap, this, _module.SparseArray.n)): int
         <= Seq#Length($Unbox(read($Heap, this, _module.SparseArray.c)): Seq);
  requires {:id "id203"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
       || (forall i#1: int :: 
        { Seq#Index($Unbox(read($Heap, this, _module.SparseArray.a)): Seq, i#1) } 
          { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#1)): int } 
          { Seq#Index($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq, i#1) } 
        LitInt(0) <= i#1
             && i#1 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
           ==> Seq#Index($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq, i#1)
             == (if LitInt(0)
                   <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#1)): int
                 && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#1)): int
                   < $Unbox(read($Heap, this, _module.SparseArray.n)): int
                 && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                      $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#1)): int)): int
                   == i#1
               then Seq#Index($Unbox(read($Heap, this, _module.SparseArray.a)): Seq, i#1)
               else read($Heap, this, _module.SparseArray.zero)));
  requires {:id "id204"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
       || (forall i#2: int :: 
        { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#2)): int } 
          { Seq#Contains(Seq#Take($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
              $Unbox(read($Heap, this, _module.SparseArray.n)): int), 
            $Box(i#2)) } 
        LitInt(0) <= i#2
             && i#2 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
           ==> (Seq#Contains(Seq#Take($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                $Unbox(read($Heap, this, _module.SparseArray.n)): int), 
              $Box(i#2))
             <==> LitInt(0)
                 <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#2)): int
               && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#2)): int
                 < $Unbox(read($Heap, this, _module.SparseArray.n)): int
               && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                    $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#2)): int)): int
                 == i#2));
  requires {:id "id205"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
       || Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq)
         == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq);
  requires {:id "id206"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
       || Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)
         == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq);
  requires {:id "id207"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
       || (forall i#3: int :: 
        { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#3)): int } 
          { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, i#3)): int } 
        LitInt(0) <= i#3 && i#3 < $Unbox(read($Heap, this, _module.SparseArray.n)): int
           ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, i#3)): int
             == $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#3)): int);
  requires {:id "id208"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
       || (forall i#4: int :: 
        { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#4)): int } 
        (LitInt(0) <= i#4
               && i#4 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq)
             ==> LitInt(0)
               <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#4)): int)
           && (LitInt(0) <= i#4
               && i#4 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq)
             ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#4)): int
               < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq)));
  requires {:id "id209"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
       || (forall i#5: int :: 
        { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#5)): int } 
        (LitInt(0) <= i#5
               && i#5 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)
             ==> LitInt(0)
               <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#5)): int)
           && (LitInt(0) <= i#5
               && i#5 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)
             ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#5)): int
               < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)));
  requires {:id "id210"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
       || (forall i#6: int :: 
        { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#6)): int } 
        LitInt(0) <= i#6
             && i#6 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)
           ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, 
                $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#6)): int)): int
             == i#6);
  requires {:id "id211"} LitInt(0) <= i#0;
  requires {:id "id212"} i#0 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this);
  free ensures {:id "id213"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     && 
    _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
     && 
    Seq#Length($Unbox(read($Heap, this, _module.SparseArray.a)): Seq)
       == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
     && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.b)): Seq)
       == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
     && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.c)): Seq)
       == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
     && LitInt(0) <= $Unbox(read($Heap, this, _module.SparseArray.n)): int
     && $Unbox(read($Heap, this, _module.SparseArray.n)): int
       <= Seq#Length($Unbox(read($Heap, this, _module.SparseArray.c)): Seq)
     && (forall i#7: int :: 
      { Seq#Index($Unbox(read($Heap, this, _module.SparseArray.a)): Seq, i#7) } 
        { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#7)): int } 
        { Seq#Index($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq, i#7) } 
      LitInt(0) <= i#7
           && i#7 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
         ==> Seq#Index($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq, i#7)
           == (if LitInt(0)
                 <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#7)): int
               && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#7)): int
                 < $Unbox(read($Heap, this, _module.SparseArray.n)): int
               && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                    $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#7)): int)): int
                 == i#7
             then Seq#Index($Unbox(read($Heap, this, _module.SparseArray.a)): Seq, i#7)
             else read($Heap, this, _module.SparseArray.zero)))
     && (forall i#8: int :: 
      { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#8)): int } 
        { Seq#Contains(Seq#Take($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
            $Unbox(read($Heap, this, _module.SparseArray.n)): int), 
          $Box(i#8)) } 
      LitInt(0) <= i#8
           && i#8 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
         ==> (Seq#Contains(Seq#Take($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
              $Unbox(read($Heap, this, _module.SparseArray.n)): int), 
            $Box(i#8))
           <==> LitInt(0)
               <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#8)): int
             && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#8)): int
               < $Unbox(read($Heap, this, _module.SparseArray.n)): int
             && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                  $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#8)): int)): int
               == i#8))
     && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq)
       == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
     && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)
       == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
     && (forall i#9: int :: 
      { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#9)): int } 
        { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, i#9)): int } 
      LitInt(0) <= i#9 && i#9 < $Unbox(read($Heap, this, _module.SparseArray.n)): int
         ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, i#9)): int
           == $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#9)): int)
     && (forall i#10: int :: 
      { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#10)): int } 
      (LitInt(0) <= i#10
             && i#10 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq)
           ==> LitInt(0)
             <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#10)): int)
         && (LitInt(0) <= i#10
             && i#10 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq)
           ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#10)): int
             < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq)))
     && (forall i#11: int :: 
      { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#11)): int } 
      (LitInt(0) <= i#11
             && i#11 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)
           ==> LitInt(0)
             <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#11)): int)
         && (LitInt(0) <= i#11
             && i#11 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)
           ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#11)): int
             < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)))
     && (forall i#12: int :: 
      { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#12)): int } 
      LitInt(0) <= i#12
           && i#12 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)
         ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, 
              $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#12)): int)): int
           == i#12);
  free ensures true;
  ensures {:id "id214"} Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
     == Seq#Length($Unbox(read(old($Heap), this, _module.SparseArray.Contents)): Seq);
  ensures {:id "id215"} Seq#Equal($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq, 
    Seq#Update($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq, i#0, x#0));
  free ensures true;
  ensures {:id "id216"} read($Heap, this, _module.SparseArray.zero)
     == read(old($Heap), this, _module.SparseArray.zero);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SparseArray.Set (correctness)"} Impl$$_module.SparseArray.Set(_module.SparseArray$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SparseArray(_module.SparseArray$T))
         && $IsAlloc(this, Tclass._module.SparseArray(_module.SparseArray$T), $Heap), 
    i#0: int, 
    x#0: Box
       where $IsBox(x#0, _module.SparseArray$T)
         && $IsAllocBox(x#0, _module.SparseArray$T, $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id217"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     && 
    _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
     && 
    Seq#Length($Unbox(read($Heap, this, _module.SparseArray.a)): Seq)
       == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
     && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.b)): Seq)
       == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
     && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.c)): Seq)
       == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
     && LitInt(0) <= $Unbox(read($Heap, this, _module.SparseArray.n)): int
     && $Unbox(read($Heap, this, _module.SparseArray.n)): int
       <= Seq#Length($Unbox(read($Heap, this, _module.SparseArray.c)): Seq)
     && (forall i#13: int :: 
      { Seq#Index($Unbox(read($Heap, this, _module.SparseArray.a)): Seq, i#13) } 
        { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#13)): int } 
        { Seq#Index($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq, i#13) } 
      LitInt(0) <= i#13
           && i#13 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
         ==> Seq#Index($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq, i#13)
           == (if LitInt(0)
                 <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#13)): int
               && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#13)): int
                 < $Unbox(read($Heap, this, _module.SparseArray.n)): int
               && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                    $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#13)): int)): int
                 == i#13
             then Seq#Index($Unbox(read($Heap, this, _module.SparseArray.a)): Seq, i#13)
             else read($Heap, this, _module.SparseArray.zero)))
     && (forall i#14: int :: 
      { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#14)): int } 
        { Seq#Contains(Seq#Take($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
            $Unbox(read($Heap, this, _module.SparseArray.n)): int), 
          $Box(i#14)) } 
      LitInt(0) <= i#14
           && i#14 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
         ==> (Seq#Contains(Seq#Take($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
              $Unbox(read($Heap, this, _module.SparseArray.n)): int), 
            $Box(i#14))
           <==> LitInt(0)
               <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#14)): int
             && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#14)): int
               < $Unbox(read($Heap, this, _module.SparseArray.n)): int
             && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                  $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#14)): int)): int
               == i#14))
     && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq)
       == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
     && Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)
       == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
     && (forall i#15: int :: 
      { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#15)): int } 
        { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, i#15)): int } 
      LitInt(0) <= i#15
           && i#15 < $Unbox(read($Heap, this, _module.SparseArray.n)): int
         ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, i#15)): int
           == $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#15)): int)
     && (forall i#16: int :: 
      { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#16)): int } 
      (LitInt(0) <= i#16
             && i#16 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq)
           ==> LitInt(0)
             <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#16)): int)
         && (LitInt(0) <= i#16
             && i#16 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq)
           ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#16)): int
             < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq)))
     && (forall i#17: int :: 
      { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#17)): int } 
      (LitInt(0) <= i#17
             && i#17 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)
           ==> LitInt(0)
             <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#17)): int)
         && (LitInt(0) <= i#17
             && i#17 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)
           ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#17)): int
             < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)))
     && (forall i#18: int :: 
      { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#18)): int } 
      LitInt(0) <= i#18
           && i#18 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)
         ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, 
              $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#18)): int)): int
           == i#18);
  requires {:id "id218"} LitInt(0) <= i#0;
  requires {:id "id219"} i#0 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this);
  ensures {:id "id220"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
       || Seq#Length($Unbox(read($Heap, this, _module.SparseArray.a)): Seq)
         == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq);
  ensures {:id "id221"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
       || Seq#Length($Unbox(read($Heap, this, _module.SparseArray.b)): Seq)
         == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq);
  ensures {:id "id222"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
       || Seq#Length($Unbox(read($Heap, this, _module.SparseArray.c)): Seq)
         == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq);
  ensures {:id "id223"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
       || LitInt(0) <= $Unbox(read($Heap, this, _module.SparseArray.n)): int;
  ensures {:id "id224"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
       || $Unbox(read($Heap, this, _module.SparseArray.n)): int
         <= Seq#Length($Unbox(read($Heap, this, _module.SparseArray.c)): Seq);
  ensures {:id "id225"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
       || (forall i#19: int :: 
        { Seq#Index($Unbox(read($Heap, this, _module.SparseArray.a)): Seq, i#19) } 
          { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#19)): int } 
          { Seq#Index($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq, i#19) } 
        LitInt(0) <= i#19
             && i#19 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
           ==> Seq#Index($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq, i#19)
             == (if LitInt(0)
                   <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#19)): int
                 && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#19)): int
                   < $Unbox(read($Heap, this, _module.SparseArray.n)): int
                 && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                      $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#19)): int)): int
                   == i#19
               then Seq#Index($Unbox(read($Heap, this, _module.SparseArray.a)): Seq, i#19)
               else read($Heap, this, _module.SparseArray.zero)));
  ensures {:id "id226"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
       || (forall i#20: int :: 
        { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#20)): int } 
          { Seq#Contains(Seq#Take($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
              $Unbox(read($Heap, this, _module.SparseArray.n)): int), 
            $Box(i#20)) } 
        LitInt(0) <= i#20
             && i#20 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
           ==> (Seq#Contains(Seq#Take($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                $Unbox(read($Heap, this, _module.SparseArray.n)): int), 
              $Box(i#20))
             <==> LitInt(0)
                 <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#20)): int
               && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#20)): int
                 < $Unbox(read($Heap, this, _module.SparseArray.n)): int
               && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
                    $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#20)): int)): int
                 == i#20));
  ensures {:id "id227"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
       || Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq)
         == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq);
  ensures {:id "id228"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
       || Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)
         == Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq);
  ensures {:id "id229"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
       || (forall i#21: int :: 
        { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#21)): int } 
          { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, i#21)): int } 
        LitInt(0) <= i#21
             && i#21 < $Unbox(read($Heap, this, _module.SparseArray.n)): int
           ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, i#21)): int
             == $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#21)): int);
  ensures {:id "id230"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
       || (forall i#22: int :: 
        { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#22)): int } 
        (LitInt(0) <= i#22
               && i#22 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq)
             ==> LitInt(0)
               <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#22)): int)
           && (LitInt(0) <= i#22
               && i#22 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq)
             ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, i#22)): int
               < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq)));
  ensures {:id "id231"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
       || (forall i#23: int :: 
        { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#23)): int } 
        (LitInt(0) <= i#23
               && i#23 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)
             ==> LitInt(0)
               <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#23)): int)
           && (LitInt(0) <= i#23
               && i#23 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)
             ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#23)): int
               < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)));
  ensures {:id "id232"} _module.SparseArray.Valid#canCall(_module.SparseArray$T, $Heap, this)
     ==> _module.SparseArray.Valid(_module.SparseArray$T, $Heap, this)
       || (forall i#24: int :: 
        { $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#24)): int } 
        LitInt(0) <= i#24
             && i#24 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq)
           ==> $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, 
                $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#24)): int)): int
             == i#24);
  free ensures true;
  ensures {:id "id233"} Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq)
     == Seq#Length($Unbox(read(old($Heap), this, _module.SparseArray.Contents)): Seq);
  ensures {:id "id234"} Seq#Equal($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq, 
    Seq#Update($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq, i#0, x#0));
  free ensures true;
  ensures {:id "id235"} read($Heap, this, _module.SparseArray.zero)
     == read(old($Heap), this, _module.SparseArray.zero);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SparseArray.Set (correctness)"} Impl$$_module.SparseArray.Set(_module.SparseArray$T: Ty, this: ref, i#0: int, x#0: Box)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#1_0: Seq;
  var $rhs#1_1: Seq;
  var t#1_0: int;
  var k#1_0: int;
  var $rhs#1_2: Seq;
  var $rhs#1_3: Seq;
  var $rhs#1_4: int;
  var $rhs#0: Seq;
  var $rhs#1: Seq;

    // AddMethodImpl: Set, Impl$$_module.SparseArray.Set
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vacid0/SparseArray.dfy(93,5)
    assert {:id "id236"} 0 <= i#0
       && i#0 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.b)): Seq);
    if (LitInt(0)
       <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#0)): int)
    {
        assert {:id "id237"} 0 <= i#0
           && i#0 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.b)): Seq);
    }

    if (LitInt(0)
         <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#0)): int
       && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#0)): int
         < $Unbox(read($Heap, this, _module.SparseArray.n)): int)
    {
        assert {:id "id238"} 0 <= i#0
           && i#0 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.b)): Seq);
        assert {:id "id239"} 0
             <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#0)): int
           && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#0)): int
             < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.c)): Seq);
    }

    assume true;
    if (LitInt(0)
         <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#0)): int
       && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#0)): int
         < $Unbox(read($Heap, this, _module.SparseArray.n)): int
       && $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
            $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, i#0)): int)): int
         == i#0)
    {
        push;
        pop;
    }
    else
    {
        push;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vacid0/SparseArray.dfy(95,7)
        assert {:id "id240"} {:subsumption 0} 0 <= i#0
           && i#0 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq);
        assume true;
        assert {:id "id241"} $Unbox(read($Heap, this, _module.SparseArray.n)): int
           <= $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#0)): int;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vacid0/SparseArray.dfy(96,9)
        assume true;
        assert {:id "id242"} $_ModifiesFrame[this, _module.SparseArray.b];
        assert {:id "id243"} 0 <= i#0
           && i#0 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.b)): Seq);
        assume true;
        $rhs#1_0 := Seq#Update($Unbox(read($Heap, this, _module.SparseArray.b)): Seq, 
          i#0, 
          read($Heap, this, _module.SparseArray.n));
        $Heap := update($Heap, this, _module.SparseArray.b, $Box($rhs#1_0));
        assume $IsGoodHeap($Heap);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vacid0/SparseArray.dfy(97,9)
        assume true;
        assert {:id "id246"} $_ModifiesFrame[this, _module.SparseArray.c];
        assert {:id "id247"} 0 <= $Unbox(read($Heap, this, _module.SparseArray.n)): int
           && $Unbox(read($Heap, this, _module.SparseArray.n)): int
             < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.c)): Seq);
        assume true;
        $rhs#1_1 := Seq#Update($Unbox(read($Heap, this, _module.SparseArray.c)): Seq, 
          $Unbox(read($Heap, this, _module.SparseArray.n)): int, 
          $Box(i#0));
        $Heap := update($Heap, this, _module.SparseArray.c, $Box($rhs#1_1));
        assume $IsGoodHeap($Heap);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vacid0/SparseArray.dfy(98,19)
        assume true;
        assert {:id "id250"} 0 <= $Unbox(read($Heap, this, _module.SparseArray.n)): int
           && $Unbox(read($Heap, this, _module.SparseArray.n)): int
             < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq);
        assume true;
        t#1_0 := $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, 
            $Unbox(read($Heap, this, _module.SparseArray.n)): int)): int;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vacid0/SparseArray.dfy(99,19)
        assume true;
        assert {:id "id252"} 0 <= i#0
           && i#0 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq);
        assume true;
        k#1_0 := $Unbox(Seq#Index($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, i#0)): int;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vacid0/SparseArray.dfy(100,9)
        assume true;
        assert {:id "id254"} $_ModifiesFrame[this, _module.SparseArray.d];
        assert {:id "id255"} 0 <= $Unbox(read($Heap, this, _module.SparseArray.n)): int
           && $Unbox(read($Heap, this, _module.SparseArray.n)): int
             < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.d)): Seq);
        assert {:id "id256"} 0 <= k#1_0
           && k#1_0
             < Seq#Length(Seq#Update($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, 
                $Unbox(read($Heap, this, _module.SparseArray.n)): int, 
                $Box(i#0)));
        assume true;
        $rhs#1_2 := Seq#Update(Seq#Update($Unbox(read($Heap, this, _module.SparseArray.d)): Seq, 
            $Unbox(read($Heap, this, _module.SparseArray.n)): int, 
            $Box(i#0)), 
          k#1_0, 
          $Box(t#1_0));
        $Heap := update($Heap, this, _module.SparseArray.d, $Box($rhs#1_2));
        assume $IsGoodHeap($Heap);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vacid0/SparseArray.dfy(101,9)
        assume true;
        assert {:id "id259"} $_ModifiesFrame[this, _module.SparseArray.e];
        assert {:id "id260"} 0 <= i#0
           && i#0 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.e)): Seq);
        assert {:id "id261"} 0 <= t#1_0
           && t#1_0
             < Seq#Length(Seq#Update($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, 
                i#0, 
                read($Heap, this, _module.SparseArray.n)));
        assume true;
        $rhs#1_3 := Seq#Update(Seq#Update($Unbox(read($Heap, this, _module.SparseArray.e)): Seq, 
            i#0, 
            read($Heap, this, _module.SparseArray.n)), 
          t#1_0, 
          $Box(k#1_0));
        $Heap := update($Heap, this, _module.SparseArray.e, $Box($rhs#1_3));
        assume $IsGoodHeap($Heap);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vacid0/SparseArray.dfy(102,9)
        assume true;
        assert {:id "id264"} $_ModifiesFrame[this, _module.SparseArray.n];
        assume true;
        $rhs#1_4 := $Unbox(read($Heap, this, _module.SparseArray.n)): int + 1;
        $Heap := update($Heap, this, _module.SparseArray.n, $Box($rhs#1_4));
        assume $IsGoodHeap($Heap);
        pop;
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vacid0/SparseArray.dfy(104,7)
    assume true;
    assert {:id "id267"} $_ModifiesFrame[this, _module.SparseArray.a];
    assert {:id "id268"} 0 <= i#0
       && i#0 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.a)): Seq);
    assume true;
    $rhs#0 := Seq#Update($Unbox(read($Heap, this, _module.SparseArray.a)): Seq, i#0, x#0);
    $Heap := update($Heap, this, _module.SparseArray.a, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vacid0/SparseArray.dfy(105,14)
    assume true;
    assert {:id "id271"} $_ModifiesFrame[this, _module.SparseArray.Contents];
    assert {:id "id272"} 0 <= i#0
       && i#0 < Seq#Length($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq);
    assume true;
    $rhs#1 := Seq#Update($Unbox(read($Heap, this, _module.SparseArray.Contents)): Seq, i#0, x#0);
    $Heap := update($Heap, this, _module.SparseArray.Contents, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
}



// $Is axiom for non-null type _module.SparseArray
axiom (forall _module.SparseArray$T: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._module.SparseArray(_module.SparseArray$T)) } 
    { $Is(c#0, Tclass._module.SparseArray?(_module.SparseArray$T)) } 
  $Is(c#0, Tclass._module.SparseArray(_module.SparseArray$T))
     <==> $Is(c#0, Tclass._module.SparseArray?(_module.SparseArray$T)) && c#0 != null);

// $IsAlloc axiom for non-null type _module.SparseArray
axiom (forall _module.SparseArray$T: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.SparseArray(_module.SparseArray$T), $h) } 
    { $IsAlloc(c#0, Tclass._module.SparseArray?(_module.SparseArray$T), $h) } 
  $IsAlloc(c#0, Tclass._module.SparseArray(_module.SparseArray$T), $h)
     <==> $IsAlloc(c#0, Tclass._module.SparseArray?(_module.SparseArray$T), $h));

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

const unique tytagFamily$SparseArray: TyTagFamily;

const unique field$Contents: NameFamily;

const unique field$zero: NameFamily;

const unique field$a: NameFamily;

const unique field$b: NameFamily;

const unique field$c: NameFamily;

const unique field$n: NameFamily;

const unique field$d: NameFamily;

const unique field$e: NameFamily;
